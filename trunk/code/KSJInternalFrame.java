

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.*;
import java.beans.*;

/** 
The KSJInternalFrame class provides a common field (miViewMe) for all JInternalFrame windows 
in the Kinship system, plus a pointer to the "View" menu which lists this frame.
The miViewMe field, when non-null, holds a pointer to this frame's entry in a "View" menu.
<p>
This class handles the tidying up of the View menu when a window is closed, and the Listener which
brings this window to the top when it is chosen from the View menu. </p>

@author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
*/
public class KSJInternalFrame extends JInternalFrame 
             implements InternalFrameListener, ActionListener {
    
    JMenuItem miViewMe;
    JMenu menuView;
    JDesktopPane desktop;
    JTextArea log;  //  for use by activity-logging function only
    String windowNum = "Untitled Window";
    
    public KSJInternalFrame(String title)  {
        super(title, true, true, true, true);
    }

    
    public void actionPerformed(ActionEvent e)  {  // listens for selection in the "View" menu
        try { 
            if (isIcon()) setIcon(false);
            show();   
            moveToFront();
            setSelected(true);
        }catch(PropertyVetoException pv) {}
    }  
    
    
    
    public void internalFrameClosed(InternalFrameEvent e) { }
    
    public void internalFrameClosing(InternalFrameEvent e) {
        if ((menuView != null) && (miViewMe != null)) menuView.remove(miViewMe);
        if (this instanceof LibBrowser)  {
            LibBrowser lb;
            for (int i=0; i < MainPane.openBrowsers.size(); i++)  {
                lb = (LibBrowser)MainPane.openBrowsers.get(i);
                if (lb == this) {
                    MainPane.openBrowsers.remove(i);
                    i = 100;
                }  //  end of if (lb == this)
            }  //  end of loop thru MainPane.openBrowsers
        //  end of if (this instanceof LibBrowser)
		} else if (this instanceof FamilyEditor)  {
            FamilyEditor fe;
            for (int i=0; i < MainPane.openFamilyEditors.size(); i++)  {
                fe = (FamilyEditor)MainPane.openFamilyEditors.get(i);
                if (fe == this) {
                    MainPane.openFamilyEditors.remove(i);
                    i = 100;
                }  //  end of if (fe == this)
            }  //  end of loop thru MainPane.openBrowsers
        //  end of if (this instanceof FamilyEditor)
		} else if (this instanceof PersonEditor)  {
            PersonEditor fe;
            for (int i=0; i < MainPane.openPersonEditors.size(); i++)  {
                fe = (PersonEditor)MainPane.openPersonEditors.get(i);
                if (fe == this) {
                    MainPane.openPersonEditors.remove(i);
                    i = 100;
                }  //  end of if (fe == this)
            }  //  end of loop thru MainPane.openBrowsers
        //  end of if (this instanceof FamilyEditor)
		} else if (this instanceof ContextEditor) MainPane.curr_CUC_Editor = null;
	}  //  end of method internalFrameClosing
    
    public void internalFrameOpened(InternalFrameEvent e) { }
    
    public void internalFrameIconified(InternalFrameEvent e) { }
    
    public void internalFrameDeiconified(InternalFrameEvent e) { }
    
    public void internalFrameActivated(InternalFrameEvent e) { }
    
    public void internalFrameDeactivated(InternalFrameEvent e) { }    

}
