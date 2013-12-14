/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import javax.swing.*;
import java.util.*;
import java.awt.Dimension;

/**
 *
 * @author gary
 */
public class KinTypePriorityFrame extends javax.swing.JFrame {

    private final int sz = 11;  // The number of rows in this editor
    int UP = 6, DOWN = 9;
    ArrayList<String> maleKTs = new ArrayList<String>(sz), 
                      femaleKTs = new ArrayList<String>(sz), 
                      neuterKTs = new ArrayList<String>(sz),
                      priorities = new ArrayList<String>(sz);
    ArrayList<String> first, second;
    JTextField[] rows = new JTextField[sz];
    JTextField[] priorityGrps = new JTextField[sz];
    JButton[] downBtns = new JButton[sz];
    JButton[] upBtns = new JButton[sz];
    
    
    void loadRowArrays() {        
        rows[0] = row1;
        rows[1] = row2;
        rows[2] = row3;
        rows[3] = row4;
        rows[4] = row5;
        rows[5] = row6;
        rows[6] = row7;
        rows[7] = row8;
        rows[8] = row9;
        rows[9] = row10;
        rows[10] = row11;
        priorityGrps[0] = priorityGrp1;
        priorityGrps[1] = priorityGrp2;
        priorityGrps[2] = priorityGrp3;
        priorityGrps[3] = priorityGrp4;
        priorityGrps[4] = priorityGrp5;
        priorityGrps[5] = priorityGrp6;
        priorityGrps[6] = priorityGrp7;
        priorityGrps[7] = priorityGrp8;
        priorityGrps[8] = priorityGrp9;
        priorityGrps[9] = priorityGrp10;
        priorityGrps[10] = priorityGrp11;
        downBtns[0] = row1Dn;
        downBtns[1] = row2Dn;
        downBtns[2] = row3Dn;
        downBtns[3] = row4Dn;
        downBtns[4] = row5Dn;
        downBtns[5] = row6Dn;
        downBtns[6] = row7Dn;
        downBtns[7] = row8Dn;
        downBtns[8] = row9Dn;
        downBtns[9] = row10Dn;
        downBtns[10] = row11Dn;
        upBtns[0] = null;
        upBtns[1] = row2Up;
        upBtns[2] = row3Up;
        upBtns[3] = row4Up;
        upBtns[4] = row5Up;
        upBtns[5] = row6Up;
        upBtns[6] = row7Up;
        upBtns[7] = row8Up;
        upBtns[8] = row9Up;
        upBtns[9] = row10Up;
        upBtns[10] = row11Up;
    }
    
    void setSizes() {
        Dimension dim1 = new Dimension(90, 28),
                  dim2 = new Dimension(28, 28);
        for (int i=0; i < sz; i++) {
            JTextField jtf = rows[i];
            jtf.setPreferredSize(dim1);
            jtf = priorityGrps[i];
            jtf.setPreferredSize(dim2);
        }
    }
    
    
    /**
     * Creates new form LinkPriorityFrame
     */
    public KinTypePriorityFrame() {
        initComponents();
        loadRowArrays();
        loadRows();
        setSizes();
        setVisibilities();
    }

    void loadRows() {
        // First we load the arrays of kin types
        // There are always a male and female kin type.
        // There might not be a neuter kin type.
        Context ctxt = Context.current;
        first = (ctxt.maleFirst ? maleKTs : femaleKTs);
        second = (ctxt.maleFirst ? femaleKTs : maleKTs);
        maleFirstBtn.setSelected(ctxt.maleFirst);
        femaleFirstBtn.setSelected(!ctxt.maleFirst);
        int i = 0, siz = ctxt.kinTypeOrder.size();
        while (i < siz) {
            String kTyp = ctxt.kinTypeOrder.get(i);
            if (kTyp.startsWith("*")) {
                first.add(kTyp);
                second.add(kTyp);
                neuterKTs.add(null);
                priorities.add(ctxt.kinTypePriority.get(i++));
            } else {
                first.add(ctxt.kinTypeOrder.get(i));
                priorities.add(ctxt.kinTypePriority.get(i++));
                second.add(ctxt.kinTypeOrder.get(i++));
                if (i < siz) {
                    String nextKT = ctxt.kinTypeOrder.get(i);
                    if (isNeuter(nextKT)) {
                        i++;
                        neuterKTs.add(nextKT);
                    } else {
                        neuterKTs.add(null);
                    }
                } else {  // Only happens if last kin type was male/female
                    neuterKTs.add(null);
                }
            }

        }
        reloadRows();
    }
    
