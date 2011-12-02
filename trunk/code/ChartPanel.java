
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.MouseInputListener;
import javax.swing.filechooser.FileNameExtensionFilter;
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
    int whichFolk = -1,
            priorAlter = -1,
            whichKnot = -1,
            tiedKnot = -1,
            whichHalf = -1;
    Line selectLine;
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
    Point lastPersonLoc = null;
    Dimension area = new Dimension(0, 0);
    ArrayList<Individual> reSizInds = new ArrayList<Individual>();
    ArrayList<Family> reSizFams = new ArrayList<Family>();

    public void init(SIL_Edit k) {
        parent = k;
        setLayout(null);
        personMenu = new java.awt.List(5, false);
        personMenu.add("Female");
        personMenu.add("Male");
        personMenu.add("Union");
        personMenu.add("Existing Female");
        personMenu.add("Existing Male");
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
            checkArea(reSizInds);
            reSizInds.clear();
        }
        if (!reSizFams.isEmpty()) {
            checkFamArea(reSizFams);
            reSizFams.clear();
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

//	public void doFixEgo(int which) {
//		if (whichFolk == -1) {
//			whichFolk = which;
//			return;
//		}
//		// do some alt action
//	}  //  Never used
    void KinshipEditor_MouseDown(MouseEvent event) {
        int which = -1;
        int mouseX = event.getX(), mouseY = event.getY();
//        mouseX -= originX;    //  Will I need these when chart grows large??
//        mouseY -= originY;
//  CLICKED ON A PERSON
        if ((which = Person.findPerson(mouseX, mouseY)) >= 0) {
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
            if (whichFolk == which) {
                lastLoc = new Point(mouseX, mouseY);
            } else {
                priorAlter = whichFolk;
                whichFolk = which;
            }
            lastPersonLoc = new Point(Person.folks.get(which).location);
            whichKnot = -1;
            return;
        } else {
            whichFolk = -1;
        }

        //  CLICKED ON A MARRIAGE
        if ((which = findMarriage(mouseX, mouseY)) >= 0) {
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
            if (whichKnot == which) {
                lastLoc = new Point(mouseX, mouseY);
            } else {
                whichKnot = which;
            }
            whichFolk = -1;
            return;
        } else {
            whichKnot = -1;
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
            if (ctxtName != null && ctxtName.trim().length() > 1) {
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
//            dt = new DomainTheory(ctxtName + "(Adr)", auth, createDate, false);
//            dt.addressTerms = true;
//            dt.dyadsDefined = new DyadTMap();
//            dt.dyadsUndefined = new DyadTMap();
//            // Load Std Macros
//            macroIter = tempDT.theory.values().iterator();
//            while (macroIter.hasNext()) {
//                KinTermDef ktd = (KinTermDef) macroIter.next();
//                dt.addTerm(ktd);
//                dt.nonTerms.add(ktd.kinTerm);
//            }
//            Context.current.addDomainTheory(dt);
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
//        String filePath = (Library.editDirectory != null
//                ? Library.editDirectory + "/" : "");
//        filePath += Context.current.languageName + ".silk";
//        saveFile = new File(filePath);
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
        switch (theIndex) {
            case 0: // female
                newPerson = new Individual(Person.fem, new Point(lastLoc.x, lastLoc.y));
                newPerson.myId = newPerson.serialNmbr + 1;
                parent.getPPanel().addToEgoChoices(newPerson);
                break;
            case 1: // male
                newPerson = new Individual(Person.mem, new Point(lastLoc.x, lastLoc.y));
                newPerson.myId = newPerson.serialNmbr + 1;
                parent.getPPanel().addToEgoChoices(newPerson);
                break;
            case 2: // marriage
                newMar = new Family(new Point(lastLoc.x, lastLoc.y));
                newMar.mid = newMar.serialNmbr + 1;
                break;
            case 3: // existing Male
                String msg = "Linking to existing persons is not yet implemented.",
                 title = "Still Under Construction";
                JOptionPane.showMessageDialog(this, msg,
                        title, JOptionPane.INFORMATION_MESSAGE);
                break;
            case 4: // existing Female
                msg = "Linking to existing persons is not yet implemented.";
                title = "Still Under Construction";
                JOptionPane.showMessageDialog(this, msg,
                        title, JOptionPane.INFORMATION_MESSAGE);
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
        }
        if (newMar != null) {
            delayedAreaCk(newMar);
            showInfo(newMar);
        }
        dirty = true;
        repaint();
    }

    int findFreeMarriage() {  //  SILKin does not delete marriages, just marks them 'deleted'
        return Marriage.knots.size();
    }

    public int findMarriage(int x, int y) {
        if (Marriage.knots == null) {
            return -1;
        }
        for (Family m : Marriage.knots) {
            if (m != null && m.bounds().contains(x, y)) {
                return m.mid - 1;
            }
        }
        return -1;
    }
    int lastFolk = -1;
    int lastKnot = -1;
    Image theImage = null;
    int jpegs = 0;

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

    void delayedAreaCk(Family fam) {
        if (!reSizFams.contains(fam)) {
            reSizFams.add(fam);
        }
    }

    void checkFamArea(ArrayList<Family> fams) {
        int minX = 1000000, minY = 1000000, maxX = -1, maxY = -1, maxSz = -1;
        for (Family f : fams) {
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
        int wide = maxX - minX, high = maxY - minY;
        checkArea(minX, minY, wide, high, maxSz);
    }

    void checkArea(ArrayList<Individual> people) {
        int minX = 1000000, minY = 1000000, maxX = -1, maxY = -1, maxSz = -1;
        for (Individual ind : people) {
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
        int extraWidth = Math.max((4 * sz) - left, 0);
        int extraHeight = Math.max((4 * sz) - top, 0);
        if (extraWidth + extraHeight > 0) {
            for (Individual ind : Context.current.individualCensus) {
                ind.adjustLocation(extraWidth, extraHeight);
            }
            for (Family fam : Context.current.familyCensus) {
                fam.adjustLocation(extraWidth, extraHeight);
            }
            area.width += extraWidth;
            area.height += extraHeight;
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
        paint0(g, myRect);
    }

    public void paint0(Graphics g, Rectangle myRect) {
        Rectangle theRect;
        if (Context.current == null) {
            return;
        }
        if (selectLine != null) {
            selectLine.paint(g);
//        } else if (whichFolk == -1 && whichKnot == -1) {
//            clearInfo();
        }
        ArrayList<Integer> path = Context.current.ktm.getPath(
                parent.getCurrentEgo(), whichFolk);
        for (Individual p : Person.folks) {
            if (p != null) {
                if (p.serialNmbr == whichFolk) {
                    p.drawSymbol(g, myRect, Color.blue);
                    if (lastFolk != whichFolk) {
                        showInfo(p);
                    }
                } else if (p.serialNmbr == parent.getCurrentEgo()) {
                    p.drawSymbol(g, myRect, Color.red);
                } else if (path.contains(p.serialNmbr)) {
                    p.drawSymbol(g, myRect, Color.orange);
                } else {
                    p.drawSymbol(g, myRect);
                }
            }
        }  //  end of loop thru Individuals

        lastFolk = whichFolk;
        whichHalf = -1;
        for (Family m : Marriage.knots) {
            if (m != null) {
                theRect = m.bounds();
                if (m.mid - 1 == whichKnot) {
                    m.drawSymbol(g, myRect, Color.blue);
                    if (lastKnot != whichKnot) {
                        showInfo(m);
                    }
                } else {
                    m.drawSymbol(g, myRect, Color.black);
                }
                m.drawLines(g);
                if (selectLine != null) {
                    theRect = new Rectangle(theRect);
                    theRect.height *= 2;
                    theRect.y -= theRect.height / 4;
                    if (theRect.contains(selectLine.toP.x, selectLine.toP.y)) {
                        tiedKnot = m.mid - 1;
                        Rectangle a = new Rectangle(theRect.x, theRect.y, theRect.width,
                                theRect.height / 2);
                        Rectangle b = new Rectangle(theRect.x, theRect.y + theRect.height / 2,
                                theRect.width, theRect.height / 2);
                        Color cx = g.getColor();
                        g.setColor(Color.green);
                        if (a.contains(selectLine.toP.x, selectLine.toP.y)) {
                            g.fillOval(a.x, a.y, a.width, a.height);
                            whichHalf = 1;
                        } else if (b.contains(selectLine.toP.x, selectLine.toP.y)) {
                            g.setColor(Color.magenta);
                            g.fillOval(b.x, b.y, b.width, b.height);
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
        if (shiftDn) {
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
                delayedAreaCk((Individual) p);
                repaint();
            }
        } else if (metaDn || altDn) {
            if (whichKnot != -1) {
                int dx = Marriage.knots.get(whichKnot).location.x - mouseX + 10;
                int dy = Marriage.knots.get(whichKnot).location.y - mouseY + 10;
                ArrayList<Individual> people = new ArrayList<Individual>();
                Marriage.knots.get(whichKnot).lineageDeltaMove(dx, dy, people);
                delayedAreaCk(people);
                whichFolk = -1;
                dirty = true;
                repaint();
            } else if (whichFolk != -1) {
                Person p = Person.folks.get(whichFolk);
                selectLine = new Line(new Point(p.location.x + 10, p.location.y + 10),
                        new Point(mouseX, mouseY));
                delayedAreaCk((Individual) p);
                repaint();
            }

        } else {  //  No mod keys
            selectLine = null;
            if (whichFolk != -1) {
                Person p = Person.folks.get(whichFolk);
                p.location.x = mouseX - 10;
                p.location.y = mouseY - 10;
                whichKnot = -1;
                dirty = true;
                selectLine = new Line(lastPersonLoc, new Point(mouseX, mouseY));
                delayedAreaCk((Individual) p);
                repaint();
            } else if (whichKnot != -1) {
                Marriage m = Marriage.knots.get(whichKnot);
                m.location.x = mouseX - 10;
                m.location.y = mouseY - 10;
                delayedAreaCk((Family) m);
                dirty = true;
                repaint();
            } else {
                repaint();
            }
        }
    }

    void KinshipEditor_MouseUp(MouseEvent event) {
        if (!editable) {
            return;
        }
        int mouseX = event.getX(), mouseY = event.getY();
        boolean ctrlDn = event.isControlDown(),
                shiftDn = event.isShiftDown(),
                altDn = event.isAltDown(),
                metaDn = event.isMetaDown();
        if (altDn && whichFolk > -1) {
            parent.changeEgo(whichFolk);
            parent.getPPanel().resetEgoBox(parent.getCurrentEgo());
            whichFolk = priorAlter;
            repaint();
            return;
        }

        Node newNode = null;
        //  This test = 'no control key' or 'shift' or 'meta'
        if (shiftDn || metaDn || !ctrlDn) {
            if (selectLine != null && whichHalf > 0 && whichFolk > -1) {
//      We've released a Person after dragging to a Marriage
                Rectangle theRect = new Rectangle(Marriage.knots.get(tiedKnot).location.x,
                        Marriage.knots.get(tiedKnot).location.y, 20, 20);
                theRect = new Rectangle(Marriage.knots.get(tiedKnot).bounds());
                theRect.height *= 2;
                theRect.y -= theRect.height / 4;
                if (theRect.contains(selectLine.toP.x, selectLine.toP.y)) {
                    Rectangle a = new Rectangle(theRect.x, theRect.y, theRect.width,
                            theRect.height / 2);
                    Rectangle b = new Rectangle(theRect.x, theRect.y + theRect.height / 2,
                            theRect.width, theRect.height / 2);
                    Family fx = Marriage.knots.get(tiedKnot);
                    Individual ix = Person.folks.get(whichFolk);
                    Person px = (Person) ix;
                    Marriage mx = (Marriage) fx;
                    if (a.contains(selectLine.toP.x, selectLine.toP.y)) {
                        if (!mx.isSpouse(px)) {  //  intend to add new spouse
                            String marriageLicense = mx.eligibleSpouse(px);  //  'OK' or reason for rejecting marriage, or null
                            if (marriageLicense.equals("gay")) {
                                String msg = "Cannot have same-sex marriages.",
                                        ttl = "Marriage Attempt Rejected.";
                                JOptionPane.showMessageDialog(parent, msg, ttl, JOptionPane.WARNING_MESSAGE);
                                px.setLocation(lastPersonLoc);
                                repaint();
                                return;
                            } else if (marriageLicense.equals("bigamy")) {
                                String msg = "Only 2 persons allowed in a marriage.",
                                        ttl = "Marriage Attempt Rejected.";
                                JOptionPane.showMessageDialog(parent, msg, ttl, JOptionPane.WARNING_MESSAGE);
                                px.setLocation(lastPersonLoc);
                                repaint();
                                return;
                            }
                            if (mx.isSib(px)) {
                                if (lastPersonLoc.y > mx.location.y) {
                                    lastPersonLoc.y = mx.location.y + (mx.location.y - lastPersonLoc.y);
                                }
                                px.setLocation(lastPersonLoc);
                                try {
                                    fx.deleteChild(ix);
                                } catch (KSInternalErrorException ksiee) {
                                    String msg = ksiee.getMessage(),
                                            ttl = "Sibling Deletion Attempt Rejected.";
                                    JOptionPane.showMessageDialog(parent, msg, ttl, JOptionPane.WARNING_MESSAGE);
                                    repaint();
                                    return;
                                }
                                mx.delSib(px);
                            }
                            px.setLocation(lastPersonLoc);
                            try {
                                fx.addSpouse(ix);
                            } catch (KSInternalErrorException ksiee) {
                                String msg = ksiee.getMessage(),
                                        ttl = "Marriage Attempt Rejected.";
                                JOptionPane.showMessageDialog(parent, msg, ttl, JOptionPane.WARNING_MESSAGE);
                                repaint();
                                return;
                            }
                            // Love triumphs over all
                            mx.addSpouse(px);
                            try {
                                newNode = createNode(ix, fx, "spouse");                                
                            } catch (KSInternalErrorException e) {
                                String msg = "Fatal error while creating new context.\n" + e;
                                MainPane.displayError(msg, "Internal Error", JOptionPane.ERROR_MESSAGE);
                                System.exit(9);
                            }
                            // If ix has a node, we just propogated it to family
                            // If not, then this is ix's new node (maybe null).
                            if (ix.node == null && newNode != null) {
                                ix.node = newNode;
                            }
                            showInfo(ix);
                            dirty = true;
                        } else {  // ix is already a spouse in fx. This is a deletion request.
                            px.setLocation(lastPersonLoc);
                            try {
                                fx.deleteSpouse(ix);
                                mx.delSpouse(px);
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
                    } else if (b.contains(selectLine.toP.x, selectLine.toP.y)) {
                        //  Intend to add a child to marriage
                        if (ix.birthFamily != null && ix.birthFamily != fx) { // kid already has a different birthFamily
                            String msg = "Person <" + ix.serialNmbr + "> is a child in Family <" + fx.serialNmbr + ">"
                                    + "\nMust delete from incorrect family before adding to correct one.",
                                    ttl = "Family-Building Error";
                            JOptionPane.showMessageDialog(parent, msg, ttl, JOptionPane.WARNING_MESSAGE);
                            px.setLocation(lastPersonLoc);
                            repaint();
                            return;
                        }
                        if (!mx.isSib(px)) {
                            if (mx.isSpouse(px)) {
                                if (lastPersonLoc.y < mx.location.y) {
                                    lastPersonLoc.y = mx.location.y + (mx.location.y - lastPersonLoc.y);
                                }
                                try {
                                    fx.deleteSpouse(ix);
                                } catch (KSInternalErrorException ksiee) {
                                    String msg = ksiee.getMessage(),
                                            ttl = "Annulment Attempt Rejected.";
                                    JOptionPane.showMessageDialog(parent, msg, ttl, JOptionPane.WARNING_MESSAGE);
                                    px.setLocation(lastPersonLoc);
                                    repaint();
                                    return;
                                }
                                mx.delSpouse(px);
                            }
                            px.setLocation(lastPersonLoc);
                            mx.addSib(px);
                            fx.addChild(ix);
                            try {
                                newNode = createNode(ix, fx, "child");
                            } catch (KSInternalErrorException e) {
                                String msg = "FATAL Node creation error:\n" + e;
                                MainPane.displayError(msg, "Internal Error", JOptionPane.ERROR_MESSAGE);
                                System.exit(9);
                            }
                            // If ix has a node, we just propogated it to family
                            // If not, then this is ix's new node (maybe null).
                            if (ix.node == null && newNode != null) {
                                ix.node = newNode;
                            }
                            showInfo(ix);
                            dirty = true;
                        } else {  //  Removing a child
                            px.setLocation(lastPersonLoc);
                            try {
                                fx.deleteChild(ix);
                                mx.delSib(px);
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
                    }
                }
            } else if (dragged) {
                //  Perhaps we just dragged something to a new location
            }
            whichHalf = -1;
            tiedKnot = -1;
            selectLine = null;
            repaint();
        } else if (ctrlDn) {  //  Control = deletion
            int which = -1;
            if ((which = Person.findPerson(mouseX, mouseY)) >= 0) {
                //  Want to delete a Person

                if (whichFolk == which) {
                    lastLoc = new Point(mouseX, mouseY);
                } else {
                    whichFolk = which;
                }
                Individual ind = Context.current.individualCensus.get(whichFolk);
                if (Context.current.indSerNumGen > 1
                        && (ind.node != null || ind.birthFamily != null
                        || (ind.marriages != null && ind.marriages.size() > 0))) {
                    String msg = "", title = "Deletion Cannot Be Performed";
                    if (which == parent.getCurrentEgo()) {
                        msg = "Cannot delete Ego. Must first choose a different Ego.";
                    } else if (ind.birthFamily != null) {
                        msg = "Cannot delete child while in family. First disconnect them, then delete.";
                    } else if (ind.marriages != null && ind.marriages.size() > 0) {
                        msg = "Cannot delete spouse while married. First disconnect them, then delete.";
                    }
                    JOptionPane.showMessageDialog(parent, msg, title, JOptionPane.WARNING_MESSAGE);
                    return;
                }
                ind.delPerson();
                try {
                    ind.delete();
                } catch (KSInternalErrorException k) {
                }  //  deleted persons may be messed up
                if (which == Context.current.indSerNumGen - 1 //  Delete last person made
                        && which != parent.getCurrentEgo()) {   //  if they are not Ego
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
                whichFolk = -1;
                dirty = true;
                repaint();
                return;
            } else {
                whichFolk = -1;
            }
            if ((which = findMarriage(mouseX, mouseY)) >= 0) {
                //  Want to delete a Family
                if (whichKnot == which) {
                    lastLoc = new Point(mouseX, mouseY);
                } else {
                    whichKnot = which;
                }
                Family fam = Marriage.knots.get(whichKnot);
                Individual person = (fam.husband != null ? fam.husband : fam.wife);
                try {
                    fam.delete();
                    if (person != null) {
                        removePersonAndRecomputeNodes(person, fam);
                    }
                } catch (KSInternalErrorException ksiee) {
                    String msg = ksiee.getMessage(),
                            ttl = "Marriage Deletion Attempt Rejected.";
                    JOptionPane.showMessageDialog(parent, msg, ttl, JOptionPane.WARNING_MESSAGE);
                    return;
                }
                fam.location = new Point(-100, -100);
                fam.delMarriage();
                whichKnot = -1;
                dirty = true;
                repaint();
                return;
            } else {
                whichKnot = -1;
            }
        }
    }

    /** Make a node for 'ind' that records ind's connection path to Ego, using
     *	the path information from the nodes of existing members of the 'fam' family;
     *	OR, if no one in fam is connected to Ego, use ind's existing node
     *	and path to propagate a connection to all the members of fam.
     *	When ind obtains a connection path from some member of fam, be sure to
     *	use the member whose path to Ego is the shortest.
    
    @param ind	the Individual being added to the family
    @param fam	the family gaining new member ind
    @param role	the role of ind in fam: spouse or child
    
    @throws KSInternalErrorException if fam is labeled as connected to Ego
    but no member of the family is in fact connected.
     */
    public static Node createNode(Individual ind, Family fam, String role)
            throws KSInternalErrorException {
        Node node = null, oldNode = ind.node;
        Individual mate,mateMate, kid, shortestPathPerson = findShortestPath(ind, fam);
        String miniCB, pred, arg0 = "#" + ind.serialNmbr, arg1;
        if (shortestPathPerson == ind) {
            // ind is already connected to Ego by the shortest path
            if (role.equals("spouse")) {
                mate = (ind.gender.equals("M") ? fam.wife : fam.husband);
                if (mate != null) {
                    propogateNodes(ind, mate, fam, "spouse");
                    for (Object o : mate.marriages) {
                        Family mar = (Family) o;
                        if (mar != fam) {
                            mateMate = (mate == mar.husband ? mar.wife : mar.husband);
                            propogateNodes(mate, mateMate, mar, "spouse");
                        }
                    }
                }
                for (Object o : fam.children) {
                    kid = (Individual) o;
                    propogateNodes(ind, kid, fam, "parent");
                }
                // end of ind-is-spouse
            } else if (role.equals("child")) {
                if (fam.husband != null) {
                    propogateNodes(ind, fam.husband, fam, "child");
                }
                if (fam.wife != null) {
                    propogateNodes(ind, fam.wife, fam, "child");
                }
                for (Object o : fam.children) {
                    kid = (Individual) o;
                    if (kid == ind) continue;
                    propogateNodes(ind, kid, fam, "sibling");
                }
            } //  end of ind-is-a-child-in-this-fam
        } else if (shortestPathPerson != null) {
            // A member of fam has the shortest path to Ego
            node = new Node();
            node.indiv = ind;
            if (shortestPathPerson == fam.husband || shortestPathPerson == fam.wife) {
                if (role.equals("spouse")) {
                    mate = shortestPathPerson;
                    // ind's mate is most directly linked to Ego, and not thru fam's kids,
                    // so she's linked either thru (1) parents or (2) a current or prior spouse,
                    // or (3) a child by prior spouse. (#3 requires special handling)
                    Individual[] kidHolder = new Individual[1];
                    if (linkByChildInOtherFam(mate, fam, kidHolder)) { // case 3
                        kid = kidHolder[0];
                        pred = (ind.gender.equals("M") ? "Stfa" : "Stmo");
                        arg1 = "#" + kid.serialNmbr;
                        node.setLevel(kid.node.getLevel() + 1);
                        node.miniPreds.addAll(kid.node.miniPreds);
                    } else { //  cases-1-or-2
                        pred = (ind.gender.equals("M") ? "Hu" : "Wi");
                        arg1 = "#" + mate.serialNmbr;
                        node.setLevel(mate.node.getLevel());
                        node.miniPreds.addAll(mate.node.miniPreds);
                    } //  end of cases-1-or-2
                    miniCB = pred + "(" + arg0 + "," + arg1 + ")";
                    node.miniPreds.add(miniCB);
                    makePCString2(node);
                    // Attach this node to ind so it can propagate. 
                    // Ind's original node is saved.
                    ind.node = node;
                    // Now propogate to ind's parents. Spouse was shortestPath, 
                    // and ergo his kids have nodes. But her parents may or may not.
                    if (ind.birthFamily != null) {
                        Family bFam = ind.birthFamily;
                        if (bFam.husband != null) {
                            propogateNodes(ind, bFam.husband, bFam, "child");
                        }
                        if (bFam.wife != null) {
                            propogateNodes(ind, bFam.wife, bFam, "child");
                        }
                        for (Object k : bFam.children) {
                            kid = (Individual) k;
                            if (kid != ind) {
                                propogateNodes(ind, kid, bFam, "child");
                            }
                        }
                    }
                    // end of spouse-of-short-path-person
                } else { // role equals "child"
                    Individual par = shortestPathPerson;
                    // par is most directly linked to Ego, and not thru fam's kids,
                    // so she's linked either thru (1) parents or (2) a prior spouse,
                    // (3) a child by prior spouse, or (4) step-child in former marriage.
                    // (2, 3 & 4 require special handling)
                    Individual[] kidHolder = new Individual[1];
                    if (linkByChildInOtherFam(par, fam, kidHolder)) { // case 3
                        kid = kidHolder[0];
                        pred = (ind.gender.equals("M") ? "Hbro" : "Hsis");
                        arg1 = "#" + kid.serialNmbr;
                        node.setLevel(kid.node.getLevel());
                        node.miniPreds.addAll(kid.node.miniPreds);
                    } // end of case 3
                    else if (linkByStepChildInOtherFam(par, fam, kidHolder)) { // case 4
                        kid = kidHolder[0];
                        pred = (ind.gender.equals("M") ? "Stbro" : "Stsis");
                        arg1 = "#" + kid.serialNmbr;
                        node.setLevel(kid.node.getLevel());
                        node.miniPreds.addAll(kid.node.miniPreds);
                    } // end of case 4
                    else if (linkByOtherSpouse(par, fam, kidHolder)) { // case 2
                        mate = kidHolder[0];
                        pred = (ind.gender.equals("M") ? "Stso" : "Stda");
                        arg1 = "#" + mate.serialNmbr;
                        node.setLevel(mate.node.getLevel() - 1);
                        node.miniPreds.addAll(mate.node.miniPreds);
                    } //  end of case 2
                    else { //  case 1
                        pred = (ind.gender.equals("M") ? "So" : "Da");
                        arg1 = "#" + par.serialNmbr;
                        node.setLevel(par.node.getLevel() - 1);
                        node.miniPreds.addAll(par.node.miniPreds);
                    }
                    miniCB = pred + "(" + arg0 + "," + arg1 + ")";
                    node.miniPreds.add(miniCB);
                    makePCString2(node);
                    // Attach this node to ind so it can propagate. 
                    // Ind's original node is saved.
                    ind.node = node;
                    // Now propagate to ind's spouse & kids. Ind's parent was the
                    // shortPath, so neither parents nor siblings need nodes. But her
                    // spouse and kids might.
                    for (Object o : ind.marriages) {
                        Family m = (Family) o;
                        mate = (m.husband == ind ? m.wife : m.husband);
                        if (mate != null) {
                            propogateNodes(ind, mate, m, "spouse");
                        }
                        for (Object k : m.children) {
                            kid = (Individual) k;
                            propogateNodes(ind, kid, m, "parent");
                        }
                    }  // end of ind-has-marriages
                } // end of child-of-short-path-person
            } else { // short-path must be a child in fam
                kid = shortestPathPerson;
                if (role.equals("spouse")) {
                    pred = (ind.gender.equals("M") ? "Fa" : "Mo");
                    node.setLevel(kid.node.getLevel() + 1);
                } else {
                    pred = (ind.gender.equals("M") ? "Bro" : "Sis");
                    node.setLevel(kid.node.getLevel());
                }
                arg1 = "#" + kid.serialNmbr;
                node.miniPreds.addAll(kid.node.miniPreds);
                miniCB = pred + "(" + arg0 + "," + arg1 + ")";
                node.miniPreds.add(miniCB);
                makePCString2(node);
                ind.node = node;
                if (role.equals("spouse")) {
                    // ind's spouse and kids have nodes, but her other marriages
                    // and her birthFam may need them
                    for (Object o : ind.marriages) {
                        Family m = (Family) o;
                        if (fam != m) {
                            mate = (m.husband == ind ? m.wife : m.husband);
                            if (mate != null) {
                                propogateNodes(ind, mate, m, "spouse");
                            }
                            for (Object k : m.children) {
                                kid = (Individual) k;
                                propogateNodes(ind, kid, m, "parent");
                            }
                        }
                    }
                    if (ind.birthFamily != null) {
                        Family bFam = ind.birthFamily;
                        if (bFam.husband != null) {
                            propogateNodes(ind, bFam.husband, bFam, "child");
                        }
                        if (bFam.wife != null) {
                            propogateNodes(ind, bFam.wife, bFam, "child");
                        }
                        for (Object k : bFam.children) {
                            kid = (Individual) k;
                            if (kid != ind) {
                                propogateNodes(ind, kid, bFam, "sibling");
                            }
                        }
                    }
                }else {  // ind's role is sibling of short-path
                    // ind's birthFam all have nodes. Her spice & kids may need them.
                    for (Object o : ind.marriages) {
                        Family m = (Family) o;
                        mate = (m.husband == ind ? m.wife : m.husband);
                        if (mate != null) {
                            propogateNodes(ind, mate, m, "spouse");
                        }
                        for (Object k : m.children) {
                            kid = (Individual) k;
                            propogateNodes(ind, kid, m, "parent");
                        }
                    }
                }
            }          
        } // end of a member of fam had shortest path to Ego
        if (ind.starLinks != null) {
            //  ind must have miniPreds to pass along to star-linked people
            if (node != null && node.miniPreds.size() > 0) {
                ind.node = node;
            } //  Propogate starLinks to everyone to whom ind is connected via a UDP.
            for (Object o : ind.starLinks) {
                Individual pers = (Individual) o;
                propogateNodes(ind, pers, fam, "starLink");
            }
        }
        if (node != null && oldNode != null && oldNode.hasKinTerms()
                && oldNode.pcString.equals(node.pcString)) {
            node = oldNode;
        }
        if (node != null && doIndexes) {
            parent.ktm.addNode(parent.getCurrentEgo(), ind.serialNmbr, node);
            Integer[] pair = {parent.getCurrentEgo(), ind.serialNmbr};
            Context.current.kti.addPair(node.pcString, pair);
        }
        if (node != null && Context.current == Library.contextUnderConstruction) {
            Individual ego = Context.current.individualCensus.get(parent.getCurrentEgo());
            parent.getPPanel().checkForAutoDefs(node, ego);
        }
        ind.node = oldNode;
        return node;
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

    /** Examine the path by which par is linked to Ego.
     *  Return true if par is linked to Ego by way of a child by some other marriage.
     *  We are guaranteed that par has a node with a non-empty miniPreds list.
     *  We are also guaranteed that the last miniPred contains par.
     *
     * @param par   person whose link to Ego we examine.
     * @param fam   the family par belongs to now.
     * @param holder an array where we'll place the kid from another family, if true.
     * @return      true if par is linked to Ego thru a child of some other marriage.
     */
    static boolean linkByChildInOtherFam(Individual par, Family fam, Individual[] holder) {
        return linkExaminer(par, fam, holder, false);
    }

    static boolean linkExaminer(Individual par, Family fam, Individual[] holder, boolean stepRel) {
        if (par.serialNmbr == parent.getCurrentEgo()) {
            return false;
        }
        Individual kid;
        String pred, arg0, arg1, miniPred;
        String parSerial = String.valueOf(par.serialNmbr);
        String[] kinTerms = new String[4];
        if (stepRel) {
            kinTerms[0] = "Stmo";
            kinTerms[1] = "Stfa";
            kinTerms[2] = "Stda";
            kinTerms[3] = "Stso";
        } else {
            kinTerms[0] = "Mo";
            kinTerms[1] = "Fa";
            kinTerms[2] = "Da";
            kinTerms[3] = "So";
        }
        ArrayList<Object> miniPreds = par.node.miniPreds;
        miniPred = (String) miniPreds.get(miniPreds.size() - 1);
        int leftParen = miniPred.indexOf("("),
                firstPound = miniPred.indexOf("#"),
                comma = miniPred.indexOf(","),
                secondPound = miniPred.lastIndexOf("#"),
                rightParen = miniPred.indexOf(")");
        pred = miniPred.substring(0, leftParen);
        arg0 = miniPred.substring(firstPound + 1, comma);
        arg1 = miniPred.substring(secondPound + 1, rightParen);
        if ((pred.equals(kinTerms[0]) || pred.equals(kinTerms[1]))
                && arg0.equals(parSerial)) {
            kid = Context.current.individualCensus.get(Integer.parseInt(arg1));
            if (kid.birthFamily != fam) {
                holder[0] = kid;
                return true;
            }
        } else if ((pred.equals(kinTerms[2]) || pred.equals(kinTerms[3]))
                && arg1.equals(parSerial)) {
            kid = Context.current.individualCensus.get(Integer.parseInt(arg0));
            if (kid.birthFamily != fam) {
                holder[0] = kid;
                return true;
            }
        }
        return false;
    }

    /** Examine the path by which par is linked to Ego.
     *  Return true if par is linked to Ego by way of a stepchild in some other marriage.
     *  We are guaranteed that par has a node with a non-empty miniPreds list.
     *  We are also guaranteed that the last miniPred contains par.
     *
     * @param par   person whose link to Ego we examine.
     * @param fam   the family par belongs to now.
     * @param holder an array where we'll place the kid from another family, if true.
     * @return      true if par is linked to Ego thru a stepchild in some other marriage.
     */
    static boolean linkByStepChildInOtherFam(Individual par, Family fam, Individual[] holder) {
        return linkExaminer(par, fam, holder, true);
    }

    /** Examine the path by which par is linked to Ego.
     *  Return true if par is linked to Ego by way of a spouse in some other marriage.
     *  We are guaranteed that par has a node with a non-empty miniPreds list.
     *  We are also guaranteed that the last miniPred contains par.
     *
     * @param par   person whose link to Ego we examine.
     * @param fam   the family par belongs to now.
     * @param holder an array where we'll place the kid from another family, if true.
     * @return      true if par is linked to Ego thru a stepchild in some other marriage.
     */
    static boolean linkByOtherSpouse(Individual par, Family fam, Individual[] holder) {
        if (par.serialNmbr == parent.getCurrentEgo()) {
            return false;
        }
        Individual spouse;
        String pred, arg0, arg1, miniPred;
        String parSerial = String.valueOf(par.serialNmbr), otherSerial;
        ArrayList<Object> miniPreds = par.node.miniPreds;
        miniPred = (String) miniPreds.get(miniPreds.size() - 1);
        int leftParen = miniPred.indexOf("("),
                firstPound = miniPred.indexOf("#"),
                comma = miniPred.indexOf(","),
                secondPound = miniPred.lastIndexOf("#"),
                rightParen = miniPred.indexOf(")");
        pred = miniPred.substring(0, leftParen);
        arg0 = miniPred.substring(firstPound + 1, comma);
        arg1 = miniPred.substring(secondPound + 1, rightParen);
        if (pred.equals("Hu") || pred.equals("Wi")) {
            otherSerial = (arg0.equals(parSerial) ? arg1 : arg0);
            spouse = Context.current.individualCensus.get(Integer.parseInt(otherSerial));
            if (spouse != fam.husband && spouse != fam.wife) {
                holder[0] = spouse;
                return true;
            }
        }
        return false;
    }

    static void makePCString2(Node node) {
        node.pcString = "";
        String mini;
        int leftParen;
        for (Object o : node.miniPreds) {
            mini = (String) o;
            leftParen = mini.indexOf("(");
            node.pcString += mini.substring(0, leftParen);
        }
    }

    public static void propogateNodes(Individual fromPerson, Individual toPerson,
            Family fam, String relat) throws KSInternalErrorException {
        // Propogations should stop IF toPerson is Ego OR (already has been seen
        //  4+ times AND has a node with no longer path to Ego than we could produce here).
        // Make a node for toPerson; if toPerson needs one, or this node's
        // miniPreds list is shorter than toPerson's, assign the new node.
        // Then, propogate nodes to all toPerson's relatives, if necessary.
        if (toPerson.serialNmbr == parent.getCurrentEgo()) {
            return;
        }
//        System.out.println("From: " + fromPerson.serialNmbr + "\tTo: " + toPerson.serialNmbr + "\t" + toPerson.seenB4);
        if (toPerson.seenB4++ > 4) {
            return;
        }
        // The first time we see someone, propagate even if they have a node. They may be
        // connected to someone who doesn't. But second time around, stop here.
        if (toPerson.seenB4 > 1 && toPerson.node != null && toPerson.node.miniPreds != null 
                && fromPerson.node != null && fromPerson.node.miniPreds != null && toPerson.node.miniPreds.size() > 0
                && (toPerson.node.miniPreds.size() <= fromPerson.node.miniPreds.size() + 1)) {
            return;
        }
        String role = null;
        if (relat.equals("spouse") || relat.equals("child")) {
            role = "spouse";
        } else if (relat.equals("sibling") || relat.equals("parent")) {
            role = "child";
        } else if (relat.equals("starLink")) {
            role = "starLink";
        }
        Node node;
        if (role.equals("child") || role.equals("spouse")) {
            node = createNode(toPerson, fam, role);
        } else { // starLink
            node = new Node();
            node.indiv = toPerson;
            node.setLevel(fromPerson.node.getLevel());
            node.miniPreds.addAll(fromPerson.node.miniPreds);
            String mini = "**(#" + toPerson.serialNmbr
                    + ",#" + fromPerson.serialNmbr + ")";
            node.miniPreds.add(mini);
            makePCString2(node);
        }
        //  If we made a new node with the same kin type as prior node,
        //  keep the old node with its kin terms.
        if (node != null) {
            toPerson.node = node;            
        }
        //  We've made a node for toPerson. Now propogate further
        if (role.equals("spouse") || role.equals("starLink")) {
            if (toPerson.birthFamily != null) {
                //  Propogate nodes to spouse's birthFam members
                Family famly = toPerson.birthFamily;
                if (famly.husband != null) {
                    propogateNodes(toPerson, famly.husband, famly, "child");
                }
                if (famly.wife != null) {
                    propogateNodes(toPerson, famly.wife, famly, "child");
                }
                for (Object o : famly.children) {
                    Individual ind = (Individual) o;
                    if (ind.serialNmbr != toPerson.serialNmbr) {
                        propogateNodes(toPerson, ind, famly, "sibling");
                    }
                }
            } // propogate nodes to any prior/other spice
            for (Object o : toPerson.marriages) {
                Family mar = (Family) o;
                if (mar != fam) {
                    if (mar.husband != null && mar.husband != toPerson) {
                        propogateNodes(toPerson, mar.husband, mar, "spouse");
                    }
                    if (mar.wife != null && mar.wife != toPerson) {
                        propogateNodes(toPerson, mar.wife, mar, "spouse");
                    }
                    for (Object obj : mar.children) {
                        Individual ind = (Individual) obj;
                        propogateNodes(toPerson, ind, mar, "parent");
                    }
                }
            }
            if (!role.equals("starLink")) {
                for (Object o : fam.children) {
                    Individual kid = (Individual) o;
                    propogateNodes(toPerson, kid, fam, "parent");
                }
            }
        } else if ((role.equals("child") || role.equals("starLink"))
                && !toPerson.marriages.isEmpty()) {
            for (Object o : toPerson.marriages) {
                Family famly = (Family) o;
                if (toPerson.gender.equals("M") && famly.wife != null) {
                    propogateNodes(toPerson, famly.wife, famly, "spouse");
                } else if (toPerson.gender.equals("F") && famly.husband != null) {
                    propogateNodes(toPerson, famly.husband, famly, "spouse");
                }
                for (Object obj : famly.children) {
                    Individual kid = (Individual) obj;
                    propogateNodes(toPerson, kid, famly, "parent");
                }
            }
        }
    }

    /** Remove this person from fam, then modify/remove all nodes
     *  in the KinTermMatrix and all dyads in the DyadTMaps that were affected.
     *
     * @param ix   Individual to be removed.
     * @param fam  Family object from which to remove ix.
     */
    void removePersonAndRecomputeNodes(Individual ix, Family fam)
            throws KSInternalErrorException {
        recomputingDyads = true;
        if (ix == fam.husband) {
            fam.husband = null;
        } else if (ix == fam.wife) {
            fam.wife = null;
        } else if (fam.children.contains(ix)) {
            fam.children.remove(ix);
        }
        int savedEgo = parent.getCurrentEgo();
        // Sort the rows of the KTMatrix, largest to smallest; Minimum numberOfKinTerms = 2.
        TreeMap<Integer, ArrayList<Integer>> sorted = new TreeMap<Integer, ArrayList<Integer>>();
        Iterator rowIter = parent.ktm.matrix.entrySet().iterator();
        while (rowIter.hasNext()) {
            Map.Entry entry = (Map.Entry) rowIter.next();
            Integer rowNmbr = (Integer) entry.getKey();
            Integer rowSize = new Integer(((TreeMap) entry.getValue()).size() * -1);
            if (rowSize < -1) {  //  row sizes are recorded as negative numbers
                if (sorted.get(rowSize) == null) {
                    sorted.put(rowSize, new ArrayList<Integer>());
                }
                ArrayList<Integer> rows = sorted.get(rowSize);
                rows.add(rowNmbr);
            }
        }   // From largest numberOfKinTerms to smallest, do recompute of nodes by row
        // Since rows are sorted by (-1 * numberOfKinTerms), ascending order = largest to smallest numberOfKinTerms
        ArrayList<Integer> alreadyDone = new ArrayList<Integer>();
        rowIter = sorted.values().iterator();
        while (rowIter.hasNext()) {
            ArrayList<Integer> rows = (ArrayList<Integer>) rowIter.next();
            for (Integer rowNum : rows) {
                TreeMap<Integer, Node> thisRow = parent.ktm.getRow(rowNum);
                if (containsUndoneNodes(thisRow, rowNum, alreadyDone)) {
                    recomputeNodes(rowNum, thisRow);
                    alreadyDone.add(rowNum);
                }
            }
        }
        parent.changeEgo(savedEgo);
        recomputingDyads = false;
        try {
            if ((Context.current.domTheoryRefExists() && 
                    !Context.current.domTheoryRef().issuesForUser.isEmpty())
                || (Context.current.domTheoryAdrExists() && 
                    !Context.current.domTheoryAdr().issuesForUser.isEmpty())) {
                String msg = "The Suggestions from prior learning sessions may\n"
                        + "contain references to " + ix.name + " that are\n"
                        + " no longer valid. If so, you should Get New Suggestions.\n";
                MainPane.displayError(msg, "Potential Problem", JOptionPane.PLAIN_MESSAGE);
            }
        } catch (Exception ex) {
        } // skip it
    }

    public boolean containsUndoneNodes(TreeMap<Integer, Node> thisRow,
            Integer rowNum, ArrayList<Integer> alreadyDone) {
        Iterator alterIter = thisRow.keySet().iterator();
        while (alterIter.hasNext()) {
            Integer altInt = (Integer) alterIter.next();
            if (altInt.compareTo(rowNum) != 0 && !alreadyDone.contains(altInt)) {
                return true;
            }
        }
        return false;
    }

    /**The nodes in this Ego's row represent paths to Ego that may have been
     * severed. Make a new row and fill it with nodes computed from scratch.
     *
     * @param rowNum    number of the ego for this row
     * @param thisRow   the row to be recomputed
     */
    void recomputeNodes(Integer rowNum, TreeMap<Integer, Node> thisRow) {
        TreeMap<Integer, Node> newRow = new TreeMap<Integer, Node>();
        Iterator nodIter = thisRow.entrySet().iterator();
        while (nodIter.hasNext()) {
            Map.Entry entry = (Map.Entry) nodIter.next();
            Integer altInt = (Integer) entry.getKey();
            Node n = (Node) entry.getValue();
            Integer[] pair = {rowNum, altInt};
            //de-index the node. It will be re-indexed by createNode().
            Context.current.kti.removePair(n.pcString, pair);
        }
        for (Individual i : Context.current.individualCensus) {
            i.seenB4 = 0;
            i.node = null;  //  clean out node slots
        }
        Node selfNode = Node.makeSelfNode(distinctAdrTerms);
        Individual egoPerson = Context.current.individualCensus.get(rowNum);
        selfNode.indiv = egoPerson;
        newRow.put(rowNum, selfNode);
        egoPerson.node = selfNode;
        try {
            parent.ktm.replaceRow(rowNum, newRow);
            parent.setCurrentEgo(rowNum);
            if (egoPerson.birthFamily != null) {
                createNode(egoPerson, egoPerson.birthFamily, "child");
            }
            for (Object o : egoPerson.marriages) {
                Family f = (Family) o;
                createNode(egoPerson, f, "spouse");
            }
        } catch (KSInternalErrorException ksie) {
            String msg = "While recomputing Nodes: " + ksie;
            System.err.println(msg);
            MainPane.activity.log.append(msg);
        }
        nodIter = thisRow.entrySet().iterator();
        while (nodIter.hasNext()) {
            Map.Entry entry = (Map.Entry) nodIter.next();
            Integer altInt = (Integer) entry.getKey();
            if (altInt.intValue() == rowNum.intValue()) {
                continue;  // skip self-node
            }
            Node oldNode = (Node) entry.getValue();
            Node newNode = newRow.get(altInt);
            if (oldNode.sameMiniPreds(newNode)) {
                newNode.addKinTermsFrom(oldNode);
            } else {  // path to Ego was severed. Kill old dyads.
                Context.current.deleteDyads(oldNode, rowNum);
                Node oldReciprocal = parent.ktm.getCell(altInt, rowNum);
                if (oldReciprocal != null) {
                    Context.current.deleteDyads(oldReciprocal, altInt);
                    Integer[] pair = {altInt, rowNum};
                    Context.current.kti.removePair(oldReciprocal.pcString, pair);
                    parent.ktm.removeCell(altInt, rowNum);
                }
            }
        }
    }
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
            saveSILKinFile();
        }
    }

    public void saveSILKinFile() {
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
        params += "  <doInduction value=\"" + ctxt.doInduction + "\"/>";
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
        //	pf.printf("<!DOCTYPE kindata SYSTEM \"kinedit.dtd\">"+EOL+EOL);
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

    public String fixXML(String in) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < in.length(); i++) {
            char c = in.charAt(i);
            switch (c) {
                case '&':
                    sb.append("&amp;");
                    break;
                case '\'':
                    sb.append("&apos;");
                    break;
                default:
                    sb.append(c);
            }
        }
        return "";
    }

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
            saveSILKinFile();
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
        //System.out.println("Loading");
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
        //System.out.println(" Reading Unions ");
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
        //System.out.println("Read Params");

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
        //System.out.println("Done");
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
                parent.suggestionsRef = ctxt.domTheoryRef().issuesForUser;
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
                Library.currDataAuthor = getCurrentUser();
                parent.setActOnSuggsEnabled(ctxt.hasIssues());
            } catch (Exception e) {
                String msg = "While reading " + saveFile.getName() + "\n" + e;
                System.err.println(msg);
                MainPane.displayError(msg, "Internal Problem", JOptionPane.WARNING_MESSAGE);
            }
            Person.folks = ctxt.individualCensus;
            Marriage.knots = ctxt.familyCensus;            
            String frameTitle = fc.getName(saveFile);
            parent.setTitle("Editing: " + frameTitle);
            //  We read in some people, so update egoChoiceBox
            parent.getPPanel().rebuildEgoBox();
            loading = false;
            setPreferredSize(area);
            revalidate();
            repaint();
        }
    }

    String getCurrentUser() throws KSInternalErrorException {
        int size = Context.current.dataAuthors.size(),
                repeats = -1;
        String[] authors = new String[size + 1];
        for (int i = 0; i < size; i++) {
            authors[i] = Context.current.dataAuthors.get(i);
        }
        authors[size] = "Add a New User";
        String author = (String) JOptionPane.showInputDialog(
                parent, "Find yourself in the list below,\n"
                + "or choose 'Add New User'",
                "Register Current User",
                JOptionPane.PLAIN_MESSAGE, null,
                authors, authors[0]);
        if (author == null) {
            author = System.getProperty("user.name");
            String msg = "Will register current data author as '" + author + "'.";
            JOptionPane.showMessageDialog(parent, msg);
            if (!Context.current.dataAuthors.contains(author)) {
                Context.current.dataAuthors.add(author);
            }
        }
        while (author.equals("Add a New User")) {
            repeats++;
            String rep = (repeats == 0 ? "\n" : "\n -- CAREFULLY --\n"),
                    msg = "Please enter your name" + rep + "as it should appear in the User List.",
                    title = author;
            author = JOptionPane.showInputDialog(parent,
                    msg, title, JOptionPane.PLAIN_MESSAGE);
            while (author == null || author.isEmpty() || author.length() < 3) {
                String badAuth = (author == null || author.isEmpty() ? "That " : "'" + author + "' ");
                msg = badAuth + "is not a valid entry. Enter at least\n 3 non-blank characters (e.g. your initials).";
                author = JOptionPane.showInputDialog(parent,
                        msg, title, JOptionPane.PLAIN_MESSAGE);
                if (repeats++ > 2 && (author == null || author.isEmpty() || author.length() < 3)) {
                    author = System.getProperty("user.name");
                    msg = "Will register current data author as '" + author + "'.";
                    JOptionPane.showMessageDialog(parent, msg);
                }
            }
            Object[] options = {"Use '" + author + "'", "Try Again"};
            msg = "Display your name as '" + author + "'?";
            int ch = JOptionPane.showOptionDialog(parent, msg,
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
                JOptionPane.showMessageDialog(parent, msg);
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
