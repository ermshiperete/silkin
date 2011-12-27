/**
 * This class is part of the SILKin program's GUI. It is modeled after the
 * KAES KinshipEditor by Michael D. Fischer of the Centre for Social
 * Anthropology and Computing, University of Kent, U.K.
 * Those portions taken from his code are copyrighted by him; all rights
 * reserved. See his complete copyright statement and terms of re-use in
 * Marriage.java in this package.
 *
 * SIL_Edit is the main GUI window for the Data-Gathering activity of SILKin.
 * It enables a field user to graphically create a family tree for one or more
 * individuals and to provide the kinship terms used among relatives on that
 * tree.
 *
 * @author Gary Morris, Northern Virginia Community College
 */


import javax.swing.*;
import java.io.*;
import javax.swing.text.DefaultEditorKit;
import java.awt.*;
import java.awt.event.*;
import java.util.*;

/**
 * NOTE: This file originally created via the form editor (GUI Builder) in NetBeans 6.9.1
 * For unknown reasons the form editor quit working, so I stripped out the comments that
 * seem to guide the editor, deleted the form file, and now use this strictly as a SWING
 * GUI file.
 */
public class SIL_Edit extends JFrame {

    static SIL_Edit editWindow;
    static DecisionFrame decisionFrame;
    static final int REF = 0, ADR = 1;
    static final int minDyadsPerPCStr = 2;
    static ArrayList<ArrayList<Integer>> namedDyadList = null;
    static boolean helpScreenOnStartUp = true;

    boolean editable = true;
    Individual infoPerson = null;
    Family infoMarriage = null;
    private int currentEgo = 0;
//    private Runtime topDog = Runtime.getRuntime();
    public KinTermMatrix ktm;
    TreeMap<String, ArrayList<Issue>> suggestionsRef, suggestionsAdr;

    /** Creates new form SIL_Edit */
    public SIL_Edit() {
        editWindow = this;
        initComponents();  //  initComponents is NetBeans-generated code
        prepComponents();  //  prepComponents is my own code
        try {
            if (Library.stubs.isEmpty()) Library.readStubFile();
        }catch(Exception e) {
            System.err.println(e.toString());
            e.printStackTrace();
            MainPane.displayError(e.toString(), "Internal Problem", JOptionPane.ERROR_MESSAGE);
        }
        // Listen for window closing, so Library.stubs file can be saved before exit.
//        topDog.addShutdownHook(new CleanUpThread());
    }

    @SuppressWarnings("unchecked")
    private void initComponents() {

        personPanel1 = new PersonPanel();
        familyPanel1 = new FamilyPanel();
        chartScrollPane = new JScrollPane();
        chartHolderPanel = new JPanel();
        chartHolderHorizontal = new JPanel();
        jMenuBar1 = new JMenuBar();
        fileMenu = new JMenu();
        fileNewMenu = new JMenu();
        newContextItem = new JMenuItem();
        newLiBrowserItem = new JMenuItem();
        loadItem = new JMenuItem();
//        loadItemPreXML = new JMenuItem();
        exportSubMenu = new JMenu();
        exportGEDCOMItem = new JMenuItem();
        exportKAESItem = new JMenuItem();
        exportDefinitionsItem = new JMenuItem();
        jSeparator1 = new JPopupMenu.Separator();
        saveItem = new JMenuItem();
        saveAsItem = new JMenuItem();
        jSeparator3 = new JPopupMenu.Separator();
        deleteAllItem = new JMenuItem();
        jSeparator4 = new JPopupMenu.Separator();
        quitItem = new JMenuItem();
        editMenu = new JMenu();
        cutItem = new JMenuItem();
        copyItem = new JMenuItem();
        pasteItem = new JMenuItem();
        jSeparator2 = new JPopupMenu.Separator();
        editPrefsItem = new JMenuItem();
        editContextItem = new JMenuItem();
        adminSILKinItem = new JMenuItem();
        labelMenu = new JMenu();
        nameButtonGroup = new ButtonGroup();
        kinTermButtonGroup = new ButtonGroup();
        noNameBtn = new JRadioButtonMenuItem();
        initialsBtn = new JRadioButtonMenuItem();
        firstNameBtn = new JRadioButtonMenuItem();
        lastNameBtn = new JRadioButtonMenuItem();
        wholeNameBtn = new JRadioButtonMenuItem();
        noKinTermBtn = new JRadioButtonMenuItem();
        kinTmRefBtn = new JRadioButtonMenuItem();
        kinTmAdrBtn = new JRadioButtonMenuItem();
        ltrRefBtn = new JRadioButtonMenuItem();
        ltrAdrBtn = new JRadioButtonMenuItem();
        contextMenu = new JMenu();
        distinctAdrItem = new JCheckBoxMenuItem();
        editableItem = new JCheckBoxMenuItem();
        getSuggestionsItem = new JMenuItem();
        actOnSuggsItem = new JMenuItem();
        actOnSuggsItem.setEnabled(false);
        returnToSuggsItem = new JMenuItem();
        helpMenu = new HelpFrame.HMenu();

        setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        // Initialize help window, but keep invisible
        HelpFrame.help = new HelpFrame();

        fileMenu.setText("File");

        fileNewMenu.setText("New");

        newContextItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_N, InputEvent.CTRL_MASK));
        newContextItem.setText("Context");
        newContextItem.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                newContextActionPerformed(evt);
            }
        });
        fileNewMenu.add(newContextItem);

        newLiBrowserItem.setText("Library Browser");
        newLiBrowserItem.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                newLiBrowserActionPerformed(evt);
            }
        });
        fileNewMenu.add(newLiBrowserItem);

        fileMenu.add(fileNewMenu);

        loadItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_O, InputEvent.CTRL_MASK));
        loadItem.setText("Open");
        loadItem.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                loadItemActionPerformed(evt);
            }
        });
        fileMenu.add(loadItem);

