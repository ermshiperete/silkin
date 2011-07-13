

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.util.*;
import java.text.* ;
import java.io.*;

/** 
The DisplayPickerPanel is a component of a {@link LibBrowser} that allows the User to choose the Context
(language), Domain Theory, KinTerm, & clause to be displayed in the LibBrowser.  
<p>
User's first choice is a Context (language).  The 'Choose A Language' menu lists all languages for which a
{@link DomainTheory} is registered in the Library.  If a language has both Terms-of-Reference and
Terms-of-Address, they are listed as separate choices in the menu.  Choosing a language triggers loading
the 'Choose a Kin Term' menu with all the kinship terms that are defined in taht language.
<p>
User's second choice is a Kin Term.  Via the RadioButtons for 'Primary' or 'Extended' the User may
restrict the displays to one type of clause or the other.  Choices cause the 'Choose a Clause' menu to be loaded with
the clause-numbers of all Horn Clauses of the right type in the definition of this Kin Term.  The default choice of 'All'
is pre-selected.  This causes all clauses of this Kin Term/type to be displayed in the text pane
called 'Original Clause.'
<p> 
User may then (optionally) choose a particular clause in the 'Choose a Clause' menu.  Choosing a particular
clause causes only that clause to be displayed in the text pane 'Original Clause.'  It also restricts the
items in the 'Choose an Expansion' menu to those clauses that are an expansion of the selected original clause. 
<p>
User may (optionally) choose a particular expanded clause from the 'Choose an Expansion' menu.
<p>


@author		Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
*/
public class DisplayPickerPanel extends JPanel  {
    //  Instance variables that capture selections in this picker window.
    Context currentContext;
    DomainTheory currentDomTh;
    KinTermDef currentKTD;
    ClauseBody currentOriginalHC, currentExpandedHC;
    LibBrowser browser;
    String langName = "None", termName = "All", priorLangPick;
    boolean inclPrim = true, inclExt = true;
    //  For Testing Only
    Individual currEgo;
    
    //  Radio Buttons are permanent.
    JRadioButton[] rbPrimExt = new JRadioButton[3];
    final ButtonGroup grpPrimExt = new ButtonGroup();
    
    //  Four Combo Boxes.  Their menus are dynamic, & must be built at run time.
    JComboBox langPick = null, termPick = null, clausePick = null, expanPick = null;
    String[] langs;
    //  Flags to make menu loading more efficient
    boolean langLoad = false, termLoad = false, clauseLoad = false, expLoad = false;
    
    //  Two text display areas and their Horn Clause ScrollPanes
    JTextArea originalText, expandedText;
    JScrollPane originalSP, expandedSP;
   
    //  A diagram area for family tree charts.
    JComponent diagramArea;
    
