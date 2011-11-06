

/**	This class is the principal class of the SILKin program. It is designed to learn
kinship terminology for a new culture from a collection of {@link Dyad} objects.

Author:	Gary Morris, Northern Virginia Community College

Dates:  Begun in 2002. 
Dissertation based on this system accepted 2008.
User Interface (KinshipEditor) based on KAES code begun 2010.
 */
import javax.swing.*;

public class SILKin extends JFrame {

    static MainPane mainPane;
    static String runMode = "SIL_Edit";

    public static void main(String[] args) {   // System Initialization Method
        //  runMode = "KAES";
        //  runMode = "SIL_Edit";
        try {
            //Schedule a job for the event-dispatching thread: creating and showing a GUI.
            if (runMode.equals("learn")) {
                javax.swing.SwingUtilities.invokeLater(new Runnable() {
                    public void run() {
                        createAndShowGUI();
                    }
                });
            } else if (runMode.equals("SIL_Edit")) {
                javax.swing.SwingUtilities.invokeLater(new Runnable() {

                    public void run() {
                        SIL_Edit.main(null);
                    }
                });
            } else {
                throw new KSInternalErrorException("No run mode selected.");
            }
        } catch (Exception exc) {
            System.out.println("Error: " + exc);
        }//
    }  //  end of static method main

    /**  Create the Kinship system's main GUI and show it.  For thread safety,
     *  this method is invoked from the event-dispatching thread by 'main()'.  */
    static void createAndShowGUI() {
        try {
            mainPane = new MainPane("SILKin: Kinship Analysis");
            Predicate.loadPrimitiveNames();
            if (Library.stubs.isEmpty()) {
                Library.readStubFile();
            }
            if (Library.currentActivity == Library.BROWSING) {
                LibBrowser browser = new LibBrowser();
                mainPane.addWindow(browser);
            } else if (Library.currentActivity == Library.DATA_GATHERING) {
                mainPane.editCUC();
            } else if (Library.currentActivity == Library.ADMIN) {
                //  Present blank MainPane
            } else {
                System.out.println("SORRY.  Only Admin, Library-Browsing & Data-Gathering are implemented at this time.");
            }
            mainPane.setVisible(true);
        } catch (Exception e) {
            System.out.println(e);
        }
    }	// end of static method createAndShowGUI
}	//  end of class SILKin
