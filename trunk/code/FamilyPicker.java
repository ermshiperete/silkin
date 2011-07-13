
import java.util.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.*;
import java.beans.*;

/** 
The FamilyPicker is a window that displays a menu of {@link Family} objects.  When one family
is selected, its fields are displayed to confirm it is the right one.  When the User clicks
the "Choose" button, the Family selected is added to the appropriate field(s) of the <code>editor</code>
which launched this picker.  
<p>
It is an extension of KSJInternalFrame so it will appear in the View menu.

@author		Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
 */
public class FamilyPicker extends KSJInternalFrame {

    public KSJInternalFrame genericEditor;
    public FPListener listener;
    public Family theFam;
    public ArrayList<Family> source;
    public ArrayList<Object> selections = new ArrayList<Object>();
    public boolean oneValue;
    public String fieldName;
    public JPanel picker;
    public JComboBox familyPick;
    public JLabel husbName, wifeName, wedDay, divDay;
    public JTextArea kidList, pickList;
    public JButton unDo, choose;
    public Rectangle bnds = new Rectangle();

    public FamilyPicker(ArrayList<Family> srce, String title, String fieldNam, KSJInternalFrame editor) {
        super(title);
        windowNum = "Family Picker: " + fieldNam;
        source = srce;
        genericEditor = editor;
        fieldName = fieldNam;
        setDefaultCloseOperation(DISPOSE_ON_CLOSE);
        addInternalFrameListener(this);  // allows View Menu to work
        listener = new FPListener(this);

        //  MENU OF FAMILIES AVAILABLE
        picker = new JPanel();
        picker.setLayout(new BoxLayout(picker, BoxLayout.PAGE_AXIS));
        JPanel line1 = new JPanel();
        line1.setLayout(new BoxLayout(line1, BoxLayout.LINE_AXIS));
        JLabel avaiLable = new JLabel("Families Available: ");
        Dimension sizer = new Dimension(250, 50);
        String[] familyMenu = ContextEditor.genFamMenu(source);
        familyPick = new JComboBox(familyMenu);
        familyPick.setSelectedIndex(0);
        theFam = (Family) source.get(0);
        familyPick.addActionListener(listener);
        familyPick.setActionCommand("pick family");
        familyPick.setMinimumSize(sizer);
        familyPick.setMaximumSize(sizer);
        line1.add(avaiLable);
        line1.add(familyPick);
        picker.add(line1);
        picker.add(Box.createRigidArea(new Dimension(0, 8)));


        //  NAME ROW
        JPanel nameBox1 = new JPanel();
        nameBox1.setLayout(new BoxLayout(nameBox1, BoxLayout.LINE_AXIS));
        JLabel husbNameLabel = new JLabel("Husband Name: ");
        husbName = new JLabel(theFam.husband.name);
        nameBox1.add(husbNameLabel);
        nameBox1.add(husbName);
        JPanel nameBox2 = new JPanel();
        nameBox2.setLayout(new BoxLayout(nameBox2, BoxLayout.LINE_AXIS));
        JLabel wifeNameLabel = new JLabel("Wife Name: ");
        wifeName = new JLabel(theFam.wife.name);
        nameBox2.add(wifeNameLabel);
        nameBox2.add(wifeName);
        picker.add(nameBox1);
        picker.add(nameBox2);
        picker.add(Box.createRigidArea(new Dimension(0, 8)));

        //  DATES ROW
        JPanel datesRow = new JPanel();
        datesRow.setLayout(new BoxLayout(datesRow, BoxLayout.LINE_AXIS));
        wedDay = new JLabel("Married: " + theFam.getMarriageDate());
        String divDate = "Not Divorced";
        if (theFam.hasDivorceDate()) {
            divDate = theFam.getDivorceDate();
        }
        divDay = new JLabel("Divorced: " + divDate);
        datesRow.add(wedDay);
        datesRow.add(Box.createRigidArea(new Dimension(20, 0)));
        datesRow.add(divDay);
        picker.add(datesRow);
        picker.add(Box.createRigidArea(new Dimension(0, 8)));

        //  CHILDREN
        JPanel kidBox = new JPanel();
        kidBox.setLayout(new BoxLayout(kidBox, BoxLayout.LINE_AXIS));
        JLabel kidLabel = new JLabel("Children:  ");
        kidBox.add(kidLabel);
        kidList = new JTextArea();
        JScrollPane kidPane = new JScrollPane(kidList);
        kidPane.setMaximumSize(new Dimension(350, 100));
        kidPane.setMinimumSize(new Dimension(350, 30));
        String multiLine = "No Children";
        if (theFam.children.size() > 0) {
            multiLine = "";
            String[] kids = ContextEditor.genIndMenu(theFam.children);
            for (int i = 0; i < kids.length; i++) {
                if (i > 0) {
                    multiLine += "\n";
                }
                multiLine += kids[i];
            }
        }
        kidList.setText(multiLine);
        kidList.setEditable(false);
        kidBox.add(kidPane);
        picker.add(Box.createRigidArea(new Dimension(0, 8)));
        picker.add(kidBox);
        picker.add(Box.createRigidArea(new Dimension(0, 8)));

        //  BUTTONS AT THE BOTTOM
        JPanel bottomBtns = new JPanel();
        bottomBtns.setLayout(new BoxLayout(bottomBtns, BoxLayout.LINE_AXIS));
        JButton done = new JButton("Done");
        done.setActionCommand("done");
        done.addActionListener(listener);
        done.setEnabled(true);
        bottomBtns.add(done);

        unDo = new JButton("Un-Do");
        unDo.setActionCommand("un-do");
        unDo.addActionListener(listener);
        unDo.setEnabled(false);
        bottomBtns.add(unDo);

        choose = new JButton("Choose");
        choose.setActionCommand("choose");
        choose.addActionListener(listener);
        choose.setEnabled(true);
        bottomBtns.add(choose);

        picker.add(bottomBtns);
        getContentPane().add(picker);
        addInternalFrameListener(this);
        setSize(550, 300);
        setVisible(true);
    }  //  end of FamilyPicker constructor

