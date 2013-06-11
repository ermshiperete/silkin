
import javax.swing.*;
import javax.swing.event.*;
import java.io.*;
import java.awt.*;
import java.awt.event.*;
import java.net.*;
import java.util.ArrayList;
import java.util.Arrays;

/**This class defines the window in which Help Files are displayed.
 *
 * @author  Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
 *
 * Created on Sept 16, 2011
 */
public class HelpFrame extends JFrame implements HyperlinkListener {

    static HelpFrame help = null;
    static final int START = 0, CHART = 1, SUGGEST = 2, PREFS = 3, 
            THEORY_EDIT = 4, CONTEXT = 5;
    static String[] filenames = {"Start.html", "Chart.html",
        "Suggs.html", "Prefs.html", "HornClause.html", "ContextEdit.html"};    
    static String[] titles = {"Getting Started", 
        "Drawing and Editing Genealogy Charts", "Suggestions", "Preferences", 
        "Editing Definitions", "Editing The Context"};    
    String[] pathNames = new String[6];
    ArrayList<HyperlinkEvent> stack = new ArrayList<HyperlinkEvent>();
    ArrayList<String> titleStack = new ArrayList<String>();
    int stackPtr = 0;
    boolean updateStack = true;

    
    public HelpFrame() {
        try {
            loadPaths();
        } catch (Exception ex) {
            MainPane.displayError(ex.toString(), "Internal Error", JOptionPane.ERROR_MESSAGE);
            return;
        }
        initComponents();
        help = this;
    }

    void loadPaths() throws KSInternalErrorException {
        String dirPath = Library.libraryDirectory + "Help Files/";
        int ndx = 0;
        for (String fName : filenames) {
            File f = new File(dirPath + fName);
            if (!f.exists()) {
                String msg = "Could not find Library Help file '" + fName + "'.";
                msg += "\nReport a Bug!";
                throw new KSInternalErrorException(msg);
            }
            pathNames[ndx++] = f.getAbsolutePath();
        }
    }
    
    void displayPage(int page, String section) {
    // This method takes us to a URL from the menu.
        String src = pathNames[page];
        HyperlinkEvent event =  null;
        try {
            URL newLoc = new URL("file", "", -1, src + "#" + section);
            event = new HyperlinkEvent("Request for " + src + " #" + section,
                    HyperlinkEvent.EventType.ACTIVATED, newLoc, "#" + section);
        } catch (Exception ex) {
            String msg = "Error encountered displaying " + src + "#" + section;
            msg += "\nReason: " + ex;
            MainPane.displayError(msg, "Malformed URL", JOptionPane.ERROR_MESSAGE);
        }
        updateStack = false;
        helpTextPane.fireHyperlinkUpdate(event);
        topTitle.setText(titles[page]);
        titleStack.add(0, titles[page]);
        help.setVisible(true);
        stack.add(0, event);
        backBtn.setEnabled(backable());
        fwdBtn.setEnabled(false);
        stackPtr = 0;
    }
    
    private void backBtnAction() {
        if (stackPtr >= stack.size() - 1) {
            backBtn.setEnabled(false);
            return;
        }
        updateStack = false;
        HyperlinkEvent evt = stack.get(++stackPtr);
        helpTextPane.fireHyperlinkUpdate(evt);
        topTitle.setText(titleStack.get(stackPtr)); 
        if (stackPtr >= stack.size() - 1) {
            backBtn.setEnabled(false);
        }
        fwdBtn.setEnabled(true);
    }
    
    private void fwdBtnAction() {
        if (stackPtr == 0) {
            fwdBtn.setEnabled(false);
            return;
        }
        updateStack = false;
        HyperlinkEvent evt = stack.get(--stackPtr);
        helpTextPane.fireHyperlinkUpdate(evt);
        topTitle.setText(titleStack.get(stackPtr));
        if (stackPtr == 0) {
            fwdBtn.setEnabled(false);
        }
        backBtn.setEnabled(true);
    }
    
    boolean backable() {
        return (stack.size() > 1);
    }
    
