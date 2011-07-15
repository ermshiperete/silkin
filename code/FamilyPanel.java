

import javax.swing.*;
import javax.swing.event.*;
import java.util.*;
import java.text.*;

/**
 * This class is part of the SILKin program's GUI. It is modeled after the
 * KAES KinshipEditor by Michael D. Fischer of the Centre for Social
 * Anthropology and Computing, University of Kent.
 * Those portions taken from his code are copyrighted by him; all rights
 * reserved. See his complete copyright statement and terms of re-use in
 * e.g. KinshipEditor.java in this package.
 *
 * DATA POSTING STRATEGY - As soon as any field in this panel loses focus, we
 * post the latest data to the Individual/Person being displayed ("infoPerson").
 * When a new person is chosen for display, we validate all data and if any
 * invalid fields are found, we do not allow the change in infoPerson until
 * valid data is entered. Then the person's record is updated and we proceed to
 * let user choose a new infoPerson to display/edit.
 *
 * @author Gary Morris, University of Pennsylvania
 */
public class FamilyPanel extends JPanel {

    SIL_Edit parent = null;  //  The container holding this JPanel.
    String tempBeginMon_DD = null,
           tempEndMon_DD = null;
    boolean dirty = false;  //  This 'dirty bit' applies to current infoMarriage.
    boolean storing = false;

    /** Creates new form FamilyPanel */
    public FamilyPanel() {
        initComponents();
        parent = SIL_Edit.editWindow;
        famComments.getDocument().addDocumentListener(new CommentListener());
        familyID.setColumns(3);
    }

    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        famStartMM = new javax.swing.JTextField();
        famStartYear = new javax.swing.JTextField();
        jLabel14 = new javax.swing.JLabel();
        famEndMM = new javax.swing.JTextField();
        famEndYear = new javax.swing.JTextField();
        jLabel15 = new javax.swing.JLabel();
        reasonBox = new javax.swing.JComboBox();
        jLabel6 = new javax.swing.JLabel();
        husbandName = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        jScrollPane3 = new javax.swing.JScrollPane();
        childList = new javax.swing.JTextArea();
        jLabel2 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        famComments = new javax.swing.JTextArea();
        wifeName = new javax.swing.JTextField();
        familyID = new javax.swing.JTextField();
        famStartDD = new javax.swing.JTextField();
        famEndDD = new javax.swing.JTextField();
        dataChgDateLabel = new javax.swing.JLabel();
        dataChgDate = new javax.swing.JTextField();

        setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Selected Family", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Lucida Grande", 0, 13), new java.awt.Color(0, 51, 204))); // NOI18N
        setMaximumSize(new java.awt.Dimension(844, 309));
        setMinimumSize(new java.awt.Dimension(844, 309));
        setPreferredSize(new java.awt.Dimension(844, 309));

        jLabel3.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel3.setText("Family#");

        jLabel4.setText("Start:");

        famStartMM.setColumns(2);
        famStartMM.setText("MM");

        famStartYear.setColumns(4);
        famStartYear.setText("YYYY");
        famStartYear.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                famStartYearFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                famStartYearFocusLost(evt);
            }
        });

        jLabel14.setText("End:");

        famEndMM.setColumns(2);
        famEndMM.setText("MM");

        famEndYear.setColumns(4);
        famEndYear.setText("YYYY");
        famEndYear.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                famEndYearFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                famEndYearFocusLost(evt);
            }
        });

        jLabel15.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel15.setText("Reason:");

        reasonBox.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "NA", "Death", "Divorce", "Other" }));
        reasonBox.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                reasonBoxItemStateChanged(evt);
            }
        });

        jLabel6.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel6.setText("Husband");

        husbandName.setEditable(false);
        husbandName.setText("husband's name & ID#");

        jLabel7.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel7.setText("Wife");

        jLabel13.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel13.setText("Children");

        childList.setColumns(20);
        childList.setEditable(false);
        childList.setRows(5);
        jScrollPane3.setViewportView(childList);

        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setText("Notes on this Family");

        famComments.setColumns(20);
        famComments.setRows(5);
        famComments.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                famCommentsFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                famCommentsFocusLost(evt);
            }
        });
        jScrollPane1.setViewportView(famComments);

        wifeName.setEditable(false);
        wifeName.setText("wife's name & ID#");

        familyID.setColumns(3);
        familyID.setEditable(false);
        familyID.setText("nnn");

        famStartDD.setColumns(2);
        famStartDD.setText("DD");
        famStartDD.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                famStartDDFocusLost(evt);
            }
        });

        famEndDD.setColumns(2);
        famEndDD.setText("DD");
        famEndDD.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                famEndDDFocusLost(evt);
            }
        });

        dataChgDateLabel.setText("Last Data Change: ");

        dataChgDate.setText("jTextField1");
        dataChgDate.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                dataChgDateActionPerformed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(layout.createSequentialGroup()
                        .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(layout.createSequentialGroup()
                                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jLabel6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 57, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jLabel7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 57, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jLabel13))
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                                    .add(org.jdesktop.layout.GroupLayout.LEADING, jScrollPane3)
                                    .add(org.jdesktop.layout.GroupLayout.LEADING, husbandName)
                                    .add(org.jdesktop.layout.GroupLayout.LEADING, wifeName, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 374, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                            .add(layout.createSequentialGroup()
                                .add(jLabel14)
                                .add(18, 18, 18)
                                .add(famEndYear, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .add(18, 18, 18)
                                .add(famEndMM, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.UNRELATED)
                                .add(famEndDD, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .add(44, 44, 44)
                                .add(jLabel15)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                .add(reasonBox, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 135, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                            .add(layout.createSequentialGroup()
                                .add(jLabel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 57, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                .add(familyID, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                        .add(37, 37, 37)
                        .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(layout.createSequentialGroup()
                                .add(dataChgDateLabel)
                                .add(18, 18, 18)
                                .add(dataChgDate, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 126, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                            .add(jScrollPane1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 309, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                        .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .add(layout.createSequentialGroup()
                        .add(jLabel4)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.UNRELATED)
                        .add(famStartYear, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.UNRELATED)
                        .add(famStartMM, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.UNRELATED)
                        .add(famStartDD, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 352, Short.MAX_VALUE)
                        .add(jLabel2)
                        .add(119, 119, 119))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(layout.createSequentialGroup()
                        .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jLabel3)
                            .add(familyID, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jLabel4)
                            .add(famStartYear, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .add(famStartMM, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .add(famStartDD, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .add(jLabel2)))
                    .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(dataChgDateLabel)
                        .add(dataChgDate, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jScrollPane1)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                        .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jLabel14)
                            .add(famEndYear, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .add(famEndMM, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .add(famEndDD, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .add(reasonBox, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .add(jLabel15))
                        .add(8, 8, 8)
                        .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jLabel6)
                            .add(husbandName, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jLabel7)
                            .add(wifeName, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jScrollPane3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 60, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .add(jLabel13))))
                .addContainerGap())
        );
    }// </editor-fold>//GEN-END:initComponents

//  DATA CAPTURE STRATEGY
//  This panel's 'dirty bit' records whether any data has been entered on the
//  panel but not yet stored on the Family/Marriage object.
//  The KinEditPanel's dirty bit, by contrast, records whether any objects
//  have been updated but not yet saved to disk.
//  The panel dirty bit is turned on whenever an editable field gains the
//  focus. If that field later loses the focus, a data store is triggered.
//  But if the user takes some other action that does NOT fire a Focus_Lost
//  event, the dirty bit will prevent loss of data.

    private void famStartYearFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_famStartYearFocusLost
        //  Entries are not validated until a new Person/Family is clicked.
        if (parent.infoMarriage != null) {
            parent.infoMarriage.marriageYr = famStartYear.getText();
            dirty = true;
        }
    }//GEN-LAST:event_famStartYearFocusLost

    private void famEndYearFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_famEndYearFocusLost
        //  Entries are not validated until a new Person/Family is clicked.
        if (parent.infoMarriage != null) {
            parent.infoMarriage.divorceYr = famEndYear.getText();
            dirty = true;
        }
    }//GEN-LAST:event_famEndYearFocusLost

    private void famCommentsFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_famCommentsFocusLost
        //  Update of the comments is handled by a DocumentListener
    }//GEN-LAST:event_famCommentsFocusLost

    private void reasonBoxItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_reasonBoxItemStateChanged
        if (parent.infoMarriage != null) {
            parent.infoMarriage.reason = (String)reasonBox.getSelectedItem();
            dirty = true;}
    }//GEN-LAST:event_reasonBoxItemStateChanged

    private void famStartYearFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_famStartYearFocusGained
        dirty = true;
    }//GEN-LAST:event_famStartYearFocusGained

    private void famEndYearFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_famEndYearFocusGained
        dirty = true;
    }//GEN-LAST:event_famEndYearFocusGained

    private void famCommentsFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_famCommentsFocusGained
         //  Update of the comments is handled by a DocumentListener
    }//GEN-LAST:event_famCommentsFocusGained

    private void famStartDDFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_famStartDDFocusLost
        dirty = true;
    }//GEN-LAST:event_famStartDDFocusLost

    private void famEndDDFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_famEndDDFocusLost
        dirty = true;
    }//GEN-LAST:event_famEndDDFocusLost

    private void dataChgDateActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_dataChgDateActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_dataChgDateActionPerformed
    

    void clearInfo() {
        storing = true;
        childList.setText("");
        famComments.setText("");
        famStartMM.setText("");
        famEndMM.setText("");
        famStartDD.setText("");
        famEndDD.setText("");
        famStartYear.setText("");
        famEndYear.setText("");
        familyID.setText("");
        dataChgDate.setText("");
        husbandName.setText("");
        wifeName.setText("");
        reasonBox.setSelectedIndex(0);
        storing = false;
    }

   void showInfo(Family fam) {
       storing = true;
       famComments.setText(fam.comment);
        famStartDD.setText(fam.getMarriageDD());
        famEndDD.setText(fam.getDivorceDD());
        famStartMM.setText(fam.getMarriageMM());
        famEndMM.setText(fam.getDivorceMM());
        famStartYear.setText(fam.getMarriageYr());
        famEndYear.setText(fam.getDivorceYr());
        familyID.setText(String.valueOf(fam.serialNmbr));
        dataChgDate.setText(fam.dataChangeDate);
        String  EOL = KinEditPanel.EOL,
                kidList = "", name;
        if (fam.husband == null) name = "";
        else name = fam.husband.name + " <" + fam.husband.serialNmbr + ">";
        husbandName.setText(name);
        if (fam.wife == null) name = "";
        else name = fam.wife.name + " <" + fam.wife.serialNmbr + ">";
        wifeName.setText(name);
        ArrayList<Object> sortList = sortOnBirthOrder(fam.children);
        for (int i=0; i < sortList.size(); i++) {
            Individual kid = (Individual)sortList.get(i);
            if (i > 0) kidList += EOL;
            kidList += kid.name + " <" + kid.serialNmbr + ">";
        }
        childList.setText(kidList);
        int reason = 0;
        if (fam.reason.equals("Death")) reason = 1;
        else if (fam.reason.equals("Divorce")) reason = 2;
        else if (fam.reason.equals("Other")) reason = 3;
        reasonBox.setSelectedIndex(reason);
        storing = false;
   }

    ArrayList<Object> sortOnBirthOrder(ArrayList<Object> kids) {
        TreeMap<Integer, Individual> sorTree = new TreeMap<Integer, Individual>();
        int actualOrder;
        for (Object o : kids) {
            Individual kid = (Individual)o;
            actualOrder = (kid.birthYr.equals("") ?
                kid.serialNmbr :
                Integer.parseInt(kid.birthYr));
            Integer birthYr = new Integer(actualOrder);
            sorTree.put(birthYr, kid);
        }
        return new ArrayList<Object>(sorTree.values());
    }

    void storeInfo(Family infoMarriage) throws KSParsingErrorException,
            KSDateParseException  {
        if (! dirty) return;
        storing = true;
        String a, b, c;
        infoMarriage.reason = (String)reasonBox.getSelectedItem();
        a = famStartMM.getText();
        if (a.trim().length() == 1) a = "0"+ a;
        b = famStartYear.getText();
        c = famStartDD.getText();
        if (c.trim().length() == 1) c = "0"+ c;
        boolean ok = true;
        if (! infoMarriage.getMarriageDate().equals(UDate.formatAsXSD(b, a, c))) {
            ok = UDate.valiDate(b, a, c, infoMarriage, false);
            if (! ok) {
                c = "Invalid marriage date: '" + b + "-" + a + "-" + c;
                throw new KSDateParseException(c);
            }
        }
        a = famEndMM.getText();
        if (a.trim().length() == 1) a = "0"+ a;
        b = famEndYear.getText();
        c = famEndDD.getText();
        if (c.trim().length() == 1) c = "0"+ c;
        if (! infoMarriage.getDivorceDate().equals(UDate.formatAsXSD(b, a, c)))  {
            ok = UDate.valiDate(b, a, c, infoMarriage, true);
            if (! ok) {
                c = "Invalid marriage ending date: '" + b + "-" + a + "-" + c;
                throw new KSDateParseException(c);
            }
        }
        infoMarriage.comment = convertBannedCharacters(famComments.getText());
        infoMarriage.dataAuthor = Library.currDataAuthor;
        infoMarriage.dataChangeDate = UDate.today();
        Context.current.dateOfLastDataChange = infoMarriage.dataChangeDate;
        parent.chart.dirty = true;
        dirty = false;
        storing = false;
    }

    public static String convertBannedCharacters(String s) {
    // convert dbl-quotes to singles, ampersand to 'and',
    // and angle-brackets to squares.
        String clean = s.replace("\"", "'");
        clean = clean.replace("\n", "  ");
        clean = clean.replace("\r", "  ");
        clean = clean.replace("<", "[");
        clean = clean.replace(">", "]");
        clean = clean.replace("&amp;", "and");
        return clean.replace("&", "and");
    }

    
