

import java.util.*;
import java.text.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.*;
import java.beans.*;

/** 
The FamilyEditor is a window that displays a {@link Family}'s fields for editing.
It is an extension of KSJInternalFrame so it will appear in the View menu.

@author		Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
 */
public class FamilyEditor extends KSJInternalFrame {

    public Context ctxt;
    public KSJInternalFrame genericEd;
    public FEdListener listener;
    public Family fam;
    public JTextField wedDay, wedYear, wedMnth, divDay, divYear, divMnth, dataAuth;
    public JTextArea notes;
    public boolean rebuilding, dupEditor = false;
    public JPanel editor, deleteBox, hRow = new JPanel(), wRow = new JPanel(), kidBox = new JPanel();
    public JComboBox childPicker, reasonBox;
    public JButton doneBtn, deleteKid;
    public Rectangle bnds = new Rectangle();
    public String fieldFlag;

    public FamilyEditor(Context cntxt, KSJInternalFrame ctEd, String title,
            Family theFam, String fieldFlg) {
        super(title);
        fam = theFam;
        windowNum = "Family Editor: " + " (" + fam.serialNmbr + ")";
        ctxt = cntxt;
        genericEd = ctEd;
        fieldFlag = fieldFlg;
        buildEditor();
    }

    public FamilyEditor(Context cntxt, KSJInternalFrame ctEd, String title,
            Family theFam, Individual theKid, String fieldFlg) {
        super(title);
        fam = theFam;
        windowNum = "Create Family: " + fam.serialNmbr;
        ctxt = cntxt;
        genericEd = ctEd;
        fam.addChild(theKid);
        fieldFlag = fieldFlg;
        buildEditor();
    }

