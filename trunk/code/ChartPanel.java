
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.MouseInputListener;
import javax.swing.filechooser.FileNameExtensionFilter;
import javax.swing.JComboBox;
import java.util.*;
import java.io.*;

/**
 * This class is part of the SILKin program's GUI. It is modeled after the
 * KAES KinshipEditor by Michael D. Fischer of the Centre for Social 
 * Anthropology and Computing, University of Kent.
 * Those portions taken from his code are copyrighted by him; all rights
 * reserved. See his complete copyright statement and terms of re-use in
 * e.g. KinshipEditor.java in this package.
 *
 * @author Gary Morris, Northern Virginia Community College
 */
public class ChartPanel extends JPanel implements MouseInputListener {
    // class variables

    static SIL_Edit edWin;
    public boolean dirty = false;  //  Any data changes to be saved?
    static String EOL = System.getProperty("line.separator");
    static boolean doIndexes = true;
    public static final int NOLABEL = 0;
    public static final int INITIALS = 1;
    public static final int FIRST = 2;
    public static final int LAST = 3;
    public static final int WHOLE = 4;
    public static final int NOKINTERM = 0;
    public static final int KINTERMREF = 1;
    public static final int KINTERMADR = 2;
    public static final int LETTERREF = 3;
    public static final int LETTERADR = 4;
    public static final int GAP = 5;
    // instance variables
    java.awt.List personMenu;
    Point lastLoc = new Point(-1, -1);
    int     whichFolk = -1,
            priorAlter = -1,
            whichLink = -1,
            priorLink = -1,
            whichKnot = -1,
            tiedKnot = -1,
            whichHalf = -1;
    Line selectLine;
    int lastFolk = -1;
    int lastKnot = -1;
    Image theImage = null;
    int jpegs = 0;
    boolean editable = true,
            dragged = false,
            resize = false,
            distinctAdrTerms = false,
            recomputingDyads = false,
            makingSpecialRelationship = false, 
            loading = false;
    int originX = 0;
    int originY = 0;
    int refYear = 0;
    int nameLabel = INITIALS;
    int kinTermLabel = NOKINTERM;
    ArrayList<Individual> draggedPersons = new ArrayList<Individual>();
    ArrayList<Family> draggedMarriages = new ArrayList<Family>();
    ArrayList<Link> draggedLinks = new ArrayList<Link>();
    Point lastPersonLoc = null;
    Dimension area = new Dimension(0, 0);
    ArrayList<Individual> reSizInds = new ArrayList<Individual>();
    ArrayList<Family> reSizFams = new ArrayList<Family>();
    ArrayList<Link> reSizLinks = new ArrayList<Link>();
    Individual parent_Initiator = null, child_Recipient = null;
    UserDefinedProperty chosenUDP = null;

    public void init(SIL_Edit k) {
        edWin = k;
        setLayout(null);
        personMenu = new java.awt.List(5, false);
        personMenu.add("Female");
        personMenu.add("Male");
        personMenu.add("Union");
        personMenu.add("Link to Person");
        personMenu.add("Draw Special Relationship");
        personMenu.setVisible(false);
        personMenu.setSize(135, 85);
        add(personMenu);
        personMenu.setFont(new Font("Dialog", Font.PLAIN, 10));
        selectLine = null;
        addMouseListener(this);
        addMouseMotionListener(this);
    }

//  Methods required for MouseListener interface
    public void mousePressed(MouseEvent e) {
        KinshipEditor_MouseDown(e);
    }

    public void mouseReleased(MouseEvent e) {
        KinshipEditor_MouseUp(e);
        dragged = false;
        if (!reSizInds.isEmpty()) {
            checkIndArea(reSizInds);
            reSizInds.clear();
        }
        if (!reSizFams.isEmpty()) {
            checkFamArea(reSizFams);
            reSizFams.clear();
        }
        if (!reSizLinks.isEmpty()) {
            checkLinkArea(reSizLinks);
            reSizLinks.clear();
        }
    }

    public void mouseEntered(MouseEvent e) {
    } //  Not needed.

    public void mouseExited(MouseEvent e) {
    }  //  Not needed.

    public void mouseClicked(MouseEvent e) {
    } //  Not needed.

//  Methods required for MouseMotionListener interface
    public void mouseDragged(MouseEvent e) {
        KinshipEditor_MouseDrag(e);
        dragged = true;  //  Will flip to false when button released.
    }

    public void mouseMoved(MouseEvent e) {
    }  //  Not Needed


    public boolean handleEvent(Event event) {
        event.x -= originX;
        event.y -= originY;
        if (event.target == personMenu && event.id == Event.LIST_SELECT) {
            personMenu_ListSelect(event);
            return true;
        }
        return super.handleEvent(event);
    }

    /** returns the labeling mode as an int
     **/
    public int getNameLabel() {
        return nameLabel;
    }

    /** sets up the name labeling mode
     **  @param c the label to interpret
     **/
    public void setNameLabel(String c) {
        if (c.equals("Initials")) {
            nameLabel = INITIALS;
        } else if (c.equals("First")) {
            nameLabel = FIRST;
        } else if (c.equals("Last")) {
            nameLabel = LAST;
        } else if (c.equals("Whole")) {
            nameLabel = WHOLE;
        } else {
            nameLabel = NOLABEL;
        }
        Person.nameLabel = nameLabel;
        dirty = true;
        repaint();
    }

    /** sets up the kin term labeling mode
     **  @param c the label to interpret
     **/
    public void setKTmLabel(String c) {
        if (c.equals("KinTermRef")) {
            kinTermLabel = KINTERMREF;
        } else if (c.equals("KinTermAdr")) {
            kinTermLabel = KINTERMADR;
        } else if (c.equals("LetterRef")) {
            kinTermLabel = LETTERREF;
        } else if (c.equals("LetterAdr")) {
            kinTermLabel = LETTERADR;
        } else {
            kinTermLabel = NOKINTERM;
        }
        Person.kinTermLabel = kinTermLabel;
        dirty = true;
        repaint();
    }

    /** sets the reference year in the Person and Marriage objects
     **  @param x the reference year
     **/
    public void setRefYear(int x) {
        refYear = x;
        if (refYear <= 0) {
            Person.refYear = "";
            Marriage.refYear = "";
        } else {
            Person.refYear = refYear + "";
            Marriage.refYear = refYear + "";
        }
    }

    public void setOrigin(int x, int y) {
        originX = x;
        originY = y;
    }  //  Only used once, for 0,0.   ???

    int mouseX, mouseY, theInd, theLink, theFam ;
    Context.SpecRelTriple theSpecRel;
    
    void KinshipEditor_MouseDown(MouseEvent event) {
        mouseX = event.getX();
        mouseY = event.getY();
        theInd = Person.findPerson(mouseX, mouseY);
        theLink = Link.findLink(mouseX, mouseY);
        theFam = findMarriage(mouseX, mouseY);
        if (makingSpecialRelationship) {
            captureAdoption();
            return;
        }

        if ((theInd + theLink + theFam) > -3) { // SOMETHING was clicked
            if (personMenu.isShowing()) {
                personMenu.setVisible(false);
                edWin.loadingCharts = false;
            }
            try {
                if (editable) {
                    edWin.storeInfo();
                }
                repaint();
            } catch (Exception pe) {
                displayError(pe);
                return;
            }  //  If no exception, proceed to switch

            if (theInd >= 0) { //  CLICKED ON A PERSON            
                if (whichFolk == theInd) {
                    lastLoc = new Point(mouseX, mouseY);
                } else {
                    priorAlter = whichFolk;
                    whichFolk = theInd;
                    edWin.getPPanel().dirty = true;
                }
                lastPersonLoc = new Point(Person.folks.get(theInd).location);
                whichKnot = -1;
                whichLink = -1;
                return;
            } else {
                whichFolk = -1;
            }
            if (theLink >= 0) { // CLICKED ON A LINK
                if (whichLink == theLink) {
                    lastLoc = new Point(mouseX, mouseY);
                } else {
                    priorLink = whichLink;
                    whichLink = theLink;
                    edWin.getPPanel().dirty = true;
                }
                lastPersonLoc = new Point(Context.current.linkCensus.get(theLink).location);
                whichKnot = -1;
                whichFolk = -1;
                return;
            } else {
                whichLink = -1;
            }
            if (theFam >= 0) { //  CLICKED ON A MARRIAGE
                if (whichKnot == theFam) {
                    lastLoc = new Point(mouseX, mouseY);
                } else {
                    whichKnot = theFam;
                    edWin.getFPanel().dirty = true;
                }
                whichFolk = -1;
                whichLink = -1;
                return;
            } else {
                whichKnot = -1;
            }
        }
        //  CLICKED ON A BLANK AREA
        try {
            edWin.clearInfo();
        } catch (Exception pe) {
            displayError(pe);
            return;
        }  // theoretically can't happen
        if (personMenu.isShowing()) {
            personMenu.setVisible(false);
            lastLoc = new Point(-1, -1);
            try {
                edWin.storeInfo();
            } catch (Exception pe) {
                displayError(pe);
                return;
            }
            edWin.getPPanel().displayClues();
        } else if (editable) {
            try {
                edWin.storeInfo();
            } catch (Exception pe) {
                displayError(pe);
                return;
            }
            lastLoc = new Point(mouseX, mouseY);
            personMenu.setLocation(mouseX + originX, mouseY + originY);
            personMenu.deselect(personMenu.getSelectedIndex());
            personMenu.setVisible(true);
        }
    }
    
    void captureAdoption() {
        // Alternate action for Mouse_Down when designating adoption participants
        if (parent_Initiator == null) { // selected the edWin(s)
            if (theInd > -1) {
                parent_Initiator = Context.current.individualCensus.get(theInd);
                theSpecRel.parent = parent_Initiator;
            } else if (theLink > -1) {
                Link lk = Context.current.linkCensus.get(theLink);
                parent_Initiator = lk.personPointedTo;
                theSpecRel.parent = lk;
            } else if (theFam > -1) {
                Family fam = Context.current.familyCensus.get(theFam);
                if (fam.husband == null && fam.wife == null) {
                    String msg = "You designated a family as the parent/initiator.";
                    msg += "\nBut there are no parents in that family; at least 1 required.";
                    msg += "\nClick on a Person, Family (with parent) or a Link (or cancel).";
                    int answer = JOptionPane.showConfirmDialog(edWin, msg, "Invalid Designation",
                            JOptionPane.OK_CANCEL_OPTION);
                    if (answer == JOptionPane.CANCEL_OPTION) {
                        cancelAdoption();
                        return;
                    }
                }
                theSpecRel.parent = fam;
                parent_Initiator = (fam.wife == null ? fam.husband : fam.wife);
                //  we'll make a 2nd UDP for the husband later
            } else {  //  Nothing good was clicked
                String msg = "You are designating the parent/initiator.";
                msg += "\nYou must click on a Person, Family or a Link (or cancel).";
                msg += "\nTry again.";
                int answer = JOptionPane.showConfirmDialog(edWin, msg, "Invalid Designation",
                        JOptionPane.OK_CANCEL_OPTION);
                if (answer == JOptionPane.CANCEL_OPTION) {
                    child_Recipient = null;
                    makingSpecialRelationship = false;
                }
                return;
            }
            createChartableUDP_2();
        } else {  //  parent is already designated; this is the child
            if (theInd > -1) {
                child_Recipient = Context.current.individualCensus.get(theInd);
                theSpecRel.child = child_Recipient;
            } else if (theLink > -1) {
                Link lk = Context.current.linkCensus.get(theLink);
                child_Recipient = lk.personPointedTo;
                theSpecRel.child = lk;
            } else {  //  Nothing useful was clicked
                String msg = "You are designating the adoptee/rcipient.";
                msg += "\nYou must click on a Person or a Link (or cancel).";
                int answer = JOptionPane.showConfirmDialog(edWin, msg, "Invalid Designation",
                        JOptionPane.OK_CANCEL_OPTION);
                if (answer == JOptionPane.CANCEL_OPTION) {
                    cancelAdoption();
                }
                return;
            }
            createChartableUDP_3();
        }
        
    }