//        loadItemPreXML.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_M, InputEvent.CTRL_MASK));
//        loadItemPreXML.setText("Open Pre-XML");
//        loadItemPreXML.addActionListener(new ActionListener() {
//
//            public void actionPerformed(ActionEvent evt) {
//                loadItemPreXMLActionPerformed(evt);
//            }
//        });
//        loadItemPreXML.setVisible(true);
//        fileMenu.add(loadItemPreXML);

        exportSubMenu.setText("Export");
        exportDefinitionsItem.setText("Definitions");
        exportDefinitionsItem.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                exportDefinitionsItemActionPerformed(evt);
            }
        });
        exportDefinitionsItem.setVisible(false);
        exportGEDCOMItem.setText("GEDCOM Format");
        exportGEDCOMItem.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                exportGEDCOMItemActionPerformed(evt);
            }
        });
        exportKAESItem.setText("KAES Format");
        exportKAESItem.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                exportKAESItemActionPerformed(evt);
            }
        });
        exportSubMenu.add(exportDefinitionsItem);
        exportSubMenu.add(exportKAESItem);
        exportSubMenu.add(exportGEDCOMItem);
        fileMenu.add(exportSubMenu);

        fileMenu.add(jSeparator1);

        saveItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_S, InputEvent.CTRL_MASK));
        saveItem.setText("Save");
        saveItem.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                saveItemActionPerformed(evt);
            }
        });
        fileMenu.add(saveItem);

        saveAsItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_S, InputEvent.SHIFT_MASK | InputEvent.CTRL_MASK));
        saveAsItem.setText("Save As ...");
        saveAsItem.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                saveAsItemActionPerformed(evt);
            }
        });
        fileMenu.add(saveAsItem);
        fileMenu.add(jSeparator3);

        deleteAllItem.setText("Clear All");
        deleteAllItem.setEnabled(true);
        deleteAllItem.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                deleteAllItemActionPerformed(evt);
            }
        });
        fileMenu.add(deleteAllItem);
        fileMenu.add(jSeparator4);

        quitItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_Q, InputEvent.CTRL_MASK));
        quitItem.setText("Exit");
        quitItem.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                quitItemActionPerformed(evt);
            }
        });
        fileMenu.add(quitItem);

        jMenuBar1.add(fileMenu);

        editMenu.setText("Edit");

        cutItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_X, 0));
        cutItem.setText("Cut");
        editMenu.add(cutItem);

        copyItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_C, 0));
        copyItem.setText("Copy");
        editMenu.add(copyItem);

        pasteItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_V, 0));
        pasteItem.setText("Paste");
        editMenu.add(pasteItem);
        editMenu.add(jSeparator2);

        editPrefsItem.setText("Edit Prefs ...");
        editPrefsItem.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                editPrefsItemActionPerformed(evt);
            }
        });
        editMenu.add(editPrefsItem);

        editContextItem.setText("Edit Context ...");
        editContextItem.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                editContextItemActionPerformed(evt);
            }
        });
        editMenu.add(editContextItem);

        adminSILKinItem.setText("Admin Mode ...");
        adminSILKinItem.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                adminSILKinItemActionPerformed(evt);
            }
        });
        editMenu.add(adminSILKinItem);

        jMenuBar1.add(editMenu);

        labelMenu.setText("Labels");

        nameButtonGroup.add(noNameBtn);
        noNameBtn.setText("No Name");
        labelMenu.add(noNameBtn);
        noNameBtn.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                noNameBtnActionPerformed(evt);
            }
        });
        labelMenu.add(noNameBtn);

        nameButtonGroup.add(initialsBtn);
        initialsBtn.setText("Initials");
        initialsBtn.setSelected(true);
        initialsBtn.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                initialsBtnActionPerformed(evt);
            }
        });
        labelMenu.add(initialsBtn);

        nameButtonGroup.add(firstNameBtn);
        firstNameBtn.setText("First Name");
        firstNameBtn.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                firstNameBtnActionPerformed(evt);
            }
        });
        labelMenu.add(firstNameBtn);

        nameButtonGroup.add(lastNameBtn);
        lastNameBtn.setText("Last Name");
        lastNameBtn.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                lastNameBtnActionPerformed(evt);
            }
        });
        labelMenu.add(lastNameBtn);

        nameButtonGroup.add(wholeNameBtn);
        wholeNameBtn.setText("Whole Name");
        wholeNameBtn.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                wholeNameBtnActionPerformed(evt);
            }
        });
        labelMenu.add(wholeNameBtn);
        labelMenu.add(jSeparator1);

        kinTermButtonGroup.add(noKinTermBtn);
        noKinTermBtn.setSelected(true);
        noKinTermBtn.setText("No Kin Term");
        noKinTermBtn.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                noKinTermBtnActionPerformed(evt);
            }
        });
        labelMenu.add(noKinTermBtn);

        kinTermButtonGroup.add(kinTmRefBtn);
        kinTmRefBtn.setText("Kin Term (Ref)");
        kinTmRefBtn.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                kinTmRefBtnActionPerformed(evt);
            }
        });
        labelMenu.add(kinTmRefBtn);

        kinTermButtonGroup.add(kinTmAdrBtn);
        kinTmAdrBtn.setText("Kin Term (Adr)");
        kinTmAdrBtn.setEnabled(false);
        kinTmAdrBtn.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                kinTmAdrBtnActionPerformed(evt);
            }
        });
        labelMenu.add(kinTmAdrBtn);

        kinTermButtonGroup.add(ltrRefBtn);
        ltrRefBtn.setText("Letter (Ref)");
        ltrRefBtn.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                ltrRefBtnActionPerformed(evt);
            }
        });
        labelMenu.add(ltrRefBtn);

        kinTermButtonGroup.add(ltrAdrBtn);
        ltrAdrBtn.setText("Letter (Adr)");
        ltrAdrBtn.setEnabled(false);
        ltrAdrBtn.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                ltrAdrBtnActionPerformed(evt);
            }
        });
        labelMenu.add(ltrAdrBtn);

        jMenuBar1.add(labelMenu);

        contextMenu.setText("Context");
        distinctAdrItem.setText("Distinct Terms of Address");
        distinctAdrItem.setSelected(false);
        distinctAdrItem.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                distinctAdrItemActionPerformed(evt);
            }
        });
        contextMenu.add(distinctAdrItem);
        
        editableItem.setText("Context is editable.");
        editableItem.setSelected(true);
        editableItem.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                editableItemActionPerformed(evt);
            }
        });
        contextMenu.add(editableItem);