//  SETTERS AND GETTERS
    public JTextField famStartYear() { return famStartYear; }
    public JTextField famEndYear() { return famEndYear; }


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextArea childList;
    private javax.swing.JTextField dataChgDate;
    private javax.swing.JLabel dataChgDateLabel;
    private javax.swing.JTextArea famComments;
    private javax.swing.JTextField famEndDD;
    private javax.swing.JTextField famEndMM;
    private javax.swing.JTextField famEndYear;
    private javax.swing.JTextField famStartDD;
    private javax.swing.JTextField famStartMM;
    private javax.swing.JTextField famStartYear;
    private javax.swing.JTextField familyID;
    private javax.swing.JTextField husbandName;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JComboBox reasonBox;
    private javax.swing.JTextField wifeName;
    // End of variables declaration//GEN-END:variables


    class CommentListener implements DocumentListener {

        public void insertUpdate(DocumentEvent e) {
            if (!storing) {
                if (parent.infoMarriage != null) {
                    parent.infoMarriage.comment =
                            convertBannedCharacters(famComments.getText());
                    dirty = true;
                }
            }
        }

        public void removeUpdate(DocumentEvent e) {
            if (!storing) {
                if (parent.infoMarriage != null) {
                    parent.infoMarriage.comment =
                            convertBannedCharacters(famComments.getText());
                    dirty = true;
                }
            }
        }

        public void changedUpdate(DocumentEvent e) {
            //Plain text components do not fire these events
        }
    }  // end of inner class CommentListener

}
