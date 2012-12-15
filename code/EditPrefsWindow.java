
import java.awt.Font;
import javax.swing.*;

/** The EditPrefsWindow is where Learning Parameters are set.
 *  It simply displays the values and allows editing of them.
 *  
 * These values are saved to and reloaded from the SILK file.
 *
 * Created on Sep 14, 2011, 5:55:11 PM
 * @author gary
 */
public class EditPrefsWindow extends JFrame {

    private static final int ignorMaxVal = 10;
    private static final int ignorMinVal = 0;
    private static final int maxMaxVal = 40;
    private static final int maxMinVal = 0;
    private static int[] demoSizes = {9, 12, 13, 15, 16, 18, 21, 24 };
    private static int[] trueSizes = {6,  8,  9, 10, 11, 12, 14, 16 };
    boolean loading = true;

    /** Creates new form EditPrefsWindow */
    public EditPrefsWindow() {
        initComponents();
        loadValues();
    }

    void loadValues() {
        int igVal = Context.current.ignorableP,
            mxVal = Context.current.maxNoiseP;
        ignorableSlider.setMinimum(ignorMinVal);
        // Oddly, setMaximum also sets the slider val = max
        ignorableSlider.setMaximum(ignorMaxVal);
        ignorableSlider.setMajorTickSpacing(5);
        ignorableSlider.setMinorTickSpacing(1);
        ignorableSlider.setPaintTicks(true);
        ignorableSlider.setValue(igVal);
        ignorableField.setText(igVal + "%");
        ignorableField.setEditable(false);
        maxSlider.setMinimum(maxMinVal);
        maxSlider.setMaximum(maxMaxVal);
        maxSlider.setMajorTickSpacing(10);
        maxSlider.setMinorTickSpacing(5);
        maxSlider.setPaintTicks(true);
        maxSlider.setValue(mxVal);
        maxField.setText(mxVal + "%");
        maxField.setEditable(false);
        polygamyCkBox.setSelected(Context.current.polygamyPermit);
        inductionCkBox.setSelected(Context.current.doInduction);
        subpatternCkBox.setSelected(Context.current.doBaseCBs);
        surnameCheckBox.setSelected(Context.current.surnameNormallyCaptured);
        birthdateCheckBox.setSelected(Context.current.birthDateNormallyCaptured);
        snapToGridCkBox.setSelected(Library.snapToGrid);
        wideTxtFld.setText(String.valueOf(Library.gridX));
        highTxtFld.setText(String.valueOf(Library.gridY));
        wideTxtFld.setEditable(Library.snapToGrid);
        highTxtFld.setEditable(Library.snapToGrid);
        if (PrintChart.printFont != null) {
            String face = PrintChart.printFont.getName();
            fontComboBox.setSelectedItem(face);
            String size = "" + PrintChart.printFont.getSize();
            sizeComboBox.setSelectedItem(size);
            int ndx = sizeComboBox.getSelectedIndex();
            Font demoFont = new Font(face, Font.PLAIN, demoSizes[ndx]);
            sampleTextLabel.setFont(demoFont);
        }
        String fileName = SIL_Edit.editWindow.chart.saveFile.getName();
        setTitle("Edit Preferences for " + fileName);
        loading = false;
    }

    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        polygamyHelp = new javax.swing.JButton();
        inductionHelp = new javax.swing.JButton();
        polygamyCkBox = new javax.swing.JCheckBox();
        subpatternHelp = new javax.swing.JButton();
        inductionCkBox = new javax.swing.JCheckBox();
        ignorableSlider = new javax.swing.JSlider();
        ignorableLabel = new javax.swing.JLabel();
        subpatternCkBox = new javax.swing.JCheckBox();
        maxField = new javax.swing.JTextField();
        maxLabel = new javax.swing.JLabel();
        ignoreHelp = new javax.swing.JButton();
        ignorableField = new javax.swing.JTextField();
        maxHelp = new javax.swing.JButton();
        maxSlider = new javax.swing.JSlider();
        doneBtn = new javax.swing.JButton();
        surnameCheckBox = new javax.swing.JCheckBox();
        birthdateCheckBox = new javax.swing.JCheckBox();
        normalCaptureHelpBtn = new javax.swing.JButton();
        snapToGridCkBox = new javax.swing.JCheckBox();
        snapToGridHelp = new javax.swing.JButton();
        editLinkPrioritiesBtn = new javax.swing.JButton();
        linkPrioritiesHelp = new javax.swing.JButton();
        wideLabel = new javax.swing.JLabel();
        wideTxtFld = new javax.swing.JTextField();
        highLabel = new javax.swing.JLabel();
        highTxtFld = new javax.swing.JTextField();
        chartFontLabel = new javax.swing.JLabel();
        fontComboBox = new javax.swing.JComboBox();
        sizeComboBox = new javax.swing.JComboBox();
        sampleTextLabel = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        polygamyHelp.setForeground(new java.awt.Color(255, 0, 0));
        polygamyHelp.setText("?");
        polygamyHelp.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                polygamyHelpActionPerformed(evt);
            }
        });

        inductionHelp.setForeground(new java.awt.Color(255, 0, 0));
        inductionHelp.setText("?");
        inductionHelp.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                inductionHelpActionPerformed(evt);
            }
        });

        polygamyCkBox.setText("Polygamy Permitted?");
        polygamyCkBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                polygamyCkBoxActionPerformed(evt);
            }
        });

        subpatternHelp.setForeground(new java.awt.Color(255, 0, 0));
        subpatternHelp.setText("?");
        subpatternHelp.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                subpatternHelpActionPerformed(evt);
            }
        });

        inductionCkBox.setText("Do Pure Induction");
        inductionCkBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                inductionCkBoxActionPerformed(evt);
            }
        });

        ignorableSlider.addChangeListener(new javax.swing.event.ChangeListener() {
            public void stateChanged(javax.swing.event.ChangeEvent evt) {
                ignorableSliderStateChanged(evt);
            }
        });

        ignorableLabel.setText("Ignorable %");

        subpatternCkBox.setText("Do Sub-Pattern Matches");
        subpatternCkBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                subpatternCkBoxActionPerformed(evt);
            }
        });

        maxField.setHorizontalAlignment(javax.swing.JTextField.TRAILING);
        maxField.setText("25");

        maxLabel.setText("Max %");

        ignoreHelp.setForeground(new java.awt.Color(255, 0, 0));
        ignoreHelp.setText("?");
        ignoreHelp.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ignoreHelpActionPerformed(evt);
            }
        });

        ignorableField.setHorizontalAlignment(javax.swing.JTextField.TRAILING);
        ignorableField.setText("5");
        ignorableField.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ignorableFieldActionPerformed(evt);
            }
        });

        maxHelp.setForeground(new java.awt.Color(255, 0, 0));
        maxHelp.setText("?");
        maxHelp.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                maxHelpActionPerformed(evt);
            }
        });

        maxSlider.addChangeListener(new javax.swing.event.ChangeListener() {
            public void stateChanged(javax.swing.event.ChangeEvent evt) {
                maxSliderStateChanged(evt);
            }
        });

        doneBtn.setText("Done");
        doneBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                doneBtnActionPerformed(evt);
            }
        });

        surnameCheckBox.setText("Surname Normally Captured?");
        surnameCheckBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                surnameCheckBoxActionPerformed(evt);
            }
        });

        birthdateCheckBox.setText("Birth Date Normally Captured?");
        birthdateCheckBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                birthdateCheckBoxActionPerformed(evt);
            }
        });

        normalCaptureHelpBtn.setForeground(new java.awt.Color(255, 0, 0));
        normalCaptureHelpBtn.setText("?");
        normalCaptureHelpBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                normalCaptureHelpBtnActionPerformed(evt);
            }
        });

        snapToGridCkBox.setText("Snap To Grid");
        snapToGridCkBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                snapToGridCkBoxActionPerformed(evt);
            }
        });

        snapToGridHelp.setForeground(new java.awt.Color(255, 0, 51));
        snapToGridHelp.setText("?");
        snapToGridHelp.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                snapToGridHelpActionPerformed(evt);
            }
        });

        editLinkPrioritiesBtn.setText("Inspect/Edit Link Priorities");
        editLinkPrioritiesBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                editLinkPrioritiesBtnActionPerformed(evt);
            }
        });

        linkPrioritiesHelp.setForeground(new java.awt.Color(255, 0, 0));
        linkPrioritiesHelp.setText("?");
        linkPrioritiesHelp.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                linkPrioritiesHelpActionPerformed(evt);
            }
        });

        wideLabel.setText("Wide");

        wideTxtFld.setText("120");
        wideTxtFld.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                wideTxtFldFocusLost(evt);
            }
        });

        highLabel.setText("High");

        highTxtFld.setText("100");
        highTxtFld.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                highTxtFldFocusLost(evt);
            }
        });

        chartFontLabel.setText("Chart Printing Font");

        fontComboBox.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Dialog", "Monospaced", "Serif", "SansSerif" }));
        fontComboBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                fontComboBoxActionPerformed(evt);
            }
        });

        sizeComboBox.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "6", "8", "9", "10", "11", "12", "14", "16" }));
        sizeComboBox.setSelectedIndex(3);
        sizeComboBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                sizeComboBoxActionPerformed(evt);
            }
        });

        sampleTextLabel.setBackground(new java.awt.Color(204, 255, 204));
        sampleTextLabel.setFont(new java.awt.Font("Dialog", 0, 10)); // NOI18N
        sampleTextLabel.setText("  Sample text in this font and size.  ");
        sampleTextLabel.setOpaque(true);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(25, 25, 25)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(layout.createSequentialGroup()
                        .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                                .add(layout.createSequentialGroup()
                                    .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                                        .add(maxLabel)
                                        .add(ignorableLabel))
                                    .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                    .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                                        .add(ignorableField)
                                        .add(maxField, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 40, Short.MAX_VALUE)))
                                .add(layout.createSequentialGroup()
                                    .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                                        .add(subpatternCkBox)
                                        .add(polygamyCkBox)
                                        .add(inductionCkBox)
                                        .add(surnameCheckBox)
                                        .add(birthdateCheckBox)
                                        .add(snapToGridCkBox))
                                    .add(7, 7, 7)))
                            .add(editLinkPrioritiesBtn))
                        .add(20, 20, 20)
                        .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                                .add(layout.createSequentialGroup()
                                    .add(ignorableSlider, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(org.jdesktop.layout.LayoutStyle.UNRELATED)
                                    .add(ignoreHelp))
                                .add(layout.createSequentialGroup()
                                    .add(maxSlider, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(org.jdesktop.layout.LayoutStyle.UNRELATED)
                                    .add(maxHelp, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                            .add(subpatternHelp)
                            .add(inductionHelp)
                            .add(layout.createSequentialGroup()
                                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                                    .add(org.jdesktop.layout.GroupLayout.LEADING, linkPrioritiesHelp, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .add(org.jdesktop.layout.GroupLayout.LEADING, snapToGridHelp, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .add(org.jdesktop.layout.GroupLayout.LEADING, normalCaptureHelpBtn, 0, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .add(org.jdesktop.layout.GroupLayout.LEADING, polygamyHelp, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .add(18, 18, 18)
                                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                                    .add(layout.createSequentialGroup()
                                        .add(wideLabel)
                                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.UNRELATED)
                                        .add(wideTxtFld, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                        .add(18, 18, 18)
                                        .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                                            .add(doneBtn)
                                            .add(layout.createSequentialGroup()
                                                .add(highLabel)
                                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.UNRELATED)
                                                .add(highTxtFld, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))))
                                    .add(sizeComboBox, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))))
                    .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                        .add(sampleTextLabel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 290, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(layout.createSequentialGroup()
                            .add(chartFontLabel)
                            .add(31, 31, 31)
                            .add(fontComboBox, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 146, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap(57, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(ignorableSlider, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(ignorableLabel)
                        .add(ignorableField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .add(ignoreHelp))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(maxLabel)
                        .add(maxField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .add(maxSlider, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(maxHelp))
                .add(28, 28, 28)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(subpatternCkBox)
                    .add(subpatternHelp))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(inductionHelp)
                    .add(inductionCkBox))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.UNRELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(polygamyHelp)
                    .add(polygamyCkBox))
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(layout.createSequentialGroup()
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.UNRELATED)
                        .add(surnameCheckBox)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.UNRELATED)
                        .add(birthdateCheckBox))
                    .add(layout.createSequentialGroup()
                        .add(26, 26, 26)
                        .add(normalCaptureHelpBtn)))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.UNRELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(snapToGridCkBox)
                    .add(snapToGridHelp)
                    .add(wideLabel)
                    .add(wideTxtFld, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(highLabel)
                    .add(highTxtFld, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(editLinkPrioritiesBtn)
                    .add(linkPrioritiesHelp))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.UNRELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(chartFontLabel)
                    .add(fontComboBox, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(sizeComboBox, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(layout.createSequentialGroup()
                        .add(0, 25, Short.MAX_VALUE)
                        .add(doneBtn))
                    .add(sampleTextLabel, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void polygamyCkBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_polygamyCkBoxActionPerformed
        // TODO add your handling code here:}//GEN-LAST:event_polygamyCkBoxActionPerformed
        if (loading) {
            return;
        }
        Context.current.polygamyPermit = polygamyCkBox.isSelected();
        SIL_Edit.editWindow.chart.dirty = true;
    }
        private void ignorableFieldActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ignorableFieldActionPerformed
        // TODO add your handling code here:}//GEN-LAST:event_ignorableFieldActionPerformed
    }
        private void ignorableSliderStateChanged(javax.swing.event.ChangeEvent evt) {//GEN-FIRST:event_ignorableSliderStateChanged
            if (loading) {
                return;
            }
            JSlider iggy = (JSlider) evt.getSource();
            if (!iggy.getValueIsAdjusting()) {
                int val = (int) iggy.getValue();
                ignorableField.setText(val + "%");
                SIL_Edit.editWindow.chart.dirty = true;
                Context.current.ignorableP = val;
            }
    }//GEN-LAST:event_ignorableSliderStateChanged

    private void maxSliderStateChanged(javax.swing.event.ChangeEvent evt) {//GEN-FIRST:event_maxSliderStateChanged
        if (loading) {
            return;
        }
        JSlider maxy = (JSlider) evt.getSource();
        if (!maxy.getValueIsAdjusting()) {
            int val = (int) maxy.getValue();
            maxField.setText(val + "%");
            Context.current.maxNoiseP = val;
            SIL_Edit.editWindow.chart.dirty = true;
        }
    }//GEN-LAST:event_maxSliderStateChanged

    private void subpatternCkBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_subpatternCkBoxActionPerformed
        if (loading) {
            return;
        }
        Context.current.doBaseCBs = subpatternCkBox.isSelected();
        SIL_Edit.editWindow.chart.dirty = true;
    }//GEN-LAST:event_subpatternCkBoxActionPerformed

    private void inductionCkBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_inductionCkBoxActionPerformed
        if (loading) {
            return;
        }
        Context.current.doInduction = inductionCkBox.isSelected();
        SIL_Edit.editWindow.chart.dirty = true;
    }//GEN-LAST:event_inductionCkBoxActionPerformed

    private void doneBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_doneBtnActionPerformed
        dispose();
    }//GEN-LAST:event_doneBtnActionPerformed

    private void ignoreHelpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ignoreHelpActionPerformed
        HelpFrame.help.displayPage(HelpFrame.PREFS, "ignore");
    }//GEN-LAST:event_ignoreHelpActionPerformed

    private void maxHelpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_maxHelpActionPerformed
        HelpFrame.help.displayPage(HelpFrame.PREFS, "max");
    }//GEN-LAST:event_maxHelpActionPerformed

    private void subpatternHelpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_subpatternHelpActionPerformed
        HelpFrame.help.displayPage(HelpFrame.PREFS, "sub");
    }//GEN-LAST:event_subpatternHelpActionPerformed

    private void inductionHelpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_inductionHelpActionPerformed
        HelpFrame.help.displayPage(HelpFrame.PREFS, "induce");
    }//GEN-LAST:event_inductionHelpActionPerformed

    private void polygamyHelpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_polygamyHelpActionPerformed
        HelpFrame.help.displayPage(HelpFrame.PREFS, "poly");
    }//GEN-LAST:event_polygamyHelpActionPerformed

    private void normalCaptureHelpBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_normalCaptureHelpBtnActionPerformed
        HelpFrame.help.displayPage(HelpFrame.PREFS, "capture");
    }//GEN-LAST:event_normalCaptureHelpBtnActionPerformed

    private void surnameCheckBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_surnameCheckBoxActionPerformed
         if (loading) {
            return;
        }
        Context.current.surnameNormallyCaptured = surnameCheckBox.isSelected();
        SIL_Edit.editWindow.getPPanel().buildFocusFields();
        SIL_Edit.editWindow.chart.dirty = true;
    }//GEN-LAST:event_surnameCheckBoxActionPerformed

    private void birthdateCheckBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_birthdateCheckBoxActionPerformed
        if (loading) {
            return;
        }
        Context.current.birthDateNormallyCaptured = birthdateCheckBox.isSelected();
        SIL_Edit.editWindow.getPPanel().buildFocusFields();
        SIL_Edit.editWindow.chart.dirty = true;
    }//GEN-LAST:event_birthdateCheckBoxActionPerformed

    private void snapToGridHelpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_snapToGridHelpActionPerformed
        HelpFrame.help.displayPage(HelpFrame.PREFS, "grid");
    }//GEN-LAST:event_snapToGridHelpActionPerformed

    private void snapToGridCkBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_snapToGridCkBoxActionPerformed
        if (loading) {
            return;
        }
        if (snapToGridCkBox.isSelected()) {
            highTxtFld.setEditable(true);
            wideTxtFld.setEditable(true);
        }else {
            highTxtFld.setEditable(false);
            wideTxtFld.setEditable(false);
        }
        Library.snapToGrid = snapToGridCkBox.isSelected();
        SIL_Edit.editWindow.setSnapToGrid(Library.snapToGrid);
        SIL_Edit.editWindow.chart.dirty = true;
    }//GEN-LAST:event_snapToGridCkBoxActionPerformed

    private void wideTxtFldFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_wideTxtFldFocusLost
        if (loading) {
            return;
        }
        int wide = 0;
        try {
            wide = Integer.parseInt(wideTxtFld.getText());
        } catch (Exception ex) {
            String msg = "You must enter an integer between 20 and 120.",
                   ttl = "Invalid Entry for Grid Width.";
            JOptionPane.showMessageDialog(SIL_Edit.editWindow, msg, ttl, JOptionPane.WARNING_MESSAGE);
            wideTxtFld.setText(String.valueOf(Library.gridX));
            return;
        }
        if (wide < 20 || wide > 120) {
            String msg = "You must enter an integer between 20 and 120.",
                   ttl = "Invalid Entry for Grid Width.";
            JOptionPane.showMessageDialog(SIL_Edit.editWindow, msg, ttl, JOptionPane.WARNING_MESSAGE);
            wideTxtFld.setText(String.valueOf(Library.gridX));
            return;
        }
        Library.gridX = wide;
    }//GEN-LAST:event_wideTxtFldFocusLost

    private void highTxtFldFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_highTxtFldFocusLost
        if (loading) {
            return;
        }
        int high = 0;
        try {
            high = Integer.parseInt(highTxtFld.getText());
        } catch (Exception ex) {
            String msg = "You must enter an integer between 40 and 180.",
                   ttl = "Invalid Entry for Grid Height.";
            JOptionPane.showMessageDialog(SIL_Edit.editWindow, msg, ttl, JOptionPane.WARNING_MESSAGE);
            wideTxtFld.setText(String.valueOf(Library.gridX));
            return;
        }
        if (high < 40 || high > 180) {
            String msg = "You must enter an integer between 40 and 180.",
                   ttl = "Invalid Entry for Grid Height.";
            JOptionPane.showMessageDialog(SIL_Edit.editWindow, msg, ttl, JOptionPane.WARNING_MESSAGE);
            wideTxtFld.setText(String.valueOf(Library.gridY));
            return;
        }
        Library.gridY = high;
    }//GEN-LAST:event_highTxtFldFocusLost

    private void editLinkPrioritiesBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_editLinkPrioritiesBtnActionPerformed
        LinkPriorityFrame lpf = new LinkPriorityFrame();
        lpf.setVisible(true);
    }//GEN-LAST:event_editLinkPrioritiesBtnActionPerformed

    private void linkPrioritiesHelpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_linkPrioritiesHelpActionPerformed
        HelpFrame.help.displayPage(HelpFrame.PREFS, "priority");
    }//GEN-LAST:event_linkPrioritiesHelpActionPerformed

    private void fontComboBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_fontComboBoxActionPerformed
        resetSampleLabel();
    }//GEN-LAST:event_fontComboBoxActionPerformed

    private void sizeComboBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_sizeComboBoxActionPerformed
        resetSampleLabel();
    }//GEN-LAST:event_sizeComboBoxActionPerformed

    void resetSampleLabel() {
        /* The purpose of the Sample Text Label is to show what the font options look like.
         * Unfortunately, font sizes that look fine on paper seem tiny on screen.
         * So, I demonstrate a size 50% larger; it looks closer to the size it will have on paper.
         */
        if (loading) return;
        String fontName = (String)fontComboBox.getSelectedItem();
        int ndx = sizeComboBox.getSelectedIndex();
        int demoSize = demoSizes[ndx]; 
        int trueSize = trueSizes[ndx];
        Font nuFont = new Font(fontName, Font.PLAIN, trueSize);
        Font demoFont = new Font(fontName, Font.PLAIN, demoSize);
        sampleTextLabel.setFont(demoFont);
        PrintChart.printFont = nuFont;
    }
    
    
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(EditPrefsWindow.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(EditPrefsWindow.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(EditPrefsWindow.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(EditPrefsWindow.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {

            public void run() {
                new EditPrefsWindow().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JCheckBox birthdateCheckBox;
    private javax.swing.JLabel chartFontLabel;
    private javax.swing.JButton doneBtn;
    private javax.swing.JButton editLinkPrioritiesBtn;
    private javax.swing.JComboBox fontComboBox;
    private javax.swing.JLabel highLabel;
    private javax.swing.JTextField highTxtFld;
    private javax.swing.JTextField ignorableField;
    private javax.swing.JLabel ignorableLabel;
    private javax.swing.JSlider ignorableSlider;
    private javax.swing.JButton ignoreHelp;
    private javax.swing.JCheckBox inductionCkBox;
    private javax.swing.JButton inductionHelp;
    private javax.swing.JButton linkPrioritiesHelp;
    private javax.swing.JTextField maxField;
    private javax.swing.JButton maxHelp;
    private javax.swing.JLabel maxLabel;
    private javax.swing.JSlider maxSlider;
    private javax.swing.JButton normalCaptureHelpBtn;
    private javax.swing.JCheckBox polygamyCkBox;
    private javax.swing.JButton polygamyHelp;
    private javax.swing.JLabel sampleTextLabel;
    private javax.swing.JComboBox sizeComboBox;
    private javax.swing.JCheckBox snapToGridCkBox;
    private javax.swing.JButton snapToGridHelp;
    private javax.swing.JCheckBox subpatternCkBox;
    private javax.swing.JButton subpatternHelp;
    private javax.swing.JCheckBox surnameCheckBox;
    private javax.swing.JLabel wideLabel;
    private javax.swing.JTextField wideTxtFld;
    // End of variables declaration//GEN-END:variables
}