    void getProjectName() {  // Called when 1st person/union created
        String msg = "Enter project name (Normal = language name).\nMinimum 2 characters.",
                title = "Name This Project",
                ctxtName = null;
        boolean keepLooping = true;
        while (keepLooping) {
            ctxtName = JOptionPane.showInputDialog(edWin, msg, title, JOptionPane.QUESTION_MESSAGE);
            if (ctxtName != null && ctxtName.trim().length() > 1
                    && Library.validateFileName(ctxtName, false)) {
                keepLooping = false;
            } else if (ctxtName == null) {
                String msg2 = "You did not provide a name, so SILKin\nwill use the name 'Temp'.";
                Object[] options = {"Use 'Temp'", "Ooops! Ask Me Again."};
                int confirm = JOptionPane.showOptionDialog(edWin, msg2, title,
                        JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE, null,
                        options, options[0]);
                if (confirm == JOptionPane.YES_OPTION) {
                    ctxtName = "Temp";
                    keepLooping = false;
                }
            } else {
                String msg3 = "Your project name must have 2 or more characters.";
                msg3 += "\nUse letters, dashes, numbers -- but NO spaces.";
                JOptionPane.showMessageDialog(edWin, msg3, "Try Again", JOptionPane.PLAIN_MESSAGE);
            }
        }
        msg = "Name of data author?";
        String auth = JOptionPane.showInputDialog(edWin, msg),
                createDate = UDate.today();
        Library.currDataAuthor = auth;
        DomainTheory tempDT;
        try {
            Linus macroLineServer = new Linus(Library.libraryDirectory + "Standard_Macros");
            ParserDomainTheory parzer = new ParserDomainTheory(new Tokenizer(Library.getDFA(), macroLineServer));
            tempDT = parzer.parseMacrosOnly();
            DomainTheory dt = new DomainTheory(ctxtName, auth, createDate, false);
            dt.addressTerms = false;
            dt.dyadsDefined = new DyadTMap();
            dt.dyadsUndefined = new DyadTMap();
            // Load Std Macros
            Iterator macroIter = tempDT.theory.values().iterator();
            while (macroIter.hasNext()) {
                KinTermDef ktd = (KinTermDef) macroIter.next();
                dt.addTerm(ktd);
                dt.nonTerms.add(ktd.kinTerm);
            }
            Context.current = new Context(dt);
            DomainTheory.current = dt;
            Context.current.dataAuthors.add(auth);
        } catch (Exception e) {
            msg = "Fatal error while creating new context.\n" + e;
            MainPane.displayError(msg, "Internal Error", JOptionPane.ERROR_MESSAGE);
            System.exit(9);
        } //  No overwrite will occur

        Person.folks = Context.current.individualCensus;
        Marriage.knots = Context.current.familyCensus;
        Library.contextUnderConstruction = Context.current;
        Library.activeContexts.put(ctxtName, Context.current);
        Context.current.editDirectory = Library.editDirectory;
        edWin.ktm = Context.current.ktm;
        Context.current.loadDefaultKinTypeStuff();
        edWin.rebuildChartCombo();
        edWin.getPPanel().udpsPresent = false;
        edWin.getPPanel().initUDPCombo();
        saveFile = null;
    }  //  end of Check when 1st person/union created

    void displayError(Exception pe) {
        System.out.println("Data entry error: " + pe.getMessage());
        JOptionPane.showMessageDialog(this, pe.getMessage(),
                "Invalid data", JOptionPane.ERROR_MESSAGE);
    }

    void personMenu_MouseExit(Event event) {
        personMenu.setVisible(false);
        lastLoc = new Point(-1, -1);
    }

    void personMenu_ListSelect(Event event) {
        // The baby-maker method
        int theIndex = 0;
        if (!personMenu.isVisible()) {
            return;
        }
        personMenu.setVisible(false);
        personMenu.select((theIndex = personMenu.getSelectedIndex()));
        if (Library.contextUnderConstruction == null) {
            getProjectName();
        }
        Individual newPerson = null;
        Family newMar = null;
        Link newLink = null;
        lastLoc = gridSnap(lastLoc);
        switch (theIndex) {
            case 0: // female
                newPerson = new Individual(Person.fem, new Point(lastLoc.x, lastLoc.y));
                newPerson.myId = newPerson.serialNmbr + 1;
                newPerson.homeChart = Context.current.currentChart;
                edWin.getPPanel().addToEgoChoices(newPerson);
                break;
            case 1: // male
                newPerson = new Individual(Person.mal, new Point(lastLoc.x, lastLoc.y));
                newPerson.myId = newPerson.serialNmbr + 1;
                newPerson.homeChart = Context.current.currentChart;
                edWin.getPPanel().addToEgoChoices(newPerson);
                break;
            case 2: // marriage
                newMar = new Family(new Point(lastLoc.x, lastLoc.y));
                newMar.mid = newMar.serialNmbr + 1;
                break;
            case 3: // Linking to existing person
                // Build menu of existing persons, let User choose one.
                Object[] people = new Object[Context.current.indSerNumGen];
                String newName;
                int index = 0;
                for (Individual ind : Context.current.individualCensus) {
                    newName = (ind.deleted ? "deleted" + " <" + ind.serialNmbr + ">" 
                            : ind.homeChart + ": " + ind.name + " <" + ind.serialNmbr + ">");
                    people[index++] = newName;
                }
                String person = (String) JOptionPane.showInputDialog(
                        edWin, "Choose the Person", "Link to An Existing Person",
                        JOptionPane.PLAIN_MESSAGE, null, people, people[0]);
                if (person == null) {
                    return;
                }
                if(person.startsWith("deleted")) {
                    JOptionPane.showConfirmDialog(edWin,
                            "Not Allowed to Link to a Deleted Person.");
                    return;
                }
                int strt = person.indexOf("<") + 1,
                 end = person.length() - 1;
                int serial = Integer.parseInt(person.substring(strt, end));
                Individual newbie = Context.current.individualCensus.get(serial);
                Point location = new Point(lastLoc.x, lastLoc.y);
                // Create the Link
                newLink = new Link(newbie, Context.current.currentChart, location);
                break;
            case 4:
                //  Draw a chartable UDP
                if (! edWin.getPPanel().udpsPresent) {
                    String msg = "There are no 'chartable' User-Defined Properties";
                    msg += "\n(UDPs) defined for this Context.";
                    JOptionPane.showMessageDialog(edWin, msg, "This Option Not Available", 
                            JOptionPane.ERROR_MESSAGE);
                    break;
                } else {
                    createChartableUDP_1();
                }
        }
        if (newPerson != null) {
            // Attach the standard 'self' node and store it in the KTM
            newPerson.node = Node.makeSelfNode(distinctAdrTerms);
            newPerson.node.indiv = newPerson;
            int nmbr = newPerson.serialNmbr;
            edWin.ktm.addNode(nmbr, nmbr, newPerson.node);
            // Unless newPerson is currentEgo, erase the node from her Person
            if (newPerson.serialNmbr != edWin.getCurrentEgo()) {
                newPerson.node = null;
            }
            delayedAreaCk(newPerson);
            showInfo(newPerson);
        } else if (newMar != null) {
            newMar.homeChart = Context.current.currentChart;
            delayedAreaCk(newMar);
            showInfo(newMar);
        } else if (newLink != null) {
            delayedAreaCk(newLink);
            showInfo(newLink.personPointedTo);
        }
        dirty = true;
        repaint();
    }
    
    public Point gridSnap(Point p) {
        if (! Library.snapToGrid) {
            return p;
        }
        int deltaX = Library.gridX, deltaY = Library.gridY;
        int newX = ((p.x + (deltaX/2)) / deltaX) * deltaX, 
            newY = ((p.y + (deltaY/2)) / deltaY) * deltaY;        
        return new Point(newX, newY);
    }

    public int findMarriage(int x, int y) {
        if (Marriage.knots == null || Context.current == null) {
            return -1;
        }
        for (Family m : Marriage.knots) {
            if (m != null && 
                    m.homeChart.equals(Context.current.currentChart)
                    && m.bounds().contains(x, y)) {
                return m.mid - 1;
            }
        }
        return -1;
    }
    
    public int[] chartSize(Rectangle viewArea) {
        int[] results = new int[4];
        int minX = 1000000, minY = 1000000, maxX = -1, maxY = -1;
        int extraX = Library.gridX, extraY = Library.gridY;
        Rectangle printArea = new Rectangle(0, 0, 100000, 100000);
        if (viewArea != null) {
            printArea = viewArea;
        }
        String currChart = Context.current.currentChart;
        for (Family f : Context.current.familyCensus) {
            if (!f.deleted && f.homeChart.equals(currChart)
                    && printArea.contains(f.location)) {
                if (f.location.x < minX) {
                    minX = f.location.x;
                }
                if (f.location.y < minY) {
                    minY = f.location.y;
                }
                if (f.location.x + extraX > maxX) {
                    maxX = f.location.x + extraX;
                }
                if (f.location.y + extraY > maxY) {
                    maxY = f.location.y + extraY;
                }
            }
        }
        for (Individual ind : Context.current.individualCensus) {
            if (!ind.deleted && ind.homeChart.equals(currChart)
                    && printArea.contains(ind.location)) {
                if (ind.location.x < minX) {
                    minX = ind.location.x;
                }
                if (ind.location.y < minY) {
                    minY = ind.location.y;
                }
                if (ind.location.x + extraX > maxX) {
                    maxX = ind.location.x + extraX;
                }
                if (ind.location.y + extraY > maxY) {
                    maxY = ind.location.y + extraY;
                }
            }
        }
        for (Link lk : Context.current.linkCensus) {
            if (!lk.deleted && lk.homeChart.equals(currChart)
                    && printArea.contains(lk.location)) {
                if (lk.location.x < minX) {
                    minX = lk.location.x;
                }
                if (lk.location.y < minY) {
                    minY = lk.location.y;
                }
                if (lk.location.x + extraX > maxX) {
                    maxX = lk.location.x + extraX;
                }
                if (lk.location.y + extraY > maxY) {
                    maxY = lk.location.y + extraY;
                }
            }
        }
        if (maxY == -1) {  //  never found a valid Y
            results[0] = 0;
            results[1] = 0;
        } else {
            results[0] = maxX - minX + extraX;
            results[1] = maxY - minY + extraY;
            results[2] = minX - extraX;
            results[3] = minY - extraY;
        }
        return results;
    }

    void delayedAreaCk(Individual ind) {
        if (!reSizInds.contains(ind)) {
            reSizInds.add(ind);
        }
    }

    void delayedAreaCk(ArrayList<Individual> people) {
        for (Individual ind : people) {
            if (!reSizInds.contains(ind)) {
                reSizInds.add(ind);
            }
        }
    }
    
    void delayedAreaCk(Link link) {
        if (!reSizLinks.contains(link)) {
            reSizLinks.add(link);
        }
    }
    
    void delayedAreaCheck(ArrayList<Link> lynx) {
        for (Link lk : lynx) {
            if (!reSizLinks.contains(lk)) {
                reSizLinks.add(lk);
            }
        }
    }

    void delayedAreaCk(Family fam) {
        if (!reSizFams.contains(fam)) {
            reSizFams.add(fam);
        }
    }

    void checkFamArea(ArrayList<Family> fams) {
        int minX = 1000000, minY = 1000000, maxX = -1, maxY = -1, maxSz = -1;
        for (Family f : fams) {

            if (!f.deleted) {
                int sz = f.getSize();
                if (sz > maxSz) {
                    maxSz = sz;
                }
                if (f.location.x < minX) {
                    minX = f.location.x;
                }
                if (f.location.y < minY) {
                    minY = f.location.y;
                }
                if (f.location.x + sz > maxX) {
                    maxX = f.location.x + sz;
                }
                if (f.location.y + sz > maxY) {
                    maxY = f.location.y + sz;
                }
            }
        }
        int wide = maxX - minX, high = maxY - minY;
        checkArea(minX, minY, wide, high, maxSz);
    }

    void checkIndArea(ArrayList<Individual> people) {
        int minX = 1000000, minY = 1000000, maxX = -1, maxY = -1, maxSz = -1;
        for (Individual ind : people) {
            if (!ind.deleted) {
                int sz = ind.getSize();
                if (sz > maxSz) {
                    maxSz = sz;
                }
                if (ind.location.x < minX) {
                    minX = ind.location.x;
                }
                if (ind.location.y < minY) {
                    minY = ind.location.y;
                }
                if (ind.location.x + sz > maxX) {
                    maxX = ind.location.x + sz;
                }
                if (ind.location.y + sz > maxY) {
                    maxY = ind.location.y + sz;
                }
            }
        }
        int wide = maxX - minX, high = maxY - minY;
        checkArea(minX, minY, wide, high, maxSz);
    }