    /* This method is needed only for Windows 7 (& Vista?) users.
     * Win7 delivers only the relative address (instead of complete pathname)
     * when the User clicks on a hyperlink with href="a relative address."
     * A Mac delivers the absolute pathname no matter how the HTML href is
     * written. So this methods looks for simple relative addresses (e.g.
     * '/Chart.html') and makes them absolute. All other pathnames are
     * unchanged.
     */
    HyperlinkEvent purify(HyperlinkEvent oldEvent) {
        String path = oldEvent.getURL().getFile();
        if (path.startsWith("/")) {
            String fileName = path.substring(1), 
                   absolutePath = "";
            for (int i=0; i < filenames.length; i++) {
                if (filenames[i].equals(fileName)) {
                    absolutePath = pathNames[i];
                    break;
                }
            }
            if (!absolutePath.isEmpty()) {
                String section = oldEvent.getURL().getRef();
                HyperlinkEvent newEvent = null;
                try {
                    URL newLoc = new URL("file", "", -1, absolutePath + "#" + section);
                    newEvent = new HyperlinkEvent("Request for " + absolutePath + " #" + section,
                            HyperlinkEvent.EventType.ACTIVATED, newLoc, "#" + section);
                } catch (Exception ex) {
                    String msg = "Error encountered displaying " + absolutePath + "#" + section;
                    msg += "\nReason: " + ex;
                    MainPane.displayError(msg, "Malformed URL", JOptionPane.ERROR_MESSAGE);
                }
                return newEvent;
            }
        }
        return oldEvent;
    }
      
    //  Method implementing HyperLinkListener. Runs when hyperlink clicked.
    public void hyperlinkUpdate(HyperlinkEvent event) {
        if (event.getEventType() == HyperlinkEvent.EventType.ACTIVATED) {
            try {
                HyperlinkEvent pureEvent = purify(event);                
                helpTextPane.setPage(pureEvent.getURL());
                if (updateStack) {
                    stack.add(0, pureEvent);
                    backBtn.setEnabled(true);
                    fwdBtn.setEnabled(false);
                    stackPtr = 0;
                    String pth = pureEvent.getURL().getFile(),
                           ttl = findTitle(pth);
                    topTitle.setText(ttl);
                    titleStack.add(0, ttl);
                }else {
                    updateStack = true;
                }
            } catch (Exception ex) {
                if (MainPane.activity == null) {
                    MainPane.createActivityLog(MainPane.desktop, MainPane.menuView);
                }
                String msg = "Error encountered displaying "
                        + (event.getURL().toExternalForm());
                MainPane.displayError(msg, "Internal Problem", JOptionPane.ERROR_MESSAGE);
            }            
        }
    }
    
    String findTitle(String path) {
        for (int i=0; i < pathNames.length; i++) {
            if (pathNames[i].equals(path)) {
                return titles[i];
            }
        }
        return "             ";
    }
    
  
    
