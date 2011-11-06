

import java.util.* ;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.*;
import java.beans.*;

/** 
The PersonPicker is a window that displays a menu of {@link Individual}s.  When one person
is selected, their fields are displayed to confirm it is the right one.  When the User clicks
the "Choose" button, the Individual selected is added to the appropriate field(s) of the <code>editor</code>
which launched this picker.  
<p>
It is an extension of KSJInternalFrame so it will appear in the View menu.

@author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
*/
	
	public class PersonPicker extends KSJInternalFrame  {
			
		public KSJInternalFrame genericEditor;
		public PPListener listener;
		public Individual ind;
		public ArrayList<Object> source, selections = new ArrayList<Object>();
		public boolean oneValue;
		public int udpNmbr = 0;
		public String fieldName;
		public JPanel picker;
		public JComboBox personPick;
		public JLabel fullName, surName, birthday, deathday, gender, hName, wName;
		public JTextArea spouseList, pickList;
		public JButton unDo, choose;
		public Rectangle bnds = new Rectangle();
				
		
		public PersonPicker(ArrayList<Object> srce, String title, String fieldNam,
							boolean singleValue, KSJInternalFrame editor)  {
			super(title);
			windowNum = "Person Picker: " + fieldNam;
			oneValue = singleValue;
			source = srce;
			genericEditor = editor;
			fieldName = fieldNam;
			setDefaultCloseOperation(DISPOSE_ON_CLOSE);
			addInternalFrameListener(this);  // allows View Menu to work
			listener = new PPListener(this);
			buildEditor();
			}  //  end of PersonPicker constructor with 5 args
			
			
		public PersonPicker(ArrayList<Object> srce, String title, String fieldNam, int udpNum,
							boolean singleValue, KSJInternalFrame editor)  {
			super(title);
			windowNum = "Person Picker: " + fieldNam;
			oneValue = singleValue;
			source = srce;
			genericEditor = editor;
			fieldName = fieldNam;
			udpNmbr = udpNum;
			setDefaultCloseOperation(DISPOSE_ON_CLOSE);
			addInternalFrameListener(this);  // allows View Menu to work
			listener = new PPListener(this);
			buildEditor();
			}  //  end of PersonPicker constructor with 6 args
			
			
		public void buildEditor()  {	
			//  MENU OF PERSONS AVAILABLE
			picker = new JPanel();
			picker.setLayout(new BoxLayout(picker, BoxLayout.PAGE_AXIS));
			JPanel line1 = new JPanel();
			line1.setLayout(new BoxLayout(line1, BoxLayout.LINE_AXIS));
			JLabel avaiLable = new JLabel("Persons Available: ");
			Dimension sizer = new Dimension(250, 50);
			String[] personMenu = ContextEditor.genIndMenu(source);
			personPick = new JComboBox(personMenu);
			personPick.setSelectedIndex(0);
			ind = (Individual)source.get(0);
			personPick.addActionListener(listener); 
			personPick.setActionCommand("pick person");
			personPick.setMinimumSize(sizer);
			personPick.setMaximumSize(sizer);
			line1.add(avaiLable);
			line1.add(personPick);
			picker.add(line1);
			picker.add(Box.createRigidArea(new Dimension(0,8)));
			
			
			//  NAME ROW
			JPanel nameBox = new JPanel();
			nameBox.setLayout(new BoxLayout(nameBox, BoxLayout.LINE_AXIS));
			JLabel fullNameLabel = new JLabel("Full Name: ");
			fullName = new JLabel(ind.name);
			JLabel surnameLabel = new JLabel("Surname: ");
			surName = new JLabel(ind.surname);
			nameBox.add(fullNameLabel);
			nameBox.add(fullName);
			nameBox.add(Box.createRigidArea(new Dimension(80,0)));
			nameBox.add(surnameLabel);
			nameBox.add(surName);
			picker.add(nameBox);
			picker.add(Box.createRigidArea(new Dimension(0,8)));
			
			//  BORN ROW
			JPanel bornRow = new JPanel();
			bornRow.setLayout(new BoxLayout(bornRow, BoxLayout.LINE_AXIS));
			birthday = new JLabel("Born: " + ind.getDateOfBirth());
			deathday = new JLabel("Died: " + ind.getDateOfDeath());
			gender = new JLabel("Gender: " + ind.gender);
			bornRow.add(birthday);
			bornRow.add(Box.createRigidArea(new Dimension(20,0)));
			bornRow.add(deathday);
			bornRow.add(Box.createRigidArea(new Dimension(20,0)));
			bornRow.add(gender);
			picker.add(bornRow);
			picker.add(Box.createRigidArea(new Dimension(0,8)));
			
			//  BIRTH FAMILY ROW
			JPanel famRow = new JPanel();
			famRow.setLayout(new BoxLayout(famRow, BoxLayout.LINE_AXIS));
			JLabel famLeft  = new JLabel("Birth Family: ");
			JPanel famRt = new JPanel();
			famRt.setLayout(new BoxLayout(famRt, BoxLayout.PAGE_AXIS));
			String husbName = "Birth Family Not Recorded", wifeName = "";
			if (ind.birthFamily != null) {
				if (ind.birthFamily.husband != null) husbName = ind.birthFamily.husband.name;
					else husbName = "Father's Name Not Recorded";
				if (ind.birthFamily.wife != null) wifeName = ind.birthFamily.wife.name;
					else wifeName = "Mother's Name Not Recorded";
				}
			hName = new JLabel("H: " + husbName);
			wName = new JLabel("W: " + wifeName);
			famRt.add(hName);
			famRt.add(wName);
			famRow.add(famLeft);
			famRow.add(famRt);
			picker.add(famRow);
			picker.add(Box.createRigidArea(new Dimension(0,8)));
			
			//  MARRIAGES
			JPanel marriageBox = new JPanel();
			marriageBox.setLayout(new BoxLayout(marriageBox, BoxLayout.LINE_AXIS));
			JLabel marriageLabel = new JLabel("Marriages:  ");
			marriageBox.add(marriageLabel);
			spouseList = new JTextArea();
			JScrollPane spicePane = new JScrollPane(spouseList);
			spicePane.setMaximumSize(new Dimension(350, 60));
			spicePane.setMinimumSize(new Dimension(350, 30));
			String multiLine = "Not Married";
			if (ind.marriages.size() > 0)  {
				multiLine = "";
				String[] spice = PersonEditor.genSpouseMenu(ind, ind.marriages);
				for (int i=0; i < spice.length; i++)  {
					if (i > 0) multiLine += "\n";
					multiLine += spice[i];
					}
				}
			spouseList.setText(multiLine);
			spouseList.setEditable(false);
			marriageBox.add(spicePane);
			picker.add(Box.createRigidArea(new Dimension(0,8)));
			picker.add(marriageBox);
			picker.add(Box.createRigidArea(new Dimension(0,8)));
			
			
			//  OPTIONAL LIST OF SELECTIONS
			if (! oneValue)  {
				JPanel pickBox = new JPanel();
				pickBox.setLayout(new BoxLayout(pickBox, BoxLayout.LINE_AXIS));
				JLabel picks = new JLabel("Chosen So Far:  ");
				pickList = new JTextArea();
				JScrollPane pickPane = new JScrollPane(pickList);
				pickList.setEditable(false);
				pickPane.setMinimumSize(new Dimension(350, 50));
				pickPane.setMaximumSize(new Dimension(350, 100));
				pickBox.add(picks);
				pickBox.add(pickPane);
				picker.add(pickBox);
				picker.add(Box.createRigidArea(new Dimension(0,12)));
			}  //  end of multi-Valued selections list
			
			//  BUTTONS AT THE BOTTOM
			JPanel bottomBtns = new JPanel();
			bottomBtns.setLayout(new BoxLayout(bottomBtns, BoxLayout.LINE_AXIS));
			JButton done = new JButton("Done");
			done.setActionCommand("done");
			done.addActionListener(listener);
			done.setEnabled(true);
			bottomBtns.add(done);
			
			unDo = new JButton("Un-Do");
			unDo.setActionCommand("un-do");
			unDo.addActionListener(listener);
			unDo.setEnabled(false);
			bottomBtns.add(unDo);
			
			choose = new JButton("Choose");
			choose.setActionCommand("choose");
			choose.addActionListener(listener);
			choose.setEnabled(true);
			bottomBtns.add(choose);
			
			picker.add(bottomBtns);
			getContentPane().add(picker);
			addInternalFrameListener(this);
			setSize(450, 400);
			setVisible(true);
			}  //  end of method buildEditor
		
		
	public class PPListener implements ActionListener  {
	
		KSJInternalFrame p_picker;
		
		public PPListener(KSJInternalFrame ped)  {
			p_picker = ped;
			}  //  end of constructor
		
		public void actionPerformed(ActionEvent e) {
			if (e.getActionCommand().equals("pick person"))  {
				int where = personPick.getSelectedIndex();
				ind = (Individual)source.get(where);
				fullName.setText(ind.name);
				surName.setText(ind.surname); 
				String bday = "", dday = "";
				if (ind.hasDoB()) bday = ind.getDateOfBirth();
				if (ind.hasDoD()) dday = ind.getDateOfDeath();
				birthday.setText("Born: " + bday); 
				deathday.setText("Died: " + dday); 
				gender.setText("Gender: " + ind.gender);
				String husbName = "Birth Family Not Recorded", wifeName = "";
				if (ind.birthFamily != null) {
					if (ind.birthFamily.husband != null) husbName = ind.birthFamily.husband.name;
						else husbName = "Father's Name Not Recorded";
					if (ind.birthFamily.wife != null) wifeName = ind.birthFamily.wife.name;
						else wifeName = "Mother's Name Not Recorded";
					}
				hName.setText("H: " + husbName);
				wName.setText("W: " + wifeName);
				String[] spice = PersonEditor.genSpouseMenu(ind, ind.marriages);
				String multiLine = "";
				for (int i=0; i < spice.length; i++)  {
					if (i > 0) multiLine += "\n";
					multiLine += spice[i];
					}
				spouseList.setText(multiLine);
				picker.getBounds(bnds);
				picker.repaint(bnds);
				}  //  end of picked-a-person
			else if (e.getActionCommand().equals("done"))  {
				if (selections.isEmpty())  {
					int choice = JOptionPane.showConfirmDialog(p_picker,
						"You have not made any selections.\n" + 
						"Do you want to close without choosing?",
						"Confirm", JOptionPane.YES_NO_OPTION);
					if (choice == JOptionPane.YES_OPTION) fieldName = "no-field";  // just close
					else return;
					}  //  end of no-selections
				if (fieldName.equals("husband")) {  //  called by a FamEditor to pick a husband
					FamilyEditor editor = (FamilyEditor)genericEditor;
					editor.fam.husband = (Individual)selections.get(0);  //  families have only 1 husband
					editor.fam.husband.marriages.add(editor.fam);
					editor.buildSpouseRow(editor.hRow, "husband");
					editor.getBounds(bnds);
					editor.repaint(bnds);
					//  end of hubby-pickin'
				} else if (fieldName.equals("wife"))  {
					FamilyEditor editor = (FamilyEditor)genericEditor;
					editor.fam.wife = (Individual)selections.get(0);  //  families have only 1 wife
					editor.fam.wife.marriages.add(editor.fam);
					editor.buildSpouseRow(editor.wRow, "wife");
					editor.getBounds(bnds);
					editor.repaint(bnds);
					//  end of wife-pickin'					
				} else if (fieldName.equals("children"))  {
					FamilyEditor editor = (FamilyEditor)genericEditor;
					editor.fam.children.addAll(selections);
					for (int k=0; k < selections.size(); k++)  //  fill in the kids' birth families
						((Individual)selections.get(k)).birthFamily = editor.fam;
					// update display in the calling FamilyEditor's Children ComboBox
					editor.buildKidBox();
					editor.getBounds(bnds);
					editor.repaint(bnds);
					//  end of kid-pickin' -- without labor pains					
				} else if (fieldName.equals("delete children"))  {
					FamilyEditor editor = (FamilyEditor)genericEditor;
					Individual deletee;
					for (int k=0; k < selections.size(); k++) { //  delete kids - nullify birth families
						deletee = (Individual)selections.get(k);
						deletee.birthFamily = null;
						editor.fam.children.remove(deletee);
						}
					// update display in the calling FamilyEditor's Children ComboBox
					editor.buildKidBox();
					editor.getBounds(bnds);
					editor.repaint(bnds);
					//  end of kid-deletion -- without killing the kid					
				} else if (fieldName.equals("Add UDP"))  {
					PersonEditor editor = (PersonEditor)genericEditor;
					for (int j=0; j < selections.size(); j++)  
						editor.udCopy.value.add(selections.get(j));
					// update display in the calling PersonEditor
					editor.buildUDPArea(udpNmbr);
					editor.getBounds(bnds);
					editor.repaint(bnds);
					//  end of adding-people-to-UDP-value'					
				} else if (fieldName.equals("Delete UDP"))  {
					PersonEditor editor = (PersonEditor)genericEditor;
					int victim;
					for (int j=0; j < selections.size(); j++)  {
						victim = editor.udCopy.value.indexOf(selections.get(j));
						editor.udCopy.value.remove(victim);
							}
					// update display in the calling PersonEditor
					editor.buildUDPArea(udpNmbr);
					editor.getBounds(bnds);
					editor.repaint(bnds);
					//  end of deleting-people-from-UDP-value'					
				} else if (fieldName.equals("marriages"))  {
					PersonEditor editor = (PersonEditor)genericEditor;
					Individual mate = (Individual)selections.get(0);
					Family bliss = new Family(editor.ctxt, editor.ind, mate);
				// update display in the calling PersonEditor
					if (editor.spousePicker != null) 
						editor.spousePicker.addItem(mate.name + " (" + mate.serialNmbr + ")");
					else  {  //  spousePicker-was-null
						editor.marriageBox.removeAll();
						editor.buildMarriageBox();
						}  //  end of spousePicker-was-null
					editor.getBounds(bnds);
					editor.repaint(bnds);
				//  launch a FamilyEditor to complete input of family info
					FamilyEditor fEd = new FamilyEditor(editor.ctxt, editor, "View/Edit a Marriage", 
												bliss, "marriage");
					fEd.desktop = desktop;
					fEd.setLocation(350, 100);
					desktop.add(fEd);
					fEd.miViewMe = menuView.add(fEd.windowNum);
					fEd.miViewMe.addActionListener(fEd);
					fEd.menuView = menuView;
					fEd.show();
					fEd.moveToFront();
					try { fEd.setSelected(true);
					}catch(PropertyVetoException pv) {}
					//  end of spouse-pickin' -- it should be so easy in the real world!!					
				} 
				try {  p_picker.setClosed(true);  //  close the panel
				}catch(PropertyVetoException pve) {
					if (MainPane.activity == null) MainPane.createActivityLog(desktop, menuView);
					MainPane.activity.log.append("In PersonPicker:\n" + pve);
					}
				}
			else if (e.getActionCommand().equals("un-do"))  {
				selections.remove(selections.size() - 1);  //  kill the last element
				if (selections.isEmpty()) unDo.setEnabled(false);
				if (oneValue) choose.setEnabled(true);
				else {  //  multi-selections-allowed
					String[] pickArray = ContextEditor.genIndMenu(selections);  //  make list of names
					String multiLine = "";
					for (int i=0; i < pickArray.length; i++)  {
						if (i > 0) multiLine += "\n";
						multiLine += pickArray[i];
						}
					pickList.setText(multiLine);
					//  picker.getBounds(bnds);
					//  picker.repaint(bnds);
					}  //  end of if-multi-Value
				}
			else if (e.getActionCommand().equals("choose"))  {
				selections.add(ind);
				unDo.setEnabled(true);
				if (oneValue) choose.setEnabled(false);
				else {  //  multi-selections-allowed
					String[] pickArray = ContextEditor.genIndMenu(selections);
					String multiLine = "";
					for (int i=0; i < pickArray.length; i++)  {
						if (i > 0) multiLine += "\n";
						multiLine += pickArray[i];
						}
					pickList.setText(multiLine);
					// picker.getBounds(bnds);
					// picker.repaint(bnds);  
					}  //  end of multi-selections-allowed
				}  //  end of action = choose
			}  //  end of ActionListerner method actionPerformed
			
		}  //  end of inner class PPListener
	
		
	}  //  end of class PersonPicker
	