    void checkLinkArea(ArrayList<Link> links) {
        int minX = 1000000, minY = 1000000, maxX = -1, maxY = -1, maxSz = -1;
        for (Link lk : links) {
            if (!lk.deleted) {
                int sz = lk.getSize();
                if (sz > maxSz) {
                    maxSz = sz;
                }
                if (lk.location.x < minX) {
                    minX = lk.location.x;
                }
                if (lk.location.y < minY) {
                    minY = lk.location.y;
                }
                if (lk.location.x + sz > maxX) {
                    maxX = lk.location.x + sz;
                }
                if (lk.location.y + sz > maxY) {
                    maxY = lk.location.y + sz;
                }
            }
        }
        int wide = maxX - minX, high = maxY - minY;
        checkArea(minX, minY, wide, high, maxSz);
    }

    void checkArea(int left, int top, int wide, int high, int sz) {
        // if bottom or right has inadequate margin, add extra space
        resize = false;
        int desiredWidth = left + wide + (4 * sz),
            desiredHeight = top + high + (4 * sz);
        if (desiredWidth > area.width) {
            area.width = desiredWidth;
            resize = true;
        }
        if (desiredHeight > area.height) {
            area.height = desiredHeight;
            resize = true;
        }
        // if top or left has inadequate margin, add extra space
        // if snap2grid is on, round to nearest multiples
        int extraWidth = Math.max((4 * sz) - left, 0);
        int extraHeight = Math.max((4 * sz) - top, 0);
        Point extra = gridSnap(new Point(extraWidth, extraHeight));
        if (extra.x + extra.y > 0) {
            for (Individual ind : Context.current.individualCensus) {
                ind.adjustLocation(extra.x, extra.y);
            }
            for (Family fam : Context.current.familyCensus) {
                fam.adjustLocation(extra.x, extra.y);
                for (Marriage.BirthGroup bg : fam.birthGrps) {
                    bg.topPtX += extra.x;
                }
            }
            for (Link lk : Context.current.linkCensus) {
                lk.setLocationX(lk.getLocationX() + extra.x);
                lk.setLocationY(lk.getLocationY() + extra.y);
            }
            area.width += extra.x;
            area.height += extra.y;
            resize = true;
        }
        if (resize) {
            resize = false;
            setPreferredSize(area);
            revalidate();
        }
    }
    
    public void createChartableUDP_1() {
        makingSpecialRelationship = true;
        parent_Initiator = null;
        child_Recipient = null;
        chosenUDP = null;
        edWin.chartComboSetEnabled(false);
        if (Context.current.adoptionHelp) {
            HelpFrame.window.displayPage(HelpFrame.NON_GEN, "rules");
            HelpFrame.window.setLocationRelativeTo(edWin.getPPanel());
        }
        try {
            // If only one chartable UDP, show it. Else menu choose.
            String chosenUDPName;
            TreeMap udpMap = Context.current.userDefinedProperties;
            if (udpMap == null || udpMap.isEmpty()) {
                String msg = "There are no 'chartable' User-Defined Properties";
                msg += "\n(UDPs) defined for this Context.";
                JOptionPane.showMessageDialog(this, msg, "This Option Not Available",
                        JOptionPane.ERROR_MESSAGE);
                edWin.getPPanel().udpsPresent = false;
                return;
            }
            int c = 0;
            String[] udpNames = new String[udpMap.size()];
            Iterator udpIter = udpMap.entrySet().iterator();
            while (udpIter.hasNext()) {
                Map.Entry entry = (Map.Entry) udpIter.next();
                String udpName = (String) entry.getKey();
                UserDefinedProperty udp = (UserDefinedProperty) entry.getValue();
                if (udp.chartable) {
                    udpNames[c++] = udpName;
                }
            }
            String msg, title;
            if (c == 1) {
                chosenUDPName = udpNames[0];
            } else {
                msg = "Pick UDP representing the Special Relationship";
                chosenUDPName = (String) JOptionPane.showInputDialog(this, msg,
                        "Special Relationship to Draw",
                        JOptionPane.PLAIN_MESSAGE, null, udpNames, udpNames[0]);
                if (chosenUDPName == null) {
                    makingSpecialRelationship = false;
                    return;
                }              
            }
            chosenUDP = (UserDefinedProperty) udpMap.get(chosenUDPName); 
            title = "Draw " + chosenUDPName + " from...";
            msg = "Click 'OK' below, then click on the\n";
            msg += "initiator/parent in this relationship.";
            JOptionPane.showMessageDialog(this, msg, title, JOptionPane.PLAIN_MESSAGE);
            theSpecRel = new Context.SpecRelTriple();
            theSpecRel.udpName = chosenUDPName;
        } catch (Exception exc) {
            String msg = "While attempting to draw a Special Relationship:\n" + exc;
            msg += "\nPlease report to the SILKin Team.\n\nSave your SILK file, reload & retry.";
            MainPane.displayError(msg, "Internal Error", JOptionPane.PLAIN_MESSAGE);
            cancelAdoption();
            return;
        }
    }
    
    void cancelAdoption() {
        makingSpecialRelationship = false;
        parent_Initiator = null;
        child_Recipient = null;
        chosenUDP = null;
        theSpecRel = null;
        HelpFrame.window.setVisible(false);
        edWin.chartComboSetEnabled(true);
    }

    public void createChartableUDP_2() {
        String msg = "Click 'OK' below, then pick the child/recipient.",
                title = "Draw " + chosenUDP.starName + " from " + parent_Initiator.name + "...";
        JOptionPane.showMessageDialog(this, msg, title, JOptionPane.PLAIN_MESSAGE);
    }

    public void createChartableUDP_3() {
        if (child_Recipient == parent_Initiator) {
            String msg = "You cannot have the same person as both parent and child.";
            msg += "\nTry again (or cancel).";
            int answer = JOptionPane.showConfirmDialog(this, msg, "Invalid Designation",
                    JOptionPane.OK_CANCEL_OPTION);
            if (answer != JOptionPane.OK_OPTION) {
                cancelAdoption();
            }
            child_Recipient = null;
            return;
        }
        String uName = chosenUDP.starName;
        UserDefinedProperty 
                udp = (UserDefinedProperty) parent_Initiator.userDefinedProperties.get(uName),
                udp2 = null;
        Family fam = null;
        if (Context.current.specialRelationships == null) {
            Context.current.specialRelationships = new TreeMap<String, ArrayList<Context.SpecRelTriple>>();
        }
        if (Context.current.inverseSpecialRelationships == null) {
            Context.current.inverseSpecialRelationships = new TreeMap<Individual, TreeMap<String, ArrayList<Individual>>>();
        }
        TreeMap<String, ArrayList<Context.SpecRelTriple>> sRs = Context.current.specialRelationships;
        TreeMap<Individual, TreeMap<String, ArrayList<Individual>>> iRs = Context.current.inverseSpecialRelationships;        
        String chartLtr = Context.current.currentChart;
        
        if (udp.value.contains(child_Recipient)) {  //  This is a re-drop = REMOVAL
            udp.value.remove(child_Recipient);
            removeSpecialRelationship(chartLtr, theSpecRel);
            if (theSpecRel.parent instanceof Family) { // might need a 2nd Removal
                fam = (Family) theSpecRel.parent;
                if (fam.wife != null && fam.husband != null) {  //  did wife previously
                    udp2 = (UserDefinedProperty) fam.husband.userDefinedProperties.get(uName);
                    udp2.value.remove(child_Recipient);
                }
            }
            iRs.get(child_Recipient).get(uName).remove(parent_Initiator);
            if (udp2 != null) {
                iRs.get(child_Recipient).get(uName).remove(fam.husband);
            }
            if (iRs.get(child_Recipient).get(uName).isEmpty()) {
                iRs.get(child_Recipient).remove(uName);
            }
            if (iRs.get(child_Recipient).isEmpty()) {
                iRs.remove(child_Recipient);                
            }
            edWin.rebuildKTMatrixEtc();
        } else {  // Not a re-drop:  ADD
        // Build the UDP            
            try {
                udp.value.add(child_Recipient);
                if (theSpecRel.parent instanceof Family) { // might need a 2nd UDP
                    fam = (Family) theSpecRel.parent;
                    if (fam.wife != null && fam.husband != null) {  //  did wife previously
                        udp2 = (UserDefinedProperty) fam.husband.userDefinedProperties.get(uName);
                        udp2.value.add(child_Recipient);
                    }
                }
            } catch (Exception exc) {
                String msg = "While attempting to draw a Special Relationship:\n" + exc;
                msg += "\nPlease report to the SILKin Team.\n\nSave your SILK file, reload & retry.";
                MainPane.displayError(msg, "Internal Error", JOptionPane.PLAIN_MESSAGE);
                cancelAdoption();
                return;
            }  //  Post the Triple on the context
            if (sRs.get(chartLtr) == null) {
                sRs.put(chartLtr, new ArrayList<Context.SpecRelTriple>());
            }
            sRs.get(chartLtr).add(theSpecRel);
            if (iRs.get(child_Recipient) == null) {
                iRs.put(child_Recipient, new TreeMap<String,ArrayList<Individual>>());
            }  
            if (iRs.get(child_Recipient).get(uName) == null) {
                iRs.get(child_Recipient).put(uName, new ArrayList<Individual>());
            }  //  Post the Inverse Special Relationship
            iRs.get(child_Recipient).get(uName).add(parent_Initiator);
            if (udp2 != null) {
                iRs.get(child_Recipient).get(uName).add(fam.husband);
            }
        }        
        int oldEgo = edWin.getCurrentEgo();
        edWin.hideEgoChange = true;
        edWin.changeEgo(parent_Initiator.serialNmbr);  //  force rebuild of KTM row
        edWin.changeEgo(child_Recipient.serialNmbr);
        edWin.changeEgo(oldEgo);
        edWin.hideEgoChange = false;
        edWin.showInfo(parent_Initiator);
        edWin.getPPanel().setUDPSelection(uName);
        edWin.infoPerson = parent_Initiator;
        whichFolk = parent_Initiator.serialNmbr;
        cancelAdoption();
        dirty = true;
        repaint();
    }
    
    void removeSpecialRelationship(String chartLtr, Context.SpecRelTriple triple) {
        Iterator iter = Context.current.specialRelationships.get(chartLtr).iterator();
        while (iter.hasNext()) {
            Context.SpecRelTriple tpl = (Context.SpecRelTriple) iter.next();
            if (tpl.equals(triple)) {
                iter.remove();
                return;
            }
        }
    }
    

    public void paint(Graphics g) {
        super.paint(g);
        if (loading) {
            return;
        }
        g.translate(originX, originY);
        Rectangle myRect = getBounds();
        myRect.setLocation(-originX, -originY);
        String currChart = null;
        if (Context.current != null && Context.current.currentChart != null) {
            currChart = Context.current.currentChart;
        }
        paint0(g, myRect, currChart);
    }