    static boolean isNeuter(String ktype) {
        if (ktype.equals("P") || ktype.equals("C") || 
                ktype.equals("S") || ktype.equals("Sib")) {
            return true;
        }
        return false;
    }
    
    void reloadRows() {  //  maybe only 8 rows have content
        int i, size = first.size();
        for (i=0; i < size; i++) {
            String txt = first.get(i) + 
                    (second.get(i).startsWith("*") ? "" : ", " + second.get(i));
            if (neuterKTs.get(i) != null) {
                txt += ", " + neuterKTs.get(i);
            }
            rows[i].setText(txt);            
            priorityGrps[i].setText(priorities.get(i));
        }
        for (int j=i; j < sz; j++) {  //  blank remaining rows 
            rows[j].setText("");            
            priorityGrps[j].setText("");
        }
    }
    
    void setVisibilities() {
        // First 8 rows are filled with normal defaults
        int blankRow = first.size();
        downBtns[blankRow - 1].setEnabled(false);
        for (int i = blankRow; i < sz; i++) {
            downBtns[i].setVisible(false);
            upBtns[i].setVisible(false);
            rows[i].setVisible(false);
            priorityGrps[i].setVisible(false);
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        genderPriorityBtnGrp = new javax.swing.ButtonGroup();
        title = new javax.swing.JLabel();
        row1Dn = new javax.swing.JButton();
        row2Dn = new javax.swing.JButton();
        row2Up = new javax.swing.JButton();
        row1 = new javax.swing.JTextField();
        row2 = new javax.swing.JTextField();
        priorityGrp1 = new javax.swing.JTextField();
        priorityGrp2 = new javax.swing.JTextField();
        row3Up = new javax.swing.JButton();
        row3Dn = new javax.swing.JButton();
        row3 = new javax.swing.JTextField();
        priorityGrp3 = new javax.swing.JTextField();
        row4Dn = new javax.swing.JButton();
        row4Up = new javax.swing.JButton();
        row4 = new javax.swing.JTextField();
        priorityGrp4 = new javax.swing.JTextField();
        row6 = new javax.swing.JTextField();
        row6Up = new javax.swing.JButton();
        priorityGrp6 = new javax.swing.JTextField();
        row6Dn = new javax.swing.JButton();
        row5Dn = new javax.swing.JButton();
        row5Up = new javax.swing.JButton();
        row5 = new javax.swing.JTextField();
        priorityGrp5 = new javax.swing.JTextField();
        row7 = new javax.swing.JTextField();
        row9 = new javax.swing.JTextField();
        priorityGrp9 = new javax.swing.JTextField();
        row7Dn = new javax.swing.JButton();
        priorityGrp7 = new javax.swing.JTextField();
        row7Up = new javax.swing.JButton();
        row9Up = new javax.swing.JButton();
        doneBtn = new javax.swing.JButton();
        maleFirstBtn = new javax.swing.JRadioButton();
        femaleFirstBtn = new javax.swing.JRadioButton();
        row8Dn = new javax.swing.JButton();
        row8Up = new javax.swing.JButton();
        row8 = new javax.swing.JTextField();
        priorityGrp8 = new javax.swing.JTextField();
        row9Dn = new javax.swing.JButton();
        row10Dn = new javax.swing.JButton();
        row10Up = new javax.swing.JButton();
        row10 = new javax.swing.JTextField();
        priorityGrp10 = new javax.swing.JTextField();
        priorityGrp11 = new javax.swing.JTextField();
        row11 = new javax.swing.JTextField();
        row11Up = new javax.swing.JButton();
        row11Dn = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Edit Link Priorities");
        setBackground(new java.awt.Color(204, 255, 204));

        title.setText("Edit Link Priorities");

        row1Dn.setText("v");
        row1Dn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                row1DnActionPerformed(evt);
            }
        });

        row2Dn.setText("v");
        row2Dn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                row2DnActionPerformed(evt);
            }
        });

        row2Up.setText("^");
        row2Up.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                row2UpActionPerformed(evt);
            }
        });

        row1.setEditable(false);
        row1.setText("Hbro, Hsis, Hsib");

        row2.setEditable(false);
        row2.setText("Hbro, Hsis, Hsib");

        priorityGrp1.setText("A");
        priorityGrp1.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                priorityGrp1FocusLost(evt);
            }
        });

        priorityGrp2.setText("A");
        priorityGrp2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                priorityGrp2ActionPerformed(evt);
            }
        });
        priorityGrp2.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                priorityGrp2FocusLost(evt);
            }
        });

        row3Up.setText("^");
        row3Up.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                row3UpActionPerformed(evt);
            }
        });

        row3Dn.setText("v");
        row3Dn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                row3DnActionPerformed(evt);
            }
        });

        row3.setEditable(false);
        row3.setText("Hbro, Hsis, Hsib");

        priorityGrp3.setText("A");
        priorityGrp3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                priorityGrp3ActionPerformed(evt);
            }
        });
        priorityGrp3.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                priorityGrp3FocusLost(evt);
            }
        });

        row4Dn.setText("v");
        row4Dn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                row4DnActionPerformed(evt);
            }
        });

        row4Up.setText("^");
        row4Up.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                row4UpActionPerformed(evt);
            }
        });

        row4.setEditable(false);
        row4.setText("Hbro, Hsis, Hsib");

        priorityGrp4.setText("A");
        priorityGrp4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                priorityGrp4ActionPerformed(evt);
            }
        });
        priorityGrp4.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                priorityGrp4FocusLost(evt);
            }
        });

        row6.setEditable(false);
        row6.setText("Hbro, Hsis, Hsib");

        row6Up.setText("^");
        row6Up.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                row6UpActionPerformed(evt);
            }
        });

        priorityGrp6.setText("A");
        priorityGrp6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                priorityGrp6ActionPerformed(evt);
            }
        });
        priorityGrp6.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                priorityGrp6FocusLost(evt);
            }
        });

        row6Dn.setText("v");
        row6Dn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                row6DnActionPerformed(evt);
            }
        });

        row5Dn.setText("v");
        row5Dn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                row5DnActionPerformed(evt);
            }
        });

        row5Up.setText("^");
        row5Up.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                row5UpActionPerformed(evt);
            }
        });

        row5.setEditable(false);
        row5.setText("Hbro, Hsis, Hsib");

        priorityGrp5.setText("A");
        priorityGrp5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                priorityGrp5ActionPerformed(evt);
            }
        });
        priorityGrp5.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                priorityGrp5FocusLost(evt);
            }
        });

        row7.setEditable(false);
        row7.setText("Hbro, Hsis, Hsib");

        row9.setEditable(false);
        row9.setText("Hbro, Hsis, Hsib");

        priorityGrp9.setText("A");
        priorityGrp9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                priorityGrp9ActionPerformed(evt);
            }
        });
        priorityGrp9.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                priorityGrp9FocusLost(evt);
            }
        });

        row7Dn.setText("v");
        row7Dn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                row7DnActionPerformed(evt);
            }
        });

        priorityGrp7.setText("A");
        priorityGrp7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                priorityGrp7ActionPerformed(evt);
            }
        });
        priorityGrp7.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                priorityGrp7FocusLost(evt);
            }
        });

        row7Up.setText("^");
        row7Up.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                row7UpActionPerformed(evt);
            }
        });

        row9Up.setText("^");
        row9Up.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                row9UpActionPerformed(evt);
            }
        });

        doneBtn.setText("Done");
        doneBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                doneBtnActionPerformed(evt);
            }
        });

        genderPriorityBtnGrp.add(maleFirstBtn);
        maleFirstBtn.setSelected(true);
        maleFirstBtn.setText("Male First");
        maleFirstBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                maleFirstBtnActionPerformed(evt);
            }
        });

        genderPriorityBtnGrp.add(femaleFirstBtn);
        femaleFirstBtn.setText("Female First");
        femaleFirstBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                femaleFirstBtnActionPerformed(evt);
            }
        });

        row8Dn.setText("v");
        row8Dn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                row8DnActionPerformed(evt);
            }
        });

        row8Up.setText("^");
        row8Up.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                row8UpActionPerformed(evt);
            }
        });

        row8.setEditable(false);
        row8.setText("Hbro, Hsis, Hsib");

        priorityGrp8.setText("A");
        priorityGrp8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                priorityGrp8ActionPerformed(evt);
            }
        });
        priorityGrp8.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                priorityGrp8FocusLost(evt);
            }
        });

        row9Dn.setText("v");
        row9Dn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                row9DnActionPerformed(evt);
            }
        });

        row10Dn.setText("v");
        row10Dn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                row10DnActionPerformed(evt);
            }
        });

        row10Up.setText("^");
        row10Up.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                row10UpActionPerformed(evt);
            }
        });

        row10.setEditable(false);
        row10.setText("Hbro, Hsis, Hsib");

        priorityGrp10.setText("A");
        priorityGrp10.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                priorityGrp10ActionPerformed(evt);
            }
        });
        priorityGrp10.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                priorityGrp10FocusLost(evt);
            }
        });

        priorityGrp11.setText("A");
        priorityGrp11.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                priorityGrp11ActionPerformed(evt);
            }
        });
        priorityGrp11.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                priorityGrp11FocusLost(evt);
            }
        });

        row11.setEditable(false);
        row11.setText("Hbro, Hsis, Hsib");

        row11Up.setText("^");
        row11Up.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                row11UpActionPerformed(evt);
            }
        });

        row11Dn.setText("v");
        row11Dn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                row11DnActionPerformed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(layout.createSequentialGroup()
                        .addContainerGap()
                        .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(layout.createSequentialGroup()
                                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                                    .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                                        .add(row2Dn)
                                        .add(row3Dn)
                                        .add(row4Dn)
                                        .add(row6Dn)
                                        .add(row5Dn)
                                        .add(row7Dn)
                                        .add(org.jdesktop.layout.GroupLayout.TRAILING, row8Dn))
                                    .add(row9Dn))
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                                    .add(row2Up)
                                    .add(row3Up)
                                    .add(row4Up)
                                    .add(row5Up)
                                    .add(row6Up)
                                    .add(row7Up)
                                    .add(row8Up)
                                    .add(org.jdesktop.layout.GroupLayout.TRAILING, row9Up)))
                            .add(row1Dn))
                        .add(25, 25, 25)
                        .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(layout.createSequentialGroup()
                                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                                    .add(row1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                    .add(row2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                    .add(row3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                    .add(row4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                    .add(row5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                    .add(row6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                    .add(row7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                                .add(18, 18, 18)
                                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                                    .add(priorityGrp1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                    .add(priorityGrp2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                    .add(priorityGrp3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                    .add(priorityGrp4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                    .add(priorityGrp5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                    .add(priorityGrp6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                    .add(priorityGrp7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                            .add(layout.createSequentialGroup()
                                .add(row8, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .add(18, 18, 18)
                                .add(priorityGrp8, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                            .add(layout.createSequentialGroup()
                                .add(row9, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .add(18, 18, 18)
                                .add(priorityGrp9, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))))
                    .add(layout.createSequentialGroup()
                        .add(105, 105, 105)
                        .add(title))
                    .add(layout.createSequentialGroup()
                        .add(40, 40, 40)
                        .add(maleFirstBtn)
                        .add(31, 31, 31)
                        .add(femaleFirstBtn))
                    .add(layout.createSequentialGroup()
                        .add(223, 223, 223)
                        .add(doneBtn))
                    .add(layout.createSequentialGroup()
                        .addContainerGap()
                        .add(row10Dn)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(row10Up)
                        .add(25, 25, 25)
                        .add(row10, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(18, 18, 18)
                        .add(priorityGrp10, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .add(layout.createSequentialGroup()
                        .addContainerGap()
                        .add(row11Dn)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(row11Up)
                        .add(25, 25, 25)
                        .add(row11, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(18, 18, 18)
                        .add(priorityGrp11, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(31, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(title)
                .add(15, 15, 15)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(row1Dn)
                    .add(row1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(priorityGrp1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(row2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(priorityGrp2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(row2Dn)
                    .add(row2Up))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(row3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(priorityGrp3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(row3Dn)
                    .add(row3Up))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(row4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(priorityGrp4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(row4Dn)
                    .add(row4Up))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(row5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(priorityGrp5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(row5Dn)
                    .add(row5Up))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(row6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(priorityGrp6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(row6Dn)
                    .add(row6Up))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(row7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(priorityGrp7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(row7Dn)
                    .add(row7Up))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(priorityGrp8, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                        .add(row8Up)
                        .add(row8Dn))
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, row8, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(row9Up)
                    .add(row9, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(priorityGrp9, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(row9Dn))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(row10Up)
                    .add(row10, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(priorityGrp10, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(row10Dn))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(row11Up)
                    .add(row11, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(priorityGrp11, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(row11Dn))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 16, Short.MAX_VALUE)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(maleFirstBtn)
                    .add(femaleFirstBtn))
                .add(22, 22, 22)
                .add(doneBtn)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void row1DnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_row1DnActionPerformed
        shuffle(0, DOWN);
    }//GEN-LAST:event_row1DnActionPerformed

    private void row2DnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_row2DnActionPerformed
        shuffle(1, DOWN);
    }//GEN-LAST:event_row2DnActionPerformed

    private void row3DnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_row3DnActionPerformed
        shuffle(2, DOWN);
    }//GEN-LAST:event_row3DnActionPerformed

    private void row4DnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_row4DnActionPerformed
        shuffle(3, DOWN);
    }//GEN-LAST:event_row4DnActionPerformed

    private void row5DnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_row5DnActionPerformed
        shuffle(4, DOWN);
    }//GEN-LAST:event_row5DnActionPerformed

    private void row6DnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_row6DnActionPerformed
        shuffle(5, DOWN);
    }//GEN-LAST:event_row6DnActionPerformed

    private void row7DnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_row7DnActionPerformed
        shuffle(6, DOWN);
    }//GEN-LAST:event_row7DnActionPerformed

    private void row2UpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_row2UpActionPerformed
        shuffle(1, UP);
    }//GEN-LAST:event_row2UpActionPerformed

    private void row3UpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_row3UpActionPerformed
        shuffle(2, UP);
    }//GEN-LAST:event_row3UpActionPerformed

    private void row4UpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_row4UpActionPerformed
        shuffle(3, UP);
    }//GEN-LAST:event_row4UpActionPerformed

    private void row5UpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_row5UpActionPerformed
        shuffle(4, UP);
    }//GEN-LAST:event_row5UpActionPerformed

    private void row6UpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_row6UpActionPerformed
        shuffle(5, UP);
    }//GEN-LAST:event_row6UpActionPerformed

    private void row7UpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_row7UpActionPerformed
        shuffle(6, UP);
    }//GEN-LAST:event_row7UpActionPerformed

    private void row9UpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_row9UpActionPerformed
        shuffle(8, UP);
    }//GEN-LAST:event_row9UpActionPerformed

    void shuffle(int rowNum, int direction) {
        String firstTxt = first.remove(rowNum),
               secondTxt = second.remove(rowNum),
               neuterTxt = neuterKTs.remove(rowNum),
               prioriTxt = priorities.remove(rowNum);
        int newRow = (direction == UP ? rowNum -1 : rowNum +1);
        first.add(newRow, firstTxt);
        second.add(newRow, secondTxt);
        neuterKTs.add(newRow, neuterTxt);
        priorities.add(newRow, prioriTxt);
        reloadRows();
    }
    
    
    private void maleFirstBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_maleFirstBtnActionPerformed
        first = maleKTs;
        second = femaleKTs;
        reloadRows();
    }//GEN-LAST:event_maleFirstBtnActionPerformed

    private void femaleFirstBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_femaleFirstBtnActionPerformed
        first = femaleKTs;
        second = maleKTs;
        reloadRows();
    }//GEN-LAST:event_femaleFirstBtnActionPerformed

    private void doneBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_doneBtnActionPerformed
        Context.current.maleFirst = maleFirstBtn.isSelected();
        int siz = Context.current.kinTypeOrder.size(),
            row = 0,
            i = 0;
        while (i < siz) {
            Context.current.kinTypePriority.set(i, priorities.get(row));
            Context.current.kinTypeOrder.set(i++, first.get(row));
            Context.current.kinTypePriority.set(i, priorities.get(row));
            // Chartable UDPs appear in both first & second; they should appear once in kinTypeOrder
            String s = second.get(row);
            if (!s.startsWith("*")) {
                Context.current.kinTypeOrder.set(i++, s);
            }
            if (neuterKTs.get(row) != null) {
                Context.current.kinTypePriority.set(i, priorities.get(row));      
                Context.current.kinTypeOrder.set(i++, neuterKTs.get(row));
            }            
            row++;
        }        
        SIL_Edit.edWin.chart.dirty = true;
        SIL_Edit.edWin.rebuildKTMatrixEtc();
        dispose();
    }//GEN-LAST:event_doneBtnActionPerformed

    private void priorityGrp1FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_priorityGrp1FocusLost
        changePriority(0, priorityGrp1);
    }//GEN-LAST:event_priorityGrp1FocusLost

    private void priorityGrp2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_priorityGrp2ActionPerformed
        //  Not needed.
    }//GEN-LAST:event_priorityGrp2ActionPerformed

    private void priorityGrp3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_priorityGrp3ActionPerformed
        //  Not needed.        
    }//GEN-LAST:event_priorityGrp3ActionPerformed

    private void priorityGrp4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_priorityGrp4ActionPerformed
        //  Not needed.        
    }//GEN-LAST:event_priorityGrp4ActionPerformed

    private void priorityGrp5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_priorityGrp5ActionPerformed
        //  Not needed.        
    }//GEN-LAST:event_priorityGrp5ActionPerformed

    private void priorityGrp6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_priorityGrp6ActionPerformed
        //  Not needed.        
    }//GEN-LAST:event_priorityGrp6ActionPerformed

    private void priorityGrp7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_priorityGrp7ActionPerformed
        //  Not needed.        
    }//GEN-LAST:event_priorityGrp7ActionPerformed

    private void priorityGrp9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_priorityGrp9ActionPerformed
        //  Not needed.        
    }//GEN-LAST:event_priorityGrp9ActionPerformed

    private void priorityGrp2FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_priorityGrp2FocusLost
        changePriority(1, priorityGrp2);
    }//GEN-LAST:event_priorityGrp2FocusLost

    private void priorityGrp3FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_priorityGrp3FocusLost
        changePriority(2, priorityGrp3);
    }//GEN-LAST:event_priorityGrp3FocusLost

    private void priorityGrp4FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_priorityGrp4FocusLost
        changePriority(3, priorityGrp4);
    }//GEN-LAST:event_priorityGrp4FocusLost

    private void priorityGrp5FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_priorityGrp5FocusLost
        changePriority(4, priorityGrp5);
    }//GEN-LAST:event_priorityGrp5FocusLost

    private void priorityGrp6FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_priorityGrp6FocusLost
        changePriority(5, priorityGrp6);
    }//GEN-LAST:event_priorityGrp6FocusLost

    private void priorityGrp7FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_priorityGrp7FocusLost
        changePriority(6, priorityGrp7);
    }//GEN-LAST:event_priorityGrp7FocusLost

    private void priorityGrp9FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_priorityGrp9FocusLost
        changePriority(8, priorityGrp9);
    }//GEN-LAST:event_priorityGrp9FocusLost

    private void row8DnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_row8DnActionPerformed
        shuffle(7, DOWN);
    }//GEN-LAST:event_row8DnActionPerformed

    private void row8UpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_row8UpActionPerformed
        shuffle(7, UP);
    }//GEN-LAST:event_row8UpActionPerformed

    private void priorityGrp8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_priorityGrp8ActionPerformed
        // Not needed
    }//GEN-LAST:event_priorityGrp8ActionPerformed

    private void priorityGrp8FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_priorityGrp8FocusLost
        changePriority(7, priorityGrp8);
    }//GEN-LAST:event_priorityGrp8FocusLost

    private void row9DnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_row9DnActionPerformed
        shuffle(8, DOWN);
    }//GEN-LAST:event_row9DnActionPerformed

    private void row10DnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_row10DnActionPerformed
        shuffle(9, DOWN);
    }//GEN-LAST:event_row10DnActionPerformed

    private void row10UpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_row10UpActionPerformed
        shuffle(9, UP);
    }//GEN-LAST:event_row10UpActionPerformed

    private void priorityGrp10ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_priorityGrp10ActionPerformed
        // Not needed
    }//GEN-LAST:event_priorityGrp10ActionPerformed

    private void priorityGrp10FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_priorityGrp10FocusLost
        changePriority(9, priorityGrp10);
    }//GEN-LAST:event_priorityGrp10FocusLost

    private void priorityGrp11ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_priorityGrp11ActionPerformed
        // Not needed
    }//GEN-LAST:event_priorityGrp11ActionPerformed

    private void priorityGrp11FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_priorityGrp11FocusLost
        changePriority(10, priorityGrp11);
    }//GEN-LAST:event_priorityGrp11FocusLost

    private void row11UpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_row11UpActionPerformed
        shuffle(10, UP);
    }//GEN-LAST:event_row11UpActionPerformed

    private void row11DnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_row11DnActionPerformed
        shuffle(10, DOWN);
    }//GEN-LAST:event_row11DnActionPerformed

    
    
    void changePriority(int rowNum, JTextField jtf) {
        char ltr = jtf.getText().toUpperCase().charAt(0);
        if (Character.isLetter(ltr)) {
            priorities.set(rowNum, Character.toString(ltr));
        }else {
            String msg = "Illegal entry for Priority: " + jtf.getText();
            msg += ".\nMust enter a letter.";
            System.err.println(msg);
            JOptionPane.showMessageDialog(this, msg, "Priority of Kin Types", JOptionPane.ERROR_MESSAGE);
        }
        jtf.setText(priorities.get(rowNum));
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /*
         * Set the Nimbus look and feel
         */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /*
         * If Nimbus (introduced in Java SE 6) is not available, stay with the
         * default look and feel. For details see
         * http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(KinTypePriorityFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(KinTypePriorityFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(KinTypePriorityFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(KinTypePriorityFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /*
         * Create and display the form
         */
        java.awt.EventQueue.invokeLater(new Runnable() {

            public void run() {
                new KinTypePriorityFrame().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton doneBtn;
    private javax.swing.JRadioButton femaleFirstBtn;
    private javax.swing.ButtonGroup genderPriorityBtnGrp;
    private javax.swing.JRadioButton maleFirstBtn;
    private javax.swing.JTextField priorityGrp1;
    private javax.swing.JTextField priorityGrp10;
    private javax.swing.JTextField priorityGrp11;
    private javax.swing.JTextField priorityGrp2;
    private javax.swing.JTextField priorityGrp3;
    private javax.swing.JTextField priorityGrp4;
    private javax.swing.JTextField priorityGrp5;
    private javax.swing.JTextField priorityGrp6;
    private javax.swing.JTextField priorityGrp7;
    private javax.swing.JTextField priorityGrp8;
    private javax.swing.JTextField priorityGrp9;
    private javax.swing.JTextField row1;
    private javax.swing.JTextField row10;
    private javax.swing.JButton row10Dn;
    private javax.swing.JButton row10Up;
    private javax.swing.JTextField row11;
    private javax.swing.JButton row11Dn;
    private javax.swing.JButton row11Up;
    private javax.swing.JButton row1Dn;
    private javax.swing.JTextField row2;
    private javax.swing.JButton row2Dn;
    private javax.swing.JButton row2Up;
    private javax.swing.JTextField row3;
    private javax.swing.JButton row3Dn;
    private javax.swing.JButton row3Up;
    private javax.swing.JTextField row4;
    private javax.swing.JButton row4Dn;
    private javax.swing.JButton row4Up;
    private javax.swing.JTextField row5;
    private javax.swing.JButton row5Dn;
    private javax.swing.JButton row5Up;
    private javax.swing.JTextField row6;
    private javax.swing.JButton row6Dn;
    private javax.swing.JButton row6Up;
    private javax.swing.JTextField row7;
    private javax.swing.JButton row7Dn;
    private javax.swing.JButton row7Up;
    private javax.swing.JTextField row8;
    private javax.swing.JButton row8Dn;
    private javax.swing.JButton row8Up;
    private javax.swing.JTextField row9;
    private javax.swing.JButton row9Dn;
    private javax.swing.JButton row9Up;
    private javax.swing.JLabel title;
    // End of variables declaration//GEN-END:variables
    
}