    public DisplayPickerPanel(LibBrowser browser)  {
        
        DomThListener dtListener = new DomThListener();
        KinTermListener ktListener = new KinTermListener();
        ClauseListener cbListener = new ClauseListener();
        ExpListener xpListener = new ExpListener();
        PrimExtListener peListener = new PrimExtListener();
        DiagramButtonListener diaListener = new DiagramButtonListener();
        
        this.browser = browser;
        originalText = browser.originalText;
        expandedText = browser.expandedText;
        originalSP = browser.original;
        expandedSP = browser.expanded;
        
        rbPrimExt[0] = new JRadioButton("Primary");
        rbPrimExt[0].setActionCommand("Primary");
        rbPrimExt[0].addActionListener(peListener);
        rbPrimExt[1] = new JRadioButton("Extended");
        rbPrimExt[1].setActionCommand("Extended");
        rbPrimExt[1].addActionListener(peListener);
        rbPrimExt[2] = new JRadioButton("Both");
        rbPrimExt[2].setActionCommand("Both");
        rbPrimExt[2].setSelected(true);
        rbPrimExt[2].addActionListener(peListener);
        
        JPanel boxPrimExt = new JPanel();
        for (int i = 0; i < 3; i++) {
            grpPrimExt.add(rbPrimExt[i]);
            boxPrimExt.add(rbPrimExt[i]);
        }
        JButton genExamples = new JButton("Generate Examples");
        genExamples.setVerticalTextPosition(AbstractButton.CENTER);
        genExamples.setHorizontalTextPosition(AbstractButton.CENTER);
        genExamples.addActionListener(diaListener);
        genExamples.setActionCommand("gen examples");
        boxPrimExt.add(genExamples);
         
        JButton diagramIt = new JButton("Diagram Examples");
        diagramIt.setVerticalTextPosition(AbstractButton.CENTER);
        diagramIt.setHorizontalTextPosition(AbstractButton.CENTER);
        diagramIt.addActionListener(diaListener);
        diagramIt.setActionCommand("diagram examples");
        boxPrimExt.add(diagramIt);
         
        boxPrimExt.setMinimumSize(new Dimension(150, 120));
        boxPrimExt.setMaximumSize(new Dimension(150, 140));
        
        //  Generate contents of the Choose-Language Combo Box
        Dimension sizer = new Dimension(150, 50);
        langs = Library.genLangMenu();
        langPick = new JComboBox(langs);
        langPick.addActionListener(dtListener); 
        langPick.setMinimumSize(sizer);
        langPick.setMaximumSize(sizer);
        langPick.setBorder(BorderFactory.createTitledBorder(
                              BorderFactory.createLineBorder(Color.black), 
                              "Choose a Language"));
        //  Set up other Combo Boxes for dynamic creation
        
        //  Menu for "Choose a Kinship Term"
        termPick = new JComboBox(new DefaultComboBoxModel());
        termPick.addActionListener(ktListener);  
        termPick.setMinimumSize(sizer);
        termPick.setMaximumSize(sizer);
        termPick.setBorder(BorderFactory.createTitledBorder(
                                BorderFactory.createLineBorder(Color.black), 
                                "Choose a Kin Term"));
        
        //  Menu for "Choose a Clause Number"
        clausePick = new JComboBox(new DefaultComboBoxModel());
        clausePick.addActionListener(cbListener);  
        clausePick.setMinimumSize(sizer);
        clausePick.setMaximumSize(sizer);
        clausePick.setBorder(BorderFactory.createTitledBorder(
                                BorderFactory.createLineBorder(Color.black), 
                                "Choose a Clause"));
        
        //  Menu for "Choose an Expansion Number"
        expanPick = new JComboBox(new DefaultComboBoxModel());
        expanPick.addActionListener(xpListener);   
        expanPick.setMinimumSize(sizer);
        expanPick.setMaximumSize(sizer);
        expanPick.setBorder(BorderFactory.createTitledBorder(
                                BorderFactory.createLineBorder(Color.black), 
                                "Choose an Expansion"));
        
        //  Setting the language will trigger a cascade of selections: kinterm, clause#, expansion#
        //  because langLoad == false.
		langPick.setSelectedItem(Library.currentLanguage);
        
        //  Now put all the components into this Picker panel.
        setLayout(new BoxLayout(this, BoxLayout.PAGE_AXIS));
        add(langPick);
        add(Box.createRigidArea(new Dimension(0,3)));
        add(termPick);
        add(boxPrimExt);
        add(Box.createRigidArea(new Dimension(0,3)));
        add(clausePick);
        add(Box.createRigidArea(new Dimension(0,3)));
        add(expanPick);
        setMinimumSize(new Dimension(150, 310));
        setMaximumSize(new Dimension(150, 310));
        
    }  //  end of constructor

    
        
    // This method inserts line breaks into Java-generated error messages.
    public String prettify(String ugly) {
        int start = 0, stop = 100, length = ugly.length(), 
                    period, comma, leftSquare, rightSquare, rightSquareComma, max;
        String lessUgly = null;
        while (stop < length)  {
            period = ugly.substring(start, stop - 10).lastIndexOf(".") + 1 + start;
            comma = ugly.substring(start, stop - 10).lastIndexOf(",") + 1 + start;
            rightSquare = ugly.substring(start, stop).lastIndexOf("]") + 1 + start;
            rightSquareComma = ugly.substring(start, stop).lastIndexOf("],") + 2 + start;
            leftSquare = ugly.substring(start, stop).lastIndexOf("[") + start;
            max = Math.max(comma, period);
            max = Math.max(max, leftSquare);
            max = Math.max(max, rightSquare);
            max = Math.max(max, rightSquareComma);
            if (max > (start + 60)) stop = max;
            lessUgly += ugly.substring(start, stop) + "\n";
            start = stop;
            stop += 100;
        }  //  end of while stop<length
        lessUgly += ugly.substring(start);
        return lessUgly;
    }  //  end of method prettify
    
    
    public void refreshLangMenu()  {
        String[] langs = Library.genLangMenu();
        langLoad = true;
        Library.currentLanguage = (String)langPick.getSelectedItem();
        langPick.removeAllItems();
        for (int i=0; i < langs.length; i++) langPick.addItem(langs[i]);
        langPick.setSelectedItem(Library.currentLanguage);
        langLoad = false;
    }
    
    /**
     <p>The DomThListener class creates an ActionListener that listens for actions in the
     'Choose a Language' combo box.  When an action fires, read the selection and interpret it as 
     a specific domain theory.</p>
     <p>
     For example: For the language 'English' the convention is that "English" means terms of reference, 
     and "English(Adr)" means terms of address.  The context is loaded from its .ctxt file, 
     and the kinTerms of the chosen type (Ref or Adr) are loaded into the 'Choose a Kinship Term' combo box menu.</p>
     */
    public class DomThListener implements ActionListener  {
        