    public void paint0(Graphics g, Rectangle myRect, String chart) {
        Rectangle theRect;
        if (Context.current == null) {
            return;
        }
        if (selectLine != null) {
            selectLine.paint(g);
        }
        Color originalColor = g.getColor();
        int oldFolk = whichFolk;
        ArrayList<Integer> path = new ArrayList<Integer>();
        try {
            if (whichFolk > -1) {
                path = Context.current.ktm.getPath(edWin.getCurrentEgo(), whichFolk);
            } else if (whichLink > -1) {
                int ppt = Context.current.linkCensus.get(whichLink).personPointedTo.serialNmbr;
                path = Context.current.ktm.getPath(edWin.getCurrentEgo(), ppt);
            }
        } catch (KSInternalErrorException exc) {
            JOptionPane.showMessageDialog(this,
                    "SERIOUS problem. " + exc + "\nProbably due to deletion of people or unions.\n"
                    + "Not your fault. Send copy of your SILK file to SILKin Team for correction.",
                    "Data Corruption Error",
                    JOptionPane.ERROR_MESSAGE);
            saveSILKFile();
            System.exit(9);
        }
        if (chart == null) {
            chart = "A";
        }
        for (Link lk : Context.current.linkCensus) {
            if (!lk.deleted && lk.homeChart.equals(chart)) {
                Individual p = lk.personPointedTo;
                if (p.serialNmbr == edWin.getCurrentEgo()) {
                    lk.drawSymbol(g, myRect, Color.red);
                }  // If we clicked on Ego, he'll be blue (Alter)
                if (lk.serialNmbr == whichLink) { // clicked on Link
                    lk.drawSymbol(g, myRect, Color.blue);
                    whichFolk = p.serialNmbr; // makes original blue also
                    showInfo(p);
                } else if (p.serialNmbr == whichFolk) {
                    lk.drawSymbol(g, myRect, Color.blue);
                } else if (path.contains(p.serialNmbr)) {
                    lk.drawSymbol(g, myRect, Color.orange);
                } else {
                    lk.drawSymbol(g, myRect, Link.defaultColor);
                }
            }
        }  //  end of loop thru Links, w/ default color = green
        for (Individual p : Person.folks) { // clicked on Individual
            if (p != null && !p.deleted && p.homeChart.equals(chart)) {
                if (p.serialNmbr == whichFolk) {
                    p.drawSymbol(g, myRect, Color.blue);                    
                } else if (p.serialNmbr == edWin.getCurrentEgo()) {
                    p.drawSymbol(g, myRect, Color.red);
                } else if (path.contains(p.serialNmbr)) {
                    p.drawSymbol(g, myRect, Color.orange);
                } else {
                    p.drawSymbol(g, myRect);
                }
            }
        }  //  end of loop thru Individuals
        if (lastFolk != whichFolk && whichFolk >= 0) {
            showInfo(Context.current.individualCensus.get(whichFolk));
        }
        whichFolk = oldFolk;
        lastFolk = whichFolk;  // lastFolk == person previously displayed
        whichHalf = -1;
        for (Family m : Marriage.knots) {
            if (m != null && m.homeChart.equals(chart)) {
                theRect = m.bounds();
                if (m.mid - 1 == whichKnot) {
                    m.drawSymbol(g, myRect, Color.blue);
                    if (lastKnot != whichKnot) {
                        showInfo(m);
                    }
                } else {
                    m.drawSymbol(g, myRect, Color.black);
                }
                m.drawLines(g, myRect);
                //  SelectLine shows that a person is being dragged to top or bottom of a marriage symbol
                if (selectLine != null) {
                    theRect = new Rectangle(theRect);
                    theRect.height *= 2;
                    theRect.y -= theRect.height / 4;
                    if (theRect.contains(selectLine.toP.x, selectLine.toP.y)) {
                        tiedKnot = m.mid - 1;
                        Rectangle upper = new Rectangle(theRect.x, theRect.y, theRect.width,
                                theRect.height / 2);
                        Rectangle lower = new Rectangle(theRect.x, theRect.y + theRect.height / 2,
                                theRect.width, theRect.height / 2);
                        Color cx = g.getColor();
                        g.setColor(Color.green);
                        if (upper.contains(selectLine.toP.x, selectLine.toP.y)) {
                            g.fillOval(upper.x, upper.y, upper.width, upper.height);
                            whichHalf = 1;
                        } else if (lower.contains(selectLine.toP.x, selectLine.toP.y)) {
                            g.setColor(Color.magenta);
                            g.fillOval(lower.x, lower.y, lower.width, lower.height);
                            whichHalf = 2;
                        }
                        g.setColor(cx);
                    }
                }
            }
        }
        lastKnot = whichKnot;
        if (Context.current.specialRelationships != null && 
                Context.current.specialRelationships.get(Context.current.currentChart) != null) {
            for (Context.SpecRelTriple sr : Context.current.specialRelationships.get(Context.current.currentChart)) {
                Rectangle pr = sr.parent.bounds(), kr = sr.child.bounds();
                int parentMidX = pr.x + (pr.width / 2),
                    kidMidX = kr.x + (kr.width / 2),
                    parBotY = pr.y + pr.height + GAP,
                    kidTopY = kr.y;
                Color clr = ((UserDefinedProperty)Context.current.userDefinedProperties.get(sr.udpName)).chartColor;
                g.setColor(clr);
                g.drawLine(parentMidX, parBotY, kidMidX, kidTopY);
            }
        }
        g.setColor(originalColor);
    }  //  end of method paint0
    
    public void setAlter(int serial) {
        whichFolk = serial;
        edWin.infoPerson = Context.current.individualCensus.get(serial);
        repaint();
    }

    public void showInfo(Individual p) {
        if (!loading) {
            edWin.showInfo(p);
        }
    }

    public void showInfo(Family f) {
        if (!loading) {
            edWin.showInfo(f);
        }
    }

    public void clearInfo() {
        if (!loading) {
            try {
                edWin.clearInfo();
            } catch (Exception e) {
                displayError(e);
            }
        }
    }

    void KinshipEditor_MouseDrag(MouseEvent event) {
        if (!editable) {
            return; // can't edit;
        }
        int mouseX = event.getX(), mouseY = event.getY();
        boolean shiftDn = event.isShiftDown(),
                altDn = event.isAltDown(),
                metaDn = event.isMetaDown();
        if (shiftDn) {  //  Shift-drag on a Family = move nuclear family
            if (whichKnot != -1) {
                int dx = Marriage.knots.get(whichKnot).location.x - mouseX + 10;
                int dy = Marriage.knots.get(whichKnot).location.y - mouseY + 10;
                Marriage.knots.get(whichKnot).deltaMove(dx, dy);
                // deltaMove calls delayedAreaCk
                whichFolk = -1;
                dirty = true;
                repaint();
            } else if (whichFolk != -1) {
                Person p = Person.folks.get(whichFolk);
                selectLine = new Line(new Point(p.location.x + 10, p.location.y + 10),
                        new Point(mouseX, mouseY));
//                delayedAreaCk((Individual) p);
                repaint();
            } else if (whichLink != -1) {
                Link lk = Context.current.linkCensus.get(whichLink);
                selectLine = new Line(new Point(lk.location.x + 10, lk.location.y + 10),
                        new Point(mouseX, mouseY));
//                delayedAreaCk(lk);
                repaint();
            }
        } else if (metaDn || altDn) {   //  Alt-drag on a Family = move all descendants
            if (whichKnot != -1) {      //  Option-drag or Command-drag on a Mac
                int dx = Marriage.knots.get(whichKnot).location.x - mouseX + 10;
                int dy = Marriage.knots.get(whichKnot).location.y - mouseY + 10;
                ArrayList<Individual> people = new ArrayList<Individual>();
                ArrayList<Link> lynx = new ArrayList<Link>();
                Marriage.knots.get(whichKnot).lineageDeltaMove(dx, dy, people, lynx);
                for (Individual ind : people) {
                    if (!draggedPersons.contains(ind)) {
                        draggedPersons.add(ind);
                    }
                }
                for (Link lk : lynx) {
                    if (!draggedLinks.contains(lk)) {
                        draggedLinks.add(lk);
                    }
                }
                delayedAreaCk(people);
                delayedAreaCheck(lynx);
                whichFolk = -1;
                dirty = true;
                repaint();
            } else if (whichFolk != -1) {
                Person p = Person.folks.get(whichFolk);
                selectLine = new Line(new Point(p.location.x + 10, p.location.y + 10),
                        new Point(mouseX, mouseY));
//                delayedAreaCk((Individual) p);
                repaint();
            }else if (whichLink != -1) {
                Link lk = Context.current.linkCensus.get(whichLink);
                selectLine = new Line(new Point(lk.location.x + 10, lk.location.y + 10),
                        new Point(mouseX, mouseY));
//                delayedAreaCk(lk);
                repaint();
            }

        } else {  //  No mod keys = drag current object only
            selectLine = null;
            if (whichFolk != -1) {
                Individual p = Person.folks.get(whichFolk);
                Point newLoc = new Point(mouseX - 10, mouseY - 10);
                if (!draggedPersons.contains(p)) {
                    draggedPersons.add(p);
                }
                p.setLocation(newLoc);
                whichKnot = -1;
                whichLink = -1;
                dirty = true;
                selectLine = new Line(lastPersonLoc, newLoc);
                repaint();
            } else if (whichLink != -1) {
                Link lk = Context.current.linkCensus.get(whichLink);
                Point newLoc = new Point(mouseX - 10, mouseY - 10);
                if (!draggedLinks.contains(lk)) {
                    draggedLinks.add(lk);
                }
                lk.location = newLoc;
                whichKnot = -1;
                whichFolk = -1;
                dirty = true;
                selectLine = new Line(lastPersonLoc, newLoc);
                repaint();
            } else if (whichKnot != -1) {
                Family m = Marriage.knots.get(whichKnot);
                Point newLoc = new Point(mouseX - 10, mouseY - 10);
                if (!draggedMarriages.contains(m)) {
                    draggedMarriages.add(m);
                }
                m.location.x = newLoc.x;
                m.location.y = newLoc.y;                
                dirty = true;
                repaint();
            } else {
                repaint();
            }
        }
    }

