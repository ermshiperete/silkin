

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.*;

/** 
The LibBrowser is a window that displays a {@link DomainTheory} from the {@link Library}.
It is intended to be used by field workers who want to examine their own DomainTheory as it is taking shape,
or who perhaps wish to examine other DomainTheories for reference.  It can only access DomainTheories that
are already stored in the Library's list of known Contexts (a Context has 1 or 2 DomainTheories for a language).
<p>
At any moment, a LibBrowser displays one clause from one definition of a KinTerm from one DomainTheory for
one language (Context).  It can rapidly switch between clauses or KinTerms.
<p>
There can be more than one LibBrowser active at one time, and they can be re-sized so that 2 or more
LibBrowsers are visible at one time (for comparisons).  

@author		Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
*/
public class LibBrowser extends KSJInternalFrame   {
    public static int serialNmbr = 1;
    DisplayPickerPanel picker;
    JTextArea expandedText, originalText;  //  errorLog is defined in superclass
    JScrollPane original, expanded;
    
    public LibBrowser() {
        super("Browser #" + serialNmbr);
        windowNum = "Browser #" + serialNmbr++;
        setDefaultCloseOperation(DISPOSE_ON_CLOSE);
        MainPane.openBrowsers.add(this);
        
        originalText = new JTextArea(15, 120);
//        originalText.setDragEnabled(true);
        originalText.setEditable(true);
        expandedText = new JTextArea(15, 120);
        
        original = new JScrollPane(originalText);
        expanded = new JScrollPane(expandedText);
        JSplitPane splitPane = new JSplitPane(JSplitPane.VERTICAL_SPLIT,
                                   original, expanded);
        splitPane.setOneTouchExpandable(true);
        splitPane.setDividerLocation(65);
        
        //Provide minimum sizes for the components in the split pane
        original.setMinimumSize(new Dimension(400, 50));
        expanded.setMinimumSize(new Dimension(400, 90));
        splitPane.setMinimumSize(new Dimension(400, 275));
        splitPane.setMaximumSize(new Dimension(700, 275));
        
        picker = new DisplayPickerPanel(this);
        
        //  NOTE:  GridBagLayout seems like overkill for a single-row, 2-column layout.
        //         But I couldn't get BorderLayout to squeeze Picker down to its minimum width
        //         even when maximum = minimum.  GridBag gives me control.
        JPanel topPane = new JPanel();
        topPane.setLayout(new GridBagLayout());
        GridBagConstraints c = new GridBagConstraints();
        c.fill = GridBagConstraints.HORIZONTAL;
        //  Specs for the Picker Panel
        c.weightx = 0.0;
        c.gridx = 0;
        c.gridy = 0;
        topPane.add(picker, c);
        //  Specs for the SplitPane
        c.weightx = 1.0;
        c.gridx = 1;
        topPane.add(splitPane, c);
        
        topPane.setMinimumSize(new Dimension(550, 310));
        topPane.setMaximumSize(new Dimension(850, 310));
        
        JTextArea diaDummy = new JTextArea(15, 200);
        diaDummy.append("\n             This is the diagram Area.");
        JScrollPane bottomPane = new JScrollPane(diaDummy);
        bottomPane.setMinimumSize(new Dimension(550, 50));
        bottomPane.setMaximumSize(new Dimension(850, 500));
        bottomPane.setPreferredSize(new Dimension(550, 150));
        picker.diagramArea = diaDummy;
        
//  NOTE:  The top Pane contains nested JSplitPanes.  For some reason, putting the top pane
//  with ANY other pane into a container using BorderLayout FAILS.  The top pane covers up its
//  siblings.  But it gets along with others just fine in a BoxLayout, or in a JSplitPane.
//  Hence this weird result: I create a splitPane that holds everything, then put it into the
//  content pane.  (I could have changed content's layout Manager to BoxLayout, but then it
//  doesn't utilize all the vertical space well.  SplitPane does.)
        
        JSplitPane overAll = new JSplitPane(JSplitPane.VERTICAL_SPLIT, topPane, bottomPane);
        overAll.setOneTouchExpandable(true);
        
        getContentPane().add(overAll);
        addInternalFrameListener(this);
        setSize(900, 460);
        setVisible(true);
        
    }  //  end of LibBrowser constructor
    
}  //  end of class LibBrowser
