/*
    A basic extension of the java.awt.Dialog class
 */
//  KinshipEditor
//
//  Created by Michael D. Fischer on 11/07/2006.
//  Copyright (c) 2006, Centre for Social Anthropology and Computing, 
//  University of Kent. All rights reserved.
//
//
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions
//  are met:
//
//  Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//  Redistributions in binary form must reproduce the above copyright
//  notice, this list of conditions and the following disclaimer in the
//  documentation and/or other materials provided with the distribution.
//  Neither the name of the Centre for Social Anthropology and Computing,
//  University of Kent nor the names of its contributors may be used 
//  to endorse or promote products derived from this software without
//  specific prior written permission.  THIS SOFTWARE IS PROVIDED BY THE 
//  COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED
//  WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES 
//  OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE 
//  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS 
//  BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, 
//  OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
//  OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; 
//  OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF 
//  LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
//  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS 
//  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//  



import java.awt.*;
import java.net.*;
import java.io.*;
import java.util.*;


public class HelpDialog extends Dialog {

	public static String Eol = System.getProperty("line.separator");
	
	public HelpDialog(Frame parent, boolean modal) {

	    super(parent, modal);

		//{{INIT_CONTROLS
		setLayout(null);
		setBackground(new Color(0xf0e0d0));
		resize(insets().left + insets().right + 480,insets().top + insets().bottom + 360);
		
		helpChoice = new java.awt.Choice();
		helpChoice.setFont(new Font("Dialog", Font.BOLD, 14));
		helpChoice.reshape(insets().left + 25,insets().top + 23,438,24);
		helpChoice.setBackground(new Color(0xf8f8f8));
		add(helpChoice);

		textArea1 = new java.awt.TextArea();
		textArea1.setEditable(false);
		textArea1.reshape(insets().left + 25,insets().top + 50,428,273);
		textArea1.setFont(new Font("Times", Font.BOLD, 14));
		textArea1.setBackground(new Color(0xf8f8f8));

		add(textArea1);
		button1 = new java.awt.Button("OK");
		button1.setFont(new Font("Dialog", Font.BOLD, 12));
		button1.reshape(insets().left + 212,insets().top + 330,60,23);
		add(button1);
		setTitle("Help");
		//}}
}

	public HelpDialog(Frame parent, String title, boolean modal) {
	    this(parent, modal);
	    setTitle(title);
	}

    public synchronized void show() {
    	Rectangle bounds = getParent().bounds();
    	Rectangle abounds = bounds();

    	move(bounds.x + (bounds.width - abounds.width)/ 2,
    	     bounds.y + (bounds.height - abounds.height)/2);

    	super.show();
    }

	public boolean handleEvent(Event event) {
	    if(event.id == Event.WINDOW_DESTROY) {
	       this.hide();
	        return true;
	    }
		if (event.target == button1 && event.id == Event.ACTION_EVENT) {
			button1_Clicked(event);
			return true;
		}
		if (event.target == helpChoice && event.id == Event.ACTION_EVENT) {
			helpChoice_Action(event);
			return true;
		}
		return super.handleEvent(event);
	}

	//{{DECLARE_CONTROLS
	java.awt.TextArea textArea1;
	java.awt.Button button1;
	java.awt.Choice helpChoice;
	java.util.Vector toc=null;
	//}}
	
	void helpChoice_Action(Event event) {
	//{{CONNECTION
		int x = helpChoice.getSelectedIndex();
		textArea1.setText(((String []) toc.elementAt(x))[1]);
		textArea1.select(0,1);
	//}}
	}
	
	void button1_Clicked(Event event) {

			 
		//{{CONNECTION
		hide();
		//}}
	}
	
