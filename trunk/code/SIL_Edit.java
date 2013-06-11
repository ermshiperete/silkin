
/**
 * This class is part of the SILKin program's GUI. It is modeled after the KAES
 * KinshipEditor by Michael D. Fischer of the Centre for Social Anthropology and
 * Computing, University of Kent, U.K. Those portions taken from his code are
 * copyrighted by him; all rights reserved. See his complete copyright statement
 * and terms of re-use in Marriage.java in this package.
 *
 * SIL_Edit is the main GUI window for the Data-Gathering activity of SILKin. It
 * enables a field user to graphically create a family tree for one or more
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
import java.awt.print.PageFormat;
import java.awt.print.PrinterJob;
import java.util.*;

/**
 * NOTE: This file originally created via the form editor (GUI Builder) in
 * NetBeans 6.9.1 For unknown reasons the form editor quit working, so I
 * stripped out the comments that seem to guide the editor, deleted the form
 * file, and now use this strictly as a SWING GUI file.
 */
public class SIL_Edit extends JFrame {

    static SIL_Edit editWindow;
    static DecisionFrame decisionFrame;
    static final int REF = 0, ADR = 1;
    static final int minDyadsPerPCStr = 2;
    static ArrayList<ArrayList<Integer>> namedDyadList = null;
    static boolean helpScreenOnStartUp = true;
    static TreeMap<String, PropagationMethod> linkMethods = buildLinkMethods();

    static TreeMap<String, PropagationMethod> buildLinkMethods() {
        TreeMap<String, PropagationMethod> lm = new TreeMap<String, PropagationMethod>();
        lm.put("Fa", new ParentMethod());
        lm.put("Mo", new ParentMethod());
        lm.put("P", new ParentMethod());
        lm.put("So", new ChildMethod());
        lm.put("Da", new ChildMethod());
        lm.put("C", new ChildMethod());
        lm.put("Hu", new SpouseMethod());
        lm.put("Wi", new SpouseMethod());
        lm.put("S", new SpouseMethod());
        lm.put("Bro", new SiblingMethod());
        lm.put("Sis", new SiblingMethod());
        lm.put("Sib", new SiblingMethod());
        lm.put("Hbro", new HalfSiblingMethod());
        lm.put("Hsis", new HalfSiblingMethod());
        lm.put("Stfa", new StepParentMethod());
        lm.put("Stmo", new StepParentMethod());
        lm.put("Stbro", new StepSiblingMethod());
        lm.put("Stsis", new StepSiblingMethod());
        lm.put("Stso", new StepChildMethod());
        lm.put("Stda", new StepChildMethod());
        return lm;
    }
    boolean editable = true, loadingCharts = false;
    Individual infoPerson = null;
    Family infoMarriage = null;
    private int currentEgo = 0;
//    private Runtime topDog = Runtime.getRuntime();
    public KinTermMatrix ktm;
    TreeMap<String, ArrayList<Issue>> suggestionsRef, suggestionsAdr;

    /**
     * Creates new form SIL_Edit
     */
    public SIL_Edit() {
        editWindow = this;
        initComponents();  //  initComponents is NetBeans-generated code
        prepComponents();  //  prepComponents is my own code
        try {
            if (Library.stubs.isEmpty()) {
                Library.readStubFile();
            }
        } catch (Exception e) {
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
        printMenu = new JMenu("Print");
        printVisible = new JMenuItem("Print Visible Chart Portion");
        printCurrentChart = new JMenuItem("Print Current Chart");
        printAllCharts = new JMenuItem("Print All Charts");
        pageSetupItem = new JMenuItem("Page Setup");
        quitItem = new JMenuItem();
        editMenu = new JMenu();
        cutItem = new JMenuItem();
        copyItem = new JMenuItem();
        pasteItem = new JMenuItem();
        jSeparator2 = new JPopupMenu.Separator();
        editChartDescriptionItem = new JMenuItem("Edit Chart Description");
        deleteCurrentChartItem = new JMenuItem("Delete Current Chart");
        jSeparator5 = new JPopupMenu.Separator();
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
        snapToGrid = new JCheckBoxMenuItem();
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

        printVisible.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                printVisibleItemActionPerformed(evt);
            }
        });
        printMenu.add(printVisible);

        printCurrentChart.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                printCurrentChartItemActionPerformed(evt);
            }
        });
        printMenu.add(printCurrentChart);

        printAllCharts.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                printAllChartsItemActionPerformed(evt);
            }
        });
        printMenu.add(printAllCharts);

        fileMenu.add(printMenu);

        pageSetupItem.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                pageSetupItemActionPerformed(evt);
            }
        });
        fileMenu.add(pageSetupItem);

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

        editChartDescriptionItem.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                editChartDescriptionItemActionPerformed(evt);
            }
        });
        editMenu.add(editChartDescriptionItem);

        deleteCurrentChartItem.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                deleteCurrentChartItemActionPerformed(evt);
            }
        });
        editMenu.add(deleteCurrentChartItem);
        editMenu.add(jSeparator5);

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

        snapToGrid.setText("Snap To Grid");
        setSnap(true);
        snapToGrid.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                snapToGridActionPerformed(evt);
            }
        });
        contextMenu.add(snapToGrid);

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
        chartComboBox = new JComboBox();
        chartComboBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                chartComboBoxActionPerformed(evt);
            }
        });
        chartComboModel = (DefaultComboBoxModel) chartComboBox.getModel();
        rebuildChartCombo();
        chartComboBox.setAlignmentX(0.5f);
        chartComboBox.setPreferredSize(new Dimension(400, 20));
        chartComboBox.setMaximumSize(new Dimension(400, 20));
