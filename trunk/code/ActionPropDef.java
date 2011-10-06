import javax.swing.*;
import java.util.*;

/** This class creates the Action Box for a Proposed Definition in the
 * {@link DecisionFrame} whenever the suggestion chosen by User is a
 * ProposedDef.
 *
 * @author  Gary Morris, University of Pennsylvania		garymorris2245@verizon.net
 *
 * Created on Feb 23, 2011, 3:21:57 PM
 */
public class ActionPropDef extends JPanel {

    public ProposedDef propDef;
    boolean accepted = false, rejected = false;
    DomainTheory dt = null;  // set externally by DecisionFrame
    int suggNmbr;
    DecisionFrame papa;
    TreeMap<String, ArrayList<Context.HistoryItem>> learningHistory;

    /** Creates new form ActionPropDef */
    public ActionPropDef(DecisionFrame frame) {
        initComponents();
        applyDefButton.setEnabled(false);
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
        acceptButton = new javax.swing.JRadioButton();
        rejectButton = new javax.swing.JRadioButton();
        noActionButton = new javax.swing.JRadioButton();
        doneButton = new javax.swing.JButton();
        applyDefButton = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        notesText = new javax.swing.JTextPane();

        setBorder(javax.swing.BorderFactory.createTitledBorder("Action Box: Proposed Definition"));

        buttonGroup1.add(acceptButton);
        acceptButton.setText("Accept Definition");
        acceptButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                acceptButtonActionPerformed(evt);
            }
        });

        buttonGroup1.add(rejectButton);
        rejectButton.setText("Reject Definition");
        rejectButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                rejectButtonActionPerformed(evt);
            }
        });

        buttonGroup1.add(noActionButton);
        noActionButton.setText("No Action");

        doneButton.setText("Done");
        doneButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                doneButtonActionPerformed(evt);
            }
        });

        applyDefButton.setText("Edit Definition");
        applyDefButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                applyDefButtonActionPerformed(evt);
            }
        });

        jScrollPane1.setBorder(javax.swing.BorderFactory.createTitledBorder("Notes: "));
        jScrollPane1.setViewportView(notesText);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(noActionButton)
                    .add(jScrollPane1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 355, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(layout.createSequentialGroup()
                        .add(applyDefButton)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 164, Short.MAX_VALUE)
                        .add(doneButton))
                    .add(acceptButton)
                    .add(rejectButton))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(acceptButton)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(rejectButton)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(noActionButton)
                .add(18, 18, 18)
                .add(jScrollPane1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 121, Short.MAX_VALUE)
                .add(18, 18, 18)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(applyDefButton)
                    .add(doneButton))
                .addContainerGap())
        );
    }// </editor-fold>//GEN-END:initComponents

    public void load(ProposedDef pd, int nmbr) {
        propDef = pd;
        suggNmbr = nmbr;
        if (dt.addressTerms) {
            learningHistory = dt.ctxt.learningHistoryAdr;
        }else {
            learningHistory = dt.ctxt.learningHistoryRef;
        }
        noActionButton.setSelected(true);
    }

    private void acceptButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_acceptButtonActionPerformed
        accepted = true;
        rejected = false;
    }//GEN-LAST:event_acceptButtonActionPerformed

    private void rejectButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_rejectButtonActionPerformed
        accepted = false;
        rejected = true;
    }//GEN-LAST:event_rejectButtonActionPerformed


    void reset() {
        noActionButton.setSelected(true);
        accepted = false;
        rejected = false;
        notesText.setText("");
        papa.reset();
    }


    private void doneButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_doneButtonActionPerformed
        Context ctxt = Context.current;
        if (accepted) {  
            try {
                KinTermDef newDef = new KinTermDef(propDef.kinTerm);
                newDef.comments = FamilyPanel.convertBannedCharacters(notesText.getText());
                newDef.definitions = propDef.ktd.definitions;
                newDef.expandClauses(ctxt);
                makePCStrings(newDef, propDef.eqc.sigString);
                updateCBPtrs(newDef);
                newDef.makeSigStrings();
                dt.addTerm(newDef);
                Context.AcceptedDefPtr ptr;
                ptr = new Context.AcceptedDefPtr(propDef.kinTerm, UDate.today(), "false", newDef.comments);
                ptr.postToHistory(learningHistory);
                // Move all dyads for this kinTerm to "Defined" category.
                TreeMap<String, ArrayList<Object>> dyads;
                dyads = (TreeMap<String, ArrayList<Object>>)dt.dyadsUndefined.remove(newDef.kinTerm);
                dt.dyadsDefined.put(newDef.kinTerm, dyads);
                SIL_Edit.editWindow.chart.dirty = true;
                //  Set up auto-def for this KTD
                TreeMap<String, ArrayList<Context.CB_Ptr>> autoDef = // autoDef: kinType => AList of Context.CB_Ptrs
                        (dt.addressTerms ? ctxt.autoDefAdr : ctxt.autoDefRef);
                for (Object o : newDef.expandedDefs) {
                    ClauseBody cb = (ClauseBody)o;
                    String kinType = cb.pcString;
                    if (autoDef.get(kinType) == null) {
                        autoDef.put(kinType, new ArrayList<Context.CB_Ptr>());
                    }
                    ArrayList<Context.CB_Ptr> defList = autoDef.get(kinType);
                    defList.add(new Context.CB_Ptr(newDef.kinTerm, cb.seqNmbr));
                }
                String msg = "Would you like to apply this new definition to all\n" +
                            "Ego/Alter pairs that it fits?";
                int decision = JOptionPane.showConfirmDialog(this, msg,
                        "Apply Definition?", JOptionPane.YES_NO_OPTION);
                if (decision == JOptionPane.YES_OPTION) {
                    SIL_Edit.editWindow.applyDef(newDef, dt);
                    //  With implicit Address Terms, we don't want this dual posting.
//                    if (! SIL_Edit.editWindow.chart.distinctAdrTerms) {
//                        DomainTheory altDT = (dt.addressTerms ? dt.ctxt.domTheoryRef() : dt.ctxt.domTheoryAdr());
//                        SIL_Edit.editWindow.applyDef(newDef, altDT);
//                    }
                }                
                //  Mark this suggestion as processed and update menu
                papa.markProcessed(suggNmbr);
            }catch(Exception exc) {
                String msg = "While fleshing out a KTD for " + propDef.kinTerm;
                msg += "\nhit internal error: " + exc;
                MainPane.displayError(msg, "Internal Error", JOptionPane.ERROR_MESSAGE);
            }
        }else if (rejected) {
            Context.RejectedPropDefPtr reject =
                    new Context.RejectedPropDefPtr(propDef.kinTerm, UDate.today(), "false",
                    FamilyPanel.convertBannedCharacters(notesText.getText()),
                    propDef.eqc.sigString,
                    propDef.eqc.prototype.languageName,
                    propDef.eqc.prototype.kinTerm);
            reject.postToHistory(learningHistory);
            papa.markProcessed(suggNmbr);
        }
        reset(); 
    }//GEN-LAST:event_doneButtonActionPerformed

    
    private void makePCStrings(KinTermDef ktd, String eqcSig) throws KSInternalErrorException {
        ArrayList<Object> pcList = ktd.decodeString(eqcSig);
        if (ktd.expandedDefs.size() != pcList.size()) {
            String msg = "PropDef ktd with " + pcList.size() + " symbols in EQC SigString\n";
            msg += "had " + ktd.definitions.size() + " clauses in its definition.";
            throw new KSInternalErrorException(msg);
        }
        for (int i = 0; i < pcList.size(); i++) {
            ClauseBody cb = (ClauseBody) ktd.expandedDefs.get(i);
            String s = (String) pcList.get(i);
            if (cb.pcString == null || cb.pcString.isEmpty()) {
                cb.pcString = s;
            }
        }
    }

    private void updateCBPtrs(KinTermDef newbie) {
        ClauseBody cb;
        for (Object o : newbie.definitions) {
            cb = (ClauseBody)o;
            cb.ktd = newbie;
        }
        for (Object o : newbie.expandedDefs) {
            cb = (ClauseBody)o;
            cb.ktd = newbie;
        }
    }


    private void applyDefButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_applyDefButtonActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_applyDefButtonActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JRadioButton acceptButton;
    private javax.swing.JButton applyDefButton;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JButton doneButton;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JRadioButton noActionButton;
    private javax.swing.JTextPane notesText;
    private javax.swing.JRadioButton rejectButton;
    // End of variables declaration//GEN-END:variables

}
