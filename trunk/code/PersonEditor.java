

import java.util.*;
import java.text.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.*;
import java.beans.*;

/** 
The PersonEditor is a window that displays an {@link Individual}'s fields for editing.
It is an extension of KSJInternalFrame so it will appear in the View menu.

@author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
 */
public class PersonEditor extends KSJInternalFrame implements ListSelectionListener {

    public Context ctxt;
    public KSJInternalFrame genericEd;
    public PEdListener listener;
    public Individual ind;
    private int resetInd, resetFam, selectedUDP = 0;
    public JTextField dataAuth, firstNames, lastName, birthDay, birthMnth, birthYr, deathDay, deathMnth, deathYr, udpValText;
    public JTextArea notes, udpTextArea;
    public ArrayList<Object> newValList;
    public UserDefinedProperty udCopy;  //  always the currently-selected UDP for this person
    public boolean childBirth = false, rebuilding, dupEditor = false;
    public JComboBox udPick, spousePicker;
    public JPanel editor, udpArea = new JPanel(), udBtns, marriageBox = new JPanel(), bFam = new JPanel();
    public JLabel typLabel, restrictLabel, udEdInstr, wName, hName;
    public JList udpValList;
    public Object[] udpValArray;
    public JRadioButton male, female;
    public JButton doneBtn, addPerson, deletePerson;
    public String newBirthDate, newDeathDate, edTitle, fieldFlag;
    public Rectangle bnds = new Rectangle();

    public PersonEditor(Context cntxt, KSJInternalFrame ctEd, String title,
            Individual person, Family bthFam, String fieldFlg, int selUDP) {
        super(title);
        ctxt = cntxt;
        genericEd = ctEd;
        edTitle = title;
        ind = person;
        ind.birthFamily = bthFam;
        fieldFlag = fieldFlg;
        selectedUDP = selUDP;
        buildEditor();
    }

    public PersonEditor(Context cntxt, KSJInternalFrame ctEd, String title,
            Individual person, String fieldFlg, int selUDP) {
        super(title);
        ctxt = cntxt;
        genericEd = ctEd;
        edTitle = title;
        ind = person;
        fieldFlag = fieldFlg;
        selectedUDP = selUDP;
        buildEditor();
    }

