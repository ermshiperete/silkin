
/**This class defines the window in which the User makes decisions about
 * Suggestions. It always displays a drop-down menu of suggestions, a
 * Details box, and an Action Box.
 *
 * When the User selects a suggestion in the menu, an Action Boxes is displayed
 * tailored to that type of suggestion. Each Action Box contains the code to
 * implement any actions taken. This DecisionFrame is just a container.
 *
 * @author  Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
 *
 * Created on Feb 24, 2011
 */

import javax.swing.*;
import javax.swing.event .*;
import java.util.*;
import java.awt.*;
import java.io.*;
import java.awt.event.*;
import java.net.*;
public class DecisionFrame extends JFrame  implements HyperlinkListener {

    // Logical variable declarations. GUI declarations at end of file.
    public static ArrayList<Integer> processed = new ArrayList<Integer>();
    public TreeMap<String, ArrayList<Issue>> issues;
    public ArrayList<Issue> suggestions = new ArrayList<Issue>();
    private ArrayList<JPanel> actionBoxes = new ArrayList<JPanel>();
    int suggsInFocus = 0;
    String filePath = "No HTML file was specified.";
    static final int REF = 0, ADR = 1;
    DomainTheory dt;
    File htmlFile = null;
    boolean updating = false;

    public DecisionFrame() {
        initComponents();
    }

    public DecisionFrame(TreeMap<String, ArrayList<Issue>> suggs,
            int focus, File f) {
        issues = suggs;
        suggsInFocus = focus;
        htmlFile = f;
        initComponents();
        setDefaultCloseOperation(DISPOSE_ON_CLOSE);
        addWindowListener(new CloseListener());
        try {
            if (suggsInFocus == REF) {
                dt = Context.current.domTheoryRef();
            } else {
                dt = Context.current.domTheoryAdr();
            }
        } catch (Exception ex) {
            String msg = "Error while accessing current Context.\nREPORT A BUG.";
            MainPane.displayError(msg, "Internal Problem", JOptionPane.ERROR_MESSAGE);
        }
        actionPropDef.dt = dt;
        actionSynonym.dt = dt;
        actionUmbrella.dt = dt;
        actionOverlap.dt = dt;
        actionAnomaly.dt = dt;
        doneOrUNDO.dt = dt;
        DomainTheory.current = dt;
    }

