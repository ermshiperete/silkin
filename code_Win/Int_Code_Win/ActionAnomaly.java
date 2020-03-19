import java.util.*;
import javax.swing.*;

/** This class creates the Action Box for an Anomaly in the
 * {@link DecisionFrame} whenever the suggestion chosen by User is an
 * Anomaly.
 *
*  @author		Gary Morris, Northern Virginia Community College
 *                              garymorris2245@verizon.net
 *
 * Created on June 24, 2011, 3:21:57 PM
 */
public class ActionAnomaly extends JPanel {

    DecisionFrame papa;
    Anomaly anna;
    int suggNmbr;
    DomainTheory dt;  //  instantiated by DecisionFrame
    ArrayList<Dyad> oddballs = new ArrayList<Dyad>(), 
                    dyadsProcessed = new ArrayList<Dyad>();
    boolean chartEditPending = false;
    int oldNDX = 0;
    MyResBundle se = Library.screenElements;

    /** Creates new form ActionAnomaly */
    public ActionAnomaly() {
        initComponents();
        labelComponents();
    }

    public ActionAnomaly(DecisionFrame frame) {
        initComponents();
        labelComponents();
        papa = frame;
    }

    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        oddballLabel = new javax.swing.JLabel();
        oddballDyadsCombo = new javax.swing.JComboBox();
        egoLabel = new javax.swing.JLabel();
        egoNames = new javax.swing.JLabel();
        alterLabel = new javax.swing.JLabel();
        alterNames = new javax.swing.JLabel();
        noActionBtn = new javax.swing.JRadioButton();
        dyadCorrectBtn = new javax.swing.JRadioButton();
        dyadDeleteBtn = new javax.swing.JRadioButton();
        editBtn = new javax.swing.JRadioButton();
        correctedKinTerm = new javax.swing.JTextField();
        recordBtn = new javax.swing.JButton();
        showOnChartBtn = new javax.swing.JButton();

        setBorder(javax.swing.BorderFactory.createTitledBorder("Action Box: Anomaly"));

        oddballLabel.setText("Questionable Dyads");