        public void actionPerformed(ActionEvent event) {
            if (langLoad) return;
            String language = (String)langPick.getSelectedItem(); 
            String fileName = Library.libraryCtxtDirectory;
            boolean errors = false;
            Context priorContext = currentContext;  //  So we can revert to priors if 
            DomainTheory priorDT = currentDomTh;   //  the new one hits errors.
            //  If the selected item is "<langName>(Adr)" then we want terms of address
            int adrFlag = language.indexOf("(Adr)");
            if (adrFlag == -1) adrFlag = language.length();
            fileName += language.substring(0, adrFlag) + ".ctxt";
			langName = language; 
            Context actxt = (Context)Library.activeContexts.get(language.substring(0, adrFlag));
            try {
                if (actxt != null) {  //  this-language-is-an-active-context
                    currentContext = actxt;
                    Context.current = currentContext;
                }else {
                    currentContext = Library.readContextFromDisk(fileName);  //  load it from disk
                    Context.current = currentContext;
                }
                if (adrFlag == language.length())   //  Reference terms are selected
                     currentDomTh = currentContext.domTheoryRef();
                else currentDomTh = currentContext.domTheoryAdr(); 
                DomainTheory.current = currentDomTh;
                if (currentContext.individualCensus.size() > 0) 
                        currEgo = (Individual)currentContext.individualCensus.get(0);
            }catch(IOException jse)  {
                JOptionPane.showMessageDialog(browser.desktop, 
                                              "PROBLEM: Error loading " + fileName + ".\n" + prettify(jse.toString()) +
                                              "\nRECOMMENDATION: Check for disk, directory, or permissions problems.",
                                              "File System Error",
                                              JOptionPane.ERROR_MESSAGE);
                errors = true;
            }catch(ClassNotFoundException jse)  {
                JOptionPane.showMessageDialog(browser.desktop, 
                                              "PROBLEM: Internal Error: " + prettify(jse.toString()) +
                                              "\nRECOMMENDATION: Submit Bug Report.",
                                              "Kinship System Error",
                                              JOptionPane.ERROR_MESSAGE);
                errors = true;
            }catch(Exception e)  {
                JOptionPane.showMessageDialog(browser.desktop, 
                                              "PROBLEM: Internal Error: " + prettify(e.toString()) +
                                              "\nRECOMMENDATION: Submit Bug Report.",
                                              "Kinship System Error",
                                              JOptionPane.ERROR_MESSAGE);
                errors = true;
            }
            if (errors) { 
                langLoad = true;
                langPick.setSelectedItem(priorLangPick);
                langLoad = false;
                if (priorContext != null)  {
                    currentContext = priorContext;  //  Revert to priors.
                    Context.current = priorContext;
                    System.out.println("3  Current context reset to " + Context.current.languageName);
                    currentDomTh = priorDT;
                    DomainTheory.current = priorDT; 
                }
                return;
            }
            //  If we got this far, theory has been loaded or made current without any problems.
            browser.setTitle(browser.windowNum + "    " + langName + ": " + termName);
            Library.currentLanguage = (String)langPick.getSelectedItem();
            priorLangPick = (String)langPick.getSelectedItem();
            //  At this point, we Load the Term menu
            termLoad = true;
            termPick.removeAllItems();  //  clear any items from Term menu
            int ctr = 0;
            Iterator termIter = currentDomTh.theory.keySet().iterator();
            while (termIter.hasNext())  { //  re-build term menu
                termPick.addItem(termIter.next());
                ctr++;
            }
            termLoad = false;
            if (ctr > 0) {
                termPick.setSelectedIndex(0);  //  make alphabetically-first term the selection
            }
        }  //  end of method actionPerformed        
    }  //  end of inner class DomThListener

    
    /**
     The KinTermListener class creates an ActionListener that listens for actions in the
     'Choose a Kin Term' combo box.  When an action fires, read the selection and interpret it as 
     a specific term.  Find the KinTermDef for that term and find out how many original and expanded
     clauses it contains.  Then create the items for the Clause and Expansion menus.
     */
    public class KinTermListener implements ActionListener  {
        
        public void actionPerformed(ActionEvent event) {
            if (termLoad) return;
            String term = (String)termPick.getSelectedItem(); 
            termName = term;
            browser.setTitle(browser.windowNum + "    " + langName + ": " + termName);
            currentKTD = (KinTermDef)currentDomTh.theory.get(term);
			//  Create the 'Choose a Clause' menu items
            int nmbrCBs = currentKTD.definitions.size();
            ClauseBody cb;
            clauseLoad = true;
            clausePick.removeAllItems();  //  clear any items from Clause menu
            clausePick.addItem("All");
            for (int i=0; i < nmbrCBs; i++) {
                cb = (ClauseBody)currentKTD.definitions.get(i);
                if (((cb.flags.contains("ext")) && (inclExt)) 
                    || ((! cb.flags.contains("ext")) && (inclPrim)))
                    clausePick.addItem(String.valueOf(i));
            }
            clauseLoad = false;
            currentOriginalHC = null;
            //  Create the 'Choose an Expansion' menu items
            nmbrCBs = currentKTD.expandedDefs.size();
            expLoad = true;
            expanPick.removeAllItems();  //  clear any items from Expansion menu
            expanPick.addItem("All");  
            for (int i=0; i < nmbrCBs; i++) {
                cb = (ClauseBody)currentKTD.expandedDefs.get(i);
                if (((cb.flags.contains("ext")) && (inclExt)) 
                    || ((! cb.flags.contains("ext")) && (inclPrim)))
                    expanPick.addItem(String.valueOf(i));
            }
            expLoad = false;
            currentExpandedHC = null;
            //  Make "All" the default selections for Clause & Expansion
            clausePick.setSelectedIndex(0); 
            expanPick.setSelectedIndex(0); 
        }  //  end of method actionPerformed        
        
    }  //  end of inner class KinTermListener
    
    
    /**
     The ClauseListener class creates an ActionListener that listens for actions in the
     'Choose a Clause' combo box.  When an action fires, read the selection and interpret it as 
     a specific clause.
     */
    public class ClauseListener implements ActionListener  {
        