    public void buildEditor() {
        setDefaultCloseOperation(DISPOSE_ON_CLOSE);
        addInternalFrameListener(this);  // allows View Menu to work
        Iterator edIter = MainPane.openFamilyEditors.iterator();
        FamilyEditor fe;
        while (edIter.hasNext()) {
            fe = (FamilyEditor) edIter.next();
            if (fe.fam == fam) {  //  found open editor for same family
                JOptionPane.showMessageDialog(genericEd,
                        "There is already an editor open for this family.\n"
                        + "Choose it from the 'View' menu.",
                        "Duplicate Editors Not Allowed", JOptionPane.WARNING_MESSAGE);
                dupEditor = true;
                try {
                    setClosed(true);
                } catch (PropertyVetoException pve) {
                    if (MainPane.activity == null) {
                        MainPane.createActivityLog(desktop, menuView);
                    }
                    MainPane.activity.log.append("Closing Duplicate FamilyEditor:\n" + pve);
                }
                return;
            }  //  end of found open editor for same family
        }  //  end of loop thru openFamilyEditors
        MainPane.openFamilyEditors.add(this);
        listener = new FEdListener(this);
        rebuilding = true;

        //  HEADER AREA
        editor = new JPanel();
        editor.setLayout(new BoxLayout(editor, BoxLayout.PAGE_AXIS));
        JLabel instr = new JLabel("After editing any field, hit 'Enter' to record changes.");
        instr.setAlignmentX(0.5f);
        editor.add(instr);
        if (fam.deleted) {
            deleteBox = new JPanel();
            deleteBox.setLayout(new BoxLayout(deleteBox, BoxLayout.LINE_AXIS));
            JLabel deLabel = new JLabel("This is a DELETED record.");
            deleteBox.add(deLabel);
            JButton unDelBtn = new JButton("Un-Delete");
            unDelBtn.setActionCommand("un-delete");
            unDelBtn.addActionListener(listener);
            deleteBox.add(unDelBtn);
            editor.add(deleteBox);
        }
        editor.add(Box.createRigidArea(new Dimension(0, 8)));

        Dimension oneLine = new Dimension(250, 30),
                  halfLine = new Dimension(120, 30),
                  digs4 = new Dimension(50, 30),
                  digs2 = new Dimension(35, 30);
        //  TOP ROW DATA
        JPanel topRow = new JPanel();
        topRow.setLayout(new BoxLayout(topRow, BoxLayout.LINE_AXIS));
        JLabel serialNum = new JLabel("Serial # " + fam.serialNmbr);
        JLabel lastMod = new JLabel("Last Modified: " + fam.dataChangeDate);
        topRow.add(serialNum);
        topRow.add(Box.createRigidArea(new Dimension(100, 0)));
        topRow.add(lastMod);
        editor.add(topRow);

        //  BEGIN DATE ROW
        JPanel beginDateRow = new JPanel();
        beginDateRow.setLayout(new BoxLayout(beginDateRow, BoxLayout.LINE_AXIS));
        beginDateRow.setAlignmentX(0.0f);
        String mmdd, yr;
        JLabel wedLabel = new JLabel("Began:   Yr");
        JLabel mmLabel = new JLabel("MM");
        JLabel ddLabel = new JLabel("DD");
        wedMnth = new JTextField();
        wedMnth.setMaximumSize(digs2);
        wedMnth.setActionCommand("new wed date");
        wedMnth.addActionListener(listener);
        wedDay = new JTextField();
        wedDay.setMaximumSize(digs2);
        wedDay.setActionCommand("new wed date");
        wedDay.addActionListener(listener);
        wedYear = new JTextField();
        wedYear.setMaximumSize(digs4);
        wedYear.setActionCommand("new wed date");
        wedYear.addActionListener(listener);
        wedDay.setText(fam.getMarriageDD());
        wedYear.setText(fam.getMarriageYr());
        wedMnth.setText(fam.getMarriageMM());
        beginDateRow.add(wedLabel);
        beginDateRow.add(wedYear);
        beginDateRow.add(mmLabel);
        beginDateRow.add(wedMnth);
        beginDateRow.add(ddLabel);
        beginDateRow.add(wedDay);

        //  END DATE ROW
        JPanel endDateRow = new JPanel();
        endDateRow.setLayout(new BoxLayout(endDateRow, BoxLayout.LINE_AXIS));
        endDateRow.setAlignmentX(0.0f);
        JLabel divLabel = new JLabel("Ended:   Yr");
        JLabel mmLabel2 = new JLabel("MM");
        JLabel ddLabel2 = new JLabel("DD");
        divDay = new JTextField();
        divDay.setMaximumSize(digs2);
        divDay.setActionCommand("new div date");
        divDay.addActionListener(listener);
        divMnth = new JTextField();
        divMnth.setMaximumSize(digs2);
        divMnth.setActionCommand("new div date");
        divMnth.addActionListener(listener);
        divYear = new JTextField();
        divYear.setMaximumSize(digs4);
        divYear.setActionCommand("new div date");
        divYear.addActionListener(listener);
        divDay.setText(fam.getDivorceDD());
        divMnth.setText(fam.getDivorceMM());
        divYear.setText(fam.getDivorceYr());
        reasonBox = new JComboBox();
        String[] reasons = new String[] { "NA", "Death", "Divorce", "Other" };
        reasonBox.setModel(new javax.swing.DefaultComboBoxModel(reasons));
        int reasonNmbr = 0;
        if (fam.reason.equals("Death")) reasonNmbr = 1;
        else if (fam.reason.equals("Divorce")) reasonNmbr = 2;
        else if (fam.reason.equals("Other")) reasonNmbr = 3;
        reasonBox.setSelectedIndex(reasonNmbr);
        reasonBox.setMaximumSize(oneLine);
        reasonBox.setActionCommand("new reason");
        reasonBox.addActionListener(listener);
        endDateRow.add(divLabel);
        endDateRow.add(divYear);
        endDateRow.add(mmLabel2);
        endDateRow.add(divMnth);
        endDateRow.add(ddLabel2);
        endDateRow.add(divDay);
        endDateRow.add(Box.createRigidArea(new Dimension(8, 0)));
        endDateRow.add(reasonBox);

        //  COMBINE DATE ROWS
        JPanel datesRow = new JPanel();
        datesRow.setLayout(new BoxLayout(datesRow, BoxLayout.PAGE_AXIS));
        datesRow.setAlignmentX(0.5f);
        datesRow.add(beginDateRow);
        datesRow.add(endDateRow);
        editor.add(Box.createRigidArea(new Dimension(0, 8)));
        editor.add(datesRow);
        editor.add(Box.createRigidArea(new Dimension(0, 8)));

        //  HUSBAND & WIFE  ROWS
        buildSpouseRow(hRow, "husband");
        buildSpouseRow(wRow, "wife");
        editor.add(hRow);
        editor.add(wRow);

        //  CHILDREN
        buildKidBox();
        editor.add(Box.createRigidArea(new Dimension(0, 8)));
        editor.add(kidBox);

        //  NOTES
        notes = new JTextArea(fam.comment);
        notes.setWrapStyleWord(true);
        JScrollPane noteScroll = new JScrollPane(notes);
        noteScroll.setMinimumSize(new Dimension(400, 60));
        noteScroll.setPreferredSize(new Dimension(400,100));
        noteScroll.setMaximumSize(new Dimension(400, 400));
        editor.add(Box.createRigidArea(new Dimension(0, 6)));
        editor.add(noteScroll);
        editor.add(Box.createRigidArea(new Dimension(0, 6)));

        //  DATA AUTHOR LINE
        JPanel dataRow = new JPanel();
        dataRow.setLayout(new BoxLayout(dataRow, BoxLayout.LINE_AXIS));
        JLabel dataAuthLabel = new JLabel("Data Author ");
        dataAuth = new JTextField(fam.dataAuthor);
        dataAuth.setMaximumSize(oneLine);
        dataRow.add(Box.createRigidArea(new Dimension(10, 0)));
        dataRow.add(dataAuthLabel);
        dataRow.add(dataAuth);
        dataRow.add(Box.createRigidArea(new Dimension(10, 0)));
        editor.add(dataRow);

        //  BUTTONS AT THE BOTTOM
        JPanel bottomBtns = new JPanel();
        JButton famDelete = new JButton("Delete Family");
        famDelete.setActionCommand("delete family");
        famDelete.addActionListener(listener);
        bottomBtns.add(famDelete);
        bottomBtns.add(Box.createRigidArea(new Dimension(100, 0)));

        doneBtn = new JButton("Done");
        doneBtn.setActionCommand("done");
        doneBtn.addActionListener(listener);
        bottomBtns.add(doneBtn);

        editor.add(Box.createRigidArea(new Dimension(0, 6)));
        editor.add(bottomBtns);

        JPanel sideFrame = new JPanel();
        sideFrame.setLayout(new BoxLayout(sideFrame, BoxLayout.LINE_AXIS));
        sideFrame.add(Box.createRigidArea(new Dimension(10, 0)));
        sideFrame.add(editor);
        sideFrame.add(Box.createRigidArea(new Dimension(10, 0)));
        getContentPane().add(sideFrame);
        addInternalFrameListener(this);
        setSize(550, 550);
        setVisible(true);
        rebuilding = false;
    }  //  end of buildEditor()