        oddballDyadsCombo.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Ego:  12  Alter:   6   Kin Term:  grandpaw", "Ego:    5  Alter:  14  Kin Term:  grampa" }));
        oddballDyadsCombo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                oddballDyadsComboActionPerformed(evt);
            }
        });

        egoLabel.setText("Ego: ");

        egoNames.setText("______");

        alterLabel.setText("Alter: ");

        alterNames.setText("______");

        buttonGroup1.add(noActionBtn);
        noActionBtn.setSelected(true);
        noActionBtn.setText("No Action");

        buttonGroup1.add(dyadCorrectBtn);
        dyadCorrectBtn.setText("This dyad is CORRECT.");

        buttonGroup1.add(dyadDeleteBtn);
        dyadDeleteBtn.setText("This dyad is wrong.  DELETE it.");

        buttonGroup1.add(editBtn);
        editBtn.setText("EDIT the kin term to ");
        editBtn.setAlignmentX(0.5F);
        editBtn.setAlignmentY(0.9F);
        editBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                editBtnActionPerformed(evt);
            }
        });

        recordBtn.setText("RECORD Decision on This Dyad");
        recordBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                recordBtnActionPerformed(evt);
            }
        });

        showOnChartBtn.setText("SHOW This Dyad on the Chart");
        showOnChartBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                showOnChartBtnActionPerformed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                        .add(0, 0, Short.MAX_VALUE)
                        .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                                .add(oddballLabel)
                                .add(144, 144, 144))
                            .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                                .add(editBtn, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 223, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                .add(correctedKinTerm, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 181, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .addContainerGap())))
                    .add(layout.createSequentialGroup()
                        .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(oddballDyadsCombo, 0, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .add(layout.createSequentialGroup()
                                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                                    .add(dyadCorrectBtn)
                                    .add(layout.createSequentialGroup()
                                        .add(egoLabel)
                                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.UNRELATED)
                                        .add(egoNames))
                                    .add(layout.createSequentialGroup()
                                        .add(alterLabel)
                                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                        .add(alterNames))
                                    .add(noActionBtn)
                                    .add(dyadDeleteBtn))
                                .add(0, 0, Short.MAX_VALUE))
                            .add(org.jdesktop.layout.GroupLayout.TRAILING, showOnChartBtn, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .add(recordBtn, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .addContainerGap())))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(oddballLabel)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(oddballDyadsCombo, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.UNRELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(egoLabel)
                    .add(egoNames))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(alterLabel)
                    .add(alterNames))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.UNRELATED)
                .add(noActionBtn)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(dyadCorrectBtn)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(dyadDeleteBtn)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(editBtn)
                    .add(correctedKinTerm, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.UNRELATED)
                .add(showOnChartBtn)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(recordBtn)
                .addContainerGap())
        );
    }// </editor-fold>//GEN-END:initComponents

    void labelComponents() {
        setBorder(javax.swing.BorderFactory.createTitledBorder(se.getString("aBoxAnomaly")));
        oddballLabel.setText(se.getString("questionableDyads"));
        oddballDyadsCombo.setModel(new javax.swing.DefaultComboBoxModel(
                new String[] { se.getString("example1"), se.getString("example2") }));
        egoLabel.setText(se.getString("ego") + ": ");
        egoNames.setText(se.getString("5underscores"));
        alterLabel.setText(se.getString("alter") + ": ");
        alterNames.setText(se.getString("5underscores"));
        noActionBtn.setText(se.getString("noAction"));
        dyadCorrectBtn.setText(se.getString("dyadCORRECT"));
        dyadDeleteBtn.setText(se.getString("dyadDELETE"));
        editBtn.setText(se.getString("editKT2") + " ");
        recordBtn.setText(se.getString("recordDecision"));
        showOnChartBtn.setText(se.getString("showOnChart"));
    }
    
    public void load(Anomaly a, int nmbr) {
        anna = a;
        suggNmbr = nmbr;
        loadOddballs();
        resetOddballComboBox();
        oddballDyadsCombo.setSelectedIndex(0);
        loadNames(0);
    }

    void loadOddballs() {
        oddballs.clear();
        for (Object o : anna.findOddballs()) {
            Dyad d = (Dyad)o;
            oddballs.add(d);
        }
    }
    
    String deSlashify(String s) {
        return s.replace("\\", "");
    }
    
    void resetOddballComboBox() {
        String[] dyStrings = new String[oddballs.size()];
        for (int i = 0; i < oddballs.size(); i++) {
            Dyad d = oddballs.get(i);
            String dun = se.getString("dONE");
            String done = (dyadsProcessed.contains(d) ? dun + ": " : "");
            String s = done + "Ego: " + d.ego.serialNmbr;
            s += "  Alter: " + d.alter.serialNmbr;
            s += "  Kin Term: " + deSlashify(d.kinTerm);
            dyStrings[i] = s;
        }
        oddballDyadsCombo.setModel(new DefaultComboBoxModel(dyStrings));
    }
    
    void reviewBeforeDyad() {
        Dyad before = oddballs.get(oldNDX);
        Dyad after = getDyad(before);
        // after == null means 'before' has been modified or deleted
        // otherwise, it is unchanged.
        // If dyad changed or 'CORRECT" button chosen, dyad is processed.
        if (after == null || dyadCorrectBtn.isSelected()) {
            addToDyadsProcessed(before);
        }
    }


    Dyad getDyad(Dyad seed) {
        DyadTMap[] tmaps = { dt.dyadsUndefined, dt.dyadsDefined};      
        for (DyadTMap tm : tmaps) {
            ArrayList<Object> list = null;
            TreeMap subTree = (TreeMap)tm.get(seed.kinTerm);
            if (subTree != null) {
                list = (ArrayList<Object>)subTree.get(seed.pcString);
            }
            if (list != null) {
                for (Object o : list) {
                    Dyad d = (Dyad)o;
                    if (d.ego == seed.ego && d.alter == seed.alter) {
                        return d;
                    }
                }
            }
        }
        return null;
    }

    void loadNames(int num) {
        Dyad d = (Dyad)oddballs.get(num);
        egoNames.setText(d.ego.firstNames + " " + d.ego.surname);
        alterNames.setText(d.alter.firstNames + " " + d.alter.surname);
        correctedKinTerm.setText("");
        correctedKinTerm.setEditable(false);
        noActionBtn.setSelected(true);
    }

    private void recordBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_recordBtnActionPerformed
        if (chartEditPending) {
            chartEditPending = false;
            reviewBeforeDyad();
        }
        Dyad dy = (Dyad)oddballs.get(oddballDyadsCombo.getSelectedIndex());
        if (editBtn.isSelected()) {            
            int egoNum = dy.ego.serialNmbr,
                altNum = dy.alter.serialNmbr;
            boolean distinct = dt.addressTerms;
            String oldTerm = dy.kinTerm,
                   newTerm = PersonPanel.slashify(this, correctedKinTerm.getText());
            Dyad dy2 = new Dyad(dy);
            dy2.kinTerm = newTerm;
            dy2.confirmed = true;
            Context.getCurrent().deleteDyad(dt, oldTerm, dy.pcString, egoNum, altNum);
            Context.getCurrent().addDyad(dt, dy2);
            Context.getCurrent().ktm.correctKinTerm(egoNum, altNum, oldTerm, newTerm, distinct);
            addToDyadsProcessed(dy);
            dy.kinTerm = newTerm;
        }else if (dyadCorrectBtn.isSelected()) {
            dy.confirmed = true;
            dy.challenged = false;
            addToDyadsProcessed(dy);
        }else if (dyadDeleteBtn.isSelected()) {
            int egoNum = dy.ego.serialNmbr,
                altNum = dy.alter.serialNmbr;
            boolean distinct = dt.addressTerms;
            Context.getCurrent().deleteDyad(dt, dy.kinTerm, dy.pcString, egoNum, altNum);
            Context.getCurrent().ktm.deleteKinTerm(egoNum, altNum, dy.kinTerm, distinct);
            addToDyadsProcessed(dy);
            dy.kinTerm = se.getString("dELETED");
        }
        // Check to see if last oddball has been processed.
        if (dyadsProcessed.size() == oddballs.size()) {
            papa.markProcessed(suggNmbr);
            papa.reset();
        }
        resetOddballComboBox();
        oldNDX = 0;
    }//GEN-LAST:event_recordBtnActionPerformed

    void addToDyadsProcessed(Dyad d) {
        if (!dyadsProcessed.contains(d)) {
            dyadsProcessed.add(d);
        }
    }
    
    private void editBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_editBtnActionPerformed
        correctedKinTerm.setEditable(true);
    }//GEN-LAST:event_editBtnActionPerformed

    private void oddballDyadsComboActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_oddballDyadsComboActionPerformed
        int ndx = oddballDyadsCombo.getSelectedIndex();
        loadNames(ndx);
    }//GEN-LAST:event_oddballDyadsComboActionPerformed

    private void showOnChartBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_showOnChartBtnActionPerformed
        chartEditPending = true;
        oldNDX = oddballDyadsCombo.getSelectedIndex();
        Dyad before = oddballs.get(oldNDX);
        String[] pendingModel = { se.getString("afterViewingChart") };
        oddballDyadsCombo.setModel(new DefaultComboBoxModel(pendingModel));
        dyadCorrectBtn.setSelected(true);   
        String ch = SIL_Edit.findMutualChart(before.ego, before.alter);
        SIL_Edit.edWin.goToChart(ch);        
        SIL_Edit.edWin.changeEgo(before.ego.serialNmbr);
        SIL_Edit.edWin.getPPanel().resetEgoBox(before.ego.serialNmbr);
        SIL_Edit.edWin.chart.setAlter(before.alter.serialNmbr);  
        SIL_Edit.edWin.toFront();                                     
    }//GEN-LAST:event_showOnChartBtnActionPerformed

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel alterLabel;
    private javax.swing.JLabel alterNames;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JTextField correctedKinTerm;
    private javax.swing.JRadioButton dyadCorrectBtn;
    private javax.swing.JRadioButton dyadDeleteBtn;
    private javax.swing.JRadioButton editBtn;
    private javax.swing.JLabel egoLabel;
    private javax.swing.JLabel egoNames;
    private javax.swing.JRadioButton noActionBtn;
    private javax.swing.JComboBox oddballDyadsCombo;
    private javax.swing.JLabel oddballLabel;
    private javax.swing.JButton recordBtn;
    private javax.swing.JButton showOnChartBtn;
    // End of variables declaration//GEN-END:variables
}