        public void actionPerformed(ActionEvent event) {
            if (clauseLoad) return;
            String clauseNumString = (String)clausePick.getSelectedItem(); 
            if (clauseNumString.equals("All"))  {
                originalText.setText(currentKTD.toString("original", inclPrim, inclExt));
                originalText.setCaretPosition(0);
                currentOriginalHC = null;
            }else {  //  a-specific-clause-was-selected
                //  Display the selected Original clause in the OriginalText display
                int clauseNmbr = Integer.parseInt(clauseNumString);
                currentOriginalHC = (ClauseBody)currentKTD.definitions.get(clauseNmbr);
                originalText.setText(currentKTD.clauseHead.toString() + " :- ");
                originalText.append(currentOriginalHC.toString());
                originalText.setCaretPosition(0);
            }  //  end of a-specific-clause-was-selected
               //  Re-build the 'Choose an Expansion' menu to show only expansions of 
                //  the selected original clause.  
                expLoad = true;
                String oldChoice = (String)expanPick.getSelectedItem(); 
                expanPick.removeAllItems();  //  clear any items from Expansion menu
                expanPick.addItem("All");  
                int nmbrCBs = currentKTD.expandedDefs.size();
                ClauseBody cb;
                for (int i=0; i < nmbrCBs; i++) {
                    cb = (ClauseBody)currentKTD.expandedDefs.get(i);
                    if ((((cb.flags.contains("ext")) && (inclExt)) 
                           || ((! cb.flags.contains("ext")) && (inclPrim)))
                        && (cb.isExpansionOf(currentOriginalHC)))
                        expanPick.addItem(String.valueOf(i));
                }  //  end of loop thru all expandedDefs
                //  If the current choice for an expansion is an expansion of the selected original clause, 
                //  then keep it.  Otherwise, change the choice to 'All' (which means "all expansions of the
                //  selected original clause").
                if ((currentExpandedHC == null) || (! currentExpandedHC.isExpansionOf(currentOriginalHC)))  {
                    //  Current choice is "All" or not an expansion of the selected original clause
                    //  Ergo, must change choice to 'All'
                    expLoad = false;
                    currentExpandedHC = null;
                    expanPick.setSelectedIndex(0);
                }else  {  //  Current choice is an expansion of the selected original clause.  Keep it.
                    expanPick.setSelectedItem(oldChoice);
                    expLoad = false;
                }  //  end of 'Keep it'
            // originalSP.getVerticalScrollBar().setValue(0);
            originalText.setCaretPosition(0);
             //  Either way, re-set scroll bar to top
           
        }  //  end of method actionPerformed        
        
    }  //  end of inner class ClauseListener
    
    /**
        The ExpListener class creates an ActionListener that listens for actions in the
     'Choose an Expansion' combo box.  When an action fires, read the selection and interpret it as 
     a specific expansion clause.
     */
    public class ExpListener implements ActionListener  {
        
        public void actionPerformed(ActionEvent event) {
            if (expLoad) return;
            String expanseNumString = (String)expanPick.getSelectedItem(); 
            String clauseNumString = (String)clausePick.getSelectedItem(), nxt; 
            if ((expanseNumString.equals("All")) //  'All' in both -- print everything
                && (clauseNumString.equals("All")))  {
                expandedText.setText(currentKTD.toString("expanded", inclPrim, inclExt));
                expandedText.setCaretPosition(0);
            }else if (expanseNumString.equals("All"))  {  // specific original; 'All' expansions of it
                int nmbrCBs = currentKTD.expandedDefs.size();
                ClauseBody cb;
                expandedText.setText("");
                for (int i = 0; i < nmbrCBs; i++)  {
                    cb = (ClauseBody)currentKTD.expandedDefs.get(i);
                    if ((((cb.flags.contains("ext")) && (inclExt)) 
                        || ((! cb.flags.contains("ext")) && (inclPrim)))
                        && (cb.isExpansionOf(currentOriginalHC)))  {
                        if (i < 9) expandedText.append(String.valueOf(i) + "   ");
                        else expandedText.append(String.valueOf(i) + "  ");
                        expandedText.append(cb.toString() + "\n");  
                   }  //  end of if-it's-the-right-flavor
                }  // end of for-all-expanded-definitions
                expandedText.setCaretPosition(0);
            }else {  //  specific-expanded-clause-is-selected
                int clauseNmbr = Integer.parseInt(expanseNumString);
                currentExpandedHC = (ClauseBody)currentKTD.expandedDefs.get(clauseNmbr);
                expandedText.setText(currentKTD.clauseHead.toString() + " :- ");
                expandedText.append(currentExpandedHC.toString());
                expandedSP.getVerticalScrollBar().setValue(0);
            }  //  end of specific-clause-is-selected
        }  //  end of method actionPerformed        
        
    }  //  end of inner class ExpListener

    
    /**
     The PrimExtListener class creates an ActionListener that listens for actions in the
     'Primary/Extended/Both' radio buttons.  When an action fires, update the booleans on the
     picker that record which types of clauses should be displayed.  Then trigger updates of the
     menus 'Choose a Clause' and 'Choose an Expansion.'
     */
    public class PrimExtListener implements ActionListener  {
        
