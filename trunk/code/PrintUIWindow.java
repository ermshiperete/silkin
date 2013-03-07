/*
 * Copyright (c) 1995, 2008, Oracle and/or its affiliates. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *   - Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *
 *   - Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution.
 *
 *   - Neither the name of Oracle or the names of its
 *     contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
 * IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */ 


import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.awt.print.*;
import java.awt.geom.*;

public class PrintUIWindow implements Printable, ActionListener {

    JFrame frameToPrint;
    static JScrollPane pane;
    static JTextArea text;
    static PageFormat pgFormat = null;

    public int print(Graphics g, PageFormat pf, int page) throws
                                                        PrinterException {

        if (page > 0) { /* We have only one page, and 'page' is zero-based */
            return NO_SUCH_PAGE;
        }

        /* User (0,0) is typically outside the imageable area, so we must
         * translate by the X and Y values in the PageFormat to avoid clipping
         */
        Graphics2D g2d = (Graphics2D)g;
        g2d.translate(pf.getImageableX(), pf.getImageableY());

        /* Now print the window and its visible contents */
//        if (page == 0) {
//        text.printAll(g);
//        } else 
            if (page == 0) {
            // Default settings for PORTRAIT
            int wide = 570, high = 730;
            if (pgFormat.getOrientation() == PageFormat.LANDSCAPE) {
                wide = 730;
                high = 570;
            }
//            for (int i=0; i <= wide; i+= 10) {
//                g2d.draw(new Line2D.Float(i, 0, i, high));
//            }
//            for (int i=0; i <= high; i+= 10) {
//                g2d.draw(new Line2D.Float(0, i, wide, i));
//            }
//            Shape rndRect = new RoundRectangle2D.Float(110, 10, 80, 80, 10, 10);
//            g2d.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER, 0.40F));
//            g2d.draw(rndRect);
//            g2d.setColor(Color.YELLOW);
//            g2d.fill(rndRect);
            Font pFont;
            float line = 15;
            int[] sizes = {6, 8, 9, 10, 11, 12, 14, 16 };
                for (int size : sizes) {
                    pFont = new Font("Dialog", Font.PLAIN, size);
                    g2d.setFont(pFont);
                    g2d.drawString("This is Dialog PLAIN size " + size + ".", 10, line);
                    line += 25;
                }
            
        }
        /* tell the caller that this page is part of the printed document */
        return PAGE_EXISTS;
    }

    public void actionPerformed(ActionEvent e) {
         PrinterJob job = PrinterJob.getPrinterJob();
//         if (pgFormat == null) {
            pgFormat = job.pageDialog(job.defaultPage());
//         }
         job.setPrintable(this, pgFormat);
         boolean ok = job.printDialog();
         if (ok) {
             try {
                  job.print();
             } catch (PrinterException ex) {
              /* The job did not successfully complete */
             }
         }
    }

    public PrintUIWindow(JFrame f) {
        frameToPrint = f;
    }

    public static void main(String args[]) {
        UIManager.put("swing.boldMetal", Boolean.FALSE);
        JFrame f = new JFrame("Print Grid Example");
        f.addWindowListener(new WindowAdapter() {
           public void windowClosing(WindowEvent e) {System.exit(0);}
        });
        text = new JTextArea(50, 20);
        for (int i=1;i<=50;i++) {
            text.append("The square of " + i + " is " + (i * i) +"\n");
        }
        pane = new JScrollPane(text);
        pane.setPreferredSize(new Dimension(250,200));
        f.add("Center", pane);
        JButton printButton = new JButton("Print It");
        printButton.addActionListener(new PrintUIWindow(f));
        f.add("South", printButton);
        f.pack();
        f.setVisible(true);
    }
}