    void initComponents() {
        setTitle("SILKin Help");
        setDefaultCloseOperation(WindowConstants.HIDE_ON_CLOSE);
        setLayout(new BoxLayout(getContentPane(), BoxLayout.LINE_AXIS));
        setBackground(new Color(255, 255, 204));
        topTitle = new JLabel();
        topTitle.setText("SILKin Help");        
        Font temp = topTitle.getFont();
        Font newFont = temp.deriveFont(Font.BOLD, 16.0f);
        topTitle.setFont(newFont);
        topTitle.setAlignmentX(0.5f);
   //  Make Back and Fwd Buttons
        backBtn = new JButton("<");
        backBtn.setFont(newFont);
        backBtn.setEnabled(false);
        backBtn.addActionListener(new ActionListener() {
                public void actionPerformed(ActionEvent evt) {
                    backBtnAction();
                }
            });
        fwdBtn = new JButton(">");
        fwdBtn.setFont(newFont);
        fwdBtn.setEnabled(false);
        fwdBtn.addActionListener(new ActionListener() {
                public void actionPerformed(ActionEvent evt) {
                    fwdBtnAction();
                }
            });
        JPanel topRow = new JPanel();
        topRow.setLayout(new BoxLayout(topRow, BoxLayout.LINE_AXIS));
        topRow.add(backBtn);
        topRow.add(fwdBtn);
        topRow.add(Box.createRigidArea(new Dimension(20, 0)));
        topRow.add(topTitle);
        topRow.add(Box.createHorizontalGlue());
    //  Help on Start-Up
        startUpCkBox = new JCheckBox("Show Help on Start-Up");
        startUpCkBox.setSelected(SIL_Edit.editWindow.helpScreenOnStartUp);
        startUpCkBox.addActionListener(new ActionListener() {
                public void actionPerformed(ActionEvent evt) {                    
                    SIL_Edit.editWindow.helpScreenOnStartUp = startUpCkBox.isSelected();                    
                }
            });
    // create menu
        jMenuBar1 = new JMenuBar();
        fileMenu = new JMenu();
        editMenu = new JMenu();
        topicMenu = new HMenu();
        closeItem = new JMenuItem();

        fileMenu.setText("File");
//        closeItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_W, InputEvent.CTRL_MASK));
//  For some strange reason, the keyboard accelerator doesn't work here.  ??????
        closeItem.setText("Close Help Window");
        closeItem.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                setVisible(false);
            }
        });
        fileMenu.add(closeItem);
        jMenuBar1.add(fileMenu);
        editMenu.setText("Edit");
        jMenuBar1.add(editMenu);
        topicMenu.setText("Topics");
        jMenuBar1.add(topicMenu);
        setJMenuBar(jMenuBar1);
        
    //  Make Editor Pane to display HTML files
        helpTextPane = new JEditorPane();
        helpTextPane.setEditable(false);
        helpTextPane.addHyperlinkListener(this);
        scroller = new JScrollPane(helpTextPane);
        scroller.setAlignmentX(0.5f);
        scroller.setPreferredSize(new Dimension(600, 400));
        scroller.setMinimumSize(new Dimension(300, 200));        
        centerPanel = new JPanel();
        centerPanel.setLayout(new BoxLayout(centerPanel, BoxLayout.PAGE_AXIS));
        centerPanel.add(Box.createRigidArea(new Dimension(0, 12)));
        centerPanel.add(topRow);
        centerPanel.add(Box.createRigidArea(new Dimension(0, 12)));
        centerPanel.add(scroller);
        centerPanel.add(Box.createRigidArea(new Dimension(0, 20)));
        centerPanel.add(startUpCkBox);
        centerPanel.add(Box.createRigidArea(new Dimension(0, 12)));
        
        getContentPane().add(Box.createRigidArea(new Dimension(12, 0)));
        getContentPane().add(centerPanel);
        getContentPane().add(Box.createRigidArea(new Dimension(12, 0)));
        pack();
        setVisible(false);
    }
    
    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new HelpFrame().setVisible(true);
            }
        });
    }
    
    
    // GUI Variables
    private JButton backBtn;
    private JButton fwdBtn;
    private JLabel topTitle;
    private JEditorPane helpTextPane;
    private JScrollPane scroller;
    private JMenu fileMenu;
    private JMenu editMenu;
    private JMenu topicMenu;
    private JMenuItem closeItem;
    private JMenuBar jMenuBar1;
    private JPanel centerPanel;
    private JCheckBox startUpCkBox;

    
    
    public static class HMenu extends JMenu {

        public HMenu() {
            initComponents();
        }
        
        void initComponents() {
        // SubMenus
            startSubMenu = new JMenu();
            chartSubMenu = new JMenu();
            contextSubMenu = new JMenu();
            suggsSubMenu = new JMenu();
            prefsSubMenu = new JMenu();
            theoryEditSubMenu = new JMenu();
//          Start Sub-Menus
            screenItem = new JMenuItem();
            createProjectItem = new JMenuItem();
            addPeopleItem = new JMenuItem();
            detailDisplayItem = new JMenuItem();
            refAdrItem = new JMenuItem();
            dyadsItem = new JMenuItem();
            reservedItem = new JMenuItem();
            commentsItem = new JMenuItem();
//          Chart Sub-Menus
            datesItem = new JMenuItem();
            egoAlterItem = new JMenuItem();
            labelItem = new JMenuItem();
            editableItem = new JMenuItem();
            reshapingItem = new JMenuItem();
            movingItem = new JMenuItem();
            deleteRelItem = new JMenuItem();
            deletePeopleItem = new JMenuItem();
            multiChartItem = new JMenuItem();
            deletingChartsItem = new JMenuItem();
            printChartItem = new JMenuItem();
//          Context Editor Sub-Menus
            definitionItem = new JMenuItem();
            editorItem = new JMenuItem();
            deletedRecsItem = new JMenuItem();
            udpsItem = new JMenuItem();
            editTheoryItem = new JMenuItem();
//          Suggestions Sub-Menus
            getSuggsItem = new JMenuItem();
            actSuggsItem = new JMenuItem();
//          Preferences Sub-Menus
            prefIntroItem = new JMenuItem();
            ignorableItem = new JMenuItem();
            maxItem = new JMenuItem();
            subPatternItem = new JMenuItem();
            inductionItem = new JMenuItem();
            undoItem = new JMenuItem();
            polygamyItem = new JMenuItem();
            nameCaptureItem = new JMenuItem();
            snapToGridItem = new JMenuItem();
            linkPriorityItem = new JMenuItem();
            chartPrintingItem = new JMenuItem();
//          Theory Edit Sub-Menus
            layoutItem = new JMenuItem();
            tutorialItem = new JMenuItem();
            rulesItem = new JMenuItem();
            predefinedItem = new JMenuItem();
            auxiliariesItem = new JMenuItem();
            bottomBtnsItem = new JMenuItem();
            sampleSessionItem = new JMenuItem();
            variableGenItem = new JMenuItem();
            editCommentsItem = new JMenuItem();

            // Getting Started SubMenu
            startSubMenu.setText("Getting Started");
            add(startSubMenu);

            screenItem.setText("Basic SILKin Screen");
            screenItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(START, "screen");
                }
            });
            startSubMenu.add(screenItem);

            createProjectItem.setText("Open/Create a Context");
            createProjectItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(START, "create");
                }
            });
            startSubMenu.add(createProjectItem);

            addPeopleItem.setText("Add People/Unions");
            addPeopleItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(START, "add");
                }
            });
            startSubMenu.add(addPeopleItem);

            detailDisplayItem.setText("Detail Display");
            detailDisplayItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(START, "detail");
                }
            });
            startSubMenu.add(detailDisplayItem);

            refAdrItem.setText("Terms of Reference/Address");
            refAdrItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(START, "terms");
                }
            });
            startSubMenu.add(refAdrItem);

            dyadsItem.setText("Making Dyads");
            dyadsItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(START, "dyads");
                }
            });
            startSubMenu.add(dyadsItem);
            
            reservedItem.setText("Reserved Words & Characters");
            reservedItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(START, "reserved");
                }
            });
            startSubMenu.add(reservedItem);
            
            commentsItem.setText("Restrictions on Names & Comments");
            commentsItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(START, "comments");
                }
            });
            startSubMenu.add(commentsItem);
            