//        testKeyItem = new JMenuItem("Keyboard Test");
//        testKeyItem.addActionListener(new ActionListener() {
//            public void actionPerformed(ActionEvent evt) {
//                keyTestItemActionPerformed(evt);
//            }
//        });
//        contextMenu.add(testKeyItem);
//
//        testUnicodeItem = new JMenuItem("Unicode Test");
//        testUnicodeItem.addActionListener(new ActionListener() {
//            public void actionPerformed(ActionEvent evt) {
//                unicodeTestItemActionPerformed(evt);
//            }
//        });
//        contextMenu.add(testUnicodeItem);
//
        // Above 2 items to be removed after PC testing

        contextMenu.add(jSeparator1);

        getSuggestionsItem.setText("Get New Suggestions");
        getSuggestionsItem.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                getSuggestionsItemActionPerformed(evt);
            }
        });
        contextMenu.add(getSuggestionsItem);

        actOnSuggsItem.setText("Act on Suggestions");
        actOnSuggsItem.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                actOnSuggsActionPerformed(evt);
            }
        });
        contextMenu.add(actOnSuggsItem);

        returnToSuggsItem.setText("Return to Suggestions");
        returnToSuggsItem.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent evt) {
                returnToSuggestionsItemActionPerformed(evt);
            }
        });
        contextMenu.add(returnToSuggsItem);
        returnToSuggsItem.setEnabled(false);

        jMenuBar1.add(contextMenu);
        
        helpMenu.setText("Help");
        jMenuBar1.add(helpMenu);
        
        setJMenuBar(jMenuBar1);

        chart = new ChartPanel();
        chart.init(this);
        chartScrollPane.setPreferredSize(new Dimension(877, 350));
        chartScrollPane.setViewportView(chart);
        chartLabel = new JLabel("Draw Family Tree Charts Below");
        chartLabel.setAlignmentX(0.5f);
        chartScrollPane.setAlignmentX(0.5f);
        chartHolderPanel.setLayout(new BoxLayout(chartHolderPanel, BoxLayout.PAGE_AXIS));
        chartHolderPanel.add(Box.createRigidArea(new Dimension(0,5)));
        
        chartHolderHorizontal.setLayout(new BoxLayout(chartHolderHorizontal, BoxLayout.LINE_AXIS));
        chartHolderHorizontal.add(Box.createRigidArea(new Dimension(8,0)));
        chartHolderHorizontal.add(chartScrollPane);
        chartHolderHorizontal.add(Box.createRigidArea(new Dimension(8,0)));
        chartHolderHorizontal.setBackground(new Color(255, 228, 225));
        
        chartHolderPanel.add(chartLabel);
        chartHolderPanel.add(chartHolderHorizontal);
        chartHolderPanel.add(Box.createRigidArea(new Dimension(0,10)));
        chartHolderPanel.setBorder(BorderFactory.createEtchedBorder(Color.red, Color.blue));
        chartHolderPanel.setBackground(new Color(255, 228, 225));