//        chartLabel = new JLabel("Draw Family Tree Charts Below");
//        chartLabel.setAlignmentX(0.5f);
        chartScrollPane.setAlignmentX(0.5f);
        chartHolderPanel.setLayout(new BoxLayout(chartHolderPanel, BoxLayout.PAGE_AXIS));
        chartHolderPanel.add(Box.createRigidArea(new Dimension(0, 5)));

        chartHolderHorizontal.setLayout(new BoxLayout(chartHolderHorizontal, BoxLayout.LINE_AXIS));
        chartHolderHorizontal.add(Box.createRigidArea(new Dimension(8, 0)));
        chartHolderHorizontal.add(chartScrollPane);
        chartHolderHorizontal.add(Box.createRigidArea(new Dimension(8, 0)));
        chartHolderHorizontal.setBackground(new Color(255, 228, 225));

//        chartHolderPanel.add(chartLabel);
        chartHolderPanel.add(chartComboBox);
        chartHolderPanel.add(chartHolderHorizontal);
        chartHolderPanel.add(Box.createRigidArea(new Dimension(0, 10)));
        chartHolderPanel.setBorder(BorderFactory.createEtchedBorder(Color.red, Color.blue));
        chartHolderPanel.setBackground(new Color(255, 228, 225));
//        chartHolderPanel.setPreferredSize(new Dimension(907, 400));

        // Add components to the JFrame's content pane
        setLayout(new BoxLayout(getContentPane(), BoxLayout.PAGE_AXIS));
        add(Box.createRigidArea(new Dimension(0, 5)));
        add(personPanel1);
        add(familyPanel1);
        add(Box.createRigidArea(new Dimension(0, 5)));
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
        setSize(new Dimension(1050, 725));
        newLiBrowserItem.setEnabled(false);
        exportGEDCOMItem.setEnabled(false);
        printAllCharts.setEnabled(true);
        pack();
    }

    void rebuildChartCombo() {
        loadingCharts = true;
        chartComboBox.removeAllItems();
        String newItem = "Create New Chart";
        chartComboModel.addElement(newItem);
        int ndx = 0;
        if (Context.current != null && Context.current.chartDescriptions != null) {
            for (int i = 0; i < Context.current.chartDescriptions.size(); i++) {
                newItem = Context.current.chartLtrs[i];
                if (newItem.equals(Context.current.currentChart)) {
                    ndx = i + 1;
                }
                newItem += ": " + Context.current.chartDescriptions.get(i);
                if (newItem.length() > 85) {
                    newItem = newItem.substring(0, 84);
                }
                chartComboModel.addElement(newItem);
            }
        }
        chartComboBox.setSelectedIndex(ndx);
        loadingCharts = false;
    }

    private void newContextActionPerformed(ActionEvent evt) {
        if (chart.dirty) {
            chart.doWantToSave();
        }
        if (chart.editable) {
            chart.deleteAll();
        }
    }

    public void setSnap(boolean onOff) {
        snapToGrid.setSelected(onOff);
    }

    private void newLiBrowserActionPerformed(ActionEvent evt) {
        Library.currentActivity = Library.BROWSING;
        SILKin.createAndShowGUI();
        if (Context.current != null) {
            MainPane.topPane.browseCurrentContext();
        } else {
            MainPane.topPane.browseLibrary();
        }
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
        chart.saveSILKFile();
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

    // 
    private void printVisibleItemActionPerformed(ActionEvent evt) {
        //  No chart title is printed on a partial print.
        PrintChart pc = new PrintChart(chartScrollPane, false);
        pc.printTheChart();
    }

    private void printCurrentChartItemActionPerformed(ActionEvent evt) {
        PrintChart pc = new PrintChart(chartScrollPane, true);
        pc.printTheChart();
    }

    private void printAllChartsItemActionPerformed(ActionEvent evt) {
        PrintChart pc = new PrintChart(chartScrollPane, true);
        for (int i = 0; i < Context.current.chartDescriptions.size(); i++) {
            Context.current.currentChart = Context.current.getChartLtr(i);
//            pc = new PrintChart(chartScrollPane, true);
            pc.printTheChart();
        }
    }

    private void pageSetupItemActionPerformed(ActionEvent evt) {
        PrinterJob job = PrinterJob.getPrinterJob();
        PageFormat defaultPage = job.defaultPage();
        defaultPage.setOrientation(PageFormat.LANDSCAPE);
        PrintChart.pgFormat = job.pageDialog(defaultPage);
    }

    private void quitItemActionPerformed(ActionEvent evt) {
        if (SIL_Edit.editWindow.chart.dirty) {
            SIL_Edit.editWindow.chart.doWantToSave();
        }
        System.exit(0);
    }

    public void editChartDescriptionItemActionPerformed(ActionEvent evt) {
        String ch = Context.current.currentChart;
        String msg = "New Description for Chart " + ch + ":\n";
        int ndx = Context.current.getChartIndex(ch);
        msg += Context.current.chartDescriptions.get(ndx);
        String newDescription = JOptionPane.showInputDialog(msg);
        if (newDescription != null) {
            Context.current.chartDescriptions.set(ndx, newDescription);
            rebuildChartCombo();
        }
    }

    public void deleteCurrentChartItemActionPerformed(ActionEvent evt) {
        String chrt = Context.current.currentChart;
        String msg = "Chart " + chrt + " contains ", comma = "";
        boolean problems = false;
        ArrayList<Family> fams = new ArrayList<Family>();
        ArrayList<Individual> inds = new ArrayList<Individual>();
        ArrayList<Link> linx = new ArrayList<Link>();
        for (Family fam : Context.current.familyCensus) {
            if (fam.homeChart.equals(chrt)) {
                fams.add(fam);
            }
        }
        for (Individual ind : Context.current.individualCensus) {
            if (ind.homeChart.equals(chrt)) {
                inds.add(ind);
            }
        }
        for (Link lk : Context.current.linkCensus) {
            if (lk.homeChart.equals(chrt)) {
                linx.add(lk);
            }
        }
        int fs = fams.size(), is = inds.size(), ls = linx.size();
        if (fs + is + ls > 0) {
            if (fs > 0) {
                msg += fs + " famil" + (fs == 1 ? "y" : "ies");
                comma = ", ";
            }
            if (is > 0) {
                msg += comma + is + " individual" + (is == 1 ? "" : "s");
                comma = ", ";
            }
            if (ls > 0) {
                msg += comma + ls + " link" + (ls == 1 ? "" : "s");
            }
            msg += ".\n" + (fs + is + ls > 1 ? "These" : "This");
            msg += " will be deleted. Un-deletion is difficult.\nAre you SURE?";
            int choice = JOptionPane.showConfirmDialog(this, msg, "DANGEROUS ACTION",
                    JOptionPane.YES_NO_OPTION,
                    JOptionPane.WARNING_MESSAGE);
            if (choice == JOptionPane.NO_OPTION) {
                return;
            }
            msg = "If any person (not link) on this chart is connected to another chart,\n"
                    + "the connection must be broken before you can delete that person\n"
                    + "along with this chart.\nPROCEED?";
            choice = JOptionPane.showConfirmDialog(this, msg, "Rules for Deletions",
                    JOptionPane.YES_NO_OPTION,
                    JOptionPane.WARNING_MESSAGE);
            if (choice == JOptionPane.NO_OPTION) {
                return;
            }
            // Proceed with deletion of people, families, and links
            for (Family fam : fams) {
                chart.deleteFamily(fam);
            }
            for (Individual ind : inds) {
                try {
                    chart.deleteIndividual(ind);
                } catch (KinshipSystemException exc) {
                    problems = true;
                }
            }
            if (infoPerson.deleted) {
                getPPanel().displayClues();
                repaint();
                infoPerson = null;
            }
            for (Link lk : linx) {
                try {
                    chart.deleteLink(lk);
                } catch (KinshipSystemException exc) {
                    problems = true;
                }                
            }
        }
        // Now delete the chart itself
        if (!problems) {
            deleteChart(chrt);
            chartComboBox.setSelectedIndex(1);
            
        }
    }
    
    void deleteChart(String chrt) {
        int ndx = Context.current.getChartIndex(chrt);
        Context.current.chartDescriptions.remove(ndx);
        if (ndx != Context.current.chartDescriptions.size()) {
            // wasn't the last one -- had to remove it from middle
            for (Individual ind : Context.current.individualCensus) {
                if (! ind.deleted && ind.homeChart.compareTo(chrt) > 0) {
                    ndx = Context.current.getChartIndex(ind.homeChart);
                    ind.homeChart = Context.current.getChartLtr(ndx -1);
                }
            }
            for (Family fam : Context.current.familyCensus) {
                if (! fam.deleted && fam.homeChart.compareTo(chrt) > 0) {
                    ndx = Context.current.getChartIndex(fam.homeChart);
                    fam.homeChart = Context.current.getChartLtr(ndx -1);
                }
            }
            for (Link lk : Context.current.linkCensus) {
                if (! lk.deleted && lk.homeChart.compareTo(chrt) > 0) {
                    ndx = Context.current.getChartIndex(lk.homeChart);
                    lk.homeChart = Context.current.getChartLtr(ndx -1);
                }
            }            
        }
        rebuildChartCombo();
        getPPanel().rebuildEgoBox();
        if (infoPerson != null) {
            showInfo(infoPerson);
        }else if (infoMarriage != null) {
            showInfo(infoMarriage);
        }
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
            MainPane.topPane.editCUC();
        } else {
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
        } else {
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
        if (resettingDistinctAdrItem) {
            return;
        }
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
            if (!copy) {
                dtAdr.theory = new TreeMap();
            }
            ctxt.addDomainTheory(dtAdr);
        } catch (Exception ex) {
            MainPane.displayError("Internal error while accessing terms of reference",
                    "Fatal Error", JOptionPane.WARNING_MESSAGE);
        }
        ctxt.learningHistoryAdr = new TreeMap<String, ArrayList<Context.HistoryItem>>(ctxt.learningHistoryRef);
        if (copy) {
            dtAdr.dyadsDefined = dtRef.dyadsDefined.convertToAdr();
            dtAdr.dyadsUndefined = dtRef.dyadsUndefined.convertToAdr();
            dtAdr.issuesForUser.putAll(dtRef.issuesForUser);
            ctxt.ktm.addAdrCloneTerms();
            ctxt.autoDefAdr = new TreeMap<String, ArrayList<Context.CB_Ptr>>(ctxt.autoDefRef);
        } else {
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
        } else {
            chart.editable = false;
            Context.current.editable = false;
        }
    }

    private void snapToGridActionPerformed(ActionEvent evt) {
        if (snapToGrid.isSelected()) {
            Library.snapToGrid = true;
        } else {
            Library.snapToGrid = false;
        }
    }

    public void setActOnSuggsEnabled(boolean yn) {
        actOnSuggsItem.setEnabled(yn);
    }

    private void getSuggestionsItemActionPerformed(ActionEvent evt) {
        try {
            chart.saveSILKFile();
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
            chart.saveSILKFile();
            File suggsDataFile = chart.saveFile;
            String styleFilePath = Library.libraryDirectory + "Suggestions/silk-status.xsl";
            File stylesheet = new File(styleFilePath);
            if (!stylesheet.exists()) {
                String msg = "Cannot find file 'silk-status.xsl' in Suggestions folder.";
                MainPane.displayError(msg, "Can't Get Suggestions", JOptionPane.ERROR_MESSAGE);
                return;
            }
            File outfile = makeHTMLfile(suggsDataFile);
            XMLTransformer tformer = new XMLTransformer();
            tformer.transform(suggsDataFile, stylesheet, outfile);
            ctxt.dateOfLastSuggestion = UDate.today();
        } catch (KinshipSystemException internalExc) {
            String msg = "SILKin learning INTERNAL failure: " + internalExc;
            MainPane.displayError(msg, "SILKin learning module failure", JOptionPane.PLAIN_MESSAGE);
        } catch (Exception exc) {
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
            } else { // maybe this is it
                msg += "\nBut we did find " + htmlFile.getName() + ".";
                msg += "\nHit 'Cancel' if you meant to Get New Suggestions.";
                Object[] btns = {"Use " + htmlFile.getName(), "Cancel"};
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
        } catch (Exception ex) {
        }  //  nothing can go wrong ....
        if (decisionFrame == null || !decisionFrame.isShowing()) {
            actOnSuggsActionPerformed(evt);
        } else {
            decisionFrame.toFront();
        }
    }

    public void chartComboUpdateTitle() {
        loadingCharts = true;
        Context c = Context.current;
        chartComboBox.setSelectedIndex(c.getChartIndex(c.currentChart) + 1);
        loadingCharts = false;
    }

    private void chartComboBoxActionPerformed(ActionEvent evt) {
        if (loadingCharts) {
            return;
        }
        try {
            storeInfo();
        } catch (Exception ex) {
        }  //  nothing can go wrong ....
        if (infoPerson != null) {
            chart.whichFolk = infoPerson.serialNmbr;
        }
        getPPanel().storing = true;
        String choice = (String) chartComboBox.getSelectedItem(), nxtLtr, msg;
        if (choice.equals("Create New Chart")) {
            nxtLtr = Context.current.getNextChartLtr();
            if (nxtLtr == null) { // unlikely - 52 chart letters available
                msg = "SILKin is limited to 52 different charts. You can't have any more.";
                JOptionPane.showInternalMessageDialog(this, msg, "Sorry, Too Many Charts", JOptionPane.ERROR_MESSAGE);
                getPPanel().storing = false;
                return;
            }
            String newDescription = JOptionPane.showInputDialog(this, "Short Description of This Chart (e.g. Smith Family)");
            Context.current.chartDescriptions.add(newDescription);
            Context.current.currentChart = nxtLtr;
            rebuildChartCombo();
        } else {
            int colon = choice.indexOf(":");
            Context.current.currentChart = choice.substring(0, colon);
        }
        chart.checkSizeOfChart(Context.current);
        chart.resizeAndRepaint();
        getPPanel().storing = false;
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

    /**
     * Rebuild the KinTermMatrix's node lattice from the population's graph of
     * Individuals and Families. Any nodes from the old KTM that have exact
     * counterparts in the new KTM can copy their kin terms to the new one.
     *
     * After the KTM is regenerated, build a new set of DyadTMaps and the Kin
     * Type Index from it.
     */
    public void rebuildKTMatrixEtc() {
        KinTermMatrix oldKTM = ktm;
        ktm = new KinTermMatrix();
        for (Individual pers : Context.current.individualCensus) {
            pers.node = null;
        }
        for (Individual pers : Context.current.individualCensus) {
            if (!pers.deleted) {
                int id = pers.serialNmbr;
                TreeMap newRow = new TreeMap();
                ktm.matrix.put(id, newRow);
                currentEgo = id;
                pers.node = Node.makeSelfNode(Context.current.distinctAdrTerms);
                pers.node.indiv = pers;
                newRow.put(id, pers.node);
                KSQ bfq = new KSQ();
                bfq.enQ(pers);
                propagateNodes(bfq, newRow, null);
                TreeMap oldRow = (TreeMap) oldKTM.matrix.get(id);
                if (oldRow != null) {
                    copyNodes(oldRow, newRow);
                }
                for (Object n : newRow.values()) {  //  reset nodes
                    ((Node) n).indiv.node = null;
                }
            }
        }  //  KTM is now regenerated. Install as official.
        Context.current.ktm = ktm;
        PersonPanel.fillDyadsFromMatrix();
        regenerateKTI();  // rebuild Kin Type Index
    }

    void regenerateKTI() {
        KinTypeIndex kti = (Context.current.kti = new KinTypeIndex());
        Iterator ktmIter = ktm.matrix.entrySet().iterator();
        while (ktmIter.hasNext()) {
            Map.Entry entry = (Map.Entry) ktmIter.next();
            Integer egoInt = (Integer) entry.getKey();
            TreeMap row = (TreeMap) entry.getValue();
            kti.updateFromRow(egoInt, row);
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
                Integer alter = (Integer) altIter.next();
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
                Map.Entry entry = (Map.Entry) nodeIter.next();
                Integer alter = (Integer) entry.getKey();
                Node n = (Node) entry.getValue();
                oldRowCopy.put(alter, n);
            }
        }
        //  Must build NEW nodes for each person who is connected to currentEgo
        ChartPanel.doIndexes = true;
        Individual ego = Context.current.individualCensus.get(egoNum);
        ego.node = Node.makeSelfNode(Context.current.distinctAdrTerms);

        //  2.2  NEW CODE  Uses a breadth-first queue (bfq)
        KSQ bfq = new KSQ();
        bfq.enQ(ego);
        TreeMap newRow = ktm.getRow(currentEgo);
        propagateNodes(bfq, newRow, null);

        // 2.3  insert old nodes with kin terms into new ktm row
        if (oldRowCopy != null) {
            newRow = ktm.getRow(currentEgo);
            oKay = copyNodes(oldRowCopy, newRow);
        }
        showInfo(infoPerson);
        chart.repaint();
        return oKay;
    }

    public boolean copyNodes(TreeMap oldRow, TreeMap newRow) {
        Iterator nodeIter = oldRow.entrySet().iterator();
        while (nodeIter.hasNext()) {
            Map.Entry entry = (Map.Entry) nodeIter.next();
            Integer alterInt = (Integer) entry.getKey();
            Node oldNode = (Node) entry.getValue();
            Node newNode = (Node) newRow.get(alterInt);
            if (newNode != null && newNode.pcString.equals(oldNode.pcString)) {
                if (alterInt == currentEgo) {
                    oldNode = oldNode.clone();
                }
                newRow.put(alterInt, oldNode);
                Individual al = Context.current.individualCensus.get(alterInt);
                al.node = oldNode;
            }
        }
        return true;
    }

    /*   public static void propagateNodes(KSQ bfq, TreeMap newRow, Individual target) {
     try {
     while (!bfq.isEmpty()) {
     Individual currInd = (Individual) bfq.deQ(), nextInd;
     String relat = "";
     if (currInd.birthFamily != null) {  //  to parents
     nextInd = currInd.birthFamily.husband;
     propagate(currInd, nextInd, "Fa", bfq, newRow, target);
     nextInd = currInd.birthFamily.wife;
     propagate(currInd, nextInd, "Mo", bfq, newRow, target);
     }
     for (Object o : currInd.marriages) {  //  to children
     Family fam = (Family) o;
     for (Object child : fam.children) {
     nextInd = (Individual) child;
     relat = (nextInd.gender.equals("M") ? "So" : "Da");
     propagate(currInd, nextInd, relat, bfq, newRow, target);
     }  //  to spouse
     nextInd = (currInd.gender.equals("M") ? fam.wife : fam.husband);
     if (nextInd != null) {
     relat = (nextInd.gender.equals("M") ? "Hu" : "Wi");
     }
     propagate(currInd, nextInd, relat, bfq, newRow, target);
     }
     if (currInd.birthFamily != null) {
     Family bFam = (Family) currInd.birthFamily;
     //  to full siblings
     for (Object o : bFam.children) {
     if (o != currInd) {
     nextInd = (Individual) o;
     relat = (nextInd.gender.equals("M") ? "Bro" : "Sis");
     propagate(currInd, nextInd, relat, bfq, newRow, target);
     }
     }
     //  to half siblings
     ArrayList<Individual> parents = new ArrayList<Individual>();
     if (bFam.husband != null) {
     parents.add(bFam.husband);
     }
     if (bFam.wife != null) {
     parents.add(bFam.wife);
     }
     for (Individual naturalParent : parents) {
     for (Object o : naturalParent.marriages) {
     Family mar = (Family) o;
     if (mar != bFam) {
     for (Object chrt : mar.children) {
     nextInd = (Individual) chrt;
     relat = (nextInd.gender.equals("M") ? "Hbro" : "Hsis");
     propagate(currInd, nextInd, relat, bfq, newRow, target);
     }
     //  to step parents
     Individual stepParent = (naturalParent == mar.wife ? mar.husband : mar.wife);
     if (stepParent != null) {
     relat = (stepParent.gender.equals("M") ? "Stfa" : "Stmo");
     propagate(currInd, stepParent, relat, bfq, newRow, target);
     //  to step siblings
     for (Object m : stepParent.marriages) {
     Family stepFam = (Family) m;
     if (stepFam != mar && stepFam != bFam) {
     for (Object k : stepFam.children) {
     nextInd = (Individual) k;
     relat = (nextInd.gender.equals("M") ? "Stbro" : "Stsis");
     propagate(currInd, nextInd, relat, bfq, newRow, target);
     }
     }
     }
     }
     }
     }
     }  //  end of loop thru natural parents & their other marriages
     }  //  end of currInd's birth family != null
     //  to step children
     for (Object o : currInd.marriages) {
     Family fam = (Family) o;
     Individual currIndSpouse = (currInd == fam.husband ? fam.wife : fam.husband);
     if (currIndSpouse != null) {
     for (Object f : currIndSpouse.marriages) {
     Family spouseFam = (Family) f;
     if (spouseFam != fam) {
     for (Object kid : spouseFam.children) {
     nextInd = (Individual) kid;
     relat = (nextInd.gender.equals("M") ? "Stso" : "Stda");
     propagate(currInd, nextInd, relat, bfq, newRow, target);
     }
     }
     }
     }
     }
     //  to star links
     if (currInd.starLinks != null) {
     for (Object o : currInd.starLinks) {
     nextInd = (Individual) o;
     propagate(currInd, nextInd, "**", bfq, newRow, target);
     }
     }
     }  //  end of while BFQ is not empty    
     } catch (KSDateParseException ksd) {
     // If ksd is thrown, then target is non-null, and a node has been
     // created for target with a PCString. We're done.
     }
     }  //  end of OLD method propagateNodes
     */
    public static void propagateNodes(KSQ bfq, TreeMap newRow, Individual target) {
        ArrayList<String> linkOrder = Context.current.linkOrder;
        TreeMap<String, String> priorities = Context.current.linkPriorityTMap;
        Iterator linkIter = linkOrder.iterator();
        try {
            while (!bfq.isEmpty()) {
                Individual currInd = (Individual) bfq.deQ(), nextInd;
                while (linkIter.hasNext()) {
                    String link = (String) linkIter.next();
                    PropagationMethod method = linkMethods.get(link);
                    method.prop(currInd, link, bfq, newRow, target, priorities);
                } //  and finally, star links
                if (currInd.starLinks != null) {
                    for (Object o : currInd.starLinks) {
                        nextInd = (Individual) o;
                        propagate(currInd, nextInd, "**", bfq, newRow, target, priorities);
                    }
                }
                linkIter = linkOrder.iterator();
            }  //  end of while BFQ is not empty    
        } catch (KSDateParseException ksd) {
            // If ksd is thrown, then target is non-null, and a node has been
            // created for target with a PCString. We're done.
        }
    }  //  end of method propagateNodes

    public static void propagate(Individual currInd, Individual nextInd,
            String relat, KSQ bfq, TreeMap newRow, Individual target,
            TreeMap<String, String> priorities)
            throws KSDateParseException {
        if (nextInd == null) {
            return;
        }
        Node fromNode = currInd.node,
                toNode = nextInd.node;
        if (toNode != null) {
            // If toNode has a shorter path to Ego than we can provide, quit
            // UNLESS toNode's path contains starlinks and our path does not.
            // If the 2 paths are equal length, quit if the new path is not 
            // higher priority.
            int toPathLength = toNode.miniPreds.size(),
                    newPathLength = fromNode.miniPreds.size() + 1;
            boolean newShorter = newPathLength < toPathLength,
                    equalPaths = newPathLength == toPathLength,
                    oldHasStars = false,
                    newHigherPriority = false,
                    newMoreNatural = !relat.equals("**");
            for (Object s : fromNode.miniPreds) {
                if (s.toString().startsWith("*")) {
                    newMoreNatural = false;
                    break;
                }
            }
            for (Object s : toNode.miniPreds) {
                if (s.toString().startsWith("*")) {
                    oldHasStars = true;
                    break;
                }
            }
            if (!oldHasStars) {
                newMoreNatural = false;
            }
            if (equalPaths) {
                ArrayList<String> oldPCs = new ArrayList<String>(),
                        newPCs = new ArrayList<String>();
                if (!toNode.pcString.isEmpty()) {
                    oldPCs.addAll(KinTermDef.explodePCSymbols(toNode.pcString));
                }
                if (!fromNode.pcString.isEmpty()) {
                    newPCs.addAll(KinTermDef.explodePCSymbols(fromNode.pcString));
                }
                newPCs.add(relat);
                newHigherPriority = higherPriority(newPCs, oldPCs, priorities);
            }
            if (!newShorter && !newMoreNatural && !newHigherPriority) {
                return;
            }
            // Remove the kin type pair of the old path from KTI
            String oldKinType = toNode.pcString;
            Integer[] pair = KinTermDef.pluckEgoAndAlter(toNode.miniPreds);
            Context.current.kti.removePair(oldKinType, pair);
        }
        //  Proceed to make or modify toNode
        if (toNode == null) {
            nextInd.node = new Node();
            nextInd.node.indiv = nextInd;
            toNode = nextInd.node;
        }
        // The new path will replace any prior path
        toNode.miniPreds = new ArrayList<Object>(fromNode.miniPreds);
        toNode.pcString = fromNode.pcString + relat;
        String miniPred = relat + "(#" + nextInd.serialNmbr
                + ",#" + currInd.serialNmbr + ")";
        toNode.miniPreds.add(miniPred);
        int level = fromNode.getLevel();
        if (relat.equals("Mo") || relat.equals("Fa") || relat.equals("Stmo")
                || relat.equals("Stfa")) {
            level++;
        }
        if (relat.equals("So") || relat.equals("Da") || relat.equals("Stso")
                || relat.equals("Stda")) {
            level--;
        }
        toNode.setLevel(level);
        bfq.enQ(nextInd);  //  Propagate by putting onto the BFQ
        newRow.put(nextInd.serialNmbr, toNode);
        if (target == nextInd) {  // goal reached. End search.
            throw new KSDateParseException("Found alter.");
        }
        // Insert the new kin type pair into KTI
        String newKinType = toNode.pcString;
        Integer[] pair = KinTermDef.pluckEgoAndAlter(toNode.miniPreds);
        Context.current.kti.addPair(newKinType, pair);
    }  //  end of method propagate

    public static boolean higherPriority(ArrayList<String> newPCS,
            ArrayList<String> oldPCS, TreeMap<String, String> priorities) {
        ArrayList<String> newPriorities = new ArrayList<String>(),
                oldPriorities = new ArrayList<String>();
        for (String pcs : newPCS) {
            String pri = priorities.get(pcs);
            if (pri == null) {
                throw new NullPointerException("No priority found for " + pcs);
            }
            newPriorities.add(pri);
        }
        for (String pcs : oldPCS) {
            String pri = priorities.get(pcs);
            if (pri == null) {
                throw new NullPointerException("No priority found for " + pcs);
            }
            oldPriorities.add(pri);
        }
        for (int i = 0; i < newPriorities.size(); i++) {
            int comp = newPriorities.get(i).compareTo(oldPriorities.get(i));
            if (comp < 0) {
                return true;
            }
            if (comp > 0) {
                return false;
            }
        }
        return false;
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

    void setSnapToGrid(boolean setting) {
        snapToGrid.setSelected(setting);
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
        if (ind == null) {
            return;
        }
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
        if (fam == null) {
            return;
        }
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
        DomainTheory.current = dt;
        Context ctxt = Context.current;
        for (Object o : newDef.expandedDefs) {
            ClauseBody cb = (ClauseBody) o;
            ArrayList<Integer[]> candidates = ctxt.kti.getList(cb.pcString);
            for (Integer[] pair : candidates) {
                Dyad dad = new Dyad();
                dad.ego = ctxt.individualCensus.get(pair[0]);
                dad.alter = ctxt.individualCensus.get(pair[1]);
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
                } catch (Exception ex) {
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
        boolean refIssues = (suggestionsRef != null && !suggestionsRef.isEmpty()),
                adrIssues = (suggestionsAdr != null && !suggestionsAdr.isEmpty());
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
            } else if (choice == JOptionPane.CANCEL_OPTION
                    || choice == JOptionPane.CLOSED_OPTION) {
                return null;
            }
        } else if (refIssues) {  //  only refs
            suggs = suggestionsRef;
            suggsInFocus = REF;
        } else if (adrIssues) {  // only adrs
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

    static abstract class PropagationMethod {

        abstract void prop(Individual currInd, String link, KSQ bfq,
                TreeMap newRow, Individual target, TreeMap<String, String> priorities)
                throws KSDateParseException;
    }

    static class ParentMethod extends PropagationMethod {

        void prop(Individual currInd, String link, KSQ bfq,
                TreeMap newRow, Individual target, TreeMap<String, String> priorities)
                throws KSDateParseException {

            if (currInd.birthFamily == null) {
                return;
            }
            Individual nextInd;
            if (link.equals("Fa") && currInd.birthFamily.husband != null
                    && currInd.birthFamily.husband.gender.equals("M")) {
                nextInd = currInd.birthFamily.husband;
                propagate(currInd, nextInd, "Fa", bfq, newRow, target, priorities);
            } else if (link.equals("Mo") && currInd.birthFamily.wife != null
                    && currInd.birthFamily.wife.gender.equals("F")) {
                nextInd = currInd.birthFamily.wife;
                propagate(currInd, nextInd, "Mo", bfq, newRow, target, priorities);
            } else if (link.equals("P")) {
                nextInd = currInd.birthFamily.wife;
                if (nextInd != null && nextInd.gender.equals("?")) {
                    propagate(currInd, nextInd, "P", bfq, newRow, target, priorities);
                }
                nextInd = currInd.birthFamily.husband;
                if (nextInd != null && nextInd.gender.equals("?")) {
                    propagate(currInd, nextInd, "P", bfq, newRow, target, priorities);
                }
            }
        } // end of prop method
    } // end of inner class ParentMethod

    static class ChildMethod extends PropagationMethod {

        void prop(Individual currInd, String link, KSQ bfq,
                TreeMap newRow, Individual target, TreeMap<String, String> priorities)
                throws KSDateParseException {

            for (Object o : currInd.marriages) {
                Family fam = (Family) o;
                for (Object child : fam.children) {
                    Individual nextInd = (Individual) child;
                    if ((link.equals("So") && nextInd.gender.equals("M"))
                            || (link.equals("Da") && nextInd.gender.equals("F"))
                            || (link.equals("C") && nextInd.gender.equals("?"))) {
                        propagate(currInd, nextInd, link, bfq, newRow, target, priorities);
                    }
                }
            }
        } // end of prop method
    } // end of inner class ChildMethod

    static class SpouseMethod extends PropagationMethod {

        void prop(Individual currInd, String link, KSQ bfq,
                TreeMap newRow, Individual target, TreeMap<String, String> priorities)
                throws KSDateParseException {

            if ((currInd.gender.equals("M") && link.equals("Hu"))
                    || (currInd.gender.equals("F") && link.equals("Wi"))) {
                return;
            }
            for (Object o : currInd.marriages) {
                Family fam = (Family) o;
                if (link.equals("Wi")) {
                    Individual nextInd = fam.wife;
                    if (nextInd != null && nextInd.gender.equals("F")) {
                        propagate(currInd, nextInd, link, bfq, newRow, target, priorities);
                    }
                } else if (link.equals("Hu")) {
                    Individual nextInd = fam.husband;
                    if (nextInd != null && nextInd.gender.equals("M")) {
                        propagate(currInd, nextInd, link, bfq, newRow, target, priorities);
                    }
                } else if (link.equals("S")) {
                    Individual nextInd = (currInd == fam.husband ? fam.wife : fam.husband);
                    if (nextInd != null && nextInd.gender.equals("?")) {
                        propagate(currInd, nextInd, link, bfq, newRow, target, priorities);
                    }
                }
            }
        } // end of prop method
    } // end of inner class SpouseMethod

    static class SiblingMethod extends PropagationMethod {

        void prop(Individual currInd, String link, KSQ bfq,
                TreeMap newRow, Individual target, TreeMap<String, String> priorities)
                throws KSDateParseException {

            if (currInd.birthFamily == null) {
                return;
            }
            Family bFam = (Family) currInd.birthFamily;
            Individual nextInd;
            for (Object o : bFam.children) {
                if (o != currInd) {
                    nextInd = (Individual) o;
                    if ((link.equals("Bro") && nextInd.gender.equals("M"))
                            || (link.equals("Sis") && nextInd.gender.equals("F"))
                            || (link.equals("Sib") && nextInd.gender.equals("?"))) {
                        propagate(currInd, nextInd, link, bfq, newRow, target, priorities);
                    }
                }
            }
        } // end of prop method
    } // end of inner class SiblingMethod

    static class HalfSiblingMethod extends PropagationMethod {

        void prop(Individual currInd, String link, KSQ bfq,
                TreeMap newRow, Individual target, TreeMap<String, String> priorities)
                throws KSDateParseException {

            if (currInd.birthFamily == null) {
                return;
            }
            Family bFam = (Family) currInd.birthFamily;
            Individual nextInd;
            ArrayList<Individual> parents = new ArrayList<Individual>();
            if (bFam.husband != null) {
                parents.add(bFam.husband);
            }
            if (bFam.wife != null) {
                parents.add(bFam.wife);
            }
            for (Individual naturalParent : parents) {
                for (Object o : naturalParent.marriages) {
                    Family mar = (Family) o;
                    if (mar != bFam) {
                        for (Object ch : mar.children) {
                            nextInd = (Individual) ch;
                            if ((nextInd.gender.equals("M") && link.equals("Hbro"))
                                    || (nextInd.gender.equals("F") && link.equals("Hsis"))) {
                                propagate(currInd, nextInd, link, bfq, newRow, target, priorities);
                            }
                        }
                    }
                }
            }  //  end of loop thru natural parents & their other marriages
        } // end of prop method
    } // end of inner class HalfSiblingMethod

    static class StepParentMethod extends PropagationMethod {

        void prop(Individual currInd, String link, KSQ bfq,
                TreeMap newRow, Individual target, TreeMap<String, String> priorities)
                throws KSDateParseException {

            if (currInd.birthFamily == null) {
                return;
            }
            Family bFam = (Family) currInd.birthFamily;
            Individual nextInd;
            ArrayList<Individual> parents = new ArrayList<Individual>();
            if (bFam.husband != null) {
                parents.add(bFam.husband);
            }
            if (bFam.wife != null) {
                parents.add(bFam.wife);
            }
            for (Individual naturalParent : parents) {
                for (Object o : naturalParent.marriages) {
                    Family mar = (Family) o;
                    if (mar != bFam) {
                        Individual stepParent = (naturalParent == mar.wife ? mar.husband : mar.wife);
                        if (stepParent != null) {
                            if ((stepParent.gender.equals("M") && link.equals("Stfa"))
                                    || (stepParent.gender.equals("F") && link.equals("Stmo"))) {
                                propagate(currInd, stepParent, link, bfq, newRow, target, priorities);
                            }
                        }
                    }
                }
            }  //  end of loop thru natural parents & their other marriages
        } // end of prop method
    } // end of inner class StepParentMethod

    static class StepSiblingMethod extends PropagationMethod {

        void prop(Individual currInd, String link, KSQ bfq,
                TreeMap newRow, Individual target, TreeMap<String, String> priorities)
                throws KSDateParseException {

            if (currInd.birthFamily == null) {
                return;
            }
            Family bFam = (Family) currInd.birthFamily;
            Individual nextInd;
            ArrayList<Individual> parents = new ArrayList<Individual>();
            if (bFam.husband != null) {
                parents.add(bFam.husband);
            }
            if (bFam.wife != null) {
                parents.add(bFam.wife);
            }
            for (Individual naturalParent : parents) {
                for (Object o : naturalParent.marriages) {
                    Family mar = (Family) o;
                    if (mar != bFam) {
                        Individual stepParent = (naturalParent == mar.wife ? mar.husband : mar.wife);
                        if (stepParent != null) {
                            for (Object m : stepParent.marriages) {
                                Family stepFam = (Family) m;
                                if (stepFam != mar && stepFam != bFam) {
                                    for (Object k : stepFam.children) {
                                        nextInd = (Individual) k;
                                        if ((nextInd.gender.equals("M") && link.equals("Stbro"))
                                                || (nextInd.gender.equals("F") && link.equals("Stsis"))) {
                                            propagate(currInd, nextInd, link, bfq, newRow, target, priorities);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }  //  end of loop thru natural parents & their other marriages          
        } // end of prop method
    } // end of inner class StepSiblingMethod

    static class StepChildMethod extends PropagationMethod {

        void prop(Individual currInd, String link, KSQ bfq,
                TreeMap newRow, Individual target, TreeMap<String, String> priorities)
                throws KSDateParseException {

            for (Object o : currInd.marriages) {
                Family fam = (Family) o;
                Individual currIndSpouse = (currInd == fam.husband ? fam.wife : fam.husband);
                if (currIndSpouse != null) {
                    for (Object f : currIndSpouse.marriages) {
                        Family spouseFam = (Family) f;
                        if (spouseFam != fam) {
                            for (Object kid : spouseFam.children) {
                                Individual nextInd = (Individual) kid;
                                if ((nextInd.gender.equals("M") && link.equals("Stso"))
                                        || (nextInd.gender.equals("F") && link.equals("Stda"))) {
                                    propagate(currInd, nextInd, link, bfq, newRow, target, priorities);
                                }
                            }
                        }
                    }
                }
            }
        } // end of prop method
    } // end of inner class StepChildMethod
    // Variables declaration
    public JMenuItem actOnSuggsItem;
    private JMenuItem adminSILKinItem;
    public ChartPanel chart;
    private JPanel chartHolderPanel;
    private JPanel chartHolderHorizontal;
    private JComboBox chartComboBox;
    private DefaultComboBoxModel chartComboModel;
    private JLabel chartLabel;
    private JScrollPane chartScrollPane;
    private JMenu contextMenu;
    private JMenuItem copyItem;
    private JMenuItem cutItem;
    private JMenuItem deleteAllItem;
    private JMenuItem deleteCurrentChartItem;
    private JCheckBoxMenuItem distinctAdrItem;
    private JCheckBoxMenuItem editableItem;
    private JMenuItem editContextItem;
    private JMenu editMenu;
    private JMenuItem editChartDescriptionItem;
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
    private JPopupMenu.Separator jSeparator5;
    private ButtonGroup kinTermButtonGroup;
    JRadioButtonMenuItem kinTmAdrBtn;
    private JRadioButtonMenuItem kinTmRefBtn;
    private JMenu labelMenu;
    JRadioButtonMenuItem ltrAdrBtn;
    private JRadioButtonMenuItem ltrRefBtn;
    private JRadioButtonMenuItem lastNameBtn;
    private JMenuItem loadItem;
    private ButtonGroup nameButtonGroup;
    private JMenuItem newContextItem;
    private JMenuItem newLiBrowserItem;
    private JRadioButtonMenuItem noKinTermBtn;
    private JRadioButtonMenuItem noNameBtn;
    private JMenuItem pageSetupItem;
    private JMenuItem pasteItem;
    private PersonPanel personPanel1;
    private JMenu printMenu;
    private JMenuItem printVisible;
    private JMenuItem printCurrentChart;
    private JMenuItem printAllCharts;
    private JMenuItem quitItem;
    public JMenuItem returnToSuggsItem;
    private JMenuItem saveAsItem;
    private JMenuItem saveItem;
    private JCheckBoxMenuItem snapToGrid;
    private JRadioButtonMenuItem wholeNameBtn;
    // End of variables declaration
}
