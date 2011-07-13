

import java.util.* ;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.*;
import java.beans.*;

/** 
The UDPEditor is a window that displays a {@link UserDefinedProperty}'s fields for  editing.
It is an extension of KSJInternalFrame because I want this to appear in the View menu.

@author		Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
*/
	
	public class UDPEditor extends KSJInternalFrame  {
			
		public Context ctxt;
		public KSJInternalFrame ctxtEd;
		public boolean newUDP, newSingleValue, validValsChanged = false, defaultValExists = false;
		public UserDefinedProperty theUDP;	//  The various newxxx fields are holders for the
		public String newStarName, newType; //  new values entered into this editor.
		public ArrayList<Object> newValidEntries;   //  After validation, they'll be stored on theUDP.
		Number newMinVal, newMaxVal;
		Object newDefaultValue;
		UDPListener listener;
		JComboBox typePick;
		JRadioButton nocertain, yescertain, yesdefault, nodefault, nomulti; 
		JTextField name_1, certainText, defaultText, minText, maxText;
		JLabel certainEditLabel, defeditLabel;
		JButton udpCheckSave;
		JProgressBar progressBar;			//  These 2 elements of the editor GUI are accessed 
		JPanel progBox;						//  by the Listener
		
		public UDPEditor(Context cntxt, KSJInternalFrame ctEd, String title, boolean newUDPee, 
						UserDefinedProperty theUDPee)  {
			super(title);
			ctxt = cntxt;
			ctxtEd = ctEd;
			newUDP = newUDPee;
			theUDP = theUDPee;
			if (newUDP) windowNum = "Add a UDP";
			else windowNum = "UDP Editor: " + theUDP.starName;
			setDefaultCloseOperation(DISPOSE_ON_CLOSE);
			addInternalFrameListener(this);  // allows View Menu to work
			listener = new UDPListener(this);
			
			JPanel editor = new JPanel();
			editor.setLayout(new BoxLayout(editor, BoxLayout.PAGE_AXIS));
			
			//  NAME BOX
			JPanel nameBox = new JPanel();
			nameBox.setLayout(new BoxLayout(nameBox, BoxLayout.LINE_AXIS));
			name_1 = new JTextField("*", 28);
			if (! newUDP) name_1.setText(theUDP.starName);
			name_1.setMaximumSize(new Dimension(225, 22));
			name_1.addActionListener(listener);
			name_1.setActionCommand("name edit");
			JLabel nameLabel = new JLabel("UDP Name: ");
			nameBox.add(nameLabel);
			nameBox.add(name_1);
			JPanel nameEdBox = new JPanel();
			nameEdBox.setLayout(new BoxLayout(nameEdBox, BoxLayout.PAGE_AXIS));
			nameBox.setAlignmentX(0.5f);
			String lab;
			if (newUDP) lab = "Enter name (starting with '*'), hit 'Enter' key.";
			else lab = "Edit name, then press 'Enter' key.";
			JLabel nameEdLabel = new JLabel(lab);
			nameEdLabel.setAlignmentX(0.5f);
            nameEdLabel.setMaximumSize(new Dimension(300, 22));
			nameEdBox.add(nameBox);
			nameEdBox.add(nameEdLabel);
			nameEdBox.setAlignmentX(0.5f);
			editor.add(nameEdBox);
			
			//  DATA TYPE
			JPanel dTypeBox = new JPanel();
			dTypeBox.setLayout(new BoxLayout(dTypeBox, BoxLayout.LINE_AXIS));
			JLabel typeLabel = new JLabel("Data Type: ");
			Dimension sizer = new Dimension(150, 50);
			String[] typeMenu = {"String", "Integer", "Real Number", "Boolean", "Person"};
			typePick = new JComboBox(typeMenu);
			if (newUDP) {
				typePick.setSelectedIndex(0);
				newType = "string";
				}
			else {
				if (theUDP.typ.equals("integer")) typePick.setSelectedIndex(1);
				else if (theUDP.typ.equals("float")) typePick.setSelectedIndex(2);
				else if (theUDP.typ.equals("string")) typePick.setSelectedIndex(0);
				else if (theUDP.typ.equals("boolean")) typePick.setSelectedIndex(3);
				else typePick.setSelectedIndex(4);
				newType = theUDP.typ;
				}  //  end of setting the current data type
			typePick.addActionListener(listener); 
			typePick.setActionCommand("data type");
			typePick.setMinimumSize(sizer);
			typePick.setMaximumSize(sizer);
			dTypeBox.add(typeLabel);
			dTypeBox.add(typePick);
			editor.add(Box.createRigidArea(new Dimension(0,4)));
			editor.add(dTypeBox);
			
			//  MULTIPLE VALUES?
			JPanel multiBox = new JPanel();
			multiBox.setLayout(new BoxLayout(multiBox, BoxLayout.LINE_AXIS));
			JLabel multiLabel = new JLabel("Multiple Values?");
			JRadioButton yesmulti = new JRadioButton("Yes");
			yesmulti.setActionCommand("multiVal yes");
			yesmulti.addActionListener(listener);
			nomulti = new JRadioButton("No");
			nomulti.setActionCommand("multiVal no");
			nomulti.addActionListener(listener);
			if (theUDP.singleValue) nomulti.setSelected(true);
			else yesmulti.setSelected(true);
			newSingleValue = theUDP.singleValue;
			ButtonGroup multiBtns = new ButtonGroup();
			multiBtns.add(yesmulti);
			multiBtns.add(nomulti);
			multiBox.add(multiLabel);
			multiBox.add(yesmulti);
			multiBox.add(nomulti);
			editor.add(Box.createRigidArea(new Dimension(0,4)));
			editor.add(multiBox);
			
			//  RESTRICTED TO CERTAIN VALUES?
			JPanel certainBox = new JPanel();
			certainBox.setLayout(new BoxLayout(certainBox, BoxLayout.LINE_AXIS));
			JLabel certainLabel = new JLabel("Restricted to Certain Values?");
			yescertain = new JRadioButton("Yes");
			yescertain.setActionCommand("certainVal yes");
			yescertain.addActionListener(listener);
			nocertain = new JRadioButton("No");
			nocertain.setActionCommand("certainVal no");
			nocertain.addActionListener(listener);
			if (newUDP || (theUDP.validEntries == null) 
				|| (theUDP.validEntries.isEmpty()) || (newType.equals("individual"))) 
				nocertain.setSelected(true);
			else yescertain.setSelected(true);
			newValidEntries = theUDP.validEntries;
			ButtonGroup certainBtns = new ButtonGroup();
			certainBtns.add(yescertain);
			certainBtns.add(nocertain);
			certainBox.add(certainLabel);
			certainBox.add(yescertain);
			certainBox.add(nocertain);
			
			certainText = new JTextField();
			certainText.setMinimumSize(new Dimension(400, 30));
			certainText.setMaximumSize(new Dimension(400, 30));
			certainText.setAlignmentX(0.5f);
			certainEditLabel = new JLabel();
			certainEditLabel.setAlignmentX(0.5f);
			if (newUDP || (theUDP.validEntries == null) || (theUDP.validEntries.isEmpty())) {
				certainText.setText("");
				certainEditLabel.setText("");
				certainText.setEditable(false);
			}else {
				certainText.setEditable(true);
				certainEditLabel.setText("Edit list of values, then hit 'Enter'.");
				newValidEntries = theUDP.validEntries;
				certainText.setText(theUDP.getValidEntriesString());
				certainText.addActionListener(listener);
				certainText.setActionCommand("certainText edit");
				}  //  end of it's restricted
			editor.add(Box.createRigidArea(new Dimension(0,4)));
			editor.add(certainBox);
			editor.add(Box.createRigidArea(new Dimension(0,4)));
			editor.add(certainEditLabel);
			editor.add(certainText);
			
			//  DEFAULT VALUE
			JPanel defaultBox = new JPanel();
			defaultBox.setLayout(new BoxLayout(defaultBox, BoxLayout.LINE_AXIS));
			JLabel defaultLabel = new JLabel("Is There A Default Value?");
			yesdefault = new JRadioButton("Yes");
			yesdefault.setActionCommand("defaultVal yes");
			yesdefault.addActionListener(listener);
			nodefault = new JRadioButton("No");
			nodefault.setActionCommand("defaultVal no");
			nodefault.addActionListener(listener);
			nodefault.setSelected(true);
			ButtonGroup defaultBtns = new ButtonGroup();
			defaultBtns.add(yesdefault);
			defaultBtns.add(nodefault);
			defaultBox.add(defaultLabel);
			defaultBox.add(yesdefault);
			defaultBox.add(nodefault);
			defaultText = new JTextField();
			defaultText.setMinimumSize(new Dimension(400, 30));
			defaultText.setMaximumSize(new Dimension(400, 30));
			defaultText.setAlignmentX(0.5f);
			defeditLabel = new JLabel();
			defeditLabel.setAlignmentX(0.5f);
			if (newUDP || (theUDP.defaultValue == null)) {
				defaultText.setText("");
				defeditLabel.setText("");
				defaultText.setEditable(false);
                defaultValExists = false;
			}else {
				defaultText.setEditable(true);
				defeditLabel.setText("Edit the default value, then hit 'Enter'.");
				newDefaultValue = theUDP.defaultValue;
				yesdefault.setSelected(true);
				defaultText.setText(theUDP.defaultValue.toString());
				defaultText.addActionListener(listener);
				defaultText.setActionCommand("defaultText edit");
                defaultValExists = true;
				}  //  end of there is a default value
			editor.add(Box.createRigidArea(new Dimension(0,4)));
			editor.add(defaultBox);
			editor.add(Box.createRigidArea(new Dimension(0,4)));
			editor.add(defeditLabel);
			editor.add(defaultText);
			
			//  MIN AND MAX VALUES
			JPanel minMaxBox = new JPanel();
			minMaxBox.setLayout(new BoxLayout(minMaxBox, BoxLayout.LINE_AXIS));
			JLabel minLabel = new JLabel("Minimum Value: ");
			minText = new JTextField();
			minText.setMinimumSize(new Dimension(50, 30));
			minText.setMaximumSize(new Dimension(50, 30));
			if (theUDP.minVal == null) minText.setText("");
				else minText.setText(theUDP.minVal.toString());
			minText.addActionListener(listener);
			minText.setActionCommand("minText edit");
			minMaxBox.add(minLabel);
			minMaxBox.add(minText);
			JPanel maxBox = new JPanel();
			maxBox.setLayout(new BoxLayout(maxBox, BoxLayout.PAGE_AXIS));
			JLabel maxLabel = new JLabel("Maximum Value: ");
			maxText = new JTextField();
			maxText.setMinimumSize(new Dimension(50, 30));
			maxText.setMaximumSize(new Dimension(50, 30));
			if (theUDP.maxVal == null) maxText.setText("");
				else maxText.setText(theUDP.maxVal.toString());
			maxText.addActionListener(listener);
			maxText.setActionCommand("maxText edit");
			if (((String)typePick.getSelectedItem()).equals("Integer") || ((String)typePick.getSelectedItem()).equals("Real Number"))	{
				minText.setEditable(true);
				maxText.setEditable(true);
			}else {
				minText.setEditable(false);
				maxText.setEditable(false);
				}
			minMaxBox.add(Box.createRigidArea(new Dimension(50, 0)));
			minMaxBox.add(maxLabel);
			minMaxBox.add(maxText);
			editor.add(Box.createRigidArea(new Dimension(0,4)));
			editor.add(minMaxBox);
			
			//  BUTTONS AT THE BOTTOM
			JPanel bottomBtns = new JPanel();
			bottomBtns.setLayout(new BoxLayout(bottomBtns, BoxLayout.LINE_AXIS));
			JButton udpCancel = new JButton("Cancel");
			udpCancel.setActionCommand("cancel");
			udpCancel.addActionListener(listener);
			bottomBtns.add(udpCancel);
			if (! newUDP) {  //  no need to delete a UDP being created -- just cancel
				JButton udpDelete = new JButton("Delete UDP");
				udpDelete.setActionCommand("delete");
				udpDelete.addActionListener(listener);
				bottomBtns.add(udpDelete);
				}
			udpCheckSave = new JButton("Check for Errors");
			udpCheckSave.setActionCommand("check");
			udpCheckSave.addActionListener(listener);
			bottomBtns.add(udpCheckSave);
			editor.add(Box.createRigidArea(new Dimension(0,6)));
			editor.add(bottomBtns);
			
			progBox = new JPanel();
			progBox.setLayout(new BoxLayout(progBox, BoxLayout.PAGE_AXIS));
			String progMod = " revised UDP.";
			if (newUDP) progMod = " new UDP.";
			JLabel progLabel = new JLabel("Updating " + ctxt.indSerNumGen + " persons with the" + progMod);
			progressBar = new JProgressBar(0, ctxt.indSerNumGen);
			progressBar.setValue(0);
			progressBar.setStringPainted(true);
			progBox.add(progLabel);
			progBox.add(progressBar);
			//  progBox.setVisible(false);
			editor.add(Box.createRigidArea(new Dimension(0,6)));
			editor.add(progBox);
			
			JPanel sideFrame = new JPanel();
			sideFrame.setLayout(new BoxLayout(sideFrame, BoxLayout.LINE_AXIS));
			sideFrame.add(Box.createRigidArea(new Dimension(10,0)));
			sideFrame.add(editor);
			sideFrame.add(Box.createRigidArea(new Dimension(10,0)));
			getContentPane().add(sideFrame);
			addInternalFrameListener(this);
			setSize(420, 400);
			setVisible(true);
			}  //  end of UDPEditor constructor
		
	public class UDPListener implements ActionListener  {
	
		KSJInternalFrame ed;
		boolean reName = false;
		
		public UDPListener(KSJInternalFrame uded)  {
			ed = uded;
			}  //  end of constructor
		
		public void actionPerformed(ActionEvent e) {
			 if (e.getActionCommand().equals("name edit"))  {
				String newName = name_1.getText(), msg;
				if (! Library.validateFileName(newName, true)) {
					msg = "The name '" + newName + "' violates the rules for names:\n"
						+ "The name MUST start with a star ('*') and a letter.\n" +
						"Use up to 28 LETTERS, NUMBERS, or DASHES (-) but NO SPACES.";
					JOptionPane.showMessageDialog(ed, msg, "Violation of Naming Rules", 
						JOptionPane.WARNING_MESSAGE);
					flipFinalBtn("check");
					return; 
					}
				//  Once past activity-check, we can safely record the new starName
				newStarName = newName;
				if ((! newUDP) && (! newStarName.equals(theUDP.starName)))  {  //  name change
					int numWithProp = 0, numWithVals = 0;
					Iterator indIter = ctxt.individualCensus.iterator();
					UserDefinedProperty udp;
					while (indIter.hasNext()) {
						udp = (UserDefinedProperty)((Individual)indIter.next()).userDefinedProperties.get(theUDP.starName);
						if (udp != null) {
							numWithProp++;
							if (udp.value.size() > 0) numWithVals++;
							}
						}  //  end of loop thru persons on this context
					int choice = JOptionPane.YES_OPTION;
					if (numWithProp > 0) {
						msg = "There are " + numWithProp + " persons with this property defined.\n" + 
								"There are " + numWithVals + " with a value for this property.\n" + 
								"Do you want to change the name of this UDP for every person?";
						choice = JOptionPane.showConfirmDialog(ed, msg, "Confirm", JOptionPane.YES_NO_OPTION);
						}  //  end of confirmed-delete-of-the UDPs-from-individuals
					if (choice == JOptionPane.YES_OPTION) reName = true;
					  //  end of User-chose-to-delete-UDP-from-all-persons
					}  //  end of name-change
				flipFinalBtn("check");
				return;
				}  //  end of "name edit"
			if (e.getActionCommand().equals("data type"))  {
				String priorType = newType;  //  prior value
				String typ = (String)typePick.getSelectedItem();
				if (typ.equals("String"))  {
					newType = "string";
					if (priorType.equals(newType)) return;  //  Nothing changed
					minText.setText("");
					minText.setEditable(false);
					maxText.setText("");
					maxText.setEditable(false);
					if (yescertain.isSelected()) {
						certainEditLabel.setText("Edit list of values, then hit 'Enter'.");
						certainText.setEditable(true);
					}else {
						certainEditLabel.setText("");
						certainText.setEditable(false);
						}
					if (yesdefault.isSelected()) {
						defaultText.setEditable(true);
						defeditLabel.setText("Edit the default value, then hit 'Enter'.");
					}else {
						defaultText.setEditable(false);
						defeditLabel.setText("");
						}
					}
				else if (typ.equals("Integer")) {
					newType = "integer";
					if (priorType.equals(newType)) return;  //  Nothing changed
					minText.setEditable(true);
					maxText.setEditable(true);
					if (yescertain.isSelected()) {
						certainEditLabel.setText("Edit list of values, then hit 'Enter'.");
						certainText.setEditable(true);
					}else {
						certainEditLabel.setText("");
						certainText.setEditable(false);
						}
					if (yesdefault.isSelected()) {
						defaultText.setEditable(true);
						defeditLabel.setText("Edit the default value, then hit 'Enter'.");
					}else {
						defaultText.setEditable(false);
						defeditLabel.setText("");
						}
					}
				else if (typ.equals("Real Number")) {
					newType = "float";
					if (priorType.equals(newType)) return;  //  Nothing changed
					minText.setEditable(true);
					maxText.setEditable(true);
					if (yescertain.isSelected()) {
						certainEditLabel.setText("Edit list of values, then hit 'Enter'.");
						certainText.setEditable(true);
					}else {
						certainEditLabel.setText("");
						certainText.setEditable(false);
						}
					if (yesdefault.isSelected()) {
						defaultText.setEditable(true);
						defeditLabel.setText("Edit the default value, then hit 'Enter'.");
					}else {
						defaultText.setEditable(false);
						defeditLabel.setText("");
						}
					}
				else if (typ.equals("Boolean"))  {
					newType = "boolean";
					if (priorType.equals(newType)) return;  //  Nothing changed
					minText.setText("");
					minText.setEditable(false);
					maxText.setText("");
					maxText.setEditable(false);
					nomulti.setSelected(true);
					newSingleValue = true;
					nocertain.setSelected(true);
					certainText.setText("");
					certainEditLabel.setText("");
					certainText.setEditable(false);
					newValidEntries = null;
					}
				else if (typ.equals("Person")) {
					newType = "individual";
					if (priorType.equals(newType)) return;  //  Nothing changed
					minText.setText("");
					minText.setEditable(false);
					maxText.setText("");
					maxText.setEditable(false);
					nocertain.setSelected(true);
					certainText.setText("");
					certainEditLabel.setText("");
					certainText.setEditable(false);
					newValidEntries = null;
					nodefault.setSelected(true);
					defaultText.setEditable(false);
					defeditLabel.setText("");
					}
				if ((newValidEntries != null) && (newValidEntries.size() > 0)) {
					//  Changed type after specifying valid entries
					newValidEntries = null;
					certainText.setText("");
					certainEditLabel.setText("");
					nocertain.setSelected(true);
					}
				
				flipFinalBtn("check");
				return;
				}
			if (e.getActionCommand().equals("multiVal yes")) {
				if (newType.equals("boolean"))  {
					newSingleValue = true;
					nomulti.setSelected(true);
					JOptionPane.showMessageDialog(ed, "Sorry.  When Data Type is 'Boolean'\n" +
														"you cannot allow Multiple Values.",
						"Illegal Combination", 
						JOptionPane.INFORMATION_MESSAGE);
					}
				else newSingleValue = false;
				return;
				}
			if (e.getActionCommand().equals("multiVal no")) {
				newSingleValue = true;
				return;
				}
			if (e.getActionCommand().equals("certainVal yes"))  {
				if (newType.equals("individual")) {
					JOptionPane.showMessageDialog(ed, "Sorry.  When Data Type is 'Person' you\n" +
														"cannot Restrict to Certain Values",
						"Illegal Combination", 
						JOptionPane.INFORMATION_MESSAGE);
					nocertain.setSelected(true);
					return;
					}  //  end of type = indiv
				else if (newType.equals("boolean")) {
					JOptionPane.showMessageDialog(ed, "Sorry.  When Data Type is 'Boolean' you\n" +
														"cannot Restrict to Certain Values",
						"Illegal Combination", 
						JOptionPane.INFORMATION_MESSAGE);
					nocertain.setSelected(true);
					return;
					}  //  end of type = boolean
				else if ((newUDP) || (theUDP.validEntries == null)) {
					newValidEntries = new ArrayList<Object>();
					certainText.setText("");
					certainEditLabel.setText("Enter values separated by commas, then hit 'Enter'.");
				}else {
					newValidEntries = theUDP.validEntries;
					certainText.setText(theUDP.getValidEntriesString());
					certainEditLabel.setText("Edit list of values, separated by commas, then hit 'Enter'.");
					}
				certainText.setEditable(true);
				certainText.addActionListener(listener);
				certainText.setActionCommand("certainText edit");
				flipFinalBtn("check");
				return;
				}
			if (e.getActionCommand().equals("certainVal no"))  {
				newValidEntries = null;
				certainText.setText("");
				certainEditLabel.setText("");
				certainText.setEditable(false);
				flipFinalBtn("check");
				return;
				}
			if (e.getActionCommand().equals("certainText edit"))  {
				validateCertainVals();
				return;
				}
			if (e.getActionCommand().equals("defaultVal yes"))  {
				if (newType.equals("individual")) {
					JOptionPane.showMessageDialog(ed, "Sorry.  When Data Type is 'Person' you\n" +
														"cannot have a Default Value",
						"Illegal Combination", 
						JOptionPane.INFORMATION_MESSAGE);
					nodefault.setSelected(true);
					return;
					}  //  end of type = indiv
				if (theUDP.defaultValue != null) {
					newDefaultValue = theUDP.defaultValue;
					defaultText.setText(theUDP.defaultValue.toString());
					}
				defaultText.setEditable(true);
				defaultText.addActionListener(listener);
				defaultText.setActionCommand("defaultText edit");
				defeditLabel.setText("Edit the default value, then hit 'Enter'.");
                defaultValExists = true;
				flipFinalBtn("check");
				return;
				}
			if (e.getActionCommand().equals("defaultVal no"))  {
				newDefaultValue = null;
				defaultText.setText("");
				defeditLabel.setText("");
				defaultText.setEditable(false);
                defaultValExists = false;
				flipFinalBtn("check");
				return;
				}
			if (e.getActionCommand().equals("defaultText edit"))  {
				validateDefaultVal();
				return;
				}
			if (e.getActionCommand().equals("minText edit")) {
				validateMinText();
				return;
				}
			if (e.getActionCommand().equals("maxText edit"))  {
				validateMaxText();
				return;
				}
			if (e.getActionCommand().equals("cancel"))  {
				theUDP = null;
				try {  ed.setClosed(true);  //  by not writing & saving, we cancel
				}catch(PropertyVetoException pve) {
					if (MainPane.activity == null) MainPane.createActivityLog(desktop, menuView);
					MainPane.activity.log.append("In UDPEditor:\n" + pve);
					System.out.println("In UDPEditor:\n" + pve); }
				return;
				}
			if (e.getActionCommand().equals("delete"))  {
				int choice = JOptionPane.showConfirmDialog(ed,
					"Are you sure you want to delete this UDP?",
					"Confirm", JOptionPane.YES_NO_OPTION);
				if (choice == JOptionPane.YES_OPTION) {
					ctxt.userDefinedProperties.remove(theUDP.starName);
					int numWithProp = 0, numWithVals = 0;
					Iterator indIter = ctxt.individualCensus.iterator();
					UserDefinedProperty udp;
					while (indIter.hasNext()) {
						udp = (UserDefinedProperty)((Individual)indIter.next()).userDefinedProperties.get(theUDP.starName);
						if (udp != null) {
							numWithProp++;
							if (udp.value.size() > 0) numWithVals++;
							}
						}  //  end of loop thru persons on this context
					choice = JOptionPane.YES_OPTION;
					if (numWithVals > 0) {
						String msg = "There are " + numWithProp + " persons with this property defined.\n" + 
									 "There are " + numWithVals + " with a value for this property.\n" + 
									 "Do you want to delete this UDP from every person?";
						choice = JOptionPane.showConfirmDialog(ed, msg, "Confirm", JOptionPane.YES_NO_OPTION);
						}  //  end of confirmed-delete-of-the UDPs-from-individuals
					if (choice == JOptionPane.YES_OPTION) {
						indIter = ctxt.individualCensus.iterator();
						while (indIter.hasNext()) 
							((Individual)indIter.next()).userDefinedProperties.remove(theUDP.starName);
						}  //  end of User-chose-to-delete-UDP-from-all-persons
					}  //  end of confirmed-delete-request
				try {  ed.setClosed(true);  
					ContextEditor newCtxtEd = new ContextEditor(ctxt);
					newCtxtEd.setLocation(ctxtEd.getLocation());  //  put new one where old was
					ctxtEd.setClosed(true);
					newCtxtEd.desktop = desktop;
					desktop.add(newCtxtEd);
					newCtxtEd.show();
					newCtxtEd.moveToFront();
					newCtxtEd.setSelected(true);
					newCtxtEd.miViewMe = menuView.add(newCtxtEd.windowNum);
					newCtxtEd.miViewMe.addActionListener(newCtxtEd);
					newCtxtEd.menuView = menuView;
				}catch(PropertyVetoException pve) {
					if (MainPane.activity == null) MainPane.createActivityLog(desktop, menuView);
					MainPane.activity.log.append("In UDPEditor:\n" + pve);
					System.out.println("In UDPEditor:\n" + pve); }
				return;
				}
			if (e.getActionCommand().equals("check"))  {
				//  Run consistency checks again, just to be sure.
				boolean errorFlag = false;
				
				String newName = name_1.getText(), msg;
				if (! Library.validateFileName(newName, true)) {
					msg = "The name '" + newName + "' violates the rules for names:\n"
						+ "The name MUST start with a star ('*') and a letter.\n" +
						"Use up to 28 LETTERS, NUMBERS, or DASHES (-) but NO SPACES.";
					JOptionPane.showMessageDialog(ed, msg, "Violation of Naming Rules", 
						JOptionPane.WARNING_MESSAGE);
					flipFinalBtn("check");
					return; 
					}
				//  Once past activity-check, we can safely record the new starName
				newStarName = newName;
				if ((! newUDP) && (! reName) && (! newStarName.equals(theUDP.starName)))  {  //  name change
					int numWithProp = 0, numWithVals = 0;
					Iterator indIter = ctxt.individualCensus.iterator();
					UserDefinedProperty udp;
					while (indIter.hasNext()) {
						udp = (UserDefinedProperty)((Individual)indIter.next()).userDefinedProperties.get(theUDP.starName);
						if (udp != null) {
							numWithProp++;
							if (udp.value.size() > 0) numWithVals++;
							}
						}  //  end of loop thru persons on this context
					int choice = JOptionPane.YES_OPTION;
					if (numWithProp > 0) {
						msg = "There are " + numWithProp + " persons with this property defined.\n" + 
								"There are " + numWithVals + " with a value for this property.\n" + 
								"Do you want to change the name of this UDP for every person?";
						choice = JOptionPane.showConfirmDialog(ed, msg, "Confirm", JOptionPane.YES_NO_OPTION);
						}  //  end of confirmed-delete-of-the UDPs-from-individuals
					if (choice == JOptionPane.YES_OPTION) reName = true;
					  //  end of User-chose-to-delete-UDP-from-all-persons
					}  //  end of name-change
				
				if (((newType.equals("boolean")) || (newType.equals("individual"))) && (newValidEntries != null)) {
					JOptionPane.showMessageDialog(ed, "Sorry.  When Data Type is '" + newType + "' you\n" +
														"cannot Restrict to Certain Values",
						"Illegal Combination", 
						JOptionPane.INFORMATION_MESSAGE);
					nocertain.setSelected(true);
					newValidEntries = null;
					errorFlag = true;
					}  //  re-checked consistency
				if ((newValidEntries != null) && (newValidEntries.size() < 1)) {
					JOptionPane.showMessageDialog(ed, "Error -- You chose to Restrict to Certain Values\n" +
														"but did not provide a valid list of allowable values.\n" +
														"Either provide a list or remove the restriction.",
						"Inconsistent Information", 
						JOptionPane.WARNING_MESSAGE);
					errorFlag = true;
					}  //  end of check for Value Restriction with no list of legal values
				if ((newType.equals("individual")) && (newDefaultValue != null))  {
					JOptionPane.showMessageDialog(ed, "Error -- You may not have a Default Value\n" +
														"when the data type is 'Person'.",
						"Inconsistent Information", 
						JOptionPane.WARNING_MESSAGE);
					errorFlag = true;
					}  //  end of check for a default individual
				if (((newType.equals("individual")) || (newType.equals("boolean")) || (newType.equals("string")))
					&& ((newMaxVal != null) || (newMinVal != null)))  {
					JOptionPane.showMessageDialog(ed, "Error -- You may not have a Maximum or Minimum Value\n" +
														"when the data type is 'Person' 'Boolean' or 'String'.",
						"Inconsistent Information", 
						JOptionPane.WARNING_MESSAGE);
					errorFlag = true;
					}  //  end of check for min/max val of non-numeric data
				if (! validateDefaultVal())   errorFlag = true; //  re-check consistency: default value & data type
				if (! validateMinText())   errorFlag = true; 
				if (! validateMaxText())   errorFlag = true; 
				if (! errorFlag) flipFinalBtn("save");
				return;
				}
			if (e.getActionCommand().equals("save"))  {
				ctxt.saveState = true;
				String oldName = theUDP.starName, oldType = theUDP.typ;
				theUDP.starName = newStarName;
				theUDP.typ = newType;
				theUDP.validEntries = newValidEntries;
				theUDP.singleValue = newSingleValue;
				theUDP.defaultValue = newDefaultValue;
				theUDP.minVal = newMinVal;
				theUDP.maxVal = newMaxVal;
				if (newUDP || reName) {
					if (ctxt.userDefinedProperties == null) ctxt.userDefinedProperties = new TreeMap();
					ctxt.userDefinedProperties.put(newStarName, theUDP);
					}
				if ((reName) && (oldName != null)) ctxt.userDefinedProperties.remove(oldName);
				
				progBox.setVisible(true);
				progressBar.setStringPainted(true);
				UserDefinedProperty oldudp, newInstance;
				Individual ind;
				Iterator indIter = ctxt.individualCensus.iterator();
				
				if (newUDP)  {  //  no possible clashes: just make one for each person
					while (indIter.hasNext()) {
						ind = (Individual)indIter.next();
						newInstance = new UserDefinedProperty(theUDP, true);  //  clone the new template
						if (ind.userDefinedProperties == null) 
							ind.userDefinedProperties = new TreeMap();
						ind.userDefinedProperties.put(newStarName, newInstance);
						progressBar.setValue(ind.serialNmbr);
						}  //  end of loop thru individuals
				}else  {  //  revised UDP could be inconsistent with some existing instances of old definition
					if (! oldType.equals(newType))  {  // type clash, instance 'value' fields must be empty
						while (indIter.hasNext()) {
							ind = (Individual)indIter.next();
							if (reName) ind.userDefinedProperties.remove(oldName);
							newInstance = new UserDefinedProperty(theUDP, false);  //  clone the new template
							ind.userDefinedProperties.put(newStarName, newInstance);
							progressBar.setValue(ind.serialNmbr);
							}  //  end of loop thru individuals
					}else if (newSingleValue && (! theUDP.singleValue))  {  // no type clash but arity clash
						while (indIter.hasNext()) {
							ind = (Individual)indIter.next();
							oldudp = (UserDefinedProperty)ind.userDefinedProperties.get(oldName);
							if (reName) ind.userDefinedProperties.remove(oldName);
							newInstance = new UserDefinedProperty(theUDP, false);  //  clone the new template
							if (validValsChanged) {  //  check for change in valid entries
								for (int i=0; i < oldudp.value.size(); i++)  
									if (newValidEntries.contains(oldudp.value.get(i)))  {
										newInstance.value.add(oldudp.value.get(i));
										i = 10000000;  // only add first conforming value
										}
							}else if (oldudp.value.size() > 0) 
								newInstance.value.add(oldudp.value.get(0));  //  add first value from old value list
							ind.userDefinedProperties.put(newStarName, newInstance);
							progressBar.setValue(ind.serialNmbr);
							}  //  end of loop thru individuals
					}else  {  // no type clash, no arity clash 
						while (indIter.hasNext()) {
							ind = (Individual)indIter.next();
							oldudp = (UserDefinedProperty)ind.userDefinedProperties.get(oldName);
							if (reName) ind.userDefinedProperties.remove(oldName);
							newInstance = new UserDefinedProperty(theUDP, false);  //  clone the new template
							if (validValsChanged) {  //  check for change in valid entries
								for (int i=0; i < oldudp.value.size(); i++)  
									if (newValidEntries.contains(oldudp.value.get(i)))  
										newInstance.value.add(oldudp.value.get(i));
							}else newInstance.value = oldudp.value;  //  copy the entire old value list
							if ((newInstance.value.size() < 1) && (newDefaultValue != null))  
							// there was no prior value, but now there's a default
								newInstance.value.add(newDefaultValue);
							ind.userDefinedProperties.put(newStarName, newInstance);
							progressBar.setValue(ind.serialNmbr);
							}  //  end of loop thru individuals
						}
					}
				try {  ed.setClosed(true);  
					ContextEditor newCtxtEd = new ContextEditor(ctxt);
					newCtxtEd.setLocation(ctxtEd.getLocation());  //  put new one where old was
					ctxtEd.setClosed(true);
					newCtxtEd.desktop = desktop;
					desktop.add(newCtxtEd);
					newCtxtEd.show();
					newCtxtEd.moveToFront();
					newCtxtEd.setSelected(true);
					newCtxtEd.miViewMe = menuView.add(newCtxtEd.windowNum);
					newCtxtEd.miViewMe.addActionListener(newCtxtEd);
					newCtxtEd.menuView = menuView;
				}catch (Exception ex)  {
					if (MainPane.activity == null) MainPane.createActivityLog(desktop, menuView);
					MainPane.activity.log.append("While closing UDP editor & re-building a context editor, " + ex + "\n\n");  }
				}  //  end of action = save
			if (e.getActionCommand().equals("delete"))  {
				String msg = "Are you sure you want to DELETE this UDP?";
				int choice = JOptionPane.showConfirmDialog(ed, msg, "Confirm", JOptionPane.YES_NO_OPTION);
				if (choice == JOptionPane.YES_OPTION)  {
					ctxt.saveState = true;
					ctxt.userDefinedProperties.remove(theUDP.starName);
					try {  ed.setClosed(true);  
						ContextEditor newCtxtEd = new ContextEditor(ctxt);
						newCtxtEd.setLocation(ctxtEd.getLocation());  //  put new one where old was
						ctxtEd.setClosed(true);
						newCtxtEd.desktop = desktop;
						desktop.add(newCtxtEd);
						newCtxtEd.show();
						newCtxtEd.moveToFront();
						newCtxtEd.setSelected(true);
						newCtxtEd.miViewMe = menuView.add(newCtxtEd.windowNum);
						newCtxtEd.miViewMe.addActionListener(newCtxtEd);
						newCtxtEd.menuView = menuView;
					}catch (Exception ex)  {
						if (MainPane.activity == null) MainPane.createActivityLog(desktop, menuView);
						MainPane.activity.log.append("While closing UDP editor & re-building a context editor, " + ex + "\n\n");  }
					}  //  end of confirmed deletion
				}  //  end of action = delete
			}  //  end of ActionListerner method actionPerformed
			
		}  //  end of inner class UDPListener
			
	public void flipFinalBtn(String saveORnot)  {
		if (saveORnot.equals("save"))  {
			udpCheckSave.setActionCommand("save");
			udpCheckSave.setText("Save");
			}  //  end of flip to SAVE
		else {
			udpCheckSave.setActionCommand("check");
			udpCheckSave.setText("Check for Errors");
			}  //  end of flip to CHECK
		}  //  end of method flipFinalBtn



	public void validateCertainVals()  {
		//  Can't get here if typ = indiv or boolean
		validValsChanged = true;
		String theVals = certainText.getText();
		ArrayList<Object> safetyNet = new ArrayList<Object>(newValidEntries);  // in case the edits were bad
		newValidEntries.clear();
		int start = 0, nextComma = 0, length = theVals.length();
		//  In effect, we reverse the logic of getValidEntriesString
		try {
			if (newType.equals("string")) 
				while (nextComma < length) {
					nextComma = theVals.substring(start).indexOf(",");
					if (nextComma == -1) nextComma = length;
					else nextComma += start;
					newValidEntries.add(theVals.substring(start, nextComma).trim());
					start = nextComma + 1;
					}  //  end of typ = string
			else if (newType.equals("integer")) {
				while (nextComma < length) {
					nextComma = theVals.substring(start).indexOf(",");
					if (nextComma == -1) nextComma = length;
					else nextComma += start;
					newValidEntries.add(new Integer(theVals.substring(start, nextComma).trim()));
					start = nextComma + 1;
					}  
				}  //  //  end of typ = int
			else if (newType.equals("float")) {
				while (nextComma < length) {
					nextComma = theVals.substring(start).indexOf(",");
					if (nextComma == -1) nextComma = length;
					else nextComma += start;
					newValidEntries.add(new Float(theVals.substring(start, nextComma).trim()));
					start = nextComma + 1;
					}  
				}  //  end of typ = float
			}catch(NumberFormatException nfe) { 
				if (MainPane.activity == null) MainPane.createActivityLog(desktop, menuView);
				String eMsg = "The Data Type you chose is '" + newType + ".'\n" +
								"Your entries can't be accepted as that type.\nPlease try again.";
				MainPane.activity.log.append("While parsing 'int' Valid Entries:\n" + nfe + "\n" + eMsg);
				JOptionPane.showMessageDialog(this, eMsg, "Type Violation", JOptionPane.INFORMATION_MESSAGE);
				return;
			}catch(Exception exc)  {
				if (MainPane.activity == null) MainPane.createActivityLog(desktop, menuView);
				String eMsg = "Error while parsing " + newType + "s in the UDP Editor.\n" + exc + "\n"
							+ "Your entries can't be accepted as that type.\nPlease try again.";
				MainPane.activity.log.append(eMsg + "\n" + exc);
				JOptionPane.showMessageDialog(this, eMsg, "Type Violation", JOptionPane.INFORMATION_MESSAGE);
				return;
				}  //  end of catch blocks
		flipFinalBtn("check");
		return;
	}  //  end of method validateCertainVals()


		public boolean validateDefaultVal()  {
		//  Can't get here if typ = indiv
		if (! defaultValExists) return true;  //  Nothing to validate
        String defVal = defaultText.getText();
		Object safetyNet = newDefaultValue;
        if (defVal.length() > 0) {
            try {
			if (newType.equals("string")) newDefaultValue = defVal;
			else if (newType.equals("integer")) newDefaultValue = new Integer(defVal);
			else if (newType.equals("float")) newDefaultValue = new Float(defVal);
			else if (newType.equals("boolean")) {
				if (! ((defVal.equals("true")) || (defVal.equals("false"))))
					throw new KinshipSystemException("Did not enter 'true' or 'false'.");
				else newDefaultValue = new Boolean(defVal);
				}  //  end of type=boolean
		}catch(Exception exc)  {
			if (MainPane.activity == null) MainPane.createActivityLog(desktop, menuView);
			String eMsg = "Error while parsing " + newType + "s in the UDP Editor.\n" + exc + "\n"
						+ "Your 'Default Value' can't be accepted as that type.\nPlease try again.";
			MainPane.activity.log.append(eMsg + "\n" + exc);
			JOptionPane.showMessageDialog(this, eMsg, "Type Violation", JOptionPane.INFORMATION_MESSAGE);
			newDefaultValue = safetyNet;
			return false;
			}  //  end of catch block
		//  Check for consistency with Restricted Values
		if ((newValidEntries != null) && (newValidEntries.size() > 0) && (! newValidEntries.contains(newDefaultValue)))  {
			if (MainPane.activity == null) MainPane.createActivityLog(desktop, menuView);
			String eMsg = "Sorry.  Your default value of " + defVal + " is not valid.\n"
						+ "You have Restricted Values for this UDP.\nPlease try again.";
			MainPane.activity.log.append(eMsg);
			JOptionPane.showMessageDialog(this, eMsg, "Restricted Value Violation", JOptionPane.INFORMATION_MESSAGE);
			newDefaultValue = safetyNet;
			return false;
			}  //  end of inconsistent-with-Valid-Entries
		flipFinalBtn("check");
		return true;
		}else {  //  default required but none entered
            JOptionPane.showMessageDialog(this, "You have not entered a Default Value.\n" +
                    "Either enter one or click 'No' default.",
                    "None Entered", JOptionPane.INFORMATION_MESSAGE);
            return false;
		}  //  end of none entered
       }  //  end of method validateDefaultVal()
		
	public boolean validateMinText()  {
		//  The Min field is only valid for data types of integer and float (Real Number)
		Number newVal;
		if (minText.getText().equals("")) return true;
		try {
			if (newType.equals("float")) newVal = new Float(minText.getText());
			else newVal = new Integer(minText.getText());
		}catch(NumberFormatException nfe)  {
			if (MainPane.activity == null) MainPane.createActivityLog(desktop, menuView);
			String eMsg = "Sorry.  Your Minimum Value of '" + minText.getText() + "' is not a valid "
						+ newType + ".\nPlease try again.";
			MainPane.activity.log.append(eMsg);
			JOptionPane.showMessageDialog(this, eMsg, "Invalid Minimum Value", JOptionPane.INFORMATION_MESSAGE);
			return false;
			}  //  end of catch block
		if ((newValidEntries != null) && (newValidEntries.size() > 0) && (newValidEntries.get(0) instanceof Number))
			for (int i=0; i < newValidEntries.size(); i++)
				if (((Number)newValidEntries.get(i)).floatValue() < newVal.floatValue())  {
					if (MainPane.activity == null) MainPane.createActivityLog(desktop, menuView);
					String eMsg = "Sorry.  Your Minimum Value of '" + newVal + "' is greater than "
								+ newValidEntries.get(i) + ", one of your 'Certain Values.'\nPlease try again.";
					MainPane.activity.log.append(eMsg);
					JOptionPane.showMessageDialog(this, eMsg, "Invalid Minimum Value", JOptionPane.INFORMATION_MESSAGE);
					return false;
					}  //  end of activity-found
		if ((newDefaultValue != null) && (newDefaultValue instanceof Number) 
					&& (((Number)newDefaultValue).floatValue() < newVal.floatValue()))  {
			if (MainPane.activity == null) MainPane.createActivityLog(desktop, menuView);
			String eMsg = "Sorry.  Your Minimum Value of '" + newVal + "' is greater than "
						+ newDefaultValue + ", your Default Value.\nPlease try again.";
			MainPane.activity.log.append(eMsg);
			JOptionPane.showMessageDialog(this, eMsg, "Invalid Minimum Value", JOptionPane.INFORMATION_MESSAGE);
			return false;
			}
		if ((newMaxVal != null) && (newMaxVal.floatValue() < newVal.floatValue()))  {
			if (MainPane.activity == null) MainPane.createActivityLog(desktop, menuView);
			String eMsg = "Sorry.  Your Minimum Value of '" + newVal + "' is greater than "
						+ newMaxVal + ", your Maximum Value.\nPlease try again.";
			MainPane.activity.log.append(eMsg);
			JOptionPane.showMessageDialog(this, eMsg, "Invalid Minimum Value", JOptionPane.INFORMATION_MESSAGE);
			return false;
			}
		newMinVal = newVal;
		return true;
		}  //  end of method validateMinText


	public boolean validateMaxText()  {
		//  The Max field is only valid for data types of integer and float (Real Number)
		Number newVal;
		if (maxText.getText().equals("")) return true;
		try {
			if (newType.equals("float")) newVal = new Float(maxText.getText());
			else newVal = new Integer(maxText.getText());
		}catch(NumberFormatException nfe)  {
			if (MainPane.activity == null) MainPane.createActivityLog(desktop, menuView);
			String eMsg = "Sorry.  Your Maximum Value of '" + maxText.getText() + "' is not a valid "
						+ newType + ".\nPlease try again.";
			MainPane.activity.log.append(eMsg);
			JOptionPane.showMessageDialog(this, eMsg, "Invalid Maximum Value", JOptionPane.INFORMATION_MESSAGE);
			return false;
			}  //  end of catch block
		if ((newValidEntries != null) && (newValidEntries.size() > 0) && (newValidEntries.get(0) instanceof Number))
			for (int i=0; i < newValidEntries.size(); i++)
				if (((Number)newValidEntries.get(i)).floatValue() > newVal.floatValue())  {
					if (MainPane.activity == null) MainPane.createActivityLog(desktop, menuView);
					String eMsg = "Sorry.  Your Maximum Value of '" + newVal + "' is less than "
								+ newValidEntries.get(i) + ", one of your 'Certain Values.'\nPlease try again.";
					MainPane.activity.log.append(eMsg);
					JOptionPane.showMessageDialog(this, eMsg, "Invalid Maximum Value", JOptionPane.INFORMATION_MESSAGE);
					return false;
					}  //  end of activity-found
		if ((newDefaultValue != null) && (newDefaultValue instanceof Number) 
					&& (((Number)newDefaultValue).floatValue() > newVal.floatValue()))  {
			if (MainPane.activity == null) MainPane.createActivityLog(desktop, menuView);
			String eMsg = "Sorry.  Your Maximum Value of '" + newVal + "' is less than "
						+ newDefaultValue + ", your Default Value.\nPlease try again.";
			MainPane.activity.log.append(eMsg);
			JOptionPane.showMessageDialog(this, eMsg, "Invalid Maximum Value", JOptionPane.INFORMATION_MESSAGE);
			return false;
			}
		if ((newMinVal != null) && (newMinVal.floatValue() > newVal.floatValue()))  {
			if (MainPane.activity == null) MainPane.createActivityLog(desktop, menuView);
			String eMsg = "Sorry.  Your Maximum Value of '" + newVal + "' is less than "
						+ newMinVal + ", your Minimum Value.\nPlease try again.";
			MainPane.activity.log.append(eMsg);
			JOptionPane.showMessageDialog(this, eMsg, "Invalid Maximum Value", JOptionPane.INFORMATION_MESSAGE);
			return false;
			}
		newMaxVal = newVal;
		return true;
		}  //  end of method validateMinText
		
	}  //  end of class UDPEditor
	
