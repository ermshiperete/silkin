import java.io.File;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Rectangle;
import java.awt.event.ActionEvent;
import java.awt.print.PageFormat;
import java.awt.print.Printable;
import java.awt.print.PrinterException;
import java.awt.print.PrinterJob;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;

/**
 * This class provides printing capability for Family Tree charts in SILKin.
 * Charts are drawn in the ChartPanel inside a JScrollPanel.
 *
 * @author Gary Morris
 */
public class PrintChart implements Printable {

    public static Font printFont;
    public static Font tinyFont = new Font("Dialog", Font.PLAIN, 4);
    public static PageFormat pgFormat = null;
    ChartPanel chart = null;
    JScrollPane pane;
    boolean wholeChart, ok = false;
    int nmbrOfPages = 0;
    Rectangle[] boundsArray;

    public PrintChart(JScrollPane js, boolean whole) {
        pane = js;
        wholeChart = whole;
        if (printFont == null) {
            printFont = new Font("Dialog", Font.PLAIN, 8);
        }
    }

    public void printTheChart() {
        chart = SIL_Edit.editWindow.chart;
        if (chart == null) {
            String msg = "Must have a chart visible before you can print it.";
            JOptionPane.showMessageDialog(SIL_Edit.editWindow, msg, 
                    "Invalid Print Command", JOptionPane.WARNING_MESSAGE);
            return;
        }
        PrinterJob job = PrinterJob.getPrinterJob();
        if (pgFormat == null) {
            PageFormat defaultPage = job.defaultPage();
            defaultPage.setOrientation(PageFormat.LANDSCAPE);
            pgFormat = job.pageDialog(defaultPage);
        }
        // Using page format selected, calculate how many sheets wide and
        // high the printed output must be for whole chart.
        int[] chartSize = SIL_Edit.editWindow.chart.chartSize(null);
        if (chartSize[0] == 0) {
            String msg = "Must have at least one symbol on chart.";
            JOptionPane.showMessageDialog(SIL_Edit.editWindow, msg,
                    "Invalid Print Command", JOptionPane.WARNING_MESSAGE);
            return;
        }
        if (wholeChart) {
            int pgHeight = (int) pgFormat.getImageableHeight() - Library.gridY,
                    pgWidth = (int) pgFormat.getImageableWidth() - Library.gridX;
            int pagesWide = (chartSize[0] / pgWidth) + 1;
            int pagesHigh = (chartSize[1] / pgHeight) + 1;
            nmbrOfPages = pagesWide * pagesHigh;
            //   Now calculate the page bounds for each sheet to be printed
            boundsArray = new Rectangle[nmbrOfPages];
            int pgNmbr = 0, offsetX = chartSize[2], offsetY = chartSize[3];
            for (int w = 0; w < pagesWide; w++) {
                for (int h = 0; h < pagesHigh; h++) {
                    int x = (w * pgWidth), y = (h * pgHeight);
                    Rectangle pgBounds = new Rectangle(x + offsetX, y + offsetY, pgWidth, pgHeight);
                    boundsArray[pgNmbr++] = pgBounds;
                }
            }
        }
        job.setPrintable(this, pgFormat);
        ok = job.printDialog();
        if (ok) {
            try {
                job.print();
            } catch (PrinterException ex) {
                Context.breakpoint();
            }
        }
    }  

    public int print(Graphics g, PageFormat pf, int page) throws PrinterException {
        Graphics2D g2d = (Graphics2D) g;
        Context ctxt = Context.current;
        int chartPageNmbr = page + 1;
        String chartTitle = ctxt.currentChart;
        chartTitle += ": " + ctxt.getChartDescription(ctxt.currentChart);
        if (wholeChart) {
            if (page >= nmbrOfPages) {
                return NO_SUCH_PAGE;
            } else {
                //  Print the page called for
                Rectangle segmentBounds = boundsArray[page];
                int offsetX = segmentBounds.x,
                        offsetY = segmentBounds.y;
                g2d.translate(pf.getImageableX() - offsetX,
                        pf.getImageableY() - offsetY);
                // Print page header
                g2d.setFont(tinyFont);
                String header = chartTitle + " pg " + chartPageNmbr;
                File saveFile = SIL_Edit.editWindow.chart.saveFile;
                if (saveFile != null) {
                    header += "\t\t\t\t\t\t\t\tFrom: " + saveFile.getName();
                }
                g2d.drawString(header, offsetX + 5, offsetY + 15);
                g2d.setFont(printFont);
                chart.paint0(g2d, segmentBounds, ctxt.currentChart);
                return PAGE_EXISTS;
            }
        } else {  // Print just visible portion: Page 0
            if (page > 0) {
                return NO_SUCH_PAGE;
            }
            g2d.setFont(printFont);
            Rectangle segmentBounds = pane.getViewport().getViewRect();
            // Adjust bounds to remove white space left and top
            int[] chartSize = SIL_Edit.editWindow.chart.chartSize(segmentBounds);
            // chartSize: width, height, offsetX, offsetY
            int offsetX = chartSize[2],
                    offsetY = chartSize[3];
            g2d.translate(pf.getImageableX() - offsetX,
                    pf.getImageableY() - offsetY);
            chart.paint0(g2d, segmentBounds, ctxt.currentChart);
            return PAGE_EXISTS;
        }
    }
}