	public boolean getHelp(URL Context) {
		URL theURL=null;
		try {
			theURL = new URL(Context,"help.txt");
		} catch (Exception e) {
			theURL=null;
		} 
		if (theURL != null) {
			BufferedInputStream theStream;
			DataInputStream diStream;
			try {
				InputStream a = theURL.openStream();
				theStream = new BufferedInputStream(a);
				
			} catch (java.io.IOException e) {
				theStream = null;
			// 	System.out.println("URL Stream is NULL!");
				
				
String k = "*** Creating People or Unions"+Eol+
""+Eol+
"Click at an empty point of the workspace approximately where you"+Eol+
"want a new PERSON or UNION to appear. A menu will appear at that"+Eol+
"point. Choose the symbol you want. To cancel the menu without"+Eol+
"making a choice, click somewhere outside the menu boundaries."+Eol+
""+Eol+
"*** Deleting People or Unions"+Eol+
""+Eol+
"Hold down the CONTROL (CTRL) key and click on a symbol. This will be"+Eol+
"deleted along with its relationships."+Eol+
""+Eol+
"If you are running Kinship Editor as an application the Delete"+Eol+
"All entry under the File Menu deletes all people, unions and"+Eol+
"relationships."+Eol+
""+Eol+
"*** Relating People and Unions"+Eol+
""+Eol+
"Drag a PERSON to either the top or bottom of a UNION."+Eol+
" Dragging to the top of a UNION symbol (=)"+Eol+
"adds a link to that PERSON as a parent/spouse, dragging to the"+Eol+
"bottom of a UNION symbol adds the PERSON as a child/sibling."+Eol+
""+Eol+
"*** Deleting relationships"+Eol+
""+Eol+
"Drag  a PERSON to either the top or bottom of a"+Eol+
"UNION. If there was a relationship, it will be deleted."+Eol+
""+Eol+
"The Delete All entry under the File Menu deletes all people,"+Eol+
"unions and relationships."+Eol+
""+Eol+
"*** Moving People and Unions"+Eol+
""+Eol+
"Click on and drag a PERSON or UNION symbol to move it. The links"+Eol+
"will automatically be redrawn. If you hold down the SHIFT key and"+Eol+
"move a UNION, you will also move the immediate nuclear family"+Eol+
"associated with that UNION. If you hold down the ALT (or OPTION"+Eol+
"or COMMAND) key while moving a UNION you will move the entire"+Eol+
"lineage descended from that UNION."+Eol+
""+Eol+
"*** Entering information about PEOPLE and UNIONS"+Eol+
""+Eol+
"A limited amount of information can be entered about people or"+Eol+
"unions in this demonstration version. Click on a person or union."+Eol+
"The symbol should turn red. You can then fill in the information"+Eol+
"at the top of the window. Information is not recorded unless you"+Eol+
"a) change to a different field, or b) type the TAB key. Normally"+Eol+
"this suggests that the last entry should be followed by a TAB. In"+Eol+
"particular the formation dates, end dates, birth dates and death"+Eol+
"dates are be used for the 'animated' genealogy feature. (See"+Eol+
"Animated Genealogies)"+Eol+
""+Eol+
"This information is displayed when a person is selected by"+Eol+
"clicking on them."+Eol+
""+Eol+
"*** Animated Genealogies"+Eol+
""+Eol+
"Animated genealogies are useful for observing the development of"+Eol+
"relationships over time."+Eol+
""+Eol+
"If you enter a year in the YEAR field, only people alive and"+Eol+
"unions active in or before that year will be displayed. People"+Eol+
"who are deceased and unions terminated as of that year will be"+Eol+
"drawn with a bar through the symbol. If you enter a second year"+Eol+
"in the field to the right of the YEAR field as well, and click"+Eol+
"the STEP button, the genealogy will be redrawn from year to year"+Eol+
"to show the progression from the intial state to the final state."+Eol+
""+Eol+
"*** Labelling People in the Genealogy"+Eol+
""+Eol+
"If you have entered names for people these names can be used to"+Eol+
"label the symbols. The menu just to the top left of the Comment"+Eol+
"field choose the labelling style. The choices are No Label,"+Eol+
"Initials, First Name, Last Name and Whole. You can change your"+Eol+
"choice at any time and the new labelling style will come into"+Eol+
"immediate use. This does not affect the way you enter names, only"+Eol+
"the display on the genealogy."+Eol+
""+Eol+
"If you do not enter names, default names Person 1, Person 2 etc."+Eol+
"are generated automatically."+Eol+
""+Eol+
"*** Making the diagram static"+Eol+
""+Eol+
"If you check the Editable box, the diagram can be changed. If it"+Eol+
"is unchecked, the diagram is immutable. This is useful for"+Eol+
"preparing set examples, particularly for use in the applet"+Eol+
"version of Kinship Editor, which can then be used as a diagram"+Eol+
"display tool. The Fix Ego checkbox currently locks the display"+Eol+
"when checked. Its use will be expanded in future versions."+Eol+
""+Eol+
"*** Saving your genealogy"+Eol+
""+Eol+
"The File Menu has a save option when Kinship Editor is not"+Eol+
"embedded as an applet. Genealogies are saved in XML, (eXtended"+Eol+
"Markup Language). XML is the basis of a whole series of document"+Eol+
"technologies that will allow documents to be used with a range of"+Eol+
"applications. These files can also be displayed in XML aware"+Eol+
"browsers and wordprocessors."+Eol+
""+Eol+
"Select SAVE in the File Menu, and a dialogue box will let you"+Eol+
"select a file name. These should ordinarily end in .xml if you"+Eol+
"want to use this file for future analysis. This is optional"+Eol+
"however. The genealogical information, the data associated with"+Eol+
"each person and union, the positions on the screen, the marking"+Eol+
"of ego (indicated in red), whether the diagram can be edited, the"+Eol+
"labelling mode and the start and end years of the animation"+Eol+
"option are all saved."+Eol+
""+Eol+
""+Eol+
"*** Loading a genealogy"+Eol+
""+Eol+
"If you are running Kinship Editor as an application there is a"+Eol+
"Load option under the File Menu. Select LOAD, choose a filename,"+Eol+
"and it will be loaded and rendered. We are currently working on"+Eol+
"XML conversion tools to convert existing genealogical formats"+Eol+
"into the file format we use."+Eol+
""+Eol+
"If you are running KE on a web page, there is a menu of choices"+Eol+
"near the top left of the window that includes genealogies you can"+Eol+
"load."+Eol+
""+Eol+
"*** Using Kinship Editor on a Web Page"+Eol+
""+Eol+
"If you insert code similar to the following in a web page you can"+Eol+
"deploy your own examples:"+Eol+
""+Eol+
"<APPLET CODE=\"KinshipEditor.class\" archive=\"Kinedit90applet.jar\""+Eol+
"	WIDTH=620 HEIGHT=480>"+Eol+
"	<param name=\"URL\" value=\"a8.xml\"><param name=\"Edit\" value=\"yes\">"+Eol+
"	<param name=\"URL1\" value=\"a8.xml\"><param name=\"LABEL1\" value=\"a8\">"+Eol+
"	<param name=\"URL2\" value=\"a9.xml\"><param name=\"LABEL2\" value=\"a9\">"+Eol+
"</APPLET>"+Eol+
""+Eol+
"The URL param is the genealogy to display upon starting up. Edit"+Eol+
"indicates if the diagram can be edited or not, overriding the"+Eol+
"setting saved in the genealogy file. URL1 through URL30 are menu"+Eol+
"choices available to the user running this web page."+Eol+
"LABEL1-LABEL30 are what to call these in the menu. If LABELS are"+Eol+
"not entered, the file name is used instead.  The genealogy files"+Eol+
"must be on the same server and in the same folder on that server"+Eol+
"as the web page in which Kinship Editor is embedded. You can also"+Eol+
"run the web page directly from your local disk."+Eol;

			theStream = new BufferedInputStream(new StringBufferInputStream(k));

			//	return false;
			}
			try {
				diStream = new DataInputStream(theStream);
		  	} catch (Exception e) {
					// "Stream is not Available";
					return(false);
			}
			if (diStream != null) {
			   	try {
			   		String Eol = System.getProperty("line.separator");
			   		String x="";
			   		toc = new Vector(30);
			   		String[] en=null;
			   		for(;x != null;) { 
			   			x = diStream.readLine();
			   			if (x != null) {
			   				if (!x.startsWith("***"))  en[1] = en[1] + x + Eol;
			   				else {
			   					en = new String[2];
			   					en[0] = x;
			   					toc.addElement(en);
			   					helpChoice.addItem(x);
			   					x = diStream.readLine(); // skip blank line
			   					if (!x.equals(""))  en[1] = x + Eol;
			   					else en[1] = "";
			   				}
			   			}
			   		}
			   		textArea1.setText(((String []) toc.elementAt(0))[1]);
			   		helpChoice.select(0);
			   	//	textArea1.select(0,0);
			   		return true;
			   	} catch (Exception e) {
			 		// "Probably at End of File";
			 		try {
			 			diStream.close();
			 		} catch (Exception ex) {}
					return(true);
				}
			} else {
				 	 //"Stream not open";
					return(false);
			}

		}
		return false;
	}


}
