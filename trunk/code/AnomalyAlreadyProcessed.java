/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author gary
 */
public class AnomalyAlreadyProcessed extends javax.swing.JPanel {
    
    public AnomalyAlreadyProcessed() {
        initComponents();
    }

    private void initComponents() {
        jScrollPane1 = new javax.swing.JScrollPane();
        jTextArea1 = new javax.swing.JTextArea();

        setBorder(javax.swing.BorderFactory.createTitledBorder("Already Processed"));
        setPreferredSize(new java.awt.Dimension(425, 300));  

        jTextArea1.setColumns(20);
        jTextArea1.setRows(5);
        setDisplay("dyads");
        jScrollPane1.setViewportView(jTextArea1);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(jScrollPane1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 373, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                .add(jScrollPane1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 260, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
    }
    
    void setDisplay(String text) {
        jTextArea1.setText("You have already processed these " + text + "\nindividually. To change the action taken on one of them," 
                + "\ngo to the chart and edit it there. \n\nRepeat that for as many dyads as you need to.");        
    }
    
    void addToDisplay(String moreText) {
        String newTxt = jTextArea1.getText() + "\n" + moreText;
        jTextArea1.setText(newTxt);
    }
    
    

    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextArea jTextArea1;

}