// Draw/Edit Charts SubMenu       
            chartSubMenu.setText("Drawing and Editing Charts");
            add(chartSubMenu);

            egoAlterItem.setText("Ego, Alter & Linking Kinsmen");
            egoAlterItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(CHART, "ego");
                }
            });
            chartSubMenu.add(egoAlterItem);

            datesItem.setText("Date Formats");
            datesItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(CHART, "dates");
                }
            });
            chartSubMenu.add(datesItem);

            labelItem.setText("Labeling Options for People");
            labelItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(CHART, "label");
                }
            });
            chartSubMenu.add(labelItem);

            editableItem.setText("Editable vs Display-Only");
            editableItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(CHART, "editable");
                }
            });
            chartSubMenu.add(editableItem);

            reshapingItem.setText("Reshaping the Chart");
            reshapingItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(CHART, "reshape");
                }
            });
            chartSubMenu.add(reshapingItem);

            movingItem.setText("Moving People & Unions");
            movingItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(CHART, "move");
                }
            });
            chartSubMenu.add(movingItem);

            deleteRelItem.setText("Deleting Relationship");
            deleteRelItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(CHART, "del-rel");
                }
            });
            chartSubMenu.add(deleteRelItem);

            deletePeopleItem.setText("Deleting People & Unions");
            deletePeopleItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(CHART, "del-ppl");
                }
            });
            chartSubMenu.add(deletePeopleItem);
            
            multiChartItem.setText("Multiple Charts");
            multiChartItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(CHART, "multicharts");
                }
            });
            chartSubMenu.add(multiChartItem);
            
            deletingChartsItem.setText("Deleting Charts");
            deletingChartsItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(CHART, "deletingcharts");
                }
            });
            chartSubMenu.add(deletingChartsItem);
            
            printChartItem.setText("Printing Charts");
            printChartItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(CHART, "print");
                }
            });
            chartSubMenu.add(printChartItem);
            
            