    public void buildEditor() {
        windowNum = "Person Editor: " + ind.name + " (" + ind.serialNmbr + ")";
        setDefaultCloseOperation(DISPOSE_ON_CLOSE);
        addInternalFrameListener(this);  // allows View Menu to work
        Iterator edIter = MainPane.openPersonEditors.iterator();  //  Check for duplicates
        PersonEditor fe;
        while (edIter.hasNext()) {
            fe = (PersonEditor) edIter.next();
            if (fe.ind == ind) {  //  found open editor for same person
                JOptionPane.showMessageDialog(genericEd,
                        "There is already an editor open for this person.\n"
                        + "Choose it from the 'View' menu.",
                        "Duplicate Editors Not Allowed", JOptionPane.WARNING_MESSAGE);
                dupEditor = true;
                try {
                    setClosed(true);
                } catch (PropertyVetoException pve) {
                    if (MainPane.activity == null) {
                        MainPane.createActivityLog(desktop, menuView);
                    }
                    MainPane.activity.log.append("Closing Duplicate PersonEditor:\n" + pve);
                }
                return;
            }  //  end of found open editor for same person
        }  //  end of loop thru openPersonEditors
        MainPane.openPersonEditors.add(this);
        listener = new PEdListener(this);
        resetInd = ctxt.indSerNumGen;
        resetFam = ctxt.famSerNumGen;
        rebuilding = true;

        Dimension oneLine = new Dimension(250, 30),
                  halfLine = new Dimension(120, 30),
                  digs4 = new Dimension(50, 30),
                  digs2 = new Dimension(35, 30);

        //  HEADER AREA
        editor = new JPanel();
        editor.setLayout(new BoxLayout(editor, BoxLayout.PAGE_AXIS));
        JLabel instr = new JLabel("After editing any field, hit 'Enter' to record changes.");
        instr.setAlignmentX(0.5f);
        editor.add(instr);
        if (ind.deleted) {
            JPanel deleteBox = new JPanel();
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

        //  NAME ROW
        JPanel nameBox = new JPanel();
        nameBox.setLayout(new BoxLayout(nameBox, BoxLayout.LINE_AXIS));
        JLabel serialNum = new JLabel("Serial # " + ind.serialNmbr);
        JLabel nameLabel = new JLabel("Name: ");
        firstNames = new JTextField(ind.firstNames);
        firstNames.setMaximumSize(halfLine);
        lastName = new JTextField(ind.surname);
        lastName.setMaximumSize(halfLine);
        nameBox.add(serialNum);
        nameBox.add(Box.createRigidArea(new Dimension(75, 0)));
        nameBox.add(nameLabel);
        nameBox.add(firstNames);
        nameBox.add(lastName);
        editor.add(nameBox);

        //  BORN ROW
        JPanel bornRow = new JPanel();
        bornRow.setLayout(new BoxLayout(bornRow, BoxLayout.LINE_AXIS));
        bornRow.setAlignmentX(0.0f);
        JLabel bornLabel = new JLabel("Born:  Yr");
        JLabel birthMMLabel = new JLabel("MM");
        JLabel birthDDLabel = new JLabel("DD");
        birthDay = new JTextField();
        birthDay.setActionCommand("new birthdate");
        birthDay.addActionListener(listener);
        birthDay.setMaximumSize(digs2);
        birthMnth = new JTextField();
        birthMnth.setActionCommand("new birthdate");
        birthMnth.addActionListener(listener);
        birthMnth.setMaximumSize(digs2);
        birthYr = new JTextField();
        birthYr.setActionCommand("new birthdate");
        birthYr.addActionListener(listener);
        birthYr.setMaximumSize(digs4);
        birthDay.setText(ind.getBirthDD());
        birthMnth.setText(ind.getBirthMM());
        birthYr.setText(ind.getBirthYr());
        male = new JRadioButton("Male");
        male.setActionCommand("male");
        male.addActionListener(listener);
        bornRow.add(bornLabel);
        bornRow.add(birthYr);
        bornRow.add(birthMMLabel);
        bornRow.add(birthMnth);
        bornRow.add(birthDDLabel);
        bornRow.add(birthDay);
        bornRow.add(Box.createRigidArea(new Dimension(4, 0)));
        bornRow.add(male);


        //  DIED ROW
        JPanel diedRow = new JPanel();
        diedRow.setLayout(new BoxLayout(diedRow, BoxLayout.LINE_AXIS));
        diedRow.setAlignmentX(0.0f);
        JLabel diedLabel = new JLabel("Died:  Yr");
        JLabel deathMMLabel = new JLabel("MM");
        JLabel deathDDLabel = new JLabel("DD");
        deathDay = new JTextField();
        deathDay.setActionCommand("new deathdate");
        deathDay.addActionListener(listener);
        deathDay.setMaximumSize(digs2);
        deathMnth = new JTextField();
        deathMnth.setActionCommand("new deathdate");
        deathMnth.addActionListener(listener);
        deathMnth.setMaximumSize(digs2);
        deathYr = new JTextField();
        deathYr.setActionCommand("new deathdate");
        deathYr.addActionListener(listener);
        deathYr.setMaximumSize(digs4);
        deathDay.setText(ind.getDeathDD());
        deathMnth.setText(ind.getDeathMM());
        deathYr.setText(ind.getDeathYr());
        female = new JRadioButton("Female");
        female.setActionCommand("female");
        female.addActionListener(listener);
        ButtonGroup genderBtns = new ButtonGroup();
        genderBtns.add(male);
        genderBtns.add(female);
        if (ind.gender.equals("M")) {
            male.setSelected(true);
        } else {
            female.setSelected(true);
            ind.gender = "F";  //  if ind was neuter, this makes it a default female
        }
        diedRow.add(diedLabel);
        diedRow.add(deathYr);
        diedRow.add(deathMMLabel);
        diedRow.add(deathMnth);
        diedRow.add(deathDDLabel);
        diedRow.add(deathDay);
        diedRow.add(Box.createRigidArea(new Dimension(4, 0)));
        diedRow.add(female);

        //  COMBINE 2 DATE ROWS
        JPanel datesRow = new JPanel();
        datesRow.setLayout(new BoxLayout(datesRow, BoxLayout.PAGE_AXIS));
        datesRow.setAlignmentX(0.5f);
        datesRow.add(bornRow);
        datesRow.add(diedRow);
        editor.add(Box.createRigidArea(new Dimension(0, 8)));
        editor.add(datesRow);
        editor.add(Box.createRigidArea(new Dimension(0, 8)));

        //  UDP ROW
        // The layout and content of udpArea is variable, depending on the UDPs for this person
        if (ind.userDefinedProperties == null) {
            udpArea = new JPanel();
            udpArea.setLayout(new BoxLayout(udpArea, BoxLayout.PAGE_AXIS));
            udpArea.setBorder(BorderFactory.createTitledBorder(
                    BorderFactory.createLineBorder(Color.red),
                    "UDPs"));
            JLabel line1 = new JLabel("No User-Defined Properties are defined in this context.");
            line1.setAlignmentX(0.5f);
            udpArea.add(line1);
            udpArea.setMinimumSize(new Dimension(250, 80));
            udpArea.setMaximumSize(new Dimension(450, 150));
        } else {
            buildUDPArea(selectedUDP);
        }
        editor.add(Box.createRigidArea(new Dimension(0, 6)));
        editor.add(udpArea);
        editor.add(Box.createRigidArea(new Dimension(0, 16)));

        //  BIRTHFAMILY ROW
        bFam.setLayout(new BoxLayout(bFam, BoxLayout.LINE_AXIS));
        buildBFamRow();
        editor.add(bFam);

        //  MARRIAGES
        marriageBox.setMaximumSize(new Dimension(450, 150));
        buildMarriageBox();
        editor.add(Box.createRigidArea(new Dimension(0, 8)));
        editor.add(marriageBox);
        editor.add(Box.createRigidArea(new Dimension(0, 6)));

        // NOTES
        notes = new JTextArea(PersonPanel.restoreLineBreaks(ind.comment));
        notes.setWrapStyleWord(true);
        JScrollPane noteScroll = new JScrollPane(notes);
        noteScroll.setMinimumSize(new Dimension(400, 50));
        noteScroll.setMaximumSize(new Dimension(400, 100));
        editor.add(noteScroll);
        editor.add(Box.createRigidArea(new Dimension(0, 6)));

        //  DATA AUTHOR LINE
        JPanel dataRow = new JPanel();
        dataRow.setLayout(new BoxLayout(dataRow, BoxLayout.LINE_AXIS));
        JLabel dataAuthLabel = new JLabel("Data Author ");
        dataAuth = new JTextField(ind.dataAuthor);
        dataAuth.setMaximumSize(oneLine);
        JLabel lastMod = new JLabel("Last Modified: " + ind.dataChangeDate);
        dataRow.add(Box.createRigidArea(new Dimension(10, 0)));
        dataRow.add(dataAuthLabel);
        dataRow.add(dataAuth);
        dataRow.add(Box.createRigidArea(new Dimension(10, 0)));
        dataRow.add(lastMod);
        editor.add(dataRow);

        //  BUTTONS AT THE BOTTOM
        JPanel bottomBtns = new JPanel();
        bottomBtns.setLayout(new BoxLayout(bottomBtns, BoxLayout.LINE_AXIS));

        JButton indDelete = new JButton("Delete Person");
        indDelete.setActionCommand("delete person");
        indDelete.addActionListener(listener);
        bottomBtns.add(indDelete);

        doneBtn = new JButton("Done");
        doneBtn.setActionCommand("done");
        doneBtn.addActionListener(listener);
        bottomBtns.add(Box.createRigidArea(new Dimension(100, 0)));
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
        setSize(550, 650);
        setVisible(true);
        rebuilding = false;
    }  //  end of method buildEditor

    public void setTypeAndValue(UserDefinedProperty theUDP, JLabel typLabel, JTextField valText) {
        //  This is the single-valued version of this method -- 0 or 1 value goes in valText
        String valString = "";
        if (theUDP.value.size() > 0) {
            if (theUDP.typ.equals("individual")) {
                valString += ((Individual) theUDP.value.get(0)).name;
            } else {
                valString += theUDP.value.get(0).toString();
            }
        }
        valText.setText(valString);

        if (theUDP.typ.equals("integer")) {
            typLabel.setText("Integer");
        } else if (theUDP.typ.equals("float")) {
            typLabel.setText("Real Number");
        } else if (theUDP.typ.equals("string")) {
            typLabel.setText("String");
        } else if (theUDP.typ.equals("boolean")) {
            typLabel.setText("Boolean");
        } else {
            typLabel.setText("Person");
        }
    }  //  end of method setTypeAndValue - for single value

    public void setTypeAndValue(UserDefinedProperty theUDP, JLabel typLabel) {
        //  This is the multi-valued version of this method -- 0+ values go in udpValList
        //  First set the Type Label
        if (theUDP.typ.equals("integer")) {
            typLabel.setText("Integer");
        } else if (theUDP.typ.equals("float")) {
            typLabel.setText("Real Number");
        } else if (theUDP.typ.equals("string")) {
            typLabel.setText("String");
        } else if (theUDP.typ.equals("boolean")) {
            typLabel.setText("ERROR -- Multi-Valued Boolean!!");
        } else {
            typLabel.setText("Person");
        }

        //  Then select and initialize the list
        if (theUDP.typ.equals("individual")) {
            String valTextString = "";
            Individual valor;
            for (int i = 0; i < theUDP.value.size(); i++) {
                if (i > 0) {
                    valTextString += "\n";
                }
                valor = (Individual) theUDP.value.get(i);
                if ((valor.name != null) && (valor.name.length() > 0)) {
                    valTextString += valor.name + " (" + valor.serialNmbr + ")";
                } else {
                    valTextString += "Person #" + valor.serialNmbr;
                }
            }  //  end of loop through the values
            udpTextArea = new JTextArea(valTextString);
            udpTextArea.setEditable(false);
        } else {  //  non-person selectable list of values
            udpValArray = new Object[theUDP.value.size() + 1];
            udpValArray[0] = "Add-a-Value";
            for (int i = 0; i < theUDP.value.size(); i++) {
                udpValArray[i + 1] = theUDP.value.get(i).toString();
            }
            udpValList = new JList(udpValArray);
            udpValList.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
            udpValList.setLayoutOrientation(JList.VERTICAL);
            udpValList.setVisibleRowCount(-1);
            udpValList.addListSelectionListener(this);
        }

    }  //  end of method setTypeAndValue - multi-valued

    public void buildUDPArea(int ndx) {
        rebuilding = true;
        udpArea.removeAll();
        udpArea.setLayout(new BoxLayout(udpArea, BoxLayout.PAGE_AXIS));
        udpArea.setBorder(BorderFactory.createTitledBorder(
                BorderFactory.createLineBorder(Color.red),
                "View/Edit UDPs"));
        JPanel udpLine = new JPanel();
        udpLine.setLayout(new BoxLayout(udpLine, BoxLayout.LINE_AXIS));
        Dimension sizer = new Dimension(250, 50);
        String[] udpMenu = genUDPMenu();
        udPick = new JComboBox(udpMenu);
        udPick.setSelectedIndex(ndx);
        udCopy = (UserDefinedProperty) ind.userDefinedProperties.get(udpMenu[ndx]);
        udPick.addActionListener(listener);
        udPick.setActionCommand("pick UDP");
        udPick.setMinimumSize(sizer);
        udPick.setMaximumSize(sizer);
        udpLine.add(udPick);
        JLabel typTitle = new JLabel("Type: ");
        typLabel = new JLabel();
        JLabel valTitle = new JLabel("Value: ");

        JPanel valueLine = new JPanel();
        valueLine.setLayout(new BoxLayout(valueLine, BoxLayout.LINE_AXIS));
        valueLine.add(valTitle);
        JScrollPane valScroll;
        if (udCopy.singleValue) {  //  only need a single TextField to hold the value
            udpValText = new JTextField();
            setTypeAndValue(udCopy, typLabel, udpValText);
            udpValText.addActionListener(listener);
            udpValText.setActionCommand("edit single UDP value");
            udpValText.setMinimumSize(new Dimension(250, 40));
            udpValText.setMaximumSize(new Dimension(250, 40));
            valueLine.add(udpValText);
        } else {  //  need a list of the (potentially) multiple values
            setTypeAndValue(udCopy, typLabel);  //  builds udpValList or udpTextArea by side-effect
            if (udCopy.typ.equals("individual")) {
                valScroll = new JScrollPane(udpTextArea);
                udpTextArea.setMinimumSize(new Dimension(400, 150));
                udpTextArea.setMaximumSize(new Dimension(400, 150));
            } else {  //  non-person type of values
                valScroll = new JScrollPane(udpValList);
                udpValList.setMinimumSize(new Dimension(400, 150));
                udpValList.setMaximumSize(new Dimension(400, 150));
            }
            valScroll.setMinimumSize(new Dimension(410, 160));
            valScroll.setMaximumSize(new Dimension(410, 160));
            valueLine.add(valScroll);
        }  //  end of multiple values case
        udpLine.add(Box.createRigidArea(new Dimension(10, 0)));
        udpLine.add(typTitle);
        udpLine.add(typLabel);
        udpArea.add(udpLine);
        udpArea.add(valueLine);
        if (typLabel.getText().equals("Person")) {
            buildPersonBtnBox();  //  finishes udpArea with "Add Person" etc. btns
        } else {
            buildRestrictionBox();  //  finishes udpArea with restriction lines
        }
        rebuilding = false;
    }  //  end of method buildUDPArea

    public String[] genUDPMenu() {
        String[] menu = new String[ind.userDefinedProperties.size()];
        Iterator udpIter = ind.userDefinedProperties.keySet().iterator();
        String item;
        int ndex = 0;
        while (udpIter.hasNext()) {
            item = (String) udpIter.next();
            menu[ndex++] = item;
        }
        return menu;
    }  //  end of method genUDPMenu()

    public void buildBFamRow() {
        bFam.removeAll();
        rebuilding = true;
        JPanel famL1 = new JPanel();
        famL1.setLayout(new BoxLayout(famL1, BoxLayout.PAGE_AXIS));
        JLabel bFamLabel = new JLabel("Birth Family: ");
        JButton chooseBFam = null, viewBFam = new JButton("View/Edit");
        viewBFam.setActionCommand("view birth family");
        viewBFam.addActionListener(listener);
        famL1.add(bFamLabel);
        famL1.add(viewBFam);
        bFam.add(famL1);
        JPanel famL2 = new JPanel();
        famL2.setLayout(new BoxLayout(famL2, BoxLayout.PAGE_AXIS));
        String husbName = " Birth Family", wifeName = "Not Recorded";
        JButton delBFam = new JButton("Delete");
        if (ind.birthFamily == null) {
            viewBFam.setText("Create");
            viewBFam.setActionCommand("create birth family");
            chooseBFam = new JButton("Choose");
            chooseBFam.setActionCommand("choose birth family");
            chooseBFam.addActionListener(listener);
            delBFam.setEnabled(false);
        } else {
            if (ind.birthFamily.husband != null) {
                husbName = ind.birthFamily.husband.name;
            } else {
                husbName = "Father's Name Not Recorded";
            }
            if (ind.birthFamily.wife != null) {
                wifeName = ind.birthFamily.wife.name;
            } else {
                wifeName = "Mother's Name Not Recorded";
            }
        }
        hName = new JLabel("H: " + husbName);
        wName = new JLabel("W: " + wifeName);
        Font font1 = hName.getFont();

        famL2.add(hName);
        famL2.add(wName);
        bFam.add(famL2);
        delBFam.setActionCommand("delete birth family");
        delBFam.addActionListener(listener);
        if (chooseBFam != null) {
            bFam.add(chooseBFam);
        }
        bFam.add(delBFam);
        rebuilding = false;
    }

    public void buildMarriageBox() {
        rebuilding = true;
        String plur = "s";
        if (ind.marriages.size() == 1) {
            plur = "";
        }
        marriageBox.removeAll();
        marriageBox.setLayout(new BoxLayout(marriageBox, BoxLayout.PAGE_AXIS));
        marriageBox.setBorder(BorderFactory.createTitledBorder(
                BorderFactory.createLineBorder(Color.red),
                ind.marriages.size() + " Marriage" + plur));
        JButton chooseSpouse = new JButton("Choose New Spouse");
        chooseSpouse.setActionCommand("choose spouse");
        chooseSpouse.addActionListener(listener);
        JButton createSpouse = new JButton("Create New Spouse");
        createSpouse.setActionCommand("create spouse");
        createSpouse.addActionListener(listener);
        JPanel spBtnBox = new JPanel();
        spBtnBox.setLayout(new BoxLayout(spBtnBox, BoxLayout.LINE_AXIS));
        spBtnBox.add(chooseSpouse);
        spBtnBox.add(createSpouse);
        if (ind.marriages.isEmpty()) {
            JLabel lonely = new JLabel("No marriages or fertile unions.");
            lonely.setAlignmentX(0.5f);
            marriageBox.add(lonely);
            marriageBox.add(spBtnBox);
        } //  end of no-mariages
        else {
            String[] spice = genSpouseMenu(ind, ind.marriages);
            spousePicker = new JComboBox(spice);
            spousePicker.setActionCommand("edit family");
            spousePicker.addActionListener(listener);
            JLabel marriageLabel = new JLabel("Select a marriage to view, edit, or delete that family.");
            marriageLabel.setAlignmentX(0.5f);
            marriageBox.add(marriageLabel);
            marriageBox.add(spousePicker);
            marriageBox.add(spBtnBox);
        }  //  end of marriages-exist
        rebuilding = false;
    }

    public static String[] genSpouseMenu(Individual ind, ArrayList<Object> unions) {
        //  Marriage may have no opp sex spouse, 'cuz it was just created.
        int num = unions.size();
        String[] menu = new String[num];
        Family fam;
        for (int i = 0; i < num; i++) {
            fam = (Family) unions.get(i);
            if (ind.gender.equals("M")) {
                if (fam.wife == null) {
                    menu[i] = "No wife shown for marriage # " + fam.serialNmbr;
                } else {
                    menu[i] = fam.wife.name + " (" + fam.wife.serialNmbr + ")";
                }
            } else {
                if (fam.husband == null) {
                    menu[i] = "No husband shown for marriage # " + fam.serialNmbr;
                } else {
                    menu[i] = fam.husband.name + " (" + fam.husband.serialNmbr + ")";
                }
            }
        }  //  end of loop thru marriages
        return menu;
    }  //  end of method genSpouseMenu

    public void buildRestrictionBox() {
        restrictLabel = new JLabel("No Restrictions on the Value.");
        restrictLabel.setAlignmentX(0.5f);
        String newRestriction = "";
        boolean restrictns = false;
        if ((udCopy.validEntries != null) && (udCopy.validEntries.size() > 0)) {
            newRestriction = "Restricted to: ";
            for (int i = 0; i < udCopy.validEntries.size(); i++) {
                if (i > 0) {
                    newRestriction += ", ";
                }
                newRestriction += udCopy.validEntries.get(i).toString();
            }
            restrictns = true;
        }
        if (udCopy.minVal != null) {
            newRestriction += (restrictns ? "\nMin: " : "Min: ");
            newRestriction += udCopy.minVal;
            restrictns = true;
        }
        if (udCopy.maxVal != null) {
            newRestriction += (restrictns ? "\nMax: " : "Max: ");
            newRestriction += udCopy.maxVal;
            restrictns = true;
        }
        if (restrictns) {
            restrictLabel.setText(newRestriction);
        }

        if (udpValText != null) {
            udpValText.setEditable(true);
        }
        udpArea.add(restrictLabel);
        udEdInstr = new JLabel();
        udEdInstr.setAlignmentX(0.5f);
        if (udCopy.singleValue) {
            udEdInstr.setText("Edit value, then hit 'enter' to record change.");
        } else {
            udEdInstr.setText("Click on the value to edit or delete.");
        }
        udpArea.add(udEdInstr);
    }  //  end of method buildRestrictionBox

    public void buildPersonBtnBox() {
        udBtns = new JPanel();
        udBtns.setLayout(new BoxLayout(udBtns, BoxLayout.LINE_AXIS));
        addPerson = new JButton("Add Person");
        addPerson.setActionCommand("udp add person");
        addPerson.addActionListener(listener);
        if ((udCopy.value.size() > 0) && udCopy.singleValue) {
            addPerson.setEnabled(false);
        }
        deletePerson = new JButton("Delete Person");
        deletePerson.setActionCommand("udp delete person");
        deletePerson.addActionListener(listener);
        if (udCopy.value.isEmpty()) {
            deletePerson.setEnabled(false);
        }
        udBtns.add(addPerson);
        udBtns.add(deletePerson);
        if (udpValText != null) {
            udpValText.setEditable(false);
        }
        udpArea.add(udBtns);
    }  //  end of method buildPersonBtnBox

    public void valueChanged(ListSelectionEvent e) {  // required method for ListSelectionListener
        if (e.getValueIsAdjusting() == false) {
            if (udpValList.getSelectedIndex() > -1) {
                //  We have a final selection.
                int edee = udpValList.getSelectedIndex();
                String titl = "Enter New Value", msg, str, typ = udCopy.typ;
                msg = "Enter a new value for this UDP.\nMust be a " + typLabel.getText()
                        + ".\nTo delete this value, erase it.";
                if (edee == 0) //  always the Add-a-Value spot
                {
                    titl = "Enter Value to Add";
                }
                boolean goofFlag = true;
                while (goofFlag) {
                    goofFlag = false;
                    str = (String) JOptionPane.showInputDialog(this, msg, titl,
                            JOptionPane.PLAIN_MESSAGE, null, null,
                            udpValList.getSelectedValue());
                    if (str == null) {
                        udpValList.clearSelection();
                        return;  //  user cancelled
                    }
                    if (str.equals("")) {  //  user erased this value = deletion.
                        if (edee == 0) {
                            udpValList.clearSelection();
                            return;  //  cancelling the addition = no change
                        }
                        udCopy.value.remove(edee - 1);
                        udpValArray = new Object[udCopy.value.size() + 1];
                        udpValArray[0] = "Add-a-Value";
                        for (int i = 0; i < udCopy.value.size(); i++) {
                            udpValArray[i + 1] = udCopy.value.get(i).toString();
                        }
                        udpValList.setListData(udpValArray);
                        return;
                    }
                    try {  //  an exception will be thrown if type or validity is violated
                        if (typ.equals("integer")) {
                            Integer newInt = new Integer(str);
                            if (udCopy.validEntries != null && !udCopy.validEntries.isEmpty()
                                    && udCopy.validEntries.indexOf(newInt) == -1) {
                                throw new KSConstraintInconsistency("Not a permitted value.");
                            }
                            if (edee > 0) {
                                udCopy.value.set(edee - 1, newInt);
                            } else {
                                udCopy.value.add(newInt);  //  new value goes on end of list
                            }
                        } else if (typ.equals("string")) {
                            if (udCopy.validEntries != null && !udCopy.validEntries.isEmpty()
                                    && udCopy.validEntries.indexOf(str) == -1) {
                                throw new KSConstraintInconsistency("Not a permitted value.");
                            }
                            if (edee > 0) {
                                udCopy.value.set(edee - 1, str);
                            } else {
                                udCopy.value.add(str);
                            }
                        } else if (typ.equals("float")) {
                            Float newFlt = new Float(str);
                            if (udCopy.validEntries != null && !udCopy.validEntries.isEmpty()
                                    && udCopy.validEntries.indexOf(newFlt) == -1) {
                                throw new KSConstraintInconsistency("Not a permitted value.");
                            }
                            if (edee > 0) {
                                udCopy.value.set(edee - 1, newFlt);
                            } else {
                                udCopy.value.add(newFlt);
                            }
                        } else if (typ.equals("boolean")) {  //  no restricted values for booleans
                            if ((str.equals("true")) || (str.equals("false"))) {
                                if (edee > 0) {
                                    udCopy.value.set(edee - 1, new Boolean(str));
                                } else {
                                    udCopy.value.add(new Boolean(str));
                                }
                            } else {
                                throw new KinshipSystemException("Bad boolean value: must be 'true' or 'false'.");
                            }
                        }
                    } catch (KSConstraintInconsistency ksci) {
                        String msg2 = ksci.getMessage() + ".\n Please try again.";
                        JOptionPane.showMessageDialog(genericEd, msg2, "Error Parsing UDP Value", JOptionPane.WARNING_MESSAGE);
                        goofFlag = true;
                    } catch (KinshipSystemException kse) {
                        String msg2 = kse.getMessage() + "\n Please try again.";
                        JOptionPane.showMessageDialog(genericEd, msg2, "Error Parsing UDP Value", JOptionPane.WARNING_MESSAGE);
                    } catch (Exception exc) {
                        String msg2 = "UDP Value field should contain a " + typLabel + ".\n"
                                + "Please try again.";
                        JOptionPane.showMessageDialog(genericEd, msg2, "Error Parsing UDP Value", JOptionPane.WARNING_MESSAGE);
                        goofFlag = true;
                    }  //  end of catch block
                }  //  end of while-goofFlag loop
                //  If we get here, a valid new value has been parsed.  Refresh the udpValList
                udpValArray = new Object[udCopy.value.size() + 1];
                udpValArray[0] = "Add-a-Value";
                for (int i = 0; i < udCopy.value.size(); i++) {
                    udpValArray[i + 1] = udCopy.value.get(i).toString();
                }
                udpValList.setListData(udpValArray);
                udpValList.clearSelection();
            }  //  end of valid selection
        }  //  end of stable choice
    }  //  end of method valueChanged

    public class PEdListener implements ActionListener {

        KSJInternalFrame ed;

        public PEdListener(KSJInternalFrame ped) {
            ed = ped;
        }  //  end of constructor


        public void actionPerformed(ActionEvent e) {
            if (rebuilding) {
                return;
            }
            String a, b, c = "";
            if (e.getActionCommand().equals("un-delete")) {
                //  Can only fire when a deleted record is being edited.
                ind.deleted = false;
                if (ind.location.getX() < 10 || ind.location.getY() < 20) {
                    ind.location = new Point(10,20);
                }
                ctxt.ktm.insertNewRow(ind.serialNmbr);
                if (SIL_Edit.editWindow != null) {
                    SIL_Edit.editWindow.ktm.insertNewRow(ind.serialNmbr);
                }
            } else if (e.getActionCommand().equals("new birthdate")) {
                a = birthDay.getText();
                b = birthYr.getText();
                c = birthMnth.getText();
                int nmbr = a.length() + b.length() + c.length();
                if (nmbr > 0) {
                    try {
                        UDate.valiDate(b,c,a, ind, false);
                    }catch(KSDateParseException exc) {
                        JOptionPane.showMessageDialog(ed, exc,
                                "Unrecognized Date Input",
                                JOptionPane.WARNING_MESSAGE);
                    }
                }
            } //  end of "new birthdate"
            else if (e.getActionCommand().equals("new deathdate")) {
                a = deathDay.getText();
                b = deathYr.getText();
                c = deathMnth.getText();
                int nmbr = a.length() + b.length() + c.length();
                if (nmbr > 0) {
                    try {
                        UDate.valiDate(b,c,a, ind, true);
                    }catch(KSDateParseException exc) {
                        JOptionPane.showMessageDialog(ed, exc,
                                "Unrecognized Date Input",
                                JOptionPane.WARNING_MESSAGE);
                    }
                }
            } //  end of "new deathdate"
            else if (e.getActionCommand().equals("male")) {
                //  Must have just been changed from female.
                if (ind.marriages.size() > 0) {
                    int troubles = 0, flips = 0;
                    Family fam;
                    Individual spouse;
                    for (int i = 0; i < ind.marriages.size(); i++) {
                        fam = (Family) ind.marriages.get(i);
                        if (fam.husband == ind) {
                            spouse = fam.wife;
                        } else {
                            spouse = fam.husband;
                        }
                        if ((spouse.gender.equals("M")) && (spouse.name != null)
                                && (spouse.name.indexOf("Presumed") == -1)) {
                            troubles++;
                        } else if ((spouse.gender.equals("M")) && (spouse.name != null)
                                && (spouse.name.indexOf("Presumed") > -1)) {
                            flips++;  //  found a presumed spouse with wrong presumed gender
                        }
                    }  //  end of loop thru marriages
                    if (troubles > 0) {
                        String msg, plural = "s", article = "those";
                        if (troubles == 1) {
                            plural = "";
                            article = "that";
                        }
                        msg = "CAUTION: You have changed gender to 'male' but this Person has\n"
                                + troubles + " male marriage partner" + plural + ".  You can only change gender after\n"
                                + "deleting " + article + " marriage" + plural + ".";
                        JOptionPane.showMessageDialog(ed, msg, "Illegal Gender Change", JOptionPane.WARNING_MESSAGE);
                        female.setSelected(true);
                        return;
                    }
                    ind.gender = "M";  //  if we get here, he's unmarried or no troubles
                    if (flips > 0) {  //  we got here because troubles = 0
                        //  Must flip Presumed Spouse genders, too.
                        String oppSex = "F";
                        if (ind.gender.equals(oppSex)) {
                            oppSex = "M";
                        }
                        for (int i = 0; i < ind.marriages.size(); i++) {
                            fam = (Family) ind.marriages.get(i);
                            if (fam.husband == ind) {
                                spouse = fam.wife;
                            } else {
                                spouse = fam.husband;
                            }
                            if ((spouse.gender.equals(ind.gender)) && (spouse.name != null)
                                    && (spouse.name.indexOf("Presumed") > -1)) {
                                spouse.gender = oppSex;
                            }
                        }  //  end of loop thru marriages
                    }  //  end of flips > 0
                } //  end of person-is-married!!
                else {
                    ind.gender = "M";  //  if we get here, he's unmarried
                }				//  end of sex-change-was-made
            } else if (e.getActionCommand().equals("female")) {
                //  Must have just been changed from male.
                if (ind.marriages.size() > 0) {
                    int troubles = 0, flips = 0;
                    Family fam;
                    Individual spouse;
                    for (int i = 0; i < ind.marriages.size(); i++) {
                        fam = (Family) ind.marriages.get(i);
                        if (fam.husband == ind) {
                            spouse = fam.wife;
                        } else {
                            spouse = fam.husband;
                        }
                        if ((spouse.gender.equals("F")) && (spouse.name != null)
                                && (spouse.name.indexOf("Presumed") == -1)) {
                            troubles++;
                        } else if ((spouse.gender.equals("F")) && (spouse.name != null)
                                && (spouse.name.indexOf("Presumed") > -1)) {
                            flips++;  //  found a presumed spouse with wrong presumed gender
                        }
                    }  //  end of loop thru marriages
                    if (troubles > 0) {
                        String msg, plural = "s", article = "those";
                        if (troubles == 1) {
                            plural = "";
                            article = "that";
                        }
                        msg = "CAUTION: You have changed gender to 'female' but this Person has\n"
                                + troubles + " female marriage partner" + plural + ".  You can only change gender after\n"
                                + "deleting " + article + " marriage" + plural + ".";
                        JOptionPane.showMessageDialog(ed, msg, "Illegal Gender Change", JOptionPane.INFORMATION_MESSAGE);
                        male.setSelected(true);
                        return;
                    }

                    ind.gender = "F";
                    if (flips > 0) {  //  we got here because troubles = 0
                        //  Must flip Presumed Spouse genders, too.
                        String oppSex = "F";
                        if (ind.gender.equals(oppSex)) {
                            oppSex = "M";
                        }
                        for (int i = 0; i < ind.marriages.size(); i++) {
                            fam = (Family) ind.marriages.get(i);
                            if (fam.husband == ind) {
                                spouse = fam.wife;
                            } else {
                                spouse = fam.husband;
                            }
                            if ((spouse.gender.equals(ind.gender)) && (spouse.name != null)
                                    && (spouse.name.indexOf("Presumed") > -1)) {
                                spouse.gender = oppSex;
                            }
                        }  //  end of loop thru marriages
                    }  //  end of flips > 0
                } //  end of person-is-married!!
                else {
                    ind.gender = "F";  //  if we get here, she's unmarried
                }
            } else if (e.getActionCommand().equals("view birth family")) {
                FamilyEditor fEd = new FamilyEditor(ctxt, ed, "View/Edit a Family", ind.birthFamily, "view birth fam");
                if (!fEd.dupEditor) {
                    fEd.desktop = desktop;
                    fEd.setLocation(350, 100);
                    desktop.add(fEd);
                    fEd.miViewMe = menuView.add(fEd.windowNum);
                    fEd.miViewMe.addActionListener(fEd);
                    fEd.menuView = menuView;
                    fEd.show();
                    fEd.moveToFront();
                    try {
                        fEd.setSelected(true);
                    } catch (PropertyVetoException pv) {
                    }
                } else {
                    try {
                        fEd.setClosed(true);
                    } catch (PropertyVetoException pv) {
                    }
                }
            } //  end of view-birth-family
            else if (e.getActionCommand().equals("create birth family")) {
                Family bFam = new Family(ctxt, true);
                FamilyEditor fEd = new FamilyEditor(ctxt, ed, "Create Birth Family", bFam, ind, "create birth fam");
                if (!fEd.dupEditor) {
                    fEd.desktop = desktop;
                    fEd.setLocation(350, 100);
                    desktop.add(fEd);
                    fEd.miViewMe = menuView.add(fEd.windowNum);
                    fEd.miViewMe.addActionListener(fEd);
                    fEd.menuView = menuView;
                    fEd.show();
                    fEd.moveToFront();
                    try {
                        fEd.setSelected(true);
                    } catch (PropertyVetoException pv) {
                    }
                } else {
                    try {
                        fEd.setClosed(true);
                    } catch (PropertyVetoException pv) {
                    }
                }
            } //  end of create-a-new-birthFamily
            else if (e.getActionCommand().equals("choose birth family")) {
                ArrayList<Family> famList = new ArrayList<Family>();
                for (int i = 0; i < ctxt.familyCensus.size(); i++) //  filter deleted records
                {
                    if (!(ctxt.familyCensus.get(i)).deleted) {
                        famList.add(ctxt.familyCensus.get(i));
                    }
                }
                FamilyPicker fPick = new FamilyPicker(famList, "Choose Birth Family of " + ind.name,
                        "choose birth", ed);
                fPick.desktop = desktop;
                fPick.setLocation(350, 100);
                desktop.add(fPick);
                fPick.miViewMe = menuView.add(fPick.windowNum);
                fPick.miViewMe.addActionListener(fPick);
                fPick.menuView = menuView;
                fPick.show();
                fPick.moveToFront();
                try {
                    fPick.setSelected(true);
                } catch (PropertyVetoException pv) {
                }
            } else if (e.getActionCommand().equals("delete birth family")) {
                int choice = JOptionPane.showConfirmDialog(ed,
                        "Are you sure you want to delete the birth family?");
                if (choice != JOptionPane.YES_OPTION) {
                    return;
                }
                JOptionPane.showMessageDialog(ed,
                        "This family will be removed as the birth family of\n"
                        + firstNames.getText() + " " + lastName.getText() +
                        ".  Siblings' birth families are not affected.\n"
                        + "The family will not be erased.  Use Family Editor to do that.",
                        "Scope of Deletion", JOptionPane.WARNING_MESSAGE);
                //  OK.  User is well warned what they're doing.
                ind.birthFamily = null;
                bFam.removeAll();
                buildBFamRow();
                editor.getBounds(bnds);
                editor.repaint(bnds);
            } //  end of delete-birthFamily
            else if (e.getActionCommand().equals("pick UDP")) {
                //  post the new UDP selection, and repaint
                selectedUDP = udPick.getSelectedIndex();
                buildUDPArea(selectedUDP);
                editor.getBounds(bnds);
                editor.repaint(bnds);
                try {
                    ed.setSelected(false);  // to force the repaint
                    ed.setSelected(true);
                } catch (PropertyVetoException pve) {
                }
            } else if (e.getActionCommand().equals("udp add person")) {
                ArrayList<Object> folks = new ArrayList<Object>();
                Individual sumbody;
                for (int i = 0; i < ctxt.individualCensus.size(); i++) {
                    sumbody = (Individual) ctxt.individualCensus.get(i);
                    if (!sumbody.deleted) {
                        folks.add(sumbody);
                    }
                }
                String title, plural = "s";
                if (udCopy.singleValue) {
                    plural = "";
                }
                title = "Choose Person" + plural + " to Add.";
                PersonPicker pp = new PersonPicker(folks, title, "Add UDP", selectedUDP, udCopy.singleValue, ed);
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
            } //  end of add-udp-person
            else if (e.getActionCommand().equals("udp delete person")) {
                if (udCopy.singleValue) {  //  only 1 person we can delete.  Easy!
                    udCopy.value.clear();
                    udpValText.setText("");
                    addPerson.setEnabled(true);
                    deletePerson.setEnabled(false);
                    udpArea.getBounds(bnds);
                    udpArea.repaint(bnds);
                    return;
                }  //  end of single-Valued
                if (udCopy.value.size() < 2) {  //  multi-valued, but only 1 item
                    udCopy.value.clear();
                    buildUDPArea(selectedUDP);
                    udpArea.getBounds(bnds);
                    udpArea.repaint(bnds);
                    try {
                        ed.setSelected(false);  // to force the repaint
                        ed.setSelected(true);
                    } catch (PropertyVetoException pve) {
                    }
                    return;
                }  //  end of only 1 item
                Individual psn;
                ArrayList<Object> source = new ArrayList<Object>();
                for (int j = 0; j < udCopy.value.size(); j++) {
                    psn = (Individual) udCopy.value.get(j);
                    if (!psn.deleted) {
                        source.add(psn);
                    }
                }  //  end of filtering out deleted records
                String title = "Choose Person to Delete.";
                PersonPicker pp = new PersonPicker(source, title, "Delete UDP", selectedUDP, false, ed);
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
            } //  end of udp-delete-person
            else if (e.getActionCommand().equals("edit single UDP value")) {
                //  Can't get here if typ = indiv.
                String newVal = udpValText.getText().trim(), valType = typLabel.getText();
                try {  //  an exception will be thrown if type is violated
                    if (udCopy.typ.equals("integer")) {
                        Integer newInt = new Integer(newVal);
                        if (udCopy.validEntries != null && !udCopy.validEntries.isEmpty()
                                && udCopy.validEntries.indexOf(newInt) == -1) {
                            throw new KSConstraintInconsistency("Not a permitted value.");
                        }
                        if (udCopy.value.isEmpty()) {
                            udCopy.value.add(newInt);
                        } else {
                            udCopy.value.set(0, newInt);
                        }
                    } else if (udCopy.typ.equals("float")) {
                        Float newFlt = new Float(newVal);
                        if (udCopy.validEntries != null && !udCopy.validEntries.isEmpty()
                                && udCopy.validEntries.indexOf(newFlt) == -1) {
                            throw new KSConstraintInconsistency("Not a permitted value.");
                        }
                        if (udCopy.value.isEmpty()) {
                            udCopy.value.add(newFlt);
                        } else {
                            udCopy.value.set(0, newFlt);
                        }
                    } else if (udCopy.typ.equals("boolean")) {  //  no restricted values for booleans
                        if ((newVal.equals("true")) || (newVal.equals("false"))) {
                            if (udCopy.value.isEmpty()) {
                                udCopy.value.add(new Boolean(newVal));
                            } else {
                                udCopy.value.set(0, new Boolean(newVal));
                            }
                        } else {
                            throw new KinshipSystemException("Bad boolean value: must be 'true' or 'false'.");
                        }
                    } else if (udCopy.typ.equals("string")) {
                        if (udCopy.validEntries != null && !udCopy.validEntries.isEmpty()
                                && udCopy.validEntries.indexOf(newVal) == -1) {
                            throw new KSConstraintInconsistency("Not a permitted value.");
                        }
                        if (udCopy.value.isEmpty()) {
                            udCopy.value.add(newVal);
                        } else {
                            udCopy.value.set(0, newVal);
                        }
                    }
                } catch (KSConstraintInconsistency ksci) {
                    String msg2 = ksci.getMessage() + "\n Please try again.";
                    JOptionPane.showMessageDialog(genericEd, msg2, "Error Parsing UDP Value", JOptionPane.WARNING_MESSAGE);
                    return;
                } catch (KinshipSystemException kse) {
                    String msg2 = kse.getMessage() + "\n Please try again.";
                    JOptionPane.showMessageDialog(genericEd, msg2, "Error Parsing UDP Value", JOptionPane.WARNING_MESSAGE);
                    return;
                } catch (Exception exc) {
                    String msg = "UDP Value field should contain 0 or 1 " + valType + ".\n"
                            + "Reverting to prior value.  Please try again.";
                    JOptionPane.showMessageDialog(genericEd, msg, "Error Parsing UDP Value", JOptionPane.WARNING_MESSAGE);
                    setTypeAndValue(udCopy, typLabel, udpValText);
                    return;
                }  //  end of catch block
            } else if (e.getActionCommand().equals("choose spouse")) {
                String oppSex = "F";
                if (ind.gender.equals("F")) {
                    oppSex = "M";
                }
                Individual date;
                ArrayList<Object> gurls = new ArrayList<Object>();
                for (int i = 0; i < ctxt.individualCensus.size(); i++) {
                    date = (Individual) ctxt.individualCensus.get(i);
                    if ((oppSex.equals(date.gender)) && (!date.deleted)) {
                        gurls.add(date);
                    }
                }
                PersonPicker pp = new PersonPicker(gurls, "Pick New Spouse", "marriages", true, ed);
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
            } else if (e.getActionCommand().equals("create spouse")) {
                String oppSex = "F";
                if (ind.gender.equals("F")) {
                    oppSex = "M";
                }
                Individual sps = new Individual(ctxt, oppSex);
                Family newFam = new Family(ctxt, ind, sps);
                FamilyEditor fEd = new FamilyEditor(ctxt, ed, "Create Marriage", newFam, "create marriage");
                if (!fEd.dupEditor) {
                    fEd.desktop = desktop;
                    fEd.setLocation(350, 100);
                    desktop.add(fEd);
                    fEd.miViewMe = menuView.add(fEd.windowNum);
                    fEd.miViewMe.addActionListener(fEd);
                    fEd.menuView = menuView;
                    fEd.show();
                    fEd.moveToFront();
                    try {
                        fEd.setSelected(true);
                    } catch (PropertyVetoException pv) {
                    }
                } else {
                    try {
                        fEd.setClosed(true);
                    } catch (PropertyVetoException pv) {
                    }
                }
            } else if (e.getActionCommand().equals("edit family")) {
                int which = spousePicker.getSelectedIndex();
                Family fam = (Family) ind.marriages.get(which);
                FamilyEditor fEd = new FamilyEditor(ctxt, ed, "View/Edit a Marriage", fam, "marriage");
                if (!fEd.dupEditor) {
                    fEd.desktop = desktop;
                    fEd.setLocation(350, 100);
                    desktop.add(fEd);
                    fEd.miViewMe = menuView.add(fEd.windowNum);
                    fEd.miViewMe.addActionListener(fEd);
                    fEd.menuView = menuView;
                    fEd.show();
                    fEd.moveToFront();
                    try {
                        fEd.setSelected(true);
                    } catch (PropertyVetoException pv) {
                    }
                } else {
                    try {
                        fEd.setClosed(true);
                    } catch (PropertyVetoException pv) {
                    }
                }
            } else if (e.getActionCommand().equals("delete person")) {
                if (fieldFlag.equals("husband")) {
                    JOptionPane.showMessageDialog(ed,
                            "You may not delete this man, who is a husband.\n"
                            + "Edit the family and delete him there, if you like",
                            "Deletion Not Allowed", JOptionPane.WARNING_MESSAGE);
                    return;  //  end of ooops-we-can't-delete-husbands-from-here
                }

                int wives, choice = JOptionPane.showConfirmDialog(ed,
                        "To record death, enter a date of death.\n"
                        + "Deletion is only when a person NEVER EXISTED.\n"
                        + "Are you sure you want to delete this Person?",
                        "Confirm", JOptionPane.YES_NO_OPTION);
                if (choice == JOptionPane.YES_OPTION) {
                    wives = ind.marriages.size();
                    if (wives > 0) {
                        String plural = "";
                        if (wives > 1) {
                            plural = "s";
                        }
                        choice = JOptionPane.showConfirmDialog(ed,
                                "This person has " + wives + " marriage" + plural + ".\n"
                                + "Spouses become single; kids become parentless.\n"
                                + "Are you SURE you want to delete this Person?",
                                "Yes, We ARE Paranoid!", JOptionPane.YES_NO_OPTION);
                    }
                    if (choice == JOptionPane.YES_OPTION) {  //  OK.  They must mean it.
                        if (ind.serialNmbr == ctxt.indSerNumGen - 1) //  Just created.  Un-do it.
                        {
                            ctxt.individualCensus.remove(--ctxt.indSerNumGen);
                        } else {
                            ind.deleted = true;
                        }
                        Context.current.ktm.deletePerson(ind);
                        if (ind.birthFamily != null) {
                            int kidNum = ind.birthFamily.children.indexOf(ind);
                            ind.birthFamily.children.remove(kidNum);
                        }  //  end of remove-him-from-birthFam
                        if (wives > 0) {
                            Individual spouse, kid;
                            Family famly, union;
                            for (int i = 0; i < wives; i++) {
                                famly = (Family) ind.marriages.get(i);
                                if (famly.husband == ind) {
                                    spouse = famly.wife;
                                } else {
                                    spouse = famly.husband;
                                }
                                //  Eliminate this marriage in other people's records
                                for (int j = 0; j < famly.children.size(); j++) { // make orphans
                                    kid = (Individual) famly.children.get(j);
                                    kid.birthFamily = null;
                                }  //  end of loop thru kids
                                for (int k = 0; k < spouse.marriages.size(); k++) {
                                    union = (Family) spouse.marriages.get(k);
                                    if ((union.husband == ind) || (union.wife == ind)) {
                                        spouse.marriages.remove(k);
                                    }
                                }  //  end of loop thru spouses marriages
                                if (famly.serialNmbr == ctxt.famSerNumGen - 1) //  Just created.  Un-do it.
                                {
                                    ctxt.familyCensus.remove(--ctxt.famSerNumGen);
                                } else {
                                    famly.deleted = true;
                                }
                            }  //  end of loop thru marriages
                        }  //  end of he's-married
                        if (fieldFlag.equals("child")) {  // deleted person was existing kid in FamEd
                            FamilyEditor editor = (FamilyEditor) genericEd;
                            editor.fam.children.remove(editor.fam.children.indexOf(ind));
                            editor.buildKidBox();
                            editor.getBounds(bnds);
                            editor.repaint(bnds);
                            try {
                                editor.setSelected(true);
                            } catch (PropertyVetoException pve) {
                                if (MainPane.activity == null) {
                                    MainPane.createActivityLog(desktop, menuView);
                                }
                                MainPane.activity.log.append("While updating a FamilyEditor from PersonEditor:\n" + pve);
                            }
                        }
                        //  end of we're-editing-existing-child-for-the-FamilyEditor
                    }  //  end of REALLY-confirmed-delete
                }  //  end of confirmed-delete-request
                try {
                    ed.setClosed(true);
                } catch (PropertyVetoException pve) {
                    if (MainPane.activity == null) {
                        MainPane.createActivityLog(desktop, menuView);
                    }
                    MainPane.activity.log.append("In PersonEditor:\n" + pve);
                }
                if (MainPane.curr_CUC_Editor != null) {
                    MainPane.curr_CUC_Editor.populationBox.removeAll();
                    MainPane.curr_CUC_Editor.buildPopulationBox();
                }
                return;
            } //  end of delete-person
            else if (e.getActionCommand().equals("done")) {
                ind.dataAuthor = dataAuth.getText();
                ind.firstNames = firstNames.getText();
                ind.surname = lastName.getText();
                ind.name = ind.firstNames + " " + ind.surname;
                ind.comment = FamilyPanel.convertBannedCharacters(notes.getText());
                ind.dataChangeDate = UDate.today();
                //  Check for dates entered without hitting 'Enter'
                a = birthDay.getText();
                b = birthYr.getText();
                c = birthMnth.getText();
                int nmbr = a.length() + b.length() + c.length();
                if (nmbr > 0) {
                    try {
                        UDate.valiDate(b,c,a, ind, false);
                    }catch(KSDateParseException exc) {
                        JOptionPane.showMessageDialog(ed, exc,
                                "Unrecognized Date Input",
                                JOptionPane.WARNING_MESSAGE);
                    }
                }
                a = deathDay.getText();
                b = deathYr.getText();
                c = deathMnth.getText();
                nmbr = a.length() + b.length() + c.length();
                if (nmbr > 0) {
                    try {
                        UDate.valiDate(b,c,a, ind, true);
                    }catch(KSDateParseException exc) {
                        JOptionPane.showMessageDialog(ed, exc,
                                "Unrecognized Date Input",
                                JOptionPane.WARNING_MESSAGE);
                    }
                }
                //  Now determine what must be updated on the calling editor
                if (fieldFlag.equals("census")) {
                    //  the Context Editor is automaticaly updated on close of this editor
                } else if (fieldFlag.equals("child")) {
                    FamilyEditor editor = (FamilyEditor) genericEd;
                    editor.buildKidBox();
                    editor.getBounds(bnds);
                    editor.repaint(bnds);
                    try {
                        editor.setSelected(true);
                    } catch (PropertyVetoException pve) {
                        if (MainPane.activity == null) {
                            MainPane.createActivityLog(desktop, menuView);
                        }
                        MainPane.activity.log.append("While updating a FamilyEditor from PersonEditor:\n" + pve);
                    }
                    //  end of we're-editing-a-new-child-for-the-FamilyEditor
                } else if (fieldFlag.equals("husband")) {
                    FamilyEditor editor = (FamilyEditor) genericEd;
                    editor.buildSpouseRow(editor.hRow, "husband");
                    editor.getBounds(bnds);
                    editor.repaint(bnds);
                    try {
                        editor.setSelected(true);
                    } catch (PropertyVetoException pve) {
                        if (MainPane.activity == null) {
                            MainPane.createActivityLog(desktop, menuView);
                        }
                        MainPane.activity.log.append("While updating a FamilyEditor from PersonEditor:\n" + pve);
                    }
                    //  end of we're-editing-a-husband-for-the-FamilyEditor
                } else if (fieldFlag.equals("wife")) {
                    FamilyEditor editor = (FamilyEditor) genericEd;
                    editor.buildSpouseRow(editor.wRow, "wife");
                    editor.getBounds(bnds);
                    editor.repaint(bnds);
                    try {
                        editor.setSelected(true);
                    } catch (PropertyVetoException pve) {
                        if (MainPane.activity == null) {
                            MainPane.createActivityLog(desktop, menuView);
                        }
                        MainPane.activity.log.append("While updating a FamilyEditor from PersonEditor:\n" + pve);
                    }
                    //  end of we're-editing-a-wife-for-the-FamilyEditor
                }
                //  Now close the viewer
                try {
                    ed.setClosed(true);
                } catch (PropertyVetoException pve) {
                    if (MainPane.activity == null) {
                        MainPane.createActivityLog(desktop, menuView);
                    }
                    MainPane.activity.log.append("While closing a PersonEditor:\n" + pve);
                }

                //  Update the ContextEditor, if still open
                if (MainPane.curr_CUC_Editor != null) {
                    MainPane.curr_CUC_Editor.populationBox.removeAll();
                    MainPane.curr_CUC_Editor.buildPopulationBox();
                }
            }  //  end of action = done
        }  //  end of ActionListerner method actionPerformed
    }  //  end of inner class PEdListener
}  //  end of class PersonEditor