    public void buildSpouseRow(JPanel sRow, String typ) {
        rebuilding = true;
        sRow.removeAll();
        sRow.setLayout(new BoxLayout(sRow, BoxLayout.LINE_AXIS));
        String spouseName = "<no name>", label;
        Individual spouse;
        if (typ.equals("husband")) {  //  it's-a-husband
            spouse = fam.husband;
            label = "Husband";
        } else {  //  it's-a-wife
            spouse = fam.wife;
            label = "Wife";
        }
        if ((spouse != null) && (spouse.name != null) && (spouse.name.length() > 0)) {
            spouseName = spouse.name;
        }
        if (spouse != null) {
            spouseName += " (" + spouse.serialNmbr + ")";
        } else {
            spouseName = "none";
        }
        JLabel hLabel = new JLabel(label + ": " + spouseName);
        sRow.add(hLabel);
        if (spouse != null) {
            JButton viewSpouse = new JButton("View/Edit");
            viewSpouse.setActionCommand("view/edit " + typ);
            viewSpouse.addActionListener(listener);
            sRow.add(viewSpouse);
            JButton delSpouse = new JButton("Delete");
            delSpouse.setActionCommand("delete " + typ);
            delSpouse.addActionListener(listener);
            sRow.add(delSpouse);
        } //  end of existing spouse
        else {
            JButton pickSpouse = new JButton("Choose " + label);
            pickSpouse.setActionCommand("pick " + typ);
            pickSpouse.addActionListener(listener);
            sRow.add(pickSpouse);
            JButton makeSpouse = new JButton("Create " + label);
            makeSpouse.setActionCommand("make " + typ);
            makeSpouse.addActionListener(listener);
            sRow.add(makeSpouse);
        }
        rebuilding = false;
    }  //  end of method buildSpouseRow

    public void buildKidBox() {
        rebuilding = true;
        String plur = "ren";
        if (fam.children.size() == 1) {
            plur = "";
        }
        kidBox.removeAll();
        kidBox.setLayout(new BoxLayout(kidBox, BoxLayout.PAGE_AXIS));
        kidBox.setBorder(BorderFactory.createTitledBorder(
                BorderFactory.createLineBorder(Color.green),
                fam.children.size() + " Child" + plur));
        kidBox.setMaximumSize(new Dimension(450, 150));
        JPanel kidBtnBox = new JPanel();
        kidBtnBox.setLayout(new BoxLayout(kidBtnBox, BoxLayout.LINE_AXIS));
        JButton addKid = new JButton("Add Existing Child");
        addKid.setActionCommand("pick kid");
        addKid.addActionListener(listener);
        kidBtnBox.add(addKid);
        JButton makeKid = new JButton("Create New Child");
        makeKid.setActionCommand("make kid");
        makeKid.addActionListener(listener);
        kidBtnBox.add(makeKid);
        deleteKid = new JButton("Delete Child");
        deleteKid.setActionCommand("delete kid");
        deleteKid.addActionListener(listener);
        kidBtnBox.add(deleteKid);
        if (fam.children.isEmpty()) {
            JLabel lonely = new JLabel("No children recorded.");
            lonely.setAlignmentX(0.5f);
            deleteKid.setEnabled(false);
            kidBox.add(lonely);
            kidBox.add(kidBtnBox);
        } //  end of no-kids
        else {
            String[] kids = ContextEditor.genIndMenu(fam.children);
            childPicker = new JComboBox(kids);
            childPicker.setActionCommand("edit child");
            childPicker.addActionListener(listener);
            JLabel kidLabel = new JLabel("Select child to view/edit");
            kidLabel.setAlignmentX(0.5f);
            kidBox.add(kidLabel);
            kidBox.add(childPicker);
            kidBox.add(kidBtnBox);
        }  //  end of kids-exist
        rebuilding = false;
    }  //  end of method buildKidBox



