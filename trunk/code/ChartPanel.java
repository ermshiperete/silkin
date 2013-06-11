
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

    static SIL_Edit parent;
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

    public void init(SIL_Edit k) {
        parent = k;
        setLayout(null);
        personMenu = new java.awt.List(4, false);
        personMenu.add("Female");
        personMenu.add("Male");
        personMenu.add("Union");
        personMenu.add("Link to Person");
        personMenu.setVisible(false);
        personMenu.setSize(100, 72);
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

//	public void doFixEgo(int serialNum) {
//		if (whichFolk == -1) {
//			whichFolk = serialNum;
//			return;
//		}
//		// do some alt action
//	}  //  Never used
    
    void KinshipEditor_MouseDown(MouseEvent event) {
        int mouseX = event.getX(), mouseY = event.getY();
        int theInd = Person.findPerson(mouseX, mouseY);
        int theLink = Link.findLink(mouseX, mouseY);
        int theFam = findMarriage(mouseX, mouseY);

        if ((theInd + theLink + theFam) > -3) { // SOMETHING was clicked
            if (personMenu.isShowing()) {
                personMenu.setVisible(false);
            }
            try {
                if (editable) {
                    parent.storeInfo();
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
            parent.clearInfo();
        } catch (Exception pe) {
            displayError(pe);
            return;
        }  // theoretically can't happen
        if (personMenu.isShowing()) {
            personMenu.setVisible(false);
            lastLoc = new Point(-1, -1);
            try {
                parent.storeInfo();
            } catch (Exception pe) {
                displayError(pe);
                return;
            }
            parent.getPPanel().displayClues();
        } else if (editable) {
            try {
                parent.storeInfo();
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

    void getProjectName() {  // Called when 1st person/union created
        String msg = "Enter project name (Normal = language name).\nMinimum 2 characters.",
                title = "Name This Project",
                ctxtName = null;
        boolean keepLooping = true;
        while (keepLooping) {
            ctxtName = JOptionPane.showInputDialog(parent, msg, title, JOptionPane.QUESTION_MESSAGE);
            if (ctxtName != null && ctxtName.trim().length() > 1
                    && Library.validateFileName(ctxtName, false)) {
                keepLooping = false;
            } else if (ctxtName == null) {
                String msg2 = "You did not provide a name, so SILKin\nwill use the name 'Temp'.";
                Object[] options = {"Use 'Temp'", "Ooops! Ask Me Again."};
                int confirm = JOptionPane.showOptionDialog(parent, msg2, title,
                        JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE, null,
                        options, options[0]);
                if (confirm == JOptionPane.YES_OPTION) {
                    ctxtName = "Temp";
                    keepLooping = false;
                }
            } else {
                String msg3 = "Your project name must have 2 or more characters.";
                msg3 += "\nUse letters, dashes, numbers -- but NO spaces.";
                JOptionPane.showMessageDialog(parent, msg3, "Try Again", JOptionPane.PLAIN_MESSAGE);
            }
        }
        msg = "Name of data author?";
        String auth = JOptionPane.showInputDialog(parent, msg),
                createDate = UDate.today();
        Library.currDataAuthor = auth;
        DomainTheory tempDT;
        try {
            Linus macroLineServer = new Linus(Library.libraryDirectory + "Standard_Macros");
            Parser parzer = new Parser(new Tokenizer(Library.getDFA(), macroLineServer));
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
        parent.ktm = Context.current.ktm;
        Context.current.loadDefaultLinkStuff();
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
                parent.getPPanel().addToEgoChoices(newPerson);
                break;
            case 1: // male
                newPerson = new Individual(Person.mal, new Point(lastLoc.x, lastLoc.y));
                newPerson.myId = newPerson.serialNmbr + 1;
                newPerson.homeChart = Context.current.currentChart;
                parent.getPPanel().addToEgoChoices(newPerson);
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
                    newName = (ind.deleted ? "deleted" : ind.name + " <" + ind.serialNmbr + ">");
                    people[index++] = newName;
                }
                String person = (String) JOptionPane.showInputDialog(
                        parent, "Choose the Person", "Link to An Existing Person",
                        JOptionPane.PLAIN_MESSAGE, null, people, people[0]);
                if (person == null) {
                    return;
                }
                if(person.startsWith("deleted")) {
                    JOptionPane.showConfirmDialog(parent,
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
        }
        if (newPerson != null) {
            // Attach the standard 'self' node and store it in the KTM
            newPerson.node = Node.makeSelfNode(distinctAdrTerms);
            newPerson.node.indiv = newPerson;
            int nmbr = newPerson.serialNmbr;
            parent.ktm.addNode(nmbr, nmbr, newPerson.node);
            // Unless newPerson is currentEgo, erase the node from her Person
            if (newPerson.serialNmbr != parent.getCurrentEgo()) {
                newPerson.node = null;
            }
            delayedAreaCk(newPerson);
            showInfo(newPerson);
        } else if (newMar != null) {
            newMar.homeChart = Context.current.currentChart;
            delayedAreaCk(newMar);
            showInfo(newMar);
        } else if (newLink != null) {
            newLink.homeChart = Context.current.currentChart;
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
        if (Marriage.knots == null) {
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
    
    public int[] chartSize() {
        int[] results = new int[2];
        int minX = 1000000, minY = 1000000, maxX = -1, maxY = -1;
        int extraX = Library.gridX, extraY = Library.gridY;
        String currChart = Context.current.currentChart;
        for (Family f : Context.current.familyCensus) {
            if (!f.deleted && f.homeChart.equals(currChart)) {
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
            if (!ind.deleted && ind.homeChart.equals(currChart)) {
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
            if (!lk.deleted && lk.homeChart.equals(currChart)) {
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
            results[0] = maxX - minX;
            results[1] = maxY - minY;
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
        int oldFolk = whichFolk;
        ArrayList<Integer> path = new ArrayList<Integer>();
        try {
            if (whichFolk > -1) {
                path = Context.current.ktm.getPath(parent.getCurrentEgo(), whichFolk);
            } else if (whichLink > -1) {
                int ppt = Context.current.linkCensus.get(whichLink).personPointedTo.serialNmbr;
                path = Context.current.ktm.getPath(parent.getCurrentEgo(), ppt);
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
                if (p.serialNmbr == parent.getCurrentEgo()) {
                    lk.drawSymbol(g, myRect, Color.red);
                } else if (lk.serialNmbr == whichLink) { // clicked on Link
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
                } else if (p.serialNmbr == parent.getCurrentEgo()) {
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
    }  //  end of method paint0
    
    public void setAlter(int serial) {
        whichFolk = serial;
        parent.infoPerson = Context.current.individualCensus.get(serial);
        repaint();
    }

    public void showInfo(Individual p) {
        if (!loading) {
            parent.showInfo(p);
        }
    }

    public void showInfo(Family f) {
        if (!loading) {
            parent.showInfo(f);
        }
    }

    public void clearInfo() {
        if (!loading) {
            try {
                parent.clearInfo();
            } catch (Exception e) {
                displayError(e);
                return;
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
                Point newLoc = m.location;
                newLoc = gridSnap(newLoc);
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
            parent.changeEgo(whichFolk);
            parent.getPPanel().resetEgoBox(parent.getCurrentEgo());
            whichFolk = priorAlter;
            repaint();
            return;
        }
        if (altDn && whichLink > -1) { // Chose New Ego
            Individual ind = Context.current.linkCensus.get(whichLink).personPointedTo;
            parent.changeEgo(ind.serialNmbr);
            parent.getPPanel().resetEgoBox(parent.getCurrentEgo());
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
                            JOptionPane.showMessageDialog(parent, msg, ttl, JOptionPane.WARNING_MESSAGE);
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
                            JOptionPane.showMessageDialog(parent, msg, ttl, JOptionPane.WARNING_MESSAGE);
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
                deleteFamily(fam);
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
            } else {
                whichLink = -1;
            }
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
//        Don't think I need this test -- links to families will be cuaght below.
//        if (ind.links != null && !ind.links.isEmpty()) {
//            String title = ind.name + " Has Links.", msg = "",
//                    msg2 = "Deleting this person automatically deletes all their links on all charts.";
//            if (!ind.marriages.isEmpty() || ind.birthFamily != null) {
//                msg += "\nAt least one link was created to show a relationship. ";
//                msg += "You must disconnect\nany links from families (break the relationship) ";
//                msg += "before you delete this person.";
//            }
//            JOptionPane.showMessageDialog(parent, msg2 + msg, title, JOptionPane.PLAIN_MESSAGE);
//            throw new KinshipSystemException("");
//        }
        if (Context.current.indSerNumGen > 1
                && (ind.node != null || ind.birthFamily != null || ind.marriages.size() > 0)) {
            String msg = "", title = "Cannot Delete " + ind.name;
            if (serialNmbr == parent.getCurrentEgo()) {
                msg = "Cannot delete Ego. Must first choose a different Ego.";
            } else if (ind.birthFamily != null) {
                msg = "Cannot delete child while in family. First disconnect them, then delete.";
            } else if (ind.marriages.size() > 0) {
                msg = "Cannot delete spouse while married. First disconnect them, then delete.";
            }
            JOptionPane.showMessageDialog(parent, msg, title, JOptionPane.WARNING_MESSAGE);
            throw new KinshipSystemException("");
        }
        ind.delPerson();
        try {
            ind.delete();
        } catch (KSInternalErrorException k) {
        }  //  deleted persons may be messed up
        if (serialNmbr == Context.current.indSerNumGen - 1 //  Delete last person made
                && serialNmbr != parent.getCurrentEgo()) {   //  if they are not Ego
            Person.folks.remove(--Context.current.indSerNumGen);
            parent.getPPanel().rebuildEgoBox();
        } else {
            parent.getPPanel().updateEgoNames(ind);
            Person.folks.get(whichFolk).location = new Point(-100, -100);
        }
        Context.current.ktm.deletePerson(ind);
        //  Because we do not allow deletion of persons who are married or have a birth family,
        //  no recomputing of nodes is needed. Just delete this guy's row and column in the KTM
        //  and any associated dyads.                
    }
    
    void deleteLink(Link lk) throws KinshipSystemException {
        if (!lk.deleted) {
            Individual ind = lk.personPointedTo;
            boolean linkIsKid = ind.birthFamily != null && ind.birthFamily.kidLinks.contains(lk);
            boolean linkIsSpouse = (spouseLinkIn(ind.marriages, lk)) != null;
            if (Context.current.indSerNumGen > 1 && (linkIsKid || linkIsSpouse)) {
                String msg = "", title = "Cannot Delete " + lk.personPointedTo.name;
                if (linkIsKid) {
                    msg = "Cannot delete child while in family. First disconnect them, then delete.";
                } else if (linkIsSpouse) {
                    msg = "Cannot delete spouse while married. First disconnect them, then delete.";
                }
                JOptionPane.showMessageDialog(parent, msg, title, JOptionPane.WARNING_MESSAGE);
                throw new KinshipSystemException("");
            }
            Link.delete(lk);
            lk.personPointedTo.links.remove(lk);
        }
    }

    void deleteFamily(Family fam) {
        fam.delete();
        fam.delMarriage();
        if (fam.husbandLink != null) {
            fam.husbandLink.deleted = true;
            fam.husbandLink.homeChart = "deleted";
            fam.husbandLink = null;
        }
        removePersonAndRecomputeNodes(fam.husband, fam);
        if (fam.wifeLink != null) {
            fam.wifeLink.deleted = true;
            fam.wifeLink.homeChart = "deleted";
            fam.wifeLink = null;
        }
        removePersonAndRecomputeNodes(fam.wife, fam);
        while (!fam.children.isEmpty()) {
            Individual kid = (Individual)fam.children.get(0);
            removePersonAndRecomputeNodes(kid, fam);
        }
        for (Link lk : fam.kidLinks) {
            lk.deleted = true;
            lk.homeChart = "deleted";
        }
        fam.location = new Point(-100, -100);
    }
    
    void addOrDeleteSpouse(Individual ix, Family fx) {
        if (!fx.isSpouse(ix)) {
            String marriageLicense = fx.eligibleSpouse(ix);  //  'OK' or reason for rejecting marriage, or null
            if (marriageLicense.equals("gay")) {
                String msg = "Cannot have same-sex marriages.",
                        ttl = "Marriage Attempt Rejected.";
                JOptionPane.showMessageDialog(parent, msg, ttl, JOptionPane.WARNING_MESSAGE);
                ix.setLocation(lastPersonLoc);
                repaint();
                return;
            } else if (marriageLicense.equals("bigamy")) {
                String msg = "Only 2 persons allowed in a marriage.",
                        ttl = "Marriage Attempt Rejected.";
                JOptionPane.showMessageDialog(parent, msg, ttl, JOptionPane.WARNING_MESSAGE);
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
                    JOptionPane.showMessageDialog(parent, msg, ttl, JOptionPane.WARNING_MESSAGE);
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
                JOptionPane.showMessageDialog(parent, msg, ttl, JOptionPane.WARNING_MESSAGE);
                repaint();
                return;
            }
            //  NEW CODE  -- Changing Ego forces flesh out of new Ego's KTM row
            int storedEgo = parent.getCurrentEgo();
            parent.changeEgo(ix.serialNmbr);
            parent.changeEgo(storedEgo);
            //  end of NEW CODE

            showInfo(ix);
            dirty = true;
        } else {  // ix is already a spouse in fx. This is a deletion request.
            ix.setLocation(lastPersonLoc);
            try {
                fx.deleteSpouse(ix);
                fx.delSpouse(ix);
                removePersonAndRecomputeNodes(ix, fx);
            } catch (KSInternalErrorException ksiee) {
                String msg = ksiee.getMessage(),
                        ttl = "Annulment Attempt Rejected.";
                JOptionPane.showMessageDialog(parent, msg, ttl, JOptionPane.WARNING_MESSAGE);
                repaint();
                return;
            }
            showInfo(ix);
            dirty = true;
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
            JOptionPane.showMessageDialog(parent, msg, ttl, JOptionPane.WARNING_MESSAGE);
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
                JOptionPane.showMessageDialog(parent, msg, ttl, JOptionPane.WARNING_MESSAGE);
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
        int storedEgo = parent.getCurrentEgo();
        parent.changeEgo(ix.serialNmbr);
        parent.changeEgo(storedEgo);
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
            if (c.serialNmbr == parent.getCurrentEgo()) {
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
        recomputingDyads = true;
        if (ix == fam.husband) {
            fam.husband = null;
        } else if (ix == fam.wife) {
            fam.wife = null;
        } else if (fam.children.contains(ix)) {
            fam.children.remove(ix);
        }
        int savedEgo = parent.getCurrentEgo();
        parent.rebuildKTMatrixEtc();
        parent.changeEgo(savedEgo);
        // re-attach nodes in Ego's row of KTM
        TreeMap<Integer, Node> egoRow = parent.ktm.getRow(savedEgo);
        Iterator rowIter = egoRow.entrySet().iterator();
        while (rowIter.hasNext()) {
            Map.Entry entry = (Map.Entry) rowIter.next();
            Integer altInt = (Integer) entry.getKey();
            Node nod = (Node) entry.getValue();
            nod.indiv.node = nod;
        }
        recomputingDyads = false;
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
//        parent.ktm.replaceRow(rowNum, newRow);
//        parent.setCurrentEgo(rowNum);
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
//                Node oldReciprocal = parent.ktm.getCell(altInt, rowNum);
//                if (oldReciprocal != null) {
//                    Context.current.deleteDyads(oldReciprocal, altInt);
//                    Integer[] pair = {altInt, rowNum};
//                    Context.current.kti.removePair(oldReciprocal.pcString, pair);
//                    parent.ktm.removeCell(altInt, rowNum);
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
        int returnVal = fc.showSaveDialog(parent);
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
            parent.storeInfo();
        } catch (Exception pe) {
                displayError(pe);
                return;
        }
        Context currCtxt = Library.contextUnderConstruction;
        Individual currEgo = currCtxt.individualCensus.get(parent.getCurrentEgo());
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
        parent.editWindow.setTitle("Editing: " + saveFile.getName() + ".");
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
        pf.printf("  <beginyear>%s</beginyear>" + EOL, parent.getFPanel().famStartYear().getText());
        pf.printf("  <endyear>%s</endyear>" + EOL, parent.getFPanel().famEndYear().getText());
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
        parent.getPPanel().dirty = false;
        parent.getFPanel().dirty = false;
        clearInfo();
        originX = 0;
        originY = 0;
        Context.current = null;
        Library.contextUnderConstruction = null;
        MainPane.curr_CUC_Editor = null;
        saveFile = null;
        parent.getPPanel().clearEgoBox();
        parent.infoPerson = null;
        parent.infoMarriage = null;
        parent.ktm = null;
        parent.suggestionsRef = null;
        parent.suggestionsAdr = null;
        repaint();
    }

    boolean doWantToSave() {
        dirty = false;
        String msg = "Do you want to save changes to the current chart?",
                ttl = "Save or Changes Will Be Lost";
        int choice = JOptionPane.showConfirmDialog(parent, msg, ttl, JOptionPane.YES_NO_OPTION);
        if (choice == JOptionPane.NO_OPTION) {
            saveFile = null;
            return false;
        } else {
            saveSILKFile();
            return true;
        }
    }

    public void exportGEDCOMFile() {
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
        if (dirty == true) {
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
        if (dirty == true) {
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
        parent.setEditable(editable);
        int ox = originX;
        int oy = originY;
        sFile.Close();
        //  We read in some people, so update egoChoiceBox
        parent.getPPanel().rebuildEgoBox();

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
        int returnVal = fc.showOpenDialog(parent);
        if (returnVal == JFileChooser.APPROVE_OPTION) {
            deleteAll();
            setOrigin(0, 0);
            saveFile = fc.getSelectedFile();
            try {
                Library.loadSILKFile(saveFile);  // makes a new Context.current from SILK file
                Library.userDirectory = fc.getCurrentDirectory().getName();
                ctxt = Context.current;
                parent.ktm = ctxt.ktm;
                DomainTheory dt = ctxt.domTheoryRef();
                if (!dt.theory.containsKey("step_brother")) {
                    Linus macroLineServer = new Linus(Library.libraryDirectory + "Standard_Macros");
                    Tokenizer tok = new Tokenizer(Library.getDFA(), macroLineServer);
                    Parser parzer = new Parser(tok, tok);
                    parzer.parseStandardMacros(dt);
                }
                if (ctxt.linkOrder == null) {
                    ctxt.loadDefaultLinkStuff();
                }
                parent.suggestionsRef = dt.issuesForUser;
                if (ctxt.domTheoryAdrExists()) {
                    parent.suggestionsAdr = ctxt.domTheoryAdr().issuesForUser;
                }
                int egoNum = ctxt.currentEgo.serialNmbr;
                parent.setCurrentEgo(egoNum);
                originX = ctxt.origin.x;
                originY = ctxt.origin.y;
                area = ctxt.area;
                nameLabel = ctxt.labelChoice;
                kinTermLabel = ctxt.ktLabelChoice;
                parent.synchronizeLabelParams(nameLabel, kinTermLabel);
                editable = ctxt.editable;
                parent.getPPanel().setDistinctAdrTerms(ctxt.distinctAdrTerms);
                parent.setSnap(Library.snapToGrid);
                whichFolk = ctxt.infoPerson;
                whichKnot = ctxt.infoMarriage;
                boolean empty = ctxt.infoPerson == -1;
                parent.infoPerson = (empty ? null : ctxt.individualCensus.get(ctxt.infoPerson));
                empty = ctxt.infoMarriage == -1;
                parent.infoMarriage = (empty ? null : ctxt.familyCensus.get(ctxt.infoMarriage));
                if (parent.ktm.getRow(egoNum) != null) {
                    Iterator nodeIter = parent.ktm.getRow(egoNum).values().iterator();
                    while (nodeIter.hasNext()) {
                        Node n = (Node) nodeIter.next();
                        if (n.indiv != null) {
                            n.indiv.node = n;
                        }
                    }
                }
                Library.currDataAuthor = getCurrentUser(parent, "Register Current User");
                parent.setActOnSuggsEnabled(ctxt.hasIssues());
            } catch (Exception e) {
                String msg = "While reading " + saveFile.getName() + "\n" + e;
                System.err.println(msg);
                MainPane.displayError(msg, "Internal Problem", JOptionPane.WARNING_MESSAGE);
            }
            Person.folks = ctxt.individualCensus;
            Marriage.knots = ctxt.familyCensus;
            parent.rebuildChartCombo();
            String frameTitle = fc.getName(saveFile);
            parent.setTitle("Editing: " + frameTitle);
            //  We read in some people, so update egoChoiceBox
            parent.getPPanel().rebuildEgoBox();
            checkSizeOfChart(ctxt);
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
                minX = Math.min(minX, ind.location.x);
                minY = Math.min(minY, ind.location.y);
                maxX = Math.max(maxX, ind.location.x + sz);
                maxY = Math.max(maxY, ind.location.y + sz);                
            }
        }
        for (Family f : ctxt.familyCensus) {
            if (!f.deleted && f.homeChart.equals(ctxt.currentChart)) {
                sz = f.getSize();
                minX = Math.min(minX, f.location.x);
                minY = Math.min(minY, f.location.y);
                maxX = Math.max(maxX, f.location.x + sz);
                maxY = Math.max(maxY, f.location.y + sz); 
            }
        }
        for (Link lk : ctxt.linkCensus) {
            if (!lk.deleted && lk.homeChart.equals(ctxt.currentChart)) {
                sz = lk.getSize();
                minX = Math.min(minX, lk.location.x);
                minY = Math.min(minY, lk.location.y);
                maxX = Math.max(maxX, lk.location.x + sz);
                maxY = Math.max(maxY, lk.location.y + sz); 
            }
        }
        Point idealTopLeft = gridSnap(new Point(2 * sz, 2 * sz));
        int adjustX = idealTopLeft.x - minX,
                adjustY = idealTopLeft.y - minY,
                idealWidth = maxX - minX + (3 * idealTopLeft.x) + adjustX,
                idealHeight = maxY - minY + (3 * idealTopLeft.y) + adjustY;
        if (adjustX != 0 || adjustY != 0) {
            for (Individual ind : ctxt.individualCensus) {
                if (ind.homeChart.equals(ctxt.currentChart)) {
                    ind.adjustLocation(adjustX, adjustY);
                }
            }
            for (Link lk : ctxt.linkCensus) {
                if (lk.homeChart.equals(ctxt.currentChart)) {
                    lk.adjustLocation(adjustX, adjustY);
                }
            }
            for (Family f : ctxt.familyCensus) {
                if (f.homeChart.equals(ctxt.currentChart)) {
                    f.adjustLocation(adjustX, adjustY);
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