    /** This method is called from within the constructor to
     * initialize the frame.
     */
    @SuppressWarnings("unchecked")
    private void initComponents() {
        setTitle("Decisions on Suggestions");
        setLayout(new BoxLayout(getContentPane(), BoxLayout.LINE_AXIS));

        //  Make right-hand display area
        jLabel1 = new JLabel();
        detailsScrollPane = new JScrollPane();
        jLabel1.setText("Details");
        jLabel1.setAlignmentX(0.5f);
        //  New Code
        detailsPane = new JEditorPane();
        detailsPane.setEditable(false);
        detailsPane.addHyperlinkListener(this);
        URL detailsURL = null;
        try {
            if (htmlFile != null) {
                filePath = htmlFile.getAbsolutePath();
                detailsURL = new URL("file", "", -1, filePath);
                detailsPane.setPage(detailsURL);
            } else {
                String msg = "Couldn't find file: " + filePath;
                MainPane.displayError(msg, "Cannot Find Suggestions", JOptionPane.ERROR_MESSAGE);
                return;
            }
        } catch (Exception e) {
            String msg = "Failed to read URL: " + filePath + ".\n" + e;
            MainPane.displayError(msg, "Cannot Find Suggestions", JOptionPane.PLAIN_MESSAGE);
            return;
        }
        detailsScrollPane.setViewportView(detailsPane);
        detailsScrollPane.setPreferredSize(new Dimension(470, 145));
        detailsScrollPane.setMinimumSize(new Dimension(300, 100));

        rightPanel = new JPanel();
        rightPanel.setLayout(new BoxLayout(rightPanel, BoxLayout.PAGE_AXIS));
        rightPanel.add(Box.createRigidArea(new Dimension(0, 8)));
        rightPanel.add(jLabel1);
        rightPanel.add(Box.createRigidArea(new Dimension(0, 8)));
        rightPanel.add(detailsScrollPane);
        rightPanel.add(Box.createRigidArea(new Dimension(0, 8)));

        //  Make left-hand display area
        actionPropDef = new ActionPropDef(this);
        actionBoxes.add(actionPropDef);
        instructions = new ActionBoxInstructions();
        actionBoxes.add(instructions);
        anomalyOrDataReqDone = new AnomalyAlreadyProcessed();
        actionBoxes.add(anomalyOrDataReqDone);
        doneOrUNDO = new ActionDONEorUnDo(this);
        actionBoxes.add(doneOrUNDO);
        actionSynonym = new ActionSynonym(this);
        actionBoxes.add(actionSynonym);
        actionUmbrella = new ActionUmbrella(this);
        actionUmbrella.setPreferredSize(new Dimension(500, 390));
        actionBoxes.add(actionUmbrella);
        actionDataRequest = new ActionDataRequest(this);
        actionBoxes.add(actionDataRequest);
        actionOverlap = new ActionOverlap(this);
        actionBoxes.add(actionOverlap);
        actionAnomaly = new ActionAnomaly(this);
        actionBoxes.add(actionAnomaly);

        suggestionComboBox = new JComboBox();
        makeComboModel();
        suggestionComboBox.setModel(suggComboModel);
        suggestionComboBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                suggestionBoxActionPerformed();
            }
        });

        leftPanel = new JPanel();
        leftPanel.setLayout(new BoxLayout(leftPanel, BoxLayout.PAGE_AXIS));
        leftPanel.add(Box.createRigidArea(new Dimension(0, 8)));
        leftPanel.add(suggestionComboBox);
        leftPanel.add(Box.createRigidArea(new Dimension(0, 8)));
        leftPanel.add(instructions);
        leftPanel.add(actionPropDef);
        leftPanel.add(anomalyOrDataReqDone);
        leftPanel.add(doneOrUNDO);
        leftPanel.add(actionSynonym);
        leftPanel.add(actionUmbrella);
        leftPanel.add(actionDataRequest);
        leftPanel.add(actionOverlap);
        leftPanel.add(actionAnomaly);
        leftPanel.add(Box.createRigidArea(new Dimension(0, 8)));

        getContentPane().add(Box.createRigidArea(new Dimension(10, 0)));
        getContentPane().add(leftPanel);
        getContentPane().add(Box.createRigidArea(new Dimension(10, 0)));
        getContentPane().add(rightPanel);
        getContentPane().add(Box.createRigidArea(new Dimension(10, 0)));

        displayActionBox(instructions);
        setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
        pack();
        setVisible(true);
    }

    void makeComboModel() {
        Object[] suggArray = {"ERROR -- There are no suggestions!" };
        if (issues != null) {
            int size = DT_Abstract1.countLeaves(issues), cntr = 1;
            if (size > 0) {
                suggArray = new Object[size +1];
                suggArray[0] = "Choose a Suggestion";
                Iterator suggIter = issues.entrySet().iterator();
                while (suggIter.hasNext()) {
                    Map.Entry entry = (Map.Entry)suggIter.next();
                    String kinTerm = (String)entry.getKey();
                    ArrayList<Issue> sugLst = (ArrayList<Issue>)entry.getValue();
                    for (Issue sug : sugLst) {
                        String dunMark = (sug.processed ? "DONE: " : "");
                        suggArray[cntr] = cntr++ + ".  " + dunMark + kinTerm + " - " + sug.typeString();
                        suggestions.add(sug);
                    }
                }
            }
            if (suggestions.size() != size) {
                if (MainPane.activity == null) {
                    MainPane.createActivityLog(MainPane.desktop, MainPane.menuView);
                }
                String msg = "Unbalanced sizes for suggestions and titles.\n";
                msg += "Leaf count = " + size + ", but suggestion count = " + suggestions.size();
                msg += ".\nREPORT A BUG.";
                MainPane.displayError(msg, "Internal Problem", JOptionPane.ERROR_MESSAGE);
            }
        }
        suggComboModel = new DefaultComboBoxModel(suggArray);
    }

    void displayActionBox(JPanel panel) {
        for (JPanel box : actionBoxes) {
            box.setVisible(box == panel);
        }
        pack();
    }
    
    public void markProcessed(int suggNmbr) {
        updating = true;
        DefaultComboBoxModel model = (DefaultComboBoxModel)suggestionComboBox.getModel();
        String listing = (String)model.getElementAt(suggNmbr +1);
        Issue sugg = suggestions.get(suggNmbr);
        sugg.processed = true;
        int dot = listing.indexOf(".") +1;
        String newListing = listing.substring(0,dot) + " DONE:" + listing.substring(dot);
        model.removeElementAt(suggNmbr +1);
        updating = false;
        model.insertElementAt(newListing, suggNmbr +1);
        SIL_Edit.editWindow.chart.dirty = true;
    }
    
    public void markUnProcessed(int suggNmbr) {
        updating = true;
        DefaultComboBoxModel model = (DefaultComboBoxModel)suggestionComboBox.getModel();
        String listing = (String)model.getElementAt(suggNmbr +1);
        Issue sugg = suggestions.get(suggNmbr);
        sugg.processed = false;
        String newListing = listing.replace(" DONE:", "");
        model.removeElementAt(suggNmbr +1);
        updating = false;
        model.insertElementAt(newListing, suggNmbr +1);
        SIL_Edit.editWindow.chart.dirty = true;
    }

    void reset() {
        suggestionComboBox.setSelectedIndex(0);
        displayActionBox(instructions);
    }

    void suggestionBoxActionPerformed() {
        // slot 0 in combo box is the "Pick a Suggestion" item
        if (updating) return;
        int index = suggestionComboBox.getSelectedIndex();
        Issue sugg = suggestions.get(0);
        URL newLoc;
        HyperlinkEvent event;
        try {
            if (index == 0) {
                displayActionBox(instructions);
                newLoc = new URL("file", "", -1, filePath);
                event = new HyperlinkEvent(sugg,
                        HyperlinkEvent.EventType.ACTIVATED, newLoc, "#0");
            } else {
                sugg = suggestions.get(index - 1);
                newLoc = new URL("file", "", -1, filePath + "#" + index);
                event = new HyperlinkEvent(sugg,
                        HyperlinkEvent.EventType.ACTIVATED, newLoc, "#" + index);
            }
            detailsPane.fireHyperlinkUpdate(event);
        } catch (Exception ex) {
            String msg = "Error encountered displaying " + filePath + "#" + index;
            msg += "\nReason: " + ex;
            MainPane.displayError(msg, "Malformed URL", JOptionPane.ERROR_MESSAGE);
        }
    }

    void setActionBox(int elementNmbr) {
        Issue sugg = suggestions.get(elementNmbr);
        // There is nothing to undo in a DataRequest or Anomaly
        if (sugg.processed) {
            if (sugg instanceof Anomaly) {
                anomalyOrDataReqDone.setDisplay("questionable dyads");
                anomalyOrDataReqDone.addToDisplay(((Anomaly)sugg).doneList());
                displayActionBox(anomalyOrDataReqDone);
            } else if (sugg instanceof DataRequest) {
                anomalyOrDataReqDone.setDisplay("requested dyads");
                displayActionBox(anomalyOrDataReqDone);
            } else {
                doneOrUNDO.load(sugg, elementNmbr);
                displayActionBox(doneOrUNDO);
            }
        } else if (sugg instanceof ProposedDef) {
            actionPropDef.load((ProposedDef) sugg, elementNmbr);
            displayActionBox(actionPropDef);
        } else if (sugg instanceof SynonymCandidate) {
            actionSynonym.load((SynonymCandidate) sugg, elementNmbr);
            displayActionBox(actionSynonym);
        } else if (sugg instanceof UmbrellaCandidate) {
            actionUmbrella.load((UmbrellaCandidate) sugg, elementNmbr);
            displayActionBox(actionUmbrella);
        } else if (sugg instanceof OverlapCandidate) {
            actionOverlap.load((OverlapCandidate) sugg, elementNmbr);
            displayActionBox(actionOverlap);
        } else if (sugg instanceof DataRequest) {
            actionDataRequest.load((DataRequest) sugg, elementNmbr);
            displayActionBox(actionDataRequest);
        } else if (sugg instanceof Anomaly) {
            actionAnomaly.load((Anomaly) sugg, elementNmbr);
            displayActionBox(actionAnomaly);
        }
    }

    //  Method implementing HyperLinkListener. Runs when hyperlink clicked.
    public void hyperlinkUpdate(HyperlinkEvent event) {
        if (event.getEventType() == HyperlinkEvent.EventType.ACTIVATED) {
            try {
                detailsPane.setPage(event.getURL());
                String location = event.getDescription();
                // only issues have names beginning with numbers
                if (Character.isDigit(location.charAt(1))) {
                    int index = Integer.parseInt(location.substring(1));
                    suggestionComboBox.setSelectedIndex(index);
                    if (index > 0) {
                        setActionBox(index - 1);
                    }
                }
            } catch (IOException ex) {
                String msg = "Error encountered displaying "
                        + (event.getURL().toExternalForm());
                MainPane.displayError(msg, "Internal Problem", JOptionPane.ERROR_MESSAGE);
            }
        }
    }

    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {

            public void run() {
                new DecisionFrame().setVisible(true);
            }
        });
    }

    // GUI Variable declarations
    private ActionAnomaly actionAnomaly;
    private ActionDataRequest actionDataRequest;
    private ActionOverlap actionOverlap;
    private ActionPropDef actionPropDef;
    private ActionSynonym actionSynonym;
    private ActionUmbrella actionUmbrella;
    private AnomalyAlreadyProcessed anomalyOrDataReqDone;
    private ActionDONEorUnDo doneOrUNDO;
    private ActionBoxInstructions instructions;
    private JLabel jLabel1;
    private JScrollPane detailsScrollPane;
    private JPanel leftPanel;
    private JPanel mainPane;
    private JPanel rightPanel;
    private JComboBox suggestionComboBox;
    private DefaultComboBoxModel suggComboModel;
    private JEditorPane detailsPane;

    // This class resets SIL_Edit's Context menu before closing
    private class CloseListener extends WindowAdapter {

        public void windowClosing(WindowEvent we) {
            SIL_Edit.editWindow.resetSuggsMenu();
        }

    }

}