    public class FEdListener implements ActionListener {

        KSJInternalFrame ed;

        public FEdListener(KSJInternalFrame ksed) {
            ed = ksed;
        }  //  end of constructor

        public void actionPerformed(ActionEvent e) {
            String a, b, c = "";
            if (rebuilding) {
                return;
            }
            if (e.getActionCommand().equals("un-delete")) {
                //  This action only fires if the Family is a deleted record.
                fam.deleted = false;
                editor.remove(deleteBox);
                editor.getBounds(bnds);
                editor.repaint(bnds);
            } else if (e.getActionCommand().equals("new wed date")) {
                a = wedDay.getText();
                b = wedYear.getText();
                c = wedMnth.getText();
                int nmbr = a.length() + b.length() + c.length();
                if (nmbr > 0) {
                    try {
                        UDate.valiDate(b, c, a, fam, false);
                    }catch(KSDateParseException exc) {
                        JOptionPane.showMessageDialog(ed, exc,
                                "Unrecognized Date Input",
                                JOptionPane.WARNING_MESSAGE);
                    }
                } //  end of "new wedding day"
            } else if (e.getActionCommand().equals("new reason")) {
                fam.reason = (String)reasonBox.getSelectedItem();
            } else if (e.getActionCommand().equals("new div date")) {
                a = divDay.getText();
                b = divYear.getText();
                c = divMnth.getText();
                int nmbr = a.length() + b.length() + c.length();
                if (nmbr > 0) {
                    try {
                        UDate.valiDate(b, c, a, fam, true);
                    }catch(KSDateParseException exc) {
                        JOptionPane.showMessageDialog(ed, exc,
                                "Unrecognized Date Input",
                                JOptionPane.WARNING_MESSAGE);
                    }
                }  //  end of "new divorce date"
            } else if (e.getActionCommand().equals("view/edit husband")) {
                PersonEditor ped = new PersonEditor(ctxt, ed, "View or Edit Husband", fam.husband, "husband", 0);
                if (!ped.dupEditor) {
                    ped.desktop = desktop;
                    desktop.add(ped);
                    ped.miViewMe = menuView.add(ped.windowNum);
                    ped.miViewMe.addActionListener(ped);
                    ped.menuView = menuView;
                    ped.show();
                    ped.moveToFront();
                    try {
                        ped.setSelected(true);
                    } catch (PropertyVetoException pv) {
                    }
                } else {
                    try {
                        ped.setClosed(true);
                    } catch (PropertyVetoException pve) {
                        if (MainPane.activity == null) {
                            MainPane.createActivityLog(desktop, menuView);
                        }
                        MainPane.activity.log.append("While closing a duplicate PersonEditor:\n" + pve);
                    }
                }  //  end of edit-husband
            } else if (e.getActionCommand().equals("delete husband")) {
                Individual hubby = fam.husband;  // could be a new selection or pre-existing
                String msg;
                int choice, wives = hubby.marriages.size();
                if (wives > 1) {
                    JOptionPane.showMessageDialog(ed,
                            "This person has " + wives + " marriages.  If you blot him out,\n"
                            + "other spouses become single; other kids become parentless.\n"
                            + "Consider this as you proceed.",
                            "Better To Tell You NOW!", JOptionPane.WARNING_MESSAGE);

                }
                msg = "If this man has died, EDIT him and insert date of death.\n"
                        + "If he doesn't belong in THIS marriage, but he exists, then UN-MARRY him.\n"
                        + "If he never existed, to blot out all trace of him, BLOT OUT.\n"
                        + "To cancel, close this window.";
                String[] options = {"Edit", "Un-Marry", "Blot Out"};
                choice = JOptionPane.showOptionDialog(ed, msg, "Choose Type of Deletion",
                        JOptionPane.YES_NO_CANCEL_OPTION,
                        JOptionPane.QUESTION_MESSAGE,
                        null,
                        options,
                        options[0]);
                if (choice == 0) {  // Really Edit Husband
                    PersonEditor ped = new PersonEditor(ctxt, ed, "View or Edit Husband", hubby, "husband", 0);
                    if (!ped.dupEditor) {
                        ped.desktop = desktop;
                        desktop.add(ped);
                        ped.miViewMe = menuView.add(ped.windowNum);
                        ped.miViewMe.addActionListener(ped);
                        ped.menuView = menuView;
                        ped.show();
                        ped.moveToFront();
                        try {
                            ped.setSelected(true);
                        } catch (PropertyVetoException pv) {
                        }
                    } else {
                        try {
                            ped.setClosed(true);
                        } catch (PropertyVetoException pve) {
                            if (MainPane.activity == null) {
                                MainPane.createActivityLog(desktop, menuView);
                            }
                            MainPane.activity.log.append("While closing a duplicate PersonEditor:\n" + pve);
                        }
                    }
                    return;
                } else if (choice == 1) {  //  Cut him loose, but don't hurt him.
                    hubby.marriages.remove(fam);
                    fam.husband = null;
                } else {  // Eradicate him
                    Family other;
                    for (int i = 0; i < wives; i++) {
                        other = (Family) fam.husband.marriages.get(i);
                        other.husband = null;
                    }  //  end of loop thru marriages
                    if (hubby.birthFamily != null) {
                        hubby.birthFamily.children.remove(hubby);
                    }
                    hubby.marriages.remove(fam);
                    fam.husband = null;
                    hubby.deleted = true;
                    if (hubby.serialNmbr == ctxt.indSerNumGen) //  un-do his creation
                    {
                        ctxt.individualCensus.remove(--ctxt.indSerNumGen);
                    }
                }
                buildSpouseRow(hRow, "husband");
                editor.getBounds(bnds);
                editor.repaint(bnds);

            } else if (e.getActionCommand().equals("pick husband")) {
                ArrayList<Object> manList = new ArrayList<Object>();
                Individual bachelor;
                for (int i = 0; i < ctxt.indSerNumGen; i++) {
                    bachelor = (Individual) ctxt.individualCensus.get(i);
                    if ((bachelor.gender.equals("M")) && (!bachelor.deleted)) {
                        manList.add(bachelor);
                    }
                }
                PersonPicker pp = new PersonPicker(manList, "Pick a Husband", "husband", true, ed);
                pp.desktop = desktop;
                desktop.add(pp);
                pp.miViewMe = menuView.add(pp.windowNum);
                pp.miViewMe.addActionListener(pp);
                pp.menuView = menuView;
                pp.show();
                pp.moveToFront();
                try {
                    pp.setSelected(true);
                } catch (PropertyVetoException pv) {
                }
                //  end of pick-a-husband
            } else if (e.getActionCommand().equals("make husband")) {
                fam.husband = new Individual(ctxt, "M", fam);
                PersonEditor ped = new PersonEditor(ctxt, ed, "Create Husband", fam.husband, "husband", 0);
                if (!ped.dupEditor) {
                    ped.desktop = desktop;
                    desktop.add(ped);
                    ped.miViewMe = menuView.add(ped.windowNum);
                    ped.miViewMe.addActionListener(ped);
                    ped.menuView = menuView;
                    ped.show();
                    ped.moveToFront();
                    try {
                        ped.setSelected(true);
                    } catch (PropertyVetoException pv) {
                    }
                } else {
                    try {
                        ped.setClosed(true);
                    } catch (PropertyVetoException pve) {
                        if (MainPane.activity == null) {
                            MainPane.createActivityLog(desktop, menuView);
                        }
                        MainPane.activity.log.append("While closing a duplicate PersonEditor:\n" + pve);
                    }
                }
                //  end of make-a-husband
            } else if (e.getActionCommand().equals("view/edit wife")) {
                PersonEditor ped = new PersonEditor(ctxt, ed, "View or Edit Wife", fam.wife, "wife", 0);
                if (!ped.dupEditor) {
                    ped.desktop = desktop;
                    desktop.add(ped);
                    ped.miViewMe = menuView.add(ped.windowNum);
                    ped.miViewMe.addActionListener(ped);
                    ped.menuView = menuView;
                    ped.show();
                    ped.moveToFront();
                    try {
                        ped.setSelected(true);
                    } catch (PropertyVetoException pv) {
                    }
                } else {
                    try {
                        ped.setClosed(true);
                    } catch (PropertyVetoException pve) {
                        if (MainPane.activity == null) {
                            MainPane.createActivityLog(desktop, menuView);
                        }
                        MainPane.activity.log.append("While closing a duplicate PersonEditor:\n" + pve);
                    }
                }
                //  end of edit-wife
            } else if (e.getActionCommand().equals("delete wife")) {
                Individual dear = fam.wife;
                String msg;
                int choice, husbands = dear.marriages.size();
                if (husbands > 1) {
                    JOptionPane.showMessageDialog(ed,
                            "This person has " + husbands + " husbands.  If you blot her out,\n"
                            + "other husbands become single; other kids become motherless.\n"
                            + "Consider this as you proceed.",
                            "Better To Tell You NOW!", JOptionPane.WARNING_MESSAGE);
                }
                msg = "If this woman has died, EDIT her and insert date of death.\n"
                        + "If she doesn't belong in THIS marriage, but she exists, then UNMARRY her.\n"
                        + "If she never existed, then BLOT OUT all trace of her."
                        + "To cancel, close this window.";
                String[] options = {"Edit", "Un-Marry", "Blot Out"};
                choice = JOptionPane.showOptionDialog(ed, msg, "Choose Type of Deletion",
                        JOptionPane.YES_NO_CANCEL_OPTION,
                        JOptionPane.QUESTION_MESSAGE,
                        null,
                        options,
                        options[0]);
                if (choice == 0) {  // Really Edit wife
                    PersonEditor ped = new PersonEditor(ctxt, ed, "View or Edit Wife", fam.wife, "wife", 0);
                    if (!ped.dupEditor) {
                        ped.desktop = desktop;
                        desktop.add(ped);
                        ped.miViewMe = menuView.add(ped.windowNum);
                        ped.miViewMe.addActionListener(ped);
                        ped.menuView = menuView;
                        ped.show();
                        ped.moveToFront();
                        try {
                            ped.setSelected(true);
                        } catch (PropertyVetoException pv) {
                        }
                    } else {
                        try {
                            ped.setClosed(true);
                        } catch (PropertyVetoException pve) {
                            if (MainPane.activity == null) {
                                MainPane.createActivityLog(desktop, menuView);
                            }
                            MainPane.activity.log.append("While closing a duplicate PersonEditor:\n" + pve);
                        }
                    }
                    return;
                } else if (choice == 1) {  //  Cut her loose, but don't hurt her.
                    dear.marriages.remove(fam);
                    fam.wife = null;
                    fam.wife = null;
                } else {  // Eradicate her
                    Family other;
                    for (int i = 0; i < husbands; i++) {
                        other = (Family) fam.wife.marriages.get(i);
                        other.wife = null;
                    }  //  end of loop thru marriages
                    if (dear.birthFamily != null) {
                        dear.birthFamily.children.remove(dear);
                    }
                    dear.marriages.remove(fam);
                    dear.deleted = true;
                    if (dear.serialNmbr == ctxt.indSerNumGen) //  un-do her creation
                    {
                        ctxt.individualCensus.remove(--ctxt.indSerNumGen);
                    }
                }
                editor.getBounds(bnds);
                editor.repaint(bnds);
            } else if (e.getActionCommand().equals("pick wife")) {
                ArrayList<Object> girlList = new ArrayList<Object>();
                Individual bachelorette;
                for (int i = 0; i < ctxt.indSerNumGen; i++) {
                    bachelorette = (Individual) ctxt.individualCensus.get(i);
                    if ((bachelorette.gender.equals("F")) && (!bachelorette.deleted)) {
                        girlList.add(bachelorette);
                    }
                }
                PersonPicker pp = new PersonPicker(girlList, "Pick a Wife", "wife", true, ed);
                pp.desktop = desktop;
                desktop.add(pp);
                pp.miViewMe = menuView.add(pp.windowNum);
                pp.miViewMe.addActionListener(pp);
                pp.menuView = menuView;
                pp.show();
                pp.moveToFront();
                try {
                    pp.setSelected(true);
                } catch (PropertyVetoException pv) {
                }
                //  end of choose-a-wife-from-population
            } else if (e.getActionCommand().equals("make wife")) {
                fam.wife = new Individual(ctxt, "F", fam);
                PersonEditor ped = new PersonEditor(ctxt, ed, "Create wife", fam.wife, "wife", 0);
                if (!ped.dupEditor) {
                    ped.desktop = desktop;
                    desktop.add(ped);
                    ped.miViewMe = menuView.add(ped.windowNum);
                    ped.miViewMe.addActionListener(ped);
                    ped.menuView = menuView;
                    ped.show();
                    ped.moveToFront();
                    try {
                        ped.setSelected(true);
                    } catch (PropertyVetoException pv) {
                    }
                } else {
                    try {
                        ped.setClosed(true);
                    } catch (PropertyVetoException pve) {
                        if (MainPane.activity == null) {
                            MainPane.createActivityLog(desktop, menuView);
                        }
                        MainPane.activity.log.append("While closing a duplicate PersonEditor:\n" + pve);
                    }
                }
                //  end of make-wife
            } else if (e.getActionCommand().equals("edit child")) {
                //  Edit the child chosen in the childPicker ComboBox
                int which = childPicker.getSelectedIndex();
                Individual kiddie = (Individual) fam.children.get(which);
                PersonEditor ped = new PersonEditor(ctxt, ed, "View or Edit Child", kiddie, "child", 0);
                if (!ped.dupEditor) {
                    ped.desktop = desktop;
                    desktop.add(ped);
                    ped.miViewMe = menuView.add(ped.windowNum);
                    ped.miViewMe.addActionListener(ped);
                    ped.menuView = menuView;
                    ped.show();
                    ped.moveToFront();
                    try {
                        ped.setSelected(true);
                    } catch (PropertyVetoException pv) {
                    }
                } else {
                    try {
                        ped.setClosed(true);
                    } catch (PropertyVetoException pve) {
                        if (MainPane.activity == null) {
                            MainPane.createActivityLog(desktop, menuView);
                        }
                        MainPane.activity.log.append("While closing a duplicate PersonEditor:\n" + pve);
                    }
                }
                //  end of edit-child
            } else if (e.getActionCommand().equals("pick kid")) {
                ArrayList<Object> folks = new ArrayList<Object>();
                Individual sumbody;
                for (int i = 0; i < ctxt.individualCensus.size(); i++) {
                    sumbody = (Individual) ctxt.individualCensus.get(i);
                    if (!sumbody.deleted) {
                        folks.add(sumbody);
                    }
                }
                PersonPicker pp = new PersonPicker(folks, "Add Kid(s)", "children", false, ed);
                pp.desktop = desktop;
                desktop.add(pp);
                pp.miViewMe = menuView.add(pp.windowNum);
                pp.miViewMe.addActionListener(pp);
                pp.menuView = menuView;
                pp.show();
                pp.moveToFront();
                try {
                    pp.setSelected(true);
                } catch (PropertyVetoException pv) {
                }
                //  end of pick-kid
            } else if (e.getActionCommand().equals("make kid")) {
                Individual newKid = new Individual(ctxt, "", "M", fam);
                PersonEditor ped = new PersonEditor(ctxt, ed, "Create Child", newKid, "child", 0);
                if (!ped.dupEditor) {
                    ped.desktop = desktop;
                    desktop.add(ped);
                    ped.miViewMe = menuView.add(ped.windowNum);
                    ped.miViewMe.addActionListener(ped);
                    ped.menuView = menuView;
                    ped.show();
                    ped.moveToFront();
                    try {
                        ped.setSelected(true);
                    } catch (PropertyVetoException pv) {
                    }
                } else {
                    try {
                        ped.setClosed(true);
                    } catch (PropertyVetoException pve) {
                        if (MainPane.activity == null) {
                            MainPane.createActivityLog(desktop, menuView);
                        }
                        MainPane.activity.log.append("While closing a duplicate PersonEditor:\n" + pve);
                    }
                }
            } else if (e.getActionCommand().equals("delete kid")) {
                rebuilding = true;
                if (fam.children.size() == 1) {  // duh!
                    childPicker.removeAllItems();
                    fam.children.clear();
                    deleteKid.setEnabled(false);
                    return;
                }
                PersonPicker pp = new PersonPicker(fam.children, "Delete Kid(s)", "delete children", false, ed);
                pp.desktop = desktop;
                desktop.add(pp);
                pp.miViewMe = menuView.add(pp.windowNum);
                pp.miViewMe.addActionListener(pp);
                pp.menuView = menuView;
                pp.show();
                pp.moveToFront();
                try {
                    pp.setSelected(true);
                } catch (PropertyVetoException pv) {
                }
                rebuilding = false;
            } else if (e.getActionCommand().equals("delete family")) {
                if (fieldFlag.equals("create birth fam") || fieldFlag.equals("view birth fam")) {
                    JOptionPane.showMessageDialog(ed,
                            "You may not delete this birth family of a person.\n"
                            + "Edit the person and delete the birth family there, if you like",
                            "Deletion Not Allowed", JOptionPane.WARNING_MESSAGE);
                    return;  //  end of can't-delete-birthFams-from-here
                }  //  end of prohibiting deletion of a birthFam from PersonEd
                String orph = "Deleting a family makes the children parentless.\n";
                if (fam.children.isEmpty()) {
                    orph = "";
                }
                int choice = JOptionPane.showConfirmDialog(ed,
                        orph + "Are you sure you want to delete this family?",
                        "Confirm Deletion", JOptionPane.YES_NO_OPTION);
                if (choice == JOptionPane.YES_OPTION) {
                    for (int i = 0; i < fam.children.size(); i++) {
                        ((Individual) fam.children.get(i)).birthFamily = null;
                    }
                    fam.husband.marriages.remove(fam);
                    fam.wife.marriages.remove(fam);
                    fam.deleted = true;
                    if (fam.serialNmbr == ctxt.famSerNumGen) {
                        ctxt.familyCensus.remove(--ctxt.famSerNumGen);
                    }
                    updateCallingEditor();
                    try {
                        ed.setClosed(true);
                    } catch (PropertyVetoException pve) {
                        if (MainPane.activity == null) {
                            MainPane.createActivityLog(desktop, menuView);
                        }
                        MainPane.activity.log.append("In FamilyEditor:\n" + pve);
                    }
                } //  end of confirmed-delete-request
                //  end of delete-family
            } else if (e.getActionCommand().equals("done")) {
                ctxt.saveState = true;
                fam.comment = notes.getText();
                fam.dataChangeDate = UDate.today();
                fam.dataAuthor = dataAuth.getText();
                // check for date entries without 'Enter' key
                a = wedDay.getText();
                b = wedYear.getText();
                c = wedMnth.getText();
                int nmbr = a.length() + b.length() + c.length();
                if (nmbr > 0) {
                    try {
                        UDate.valiDate(b, c, a, fam, false);
                    }catch(KSDateParseException exc) {
                        JOptionPane.showMessageDialog(ed, exc,
                                "Unrecognized Date Input",
                                JOptionPane.WARNING_MESSAGE);
                    }
                }  //  end of if-wed-date-field-not-empty
                a = divDay.getText();
                b = divYear.getText();
                c = divMnth.getText();
                nmbr = a.length() + b.length() + c.length();
                if (nmbr > 0) {
                    try {
                        UDate.valiDate(b, c, a, fam, true);
                    }catch(KSDateParseException exc) {
                        JOptionPane.showMessageDialog(ed, exc,
                                "Unrecognized Date Input",
                                JOptionPane.WARNING_MESSAGE);
                    }
                }  //  end of if-divorce-date-field-not-empty
                updateCallingEditor();
                try {
                    ed.setClosed(true);
                } catch (PropertyVetoException pve) {
                    if (MainPane.activity == null) {
                        MainPane.createActivityLog(desktop, menuView);
                    }
                    MainPane.activity.log.append("In FamilyEditor:\n" + pve);
                }
            }  //  end of action = done
        }  //  end of ActionListerner method actionPerformed