    void KinshipEditor_MouseUp(MouseEvent event) {
        //  MouseUp is fired before MouseReleased
        if (!editable) {
            return;
        }
        int mouseX = event.getX(), mouseY = event.getY();
        boolean ctrlDn = event.isControlDown(),
                shiftDn = event.isShiftDown(),
                altDn = event.isAltDown(),
                metaDn = event.isMetaDown(),
                needPaintJob = false;
        ArrayList<Family> fams = new ArrayList<Family>(); 
        // fams with birthGrps affected by the drag
        if (!draggedPersons.isEmpty()) {            
            for (Individual p : draggedPersons) {
                Point newLoc = p.location;
                p.setLocation(gridSnap(newLoc));
                delayedAreaCk(p);
                if (p.birthFamily != null && ! fams.contains(p.birthFamily)) {
                    fams.add(p.birthFamily);
                }
            }
            needPaintJob = true;
            draggedPersons.clear();
        }
        if (!draggedMarriages.isEmpty()) {
            for (Family m : draggedMarriages) {
                Point newLoc = gridSnap(m.location);
                m.location = newLoc;
                if (m.husband != null && m.husband.birthFamily != null
                        && !fams.contains(m.husband.birthFamily)) {
                    fams.add(m.husband.birthFamily);
                }
                if (m.wife != null && m.wife.birthFamily != null
                        && !fams.contains(m.wife.birthFamily)) {
                    fams.add(m.wife.birthFamily);
                }
            }
            needPaintJob = true;
            draggedMarriages.clear();
        }
        if (!draggedLinks.isEmpty()) {
            for (Link lk : draggedLinks) {
                lk.location = gridSnap(lk.location);
                delayedAreaCk(lk);
                if (lk.personPointedTo.birthFamily != null && 
                        ! fams.contains(lk.personPointedTo.birthFamily)) {
                    fams.add(lk.personPointedTo.birthFamily);
                }
            }
            needPaintJob = true;
            draggedLinks.clear();
        }
        for (Family fam : fams) {
            fam.computeBirthGrps();
        }
        if (needPaintJob) {
            repaint();
        }
        if (altDn && whichFolk > -1) { // Chose New Ego
            edWin.changeEgo(whichFolk);
            edWin.getPPanel().resetEgoBox(edWin.getCurrentEgo());
            whichFolk = priorAlter;
            repaint();
            return;
        }
        if (altDn && whichLink > -1) { // Chose New Ego
            Individual ind = Context.current.linkCensus.get(whichLink).personPointedTo;
            edWin.changeEgo(ind.serialNmbr);
            edWin.getPPanel().resetEgoBox(edWin.getCurrentEgo());
            whichFolk = priorAlter;
            repaint();
            return;
        }
        //  This test = 'no control key' or 'shift' or 'meta'
        if (shiftDn || metaDn || !ctrlDn) {
            if (selectLine != null && whichHalf > 0 && whichFolk > -1) {
            //  We've released a Person after dragging to a Marriage
                Family fx = Marriage.knots.get(tiedKnot);
                Individual ix = Person.folks.get(whichFolk);
                Rectangle theRect = makeRect(fx);
                if (theRect.contains(selectLine.toP.x, selectLine.toP.y)) {
                    Rectangle upperHalf = new Rectangle(theRect.x, theRect.y -5, theRect.width,
                            theRect.height / 2);
                    Rectangle lowerHalf = new Rectangle(theRect.x, theRect.y + theRect.height / 2,
                            theRect.width, (theRect.height / 2) + 5);
                    if (upperHalf.contains(selectLine.toP.x, selectLine.toP.y)) { //  intend to add new spouse
                        addOrDeleteSpouse(ix, fx);
                    } else if (lowerHalf.contains(selectLine.toP.x, selectLine.toP.y)) { //  Intend to add child
                        if (ix.birthFamily != null && ix.birthFamily != fx) { // kid already has a different birthFamily
                            String msg = "Person <" + ix.serialNmbr + "> is a child in Family <" + fx.serialNmbr + ">"
                                    + "\nMust delete from incorrect family before adding to correct one.",
                                    ttl = "Family-Building Error";
                            JOptionPane.showMessageDialog(edWin, msg, ttl, JOptionPane.WARNING_MESSAGE);
                            ix.setLocation(lastPersonLoc);
                            repaint();
                            return;
                        }
                        if (!fx.isSib(ix)) {
                            addChild(ix, fx);
                        } else {
                            removeChild(ix, fx);
                        }
                        fx.computeBirthGrps();
                    }
                }
            }else if (selectLine != null && whichHalf > 0 && whichLink > -1) {
                //  We've released a Link after dragging to a Marriage
                Family fx = Marriage.knots.get(tiedKnot);
                Link lk = Context.current.linkCensus.get(whichLink);
                Rectangle theRect = makeRect(fx);
                if (theRect.contains(selectLine.toP.x, selectLine.toP.y)) {
                    Rectangle upperHalf = new Rectangle(theRect.x, theRect.y -5, theRect.width,
                            theRect.height / 2);
                    Rectangle lowerHalf = new Rectangle(theRect.x, theRect.y + theRect.height / 2,
                            theRect.width, (theRect.height / 2) + 5);
                    if (upperHalf.contains(selectLine.toP.x, selectLine.toP.y)) { //  intend to add new spouseLink
                        addOrDeleteSpouseLink(lk, fx);
                    } else if (lowerHalf.contains(selectLine.toP.x, selectLine.toP.y)) { //  Intend to add child
                        Family origBFam = lk.personPointedTo.birthFamily;
                        if (origBFam != null && origBFam != fx) { // kid already has a different birthFamily
                            String msg = "Person linked to: " + lk.personPointedTo.name + " <" + lk.personPointedTo.serialNmbr 
                                    + ">\n is a child in Family <" + fx.serialNmbr + ">"
                                    + "\nCannot be a child in two different families.",
                                    ttl = "Family-Building Error";
                            JOptionPane.showMessageDialog(edWin, msg, ttl, JOptionPane.WARNING_MESSAGE);
                            lk.location = lastPersonLoc;
                            repaint();
                            return;
                        }
                        if (!fx.isSib(lk.personPointedTo)) {
                            addChildLink(lk, fx);
                        } else {
                            removeChildLink(lk, fx);
                        }
                        fx.computeBirthGrps();
                    }
                    lk.location = lastPersonLoc;
                }                
                
            }else if (dragged) { //  Perhaps we just dragged something to a new location
            }
            whichHalf = -1;
            tiedKnot = -1;
            selectLine = null;
            repaint();
        } else if (ctrlDn) {  //  Control = deletion and deletion gets messy
            int serialNum;
            if ((serialNum = Person.findPerson(mouseX, mouseY)) >= 0) { //  Want to delete a Person
                if (whichFolk == serialNum) {
                    lastLoc = new Point(mouseX, mouseY);
                } else {
                    whichFolk = serialNum;
                }                
                Individual ind = Context.current.individualCensus.get(whichFolk);
                try {
                    deleteIndividual(ind);
                } catch (KinshipSystemException exc) {
                    //  we refused the deletion; no big deal
                }
                whichFolk = -1;
                dirty = true;
                repaint();
                return;
            } else {
                whichFolk = -1;
            }
            if ((serialNum = findMarriage(mouseX, mouseY)) >= 0) { //  Want to delete a Family
                if (whichKnot == serialNum) {
                    lastLoc = new Point(mouseX, mouseY);
                } else {
                    whichKnot = serialNum;
                }
                Family fam = Marriage.knots.get(whichKnot);
                deleteFam(fam);
                whichKnot = -1;
                dirty = true;
                repaint();
                return;
            } else {
                whichKnot = -1;
            }
            if ((serialNum = Link.findLink(mouseX, mouseY)) >= 0) { // Want to delete a Link
                if (whichLink == serialNum) {
                    lastLoc = new Point(mouseX, mouseY);
                } else {
                    whichLink = serialNum;
                }
                Link lk = Context.current.linkCensus.get(serialNum);
                try {
                    deleteLink(lk);
                } catch (KinshipSystemException exc) {
                    //  deletion refused. It's OK.
                }
            }
            whichLink = -1;            
        }
        repaint();
    }
    
    Rectangle makeRect(Family fx) {
        Rectangle theRect = new Rectangle(fx.location.x, fx.location.y, 20, 20);
        theRect = new Rectangle(fx.bounds());
        theRect.height *= 2;
        theRect.y -= theRect.height / 4;
        return theRect;
    }
    
    void deleteIndividual(Individual ind) throws KinshipSystemException {
        int serialNmbr = ind.serialNmbr;
        if (Context.current.indSerNumGen > 1) {
            String msg = "", msg2 = "", title = "Cannot Delete " + ind.name;
            if (serialNmbr == edWin.getCurrentEgo()) {
                msg = "Cannot delete Ego. First choose a different Ego.";
            } else if (ind.birthFamily != null) {
                msg2 = "Cannot delete child while in family.\nFirst disconnect them, then delete.";
            } else if (ind.marriages.size() > 0) {
                msg2 = "Cannot delete spouse while married.\nFirst disconnect them, then delete.";
            } else if (inAdoption(ind)) {
                msg2 = "Cannot delete someone in a special relationship.\nFirst disconnect them, then delete.";
            } else if (isLinkee(ind)) {
                msg = "Cannot delete someone who is linked to.\nFirst delete link(s), then delete original.";
            }
            if (!msg.isEmpty()) {
                JOptionPane.showMessageDialog(edWin, msg, title, JOptionPane.WARNING_MESSAGE);
                throw new KinshipSystemException("");
            } else if (!msg2.isEmpty()) {
                Object[] options = {"Help with Disconnecting", "OK"};
                int confirm = JOptionPane.showOptionDialog(edWin, msg2, title,
                        JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE, null,
                        options, options[1]);
                if (confirm == JOptionPane.YES_OPTION) {
                    if (msg2.contains("special")) {
                        HelpFrame.window.displayPage(HelpFrame.NON_GEN, "delete");
                    } else {
                        HelpFrame.window.displayPage(HelpFrame.CHART, "del-rel");
                    }
                    throw new KinshipSystemException("");
                }
            }
        }
        ind.delPerson();
        try {
            ind.delete();
        } catch (KSInternalErrorException k) {
        }  //  deleted persons may be messed up
        if (serialNmbr == Context.current.indSerNumGen - 1 //  Delete last person made
                && serialNmbr != edWin.getCurrentEgo()) {   //  if they are not Ego
            Person.folks.remove(--Context.current.indSerNumGen);
            edWin.getPPanel().rebuildEgoBox();
        } else {
            edWin.getPPanel().updateEgoNames(ind);
            Person.folks.get(serialNmbr).location = new Point(-100, -100);
        }
        Context.current.ktm.deletePerson(ind);
        //  Because we do not allow deletion of persons who are married, adopted, or in a birth family,
        //  no recomputing of nodes is needed. Just delete this guy's row and column in the KTM
        //  and any associated dyads.                
    }
    
    void deleteLink(Link lk) throws KinshipSystemException {
        if (!lk.deleted) {
            Individual ind = lk.personPointedTo;
            boolean linkIsKid = ind.birthFamily != null && ind.birthFamily.kidLinks.contains(lk);
            boolean linkIsSpouse = spouseLinkIn(ind.marriages, lk) != null;
            if (Context.current.indSerNumGen > 1) {
                String msg = "", title = "Cannot Delete " + lk.personPointedTo.name;
                if (linkIsKid) {
                    msg = "Cannot delete child while in family. First disconnect them, then delete.";
                } else if (linkIsSpouse) {
                    msg = "Cannot delete spouse while married. First disconnect them, then delete.";
                } else if (inAdoption(lk)) {
                    msg = "Cannot delete someone in a special relationship. First delete relationship, then delete this link.";
                }
                if (!msg.isEmpty()) {
                JOptionPane.showMessageDialog(edWin, msg, title, JOptionPane.WARNING_MESSAGE);
                throw new KinshipSystemException("");
                }
            }
            Link.delete(lk);
            lk.personPointedTo.links.remove(lk);
        }
    }
    
    void deleteFam(Family fam) {
        if (fam.husband != null || fam.wife != null ||
                !fam.children.isEmpty()) {
            String msg = "This family still has members.\nRemove members before deleting the family.", 
                   title = "Invalid Deletion";
            JOptionPane.showMessageDialog(edWin, msg, title, JOptionPane.WARNING_MESSAGE);
            return;
        }
        fam.delete();
        fam.delMarriage();
        Context c = Context.current;
        if (c.specialRelationships != null && 
                c.specialRelationships.get(c.currentChart) != null) {            
            ArrayList<Context.SpecRelTriple> oldies = new ArrayList<Context.SpecRelTriple>(),
                     sr = c.specialRelationships.get(c.currentChart);
            Iterator iter = sr.iterator();
            while (iter.hasNext()) {
                Context.SpecRelTriple tr  = (Context.SpecRelTriple)iter.next();
                if (tr.parent == fam) {
                    oldies.add(tr);
                    iter.remove();
                }
            }
        }        
        fam.location = new Point(-100, -100);
    }
    
    boolean inAdoption(Individual ind) {
        Context c = Context.current;
        if (c.specialRelationships == null
                || c.specialRelationships.get(c.currentChart) == null) {
            return false;
        }
        for (Context.SpecRelTriple tr : c.specialRelationships.get(c.currentChart)) {
            if (tr.parent == ind) {
                return true;
            }
            if (tr.child == ind) {
                return true;
            } else if (tr.parent instanceof Link) {
                Link lk = (Link) tr.parent;
                if (lk.personPointedTo == ind) {
                    return true;
                }
            } else if (tr.parent instanceof Family) {
                Family fam = (Family) tr.parent;
                if (fam.wife == ind || fam.husband == ind) {
                    return true;
                }
            } else if (tr.child instanceof Link) {
                Link lk = (Link) tr.child;
                if (lk.personPointedTo == ind) {
                    return true;
                }
            }
        }
        return false;
    }
    