//  Context Editor SubMenu
            contextSubMenu.setText("Context Editor");
            add(contextSubMenu);
            
            definitionItem.setText("What Is A Context?");
            definitionItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(CONTEXT, "definition");
                }
            });
            contextSubMenu.add(definitionItem);
            
            editorItem.setText("The Context Editor");
            editorItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(CONTEXT, "editor");
                }
            });
            contextSubMenu.add(editorItem);
            
            deletedRecsItem.setText("Deleted Records");
            deletedRecsItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(CONTEXT, "deleted-records");
                }
            });
            contextSubMenu.add(deletedRecsItem);
            
            udpsItem.setText("User-Defined Properties");
            udpsItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(CONTEXT, "UDPs");
                }
            });
            contextSubMenu.add(udpsItem);
            
            editTheoryItem.setText("Editing A Domain Theory");
            editTheoryItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(CONTEXT, "EditTheory");
                }
            });
            contextSubMenu.add(editTheoryItem);
            editTheoryItem = new JMenuItem();                      

 // Suggestions SubMenu       
            suggsSubMenu.setText("Suggestions");
            add(suggsSubMenu);

            getSuggsItem.setText("Getting Suggestions");
            getSuggsItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(SUGGEST, "get");
                }
            });
            suggsSubMenu.add(getSuggsItem);

            actSuggsItem.setText("Act on Suggestions");
            actSuggsItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(SUGGEST, "act");
                }
            });
            suggsSubMenu.add(actSuggsItem);

            undoItem.setText("Undo an Action");
            undoItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(SUGGEST, "undo");
                }
            });
            suggsSubMenu.add(undoItem);


// Edit Prefs SubMenu       
            prefsSubMenu.setText("Editing Preferences");
            add(prefsSubMenu);

            prefIntroItem.setText("Preferences Control Learning");
            prefIntroItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(PREFS, "intro");
                }
            });
            prefsSubMenu.add(prefIntroItem);

            ignorableItem.setText("Ignorable Percent");
            ignorableItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(PREFS, "ignore");
                }
            });
            prefsSubMenu.add(ignorableItem);

            maxItem.setText("Maximum Percent");
            maxItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(PREFS, "max");
                }
            });
            prefsSubMenu.add(maxItem);

            subPatternItem.setText("Sub-Pattern Matches");
            subPatternItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(PREFS, "sub");
                }
            });
            prefsSubMenu.add(subPatternItem);

            inductionItem.setText("Induction");
            inductionItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(PREFS, "induce");
                }
            });
            prefsSubMenu.add(inductionItem);

            polygamyItem.setText("Polygamy");
            polygamyItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(PREFS, "poly");
                }
            });
            prefsSubMenu.add(polygamyItem);

            nameCaptureItem.setText("Capturing Surnames and Birth Dates");
            nameCaptureItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(PREFS, "capture");
                }
            });
            prefsSubMenu.add(nameCaptureItem);

            snapToGridItem.setText("Snap To Grid");
            snapToGridItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(PREFS, "grid");
                }
            });
            prefsSubMenu.add(snapToGridItem);

            linkPriorityItem.setText("Link Priorities");
            linkPriorityItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(PREFS, "priority");
                }
            });
            prefsSubMenu.add(linkPriorityItem);
            
            chartPrintingItem.setText("Fonts for Printing");
            chartPrintingItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(PREFS, "printing");
                }
            });
            prefsSubMenu.add(chartPrintingItem);
            