//        chartHolderPanel.setPreferredSize(new Dimension(907, 400));

        // Add components to the JFrame's content pane
        setLayout(new BoxLayout(getContentPane(), BoxLayout.PAGE_AXIS));
        add(Box.createRigidArea(new Dimension(0,5)));
        add(personPanel1);
        add(familyPanel1);
        add(Box.createRigidArea(new Dimension(0,5)));
        add(chartHolderPanel);
    }

    private void prepComponents() {
        personPanel1.setVisible(true);
        familyPanel1.setVisible(false);
        // Set Edit Menu items to the DefaultEditorKit methods
        editMenu.remove(copyItem);
        editMenu.remove(cutItem);
        editMenu.remove(pasteItem);
        editMenu.remove(jSeparator2);
        editMenu.remove(editPrefsItem);
        editMenu.remove(editContextItem);
        editMenu.remove(adminSILKinItem);
        cutItem = new JMenuItem(new DefaultEditorKit.CutAction());
//        cutItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_X, 0));
        cutItem.setText("Cut");
        copyItem = new JMenuItem(new DefaultEditorKit.CopyAction());
//        copyItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_C, 0));
        copyItem.setText("Copy");
        pasteItem = new JMenuItem(new DefaultEditorKit.PasteAction());
//        pasteItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_V, 0));
        pasteItem.setText("Paste");
        editMenu.add(cutItem);
        editMenu.add(copyItem);
        editMenu.add(pasteItem);
        editMenu.add(jSeparator2);
        editMenu.add(editPrefsItem);
        editMenu.add(editContextItem);
        editMenu.add(adminSILKinItem);
        setSize(new Dimension(1050,725));
        newLiBrowserItem.setEnabled(false);
        exportGEDCOMItem.setEnabled(false);
        pack();
    }

    private void newContextActionPerformed(ActionEvent evt) {
        if (chart.dirty) {
            chart.doWantToSave();
        }
        if (chart.editable) {
            chart.deleteAll();
        }
    }

    private void newLiBrowserActionPerformed(ActionEvent evt) {
        Library.currentActivity = Library.BROWSING;
        SILKin.createAndShowGUI();
        if (Context.current != null) {
            MainPane.topPane.browseCurrentContext();
        } else MainPane.topPane.browseLibrary();
    }

    private void loadItemActionPerformed(ActionEvent evt) {
        chart.loadSILKFile();
    }

    private void loadItemPreXMLActionPerformed(ActionEvent evt) {
        Library.preXML = true;
        chart.loadSILKFile();
        Library.preXML = false;
    }
    
    private void exportGEDCOMItemActionPerformed(ActionEvent evt) {
        chart.exportGEDCOMFile();
    }

    private void exportKAESItemActionPerformed(ActionEvent evt) {
        chart.exportKAESFile();
    }
    private void exportDefinitionsItemActionPerformed(ActionEvent evt) {
        // TODO Implement writing a .thy file
    }


    private void saveItemActionPerformed(ActionEvent evt) {
        chart.saveSILKinFile();
    }

    private void saveAsItemActionPerformed(ActionEvent evt) {
        chart.saveAsFile();
    }

    private void deleteAllItemActionPerformed(ActionEvent evt) {
        if (chart.editable) {
            chart.deleteAll();
            setTitle("");
        }
    }

    private void quitItemActionPerformed(ActionEvent evt) {
        if (SIL_Edit.editWindow.chart.dirty) {
            SIL_Edit.editWindow.chart.doWantToSave();
        }
        System.exit(0);
    }

    public void editPrefsItemActionPerformed(ActionEvent evt) {
        if (chart.saveFile == null) {
            String msg3 = "You must edit the Preferences for a particular context (SILK file).";
            msg3 += "First OPEN a context (or create & SAVE one), then set it's preferences.";
            JOptionPane.showMessageDialog(this, msg3, "Cannot Perform Your Command", JOptionPane.WARNING_MESSAGE);
            return;
        }
        EditPrefsWindow epw = new EditPrefsWindow();
        epw.setVisible(true);        
    }

    private void editContextItemActionPerformed(ActionEvent evt) {        
        Library.currentActivity = Library.DATA_GATHERING;
        if (SILKin.mainPane == null) {
            SILKin.createAndShowGUI();
            MainPane.topPane.menuAdmin.setEnabled(false);
        }else {
            MainPane.topPane.editCUC();
            MainPane.topPane.menuAdmin.setEnabled(false);
            MainPane.topPane.enableAdvancedMenuItems(false);
            MainPane.topPane.setVisible(true);
        }
    }

    private void keyTestItemActionPerformed(ActionEvent evt) {
        TestPanel.createAndShowGUI();
    }

    private void unicodeTestItemActionPerformed(ActionEvent evt) {
        new UnicodeTester().setVisible(true);
    }

    private void adminSILKinItemActionPerformed(ActionEvent evt) {
        String pwd = JOptionPane.showInputDialog(editWindow, "Enter Administrator Password");
        if (pwd.equals(Library.PASSWORD)) {
            Library.currentActivity = Library.ADMIN;
            if (SILKin.mainPane == null) {
                SILKin.createAndShowGUI();
            } else {
                MainPane.topPane.setVisible(true);
            }
            MainPane.topPane.menuAdmin.setEnabled(true);
            MainPane.topPane.enableAdvancedMenuItems(true);
        }else {
            JOptionPane.showMessageDialog(this,
                "Try again. Or contact \nTom Woodward for authorization",
                "Invalid Password",
                JOptionPane.PLAIN_MESSAGE);
        }
    }

    private void noNameBtnActionPerformed(ActionEvent evt) {
        chart.setNameLabel("No Label");
    }

    private void initialsBtnActionPerformed(ActionEvent evt) {
        chart.setNameLabel("Initials");
    }

    private void firstNameBtnActionPerformed(ActionEvent evt) {
        chart.setNameLabel("First");
    }

    private void lastNameBtnActionPerformed(ActionEvent evt) {
        chart.setNameLabel("Last");
    }

    private void wholeNameBtnActionPerformed(ActionEvent evt) {
        chart.setNameLabel("Whole");
    }

    private void noKinTermBtnActionPerformed(ActionEvent evt) {
        chart.setKTmLabel("No KinTerm");
    }

    private void kinTmRefBtnActionPerformed(ActionEvent evt) {
        chart.setKTmLabel("KinTermRef");
    }

    private void kinTmAdrBtnActionPerformed(ActionEvent evt) {
        chart.setKTmLabel("KinTermAdr");
    }

    private void ltrRefBtnActionPerformed(ActionEvent evt) {
        chart.setKTmLabel("LetterRef");
    }

    private void ltrAdrBtnActionPerformed(ActionEvent evt) {
        chart.setKTmLabel("LetterAdr");
    }
    
    public void setDistinctAdrMenuItemSelected(boolean val) {
        resettingDistinctAdrItem = true;
        distinctAdrItem.setSelected(val);        
        resettingDistinctAdrItem = false;
    }
    
    private boolean resettingDistinctAdrItem = false;
    
    public void distinctAdrItemActionPerformed(ActionEvent evt) {
        if (resettingDistinctAdrItem) return;
        if (distinctAdrItem.isSelected()) {
            String msg = "Do you want to copy all the reference terms you have\n"
                    + "gathered to date as terms of address also?";
            Object[] btns = {"Copy Them", "Do Not Copy", "Cancel"};
            int ch = JOptionPane.showOptionDialog(this,
                    msg, "Initializing Terms of Address",
                    JOptionPane.YES_NO_CANCEL_OPTION,
                    JOptionPane.QUESTION_MESSAGE,
                    null, btns, btns[0]);
            if (ch == JOptionPane.CANCEL_OPTION) {
                distinctAdrItem.setSelected(false);
                return;
            }
            boolean copy = (ch == JOptionPane.YES_OPTION);
            personPanel1.setDistinctAdrTerms(true);
            activateDomThAdr(copy);
        } else { // De-selection            
            String msg = "You currently have separate data for Terms of Address.\n"
                    + "This action will ERASE all that data. Proceed?";
            Object[] btns = {"Erase Everything", "Cancel"};
            int ch = JOptionPane.showOptionDialog(this,
                    msg, "Erasing Terms of Address",
                    JOptionPane.OK_CANCEL_OPTION,
                    JOptionPane.WARNING_MESSAGE,
                    null, btns, btns[1]);
            if (ch == JOptionPane.CANCEL_OPTION) {
                distinctAdrItem.setSelected(true);
                return;
            }
            personPanel1.setDistinctAdrTerms(false);
            deactivateDomThAdr();
        }
    }

    void activateDomThAdr(boolean copy) {
        Context ctxt = Context.current;
        DomainTheory dtRef = null, dtAdr = null;
        try {
            dtRef = ctxt.domTheoryRef();
            dtAdr = new DomainTheory(dtRef);  //  i.e. clone it
            dtAdr.addressTerms = true;
            dtAdr.languageName = ctxt.languageName + "(Adr)";
            if (! copy) dtAdr.theory = new TreeMap();
            ctxt.addDomainTheory(dtAdr);
        } catch (Exception ex) {
            MainPane.displayError("Internal error while accessing terms of reference",
                    "Fatal Error", JOptionPane.WARNING_MESSAGE);
        }
        ctxt.learningHistoryAdr = new 
                TreeMap<String, ArrayList<Context.HistoryItem>>(ctxt.learningHistoryRef);
        if (copy) {
            dtAdr.dyadsDefined = dtRef.dyadsDefined.convertToAdr();
            dtAdr.dyadsUndefined = dtRef.dyadsUndefined.convertToAdr();
            dtAdr.issuesForUser.putAll(dtRef.issuesForUser);
            ctxt.ktm.addAdrCloneTerms();
            ctxt.autoDefAdr = new TreeMap<String, ArrayList<Context.CB_Ptr>>(ctxt.autoDefRef);
        }else {
            ctxt.autoDefAdr = new TreeMap<String, ArrayList<Context.CB_Ptr>>();
        }
    }
    
    void deactivateDomThAdr() {
        Context ctxt = Context.current;
        ctxt.domTheoryAdrNullify();
        ctxt.autoDefAdr = null;
        ctxt.learningHistoryAdr = null;
        ctxt.ktm.cleanAdrTerms();
    }

    private void editableItemActionPerformed(ActionEvent evt) {
        if (editableItem.isSelected()) {
            chart.editable = true;
            Context.current.editable = true;
        }else {
            chart.editable = false;
            Context.current.editable = false;
        }
    }
    
    public void setActOnSuggsEnabled(boolean yn) {
        actOnSuggsItem.setEnabled(yn);
    }


    private void getSuggestionsItemActionPerformed(ActionEvent evt) {
        try {
            chart.saveSILKinFile();
            if (Library.predEncodings == null) {
                Library.readPredEncodings();
            }
            if (Library.predDecodings == null) {
                Library.readPredDecodings();
            }
            Library.synUmbDetectOn = true;
            Context ctxt = Context.current;
            if (ctxt == null) {
                String msg = "You must name a project and \ncreate data before getting suggestions.";
                MainPane.displayError(msg, "Cannot Do What You Asked", JOptionPane.PLAIN_MESSAGE);
                return;
            }
            int priorIndSerial = ctxt.indSerNumGen,
                priorFamSerial = ctxt.famSerNumGen;
            DomainTheory dtRef = ctxt.domTheoryRef();
            Learned_DT learner = new Learned_DT(dtRef);
            loadParameters(learner);
            doActiveLearning(learner);
            // in case artificial people were created during learning
            ctxt.resetTo(priorIndSerial, priorFamSerial);
            suggestionsRef = learner.issuesForUser;
            dtRef.issuesForUser = suggestionsRef;
            if (ctxt.distinctAdrTerms) {
                DomainTheory dtAdr = ctxt.domTheoryAdr();
                learner = new Learned_DT(dtAdr);
                loadParameters(learner);
                doActiveLearning(learner);
                ctxt.resetTo(priorIndSerial, priorFamSerial); 
                suggestionsAdr = learner.issuesForUser;
                dtAdr.issuesForUser = suggestionsAdr;
            }
            chart.saveSILKinFile();
            File suggsDataFile = chart.saveFile;
            String styleFilePath = Library.libraryDirectory + "Suggestions/silk-status.xsl";
            File stylesheet = new File(styleFilePath);
            if (! stylesheet.exists()) {
                String msg = "Cannot find file 'silk-status.xsl' in Suggestions folder.";
                MainPane.displayError(msg, "Can't Get Suggestions", JOptionPane.ERROR_MESSAGE);
                return;
            }
            File outfile = makeHTMLfile(suggsDataFile);
            XMLTransformer tformer = new XMLTransformer();
            tformer.transform(suggsDataFile, stylesheet, outfile);
            ctxt.dateOfLastSuggestion = UDate.today();
        }catch(KinshipSystemException internalExc) {
            String msg = "SILKin learning INTERNAL failure: " + internalExc;
            MainPane.displayError(msg, "SILKin learning module failure", JOptionPane.PLAIN_MESSAGE);
        }catch(Exception exc) {
            String msg = "SILKin learning module encountered a SYSTEM error: " + exc;
            MainPane.displayError(msg, "System failure", JOptionPane.ERROR_MESSAGE);
        }
        actOnSuggsItem.setEnabled(true);
    }
    
    void loadParameters(Learned_DT learner) {
        learner.doBaseCBs = learner.ctxt.doBaseCBs;
        learner.doInduction = learner.ctxt.doInduction;
    }

    File makeHTMLfile(String lName) {
        String outFilePath = Library.libraryDirectory + "Suggestions/";
        outFilePath += lName + ".html";
        return new File(outFilePath);
    }

    File makeHTMLfile(File s) {
        String outFilePath = Library.libraryDirectory + "Suggestions/";
        String lName = s.getName();
        int dot = lName.lastIndexOf(".");
        lName = lName.substring(0, dot);
        outFilePath += lName + ".html";
        return new File(outFilePath);
    }

    private void actOnSuggsActionPerformed(ActionEvent evt) {
        TreeMap<String, ArrayList<Issue>> suggs = pickSuggs();
        if (suggs == null) {
            String msg = "There are no suggestions to act upon.";
            MainPane.displayError(msg, "Can't Find Suggestions", JOptionPane.ERROR_MESSAGE);
            return;
        }
        File htmlFile = makeHTMLfile(chart.saveFile);
        if (!htmlFile.exists()) { // 1st tried name of edited file - failed
            String msg = "Cannot find file '" + htmlFile.getName()
                    + "' in Suggestions directory.",
                   baseName = Context.current.languageName;
            htmlFile = makeHTMLfile(baseName);
            if (!htmlFile.exists()) {  // 2nd tried langName - failed
                msg += "\nNor can we find " + htmlFile.getName() + ".";
                msg += "\nPerhaps you should Get New Suggestions.";
                MainPane.displayError(msg, "Can't Find Suggestions", JOptionPane.ERROR_MESSAGE);
                return;
            }else { // maybe this is it
                msg += "\nBut we did find " + htmlFile.getName() + ".";
                msg += "\nHit 'Cancel' if you meant to Get New Suggestions.";
                Object[] btns = { "Use " + htmlFile.getName(), "Cancel" };
                int ch = JOptionPane.showOptionDialog(this,
                        msg, "Looking for Suggestion File",
                        JOptionPane.YES_NO_CANCEL_OPTION,
                        JOptionPane.QUESTION_MESSAGE,
                        null, btns, btns[0]);
                if (ch == JOptionPane.NO_OPTION) {
                    return;
                }
            }
        }
        decisionFrame = new DecisionFrame(suggs, suggsInFocus, htmlFile);
        decisionFrame.setVisible(true);
        returnToSuggsItem.setEnabled(true);
    }

    private void returnToSuggestionsItemActionPerformed(ActionEvent evt) {
        try {
            storeInfo();
        }catch(Exception ex) {  }  //  nothing can go wrong ....
        if (decisionFrame == null || ! decisionFrame.isShowing()) {
            actOnSuggsActionPerformed(evt);
        }else {
            decisionFrame.toFront();
        }
    }


    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        EventQueue.invokeLater(new Runnable() {

            public void run() {
                try {
                    SILKin.mainPane = new MainPane("SILKin: Kinship Analysis");
                    Predicate.loadPrimitiveNames();
                    if (Library.stubs.isEmpty()) {
                        Library.readStubFile();
                    }
                } catch (Exception e) {
                    System.err.println(e);
                }
                new SIL_Edit().setVisible(true);
                if (helpScreenOnStartUp) {
                    HelpFrame.help.displayPage(HelpFrame.START, "screen");
                }
            }
        });
    }
 

    void synchronizeLabelParams(int labelName, int labelKTerm) {
        Person.nameLabel = labelName;
        switch (labelName) {
            case 0: // no name
                noNameBtn.setSelected(true);
                break;
            case 1: // initials
                initialsBtn.setSelected(true);
                break;
            case 2: // first name
                firstNameBtn.setSelected(true);
                break;
            case 3: // last name
                lastNameBtn.setSelected(true);
                break;
            case 4: // whole name
                wholeNameBtn.setSelected(true);
                break;
        }
        Person.kinTermLabel = labelKTerm;
        switch (labelKTerm) {
            case 0: // no name
                noKinTermBtn.setSelected(true);
                break;
            case 1: // kin term Ref
                kinTmRefBtn.setSelected(true);
                break;
            case 2: // kin term Adr
                kinTmAdrBtn.setSelected(true);
                break;
            case 3: // letter Ref
                ltrRefBtn.setSelected(true);
                break;
            case 4: // letter Adr
                ltrAdrBtn.setSelected(true);
                break;
        }
    }

    boolean changeEgo(int egoNum) {
        boolean oKay = true;
        if (egoNum < 0
           || egoNum == currentEgo
              || chart.loading) {
            return true;
        }
        Individual ind = Context.current.individualCensus.get(egoNum);
        if (ind.deleted) {
            String msg = "Cannot select a deleted person as Ego.";
            JOptionPane.showMessageDialog(this, msg,
                "Invalid Selection", JOptionPane.ERROR_MESSAGE);
            personPanel1.resetEgoBox(currentEgo);
            return true;
        }
        if (ktm.getRow(currentEgo) != null) {
            // Remove nodes from people in old Ego's row.
            Iterator altIter = ktm.getRow(currentEgo).keySet().iterator();
            while (altIter.hasNext()) {
                Integer alter = (Integer)altIter.next();
                ind = Context.current.individualCensus.get(alter);
                ind.node = null;
            }
        }
        currentEgo = egoNum;
        // Save pre-existing nodes of people in new Ego's Row & post them.
        TreeMap oldRow = ktm.getRow(currentEgo);
        TreeMap<Integer, Node> oldRowCopy = null;
        if (oldRow != null) {
            oldRowCopy = new TreeMap<Integer, Node>();
            Iterator nodeIter = oldRow.entrySet().iterator();
            while (nodeIter.hasNext()) {
                Map.Entry entry = (Map.Entry)nodeIter.next();
                Integer alter = (Integer)entry.getKey();
                Node n = (Node)entry.getValue();
                oldRowCopy.put(alter, n);
                Individual indiv = Context.current.individualCensus.get(alter);
                indiv.node = n;
                n.indiv = indiv;
            }            
        }
        //  Must build nodes for each person who is connected to currentEgo
        ChartPanel.doIndexes = true;
        Individual ego = Context.current.individualCensus.get(egoNum);
        for (Individual i : Context.current.individualCensus) {
            i.seenB4 = 0;
        }
        Family mar = null;
        try {
            for (Object o : ego.marriages) {
                mar = (Family)o;
                chart.createNode(ego, mar, "spouse");
            }
            mar = ego.birthFamily;
            if (mar != null) chart.createNode(ego, mar, "child");
        }catch(KSInternalErrorException exc) {
            String msg = "While propogating nodes from person #" + ego.serialNmbr +
                    " in family #" + mar.serialNmbr;
            MainPane.displayError(msg, "Internal Error", JOptionPane.ERROR_MESSAGE);
        }
        // insert old nodes with kin terms into new ktm row
        if (oldRowCopy != null) {
            TreeMap newRow = ktm.getRow(currentEgo);
            Iterator nodeIter = oldRowCopy.entrySet().iterator();
            while (nodeIter.hasNext()) {
                Map.Entry entry = (Map.Entry)nodeIter.next();
                Integer alterInt = (Integer)entry.getKey();
                Node oldNode = (Node) entry.getValue();
                Node newNode = (Node) newRow.get(alterInt);
                if(newNode == null) {  //  should not happen
                    String msg = "While copying kin terms from old row to new row" +
                            " in ChangeEgo(), \nSerial#" + ego.serialNmbr + "'s new row " +
                    "in KT Matrix does not have a node for Serial#" + alterInt + " like old row did.";
                    MainPane.displayError(msg, "Internal Error", JOptionPane.ERROR_MESSAGE);
                    oKay = false;
                }else if (newNode.pcString.equals(oldNode.pcString)) {
                    if (alterInt == currentEgo) oldNode = oldNode.clone();
                    newRow.put(alterInt, oldNode);
                    Individual al = Context.current.individualCensus.get(alterInt);
                    al.node = oldNode;
                }else {  //  probably will happen -- I want to monitor them for a while
                    String msg = "\nWhile copying kin terms from old row to new row" +
                            " in ChangeEgo(), \nSerial#" + alterInt  + "'s node in " +
                            ego.serialNmbr + "'s row has a different PCString.\n";
                    msg += "Old string: " + oldNode.pcString + "  new string: " + newNode.pcString;
                    MainPane.displayError(msg, "Internal Error", JOptionPane.ERROR_MESSAGE);
                    oKay = false;
                }
                
            }
        }
        showInfo(infoPerson);
        chart.repaint();
        return oKay;
    }

    //  SETTERS AND GETTERS
    public PersonPanel getPPanel() {
        return personPanel1;
    }

    public FamilyPanel getFPanel() {
        return familyPanel1;
    }

    int getCurrentEgo() {
        return currentEgo;
    }

    void setCurrentEgo(int newEgo) {
        currentEgo = newEgo;
    }

    void storeInfo()
            throws KSParsingErrorException, JavaSystemException,
		   KSBadHornClauseException, KSInternalErrorException,
                   KSConstraintInconsistency, KSDateParseException {
        if (infoPerson != null) {
            personPanel1.storeInfo(infoPerson);
        } else if (infoMarriage != null) {
            familyPanel1.storeInfo(infoMarriage);
        }
    }

    public void clearInfo()
            throws KSParsingErrorException, JavaSystemException,
		   KSBadHornClauseException, KSInternalErrorException,
                   KSConstraintInconsistency, KSDateParseException {
        storeInfo();
        if (infoPerson != null) {
            personPanel1.clearInfo();
            infoPerson = null;
        }
        if (infoMarriage != null) {
            familyPanel1.clearInfo();
            infoMarriage = null;
        }
        repaint();  //  needed?
    }

    public void showInfo(Individual ind) {
        if (ind == null) return;
        infoPerson = ind;
        infoMarriage = null;
        personPanel1.showInfo(ind);
        if (familyPanel1.isVisible()) {
            familyPanel1.setVisible(false);
            personPanel1.setVisible(true);
            validate();
            repaint();
        }
    }

    public void showInfo(Family fam) {
        if (fam == null) return;
        infoMarriage = fam;
        infoPerson = null;
        familyPanel1.showInfo(fam);
        if (personPanel1.isVisible()) {
            personPanel1.setVisible(false);
            familyPanel1.setVisible(true);
            validate();
            repaint();
        }
    }

    void setEditable(boolean bool) {
        chart.editable = bool;
    }

    void applyDef(KinTermDef newDef, DomainTheory dt) {
        chart.recomputingDyads = true;
        KinTypeIndex kti = Context.current.kti;
        kti.updateIndex(Context.current);
        DomainTheory.current = dt;
        for (Object o : newDef.expandedDefs) {
            ClauseBody cb = (ClauseBody)o;
            ArrayList<Integer[]> candidates = kti.getList(cb.pcString);
            for (Integer[] pair : candidates) {
                Dyad dad = new Dyad();
                dad.ego = Context.current.individualCensus.get(pair[0]);
                dad.alter = Context.current.individualCensus.get(pair[1]);
                try {
                    if (dt.fit(cb, dad)) {
                        Node nod = ktm.getCell(dad.ego, dad.alter);
                        String clas = (dt.addressTerms ? "address" : "reference");
                        nod.addTerm(newDef.kinTerm, "primary", clas);
                        dad.kinTerm = newDef.kinTerm;
                        dad.pcString = nod.pcString;
                        dad.pcStringStructural = ClauseBody.structStr(dad.pcString);
                        dad.addrOrRef = (dt.addressTerms ? 1 : 0);
                        dad.level = nod.getLevel();
                        dad.kinTermType = 0;
                        dad.makePath(nod.miniPreds, dad.alter);
                        dt.dyadsDefined.dyAdd(dad);
                        if (infoPerson == dad.alter && currentEgo == dad.ego.serialNmbr) {
                            personPanel1.fillTextField(nod, "primary", dt.addressTerms);
                            personPanel1.dirty = true;
                            chart.dirty = true;
                        }
                    }
                }catch(Exception ex) {
                    // Any exception = failure to fit
                    String msg = "FYI: Exception while trial-fitting an accepted def.\n" + ex;
                    MainPane.displayError(msg, "Internal Error", JOptionPane.ERROR_MESSAGE);
                }
            }
        }
        chart.recomputingDyads = false;
        personPanel1.debugDyads();
    }   
    
    
    public void removeDef(DomainTheory dt, int egoInt, int alterInt, String term) {
        Node nod = ktm.getCell(egoInt, alterInt);
        String pcString = nod.pcString;
        String clas = (dt.addressTerms ? "address" : "reference");
        nod.removeTerm(term, "primary", clas);
        dt.dyadsDefined.removeDyad(dt, egoInt, alterInt, term, pcString);
        Individual alter = Context.current.individualCensus.get(alterInt);
        if (infoPerson == alter && currentEgo == egoInt) {
            personPanel1.fillTextField(nod, "primary", dt.addressTerms);
            personPanel1.dirty = true;
            chart.dirty = true;
        }
    }
    

    int suggsInFocus;

    TreeMap<String, ArrayList<Issue>> pickSuggs() {
        TreeMap<String, ArrayList<Issue>> suggs = null;
        boolean refIssues = (suggestionsRef != null && ! suggestionsRef.isEmpty()),
                adrIssues = (suggestionsAdr != null && ! suggestionsAdr.isEmpty());
        if (refIssues && adrIssues) {
            String title = "Choose the Suggestions to View",
                   msg = "View Suggestions for\nTerms of Reference\nor Terms of Address?";
            int btnTyp = JOptionPane.YES_NO_CANCEL_OPTION,
                msgTyp = JOptionPane.QUESTION_MESSAGE;
            Object[] btnLabels = {"Reference", "Address", "Cancel"};
            int choice = JOptionPane.showOptionDialog(this, msg, title, btnTyp,
                    msgTyp, null, btnLabels, btnLabels[0]);
            if (choice == JOptionPane.NO_OPTION) {
                suggs = suggestionsAdr;
                suggsInFocus = ADR;
            }
            else if (choice == JOptionPane.CANCEL_OPTION
                    || choice == JOptionPane.CLOSED_OPTION) return null;
        }else if (refIssues) {  //  only refs
            suggs = suggestionsRef;
            suggsInFocus = REF;
        }else if (adrIssues) {  // only adrs
            suggs = suggestionsAdr;
            suggsInFocus = ADR;
        }
        return suggs;  //  null = "What Suggestions?"
    }


    void doActiveLearning(Learned_DT learner)
            throws KSInternalErrorException, KSParsingErrorException, KSBadHornClauseException, KSConstraintInconsistency,
            ClassNotFoundException, JavaSystemException, FileNotFoundException, IOException {
        //  NOTE:  When simulations have ended and real User is employed, I must assure that the entries
        //	   in DyadsUndefined for erroneous terms (e.g. sistex) are removed from the tree once the
        //	   activity dyads have been corrected.  that is currently done in DyadTMap.summaryString()
        int maxConf = learner.ctxt.ignorableP / 2;
        learner.ctxt.simDataGen = true;
        Context.current = learner.ctxt;
        DomainTheory.current = learner;
        if (Library.synUmbDetectOn) {
            learner.resolveSynonymsInDyads();
        }
        boolean nonTermsFound = learner.dyadsUndefined.containsKey("no__term");
        Iterator dyadIter = learner.theory.keySet().iterator();
        while (dyadIter.hasNext()) {
            String kterm = (String) dyadIter.next();
            if (nonTermsFound || learner.dyadsUndefined.containsKey(kterm)) {
                ArrayList<Object> validationIssues = learner.validateNewDyads(kterm, learner.ctxt.maxNoiseP);
                learner.postAnomaliesForUser(kterm, validationIssues);
            }
        }  //  end of 1st loop thru kinTerms in theory
        dyadIter = learner.dyadsUndefined.keySet().iterator();
        int ctr = 0;
        while (dyadIter.hasNext()) {
            String kterm = (String) dyadIter.next();
            if (learner.dyadsUndefined.avgDyadsPerPCStr(kterm) >= minDyadsPerPCStr) {
                learner.learnKinTerm(kterm, learner.ctxt.maxNoiseP, learner.ctxt.ignorableP, maxConf, learner);
                ctr++;
            }
        }  //  end of 2nd loop thru kinTerms in DyadTMap
        if (ctr == 0) {
            String msg = "SILKin did not try to learn any new kin terms; not enough dyads per kin type.";
            throw new KSInternalErrorException(msg);
        }
        Library.CB_Ptr.clearCache();
        Library.KTD_Ptr.clearCacheDTs();
        System.gc();
        if (learner.dyadsDefined != null) {  //  Now loop thru definedTerm dyads
            dyadIter = learner.dyadsDefined.entrySet().iterator();
            while (dyadIter.hasNext()) {
                Map.Entry entry = (Map.Entry) dyadIter.next();
                String kterm = (String) entry.getKey();
                TreeMap pos = (TreeMap) entry.getValue(),
                        neg = learner.makeNEG(kterm, pos);
                learner.detectSynonymsAndUmbrellas(kterm, pos, neg, learner.ctxt.maxNoiseP);
            }  //  end of loop thru definedTerm dyads
        }
        // Now analyze all potentialUmbrellas & synonyms found in this loop
        if (learner.potUmbrellas != null) {
            learner.proposeUmbrellas();
        }
        learner.analyzeSynonymsAndUmbrellas();
        learner.validateSynonymsAndUmbrellas();
        learner.ctxt.simDataGen = false;
    } //  end of method doActiveLearning

    void resetSuggsMenu() {
            actOnSuggsItem.setEnabled(true);
            returnToSuggsItem.setEnabled(false);
    }

    
    // Variables declaration
    public JMenuItem actOnSuggsItem;
    private JMenuItem adminSILKinItem;
    public ChartPanel chart;
    private JPanel chartHolderPanel;
    private JPanel chartHolderHorizontal;
    private JLabel chartLabel;
    private JScrollPane chartScrollPane;
    private JMenu contextMenu;
    private JMenuItem copyItem;
    private JMenuItem cutItem;
    private JMenuItem deleteAllItem;
    private JCheckBoxMenuItem distinctAdrItem;
    private JCheckBoxMenuItem editableItem;
    private JMenuItem editContextItem;
    private JMenu editMenu;
    private JMenuItem editPrefsItem;
    private JMenu exportSubMenu;
    private JMenuItem exportGEDCOMItem;
    private JMenuItem exportKAESItem;
    private JMenuItem exportDefinitionsItem;
    private FamilyPanel familyPanel1;
    private JMenu fileMenu;
    private JMenu fileNewMenu;
    private JRadioButtonMenuItem firstNameBtn;
    private JMenuItem getSuggestionsItem;
    private JMenu helpMenu;
    private JRadioButtonMenuItem initialsBtn;
    private JMenuBar jMenuBar1;
    private JPopupMenu.Separator jSeparator1;
    private JPopupMenu.Separator jSeparator2;
    private JPopupMenu.Separator jSeparator3;
    private JPopupMenu.Separator jSeparator4;
    private ButtonGroup kinTermButtonGroup;
    JRadioButtonMenuItem kinTmAdrBtn;
    private JRadioButtonMenuItem kinTmRefBtn;
    private JMenu labelMenu;
    JRadioButtonMenuItem ltrAdrBtn;
    private JRadioButtonMenuItem ltrRefBtn;
    private JRadioButtonMenuItem lastNameBtn;
    private JMenuItem loadItem;
//    private JMenuItem loadItemPreXML;
    private ButtonGroup nameButtonGroup;
    private JMenuItem newContextItem;
    private JMenuItem newLiBrowserItem;
    private JRadioButtonMenuItem noKinTermBtn;
    private JRadioButtonMenuItem noNameBtn;
    private JMenuItem pasteItem;
    private PersonPanel personPanel1;
    private JMenuItem quitItem;
    public JMenuItem returnToSuggsItem;
    private JMenuItem saveAsItem;
    private JMenuItem saveItem;
//    private JMenuItem testKeyItem;
//    private JMenuItem testUnicodeItem;
    private JRadioButtonMenuItem wholeNameBtn;
    // End of variables declaration
}