    boolean inAdoption(Link link) {
        Context c = Context.current;
        if (c.specialRelationships == null
                || c.specialRelationships.get(c.currentChart) == null) {
            return false;
        } else {
            for (Context.SpecRelTriple tr : c.specialRelationships.get(c.currentChart)) {
                if (tr.parent == link) {
                    return true;
                }
                if (tr.child == link) {
                    return true;
                }
                if (tr.parent instanceof Family) {
                    Family fam = (Family) tr.parent;
                    if (fam.wifeLink == link || fam.husbandLink == link) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
    
    boolean isLinkee(Individual ind) {
        for (Link lk : Context.current.linkCensus) {
            if (!lk.deleted && lk.personPointedTo == ind) {
                return true;
            }
        }
        return false;
    }
    
    void addOrDeleteSpouse(Individual ix, Family fx) {
        if (!fx.isSpouse(ix)) {  //  Add ix as a spouse, if OK
            String marriageLicense = fx.eligibleSpouse(ix);  //  'OK' or reason for rejecting marriage, or null
            if (marriageLicense.equals("gay")) {
                String msg = "Cannot have same-sex marriages.",
                        ttl = "Marriage Attempt Rejected.";
                JOptionPane.showMessageDialog(edWin, msg, ttl, JOptionPane.WARNING_MESSAGE);
                ix.setLocation(lastPersonLoc);
                repaint();
                return;
            } else if (marriageLicense.equals("bigamy")) {
                String msg = "Only 2 persons allowed in a marriage.",
                        ttl = "Marriage Attempt Rejected.";
                JOptionPane.showMessageDialog(edWin, msg, ttl, JOptionPane.WARNING_MESSAGE);
                ix.setLocation(lastPersonLoc);
                repaint();
                return;
            }
            if (fx.isSib(ix)) {
                if (lastPersonLoc.y > fx.location.y) {
                    lastPersonLoc.y = fx.location.y + (fx.location.y - lastPersonLoc.y);
                }
                ix.setLocation(lastPersonLoc);
                try {
                    fx.deleteChild(ix);
                } catch (KSInternalErrorException ksiee) {
                    String msg = ksiee.getMessage(),
                            ttl = "Sibling Deletion Attempt Rejected.";
                    JOptionPane.showMessageDialog(edWin, msg, ttl, JOptionPane.WARNING_MESSAGE);
                    repaint();
                    return;
                }
                fx.delSib(ix);
            }
            ix.setLocation(lastPersonLoc);
            try {
                fx.addSpouse(ix);  // the KAES method
                fx.addParent(ix);  // the SILKin method
            } catch (KSInternalErrorException ksiee) {
                String msg = ksiee.getMessage(),
                        ttl = "Marriage Attempt Rejected.";
                JOptionPane.showMessageDialog(edWin, msg, ttl, JOptionPane.WARNING_MESSAGE);
                repaint();
                return;
            }
            // Changing Ego forces flesh out of new Ego's KTM row
            int storedEgo = edWin.getCurrentEgo();
            edWin.hideEgoChange = true;
            edWin.changeEgo(ix.serialNmbr);
            edWin.changeEgo(storedEgo);
            edWin.hideEgoChange = false;
            
            showInfo(ix);
            dirty = true;
        } else {  // ix is already a spouse in fx. This is a deletion request.
            ix.setLocation(lastPersonLoc);
            // If deleted spouse shared a "family adoption" it now becomes a personal one
            Context c = Context.current;
            if (c.specialRelationships != null
                    && c.specialRelationships.get(c.currentChart) != null) {
                ArrayList<Context.SpecRelTriple> famAdoptions = new ArrayList<Context.SpecRelTriple>(),
                        sr = c.specialRelationships.get(c.currentChart);
                for (Context.SpecRelTriple triple : sr) {
                    if (triple.parent == fx) {
                        UserDefinedProperty udp = (UserDefinedProperty)ix.userDefinedProperties.get(triple.udpName);                        
                        ArrayList adoptees = udp.value;
                        Individual kid;
                        if (triple.child instanceof Link) {
                            kid = ((Link)triple.child).personPointedTo;
                        } else {
                            kid = (Individual)triple.child;
                        }
                        if (adoptees.contains(kid)) {
                            famAdoptions.add(triple);
                        }  // Adoptees now has all SpecRels that should become personal                        
                    }
                }
                for (Context.SpecRelTriple triple : famAdoptions) {
                    Context.SpecRelTriple indivAdoption = new Context.SpecRelTriple();
                    indivAdoption.parent = ix;
                    indivAdoption.child = triple.child;
                    indivAdoption.udpName = triple.udpName;
                    sr.add(indivAdoption);
                }
            }
            try {
                fx.deleteSpouse(ix);
                fx.delSpouse(ix);
                removePersonAndRecomputeNodes(ix, fx);
            } catch (KSInternalErrorException ksiee) {
                String msg = ksiee.getMessage(),
                        ttl = "Annulment Attempt Rejected.";
                JOptionPane.showMessageDialog(edWin, msg, ttl, JOptionPane.WARNING_MESSAGE);
                repaint();
                return;
            }
            showInfo(ix);
            dirty = true;
        }
        if (ix.birthFamily != null) {
            ix.birthFamily.computeBirthGrps();
        }
    }

    void addOrDeleteSpouseLink(Link lk, Family fx) {
        //  If we can successfully add/delete ix as a spouse in fx, then we only need to
        //  record/erase that lk is a Link to ix and restore ix's old location. 
        Individual ix = lk.personPointedTo;
        int oldX = ix.location.x, oldY = ix.location.y;
        addOrDeleteSpouse(ix, fx);
        if (fx.isSpouse(ix)) { // must have successfully added
            if (ix.gender.equals("M")) {
                fx.husbandLink = lk;
            }else {
                fx.wifeLink = lk;
            }            
        }else { // must have failed to add, or else deleted
            if (fx.husbandLink == lk) {
                fx.husbandLink = null;
            }else if (fx.wifeLink == lk) {
                fx.wifeLink = null;
            }
        }
        ix.setLocation(new Point(oldX, oldY));
        if (ix.birthFamily != null) {
            ix.birthFamily.computeBirthGrps();
        }
    }

    void removeChild(Individual ix, Family fx) {
        ix.setLocation(lastPersonLoc);
        try {
            fx.deleteChild(ix);
            fx.delSib(ix);
            removePersonAndRecomputeNodes(ix, fx);
        } catch (KSInternalErrorException ksiee) {
            String msg = ksiee.getMessage(),
                    ttl = "Sibling Deletion Attempt Rejected.";
            JOptionPane.showMessageDialog(edWin, msg, ttl, JOptionPane.WARNING_MESSAGE);
            repaint();
            return;
        }
        showInfo(ix);
        dirty = true;
    }
    
    void removeChildLink(Link lk, Family fx) {
        Individual ix = lk.personPointedTo;
        int ixX = ix.location.x, ixY = ix.location.y;
        removeChild(ix, fx);
        if (!fx.isSib(ix)) { // must have successfully removed
            fx.kidLinks.remove(lk);            
        }
        ix.setLocation(ixX, ixY);
    }

    void addChild(Individual ix, Family fx) {
        if (fx.isSpouse(ix)) {
            if (lastPersonLoc.y < fx.location.y) {
                lastPersonLoc.y = fx.location.y + (fx.location.y - lastPersonLoc.y);
            }
            try {
                fx.deleteSpouse(ix);
            } catch (KSInternalErrorException ksiee) {
                String msg = ksiee.getMessage(),
                        ttl = "Annulment Attempt Rejected.";
                JOptionPane.showMessageDialog(edWin, msg, ttl, JOptionPane.WARNING_MESSAGE);
                ix.setLocation(lastPersonLoc);
                repaint();
                return;
            }
            fx.delSpouse(ix);
        }
        ix.setLocation(lastPersonLoc);
        fx.addSib(ix);
        fx.addChild(ix);
        // Changing Ego forces flesh out of new Ego's KTM row
        int storedEgo = edWin.getCurrentEgo();
        edWin.hideEgoChange = true;
        edWin.changeEgo(ix.serialNmbr);
        edWin.changeEgo(storedEgo);
        edWin.hideEgoChange = false;
        //  end of NEW CODE
        showInfo(ix);
        dirty = true;
    }
    
    void addChildLink(Link lk, Family fx) {
        //  If we can successfully add ix as a child in fx, then we only need to
        //  record that lk is a Link to ix and restore ix's old location. 
        Individual ix = lk.personPointedTo;
        int oldX = ix.location.x, oldY = ix.location.y;
        fx.kidLinks.add(lk);
        addChild(ix, fx);
        if (!fx.isSib(ix)) { // must not have successfully added
            fx.kidLinks.remove(lk);           
        }
        ix.setLocation(oldX, oldY);
        lk.location = lastPersonLoc;
    }
    
    Family spouseLinkIn(ArrayList mars, Link lk) {
        // Does the link appear as a spouse in any of these marriages?
        if (mars == null) {
            return null;
        }
        for (Object o : mars) {
            Family fam = (Family)o;
            if (fam.husbandLink == lk || fam.wifeLink == lk) {
                return fam;                
            }
        }
        return null;
    }

    /** Survey ind and all members of fam, and return the person with the
     *  shortest path to Ego. In case of a tie, give first preference to
     *  'regular' relationships (e.g. brother, wife), then to 'half' relations
     *  (e.g. half-sister), and then 'step' relations (e.g. step-mother).
     *  If there is still a tie, prefer ind, then dad, then mom, then eldest kid, etc.
     * 
     * @param ind   person being added to the family
     * @param fam   the family being increased
     * @return      person with the shortest path to Ego.
     */
    static Individual findShortestPath(Individual ind, Family fam) {
        Individual shorty = null;
        // if Ego is present, she has the shortest path.
        // anyone else who has a path to Ego will have miniPreds length > 0
        TreeMap<Integer, ArrayList<Individual>> sorTree =
                new TreeMap<Integer, ArrayList<Individual>>();
        int num;
        ArrayList<Individual> candidates = new ArrayList<Individual>(),
                step, half, regular;
        candidates.add(ind);
        if (fam.husband != null && fam.husband != ind) {
            candidates.add(fam.husband);
        }
        if (fam.wife != null && fam.wife != ind) {
            candidates.add(fam.wife);
        }
        for (Object o : fam.children) {
            if (o != ind) {
                candidates.add((Individual) o);
            }
        }
        for (Individual c : candidates) {
            if (c.serialNmbr == edWin.getCurrentEgo()) {
                return c;
            }
            if (c.node != null && (num = c.node.miniPreds.size()) > 0) {
                post(c, sorTree, num);
            }
        }
        if (sorTree.size() > 0) { // someone had a path to Ego
            candidates = sorTree.get(sorTree.firstKey());
            if (candidates.size() == 1) {
                return candidates.get(0);
            }
            step = new ArrayList<Individual>();
            half = new ArrayList<Individual>();
            regular = new ArrayList<Individual>();
            for (Individual c : candidates) {
                ArrayList<Object> preds = c.node.miniPreds;
                String pred = (String) preds.get(preds.size() - 1);
                if (pred.substring(0, 2).equals("St")) {
                    step.add(c);
                } else if (pred.substring(0, 1).equals("H")) {
                    half.add(c);
                } else {
                    regular.add(c);
                }
            }
            if (regular.size() > 0) {
                shorty = regular.get(0);
            } else if (half.size() > 0) {
                shorty = half.get(0);
            } else {
                shorty = step.get(0);
            }
        }
        return shorty;
    }

    static void post(Individual ind, TreeMap<Integer, ArrayList<Individual>> sorTree, int num) {
        Integer sortNmbr = new Integer(num);
        if (sorTree.get(sortNmbr) == null) {
            sorTree.put(sortNmbr, new ArrayList<Individual>());
        }
        ArrayList<Individual> theList = sorTree.get(sortNmbr);
        theList.add(ind);
    }

    static void makePCString(Node node) {
        node.pcString = "";
        String mini;
        int leftParen;
        for (Object o : node.miniPreds) {
            mini = (String) o;
            leftParen = mini.indexOf("(");
            node.pcString += mini.substring(0, leftParen);
        }
    }


    /** Remove this person from fam, then modify/remove all nodes
     *  in the KinTermMatrix and all dyads in the DyadTMaps that were affected.
     *
     * @param ix   Individual to be removed.
     * @param fam  Family object from serialNum to remove ix.
     */
    void removePersonAndRecomputeNodes(Individual ix, Family fam) {
        if (ix == fam.husband) {
            fam.husband = null;
        } else if (ix == fam.wife) {
            fam.wife = null;
        } else if (fam.children.contains(ix)) {
            fam.children.remove(ix);
        }
        recomputeNodes();
        try {
            if ((Context.current.domTheoryRefExists()
                    && !Context.current.domTheoryRef().issuesForUser.isEmpty())
                    || (Context.current.domTheoryAdrExists()
                    && !Context.current.domTheoryAdr().issuesForUser.isEmpty())) {
                String msg = "The Suggestions from prior learning sessions may\n"
                        + "contain references to " + ix.name + " that are\n"
                        + " no longer valid. If so, you should Get New Suggestions.\n";
                MainPane.displayError(msg, "Potential Problem", JOptionPane.PLAIN_MESSAGE);
            }
        } catch (Exception ex) {
        } // skip it
    }
    
    void recomputeNodes() {
        recomputingDyads = true;
        int savedEgo = edWin.getCurrentEgo();
        edWin.rebuildKTMatrixEtc();
        edWin.changeEgo(savedEgo);
        // re-attach nodes in Ego's row of KTM
        TreeMap<Integer, Node> egoRow = edWin.ktm.getRow(savedEgo);
        Iterator rowIter = egoRow.entrySet().iterator();
        while (rowIter.hasNext()) {
            Map.Entry entry = (Map.Entry) rowIter.next();
            Integer altInt = (Integer) entry.getKey();
            Node nod = (Node) entry.getValue();
            nod.indiv.node = nod;
        }
        recomputingDyads = false;
        
    }

//    /**The nodes in this Ego's row represent paths to Ego that may have been
//     * severed. Make a new row and fill it with nodes computed from scratch.
//     *
//     * @param rowNum    number of the ego for this row
//     * @param oldRow   the row to be recomputed
//     */
//    void recomputeNodes(Integer rowNum, TreeMap<Integer, Node> oldRow) {
//        TreeMap<Integer, Node> newRow = new TreeMap<Integer, Node>();
//        Iterator nodIter = oldRow.entrySet().iterator();
//        while (nodIter.hasNext()) {
//            Map.Entry entry = (Map.Entry) nodIter.next();
//            Integer altInt = (Integer) entry.getKey();
//            Node n = (Node) entry.getValue();
//            Integer[] pair = {rowNum, altInt};
//            //de-index the node. It will be re-indexed by createNode().
//            Context.current.kti.removePair(n.pcString, pair);
//        }
//        for (Individual i : Context.current.individualCensus) {
//            i.seenB4 = 0;
//            i.node = null;  //  clean out node slots
//        }
//        Node selfNode = Node.makeSelfNode(distinctAdrTerms);
//        Individual egoPerson = Context.current.individualCensus.get(rowNum);
//        selfNode.indiv = egoPerson;
//        newRow.put(rowNum, selfNode);
//        egoPerson.node = selfNode;
//        edWin.ktm.replaceRow(rowNum, newRow);
//        edWin.setCurrentEgo(rowNum);
//        KSQ bfq = new KSQ();
//        bfq.enQ(egoPerson);
//        SIL_Edit.propagateNodes(bfq, newRow, null);
//        // TODO Must re-index the (revised) nodes on the KinTypeIndex
//        nodIter = oldRow.entrySet().iterator();
//        while (nodIter.hasNext()) {
//            Map.Entry entry = (Map.Entry) nodIter.next();
//            Integer altInt = (Integer) entry.getKey();
//            if (altInt.intValue() == rowNum.intValue()) {
//                continue;  // skip self-node
//            }
//            Node oldNode = (Node) entry.getValue();
//            Node newNode = newRow.get(altInt);
//            if (oldNode.sameMiniPreds(newNode)) {
//                newNode.addKinTermsFrom(oldNode);
//            } else {  // path to Ego was severed. Kill old dyads.
//                Context.current.deleteDyads(oldNode, rowNum);
//                Node oldReciprocal = edWin.ktm.getCell(altInt, rowNum);
//                if (oldReciprocal != null) {
//                    Context.current.deleteDyads(oldReciprocal, altInt);
//                    Integer[] pair = {altInt, rowNum};
//                    Context.current.kti.removePair(oldReciprocal.pcString, pair);
//                    edWin.ktm.removeCell(altInt, rowNum);
//                }
//            }
//        }
//    }
//    
    
    XFile sFile = null;  // Used for KAES-format files
    File saveFile = null; // Used for SILKin files

    public void saveAsFile() {
        Context currCtxt = Library.contextUnderConstruction;
        if (currCtxt == null) {
            return;
        }
        //  Set up file chooser with defaults
        if (Library.fc == null) {
            Library.fc = new JFileChooser();
        }
        JFileChooser fc = Library.fc;
        fc.setFileSelectionMode(JFileChooser.FILES_AND_DIRECTORIES);
        fc.setDialogTitle("Choose a Directory and FileName");
        fc.setApproveButtonText("Save File As");
        String filePath = (currCtxt.editDirectory != null
                ? currCtxt.editDirectory + "/" : "");
        filePath += currCtxt.languageName + ".silk";
        fc.setSelectedFile(new File(filePath));
        //  Now get user's desired location
        int returnVal = fc.showSaveDialog(edWin);
        if (returnVal == JFileChooser.APPROVE_OPTION) {
            saveFile = fc.getSelectedFile();
            String pathName = saveFile.getPath(),
                    extension = "";
            int dot = pathName.lastIndexOf(".");
            if (dot > -1) {
                extension = pathName.substring(dot);
            }
            if (!extension.equalsIgnoreCase(".silk")) {
                pathName += ".silk";
                saveFile = new File(pathName);
            }
            saveSILKFile();
        }
    }

    public void saveSILKFile() {
        // if (dirty == false) return;
        if (saveFile == null) {
            saveAsFile();
            return;
        }
        try {
            edWin.storeInfo();
        } catch (Exception pe) {
                displayError(pe);
                return;
        }
        Context currCtxt = Library.contextUnderConstruction;
        Individual currEgo = currCtxt.individualCensus.get(edWin.getCurrentEgo());
        currCtxt.currentEgo = currEgo;
        checkNames();
        currCtxt.editDirectory = saveFile.getParent();
        Library.editDirectory = currCtxt.editDirectory;
        try {
            currCtxt.writeSILKFile(saveFile, editParameters(currCtxt));
            Library.saveUserContext();
        } catch (FileNotFoundException fnf) {
            String msg = "File system error while writing SILK & .ctxt files: " + fnf;
            System.err.println(msg);
            MainPane.displayError(msg, "Internal Problem", JOptionPane.PLAIN_MESSAGE);
        } catch (Exception kse) {
            String msg = "Error writing SILK & .ctxt files: " + kse;
            System.err.println(msg);
            MainPane.displayError(msg, "Internal Problem", JOptionPane.PLAIN_MESSAGE);
        }
        edWin.edWin.setTitle("Editing: " + saveFile.getName() + ".");
        dirty = false;
    }

    public String editParameters(Context ctxt) {
        String params = "";
        params += "  <origin x=\"" + originX + "\" y=\"" + originY + "\"/>" + EOL;
        params += "  <area W=\"" + area.width + "\" H=\"" + area.height + "\"/>" + EOL;
        params += "  <infoPerson>" + whichFolk + "</infoPerson>" + EOL;
        params += "  <infoMarriage>" + whichKnot + "</infoMarriage>" + EOL;
        params += "  <label>" + nameLabel + "</label>" + EOL;
        params += "  <ktlabel>" + kinTermLabel + "</ktlabel>" + EOL + "  <editable>";
        params += (editable ? "true" : "false") + "</editable>" + EOL + "  <distinctAdrTerms>";
        params += (distinctAdrTerms ? "true" : "false") + "</distinctAdrTerms>" + EOL;
        params += "  <maxNoise>" + ctxt.maxNoiseP + "</maxNoise>" + EOL;
        params += "  <ignorable>" + ctxt.ignorableP + "</ignorable>" + EOL;
        params += "  <doBaseCBs value=\"" + ctxt.doBaseCBs + "\"/>" + EOL;
        params += "  <doInduction value=\"" + ctxt.doInduction + "\"/>" + EOL;
        params += "  <surnameCapture value=\"" +   ctxt.surnameNormallyCaptured + "\"/>" + EOL;
        params += "  <birthdateCapture value=\"" +   ctxt.birthDateNormallyCaptured + "\"/>";
        if (PrintChart.printFont != null) {
            String logicalName = PrintChart.printFont.getName();
            int size = PrintChart.printFont.getSize();
            params += EOL + "  <printFont name=\"" + logicalName + "\" size=\"" + size + "\"/>";            
        }
        if (PrintChart.pgFormat != null) {
            int orient = PrintChart.pgFormat.getOrientation();
            params += EOL + "  <printOrientation value=\"" + orient + "\"/>";
        }
        return params;
    }

    public void saveKAESFile() {
        // if (dirty == false) return;
        if (sFile == null) {
            saveAsFile();
            return;
        }
        PrintFormat pf = new PrintFormat(true);
        sFile.Open(XFile.WRITE);
        pf.printf("<?xml version=\"1.0\"?>" + EOL);
        pf.printf("<!DOCTYPE kindata>" + EOL + EOL);
        pf.printf("<!--  Kinship Editor Save File - Do not edit by hand!  -->" + EOL + EOL);
        pf.printf("<kindata>" + EOL);
        // write Person and Marriage data
        Person.personsToXML(pf);
        pf.printf(EOL);
        Marriage.unionsToXML(pf);
        pf.printf(EOL);
        // Write parameter data
        pf.printf("<parameters>" + EOL);
        pf.printf("  <origin><x>%d</x><y>%d</y></origin>" + EOL, originX);
        pf.printF(originY);
        pf.printf("  <ego>%d</ego>" + EOL, whichFolk + 1);
        pf.printf("  <marriage>%d</marriage>" + EOL, whichKnot + 1);
        pf.printf("  <label>%d</label>" + EOL, nameLabel);
        pf.printf("  <beginyear>%s</beginyear>" + EOL, edWin.getFPanel().famStartYear().getText());
        pf.printf("  <endyear>%s</endyear>" + EOL, edWin.getFPanel().famEndYear().getText());
        if (editable) {
            pf.printf("  <editable>true</editable>" + EOL);
        } else {
            pf.printf("  <editable>false</editable>" + EOL);
        }
        pf.printf("</parameters>" + EOL);
        pf.printf("</kindata>" + EOL);
        sFile.WriteBytes(pf.toString());
        sFile.Close();
        dirty = false;
    }

    void checkNames() {
        for (Individual i : Library.contextUnderConstruction.individualCensus) {
            if (i.name.indexOf("Person ") > -1) {
                i.surname = i.name.substring(7);
                i.firstNames = "Person";
            }
        }  //  end of loop thru individuals
    }  //  end of method checkNames

    public synchronized void deleteAll() {
        if (dirty) {
            doWantToSave();
        }
        whichFolk = -1;
        whichKnot = -1;
        lastFolk = -1;
        lastKnot = -1;
        dirty = false;
        edWin.getPPanel().dirty = false;
        edWin.getFPanel().dirty = false;
        clearInfo();
        originX = 0;
        originY = 0;
        Context.current = null;
        Library.contextUnderConstruction = null;
        MainPane.curr_CUC_Editor = null;
        saveFile = null;
        edWin.getPPanel().clearEgoBox();
        edWin.infoPerson = null;
        edWin.infoMarriage = null;
        edWin.ktm = null;
        edWin.suggestionsRef = null;
        edWin.suggestionsAdr = null;
        repaint();
    }

    boolean doWantToSave() {
        dirty = false;
        String msg = "Do you want to save changes to the current chart?",
                ttl = "Save or Changes Will Be Lost";
        int choice = JOptionPane.showConfirmDialog(edWin, msg, ttl, JOptionPane.YES_NO_OPTION);
        if (choice == JOptionPane.NO_OPTION) {
            saveFile = null;
            return false;
        } else {
            saveSILKFile();
            return true;
        }
    }

    public void exportKAESFile() {
        sFile = new XFile();
        if (sFile.Choose(XFile.WRITE)) {
            saveKAESFile();
        } else {
            return;
        }
    }

    public boolean loadFile(String fname) { // for XML version
        if (dirty) {
            if (!doWantToSave()) {
                repaint();
                return false;
            } // cancelled
        }
        sFile = new XFile(fname);
        sFile.Delimiter = 32;
        //if (sFile.Choose(XFile.READ))
        if (!sFile.Open(XFile.READ)) {
            return false; // Cancelled
        }
        return loadFile(sFile);
    }

    public boolean loadFile() { // for XML version
        if (dirty) {
            if (!doWantToSave()) {
                repaint();
                return false;
            } // cancelled
        }

        sFile = new XFile();
        sFile.Delimiter = 32;

        if (sFile.Choose(XFile.READ)) {
            sFile.Open(XFile.READ);
        } else {
            return false; // Cancelled
        }
        return loadFile(sFile);
    }

    public boolean loadFile(XFile sFile) { // for XML version
        String aLine;
        String[][] ntag;
        String errMess = "None";
        loading = true;
        dirty = false;
        if (personMenu.isVisible()) {
            personMenu.setVisible(false);
        }

        while ((aLine = sFile.ReadLine()) != null) {
            if (aLine.trim().toUpperCase().startsWith("<!DOCTYPE KINDATA SYSTEM \"Kinedit.dtd\"")) {
                break;
            } else if (aLine.trim().toUpperCase().startsWith("<?XML VERSION=\"1.0\"?>")) {
                if ((aLine = sFile.ReadLine()) != null) {
                    if (aLine.trim().toUpperCase().startsWith("<!DOCTYPE KINDATA>")) {
                        break;
                    }
                }
            }
        }

        if (aLine == null) {
            errMess = "Probably not a KinEditor File: ";
            System.out.println(errMess);
            loading = false;
            return false;
        }
        deleteAll();
        setOrigin(0, 0);
        Library.contextUnderConstruction = new Context();  // Context constructor makes Context.current
        Person.folks = Context.current.individualCensus;
        Marriage.knots = Context.current.familyCensus;

        if (!sFile.readUntilTag("people")) {
            errMess = "Couldn't find people... Probably not a KinEditor File: ";
            System.out.println(errMess);
            loading = false;
            sFile.Close();
            return false;
        }

        if (!Person.readPeople(sFile)) {
            sFile.Close();
            return loading = false;
        }

        ntag = sFile.readTag();
        if (!ntag[0][0].equalsIgnoreCase("unions")) {
            errMess = "Found People but no Unions: ";
            //	Marriage.knotIndex = -1;
            //	sFile.Close();
            //	loading=false;
            //	return true; // let it go
        } else {
            Marriage.readUnions(sFile); // should check for error?
        }
        ntag = sFile.readTag();
        if (!ntag[0][0].equalsIgnoreCase("parameters")) {
            sFile.readUntilTag("parameters");
        }
        editable = true;
        originX = new Integer(sFile.readTagValue("x")).intValue();
        originY = new Integer(sFile.readTagValue("y")).intValue();
        whichFolk = new Integer(sFile.readTagValue("ego")).intValue() - 1;
        whichKnot = new Integer(sFile.readTagValue("marriage")).intValue() - 1;
        nameLabel = new Integer(sFile.readTagValue("label")).intValue();

        if (nameLabel > WHOLE) {
            nameLabel = WHOLE;
        }
        Person.nameLabel = nameLabel;

        if (sFile.readTagValue("editable").equalsIgnoreCase("true")) {
            editable = true;
        } else {
            editable = false;
        }
        edWin.setEditable(editable);
        int ox = originX;
        int oy = originY;
        sFile.Close();
        //  We read in some people, so update egoChoiceBox
        edWin.getPPanel().rebuildEgoBox();

        loading = false;
        originX = 0;
        originY = 0;
        repaint();
        return true;
    }

    public void loadSILKFile() {  // Loads integrated record for SIL_Edit
        loading = true;
        Context ctxt = null;
        if (Library.fc == null) {
            Library.fc = new JFileChooser();
        }
        JFileChooser fc = Library.fc;
        fc.setFileSelectionMode(JFileChooser.FILES_AND_DIRECTORIES);
        fc.setDialogTitle("Choose a .silk File to Load");
        fc.setApproveButtonText("Load");
        String[] extensions = {"silk"};
        fc.setFileFilter(new FileNameExtensionFilter(null, extensions));
        File initialDir = null;
        if (Library.editDirectory.length() > 6) {
            initialDir = new File(Library.editDirectory);
        }
        fc.setCurrentDirectory(initialDir);
        int returnVal = fc.showOpenDialog(edWin);
        if (returnVal == JFileChooser.APPROVE_OPTION) {
            deleteAll();
            setOrigin(0, 0);
            saveFile = fc.getSelectedFile();
            try {
                Library.loadSILKFile(saveFile);  // makes a new Context.current from SILK file
                Library.userDirectory = fc.getCurrentDirectory().getName();
                ctxt = Context.current;
                edWin.ktm = ctxt.ktm;
                DomainTheory dt = ctxt.domTheoryRef();
                if (!dt.theory.containsKey("step_brother")) {
                    Linus macroLineServer = new Linus(Library.libraryDirectory + "Standard_Macros");
                    Tokenizer tok = new Tokenizer(Library.getDFA(), macroLineServer);
                    ParserDomainTheory parzer = new ParserDomainTheory(tok, tok);
                    parzer.parseStandardMacros(dt);
                }
                if (ctxt.kinTypeOrder == null) {
                    ctxt.loadDefaultKinTypeStuff();
                }
                ctxt.rebuildLinkMethods();
                edWin.suggestionsRef = dt.issuesForUser;
                if (ctxt.domTheoryAdrExists()) {
                    edWin.suggestionsAdr = ctxt.domTheoryAdr().issuesForUser;
                }
                int egoNum = ctxt.currentEgo.serialNmbr;
                edWin.setCurrentEgo(egoNum);
                originX = ctxt.origin.x;
                originY = ctxt.origin.y;
                area = ctxt.area;
                nameLabel = ctxt.labelChoice;
                kinTermLabel = ctxt.ktLabelChoice;
                edWin.synchronizeLabelParams(nameLabel, kinTermLabel);
                editable = ctxt.editable;
                edWin.getPPanel().setDistinctAdrTerms(ctxt.distinctAdrTerms);
                edWin.setSnap(Library.snapToGrid);
                whichFolk = ctxt.infoPerson;
                whichKnot = ctxt.infoMarriage;
                boolean empty = ctxt.infoPerson == -1;
                edWin.infoPerson = (empty ? null : ctxt.individualCensus.get(ctxt.infoPerson));
                empty = ctxt.infoMarriage == -1;
                edWin.infoMarriage = (empty ? null : ctxt.familyCensus.get(ctxt.infoMarriage));
                if (edWin.ktm.getRow(egoNum) != null) {
                    Iterator nodeIter = edWin.ktm.getRow(egoNum).values().iterator();
                    while (nodeIter.hasNext()) {
                        Node n = (Node) nodeIter.next();
                        if (n.indiv != null) {
                            n.indiv.node = n;
                        }
                    }
                }
                Library.currDataAuthor = getCurrentUser(edWin, "Register Current User");
                edWin.setActOnSuggsEnabled(ctxt.hasIssues());
            } catch (Exception e) {
                String msg = "While reading " + saveFile.getName() + "\n" + e;
                StackTraceElement[] bad = e.getStackTrace();
                for (int i=0; i < 5; i++) {
                    msg += "\n" + bad[i];
                }
                System.err.println(msg);
                MainPane.displayError(msg, "Internal Problem", JOptionPane.WARNING_MESSAGE);
            }
            Person.folks = ctxt.individualCensus;
            Marriage.knots = ctxt.familyCensus;
            if (ctxt.chartDescriptions.isEmpty()) {
                ctxt.chartDescriptions.add("Default Chart");
            }
            edWin.rebuildChartCombo();
            String frameTitle = fc.getName(saveFile);
            edWin.setTitle("Editing: " + frameTitle);
            boolean gedSetting = (ctxt.gedcomHeaderItems != null);
            edWin.displayGEDCOM.setVisible(gedSetting);
            ctxt.displayGEDCOM = gedSetting;
            //  We read in some people, so update egoChoiceBox
            edWin.getPPanel().rebuildEgoBox();
            //  May have some UDPs, so update udpComboBox
            edWin.getPPanel().initUDPCombo();
            checkSizeOfChart(ctxt);
            edWin.getPPanel().dirty = false;
            edWin.getFPanel().dirty = false;
            loading = false;
            resizeAndRepaint();
        }
    }
    
    void resizeAndRepaint() {
        setPreferredSize(area);
        revalidate();
        repaint();
    }
    
    void checkSizeOfChart(Context ctxt) {
    //  Set size of Chart to ideal for this diagram
        int minX = 1000000, minY = 1000000, maxX = -1, 
            maxY = -1, sz = 20;
        for (Individual ind : ctxt.individualCensus) {
            if (!ind.deleted && ind.homeChart.equals(ctxt.currentChart)) {
                sz = ind.getSize();
//                System.out.println("I-" + ind.serialNmbr + "  " + ind.location);
                minX = Math.min(minX, ind.location.x);
                minY = Math.min(minY, ind.location.y);
                maxX = Math.max(maxX, ind.location.x + sz);
                maxY = Math.max(maxY, ind.location.y + sz);                
            }
        }
        for (Family f : ctxt.familyCensus) {
            if (!f.deleted && f.homeChart.equals(ctxt.currentChart)) {
                sz = f.getSize();
//                System.out.println("F-" + f.serialNmbr + "  " + f.location);
                minX = Math.min(minX, f.location.x);
                minY = Math.min(minY, f.location.y);
                maxX = Math.max(maxX, f.location.x + sz);
                maxY = Math.max(maxY, f.location.y + sz); 
            }
        }
        for (Link lk : ctxt.linkCensus) {
            if (!lk.deleted && lk.homeChart.equals(ctxt.currentChart)) {
                sz = lk.getSize();
//                System.out.println("L-" + lk.serialNmbr + "  " + lk.location);
                minX = Math.min(minX, lk.location.x);
                minY = Math.min(minY, lk.location.y);
                maxX = Math.max(maxX, lk.location.x + sz);
                maxY = Math.max(maxY, lk.location.y + sz); 
            }
        }
        Point idealTopLeft = gridSnap(new Point(2 * sz, 2 * sz));
        int adjustX = idealTopLeft.x - minX,
            adjustY = idealTopLeft.y - minY,
            idealWidth = maxX - minX + (3 * idealTopLeft.x),
            idealHeight = maxY - minY + (3 * idealTopLeft.y);
        
        if (adjustX != 0 || adjustY != 0) {
            for (Individual ind : ctxt.individualCensus) {
                if (ind.homeChart.equals(ctxt.currentChart)) {
                    ind.adjustLocation(adjustX, adjustY);
//                System.out.println("I-" + ind.serialNmbr + "  " + ind.location);
                }
            }
            for (Link lk : ctxt.linkCensus) {
                if (lk.homeChart.equals(ctxt.currentChart)) {
                    lk.adjustLocation(adjustX, adjustY);
//                System.out.println("L-" + lk.serialNmbr + "  " + lk.location);
                }
            }
            for (Family f : ctxt.familyCensus) {
                if (f.homeChart.equals(ctxt.currentChart)) {
                    f.adjustLocation(adjustX, adjustY);
//                System.out.println("F-" + f.serialNmbr + "  " + f.location);
                    for (Marriage.BirthGroup bg : f.birthGrps) {
                        bg.topPtX += adjustX;
                    }
                }
            }
        }
        area.setSize(idealWidth, idealHeight);
    }

    String getCurrentUser(JFrame parentFrame, String paneTitle) throws KSInternalErrorException {
        int size = Context.current.dataAuthors.size(),
                repeats = -1;
        String[] authors = new String[size + 1];
        for (int i = 0; i < size; i++) {
            authors[i] = Context.current.dataAuthors.get(i);
        }
        authors[size] = "Add a New User";
        String author = (String) JOptionPane.showInputDialog(
                parentFrame, "Find yourself in the list below,\n"
                + "or choose 'Add New User'",
                paneTitle,
                JOptionPane.PLAIN_MESSAGE, null,
                authors, authors[0]);
        if (author == null) {
            author = System.getProperty("user.name");
            String msg = "Will register current data author as '" + author + "'.";
            JOptionPane.showMessageDialog(parentFrame, msg);
            if (!Context.current.dataAuthors.contains(author)) {
                Context.current.dataAuthors.add(author);
            }
        }
        while (author.equals("Add a New User")) {
            repeats++;
            String rep = (repeats == 0 ? "\n" : "\n -- CAREFULLY --\n"),
                    msg = "Please enter your name" + rep + "as it should appear in the User List.",
                    title = author;
            author = JOptionPane.showInputDialog(parentFrame,
                    msg, title, JOptionPane.PLAIN_MESSAGE);
            while (author == null || author.isEmpty() || author.length() < 3) {
                String badAuth = (author == null || author.isEmpty() ? "That " : "'" + author + "' ");
                msg = badAuth + "is not a valid entry. Enter at least\n 3 non-blank characters (e.g. your initials).";
                author = JOptionPane.showInputDialog(parentFrame,
                        msg, title, JOptionPane.PLAIN_MESSAGE);
                if (repeats++ > 2 && (author == null || author.isEmpty() || author.length() < 3)) {
                    author = System.getProperty("user.name");
                    msg = "Will register current data author as '" + author + "'.";
                    JOptionPane.showMessageDialog(parentFrame, msg);
                }
            }
            Object[] options = {"Use '" + author + "'", "Try Again"};
            msg = "Display your name as '" + author + "'?";
            int ch = JOptionPane.showOptionDialog(parentFrame, msg,
                    "Just Making Sure ...",
                    JOptionPane.YES_NO_OPTION,
                    JOptionPane.QUESTION_MESSAGE,
                    null,
                    options,
                    options[0]);
            if (ch == JOptionPane.NO_OPTION) {
                author = "Add a New User";
            } else if (ch == JOptionPane.CANCEL_OPTION) {
                author = System.getProperty("user.name");
                msg = "Will register current data author as '" + author + "'.";
                JOptionPane.showMessageDialog(parentFrame, msg);
                if (!Context.current.dataAuthors.contains(author)) {
                    Context.current.dataAuthors.add(author);
                }
            } else {
                if (!Context.current.dataAuthors.contains(author)) {
                    Context.current.dataAuthors.add(author);
                }
                return author;
            }
        }
        return author;
    }
}