        public void actionPerformed(ActionEvent event) {
            String choice = (String)event.getActionCommand(); 
            // set the boolean flags based on which button is selected
            if ((choice.equals("Both")) || (choice.equals("Primary")))
                inclPrim = true;
            else inclPrim = false;
            if ((choice.equals("Both")) || (choice.equals("Extended")))
                inclExt = true;
            else inclExt = false;
            //  Now trigger re-building of the clause menus by setting a value
            int ndx = termPick.getSelectedIndex(); 
            termPick.setSelectedIndex(ndx);
        }  //  end of method actionPerformed        
        
    }  //  end of inner class PrimExtListener
    
    /**
     The DiagramButtonListener class creates an ActionListener that listens for clicks on the
     'Diagram Kin Term' button.  When an action fires, collect the choices
     that record which clauses should be diagramed.  Then call code to create a
     hypothetical population which illustrates the chosen term/clause -- and diagram it.
     */
    public class DiagramButtonListener implements ActionListener  {
        
        public void actionPerformed(ActionEvent event) {
            //  If currentContext already has a population (& Ego) , find out if User wants to keep them or not.
            
			if (event.getActionCommand().equals("gen examples"))  {
				
				//	NOTE:  When inspecting/debugging this activity, don't overlook the 'GenerateAll()'
				//	method which is called from here.  It parallels much of this logic.
				
				Context.current = currentContext;  //  so that the diagram methods can access context
				DomainTheory.current = currentDomTh;  //  and domTh fields.
				int nmbrInd = currentContext.individualCensus.size(), choice1 = 2, choice2;
				int resetInd = currentContext.indSerNumGen,  resetFam = currentContext.famSerNumGen;
				Individual ego = null;
				String sex = "M";
				Object[] options9 = {"ALL", "Single Term"};
				int choice3 = JOptionPane.showOptionDialog(browser.desktop,
													   "Do you want examples of ALL the terms in this langauge?",
													   "Option for ALL KinTerms",
													   JOptionPane.YES_NO_OPTION,
													   JOptionPane.QUESTION_MESSAGE,
													   null,     //don't use a custom Icon
													   options9,  //the titles of buttons
													   options9[1]); //default is Single Term
				if (choice3 == JOptionPane.YES_OPTION) {
					generateAll();
					return;
					}  //  end of Diagram-ALL-option
				if (nmbrInd > 0) {  //  Existing objects should include an Ego + at least 1 other person: erase or keep?
					Object[] options1 = {"Fresh Start", "Add On", "Explain Please"};
					Object[] options2 = {"Now I Understand", "Cancel"};
					while (choice1 == 2)  {
						choice1 = JOptionPane.showOptionDialog(browser.desktop,
								 String.valueOf(nmbrInd) + " 'hypothetical people' were previously" + 
								 " created to illustrate a Kin Term.  \nDo you want to erase them and start a fresh example?" +
								 "\nOr add this Kin Term diagram to the previous one?" + 
								  "\n\n        [To cancel, just close this window.]",
								 "Erase Existing Hypothetical Population?",
								 JOptionPane.YES_NO_CANCEL_OPTION,
								 JOptionPane.QUESTION_MESSAGE,
								 null,     //don't use a custom Icon
								 options1,  //the titles of buttons
								 options1[2]); //default button title
						if (choice1 == 2)  {
							choice2 = JOptionPane.showOptionDialog(browser.desktop,
								 "Examples are created by making up some 'hypothetical people' who illustrate each way" + 
								 "\nsomeone can meet a definition of the chosen Kin Term.\n\n" + 
								 "If you erase the previous folks, then the resulting example will show just the Kin Term\n" +
								 "(and clauses) currently selected.\n\n" + 
								 "If you don't, the previous example and the new one will be merged." ,
								 "What Is A Hypothetical Population?",
								 JOptionPane.OK_CANCEL_OPTION,
								 JOptionPane.INFORMATION_MESSAGE,
								 null,     //don't use a custom Icon
								 options2,  //the titles of buttons
								 options2[0]); //default button title
							if ((choice2 == 1) || (choice2 == -1)) 
								choice1 = JOptionPane.CLOSED_OPTION;  //  2 ways to say 'forget it!'
						}  //  end of choice1==2 (explain)
					}  //  end of while-loop
					if (choice1 == 0)  {  //  Fresh Start
						reset(0, 0);
						makeEgo();
					}
					if (choice1 == JOptionPane.CLOSED_OPTION) return;
				}  //  end of if-there-are-existing-individuals
				else makeEgo();
				
			//  Now, one way or another, we have a population with an Ego
				ArrayList<Object> egoBag = new ArrayList<Object>();	//  Make a bag = 1 ego, for use in cb.generateExamples
				egoBag.add(currentContext.individualCensus.get(0));
				String chosenXD = (String)expanPick.getSelectedItem(); // 'All' or a number
				ClauseBody cb = null;
				ArrayList<Object> pile = new ArrayList<Object>();
				if (chosenXD.equals("All"))  {  //  same logic we used to set expanPick menu.  Add to Pile
					for (int i=0; i < currentKTD.expandedDefs.size(); i++) {
						cb = (ClauseBody)currentKTD.expandedDefs.get(i);
						if ((((cb.flags.contains("ext")) && (inclExt)) 
							 || ((! cb.flags.contains("ext")) && (inclPrim)))
							&& (cb.isExpansionOf(currentOriginalHC)))
							pile.add(String.valueOf(i));
					}  //  end of loop thru all expandedDefs
				}else   pile.add(chosenXD);   //  parse the chosen exp_Def# & put in Pile.
				
			//  Now go thru the pile, unify variables & create examples
				int finishNow;
				try  {
				  ArrayList<Object> round2 = new ArrayList<Object>();
				  for (int j=0; j < pile.size(); j++)  {
					cb = (ClauseBody)currentKTD.expandedDefs.get(Integer.parseInt((String)pile.get(j)));
					cb.unifyVariables();
					if (cb.flags.contains("chooseLast")) round2.add(cb);
					else cb.generateExamples(currentContext, egoBag, null, null);
					}
					MainPane.fill_In_Flag = true;
					for (int j=0; j < round2.size(); j++)  {  //  in Round 2, process delayed-ID terms
						cb = (ClauseBody)round2.get(j);
						cb.generateExamples(currentContext, egoBag, null, null);
						}
					MainPane.fill_In_Flag = false;
				
				Object[] finishOptions = {"Done", "Add More Terms" };
				finishNow = JOptionPane.showOptionDialog(browser.desktop,
					 "When you are done adding terms to this example, we will\n" +
					 "tidy up the examples for display or export.",
					 "Done Adding Terms?",
					 JOptionPane.OK_CANCEL_OPTION,
					 JOptionPane.INFORMATION_MESSAGE,
					 null,     //don't use a custom Icon
					 finishOptions,  //the titles of buttons
					 finishOptions[1]); //default button title
				if (finishNow == 0) {	//  Tidy Up.  with each ego in egoBag		
					for (int i=0; i < egoBag.size(); i++)  {
						ego = (Individual)egoBag.get(i);
						currentDomTh.fillInNames(ego);  //  Tidy up the kinTerms of any extra folks in the diagram
						//  Following line guilty of clobbering Ego's kinTerms
						//  Node testNode = currentContext.buildTree(ego);
						}
					}
				}catch (KSBadHornClauseException bhc)  {
					String msg = "PROBLEM: This clause contains literals that are syntactically correct, but have logical flaws.\n"  + bhc +
								"\nRECOMMENDATION: Correct or replace this clause in the definition.";
					JOptionPane.showMessageDialog(browser.desktop, msg, "Bad Horn Clause",
							 JOptionPane.ERROR_MESSAGE);
					reset(resetInd, resetFam);
					if (MainPane.activity == null) MainPane.createActivityLog(browser.desktop, browser.menuView);
					MainPane.activity.log.append("For clause: " + cb + "\n" + msg + "\n\n");
					return;
				}catch  (KSConstraintInconsistency ci)  {
					String msg = "PROBLEM: The constraints specified or implied in this clause are contradictory.\n" + ci +
								"\nRECOMMENDATION: Correct or replace this clause in the definition.";
					JOptionPane.showMessageDialog(browser.desktop, msg, "Constraint Inconsistency",
							  JOptionPane.ERROR_MESSAGE);
					reset(resetInd, resetFam);
					if (MainPane.activity == null) MainPane.createActivityLog(browser.desktop, browser.menuView);
					MainPane.activity.log.append("For clause: " + cb + "\n" + msg + "\n\n");
					return;
				}catch  (ClassNotFoundException ouch)  {       
					String msg = "PROBLEM: Kinship System internal class-handling error.\n" + ouch +
								"\nRECOMMENDATION: Send a Bug Report!";
					JOptionPane.showMessageDialog(browser.desktop, msg, "Internal (Kinship System) Error",
							  JOptionPane.ERROR_MESSAGE);
					reset(resetInd, resetFam);
					if (MainPane.activity == null) MainPane.createActivityLog(browser.desktop, browser.menuView);
					MainPane.activity.log.append("In: " + cb + "\n" + msg + "\n\n");
					return;
				}catch  (KSInternalErrorException ouch)  {       
					String msg = "PROBLEM: The Kinship System has processed a literal improperly.\n" + ouch +
								"\nRECOMMENDATION: Send a Bug Report!";
					JOptionPane.showMessageDialog(browser.desktop, msg, "Internal (Kinship System) Error",
							  JOptionPane.ERROR_MESSAGE);
					reset(resetInd, resetFam);
					if (MainPane.activity == null) MainPane.createActivityLog(browser.desktop, browser.menuView);
					MainPane.activity.log.append("In: " + cb + "\n" + msg + "\n\n");
					return;
				}  //  end of Exception Catch blocks
				String str = "\nCreated " + currentContext.indSerNumGen + " individuals and " 
								+ currentContext.famSerNumGen + " familes for this example.";
				if (egoBag.size() > 1)  {
					str += "\nMultiple Ego's were used: ";
					Individual altEgo;
					for (int i=0; i < egoBag.size() -1; i++)  {
						altEgo = (Individual)egoBag.get(i);
						str += "#" + altEgo.serialNmbr + ", ";
						}  //  end of loop thru all egos except last one
					altEgo = (Individual)egoBag.get(egoBag.size() -1);
					str += "and #" + altEgo.serialNmbr + ".";
					}  //  end of more-than-1-ego
				((JTextArea)diagramArea).setText(str);
				return;
				}
		if (event.getActionCommand().equals("diagram examples"))  {
		//  Call diagram code.  Until it's ready, do a census print in diagramArea.
        //  TEMPORARY TESTING CODE  -- REMOVE LATER
            currEgo = (Individual)currentContext.individualCensus.get(0);
			((JTextArea)diagramArea).setText(censusString());
			}
        }  //  end of method actionPerformed 
        
        
        public void makeEgo()  {
            String sex = "M";
            Object[] options2 = {"Male", "Female"};
            int choice1 = JOptionPane.showOptionDialog(browser.desktop,
							   "Is the Primary Ego Male or Female?",
							   "Setting Gender of Ego",
							   JOptionPane.YES_NO_OPTION,
							   JOptionPane.QUESTION_MESSAGE,
							   null,     //don't use a custom Icon
							   options2,  //the titles of buttons
							   options2[0]); //default is Male
            if (choice1 == JOptionPane.YES_OPTION) sex = "M";
            else sex = "F";
            Individual ego = new Individual("Ego", sex);
            ego.setDateOfBirth("1970-01-01");
            if (currentDomTh.addressTerms) ego.node.kinTermsAddr.add("Ego");
            else ego.node.kinTermsRef.add("Ego");
            DomainTheory.addrTerms = currentDomTh.addressTerms;
            DomainTheory.current = currentDomTh;                            
        }  //  end of method makeEgo
        
        
        public void generateAll()  {
            int resetInd = currentContext.indSerNumGen,  resetFam = currentContext.famSerNumGen, jobSize = 0;
            if (resetInd == 0) makeEgo();	// Individual constructor will place Ego on the Individual.census
            ClauseBody cb = null;
            Individual ego;
			boolean genIt;
			ArrayList<Object> egoBag = new ArrayList<Object>();
			egoBag.add(currentContext.individualCensus.get(0));
            Iterator ktdIter = currentDomTh.theory.values().iterator();
			try {
                ArrayList<Object> round2 = new ArrayList<Object>();
				while (ktdIter.hasNext())  {
                    KinTermDef ktd = (KinTermDef)ktdIter.next();
					genIt = true;
					if (ktd.domTh.nonTerms.contains(ktd.kinTerm)) genIt = false;
					else if ((ktd.flags != null) && (ktd.flags.size() > 0))
						for (int i=0; i < ktd.flags.size(); i++)
							if (ktd.domTh.nonTermFlags.contains(ktd.flags.get(i)))
								genIt = false;
                    if (genIt) {
						for (int j=0; j < ktd.expandedDefs.size(); j++)  {
							cb = (ClauseBody)ktd.expandedDefs.get(j);
							cb.unifyVariables();
							if (cb.flags.contains("chooseLast")) round2.add(cb);
							else cb.generateExamples(currentContext, egoBag, null, null);
						}  //  end of loop thru all expanded Defs of this kinTerm
						MainPane.fill_In_Flag = true;
						for (int j=0; j < round2.size(); j++)  {  //  in Round 2, process delayed-ID terms
							cb = (ClauseBody)round2.get(j);
							cb.generateExamples(currentContext, egoBag, null, null);
							}
						MainPane.fill_In_Flag = false;
					}  //  end of gen-it
                }  //  end of loop thru all kinTerms in this langauge
				for (int j=0; j < egoBag.size(); j++)  {
					ego = (Individual)egoBag.get(j);
					currentDomTh.fillInNames(ego);  //  Tidy up the kinTerms of any extra folks in the diagram
					//  Following Line is guilty of clobbering Ego's kinTerms
					//  Node testNode = currentContext.buildTree(ego);
					}
				}catch(KSBadHornClauseException bhc) {
                String msg = "PROBLEM: This clause contains literals that are syntactically correct, but have logical flaws.\n"  + bhc +
                            "\nRECOMMENDATION: Correct or replace this clause in the definition.";
                JOptionPane.showMessageDialog(browser.desktop, msg, "Bad Horn Clause",
                         JOptionPane.ERROR_MESSAGE);
                reset(resetInd, resetFam);
                if (MainPane.activity == null) MainPane.createActivityLog(browser.desktop, browser.menuView);
                MainPane.activity.log.append("For clause: " + cb + "\n" + msg + "\n\n");
                return;
            }catch  (KSConstraintInconsistency ci)  {
                String msg = "PROBLEM: The constraints specified or implied in this clause are contradictory.\n" + ci +
                            "\nRECOMMENDATION: Correct or replace this clause in the definition.";
                JOptionPane.showMessageDialog(browser.desktop, msg, "Constraint Inconsistency",
                          JOptionPane.ERROR_MESSAGE);
                reset(resetInd, resetFam);
                if (MainPane.activity == null) MainPane.createActivityLog(browser.desktop, browser.menuView);
                MainPane.activity.log.append("For clause: " + cb + "\n" + msg + "\n\n");
                return;
            }catch  (ClassNotFoundException ouch)  {       
                String msg = "PROBLEM: Kinship System internal class-handling error.\n" + ouch +
                            "\nRECOMMENDATION: Send a Bug Report!";
                JOptionPane.showMessageDialog(browser.desktop, msg, "Internal (Kinship System) Error",
                          JOptionPane.ERROR_MESSAGE);
                reset(resetInd, resetFam);
                if (MainPane.activity == null) MainPane.createActivityLog(browser.desktop, browser.menuView);
                MainPane.activity.log.append("In: " + cb + "\n" + msg + "\n\n");
                return;
            }catch  (KSInternalErrorException ouch)  {       
                String msg = "PROBLEM: The Kinship System has processed a literal improperly.\n" + ouch +
                            "\nRECOMMENDATION: Send a Bug Report!";
                JOptionPane.showMessageDialog(browser.desktop, msg, "Internal (Kinship System) Error",
                          JOptionPane.ERROR_MESSAGE);
                reset(resetInd, resetFam);
                if (MainPane.activity == null) MainPane.createActivityLog(browser.desktop, browser.menuView);
                MainPane.activity.log.append("In: " + cb + "\n" + msg + "\n\n");
                return;
            }  //  end of Exception Catch blocks
			String str = "Created " + currentContext.indSerNumGen + " individuals and " 
                            + currentContext.famSerNumGen + " familes for a complete domain theory example.";
            if (egoBag.size() > 1)  {
					str += "\nMultiple Ego's were used: ";
					Individual altEgo;
					for (int i=0; i < egoBag.size() -1; i++)  {
						altEgo = (Individual)egoBag.get(i);
						str += "#" + altEgo.serialNmbr + ", ";
						}  //  end of loop thru all egos except last one
					altEgo = (Individual)egoBag.get(egoBag.size() -1);
					str += "and #" + altEgo.serialNmbr + ".";
					}  //  end of more-than-1-ego
				((JTextArea)diagramArea).setText(str);
		}  //  end of method generateAll
        
        
        public String censusString()  {
            String image = "A Listing of the objects that soon will be diagrammed in this space.\n";
            int size = currentContext.individualCensus.size();
            image += "Individuals:\n";
            for (int i=0; i < size; i++)
                image += currentContext.individualCensus.get(i).toString() + "\n";
            image += "\nFamilies:\n";
            size = currentContext.familyCensus.size();
            for (int i=0; i < size; i++)
                image += currentContext.familyCensus.get(i).toString() + "\n";
            image += "\n-------End------\n";
            return image;
        }
        
        public void reset(int resetInd, int resetFam)  {
            try {
                Context.current.resetTo(resetInd, resetFam);
            }catch (KSInternalErrorException ouch)  {
                JOptionPane.showMessageDialog(browser.desktop,
                      "PROBLEM: The Kinship System has corrupted data.\n" + ouch +
                      "\nRECOMMENDATION: Send a Bug Report!",
                      "Internal (Kinship System) Error",
                      JOptionPane.ERROR_MESSAGE);
            }
        }  //  end of method reset
        
                
    }  //  end of inner class DiagramButtonListener
    
    
}  //  end of class DisplayPickerPanel