// Theory Editor SubMenu
            theoryEditSubMenu.setText("Editing Definitions");
            add(theoryEditSubMenu);

            layoutItem.setText("Theory Editor Window Layout");
            layoutItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(THEORY_EDIT, "layout");
                }
            });
            theoryEditSubMenu.add(layoutItem);

            tutorialItem.setText("What Is A Horn Clause? ");
            tutorialItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(THEORY_EDIT, "tutorial");
                }
            });
            theoryEditSubMenu.add(tutorialItem);

            rulesItem.setText("Rules For Writing Horn Clauses");
            rulesItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(THEORY_EDIT, "rules");
                }
            });
            theoryEditSubMenu.add(rulesItem);

            predefinedItem.setText("Pre-Defined Terms");
            predefinedItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(THEORY_EDIT, "pre-defined-terms");
                }
            });
            theoryEditSubMenu.add(predefinedItem);

            auxiliariesItem.setText("Auxiliary Terms");
            auxiliariesItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(THEORY_EDIT, "auxiliaries");
                }
            });
            theoryEditSubMenu.add(auxiliariesItem);

            bottomBtnsItem.setText("Validating and Accepting Definitions");
            bottomBtnsItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(THEORY_EDIT, "bottom-buttons");
                }
            });
            theoryEditSubMenu.add(bottomBtnsItem);

            sampleSessionItem.setText("A Sample Session");
            sampleSessionItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(THEORY_EDIT, "sample-session");
                }
            });
            theoryEditSubMenu.add(sampleSessionItem);

            variableGenItem.setText("Automatic Variable Generation");
            variableGenItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(THEORY_EDIT, "variable-generation");
                }
            });
            theoryEditSubMenu.add(variableGenItem);

            editCommentsItem.setText("Editing Comments");
            editCommentsItem.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent evt) {
                    help.displayPage(THEORY_EDIT, "edit-comments");
                }
            });
            theoryEditSubMenu.add(editCommentsItem);            
        }
        
        private JMenu startSubMenu;
        private JMenu chartSubMenu;
        private JMenu contextSubMenu;
        private JMenu suggsSubMenu;
        private JMenu prefsSubMenu;
        private JMenu theoryEditSubMenu;
        private JMenuItem screenItem;
        private JMenuItem createProjectItem;
        private JMenuItem addPeopleItem;
        private JMenuItem detailDisplayItem;
        private JMenuItem refAdrItem;
        private JMenuItem dyadsItem;
        private JMenuItem reservedItem;
        private JMenuItem commentsItem;       
        private JMenuItem datesItem;
        private JMenuItem egoAlterItem;
        private JMenuItem labelItem;
        private JMenuItem editableItem;
        private JMenuItem reshapingItem;
        private JMenuItem movingItem;
        private JMenuItem deleteRelItem;
        private JMenuItem deletePeopleItem;
        private JMenuItem multiChartItem;
        private JMenuItem deletingChartsItem;
        private JMenuItem printChartItem;
        private JMenuItem getSuggsItem;
        private JMenuItem actSuggsItem;
        private JMenuItem undoItem;
        private JMenuItem prefIntroItem;
        private JMenuItem ignorableItem;
        private JMenuItem maxItem;
        private JMenuItem subPatternItem;
        private JMenuItem inductionItem;
        private JMenuItem polygamyItem;
        private JMenuItem nameCaptureItem;
        private JMenuItem snapToGridItem;
        private JMenuItem linkPriorityItem;
        private JMenuItem chartPrintingItem;
        private JMenuItem layoutItem;
        private JMenuItem tutorialItem;
        private JMenuItem rulesItem;
        private JMenuItem predefinedItem;
        private JMenuItem auxiliariesItem;
        private JMenuItem bottomBtnsItem;
        private JMenuItem sampleSessionItem;
        private JMenuItem variableGenItem;
        private JMenuItem editCommentsItem;
        private JMenuItem definitionItem;
        private JMenuItem editorItem;
        private JMenuItem deletedRecsItem;
        private JMenuItem udpsItem;
        private JMenuItem editTheoryItem;
    }
}