    public class FPListener implements ActionListener {

        KSJInternalFrame f_picker;

        public FPListener(KSJInternalFrame ped) {
            f_picker = ped;
        }  //  end of constructor

        public void actionPerformed(ActionEvent e) {
            if (e.getActionCommand().equals("pick family")) {
                int where = familyPick.getSelectedIndex();
                theFam = (Family) source.get(where);
                husbName.setText(theFam.husband.name);
                wifeName.setText(theFam.wife.name);

                String wday = "", dday = "Not Divorced";
                if (theFam.getMarriageDate() != null) {
                    wday = theFam.getMarriageDate();
                }
                if (theFam.hasDivorceDate()) {
                    dday = theFam.getDivorceDate();
                }
                wedDay.setText("Married: " + wday);
                divDay.setText("Divorced: " + dday);
                String multiLine = "No Children";
                if (theFam.children.size() > 0) {
                    multiLine = "";
                    String[] kids = ContextEditor.genIndMenu(theFam.children);
                    for (int i = 0; i < kids.length; i++) {
                        if (i > 0) {
                            multiLine += "\n";
                        }
                        multiLine += kids[i];
                    }
                }
                kidList.setText(multiLine);
                picker.getBounds(bnds);
                picker.repaint(bnds);
            } //  end of picked-a-family
            else if (e.getActionCommand().equals("done")) {
                if (selections.isEmpty()) {
                    int choice = JOptionPane.showConfirmDialog(f_picker,
                            "You have not made a selection.\n"
                            + "Do you want to close without choosing?",
                            "Confirm", JOptionPane.YES_NO_OPTION);
                    if (choice == JOptionPane.YES_OPTION) {
                        fieldName = "no-field";  // just close
                    } else {
                        return;
                    }
                }  //  end of no-selections
                if (fieldName.equals("choose birth")) {  //  called by a PersonEditor to pick birth family
                    PersonEditor editor = (PersonEditor) genericEditor;
                    Family newbf = (Family) selections.get(0);
                    editor.ind.birthFamily = newbf;
                    newbf.children.add(editor.ind);
                    // update display in the calling PersonEditor
                    editor.bFam.removeAll();
                    editor.buildBFamRow();
                    editor.getBounds(bnds);
                    editor.repaint(bnds);
                    //  end of choosing birth family
                }
                try {
                    f_picker.setClosed(true);
                } catch (PropertyVetoException pve) {
                    if (MainPane.activity == null) {
                        MainPane.createActivityLog(desktop, menuView);
                    }
                    MainPane.activity.log.append("In FamilyEditor:\n" + pve);
                }
                //  end of close-viewer
            } else if (e.getActionCommand().equals("un-do")) {
                selections.clear();  //  kill it
                unDo.setEnabled(false);
                choose.setEnabled(true);
            } else if (e.getActionCommand().equals("choose")) {
                selections.add(theFam);
                unDo.setEnabled(true);
                choose.setEnabled(false);
            }  //  end of action = choose
        }  //  end of ActionListerner method actionPerformed
    }  //  end of inner class FPListener
}  //  end of class FamilyPicker