        public void updateCallingEditor() {
            //  Now determine what field on calling editor needs to be updated
            if (fieldFlag.equals("census")) {
                ContextEditor editor = (ContextEditor) genericEd;
                editor.rebuilding = true;
                editor.famPick.removeAllItems();
                String[] famNames = editor.genFamMenu(editor.ctxt.familyCensus);
                for (int j = 0; j < famNames.length; j++) {
                    editor.famPick.addItem(famNames[j]);
                }
                editor.rebuilding = false;
                editor.getBounds(bnds);
                editor.repaint(bnds);
                try {
                    editor.setSelected(true);
                } catch (PropertyVetoException pve) {
                    if (MainPane.activity == null) {
                        MainPane.createActivityLog(desktop, menuView);
                    }
                    MainPane.activity.log.append("While updating the ContextEditor from FamilyEditor:\n" + pve);
                }
                //  end of editing-a-family-from-the-Context-Editor's-census
            } else if (fieldFlag.equals("view birth fam")) {
                PersonEditor editor = (PersonEditor) genericEd;
                String husbName, wifeName;
                if (fam.husband != null) {
                    husbName = fam.husband.name;
                } else {
                    husbName = "Father's Name Not Recorded";
                }
                if (fam.wife != null) {
                    wifeName = fam.wife.name;
                } else {
                    wifeName = "Mother's Name Not Recorded";
                }
                editor.hName.setText("H: " + husbName);
                editor.wName.setText("W: " + wifeName);
                editor.getBounds(bnds);
                editor.repaint(bnds);
                try {
                    editor.setSelected(true);
                } catch (PropertyVetoException pve) {
                    if (MainPane.activity == null) {
                        MainPane.createActivityLog(desktop, menuView);
                    }
                    MainPane.activity.log.append("While updating a PersonEditor from FamilyEditor:\n" + pve);
                }
                //  end of editing-birthFamily-from-the-Person-Editor
            } else if (fieldFlag.equals("create birth fam")) {
                PersonEditor editor = (PersonEditor) genericEd;
                editor.ind.birthFamily = fam;
                editor.buildBFamRow();
                editor.getBounds(bnds);
                editor.repaint(bnds);
                try {
                    editor.setSelected(true);
                } catch (PropertyVetoException pve) {
                    if (MainPane.activity == null) {
                        MainPane.createActivityLog(desktop, menuView);
                    }
                    MainPane.activity.log.append("While updating a PersonEditor from FamilyEditor:\n" + pve);
                }
                //  end of editing-new-birthFamily-from-the-Person-Editor
            } else if ((fieldFlag.equals("marriage")) || (fieldFlag.equals("create marriage"))) {
                PersonEditor editor = (PersonEditor) genericEd;
                editor.buildMarriageBox();
                editor.getBounds(bnds);
                editor.repaint(bnds);
                try {
                    editor.setSelected(true);
                } catch (PropertyVetoException pve) {
                    if (MainPane.activity == null) {
                        MainPane.createActivityLog(desktop, menuView);
                    }
                    MainPane.activity.log.append("While updating a PersonEditor from FamilyEditor:\n" + pve);
                }
                //  end of editing-family-from-Person-Editor's-marriages
            }

            //  Update the ContextEditor, if still open
            if (MainPane.curr_CUC_Editor != null) {
                MainPane.curr_CUC_Editor.populationBox.removeAll();
                MainPane.curr_CUC_Editor.buildPopulationBox();
            }
        }
    }  //  end of inner class FEdListener
}  //  end of class FamilyEditor

