
import java.util.*;
import java.io.*;
import javax.swing.*;

/** 
The Library holds all the {@link Context}s that are active.  Each language or culture has its own Context.
It maintains a directory of all known Contexts; it reads them into memory and writes them out as needed.
Contexts are stored & accessed by language-name.
<p>
There is only one Library.  All methods and fields are static.

@author		Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
 */
public class Library {

    /** The list of all activeContexts, indexed by language name. */
    public static TreeMap activeContexts = new TreeMap();
    static JFileChooser fc = null;
    /** The default directory (or folder) holding this Library's material. */
    public static String libraryDirectory = makeLibDir();
    /** The default directory (or folder) holding Contexts. */
    public static String libraryCtxtDirectory = libraryDirectory + "Contexts/";
    /** The default directory (or folder) holding Domain Theory Files (*.thy). */
    public static String thyDirectory = libraryDirectory + "Domain Theory Files/";
    /** The default directory for the current User. */
    public static String userDirectory = System.getProperty("user.dir");
    /** The default directory for the current User's SILK files. */
    public static String editDirectory = libraryDirectory + "Context Under Construction/";
    /** The name of the current User's default context. */
    public static String userContextName = "";
    public static String currDataAuthor = "";
    public static ArrayList<ContextStub> stubs = new ArrayList<ContextStub>();
    /** The name of the current User's target culture. */
    public static Context contextUnderConstruction;
    static ClauseIndex cbIndex, baseCBIndex;
    static ClauseCounts cbCounts;
    private static DFA theDFA;
    static TreeMap ktSigTree, ktSigCompressed;
    static TreeMap predEncodings;		//  langName => predName => KTD_Coder
    static TreeMap predDecodings;		// langName => String[] where the element #codeNmbr is the predName
    static ClusterState clSt;
    static int currentActivity = 0;
    /** The language name most recently chosen in the Languages Menu. */
    public static String currentLanguage = "English";  // 
    static final int DATA_GATHERING = 0;
    static final int BROWSING = 1;
    static final int SUGGESTIONS = 2;
    static final int ADMIN = 3;
    static String PASSWORD = "SIL";
    static final int MAX_DRS_BEFORE_GUESS = 4;
    static final float ONE = 1f;
    static final float ZERO = 0f;
    static Runtime RUNNER = Runtime.getRuntime();
    static int NORMAL = 0, TEST = 1,
            CB_PTR_COMPARE_MODE = NORMAL,
            baseCB_Wait = 0,
            inductionWait = 0,
            maxExpansionStringDist = 5,
            maxLevelForExpansion = 4;
    static float minHitPerCent = 0.75f;
    static boolean parseClauseCounterOn = true,
            allowOverWrites = false,
            includeSourceDT = false,
            errorCorrectionOn = true,
            synUmbDetectOn = true,
            preXML = false;

    static DFA getDFA() throws KSParsingErrorException {
        if (theDFA != null) {
            return theDFA;
        } else {
            theDFA = new DFA();
            theDFA.loadFromFile(libraryDirectory + "Kin_DFA");
        }
        return theDFA;
    }  //  end of method getDFA

    static String makeLibDir() {
        String userHOME = System.getProperty("user.dir");
        File tempFile = new File(userHOME);
        String tempParent = tempFile.getParent();
        System.out.println("Library Directory is: " + tempParent + "/Library/");
        return tempParent + "/Library/";
    }

    static class ContextStub {

        String languageName;
        boolean adrThyExists, refThyExists, cenFileExists;

        ContextStub(String langName) {
            languageName = langName;
        }

        ContextStub() {
        }

        public String toString() {
            String image = languageName + ", ";
            if (adrThyExists) {
                image += "true" + ", ";
            } else {
                image += "false" + ", ";
            }
            if (refThyExists) {
                image += "true, ";
            } else {
                image += "false, ";
            }
            if (cenFileExists) {
                image += "true";
            } else {
                image += "false";
            }
            return image;
        }  //  end of over-riding method toString()
    }  //  end of inner class ContextStub

    /** Return a String representing <code>num</code> with commas separating the thousands, etc. 

    @param	num		the number to be 'comified.'	*/
    public static String commafy(long num) {
        Long nmbr = new Long(num);
        String raw = nmbr.toString();
        int len = raw.length();
        if (len < 4) {
            return raw;
        }
        if (len < 7) {
            int last = len - 3;
            return raw.substring(0, last) + "," + raw.substring(last);
        }
        if (len < 10) {
            int last = len - 3, mid = len - 6;
            return raw.substring(0, mid) + "," + raw.substring(mid, last) + "," + raw.substring(last);
        }
        int last = len - 3, mid = len - 6, frt = len - 9;
        return raw.substring(0, frt) + "," + raw.substring(frt, mid) + "," + raw.substring(mid, last) + "," + raw.substring(last);
    }  //  end of method commafy(long)

    /** Return a String representing <code>num</code> with commas separating the thousands, etc. 

    @param	num		the number to be 'comified.'	*/
    public static String commafy(int num) {
        Integer nmbr = new Integer(num);
        String raw = nmbr.toString();
        int len = raw.length();
        if (len < 4) {
            return raw;
        }
        if (len < 7) {
            int last = len - 3;
            return raw.substring(0, last) + "," + raw.substring(last);
        }
        if (len < 10) {
            int last = len - 3, mid = len - 6;
            return raw.substring(0, mid) + "," + raw.substring(mid, last) + "," + raw.substring(last);
        }
        int last = len - 3, mid = len - 6, frt = len - 9;
        return raw.substring(0, frt) + "," + raw.substring(frt, mid) + "," + raw.substring(mid, last) + "," + raw.substring(last);
    }  //  end of method commafy(int)

    /** Read in the Library's ContextStub array (stubs) from disk.  Also read in the Library's ClauseBodyIndex.
    Read directory and contextName information for contextUnderConstruction.   

    @throws JavaSystemException	if files are corrupted or missing.	*/
    public static void readStubFile() throws JavaSystemException {
        String fileName = libraryDirectory + "Contexts.stub", line;
        int num, comma, start = 0, size;
        BufferedReader file;
        try {
            file = new BufferedReader(new FileReader(fileName));
        } catch (FileNotFoundException e) {
            throw new JavaSystemException("ContextStub File Not Found:\n" + e);
        }
        try {
            line = file.readLine();
            size = Integer.parseInt(line);
            line = file.readLine();
            num = Integer.parseInt(line);
            currentActivity = num;
            line = file.readLine();
            currentLanguage = line.trim();
            line = file.readLine();
            start = line.indexOf("=");
            if (start == -1) {
                throw new JavaSystemException("ContextStub File Corrupted: EqualSign not Found.");
            }
            if (line.length() > ++start) {

                userDirectory = line.substring(start);
            }
            line = file.readLine();
            start = line.indexOf("=");
            if (start == -1) {
                throw new JavaSystemException("ContextStub File Corrupted: EqualSign not Found.");
            }
            if (line.length() > ++start) {
                userContextName = line.substring(start);
            }
            line = file.readLine();
            start = line.indexOf("=");
            if (start == -1) {
                throw new JavaSystemException("ContextStub File Corrupted: EqualSign not Found.");
            }
            if (line.length() > ++start) {
                editDirectory = line.substring(start);
            }
            line = file.readLine();
            num = Integer.parseInt(line);
            MainPane.testSerialNmbr = num;
            line = file.readLine();
            SIL_Edit.helpScreenOnStartUp = Boolean.parseBoolean(line);
            for (int i = 0; i < size; i++) {
                ContextStub cs = new ContextStub();
                line = file.readLine();
                start = 0;
                comma = line.indexOf(",", start);
                if (comma == -1) {
                    throw new JavaSystemException("ContextStub File Corrupted: Comma not Found.");
                }
                cs.languageName = line.substring(start, comma);
                start = comma + 2;
                comma = line.indexOf(",", start);
                cs.adrThyExists = Boolean.valueOf(line.substring(start, comma)).booleanValue();
                start = comma + 2;
                comma = line.indexOf(",", start);
                cs.refThyExists = Boolean.valueOf(line.substring(start, comma)).booleanValue();
                start = comma + 2;
                cs.cenFileExists = Boolean.valueOf(line.substring(start)).booleanValue();
                stubs.add(cs);
            }  //  end of for-j=each-line
        } catch (NumberFormatException e) {
            throw new JavaSystemException("ContextStub or ClauseIndex File Corrupted:\n" + e);
        } catch (FileNotFoundException fnf) {
            throw new JavaSystemException("ReadStubFile IO Error: " + fnf);
        } catch (IOException io) {
            throw new JavaSystemException("IO Error in ReadStubFile: " + io);
        }
        stubs = stubSort(stubs);
    }  //  end of method readStubFile()

    /** Read in the User's ContextUnderConstruction from disk.

    @throws JavaSystemException	if file is corrupted or missing.	*/
    public static void readUserContext() throws JavaSystemException {
        String filePath = userDirectory + "/" + userContextName + ".ctxt";
        try {
            contextUnderConstruction = readContextFromDisk(filePath, false);
            contextUnderConstruction.saveState = false;  //  becomes true if any edits made
        } catch (IOException e) {
            throw new JavaSystemException("UserContext File Not Found:\n" + e);
        } catch (ClassNotFoundException cnf) {
            throw new JavaSystemException("While reading a UserContext File:\n" + cnf);
        }
        currentActivity = DATA_GATHERING;
    }  //  end of static method readUserContext() 

    /** Allow User to choose a new ContextUnderConstruction via a FileChooser.

    @param window	the current SILKin main window in which the file chooser dialog should be displayed.

    @throws JavaSystemException	if file is corrupted or missing.	*/
    public static void chooseUserContext(KSJInternalFrame window) throws JavaSystemException {

        if ((contextUnderConstruction != null) && contextUnderConstruction.saveState) {
            String msg = "You have a Context open already.  Save changes or data\n "
                    + "for '" + contextUnderConstruction.languageName + "' before closing it?";
            Object[] options = {"Save Data First", "Close It"};
            int choice = JOptionPane.showOptionDialog(window, msg, "Save Prior Context?",
                    JOptionPane.YES_NO_OPTION,
                    JOptionPane.QUESTION_MESSAGE,
                    null, //don't use a custom Icon
                    options, //the titles of buttons
                    options[0]); //default button title
            if (choice == 0) {
                try {
                    saveUserContext(window, false);
                } catch (Exception ex) {
                    throw new JavaSystemException("While Saving User Context '"
                            + contextUnderConstruction.languageName + "'\n" + ex);
                }
            }
        }  //  end of there-was-already-a-UserContext
        File userDir = new File(userDirectory);
        if (fc == null) {
            fc = new JFileChooser();
            fc.setCurrentDirectory(userDir);
        }
        fc.setFileSelectionMode(JFileChooser.FILES_AND_DIRECTORIES);
        fc.setDialogTitle("Choose the Context file holding your work-in-progress.");
        MainPane.ContextFilter filter = new MainPane.ContextFilter();
        fc.setFileFilter(filter);  //  set file filter for *.ctxt ONLY
        //  Display File-Open dialog and get User's selection
        int returnVal = fc.showOpenDialog(MainPane.desktop);
        if (returnVal == JFileChooser.APPROVE_OPTION) {
            try {
                String fileName = fc.getSelectedFile().getCanonicalPath();
                contextUnderConstruction = readContextFromDisk(fileName, false);
            } catch (IOException e) {
                throw new JavaSystemException("UserContext File Not Found:\n" + e);
            } catch (ClassNotFoundException cnf) {
                throw new JavaSystemException("While reading a UserContext File:\n" + cnf);
            }
            currentActivity = DATA_GATHERING;
            userContextName = contextUnderConstruction.languageName;
            try {
                userDirectory = fc.getCurrentDirectory().getCanonicalPath();
            } catch (IOException iox) {
                throw new JavaSystemException("UserContext Directory Path Not Found:\n" + iox);
            }
        } //  end of if-returnVal=Approve
        else {  // if they cancel out
            String msg = "To perform Data Gathering, there must be a context (a language or culture) to which the data pertains.\n"
                    + "A 'context' file stores all the data about a particular language/culture/project.\n"
                    + "You must choose an existing context file or create a new one.";
            Object[] options = {"Choose Existing", "Create New", "Close Data-Gathering Window"};
            int choice = JOptionPane.showOptionDialog(window, msg, "Data Must Have a Context",
                    JOptionPane.YES_NO_CANCEL_OPTION,
                    JOptionPane.QUESTION_MESSAGE,
                    null, //don't use a custom Icon
                    options, //the titles of buttons
                    options[0]); //default button title
            if (choice == 1) {
                createUserContext(window);
            } else if (choice == 0) {
                chooseUserContext(window);
            } //  user either closed the dialogue box or picked "Close Data-Gathering Window"
            else if (currentActivity == DATA_GATHERING) {
                window.doDefaultCloseAction();
            }
        }  // end of they-cancel-out
    }  //  end of static method chooseUserContext

    /** Gather the basic information to create a new Context from scratch.  Then save it in UserDirectory.

    @param	window	the current SILKin main window, in which the file chooser dialog should be displayed.

    @throws JavaSystemException	if file is corrupted or missing.	*/
    public static void createUserContext(KSJInternalFrame window) throws JavaSystemException {
        if (fc == null) {
            fc = new JFileChooser();
            if (!userDirectory.equals("")) {
                File userDir = new File(userDirectory);
                fc.setCurrentDirectory(userDir);
            }
        }
        String msg = "What is the name of the culture/language for which you'll be gathering kinship terms?\n"
                + "The name must start with a letter.\n"
                + "Use up to 28 letters, numbers, or dashes (-) but NO spaces.";
        String langName, author, date, fileName = "<empty>", oldUserDir = userDirectory;
        langName = JOptionPane.showInputDialog(msg);
        while (!validateFileName(langName, false)) {
            msg = "What is the name of the culture/language for which you'll be gathering kinship terms?\n"
                    + "The name '" + langName + "' violates the rules for names:\n"
                    + "The name MUST start with a letter.\n"
                    + "Use up to 28 LETTERS, NUMBERS, or DASHES (-) but NO SPACES.";
            langName = JOptionPane.showInputDialog(msg);
        }  //  end of harrass-em-until-they-give-a-good-name
        msg = "Please enter the name of the researcher or author of this data (presumably you).\n"
                + "Use any characters or spaces you like.";
        author = JOptionPane.showInputDialog(msg);
        msg = "Kinship 'terms of reference' are the terms Ego uses to refer to (talk about) Alter.\n"
                + "Kinship 'terms of address' are the terms Ego uses to address (speak directly to) Alter.\n"
                + "In most languages they're the same, so you only need to gather terms of reference.\n"
                + "We'll create a 'domain theory' for terms of reference.  If you later discover that there are\n"
                + "separate terms of address, you can add a 2nd domain theory.";
        JOptionPane.showMessageDialog(window, msg);
        msg = "Is polygamy prohibited in " + langName + "?";
        String[] options = {"Not Allowed", "Permitted or Tolerated"};
        int choice = JOptionPane.showOptionDialog(window, msg, "Polygamy By Men or Women",
                JOptionPane.YES_NO_OPTION,
                JOptionPane.QUESTION_MESSAGE,
                null, //don't use a custom Icon
                options, //the titles of buttons
                options[1]); //default button title
        date = UDate.today();
        DomainTheory dt = new DomainTheory(langName, author, date, true);
        if (choice == 0) {
            dt.polygamyOK = false;
        }
        Context userCtxt, formerCurrentContext = Context.current;
        userCtxt = new Context(dt);  //  the constructor automatically sets 'current' to the new context
        Context.current = formerCurrentContext;
        File trial;
        int returnVal;
        boolean redo = true, writeIt;
        while (redo) {
            redo = false;  //  only loop if redo gets changed
            returnVal = chooseDirectory(window, "Choose the Directory to Save Your Context");
            if (returnVal == JFileChooser.APPROVE_OPTION) {
                try {
                    userDirectory = fc.getSelectedFile().getCanonicalPath();
                    fileName = userDirectory + "/" + langName + ".ctxt";
                    trial = new File(fileName);
                    writeIt = !trial.exists();
                    if (!writeIt) {
                        msg = "The file " + fileName + " already exists.";
                        options[0] = "OverWrite";
                        options[1] = "Cancel";
                        choice = JOptionPane.showOptionDialog(window, msg, "CAUTION: File OverWrite",
                                JOptionPane.YES_NO_OPTION,
                                JOptionPane.QUESTION_MESSAGE,
                                null, //don't use a custom Icon
                                options, //the titles of buttons
                                options[1]); //default button title
                        if (choice == 0) {
                            writeIt = true;
                        } else {
                            redo = true;
                        }
                    }  //  end of don't-write-It
                    if (writeIt) {
                        ObjectOutputStream out = new ObjectOutputStream(new FileOutputStream(fileName));
                        out.writeObject(userCtxt);
                        out.flush();
                        contextUnderConstruction = userCtxt;
                        userContextName = langName;
                        currentActivity = DATA_GATHERING;
                        msg = "Your data will now be stored in the Context " + langName + ", which will be saved to disk \nafter each"
                                + " session in " + userDirectory + ".\nIf you wish to edit your Context to fill in other fields,"
                                + " choose 'Edit > User Context' from the menu.";
                        JOptionPane.showMessageDialog(window, msg);
                    } // end of Write-It
                } catch (FileNotFoundException fnf) {
                    throw new JavaSystemException("While attempting to write to " + userDirectory + ":\n" + fnf);
                } catch (IOException ix) {
                    throw new JavaSystemException("While attempting to write " + fileName + ":\n" + ix);
                }

            } //  end of User-Chose-A-Directory
            else {  // They canceled out.  BUMMER.  Erase everything.
                msg = "Because you cancelled the saving of your Context " + langName + ", it will be erased.\n"
                        + "If your goal is to create a TEMPORARY context, you should create AND SAVE one, then delete it later.\n"
                        + "To create a Context, choose File > New > UserContext from the menu.";
                JOptionPane.showMessageDialog(window, msg);
                userDirectory = oldUserDir;
            }  //  end of they-cancelled
        }  // end of while-loop
    }  //  end of static method createUserContext


    /*	Generic directory chooser.

    @param	window	the current SILKin main window in which the file chooser dialog should be displayed.
    @param	title	to be displayed on the file chooser window	*/
    public static int chooseDirectory(KSJInternalFrame window, String title) {
        fc.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
        fc.setDialogTitle(title);
        fc.setApproveButtonText("Choose Directory");
        return fc.showOpenDialog(window);
    }  //  end of method chooseDirectory

    static boolean validateFileName(String name, boolean starName) {
        if ((name == null) || (name.length() < 1)
                || (starName && (name.length() < 2))) {
            return false;
        }
        name = name.trim();
        if (starName) {  //  this is a name that must start with a '*'
            if (!name.substring(0, 1).equals("*")) {
                return false;
            }
            name = name.substring(1);  //  after checking that first char is *, check rest normally
        }
        if (name.length() > 28) {
            return false;
        }
        char[] characters = name.toCharArray();
        if (!((JavaLex.check(characters[0], "SmLtr"))
                || (JavaLex.check(characters[0], "CapLtr")))) {
            return false;
        }
        for (int i = 1; i < characters.length; i++) {
            if (!((JavaLex.check(characters[i], "SmLtr"))
                    || (JavaLex.check(characters[i], "CapLtr"))
                    || (JavaLex.check(characters[i], "Digit"))
                    || (JavaLex.check(characters[i], "Dash")))) {
                return false;
            }
        }  //  end of loop thru characters in the fileName
        return true;
    }  //  end of method validateFileName


    /*	There is only one context the User can save - the contextUnderConstruction; write it out..

    @throws	NotSerializableException	if the User context is not serializable
    @throws IOException			if file system activity
    @throws	FileNotFoundException	if (duh!) file not found.	*/
    public static void saveUserContext(KSJInternalFrame frame, boolean newName)
            throws NotSerializableException, IOException, FileNotFoundException, 
            KSInternalErrorException, KSDateParseException {
        String msg, extension;
        msg = "Save this context in which format?\n"
                + "A .ctxt file is a Java binary file (internal use).\n"
                + "A .silk file is used by the Kinship Editor and SILKin";
        String[] options = {".silk", ".ctxt"};
        int formatChoice = JOptionPane.showOptionDialog(frame, msg, "Choose File Format",
                JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE,
                null, options, options[0]);
        if (formatChoice == 0) {
            extension = ".silk";
        } else {
            extension = ".ctxt";
        }
        userContextName = contextUnderConstruction.languageName;
        String filePath = userDirectory + "/" + userContextName + extension;
        if (!newName) {  //  save-as-is
            if (formatChoice == 0) {
                contextUnderConstruction.writeSILKFile(new File(filePath));
            } else {
                ObjectOutputStream out = new ObjectOutputStream(new FileOutputStream(filePath));
                out.writeObject(contextUnderConstruction);
                out.flush();
            }
        } //  end of save-as-is
        else {  //  save-with-new-name
            if (fc == null) {
                fc = new JFileChooser();
            }
            fc.setFileSelectionMode(JFileChooser.FILES_AND_DIRECTORIES);
            fc.setDialogTitle("Choose a Directory and FileName for Your Context");
            fc.setApproveButtonText("Save Context As");
            File defaultPlace = new File(filePath);
            fc.setSelectedFile(defaultPlace);
            int returnVal;
            boolean redo = true, writeIt;
            while (redo) {
                redo = false;  //  only loop if redo gets changed
                returnVal = fc.showSaveDialog(frame);
                if (returnVal == JFileChooser.APPROVE_OPTION) {
                    filePath = fc.getSelectedFile().getCanonicalPath();
                    File trial = new File(filePath);
                    writeIt = !trial.exists();
                    if (!writeIt) {
                        msg = "The file\n" + filePath + "\nalready exists.";
                        options[0] = "OverWrite";
                        options[1] = "Cancel";
                        int choice = JOptionPane.showOptionDialog(frame, msg, "CAUTION: File OverWrite",
                                JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE,
                                null, options, options[1]);
                        if (choice == 0) {
                            writeIt = true;
                        } else {
                            redo = true;
                        }
                    }  //  end of don't-write-It
                    if (writeIt) {
                        String fileName = trial.getName();
                        int surname = fileName.lastIndexOf(".");
                        fileName = fileName.substring(0, surname);
                        if (!fileName.equals(contextUnderConstruction.languageName)) {
                            msg = "Normally, the file name for a context is the same as the language name "
                                    + "\nfor that context.  Change this context's language\n"
                                    + "name to " + fileName + "?";
                            options[0] = fileName;
                            options[1] = contextUnderConstruction.languageName;
                            int choice = JOptionPane.showOptionDialog(frame, msg, "Confirm Correct Language Name",
                                    JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE,
                                    null, options, options[0]);
                            if (choice == 0) {
                                contextUnderConstruction.languageName = fileName;
                            }
                        }
                        if (formatChoice == 0) {
                            contextUnderConstruction.writeSILKFile(new File(filePath));
                        } else {
                            ObjectOutputStream out = new ObjectOutputStream(new FileOutputStream(filePath));
                            out.writeObject(contextUnderConstruction);
                            out.flush();
                        }
                        userContextName = contextUnderConstruction.languageName;
                        msg = fileName + " is now your current User Context,\n"
                                + "and will be the default context for all future work.\n"
                                + "To pick a different context, use File > Open Context.";
                        JOptionPane.showMessageDialog(frame, msg,
                                "Changing the Current User Context",
                                JOptionPane.INFORMATION_MESSAGE);
                    } // end of Write-It
                }  //  end of User-Chose-A-Directory
            }  //  end while
        }  //  end of save-with-new-name
    } //  end of method saveUserContext

    /*  Save the contextUnderConstruction in the libraryCtxtDirectory as a .ctxt file.
     *  There are not parameters or options. Intended for use by SIL_Edit to let a field user
     *  edit the context they are creating.

    @throws	NotSerializableException	if the User context is not serializable
    @throws     IOException			if file system activity
    @throws	FileNotFoundException	if (duh!) file not found.	*/
    public static void saveUserContext()
            throws NotSerializableException, IOException, FileNotFoundException, KSInternalErrorException {
        userContextName = contextUnderConstruction.languageName;
        String filePath = libraryCtxtDirectory + "/" + userContextName + ".ctxt";
        ObjectOutputStream out = new ObjectOutputStream(new FileOutputStream(filePath));
        out.writeObject(contextUnderConstruction);
        out.flush();
        out.close();
    } //  end of method saveUserContext

    /*	 Let user choose a Context file and delete it. If it's the current contextUnderConstruction,
    then erase Library pointers to it.

    @param	window	the current SILKin main window in which the file chooser dialog should be displayed. 	*/
    public static void deleteContext(KSJInternalFrame frame) {
        //
        if (fc == null) {
            File userDir = null;
            if (!userDirectory.equals("")) {
                userDir = new File(userDirectory);
            }
            fc = new JFileChooser();
            fc.setCurrentDirectory(userDir);
        }
        fc.setFileSelectionMode(JFileChooser.FILES_AND_DIRECTORIES);
        fc.setDialogTitle("Choose the Context to Delete.");
        fc.setApproveButtonText("Delete Context");
        fc.setFileFilter(new MainPane.ContextFilter());  //  set file filter for *.ctxt ONLY
        if (fc.showOpenDialog(frame) == JFileChooser.APPROVE_OPTION) {
            File deadwood = fc.getSelectedFile();
            String fileName = deadwood.getName(), origName = userDirectory + "/" + userContextName + ".ctxt";
            deadwood.delete();
            if (fileName.indexOf(origName) != -1) {  //  we-deleted-current-UserContext
                userContextName = "";
                contextUnderConstruction = null;
            }  //  end of we-deleted-current-UserContext
        }  //  end of if-user-picks-one
    }  //  end of method deleteContext

    /** This is a simple Insertion Sort for alphabetizing ContextStub objects in an ArrayList.  
    It runs in linear time times the number of out-of-order elements.  Since stubs
    will almost always have at most 1 element out of order, this should be quick.

    @param  stubs   an ArrayList<ContextStub>, to be sorted on 'languageName'

    @return    a sorted array
     */
    public static ArrayList<ContextStub> stubSort(ArrayList<ContextStub> stubs) {
        final int EQUAL = 0, LESS = -1, MORE = 1;
        int size = stubs.size(), comp, j;
        if (size < 2) {
            return stubs;
        }
        ArrayList<ContextStub> sorted = new ArrayList<ContextStub>();
        String newGuy, existingGuy;
        sorted.add(stubs.get(--size));
        for (int i = --size; i >= 0; i--) {
            newGuy = stubs.get(i).languageName;
            j = -1;
            comp = MORE;
            while ((j < sorted.size() - 1) && (comp > LESS)) {
                j++;
                existingGuy = sorted.get(j).languageName;
                comp = newGuy.compareToIgnoreCase(existingGuy);
            }  //  end of while-loop
            if (comp >= MORE) {
                j++;
            }
            sorted.add(j, stubs.get(i));
        }  //  end of loop thru stubs contents
        return sorted;
    }  //  end of static method stubSort

    /** Write out the Library's ArrayList<ContextStub> (stubs) to disk.  */
    public static void writeStubFile() throws JavaSystemException {
        String fileName = libraryDirectory + "Contexts.stub";
        try {
            PrintWriter outFile = new PrintWriter(new BufferedWriter(new FileWriter(fileName)));
            outFile.println(stubs.size());
            outFile.println(currentActivity);
            outFile.println(currentLanguage);
            outFile.println("userDir=" + userDirectory);
            outFile.println("userCtxt=" + userContextName);
            outFile.println("editDir=" + editDirectory);
            outFile.println(MainPane.testSerialNmbr);
            outFile.println(SIL_Edit.helpScreenOnStartUp);
            for (ContextStub stub : stubs) {
                outFile.println(stub);
            }
            outFile.flush();
            outFile.close();
            //      writeCBIndexFile();
        } catch (IOException e) {
            throw new JavaSystemException("ContextStub or CBIndex File Creation failed:\n" + e);
        } //  end of catch block
    }  //  end of method writeStubFile

    /** Make a new version of the Library's ArrayList<ContextStub> (stubs) which omits this stub.
    Also delete this context from ActiveContexts, if it is there.
    
    @param  cs   one element of the ContextStub array.
     */
    public static void removeContextStub(ContextStub cs) {
        stubs.remove(cs);
        activeContexts.remove(cs.languageName);
    }  //  end of method removeContextStub

    static void addToKTSigTrees(KinTermDef ktd) throws KSParsingErrorException, JavaSystemException,
            KSInternalErrorException, KSConstraintInconsistency, KSBadHornClauseException, FileNotFoundException,
            KSNoChainOfRelations2Alter, ClassNotFoundException {
        if (ktd.eqcSigExact == null) {
            ktd.makeSigStrings();
        }
        //  First add to KTSigTree (exact)
        if (ktSigTree.get(ktd.eqcSigExact) == null) {
            ktSigTree.put(ktd.eqcSigExact, new ArrayList<Object>());
        }
        ArrayList<Object> eqcs = (ArrayList<Object>) ktSigTree.get(ktd.eqcSigExact);
        boolean slurp = false;
        for (int i = 0; i < eqcs.size(); i++) {
            KTD_EQC eqc = (KTD_EQC) eqcs.get(i);
            if (eqc.canAssimilate(ktd, null)) {
                eqc.members.add(new KTD_Ptr(ktd));
                i = eqcs.size();
                slurp = true;
            }  //  end of it can assimilate me
        }  //  end of loop thru eqcs
        if (!slurp) {
            eqcs.add(new KTD_EQC(ktd.eqcSigExact, ktd));
        }
    }  //  end of method addToKTSigTrees

    static void writeKTSig(PrintWriter outFile, String typ) throws IOException {
        //  format for the file will be:
        //  exactSig { KTD_EQC, KTD_EQC ....}
        //	exactSig { KTD_EQC, KTD_EQC ....}
        //  ..... and so on
        TreeMap tree = (typ.equals("full") ? ktSigTree : ktSigCompressed);
        int siz = (typ.equals("full") ? ktSigTree.size() : ktSigCompressed.size());
        System.out.println("\nwrote KinTerm Signature Tree (" + typ + ") with " + siz + " EQCs.");
        Iterator iter = tree.entrySet().iterator();
        while (iter.hasNext()) {
            Map.Entry entry = (Map.Entry) iter.next();
            outFile.print(entry.getKey() + " { ");
            ArrayList<Object> eqcs = (ArrayList<Object>) entry.getValue();
            Iterator eqiter = eqcs.iterator();
            KTD_EQC eqc = (KTD_EQC) eqiter.next();
            outFile.print(eqc.toString("Ditto"));
            while (eqiter.hasNext()) {
                eqc = (KTD_EQC) eqiter.next();
                outFile.print(" " + eqc.toString("Ditto"));
            }
            outFile.println(" }");
        }  //  end of loop thru Signature Strings
        outFile.flush();
        outFile.close();
    }  //  end of method writeKTSig

    static TreeMap readKTSig(BufferedReader file) throws JavaSystemException, IOException {
        TreeMap map = new TreeMap();
        String line = file.readLine();
        while (line != null) {
            int start = 0, end = line.indexOf("{");
            if (end == -1) {
                throw new JavaSystemException("Corrupted KT Signature Tree file, no {");
            }
            String sigString = line.substring(start, end - 1);
            ArrayList<Object> eqcs = new ArrayList<Object>();
            map.put(sigString, eqcs);
            start = end + 2;
            while (start > 1) {
                end = line.indexOf("))", start);
                eqcs.add(new KTD_EQC(line.substring(start, end + 2), sigString));
                start = line.indexOf("((", end);
            }
            start = line.indexOf("}", end);
            if (start == -1) {
                throw new JavaSystemException("Corrupted KT Signature Tree file, no final '}'");
            }
            line = file.readLine();  //  read the next line
        }  //  end of processing 1 Signature String
        return map;
    }  //  end of method readKTSig

    static TreeMap mergeKTSigTrees(TreeMap map1, TreeMap map2) throws JavaSystemException,
            KSParsingErrorException, KSConstraintInconsistency, KSInternalErrorException, KSBadHornClauseException,
            KSNoChainOfRelations2Alter, ClassNotFoundException, FileNotFoundException {
        TreeMap newMap = new TreeMap(map1);
        Iterator topIter = map2.entrySet().iterator();
        while (topIter.hasNext()) {
            Map.Entry entry = (Map.Entry) topIter.next();
            String sigString = (String) entry.getKey();
            ArrayList<Object> eqc2 = (ArrayList<Object>) entry.getValue(), nulLst = null,
                    eqc1 = (ArrayList<Object>) newMap.get(sigString);
            if (eqc1 == null) {
                newMap.put(sigString, eqc2);
            } else {  //  2 lists; merge 'em
                Iterator iter2 = eqc2.iterator();
                while (iter2.hasNext()) {
                    KTD_EQC jeanLuc = (KTD_EQC) iter2.next();
                    boolean resistanceWasFutile = false;
                    for (int i = 0; i < eqc1.size(); i++) {
                        KTD_EQC borg = (KTD_EQC) eqc1.get(i);
                        if (borg.canAssimilate(jeanLuc.prototype.getKTD(nulLst), null)) {
                            borg.members.addAll(jeanLuc.members);
                            i = eqc1.size();  //  break out of loop
                            resistanceWasFutile = true;
                        }  //  end of borg assimilates
                    }  //  end of loop thru eqc1
                    if (!resistanceWasFutile) {
                        eqc1.add(jeanLuc);
                    }
                }  //  end of loop thru eqc2
            }  //  end of else-merge-the-lists
            topIter.remove();
        }  //  end of loop thru top-level keys: sigStrings
        return newMap;
    }  //  end of method mergeKTSigTrees

    static TreeMap compress(TreeMap ktSig) {
        //  ktSig is a full KinTerm Signature Tree: 1 entry for each unique signature string
        //  Most entries have a single KTD_EQC which has a single member
        //  In smallMap, delete those single-single entries.
        TreeMap smallMap = new TreeMap();
        Iterator iter = ktSig.entrySet().iterator();
        while (iter.hasNext()) {
            Map.Entry entry = (Map.Entry) iter.next();
            String sigString = (String) entry.getKey();
            ArrayList<Object> eqcs = (ArrayList<Object>) entry.getValue();
            if (eqcs.size() > 1) {
                smallMap.put(sigString, eqcs);
            } else if (((KTD_EQC) eqcs.get(0)).members.size() > 1) {
                smallMap.put(sigString, eqcs);
            }
        }	//  end of loop thru entries
        return smallMap;
    }  //  end of method compress

    static void writePredEncodings(String suffix) throws JavaSystemException {
        String subDir = (suffix.equals("") ? "PredEncodings" : "Index Segments/PredEncodings"),
                fileName = libraryDirectory + subDir + suffix;  //  langName => predName => KTD_Coder
        try {
            PrintWriter outFile = new PrintWriter(new BufferedWriter(new FileWriter(fileName)));
            Iterator bigIter = predEncodings.entrySet().iterator();
            while (bigIter.hasNext()) {
                Map.Entry bigEntry = (Map.Entry) bigIter.next();
                String langName = (String) bigEntry.getKey();
                TreeMap langTree = (TreeMap) bigEntry.getValue();
                Iterator lilIter = langTree.entrySet().iterator();
                outFile.println(langName + " {");
                while (lilIter.hasNext()) {
                    Map.Entry lilEntry = (Map.Entry) lilIter.next();
                    String predName = (String) lilEntry.getKey();
                    KTD_Coder coder = (KTD_Coder) lilEntry.getValue();
                    outFile.println(predName + " " + coder);
                }  //  end of lil loop
                outFile.println("}");
            }  //  end of big loop
            outFile.flush();
            outFile.close();
        } catch (IOException e) {
            throw new JavaSystemException("PredEncodings File Creation failed:\n" + e);
        } //  end of catch block
    }  //  end of method writePredEncodings

    static void readPredEncodings() throws JavaSystemException {
        try {
            BufferedReader file = new BufferedReader(new FileReader(libraryDirectory + "PredEncodings"));
            predEncodings = readPredEncodings(file);
        } catch (IOException io) {
            throw new JavaSystemException("IO Error in PredEncodings: " + io);
        }
    }

    static TreeMap readPredEncodings(BufferedReader file) throws JavaSystemException {
        TreeMap tMap = new TreeMap();  //  langName => predName => KTD_Coder
        try {
            String line = file.readLine();
            while (line != null) {
                int end = line.indexOf(" {"), start, code;
                String langName = line.substring(0, end);
                TreeMap langTree = new TreeMap();
                tMap.put(langName, langTree);
                line = file.readLine();
                while (!line.equals("}")) {
                    end = line.indexOf(" ");
                    String predName = line.substring(0, end);
                    start = end + 1;
                    end = line.indexOf(" ", start);
                    code = Integer.parseInt(line.substring(start, end));
                    KTD_Coder coder = new KTD_Coder(code, line.substring(end + 1));
                    langTree.put(predName, coder);
                    line = file.readLine();
                }  //  end of loop thru predCodes
                line = file.readLine();  //  ignore the '}'
            }
        } catch (NumberFormatException e) {
            throw new JavaSystemException("PredEncodings File Corrupted:\n" + e);
        } catch (IndexOutOfBoundsException ioob) {
            throw new JavaSystemException("PredEncodings File Corrupted:\n" + ioob);
        } catch (IOException io) {
            throw new JavaSystemException("IO Error in PredEncodings: " + io);
        }
        return tMap;
    }  //  end of method readPredEncodings

    static void writePredDecodings(String suffix) throws JavaSystemException {
        String subDir = (suffix.equals("") ? "PredDecodings" : "Index Segments/PredDecodings"),
                fileName = libraryDirectory + subDir + suffix;  //  langName => predName array
        try {
            PrintWriter outFile = new PrintWriter(new BufferedWriter(new FileWriter(fileName)));
            Iterator iter = predDecodings.entrySet().iterator();
            while (iter.hasNext()) {
                Map.Entry entry = (Map.Entry) iter.next();
                String langName = (String) entry.getKey();
                String[] pNames = (String[]) entry.getValue();
                outFile.println(langName + " " + pNames.length + "{");
                for (int i = 0; i < pNames.length; i++) {
                    outFile.println(pNames[i]);
                }
                outFile.println("}");
            }
            outFile.flush();
            outFile.close();
        } catch (IOException e) {
            throw new JavaSystemException("PredDecodings File Creation failed:\n" + e);
        } //  end of catch block
    }  //  end of method writePredDecodings

    static void readPredDecodings() throws JavaSystemException {
        try {
            BufferedReader file = new BufferedReader(new FileReader(libraryDirectory + "PredDecodings"));
            predDecodings = readPredDecodings(file);
        } catch (IOException io) {
            throw new JavaSystemException("IO Error in PredDecodings: " + io);
        }
    }

    static TreeMap readPredDecodings(BufferedReader file) throws JavaSystemException {
        TreeMap tMap = new TreeMap();
        try {
            String line = file.readLine();
            while (line != null) {
                int end = line.lastIndexOf(" "), num = 0, size, start;
                String langName = line.substring(0, end);
                start = end + 1;
                end = line.indexOf("{", start);
                size = Integer.parseInt(line.substring(start, end));
                String[] pNames = new String[size];
                tMap.put(langName, pNames);
                line = file.readLine();
                while (!line.equals("}")) {
                    pNames[num++] = line;
                    line = file.readLine();
                }  //  end of loop thru predNames
                line = file.readLine();  //  ignore the '}'
            }
        } catch (NumberFormatException e) {
            throw new JavaSystemException("PredDecodings File Corrupted:\n" + e);
        } catch (IndexOutOfBoundsException ioob) {
            throw new JavaSystemException("PredDecodings File Corrupted:\n" + ioob);
        } catch (IOException io) {
            throw new JavaSystemException("IO Error in PredDecodings: " + io);
        }
        return tMap;
    }  //  end of method readPredDecodings

    /*	Return the length (in characters) of a nested expression beginning with a left-paren
    or a left-square-bracket. The length includes both the opening and closing paren/brackets.

    @param		nested	a nested expression.	*/
    public static int nestLength(String nested) {
        //  nested has an opening '(' or '['.  Find the length from there to end of the
        //  complete list or parenthetical expression
        int pos = 0, count = 0;
        for (int i = 0; i < nested.length(); i++) {
            char ch = nested.charAt(i);
            if (ch == '(' || ch == '[' || ch == '{') {
                count++;
            } else if (ch == ')' || ch == ']' || ch == '}') {
                count--;
            }
            if (count == 0) {
                pos = i + 1;
                i = nested.length();
            }
        }
        return pos;
    }  //  end of method nestLength

    static String makeCCBS(ClauseBody cb) {
        //  Create a String:  clause body, level
        //  Use predicate codes in the body  e.g. c12 = 12th cultural predicate
        StringBuffer ccbs = new StringBuffer(40 * cb.body.size());
        String langNam = cb.ktd.domTh.languageName;
        TreeMap predCodes = (TreeMap) predEncodings.get(langNam);
        ccbs.append(predEncode(cb.body.toString(), langNam)).append(cb.level);
        return ccbs.toString();
    }  //  end of method makeCCBS

    static String predEncode(String lits, String languageName) {
        //  All lits will have primitive predicates (from an ExpandedDef) or UDPs
        //  Replace all primitive predicates with 'pxx' where xx = primitive predicate code (numeric)
        StringBuffer buf = new StringBuffer(lits);
        int start = 1, end = buf.indexOf("(", 1);
        while (end > -1) {
            String pred = buf.substring(start, end),
                    prefix = "p";
            Integer code = (Integer) DomainTheory.primitiveCodes.get(pred);
            if (code == null) {  //  must be a UDP
                prefix = "c";
                TreeMap predCodes = (TreeMap) predEncodings.get(languageName);
                KTD_Coder coder = (KTD_Coder) predCodes.get(pred);
                code = new Integer(coder.code);
            }
            buf.replace(start, end, prefix + code.toString());
            if (pred.equals("not")) {
                start += 3;
                end = nestLength(buf.substring(start)) + start;
                String newNest = predEncode(buf.substring(start, end), languageName);
                buf.replace(start, end, newNest);
                start = buf.indexOf(", ", start + newNest.length()) + 2;
                end = (start > 1 ? buf.indexOf("(", start) : -1);
            } else {
                start = buf.indexOf("), ", start) + 3;
                end = (start > 2 ? buf.indexOf("(", start) : -1);
            }
        }
        //  Now remove spaces & encode Ego & Alter
        start = buf.indexOf(", ");
        end = start + 2;
        while (start > -1) {
            buf.replace(start, end, ",");
            start = buf.indexOf(", ", end);
            end = start + 2;
        }
        start = buf.indexOf("Ego");
        end = start + 3;
        while (start > -1) {
            buf.replace(start, end, "@");
            start = buf.indexOf("Ego", start + 1);
            end = start + 3;
        }
        start = buf.indexOf("Alter");
        end = start + 5;
        while (start > -1) {
            buf.replace(start, end, "&");
            start = buf.indexOf("Alter", start + 1);
            end = start + 5;
        }
        return buf.toString();
    }  //  end of method predEncode

    static String predDecode(String coded, String languageName) throws JavaSystemException {
        //  Pick out the encoded predicates and decode them.  The start of an encoded pred
        //  will always be the 1st 'p' or 'c' past the end of the predicateName we just inserted.
        StringBuffer buf = new StringBuffer(coded);
        buf.ensureCapacity(2 * coded.length());
        String[] preds = (String[]) predDecodings.get(languageName);
        String predName;
        char ch;
        int start = 0,
                end = buf.indexOf("(", start),
                nextP, nextC;
        try {
            while (end > -1) {
                ch = buf.charAt(start);
                int code = Integer.parseInt(buf.substring(start + 1, end));
                if (ch == 'p') {
                    predName = DomainTheory.primPredNames[code];  //  not a UDP
                } else {
                    predName = ((String[]) predDecodings.get(languageName))[code];  //  a UDP
                }
                buf.replace(start, end, predName);
                start = end + predName.length() - 2;
                nextP = buf.indexOf("p", start);
                nextC = buf.indexOf("c", start);
                if (nextP + nextC == -2) {
                    end = -1;  //  Done.  No more p's or c's.
                } else {
                    nextP = (nextP == -1 ? Integer.MAX_VALUE : nextP);
                    nextC = (nextC == -1 ? Integer.MAX_VALUE : nextC);
                    start = Math.min(nextP, nextC);  //  nearest p or c
                    end = buf.indexOf("(", start);
                }
            }
        } catch (NumberFormatException e) {
            System.out.println("Ooops!");
            throw new JavaSystemException("CompactCBString is Corrupted:\n" + e + "\nCoded = " + coded);
        }
        //  Now decode Ego & Alter
        start = buf.indexOf("@");
        while (start > -1) {
            buf.replace(start, ++start, "Ego");
            start = buf.indexOf("@", start);
        }
        start = buf.indexOf("&");
        while (start > -1) {
            buf.replace(start, ++start, "Alter");
            start = buf.indexOf("&", start);
        }
        return buf.toString();
    }  //  end of method predDecode

    static ClauseBody decodeCCBS(String compactCBString, DomainTheory dt, String pcString)
            throws KSInternalErrorException, JavaSystemException, KSParsingErrorException {
        //  CCBS: encodedLits level
        int start = 1, end = compactCBString.indexOf("]");
        String decoded = predDecode(compactCBString.substring(start, end) + ".", dt.languageName);
        Parser stringParser = new Parser(new Tokenizer(getDFA(), new LinusFromString(decoded)));
        ClauseBody cb = stringParser.parseCBfromString(dt);
        cb.pcString = pcString;
        cb.pcStringStructural = ClauseBody.structStr(pcString);
        start = end + 1;
        try {
            cb.level = Integer.parseInt(compactCBString.substring(start));
        } catch (NumberFormatException e) {
            System.out.println("Ooops!");
            throw new JavaSystemException("CompactCBString is Corrupted:\n" + e + "\n" + compactCBString);
        }
        return cb;
    }  //  end of method decodeCCBS

    /** The Library's <code>KTD_Coder</code> class holds a numeric code (serial number) for this KTD in the
    language, plus the exactSignature for this KTD.

    @author		Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
     */
    static class KTD_Coder implements Serializable {

        String exactSigStr;
        ArrayList<Object> baseCB_SigStrings;
        int code;

        public KTD_Coder() {
            code = 0;
            exactSigStr = "";
        }  //  default constructor for serialization.

        public KTD_Coder(int cod, String stringIn) {
            code = cod;
            int start = 0, //  string may be empty
                    end = stringIn.indexOf(" ");
            if (end < 1) {
                exactSigStr = stringIn;
            } else {
                exactSigStr = stringIn.substring(start, end);
                if (stringIn.substring(end).length() > 1) {
                    baseCB_SigStrings = new ArrayList<Object>();
                    start = end + 2;  //  skip over the opening '['
                    end = stringIn.indexOf(",", start);
                    while (end > -1) {
                        String baseStr = stringIn.substring(start, end).trim();
                        baseCB_SigStrings.add(baseStr);
                        start = end + 1;
                        end = stringIn.indexOf(",", start);
                    }  //  Now pick up last string, but not closing ']'
                    baseCB_SigStrings.add(stringIn.substring(start, stringIn.length() - 1).trim());
                }  //  end of there-are-base-strings
            }  //  end of stringIn-wasn't-empty
        }  //  normal constructor for serialization.

        public String toString() {
            String bases = (baseCB_SigStrings == null ? "" : baseCB_SigStrings.toString());
            return "" + code + " " + exactSigStr + " " + bases;
        }
    }  //  end of inner class KTD_Coder

    /** The Library's <code>KTD_EQC</code> class defines equivalence classes for {@link KinTermDef}s.
    Two KTDs are equivalent if they have the same Signature String (exact) and if they have
    an identical set of positive examples.
    <p>
    Instances of KTD_EQC are stored on the Library's <code>ktSigTree</code>, indexed by signature strings.
    They are important for the Active Learning routines.

    @author		Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
     */
    static class KTD_EQC implements Comparable, Serializable {

        String sigString;
        KTD_Ptr prototype;
        ArrayList<Object> members = new ArrayList<Object>();
        ArrayList<Object> misFits, baseMisFits, baseFits, noisyPosDyads, noisyNegDyads;
        double score;

        public KTD_EQC() {
        }  //  default constructor for serialization.

        public KTD_EQC(String sigStr, KinTermDef proto) {
            sigString = sigStr;
            prototype = new KTD_Ptr(proto);
            members.add(prototype);
        }   //  end of normal constructor

        public KTD_EQC(String image, String sigStr) throws JavaSystemException {  //  for use in reading a file
            sigString = sigStr;
            int start = image.indexOf("{"),
                    end = image.indexOf("}", start) + 1;
            prototype = new KTD_Ptr(image.substring(start, end));
            members.add(prototype);
            start = image.indexOf("{", end);
            while (start > -1) {
                end = image.indexOf("}", start) + 1;
                if (end == 0) {
                    throw new JavaSystemException("Reading KTD_EQC from file: no final '}'");
                }
                members.add(new KTD_Ptr(image.substring(start, end)));
                start = image.indexOf("{", end);
            }  //  end of loop thru members
        }  //  end of constructor from input string


        String toSILKString(String bacer) {
            String spacer = "\t", dblSpacer = "\t\t";
            String s = bacer + "<kin-term-eqc>\n";
            s += bacer + spacer + "<signature-string>" + sigString + "</signature-string>\n";
            s += bacer + spacer + "<prototype>\n" + prototype.toSILKString(bacer + dblSpacer);
            s += bacer + spacer + "</prototype>\n";
            s += bacer + spacer + "<members>\n";
            int limit = Math.min(3, members.size());
            for (int i = 0; i < limit; i++) {
                KTD_Ptr kptr = (KTD_Ptr) members.get(i);
                s += kptr.toSILKString(bacer + dblSpacer);
            }
            s += bacer + spacer + "</members>\n";
            String s2 = "";
            if (misFits != null && misFits.size() > 0) {
                try {
                    KinTermDef ktd = prototype.getKTD();
                    s2 += bacer + spacer + "<unused-clauses>\n";
                    for (int i = 0; i < misFits.size(); i++) {
                        // misFits may be CBs, or Integers that point to CBs
                        ClauseBody cb = null;
                        Object o = misFits.get(i);
                        if (o instanceof Integer) {
                            Integer clawsNum = (Integer) o;
                            cb = (ClauseBody) ktd.expandedDefs.get(clawsNum);
                        } else if (o instanceof ClauseBody) {
                            cb = (ClauseBody) o;
                        }
                        s2 += cb.toSILKString(bacer + spacer + spacer);
                    }
                    s2 += bacer + spacer + "</unused-clauses>\n";
                } catch (Exception exc) {
                    s2 = "";
                    Context.breakpoint();
                } // Skip the Unused Clauses if error
            }
            s += s2 + bacer + "</kin-term-eqc>";
            return s;
        }

        public String toString() {
            return "((" + sigString + ", " + members + "))";
        }  //  end of overriding method toString

        public String toString(String sub) {
            return "((" //  + sub +  ", "   EXPERIMENTAL DELETION
                    + members + "))";
        }  //  end of supplemental method toString

        public boolean canAssimilate(KinTermDef other, ArrayList<Object> refutation)
                throws KSParsingErrorException, JavaSystemException, KSInternalErrorException, KSConstraintInconsistency,
                KSBadHornClauseException, KSNoChainOfRelations2Alter, ClassNotFoundException, FileNotFoundException {
            if (!sigString.equals(other.eqcSigExact)) {
                return false;
            }
            if (prototype.getKTD(new ArrayList<Object>()).expandedDefs.size() != other.expandedDefs.size()) {
                return false;
            }
            //  sigh!  Have to do it the hard way.
            //  We know CBs have identical sigStrings, but are not necessarily in same order, so ...
            TreeMap cbSorter = new TreeMap();
            ArrayList<Object> xpDefs = prototype.getKTD().expandedDefs;
            for (int i = 0; i < xpDefs.size(); i++) {
                //  2 CBs may share same pcString e.g. male(Ego) & female(Ego)
                ClauseBody cb = (ClauseBody) xpDefs.get(i);
                if (cbSorter.get(cb.pcString) == null) {
                    cbSorter.put(cb.pcString, new ArrayList<Object>());
                }
                ArrayList<Object> cbList = (ArrayList<Object>) cbSorter.get(cb.pcString);
                cbList.add(cb);
            }
            for (int i = 0; i < other.expandedDefs.size(); i++) {
                ClauseBody cb = (ClauseBody) other.expandedDefs.get(i);
                if (cb.pcString == null || cbSorter.get(cb.pcString) == null) {
                    Context.breakpoint();
                }
                ((ArrayList<Object>) cbSorter.get(cb.pcString)).add(cb);
            }
            boolean stillGood = true;
            Iterator iter = cbSorter.values().iterator();
            while (iter.hasNext() & stillGood) {
                ArrayList<Object> pairs = (ArrayList<Object>) iter.next(),
                        boundVars = new ArrayList<Object>();
                boundVars.add("Ego");
                ClauseBody cb0, cb1 = null;
                if (pairs.size() % 2 != 0) {
                    throw new KSInternalErrorException("KTD_EQC.canAssimilate found non-paired CBs.");
                }
                while (pairs.size() > 1 && stillGood) {
                    cb0 = (ClauseBody) pairs.remove(0);
                    boolean foundIt = false;
                    Iterator iter2 = pairs.iterator();
                    while (iter2.hasNext() && !foundIt) {
                        cb1 = (ClauseBody) iter2.next();
                        if (cb0.ktd != cb1.ktd) {
                            foundIt = cb0.isEquivalent(cb1);
                            if (foundIt) {
                                iter2.remove();
                            }
                        }
                    }  //  end of search for mate to cb0
                    if (!foundIt) {  //  Ooops - can't assimilate
                        if (refutation != null) {
                            refutation.add("missingCB");
                            refutation.add(cb1);
                        }
                        stillGood = false;
                    }
                }  //  end of loop thru pairs [while-pairs.size > 1]
            }  //  end of loop thru cbSorter values
            return stillGood;
        }  //  end of method canAssimilate

        public boolean hasMember(KinTermDef ktd) {
            String kinTerm = ktd.kinTerm,
                    langName = ktd.domTh.languageName;
            for (int i = 0; i < members.size(); i++) {
                KTD_Ptr ptr = (KTD_Ptr) members.get(i);
                if (ptr.languageName.equals(langName) && ptr.kinTerm.equals(kinTerm)) {
                    return true;
                }
            }
            return false;
        }  //  end of method hasMember

        public KTD_Ptr getMember(KinTermDef ktd) {
            String kinTerm = ktd.kinTerm,
                    langName = ktd.domTh.languageName;
            for (int i = 0; i < members.size(); i++) {
                KTD_Ptr ptr = (KTD_Ptr) members.get(i);
                if (ptr.languageName.equals(langName) && ptr.kinTerm.equals(kinTerm)) {
                    return ptr;
                }
            }
            return null;
        }  //  end of method getMember

        public void swapPrototype(KTD_Ptr kPtr) {
            prototype = kPtr;
            for (int i = 0; i < members.size(); i++) {
                KTD_Ptr mbr = (KTD_Ptr) members.get(i);
                if (mbr.kinTerm.equals(kPtr.kinTerm)
                        && mbr.languageName.equals(kPtr.languageName)) {
                    members.set(i, kPtr);
                    i = members.size();
                }
            }  //  end of loop thru members
        }  //  end of method swapPrototype

        public int countClauses() throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException,
                KSInternalErrorException, KSConstraintInconsistency, FileNotFoundException {
            int total = 0;
            KinTermDef ktd = prototype.getKTD(null);
            for (int i = 0; i < ktd.expandedDefs.size(); i++) {
                ClauseBody cb = (ClauseBody) ktd.expandedDefs.get(i);
                total += cb.body.size();
            }
            return total;
        }  //  end of method countClauses

        //  I think this formula is wrong.  New 'score' field s/b lowest distance of any member.
        public double classSimWeight() {
            TreeMap simScores = clSt.simScoresForCUC;
            double wt = 0d;
            for (int i = 0; i < members.size(); i++) {
                KTD_Ptr ptr = (KTD_Ptr) members.get(i);
                wt += 1d + ((Double) simScores.get(ptr.languageName)).doubleValue();
            }
            return wt;
        }  //  end of method classSimWeight

        /**  Provide a method of comparing 2 KTD_Ptrs for use in TreeMaps and TreeSets.	*/
        public int compareTo(Object obj) throws ClassCastException {
            if (obj == null) {
                return -1;
            }
            KTD_EQC other = (KTD_EQC) obj;
            int answer = prototype.languageName.compareTo(other.prototype.languageName);
            if (answer != 0) {
                return answer;
            }
            return prototype.kinTerm.compareTo(other.prototype.kinTerm);
        }  //  end of compareTo method; required for the Comparable interface
    }  //  end of inner class KTD_EQC

    /** This class implements a KinTermDef pointer (to be stored in KTD_EQCs in the ClauseIndex).
    It is used as a compact stand-in for a KinTermDef in set operations during learning.
    The slot for 'ktd' is used to cache the real KTD during construction.
    But when a KTD_Ptr is written to disk, the ktd is not (to conserve space); it is retrieved on demand.
     */
    static class KTD_Ptr implements Comparable, Serializable {

        static TreeMap cache = new TreeMap();  //  languageName => DT
        private KinTermDef ktd;  //  must access with getKTD method
        String languageName, kinTerm;

        public KTD_Ptr() {
        }  //  constructor for serialization.

        public KTD_Ptr(KinTermDef ktd) {    //   normal constructor.
            languageName = ktd.domTh.languageName;
            kinTerm = ktd.kinTerm;
            this.ktd = ktd;
        }  //  end of normal constructor.

        public KTD_Ptr(KinTermDef ktd, String langName) {  //  constructor for composed KTDs.
            languageName = langName;
            kinTerm = ktd.kinTerm;
            this.ktd = ktd;
        }  //  end of normal constructor.

        public KTD_Ptr(CB_Ptr cbPtr) {    //  normal constructor.
            languageName = cbPtr.languageName;
            kinTerm = cbPtr.kinTerm;
        }  //  end of constructor from CB_Ptr.

        public KTD_Ptr(String curlySet) {    //  constructor for reading from disk.  
            int end = curlySet.indexOf(","), start = 1;
            languageName = curlySet.substring(start, end);
            start = end + 2;
            end = curlySet.length() - 1;
            kinTerm = curlySet.substring(start, end);
        }  //  end of constructor from a string (from disk).

        public String toString() {
            return "{" + languageName + ", " + kinTerm + "}";
        }  //  end of method toString


        String toSILKString(String bacer) {
            String dblSpacer = "\t\t";
            String s = bacer + "<kin-term-context>\n ";
            s += ktd.toSILKString(bacer + "\t", true);
            s += bacer + "</kin-term-context>\n ";
            return s;
        }

        static String sanitize(String input) {
            return FamilyPanel.convertBannedCharacters(input);
        }

        public KinTermDef getKTD(ArrayList<Object> cbPtrLst) throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException,
                KSInternalErrorException, KSConstraintInconsistency, FileNotFoundException {
            KinTermDef answer = getKTD();  // possibly not parsed, but from cache
            ArrayList<Object> pcStrings = answer.decodeString(answer.eqcSigExact);  //  1 element of pcString corresponds to 1+ expandedDef
            if (pcStrings.size() > answer.expandedDefs.size()) {
                //  Need all the expanded clauses, but want to avoid a disk read.  Iterate thru CB PCStrings,
                //  retrieve matching CB_EQCs from CBIndex and reconstruct expandedDefs from it.
                if (cbIndex == null) {
                    BufferedReader file = new BufferedReader(new FileReader(libraryDirectory + "ClauseIndex"));
                    cbIndex = new ClauseIndex(file);
                }  //  end of load-CBindex-from-disk
                TreeMap sorter = new TreeMap();
                for (int i = 0; i < pcStrings.size(); i++) {
                    ArrayList<Object> cbEQCs = (ArrayList<Object>) cbIndex.get((String) pcStrings.get(i));
                    if (cbEQCs != null) {
                        for (int j = 0; j < cbEQCs.size(); j++) {
                            CB_EQC eqc = (CB_EQC) cbEQCs.get(j);
                            for (int k = 0; k < eqc.members.size(); k++) {
                                CB_Ptr ptr = (CB_Ptr) eqc.members.get(k);
                                if (ptr.languageName.equals(languageName)
                                        && ptr.kinTerm.equals(kinTerm)) {
                                    sorter.put(new Integer(ptr.cbSeqNmbr), ptr.getClause());
                                }
                            }  //  end of loop thru members (Ptrs) of each CB_EQC
                        }  //  end of loop thru cbEQCs
                    }
                }  //  end of loop through decoded pcStrings
                answer.expandedDefs = new ArrayList<Object>();
                answer.expandedDefs.addAll(sorter.values());
                for (int i = 0; i < answer.expandedDefs.size(); i++) {
                    ClauseBody cb = (ClauseBody) answer.expandedDefs.get(i);
                    cb.seqNmbr = i;
                }
            }  //  end of if-expDefs-is-empty
            if (cbPtrLst != null) {
                for (int i = 0; i < cbPtrLst.size(); i++) {
                    CB_Ptr cbPtr = (CB_Ptr) cbPtrLst.get(i);
                    int indx = cbPtr.cbSeqNmbr;
                    if (indx >= answer.expandedDefs.size()) {
                        Context.breakpoint();
                    }
                    if (cbPtr.clause != null) {
                        answer.expandedDefs.set(indx, cbPtr.clause);
                    } else {
                        cbPtr.clause = (ClauseBody) answer.expandedDefs.get(indx);
                        cbPtr.clause.posHit = cbPtr.posHitVal;
                    }
                }  //  end of loop thru cbPtrLst
            }
            return answer;
        }  //  end of method getKTD(ArrayList<Object>)

        KinTermDef getKTD() throws KSParsingErrorException, JavaSystemException,
                KSInternalErrorException, KSConstraintInconsistency {
            if (ktd != null && ktd.definitions.size() > 0) {
                return ktd;
            }
            DomainTheory dt = (DomainTheory) cache.get(languageName);
            if (dt != null) {
                ktd = (KinTermDef) dt.theory.get(kinTerm);
            }
            if (ktd != null && ktd.definitions.size() > 0) {  //  2nd choice: find it in cache
                if (ktd.eqcSigExact == null) {
                    ktd.retrieveSigExact();
                }
                return ktd;
            }
            //  Sigh.  Parse it all
            ktd = parseKTD();
            return ktd;
        }  //  end of getKTD method

        void getLangFromKTD() {
            if (ktd != null && ktd.domTh != null) {
                languageName = ktd.domTh.languageName;
            }
        }

        void setKTD(KinTermDef newKTD) {
            ktd = newKTD;
            if (kinTerm == null) {
                kinTerm = ktd.kinTerm;
            }
        }

        KinTermDef parseKTD() throws KSParsingErrorException, JavaSystemException,
                KSInternalErrorException, KSConstraintInconsistency {
            String fileName = libraryDirectory + "Domain Theory Files/" + languageName + ".thy";
            Linus dtLineServer = new Linus(fileName),
                    macroLineServer = new Linus(libraryDirectory + "Standard_Macros");
            Parser parzer = new Parser(new Tokenizer(getDFA(), dtLineServer), new Tokenizer(getDFA(), macroLineServer));
            ktd = parzer.parseKinTerm(kinTerm, true);
            DomainTheory dt = ktd.domTh;
            cache.put(languageName, dt);
            if (ktd.eqcSigExact == null) {
                ktd.retrieveSigExact();
            }
            return ktd;
        }  //  end of parseKTD method

        static void clearCacheDTs() throws KSInternalErrorException {
            //  For each DT in the cache, empty its 'theory' TreeMap.
            if (cache.isEmpty()) {
                return;
            }
            Iterator iter = cache.values().iterator();
            while (iter.hasNext()) {
                DomainTheory dt = (DomainTheory) iter.next();
                dt.theory.clear();
                if (dt.ctxt != null && dt.ctxt != contextUnderConstruction
                        && (dt.ctxt.indSerNumGen > 0 || dt.ctxt.famSerNumGen > 0)) {
                    dt.ctxt.resetTo(0, 0);
                }
            }
        }  //  end of static method clearCacheDTs

        /**  Provide a method of comparing 2 KTD_Ptrs for use in TreeMaps and TreeSets.	*/
        public int compareTo(Object obj) throws ClassCastException {
            if (obj == null) {
                return -1;
            }
            KTD_Ptr other = (KTD_Ptr) obj;
            int answer = languageName.compareTo(other.languageName);
            if (answer != 0) {
                return answer;
            }
            return kinTerm.compareTo(other.kinTerm);
        }  //  end of compareTo method; required for the Comparable interface
    }  //  end of inner class KTD_Ptr

    /** The Library's <code>ClauseCounts</code> class is a TreeMap with structure: LangName:kinTerm => Counter[] (cumulative counts of string length).

    @author		Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
     */
    static class ClauseCounts extends TreeMap {

        static int maxDist = 9;

        ClauseCounts() {
        }  //  default constructor

        static void loadFromDisk() throws JavaSystemException, FileNotFoundException {
            BufferedReader file = new BufferedReader(new FileReader(libraryDirectory + "ClauseCounts"));
            cbCounts = new ClauseCounts(file);
        }

        ClauseCounts(BufferedReader file) throws JavaSystemException {
            try {
                String line = file.readLine();
                while (line != null) {
                    int start = 0,
                            end = line.indexOf("\t", start);
                    String langTerm = line.substring(start, end);
                    Counter[] counters = Counter.makeArray(maxDist + 1);
                    put(langTerm, counters);
                    int posn = 0;
                    start = end + 1;
                    end = line.indexOf("\t", start);
                    while (end > -1) {
                        counters[posn++].incr(Integer.parseInt(line.substring(start, end)));
                        start = end + 1;
                        end = line.indexOf("\t", start);
                    }  //  end of loop thru cumCounts
                    counters[posn++].incr(Integer.parseInt(line.substring(start)));
                    line = file.readLine();
                }  //  end of loop thru file lines
            } catch (NumberFormatException nfe) {
                throw new JavaSystemException("While reading counts constructing ClauseCounts:\n" + nfe);
            } catch (IOException iox) {
                throw new JavaSystemException("Can't construct ClauseCounts: corrupted File.\n" + iox);
            }
        }  //  end of constructor from file

        int getCount(String key, int dist) {
            Counter[] counters = (Counter[]) get(key);
            return counters[dist].total();
        }

        void addCB(ClauseBody cb) {
            String langTerm = cb.ktd.domTh.languageName + ":" + cb.ktd.kinTerm;
            if (get(langTerm) == null) {
                put(langTerm, Counter.makeArray(maxDist + 1));
            }
            Counter[] counters = (Counter[]) get(langTerm);
            int strDist = Math.min(Math.max((cb.pcString.length() / 2) - 1, 0), maxDist);
            //  strDist = (half the length of the pcStr, rounded down) - 1.  With min of 0 and max of maxDist
            for (int i = strDist; i <= maxDist; i++) {
                counters[i].incr();
            }
        }  //  end of method addCB

        void toDisk(PrintWriter out) {
            Iterator langTermIter = entrySet().iterator();
            while (langTermIter.hasNext()) {
                Map.Entry entry = (Map.Entry) langTermIter.next();
                String langTerm = (String) entry.getKey();
                Counter[] counters = (Counter[]) entry.getValue();
                out.print(langTerm);
                for (int i = 0; i <= maxDist; i++) {
                    out.print("\t" + counters[i]);
                }
                out.println();
            }  //  end of loop thru langTerms
            out.flush();
            out.close();
            System.out.println("\nWrote ClauseCounts for " + size() + " Language:KinTerm pairs.");
        }  //  end of method toDisk

        void assimilate(ClauseCounts other) {
            putAll(other);
        }  //  end of easiest method  --  resistance WAS futile!
    }  //  end of static inner class ClauseCounts

    /** The Library's <code>ClauseIndex</code> class contains a TreeMap with key = Exact_PC-String
    and value = ArrayList<Object> of {@link CB_EQC}s.
    This class has a convenience method, <code>addToIndex</code>, which implicitly type-checks items added to the TreeMap
    (only {@link CB_Ptr}s or {@link CB_EQC}s allowed) which are stored in the leaves of the tree.
    It also has methods which facilitate writing a ClauseIndex to disk and reading it back into RAM.

    @author		Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
     */
    static class ClauseIndex implements Serializable {

        public TreeMap tMap = new TreeMap();  // Exact_PC-String => ArrayList<Object> of CB_EQCs
        int nmbrOfKinTypes = 0, nmbrOfCBs = 0, nmbrOfCB_EQCs = 0;

        public ClauseIndex() {
        }  //  default constructor.

        public ClauseIndex(BufferedReader file) throws KSInternalErrorException, JavaSystemException {
            try {
                String line = file.readLine(), exactStr;
                //  On each line, a PC-String is followed by a space + a left-square.  Then will come 1 or more
                //  double-left-paren, expression, double-right-paren sets, separated by commas.  Each line must
                //  end with a double-right-paren and a right-square.
                while (line != null) {
                    int end = line.indexOf("[") - 1;
                    exactStr = line.substring(0, end);
                    ArrayList<Object> cbEQCs = new ArrayList<Object>();
                    int start = end + 2;  //  at opening double-left of first paren-set
                    end = nestLength(line.substring(start)) + start;  //  j.e. 1 space past end of 1st paren-set
                    while (end > 1) {
                        CB_EQC cbe = new CB_EQC(line.substring(start, end));
                        cbEQCs.add(cbe);
                        nmbrOfCBs += cbe.members.size();
                        start = end + 2;
                        end = (start > line.length() ? 0 : nestLength(line.substring(start)) + start);
                    }  //  end of loop thru CB_EQCs
                    tMap.put(exactStr, cbEQCs);
                    nmbrOfKinTypes++;
                    nmbrOfCB_EQCs += cbEQCs.size();
                    line = file.readLine();
                }  //  end of processing a parenthetical line
            } catch (IOException iox) {
                throw new JavaSystemException("Can't construct ClauseIndex: corrupted File.\n" + iox);
            }
        }  //  end of constructor from file

        ArrayList<Object> get(String key) {
            return (ArrayList<Object>) tMap.get(key);
        }

        void clearCache() {
            tMap.clear();
        }  //  end of method clearCache

        void toDisk(PrintWriter outFile) throws IOException {
            Iterator topIter = tMap.entrySet().iterator();
            while (topIter.hasNext()) {
                Map.Entry topEntry = (Map.Entry) topIter.next();
                outFile.println(topEntry.getKey() + " " + topEntry.getValue());
            }  //  end of loop thru all TMap entries
            outFile.flush();
            outFile.close();
        }  //  end of method toDisk

        void merge(ClauseIndex ci2) throws KSParsingErrorException, JavaSystemException,
                KSInternalErrorException, KSConstraintInconsistency, KSBadHornClauseException,
                KSNoChainOfRelations2Alter, ClassNotFoundException {
            Iterator ci2Iter = ci2.tMap.entrySet().iterator();
            int leafMerges = 0;  //  nmbr of leaf merges (vs. additions)
            Counter eqcMerges = new Counter();  //  nmbr of CB_EQC merges
            while (ci2Iter.hasNext()) {
                Map.Entry entry = (Map.Entry) ci2Iter.next();
                String ci2Exact = (String) entry.getKey();
                ArrayList<Object> ci2EQCs = (ArrayList<Object>) entry.getValue(),
                        myEQCs = (ArrayList<Object>) tMap.get(ci2Exact);
                if (myEQCs == null) {
                    tMap.put(ci2Exact, ci2EQCs);
                } else {
                    mergeEQCs(myEQCs, ci2EQCs, eqcMerges);
                    leafMerges++;  //  merged leaves
                }
                ci2Iter.remove();
            }  //  end of loop thru entries of ci2
            nmbrOfKinTypes += ci2.nmbrOfKinTypes - leafMerges;
            nmbrOfCBs += ci2.nmbrOfCBs;
            nmbrOfCB_EQCs += ci2.nmbrOfCB_EQCs - eqcMerges.total();
        }  //  end of method merge

        void addToIndex(CB_Ptr ptr) throws KSParsingErrorException, JavaSystemException,
                KSInternalErrorException, KSConstraintInconsistency, KSBadHornClauseException,
                KSNoChainOfRelations2Alter, ClassNotFoundException {
            //  Find the branch that match's this CB_Ptr's PC_String.  Then search thru the EQCs
            //  for that branch to see if one of them can properly include this CB_Ptr as a member.
            //  If so, add it.  Else, make new EQC for this guy.
            nmbrOfCBs++;  //  no matter what happens
            String pcString = ptr.getClause().pcString;
            ArrayList<Object> cbEQCList = (ArrayList<Object>) tMap.get(pcString);
            boolean slurp = false;
            if (cbEQCList != null) {
                for (int i = 0; i < cbEQCList.size(); i++) {
                    CB_EQC other = (CB_EQC) cbEQCList.get(i);
                    if (other.canAssimilate(ptr)) {
                        other.members.add(ptr);
                        ptr.cbEQC = other;
                        if (ptr.getClause().body.size() > 0 //  Occam's Razor - prefer smaller clauses
                                && ptr.getClause().body.size() < other.prototype.getClause().body.size()) {
                            other.prototype = ptr;
                            if (!(ptr instanceof BaseCB_Ptr)) // if this is the baseCB Index, no EQC CCBS needed.
                            {
                                other.compactCBString = Library.makeCCBS(ptr.getClause());
                            }
                        }
                        slurp = true;
                        i = cbEQCList.size();
                    }
                }  //  end of loop thru CB_Ptrs
                if (!slurp) {  // Need a new CB_EQC to hold this guy
                    CB_EQC newEQC = new CB_EQC(ptr);
                    nmbrOfCB_EQCs++;
                    cbEQCList.add(newEQC);
                }
            } else {
                nmbrOfCB_EQCs++;
                nmbrOfKinTypes++;
                CB_EQC newEQC = new CB_EQC(ptr);
                cbEQCList = new ArrayList<Object>();
                cbEQCList.add(newEQC);
                tMap.put(pcString, cbEQCList);
            }
        }  //  end of method addToIndex(CB_Ptr)

        void addToIndex(CB_EQC eqc) throws KSParsingErrorException, JavaSystemException,
                KSInternalErrorException, KSConstraintInconsistency, KSBadHornClauseException,
                KSNoChainOfRelations2Alter, ClassNotFoundException {
            //  Find the branch that match's this CB_EQC's PC_String.  Then search thru the EQCs
            //  for that branch to see if one of them can properly absorb this one.
            //  If so, do it.  Else, add this new EQC.
            nmbrOfCBs += eqc.members.size();  //  no matter what happens
            ArrayList<Object> cbEQCList = (ArrayList<Object>) tMap.get(eqc.pcString);
            boolean slurp = false;
            if (cbEQCList != null) {
                for (int i = 0; i < cbEQCList.size(); i++) {
                    CB_EQC other = (CB_EQC) cbEQCList.get(i);
                    if (other.canAssimilate(eqc.prototype)) {
                        for (int j = 0; j < eqc.members.size(); j++) {
                            ((CB_Ptr) eqc.members.get(j)).cbEQC = other;
                        }
                        other.members.addAll(eqc.members);
                        if (eqc.prototype.getClause().body.size() > 0 //  Occam's Razor - prefer smaller clauses
                                && eqc.prototype.getClause().body.size() < other.prototype.getClause().body.size()) {
                            other.prototype = eqc.prototype;
                            if (!(eqc.prototype instanceof BaseCB_Ptr)) // if this is the baseCB Index, no EQC CCBS needed.
                            {
                                other.compactCBString = Library.makeCCBS(eqc.prototype.getClause());
                            }
                        }
                        slurp = true;
                        i = cbEQCList.size();
                    }
                }  //  end of loop thru CB_Ptrs
                if (!slurp) {  // Add this new CB_EQC.
                    nmbrOfCB_EQCs++;
                    cbEQCList.add(eqc);
                }
            } else {
                nmbrOfCB_EQCs++;
                nmbrOfKinTypes++;
                tMap.put(eqc.pcString, eqc);
                cbEQCList = new ArrayList<Object>();
                cbEQCList.add(eqc);
                tMap.put(eqc.pcString, cbEQCList);
            }
        }  //  end of method addToIndex(CB_EQC)

        String stats() {
            String answer = "ClauseIndex Size:\n\t" + commafy(nmbrOfKinTypes) + " kin types\n\t";
            answer += commafy(nmbrOfCB_EQCs) + " EQCs\n\t";
            answer += commafy(nmbrOfCBs) + " clauses\nEQC Sizes:";
            //  sizes counts: solo_EQCs, 2-4, 5-10, 11+
            int[] sizes = {0, 0, 0, 0};
            Iterator topIter = tMap.values().iterator();
            while (topIter.hasNext()) {
                ArrayList<Object> cbEQCList = (ArrayList<Object>) topIter.next();
                for (int i = 0; i < cbEQCList.size(); i++) {
                    CB_EQC eqc = (CB_EQC) cbEQCList.get(i);
                    if (eqc.members.size() == 1) {
                        sizes[0]++;
                    } else if (eqc.members.size() < 5) {
                        sizes[1]++;
                    } else if (eqc.members.size() < 11) {
                        sizes[2]++;
                    } else {
                        sizes[3]++;
                    }
                }  //  end of inner loop
            }  //  end of top loop
            answer += "\n\t   1:  " + commafy(sizes[0]);
            answer += "\n\t 2-4:  " + commafy(sizes[1]);
            answer += "\n\t5-10:  " + commafy(sizes[2]);
            answer += "\n\t 11+:  " + commafy(sizes[3]) + "\n";
            return answer;
        }  //  end of method stats
    }  //  end of inner class ClauseIndex

    static void mergeEQCs(ArrayList<Object> aEQCs, ArrayList<Object> bEQCs, Counter nmbrOfMerges)
            throws KSParsingErrorException, JavaSystemException, KSInternalErrorException, KSConstraintInconsistency,
            KSBadHornClauseException, KSNoChainOfRelations2Alter, ClassNotFoundException {
        //  The a & b lists both contain CB_EQCs.  Merge the lists and, where appropriate, the EQCs.
        for (int i = 0; i < bEQCs.size(); i++) {
            boolean resistanceWasFutile = false;
            CB_EQC jeanLuc = (CB_EQC) bEQCs.get(i);
            for (int j = 0; j < aEQCs.size(); j++) {
                CB_EQC borg = (CB_EQC) aEQCs.get(j);
                if (borg.canAssimilate(jeanLuc.prototype)) {
                    borg.members.addAll(jeanLuc.members); //  this assumes no overlap in membership
                    nmbrOfMerges.incr();
                    resistanceWasFutile = true;
                    j = aEQCs.size();
                }
            }  //  end of loop thru aEQCs
            if (!resistanceWasFutile) {
                aEQCs.add(jeanLuc);
            }
        }  //  end of loop thru members of bEQC
    }  //  end of static method mergeEQCs

    static class CB_EQC implements Serializable, Comparable, Comparator {

        String pcString, compactCBString;
        CB_Ptr prototype;
        double score;
        ArrayList<Object> members = new ArrayList<Object>();

        CB_EQC() {
        }  //  constructor for serialization.

        CB_EQC(ClauseBody cb) throws KSInternalErrorException, JavaSystemException {
            prototype = new CB_Ptr(cb);
            prototype.cbEQC = this;
            pcString = cb.pcString;
            members.add(prototype);
            compactCBString = makeCCBS(cb);
        }  //  end of constructor

        CB_EQC(CB_Ptr ptr) throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException,
                KSInternalErrorException, KSConstraintInconsistency {
            prototype = ptr;
            prototype.cbEQC = this;
            pcString = ptr.getClause().pcString;
            members.add(ptr);
            if (!(ptr instanceof BaseCB_Ptr)) {
                compactCBString = makeCCBS(ptr.getClause());
            }
        }  //  end of constructor

        CB_EQC(String parenSet) throws KSInternalErrorException, JavaSystemException {     //  constructor for reading from disk.
            int end = parenSet.indexOf(","), start = 2, correction = 3;
            pcString = parenSet.substring(start, end);
            start = end + 2;
            end = parenSet.indexOf("},", start) + 1;
            String curlySet = parenSet.substring(start, end);
            if (curlySet.indexOf("]}") > -1) {
                prototype = new CB_Ptr(curlySet);
            } else {
                prototype = new BaseCB_Ptr(curlySet);
            }
            prototype.cbEQC = this;
            members.add(prototype);
            start = end + 3;  //  puts it at opening curly of first member, or at closing square of list
            end = parenSet.indexOf("}", start) + 1;
            while (end > 0) {
                curlySet = parenSet.substring(start, end);
                CB_Ptr ptr;
                if (curlySet.indexOf("]}") > -1) {
                    ptr = new CB_Ptr(curlySet);
                } else {
                    ptr = new BaseCB_Ptr(curlySet);
                }
                ptr.cbEQC = this;
                members.add(ptr);
                start = end + 2;
                end = parenSet.indexOf("}", start) + 1;
                correction = 1;
            }
            if (!(prototype instanceof BaseCB_Ptr)) {  //  CE_EQCs of base CBs have CCBS = null
                start += correction;
                end = parenSet.length() - 2;
                compactCBString = parenSet.substring(start, end);
            }
        }  //  end of constructor

        CB_EQC copy() {
            // return a clone with a new members list pointing to model's members
            CB_EQC copy = new CB_EQC();
            copy.pcString = pcString;
            copy.prototype = prototype;
            copy.score = score;
            copy.members.addAll(members);
            copy.compactCBString = compactCBString;
            return copy;
        }  //  end of method copy

        CB_EQC deepCopy() throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException,
                KSConstraintInconsistency, KSInternalErrorException {
            //  This method is called only on EQCs of BaseCBs.
            // Return a clone with a new members list pointing to deep copies of model's members
            CB_EQC copy = new CB_EQC();
            copy.pcString = pcString;
            copy.score = score;
            for (int i = 0; i < members.size(); i++) {
                BaseCB_Ptr ptr = (BaseCB_Ptr) members.get(i),
                        newPtr = ptr.deepCopy(copy);
                copy.members.add(newPtr);
                if (ptr == prototype) {
                    copy.prototype = newPtr;
                }
            }
            copy.compactCBString = compactCBString;
            return copy;
        }  //  end of method deepCopy

        public String toString() {
            ArrayList<Object> mbrs = new ArrayList<Object>(members);
            mbrs.remove(prototype);
            String compact = (compactCBString == null ? "" : ", " + compactCBString);
            return "((" + pcString + ", " + prototype + ", " + mbrs + compact + "))";
        }  //  end of overriding method toString

        boolean hasMember(ClauseBody cb) {
            String kinTerm = cb.ktd.kinTerm,
                    langName = cb.ktd.domTh.languageName;
            for (int i = 0; i < members.size(); i++) {
                CB_Ptr ptr = (CB_Ptr) members.get(i);
                if (ptr.languageName.equals(langName) && ptr.kinTerm.equals(kinTerm)
                        && ptr.cbSeqNmbr == cb.seqNmbr) {
                    return true;
                }
            }
            return false;
        }  //  end of method hasMember

        double scoreYourself(ArrayList<Object> ktdEQCs, double wtSum)
                throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException,
                KSInternalErrorException, KSConstraintInconsistency {
            double sum = 0d;
            for (int i = 0; i < members.size(); i++) {
                CB_Ptr cbPtr = (CB_Ptr) members.get(i);
                for (int j = 0; j < ktdEQCs.size(); j++) {
                    KTD_EQC keqc = (KTD_EQC) ktdEQCs.get(j);
                    KTD_Ptr kPtr = keqc.getMember(cbPtr.getClause().ktd);
                    if (kPtr != null) {
                        j = ktdEQCs.size(); //  found it -- end loop
                        sum += keqc.classSimWeight();
                    }
                }  //  end of j-loop thru ktdEQCs
            }  //  end of j-loop thru members
            score = Math.abs(sum - (wtSum / 2));
            return score;
        }  //  end of method scoreYourself

        boolean canAssimilate(CB_Ptr victim) throws KSParsingErrorException, KSConstraintInconsistency, KSNoChainOfRelations2Alter,
                JavaSystemException, KSInternalErrorException, KSBadHornClauseException, ClassNotFoundException {
            ClauseBody cb = victim.getClause(),
                    myCB = prototype.getClause();
            return myCB.isEquivalent(cb);
        }  //  end of method canAssimilate

        /**  Provide a method of comparing 2 CB_EQCs for use in TreeMaps and TreeSets.	*/
        public int compareTo(Object obj) throws ClassCastException {
            if (obj == null) {
                return -1;
            }
            CB_EQC other = (CB_EQC) obj;
            int answer = pcString.compareTo(other.pcString);
            if (answer != 0) {
                return answer;
            }
            return prototype.compareTo(other.prototype);
        }  //  end of compareTo method; required for the Comparable interface

        public int compare(Object obj1, Object obj2) {
            //  NOTE:  This comparison is intended for use only in ranking CB_EQCs by score
            //		   Use in any other way produces unspecified results.
            if (!(obj1 instanceof CB_EQC && obj2 instanceof CB_EQC)) {
                throw new ClassCastException("CB_EQCs expected for comparison -- not found.");
            }
            CB_EQC o1 = (CB_EQC) obj1, o2 = (CB_EQC) obj2;
            if (o1.score < o2.score) {
                return -1;
            }
            if (o1.score > o2.score) {
                return 1;
            }
            if (o1.pcString == null || o2.pcString == null) {
                throw new NullPointerException("CB_EQC.compare found null pcString");
            }
            if (o1.pcString.length() < o2.pcString.length()) {
                return -1;
            }
            if (o1.pcString.length() > o2.pcString.length()) {
                return 1;
            }
            return 0;
        }  //  end of method compare, required for Comparator interface
    }  //  end of inner class CB_EQC

    /** This class implements a ClauseBody pointer (to be stored in CB_EQCs in the ClauseIndex).
    It is used as a compact stand-in for a ClauseBody in set operations during learning.
    The slot for 'clause' is used to cache a real pointer to the real CB if it is ever retrieved,
    for efficiency.  But when a CB_Ptr is written to disk, the clause is not (to conserve space).
     */
    static class CB_Ptr implements Comparable, Serializable {

        static TreeMap cache = new TreeMap();  //  languageName:kinTerm => KTD_Ptr
        String languageName, kinTerm, compactXP;
        int cbSeqNmbr;
        boolean posHitVal = false;
        CB_EQC cbEQC;
        ClauseBody clause;

        static void clearCache() {
            cache.clear();
        }  //  end of static method clearCache

        static void cachePut(String key, KTD_Ptr ptr) throws KSInternalErrorException, KSParsingErrorException {
            cache.put(key, ptr);
            if (ptr.ktd != null) {  //  Coordinate with the other Cache
                DomainTheory dt = (DomainTheory) KTD_Ptr.cache.get(ptr.languageName);
                KinTermDef ktd = (dt == null ? null : (KinTermDef) dt.theory.get(ptr.kinTerm));
                if (ktd != null && ktd != ptr.ktd) {
                    throw new KSInternalErrorException("Attempted overwrite of ktd in KTD_Ptr cache.");
                }
                if (dt == null) {
                    dt = new DomainTheory(ptr.languageName);
                    KTD_Ptr.cache.put(ptr.languageName, dt);
                }
                dt.addTerm(ptr.ktd);
            }
        }  //  end of method cachePut

        static KTD_Ptr cacheGet(CB_Ptr cbPtr) {
            String key = cbPtr.languageName + ":" + cbPtr.kinTerm;
            KTD_Ptr ptr = (KTD_Ptr) cache.get(key);
            if (ptr != null) {
                return ptr;
            }
            //  If there is a ktd cached, use it to make KTD_Ptr
            DomainTheory dt = (DomainTheory) KTD_Ptr.cache.get(cbPtr.languageName);
            KinTermDef ktd = (dt == null ? null : (KinTermDef) dt.theory.get(cbPtr.kinTerm));
            ptr = (ktd != null ? new KTD_Ptr(ktd) : new KTD_Ptr(cbPtr));
            if (ktd != null && ktd.eqcSigExact == null) {
                ktd.retrieveSigExact();
            }
            cache.put(key, ptr);
            return ptr;
        }  //  end of method cacheGet

        CB_Ptr() {
        }  //  constructor for serialization.

        CB_Ptr(ClauseBody cb) 
                throws KSInternalErrorException, JavaSystemException {    //  normal constructor.
            languageName = cb.ktd.domTh.languageName;
            kinTerm = cb.ktd.kinTerm;
            cbSeqNmbr = cb.seqNmbr;
            clause = cb;
            TreeMap predCodes = (TreeMap) predEncodings.get(languageName);
            compactXP = pathEncode(cb.expansionPath, predCodes);
//            cbEQC = getBaseEQC(); // Apparently not needed for all Ptrs. Cerated as needed
        }  //  end of normal constructor.

        CB_Ptr(String curlySet) 
                throws KSInternalErrorException, JavaSystemException {    //  constructor for reading from disk.
            int end = curlySet.indexOf(","), start = 1;
            languageName = curlySet.substring(start, end);
            start = end + 1;
            end = curlySet.indexOf(",", start);
            kinTerm = curlySet.substring(start, end);
            start = end + 1;
            end = curlySet.indexOf("[", start);
            try {
                cbSeqNmbr = Integer.parseInt(curlySet.substring(start, end));
            } catch (NumberFormatException e) {
                throw new JavaSystemException("Can't construct ClauseIndex: corrupted File.\n" + e);
            }
            clause = null;
            start = end + 1;
            end = curlySet.indexOf("]", start);  //  NOTE: CXP does not include the square brackets
            compactXP = curlySet.substring(start, end);
//            cbEQC = getBaseEQC();  // Apparently not needed for all Ptrs. Cerated as needed
        }  //  end of constructor from a string (from disk).

        public String toString() {
            StringBuffer curlySet = new StringBuffer();
            curlySet.append("{").append(languageName).append(",").append(kinTerm).append(",");
            curlySet.append(cbSeqNmbr).append("[").append(compactXP).append("]}");
            return curlySet.toString();
        }  //  end of method toString

        // Called only by a Discriminator's SILKFile method
        public String toSILKString() {
            String s = "";
            ClauseBody cb = null;
            try {
                cb = getClause();
            } catch (Exception exc) { // getClause throws many exceptions
                String msg = "While retrieving a CB from disk: " + exc;
                msg += "\nContinuing on with Suggestion file creation, but THIS ELEMENT is damaged.";
                JOptionPane.showMessageDialog(null, msg, "SILKin Internal Error",
                        JOptionPane.ERROR_MESSAGE);
                MainPane.activity.log.append(msg + "\n\n");
                s += "\t<error> \"" + msg + "\" </error>";
                return s;
            }
            String targetKinType, output = "";
            if (cbEQC != null && cbEQC.pcString != null) {
                targetKinType = cbEQC.pcString;
            }else if (cb != null && cb.pcString != null) {
                targetKinType = cb.pcString;
            }else {
                String msg = "While printing a CB_Ptr to SILK File, did not find PCString.";
                msg += "\nContinuing on with Suggestion file creation, but THIS ELEMENT is damaged.";
                JOptionPane.showMessageDialog(null, msg, "SILKin Internal Error",
                        JOptionPane.ERROR_MESSAGE);
                MainPane.activity.log.append(msg + "\n\n");
                s += "\t<error> \"" + msg + "\" </error>";
                return s;
            }
            KinTypeIndex kti = contextUnderConstruction.kti;
            String[] container = {output};
            boolean needOne = true;
            int priorSize = 0;
            ArrayList<Integer[]> candidates = kti.getList(targetKinType);
            if (candidates != null && ! candidates.isEmpty()) {
                needOne = tryCandSILK(0, candidates, targetKinType, cb, container);
                priorSize = candidates.size();
            } // end of there were candidates
            if (needOne) {
                kti.updateIndex(contextUnderConstruction);
                candidates = kti.getList(targetKinType);
                if (candidates != null && ! candidates.isEmpty()) {
                    needOne = tryCandSILK(priorSize, candidates, targetKinType,
                            cb, container);
                } // end of there were candidates
            } // If we still need more by this point, make kin-type-dyad
            if (needOne) {
                output = "\t<kin-type-dyad>";
                output += "\t\t<pc-string>" + targetKinType + "</pc-string>";
                output += cb.toSILKString("\t\t");
                output += "\t</kin-type-dyad>";
            } else { // we have some candidates
                for (Integer[] pair : candidates) {
                    output += "\t<named-dyad>\n";
                    output += "\t\t<ego-serial>" + pair[0] + "</ego-serial>";
                    output += "\t\t<alter-serial>" + pair[1] + "</alter-serial>";
                    output += "\t\t<pc-string>" + targetKinType + "</pc-string>";
                    output += cb.toSILKString("\t\t");
                    output += "\t</named-dyad>\n";
                }
            } // end of have-some-candidates
            return output;
        }

        boolean tryCandSILK(int start, ArrayList<Integer[]> candidates,
                String targetKinType, ClauseBody cb, String[] s) {
            boolean needMore = true;
            int pairsFound = 0;
            ArrayList<Individual> census = contextUnderConstruction.individualCensus;
            for (int i = start; i < candidates.size(); i++) {
                Integer[] pair = candidates.get(i);
                Individual ego = census.get(pair[0]),
                        alter = census.get(pair[1]);
                if (goodFit(ego, alter, cb)) {
                    String msg = "\t<named-dyad>";
                    msg += "\t\t<ego-serial> " + pair[0] + " </ego-serial>";
                    msg += "\t\t<alter-serial> " + pair[1] + " </alter-serial>";
                    msg += "\t\t<pc-string> \"" + targetKinType + "\" </pc-string>";
                    msg += "\t\t<clause>";
                    msg += cb.toString();
                    msg += "\t\t</clause>";
                    msg += "\t</named-dyad>";
                    s[0] += msg;
                    needMore = false;
                    if (++pairsFound > 1) {
                        break;  // make up to 2 requests
                    }
                } // end of goodFit == true
            } // end of loop thru candidates
            return needMore;
        }

        boolean tryCandidates(int start, ArrayList<Integer[]> candidates,
                ClauseBody cb, String[] s) {
            boolean needMore = true;
            String targetKinType = cbEQC.pcString, msg;
            int pairsFound = 0;
            ArrayList<Individual> census = contextUnderConstruction.individualCensus;
            for (int i = start; i < candidates.size(); i++) {
                Integer[] pair = candidates.get(i);
                Individual ego = census.get(pair[0]),
                        alter = census.get(pair[1]);
                if (goodFit(ego, alter, cb)) {
                    msg = "\t<named-dyad>";
                    msg += "\t\t<ego-serial>" + pair[0] + "</ego-serial>";
                    msg += "\t\t<alter-serial>" + pair[1] + "</alter-serial>";
                    msg += "\t\t<pc-string>" + targetKinType + "</pc-string>";
                    msg += "\t\t<clause>";
                    msg += cb.toString();
                    msg += "\t\t</clause>";
                    msg += "\t</named-dyad>";
                    s[0] += msg;
                    needMore = false;
                    if (++pairsFound > 1) {
                        break;  // make up to 2 requests
                    }
                } // end of goodFit == true
            } // end of loop thru candidates
            return needMore;
        }

        boolean goodFit(Individual ego, Individual alter, ClauseBody cb) {
            boolean success = false, contraintsOK = true;
            Literal next;
            int size = cb.body.size();
            ConstraintObj constraints = new ConstraintObj();
            ArrayList<Object> genderStuff = new ArrayList<Object>(),
                    starStuff = new ArrayList<Object>(),
                    starBindings = new ArrayList<Object>();
            try {
                for (int j = 0; j < size; j++) {
                    next = (Literal) cb.body.get(j);
                    contraintsOK = next.constraintCheck(ego.gender, constraints,
                            genderStuff, starStuff);
                    if (!contraintsOK) {
                        return false;
                    } //  constraintCheck, by side-effect, builds all constraints
                }
                TreeMap bindings = new TreeMap(), badBindings = new TreeMap();
                bindings.put("Ego", ego);
                if (!LiteralAbstract1.finalConstraintCheck(ego.gender, bindings,
                        constraints, cb.body, genderStuff, starStuff)) {
                    return false;
                } // finalConstraintCheck does post-processing & a final conflict-check.
                ArrayList<Object> bodyCopy = new ArrayList<Object>(cb.body),
                        starStuffCopy = new ArrayList<Object>(starStuff);
                next = null;
                while ((bodyCopy.size() > 0) && (next == null)) {
                    next = cb.pop(bodyCopy, starStuffCopy, bindings, kinTerm);
                }
                if (next == null) {
                    return false;
                } // start the process with next.  First, find any star-props for Ego
                Variable egoVar = null;
                for (int j = 0; j < next.args.size(); j++) {
                    if (((Argument) next.args.get(j)).argName.equals("Ego")) {
                        egoVar = (Variable) next.args.get(j);
                    }
                }
                if (!next.meetsStarSpecs(ego, egoVar, constraints, starBindings,
                        bindings, "commit", cb)) {
                    return false;
                }
                success = next.fillInNames_bool(kinTerm, bodyCopy, starStuffCopy,
                        cb, bindings, constraints, alter, new ArrayList<Object>());
            } catch (Exception exc) {
                return false;
            }
            return success;
        }

 
        String pathEncode(ArrayList<Object> path, TreeMap predCodes) {
            //  Members of path are strings like apo:12
            //  Replace 'apo' with its predicate code
            if (path == null || path.isEmpty()) {
                return "";
            }
            StringBuffer buf = new StringBuffer(20 * path.size());
            String rightParen = ")";
            Integer cod;
            for (int i = 0; i < path.size(); i++) {
                String item = (String) path.get(i);
                if (item.equals(rightParen)) {
                    buf.append(item);
                    buf.append(i < path.size() - 1 ? "," : "");
                } else if (item.equals("(not:") || item.equals("(not")) {
                    cod = (Integer) DomainTheory.primitiveCodes.get("not");
                    buf.append("(p").append(cod.toString());
                    buf.append(i < path.size() - 1 ? "," : "");
                } else if (item.equals("(not)")) {
                    cod = (Integer) DomainTheory.primitiveCodes.get("not");
                    buf.append("(p").append(cod.toString()).append(")");
                    buf.append(i < path.size() - 1 ? "," : "");
                } else {
                    int colon = item.indexOf(":");
                    if (colon == -1) {
                        Context.breakpoint();
                    }
                    String pred = item.substring(0, colon), prefix = "c";
                    KTD_Coder coder = (KTD_Coder) predCodes.get(pred);
                    cod = (coder == null ? null : new Integer(coder.code));
                    if (cod == null) {
                        cod = (Integer) DomainTheory.primitiveCodes.get(pred);
                        prefix = "p";
                    }
                    buf.append(prefix).append(cod.toString()).append(item.substring(colon));
                    buf.append(i < path.size() - 1 ? "," : "");
                }  //  end of else it's a regular predicate
            }
            return buf.toString();
        }  //  end of method pathEncode

        ArrayList<Object> pathDecode(String codedPath) throws JavaSystemException {
            if (codedPath.equals("")) {
                return null;
            }
            ArrayList<Object> decoded = new ArrayList<Object>();
            String predName, preParen;
            int start = 0, //  internal rep'n of CXP has no '['
                    colon = codedPath.indexOf(":"),
                    end = codedPath.indexOf(","),
                    right = codedPath.indexOf(")"),
                    code, seqNmbr, limit;
            char ch;
            try {
                while (end > -1) {
                    ch = codedPath.charAt(start);
                    if (ch == '(') {
                        decoded.add("(not");
                        if (right == end - 1) {
                            decoded.add(")");
                        }
                    } else if (ch == ')') {
                        decoded.add(")");
                    } else {  //  normal predicates
                        code = Integer.parseInt(codedPath.substring(start + 1, colon));
                        limit = (right < 1 ? codedPath.length() : right);
                        seqNmbr = Integer.parseInt(codedPath.substring(colon + 1, Math.min(end, limit)));
                        if (ch == 'p') {
                            predName = DomainTheory.primPredNames[code];
                        } else {
                            predName = ((String[]) predDecodings.get(languageName))[code];
                        }
                        decoded.add(predName + ":" + seqNmbr);
                        if (right == end - 1) {
                            decoded.add(")");
                        }
                    }  //  end of normal predicates
                    start = end + 1;
                    colon = codedPath.indexOf(":", start);
                    end = codedPath.indexOf(",", start);
                    right = codedPath.indexOf(")", start);
                } //  end of loop thru expansion path, sitting at last item
                end = codedPath.length();		// no trailing ']' either
                ch = codedPath.charAt(start);
                right = codedPath.indexOf(")", start);
                if (ch == ')') {
                    decoded.add(")");
                } else if (ch == '(' && right > -1) {  //  must be terminal '(not)'
                    ch = codedPath.charAt(start + 1);
                    code = Integer.parseInt(codedPath.substring(start + 2, right));
                    if (ch == 'p') {
                        predName = DomainTheory.primPredNames[code];
                    } else {
                        predName = ((String[]) predDecodings.get(languageName))[code];
                    }
                    if (!predName.equals("not")) {
                        throw new JavaSystemException("CB_Ptr.pathDecode did not find 'not' as expected.");
                    }
                    decoded.add("(not)");
                } else {
                    code = Integer.parseInt(codedPath.substring(start + 1, colon));
                    limit = (right < 1 ? codedPath.length() : right);
                    seqNmbr = Integer.parseInt(codedPath.substring(colon + 1, Math.min(end, limit)));
                    if (ch == 'p') {
                        predName = DomainTheory.primPredNames[code];
                    } else {
                        predName = ((String[]) predDecodings.get(languageName))[code];
                    }
                    decoded.add(predName + ":" + seqNmbr);
                    if (right == end - 1) {
                        decoded.add(")");
                    }
                }
            } catch (NumberFormatException e) {
                System.out.println("Ooops!");
                throw new JavaSystemException("CompactCBString is Corrupted:\n" + e);
            }
            return decoded;
        }  //  end of method pathDecode

        ClauseBody getClause() throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException,
                KSConstraintInconsistency, KSInternalErrorException {
            if (clause != null) {
                return clause;
            }
            //  2nd best: compute the cb from the ccbs
            DomainTheory dt = (DomainTheory) KTD_Ptr.cache.get(languageName);
            KinTermDef ktd = (dt == null ? null : (KinTermDef) dt.theory.get(kinTerm));
            if (dt != null && cbEQC != null && cbEQC.compactCBString != null) {
                clause = decodeCCBS(cbEQC.compactCBString, dt, cbEQC.pcString);
                clause.expansionPath = pathDecode(compactXP);
                if (ktd == null) {
                    ktd = new KinTermDef(kinTerm);
                    dt.addTerm(ktd);
                    ktd.retrieveSigExact();
                }
                clause.ktd = ktd;
            } else {
                //  3rd choice: parse it from disk
                String fileName = libraryDirectory + "Domain Theory Files/" + languageName + ".thy";
                Parser parzer = new Parser(new Tokenizer(getDFA(), new Linus(fileName)));
                clause = parzer.parseSingleClause(kinTerm, cbSeqNmbr, dt, ktd);
                if (ktd == null) {
                    ktd = clause.ktd;
                }
                if (dt == null) {
                    dt = ktd.domTh;
                    if (dt.languageName.indexOf("(Adr)") > 0) {
                        dt.addressTerms = true;
                    }
                    KTD_Ptr.cache.put(languageName, dt);
                }
            }  //  end of parse it from disk
            clause.posHit = posHitVal;
            clause.seqNmbr = cbSeqNmbr;
            return clause;
        }  //  end of method getClause

        CB_EQC getBaseEQC() throws KSInternalErrorException, JavaSystemException {
            // Find the EQC holding the BaseCB_Ptr for the base CB that expanded into this clause
            ArrayList<Object> expPath = pathDecode(compactXP);
            String firstExpansion = (String) expPath.get(0);
            try {
                int colon = firstExpansion.indexOf(":"),
                    baseNmbr = Integer.parseInt(firstExpansion.substring(colon + 1));
                KTD_Coder coder = (KTD_Coder) ((TreeMap) predEncodings.get(languageName)).get(kinTerm);
                String baseSigString = (String) coder.baseCB_SigStrings.get(baseNmbr);
                ArrayList<Object> eqcList = (ArrayList<Object>) baseCBIndex.get(baseSigString);
                for (int i = 0; i < eqcList.size(); i++) {
                    CB_EQC baseEQC = (CB_EQC) eqcList.get(i);
                    for (int j = 0; j < baseEQC.members.size(); j++) {
                        BaseCB_Ptr ptr = (BaseCB_Ptr) baseEQC.members.get(j);
                        if (ptr.languageName.equals(languageName) && ptr.kinTerm.equals(kinTerm)
                                && ptr.cbSeqNmbr == baseNmbr) {
                            return baseEQC;
                        }
                    }  //  end of loop thru baseEQC members
                }  //  end of loop thru eqcList
            } catch (NumberFormatException nfe) {
                throw new KSInternalErrorException("CB_Ptr.getBaseEQC - bad Nmbr parse: " + nfe);
            }
            return null;
        }  //  end of method getBaseEQC

        void setPosHit(boolean valu) {
            posHitVal = valu;
            if (clause != null) {
                clause.posHit = valu;
            }
        }

        /**  Provide a method of comparing 2 CB_Ptrs for use in TreeMaps and TreeSets.	*/
        public int compareTo(Object obj) throws ClassCastException {
            if (obj == null) {
                return -1;
            }
            CB_Ptr other = (CB_Ptr) obj;
            int answer = languageName.compareTo(other.languageName);
            if (answer != 0) {
                return answer;
            }
            answer = kinTerm.compareTo(other.kinTerm);
            if (answer != 0) {
                return answer;
            }
            if (CB_PTR_COMPARE_MODE == NORMAL) {
                return cbSeqNmbr - other.cbSeqNmbr;
            } else {
                return 0;
            }
        }  //  end of compareTo method; required for the Comparable interface
    }  //  end of inner class CB_Ptr

    /** This class implements a BaseCB pointer (to be stored in CB_EQCs in the BaseClauseIndex).
    It is used as a compact stand-in for a base CB (j.e. not expanded) in set operations during learning.
    The slot for 'clause' is used to cache a real pointer to the real CB if it is ever retrieved,
    for efficiency.  But when a BaseCB_Ptr is written to disk, the clause is not (to conserve space).
     */
    static class BaseCB_Ptr extends CB_Ptr implements Comparable, Serializable {

        int[] expDefNmbrs;  //  CB seqNmbrs of expanded CB 'children' of this base CB
        String compactCBString;

        BaseCB_Ptr() {
        }   //  constructor for serialization.

        BaseCB_Ptr(ClauseBody cb, ArrayList<Object> expDefs) {    //  normal constructor.
            languageName = cb.ktd.domTh.languageName;
            kinTerm = cb.ktd.kinTerm;
            cbSeqNmbr = cb.seqNmbr;
            clause = cb;
            cb.baseCB_Ptr = this;
            compactXP = "";
            compactCBString = makeCCBS(cb);
            int[] tempNmbrs = new int[expDefs.size()];
            int cell = 0;
            for (int i = 0; i < expDefs.size(); i++) {
                ClauseBody expCB = (ClauseBody) expDefs.get(i);
                String firstExpansion = (String) expCB.expansionPath.get(0);
                int where = firstExpansion.indexOf(":");
                int baseCBNmbr = Integer.parseInt(firstExpansion.substring(where + 1).trim());
                if (baseCBNmbr == cbSeqNmbr) {
                    tempNmbrs[cell++] = i;
                }
            }
            expDefNmbrs = new int[cell];
            for (int j = 0; j < cell; j++) {
                expDefNmbrs[j] = tempNmbrs[j];
            }
        }  //  end of normal constructor.

        BaseCB_Ptr(String curlySet) throws KSInternalErrorException, JavaSystemException {    //  constructor for reading from disk.
            super(curlySet);
            // Curly sets are like "{Gujarati,bhatriji[aux],0[] 0|[c3(A,@),p8(&,A)]0}"
            int start = curlySet.indexOf(",") + 1;
            start = curlySet.indexOf(",", start) +1;  // the second comma
            start = curlySet.indexOf("]", start) +2;  // 1st right-square after 2nd comma
            int bar = curlySet.indexOf("|", start), end;
            String expDefStr = curlySet.substring(start, bar);
            start = 0;
            end = expDefStr.indexOf(",", start);
            ArrayList<Object> temp = new ArrayList<Object>();
            try {
                while (end > -1) {
                    temp.add(new Integer(expDefStr.substring(start, end)));
                    start = end + 1;
                    end = expDefStr.indexOf(",", start);
                }
                end = expDefStr.length();
                temp.add(new Integer(expDefStr.substring(start, end)));
            } catch (NumberFormatException e) {
                throw new JavaSystemException("Can't construct BaseClauseIndex: corrupted File.\n" + e);
            }
            expDefNmbrs = new int[temp.size()];
            for (int i = 0; i < temp.size(); i++) {
                expDefNmbrs[i] = ((Integer) temp.get(i)).intValue();
            }
            start = bar + 1;
            end = curlySet.indexOf("}", start);
            compactCBString = curlySet.substring(start, end);
        }  //  end of constructor from string (from disk).

        BaseCB_Ptr deepCopy(CB_EQC eqc) throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException,
                KSConstraintInconsistency, KSInternalErrorException {
            // Return a clone with a clause = a deep copy of this clause
            BaseCB_Ptr copy = new BaseCB_Ptr();
            copy.languageName = languageName;
            copy.kinTerm = kinTerm;
            copy.compactXP = compactXP;
            copy.cbSeqNmbr = cbSeqNmbr;
            copy.cbEQC = eqc;
            copy.expDefNmbrs = expDefNmbrs;
            copy.compactCBString = compactCBString;
            copy.clause = getClause().deepCopy();
            copy.clause.baseCB_Ptr = copy;
            return copy;
        }  //  end of method deepCopy

        public String toString() {
            StringBuffer curlySet = new StringBuffer();
            curlySet.append("{").append(languageName).append(",").append(kinTerm);
            curlySet.append(",").append(cbSeqNmbr).append("[] ");
            for (int i = 0; i < expDefNmbrs.length; i++) {
                curlySet.append(expDefNmbrs[i]);
                if (i < expDefNmbrs.length - 1) {
                    curlySet.append(",");
                }
            }
            curlySet.append("|").append(compactCBString).append("}");
            return curlySet.toString();
        }  //  end of method toString

        ClauseBody SLO_and_ACCURATE_getClause() throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException,
                KSConstraintInconsistency, KSInternalErrorException {
            if (clause != null) {
                return clause;  //  The easy method
            }
            DomainTheory dt = (DomainTheory) KTD_Ptr.cache.get(languageName);
            KinTermDef ktd = (dt == null ? null : (KinTermDef) dt.theory.get(kinTerm));
            if (ktd != null && ktd.definitions.size() > cbSeqNmbr
                    && ((ClauseBody) ktd.definitions.get(cbSeqNmbr)).seqNmbr == cbSeqNmbr
                    && ktd.expandedDefs.size() > 0) {  //  Almost as easy
                clause = (ClauseBody) ktd.definitions.get(cbSeqNmbr);
                clause.baseCB_Ptr = this;
                clause.posHit = posHitVal;
                if (cbEQC != null && cbEQC.pcString != null
                        && (clause.pcString == null || clause.pcString.length() < cbEQC.pcString.length())) {
                    clause.pcString = cbEQC.pcString;
                }
                return clause;
            }  //  end of almost easy method
            //  Remove any partially-complete ktd from dt's theory before parsing a complete one,
            //  including expandedDefs and the Signature String
            if (dt != null && ktd != null) {
                dt.theory.remove(kinTerm);
            }
            String fileName = libraryDirectory + "Domain Theory Files/" + languageName + ".thy";
            Parser parzer = new Parser(new Tokenizer(getDFA(), new Linus(fileName)));
            clause = parzer.parseSingleClause(kinTerm, cbSeqNmbr, dt, null, "base");
            ktd = clause.ktd;
            if (dt == null) {
                dt = ktd.domTh;
                if (dt.languageName.indexOf("(Adr)") > 0) {
                    dt.addressTerms = true;
                }
                KTD_Ptr.cache.put(languageName, dt);
            }
            if (cbEQC != null && cbEQC.pcString != null
                    && (clause.pcString == null || clause.pcString.length() < cbEQC.pcString.length())) {
                clause.pcString = cbEQC.pcString;
            }
            clause.posHit = posHitVal;
            clause.seqNmbr = cbSeqNmbr;
            clause.baseCB_Ptr = this;
            return clause;
        }  //  end of method SLO_and_ACCURATE_getClause

        ClauseBody getClause() throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException,
                KSConstraintInconsistency, KSInternalErrorException {
            if (clause != null) {
                return clause;
            }
            //  2nd best: compute the cb from the ccbs
            DomainTheory dt = (DomainTheory) KTD_Ptr.cache.get(languageName);
            KinTermDef ktd = (dt == null ? null : (KinTermDef) dt.theory.get(kinTerm));
            if (dt != null && cbEQC != null && cbEQC.pcString != null) {
                clause = decodeCCBS(compactCBString, dt, cbEQC.pcString);
                clause.expansionPath = pathDecode(compactXP);
                if (ktd == null) {
                    ktd = new KinTermDef(kinTerm);
                    dt.addTerm(ktd);
                    ktd.retrieveSigExact();
                }
                clause.ktd = ktd;
            } else {
                //  3rd choice: parse it from disk
                String fileName = libraryDirectory + "Domain Theory Files/" + languageName + ".thy";
                Parser parzer = new Parser(new Tokenizer(getDFA(), new Linus(fileName)));
                clause = parzer.parseSingleClause(kinTerm, cbSeqNmbr, dt, ktd, "base");
                if (ktd == null) {
                    ktd = clause.ktd;
                }
                if (dt == null) {
                    dt = ktd.domTh;
                    if (dt.languageName.indexOf("(Adr)") > 0) {
                        dt.addressTerms = true;
                    }
                    KTD_Ptr.cache.put(languageName, dt);
                }
                if (cbEQC != null && cbEQC.pcString != null
                        && (clause.pcString == null || clause.pcString.length() < cbEQC.pcString.length())) {
                    clause.pcString = cbEQC.pcString;
                }
            }  //  end of parse it from disk
            clause.posHit = posHitVal;
            clause.seqNmbr = cbSeqNmbr;
            clause.baseCB_Ptr = this;
            return clause;
        }  //  end of method getClause
    }  //  end of inner class BaseCB_Ptr

    static class ClusterState implements Serializable {

        public static final int UNIFORM = 0, EQUAL_IMPACT = 1, COMPUTED = 2;
        public static int wtVectChoice = COMPUTED;
        public static final int MINCLUSTERSIZE = 2;
        public ArrayList<Object> allFVs = new ArrayList<Object>(), bestClusters = new ArrayList<Object>();
        public TreeMap simScoresForCUC, //  LangName => Double
                fvMap = new TreeMap();  //  LangName => FVector
        public int numberOfFeatures = 10;
        private double[] weightVector = new double[numberOfFeatures + 2];  //  k, QualScore, & clustering weights
        //  The 'dimensional distance' between the values for feature_x on fv1 and fv2 is defined as
        //   1 - similarity between those corresponding feaures.
        public FloatMatrix dimDistSqrdMatrix;  //  holds the squares of the "dimensional distances" between corresponding features
        public FeatureVectorObj.FloatDistributionObj[] dimDistSqrDistns;

        ClusterState() {
        }

        ClusterState(boolean readSimScoresForCUC) throws JavaSystemException, KSBadHornClauseException,
                KSInternalErrorException, KSConstraintInconsistency, ClassNotFoundException, java.io.IOException {
            try {
                BufferedReader file = new BufferedReader(new FileReader(libraryDirectory + "Cluster_State"));
                String line = file.readLine();
                numberOfFeatures = Integer.parseInt(line.trim());
                line = file.readLine();
                if (!line.equals("null") && readSimScoresForCUC) {
                    simScoresForCUC = new TreeMap();
                    line = file.readLine();  //  consume the '[[' at start of TMap
                    while (!line.equals("]]")) {
                        int mid = line.indexOf("\t");
                        String langName = line.substring(0, mid);
                        Double score = new Double(line.substring(mid + 1).trim());
                        if (readSimScoresForCUC) {
                            simScoresForCUC.put(langName, score);
                        }
                    }
                }  //  end of reading SimScoresForCUC
                clSt = this;
                generateSimMatrix(this);  // fills allFVs, dimDistSqrdMatrix & dimDistSqrDistns
                //  weightVector is read from disk on demand & cached.
            } catch (NumberFormatException e) {
                throw new JavaSystemException("Can't construct Feature Vector: corrupted File.\n" + e);
            } catch (IOException iox) {
                throw new JavaSystemException("Can't construct Feature Vector: corrupted File.\n" + iox);
            }
        }

        void printDimDistSqrdMatrix() {
            dimDistSqrdMatrix.toGrid();
        }

        void toDisk() throws JavaSystemException {
            String fileName = libraryDirectory + "Cluster_State";
            try {
                PrintWriter file = new PrintWriter(new BufferedWriter(new FileWriter(fileName)));
                file.println(numberOfFeatures);
                if (simScoresForCUC == null) {
                    file.println("null");
                } else {
                    Iterator iter = simScoresForCUC.entrySet().iterator();
                    file.println("[[");
                    while (iter.hasNext()) {
                        Map.Entry entry = (Map.Entry) iter.next();
                        file.println(entry.getKey() + "\t" + entry.getValue());
                    }
                    file.println("]]");
                }
                file.flush();
                file.close();
                if (weightVector[0] != 0) {
                    writeWtVect();
                }
                Iterator iter = allFVs.iterator();
                while (iter.hasNext()) {
                    FeatureVectorObj fv = (FeatureVectorObj) iter.next();
                    fileName = Library.libraryDirectory + "Feature Vectors/" + fv.languageName + ".fvect";
                    file = new PrintWriter(new BufferedWriter(new FileWriter(fileName)));
                    fv.toDisk(file);
                }  //  end of loop thru FVs
            } catch (IOException e) {
                throw new JavaSystemException("ClusterState File Creation failed:\n" + e);
            }
            System.out.println("Wrote: " + libraryDirectory + "Cluster_State");
        }  //  end of method toDisk

        void putInWtVector(int w, double value) {
            weightVector[w] = value;
        }

        void writeWtVect() throws JavaSystemException {
            String fileName = libraryDirectory + "WeightVector";
            try {
                PrintWriter outFile = new PrintWriter(new BufferedWriter(new FileWriter(fileName)));
                for (int i = 0; i < numberOfFeatures + 2; i++) {
                    outFile.println(weightVector[i] + "\t");
                }  //  end of loop thru elements of WeightVector
                outFile.flush();
                outFile.close();
            } catch (IOException e) {
                throw new JavaSystemException("WeightVector File Creation failed:\n" + e);
            }
        }  //  end of method writeWtVect

        double[] getWtVect() throws JavaSystemException, IOException {
            if (wtVectChoice == UNIFORM) {
                double[] vect = {3d, 10d, .1, .1, .1, .1, .1, .1, .1, .1, .1, .1};
                return vect;
            }
            if (wtVectChoice == EQUAL_IMPACT) {
                double[] initWeights = new double[numberOfFeatures + 2];
                initWeights[0] = 3d;
                initWeights[1] = 10d;
                double invSum = 0d;
                for (int w = 0; w < numberOfFeatures; w++) {
                    double vari = dimDistSqrDistns[w].variance();
                    if (vari > 0) {
                        initWeights[w + 2] = 1d / vari;
                    } else {
                        initWeights[w + 2] = 0d;
                    }
                    invSum += initWeights[w + 2];
                }  //  end of first loop thru initWeights
                for (int w = 2; w < clSt.numberOfFeatures + 2; w++) {
                    initWeights[w] /= invSum;
                }
                return initWeights;
            }
            //  else we use the COMPUTED weight vector
            if (weightVector[0] != 0) {
                return weightVector;
            }
            String fileName = libraryDirectory + "WeightVector";
            try {
                BufferedReader inFile = new BufferedReader(new FileReader(fileName));
                String num, line = inFile.readLine();
                int end = line.indexOf("\t"), start = 0;
                for (int i = 0; i < numberOfFeatures + 1; i++) {
                    num = line.substring(start, end);
                    weightVector[i] = Double.parseDouble(num);
                    start = end + 1;
                    end = line.indexOf("\t", start);
                }
                num = line.substring(start).trim();
                int last = numberOfFeatures + 1;
                weightVector[last] = Double.parseDouble(num);
            } catch (FileNotFoundException e) {
                throw new JavaSystemException("weightVector File Not Found:\n" + e);
            }
            return weightVector;
        }  //  end of method getWtVect
    }  //  end of inner class ClusterState

    /** Read in a DomainTheory file (in .thy format) from disk.

    @param	fileName	name of file holding the domain theory

    @throws		JavaSystemException	if file is corrupted or missing.
    @throws		KSParsingErrorException	if .thy file cannot be parsed cleanly.
    @throws		KSBadHornClauseException	if file contains a troublesome Horn clauses.
    @throws		KSConstraintInconsistency	if constraints in a Horn clause are contradictory.	*/
    public static DomainTheory readThyFile(String fileName)
            throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException,
            KSInternalErrorException, KSConstraintInconsistency {
        //  Read in a domain theory stored in a .thy file.
        Parser parzer = new Parser(new Tokenizer(getDFA(), new Linus(fileName)));
        DomainTheory dt = parzer.parseDomainTheory();
        //  Check for over-write of an already-active context.
        String langName = dt.languageName;
        int end = langName.indexOf("(");
        if (end > -1) {
            langName = langName.substring(0, end);
        }
        Context actxt = (Context) activeContexts.get(langName);
        if (actxt != null) {
            if (((actxt.domTheoryRefLoaded()) && (!dt.addressTerms))
                    || ((actxt.domTheoryAdrLoaded()) && (dt.addressTerms))) {
                throw new KSInternalErrorException("This will over-write an already-active domain theory.");
            }
            actxt.addDomainTheory(dt);
            Context.current = actxt;
        } else {
            actxt = new Context(dt); // new context automatically is current & active
        }
        ContextStub cStub = retrieveOrCreateStub(langName);
        if (dt.addressTerms) {
            cStub.adrThyExists = true;
        } else {
            cStub.refThyExists = true;
        }
        DomainTheory.addrTerms = dt.addressTerms;
        DomainTheory.current = dt;
        return dt;
    }  //  end of method readThyFile

    /** Write out a DomainTheory file in .thy format.

    @param		dt	the domain theory to be written.

    @throws		JavaSystemException	if file is corrupted or missing.
    @throws		KSInternalErrorException	if the system gets confused and needs a nap.	*/
    static void writeThyFile(DomainTheory dt) throws JavaSystemException, KSInternalErrorException {
        String fileName = libraryDirectory + "Domain Theory Files/" + dt.languageName;
        try {
            PrintWriter outFile = new PrintWriter(new BufferedWriter(new FileWriter(fileName)));
            dt.toThyFile(outFile);
            System.out.println("Wrote: " + fileName);
        } catch (IOException e) {
            throw new JavaSystemException(dt.languageName + ".thy File Creation failed:\n" + e);
        }
    }  //  end of method writeThyFile

    /** 
    Write an output stream to disk that saves the state of the Context and all its constituents
    EXCEPT its 2 DomainTheories and its populations.  They are too big; we'll read them on demand.
    THEREFORE, this method should NEVER be called on the contextUnderConstruction  --  it would wipe out
    all the people's records.
    
    @param	ctxt    a Context containing the current state of Data_Gathering
    
    @throws    a NotSerializableException   if any part of the Context is not serializable.
    @throws    a FileNotFoundException      if the file name is messed up.
    @throws    an IOException               if there is a generic read/write failure.
     */
    public static String saveContextToDisk(Context ctxt) throws NotSerializableException,
            IOException, FileNotFoundException, KSInternalErrorException {

        if (ctxt == Library.contextUnderConstruction) {
            throw new KSInternalErrorException("ERROR:  Cannot call 'saveContextToDisk' on C.U.C.");
        }
        String fileName = libraryCtxtDirectory, langName = ctxt.languageName;
        if (langName.length() > 28) {
            langName = langName.substring(0, 28);
        }
        fileName += langName + ".ctxt";
        ctxt.domTheoryRefNullify();
        ctxt.domTheoryAdrNullify();
        ctxt.resetTo(0, 0);
        ObjectOutputStream out = new ObjectOutputStream(new FileOutputStream(fileName));
        out.writeObject(ctxt);
        out.flush();
        ContextStub cStub = retrieveOrCreateStub(langName);
        System.out.println("Wrote: " + fileName);
        return fileName;
    }  //  end of method saveContextToDisk(context)

    /** 
    Read an input stream from disk and reconstruct a Context and all its constituents;
    by default, add it to the ContextStub file.

    @param	fileName    a Context containing the current state of Data_Gathering

    @throws    a FileNotFoundException  if the named file does not exist.
    @throws    an IOException           if there is a generic read/write failure.
    @throws    a ClassNotFoundException if a constructor cannot be found for a class stored in the file .
     */
    public static Context readContextFromDisk(String fileName) throws IOException,
            FileNotFoundException, ClassNotFoundException {
        return readContextFromDisk(fileName, true);
    }  //  end of method readContextFromDisk(context)

    /** 
    Read an input stream from disk & reconstruct a Context and all its constituents; if
    makeStub = true, then add it to the ContextStub file.

    @param	fileName    a Context containing the current state of Data_Gathering
    @param	makeStub    true = add this context to the ContextStub file; false = don't

    @throws    a FileNotFoundException  if the named file does not exist.
    @throws    an IOException           if there is a generic read/write failure.
    @throws    a ClassNotFoundException if a constructor cannot be found for a class stored in the file .
     */
    public static Context readContextFromDisk(String fileName, boolean makeStub) throws IOException,
            FileNotFoundException, ClassNotFoundException {
        ObjectInputStream str = new ObjectInputStream(new FileInputStream(fileName));
        Context ctxt = (Context) str.readObject();
        ctxt.saveState = false;  //  will change if any edits made
        if (makeStub) {
            ContextStub cStub = retrieveOrCreateStub(ctxt.languageName);
            activeContexts.put(ctxt.languageName, ctxt);
        }
        return ctxt;
    }  //  end of method readContextFromDisk(context, boolean)

    /**
    Write an output stream to disk that saves the state of FV Clustering = Library.clSt.
    
    @throws    a NotSerializableException   if any part of the ClusterState is not serializable.
    @throws    a FileNotFoundException      if the file name is messed up.
    @throws    an IOException               if there is a generic read/write failure.
     */
    public static void saveClusterStateToDisk() throws NotSerializableException, IOException {
        String fileName = libraryDirectory + "Cluster_State";
        ObjectOutputStream out = new ObjectOutputStream(new FileOutputStream(fileName));
        out.writeObject(clSt);
        out.flush();
        System.out.println("Wrote: " + fileName);
    }  //  end of method saveClusterStateToDisk()

    /** 
    Read an intput stream from disk, reconstruct FV Clustering, and store to Library.clSt

    @throws    a FileNotFoundException  if the named file does not exist.
    @throws    an IOException           if there is a generic read/write failure.
    @throws    a ClassNotFoundException if a constructor cannot be found for a class stored in the file .
     */
    public static void readClusterStateFromDisk() throws IOException, FileNotFoundException, ClassNotFoundException {
        String fileName = libraryDirectory + "Cluster_State";
        ObjectInputStream str = new ObjectInputStream(new FileInputStream(fileName));
        clSt = (ClusterState) str.readObject();
    }  //  end of method readClusterStateFromDisk()

    /** 
    Parse a new {@link DomainTheory} from Horn Clauses and add it to the Library.
    If there's no existing context for this language, make one.

    @param	file    a text file containing Horn Clauses expressing a Domain Theory

    @throws    a {@link KSInternalErrorException} if <code>dt</code>  would over-write an existing domain theory.
    @throws    a {@link KSBadHornClauseException} if the theory contains an illegal or contradictory clause.
    @throws    a {@link JavaSystemException} if writing the final *.thy file gets an IO Exception
    @throws    a {@link KSParsingErrorException} if the file cannot be parsed.
     */
    public static void loadNewDomTh(File file) throws KSParsingErrorException, JavaSystemException, KSConstraintInconsistency,
            NotSerializableException, KSBadHornClauseException, KSInternalErrorException, IOException {
        Linus dtLineServer = new Linus(file),
                macroLineServer = new Linus(libraryDirectory + "Standard_Macros");
        Parser parzer = new Parser(new Tokenizer(getDFA(), dtLineServer), new Tokenizer(getDFA(), macroLineServer));
        DomainTheory dt = parzer.parseDomainTheory();
        addDomainTheory(dt);
    }

    /** 
    Read in a  .silk file, which is the primary output file of the KinshipEditor. That file will
    in turn point to a context and domain_theory file for a target culture. Use the contents
    of these files to create the appropriate structures for a learning context.

    @param	file  the  .silk file

    @throws    a {@link JavaSystemException} if reading any file gets an IO Exception
     */
    public static void loadSILKFile(File file) throws KSParsingErrorException, JavaSystemException,
            KSBadHornClauseException, KSInternalErrorException, KSConstraintInconsistency, KSDateParseException {
        //  if a context may have been changed
        Linus silkLineServer = new Linus(file, "UTF8");
//    	Linus silkLineServer = new Linus(file);
        Tokenizer tok = new Tokenizer(getDFA(), silkLineServer);
        if (preXML) {
            SILKFileParserPreXML parzer = new SILKFileParserPreXML(tok);
            contextUnderConstruction = parzer.parseSILKFile();
        } else {
            SILKFileParser parzer = new SILKFileParser(tok);
            contextUnderConstruction = parzer.parseSILKFile();
        }
        contextUnderConstruction.saveState = false;  //  will change if any edits made
        Context.current = contextUnderConstruction;
        ContextStub cStub = retrieveOrCreateStub(contextUnderConstruction.languageName);
        activeContexts.put(contextUnderConstruction.languageName, contextUnderConstruction);
    }  //  end of method loadSILKFile()

    /** 
    Parse a new {@link DomainTheory} from Horn Clauses and add it to the Library.
    If there's no existing context for this language, make one.

    @param	pathName  full pathname to a text file containing Horn Clauses expressing a Domain Theory

    @throws    a {@link KSInternalErrorException} if <code>dt</code>  would over-write an existing domain theory.
    @throws    a {@link KSBadHornClauseException} if the theory contains an illegal or contradictory clause.
    @throws    a {@link JavaSystemException} if writing the final *.thy file gets an IO Exception
    @throws    a {@link KSParsingErrorException} if the file cannot be parsed.
     */
    public static void loadNewDomTh(String pathName) throws KSInternalErrorException, KSBadHornClauseException,
            KSParsingErrorException, JavaSystemException, NotSerializableException, IOException, KSConstraintInconsistency {
        Linus dtLineServer = new Linus(pathName),
                macroLineServer = new Linus(libraryDirectory + "Standard_Macros");
        Parser parzer = new Parser(new Tokenizer(getDFA(), dtLineServer), new Tokenizer(getDFA(), macroLineServer));
        DomainTheory dt = parzer.parseDomainTheory();
        addDomainTheory(dt);
    }

    /** 
    Add a new {@link DomainTheory} to the Library.  If there's no existing context for this language, make one.
    Save (or re-save) the context to disk after updating it.

    @param	dt  a Domain Theory to be loaded

    @throws    a {@link KSInternalErrorException} if <code>dt</code>  would over-write an existing domain theory.
    @throws    a {@link KSBadHornClauseException} if the theory contains an illegal or contradictory clause.
    @throws    a {@link JavaSystemException} if writing the final *.thy file gets an IO Exception
     */
    public static void addDomainTheory(DomainTheory dt) throws KSInternalErrorException, KSBadHornClauseException,
            KSParsingErrorException, JavaSystemException, NotSerializableException, IOException {

//  First, make/find the context & expand the definitions (so final activity-checking occurs).
        Context oldCtxt = Context.current, ctxt, actxt;
        DomainTheory oldDT = DomainTheory.current;
        String languageName = dt.languageName;
        int end = languageName.indexOf("(");
        if (end > -1) {
            languageName = languageName.substring(0, end);
        }
        actxt = (Context) activeContexts.get(languageName);
        if (actxt != null) {
            ctxt = actxt;
            ctxt.addDomainTheory(dt);
            Context.current = ctxt;
        } else {
            ctxt = new Context(dt); // new context automatically becomes current & active
        }
        DomainTheory.current = dt;
        KinTermDef ktd;
        Iterator iter = dt.theory.values().iterator();  //  each value is a KinTermDef
        //  Expand all the definitions.
        try {
            while (iter.hasNext()) {
                ktd = (KinTermDef) iter.next();
                if (ktd.expandedDefs == null || ktd.expandedDefs.isEmpty()) //  Std Macros are already expanded
                {
                    ktd.expandClauses(ctxt);
                }
            }
        } catch (KSBadHornClauseException ex) {
            ctxt.removeDomainTheory(dt);
            DomainTheory.current = oldDT;
            throw new KSBadHornClauseException(ex.getMessage());
        } catch (KSConstraintInconsistency ex) {
            ctxt.removeDomainTheory(dt);
            DomainTheory.current = oldDT;
            throw new KSBadHornClauseException(ex.getMessage());
        }
        ContextStub cStub = retrieveOrCreateStub(languageName);
//  Second, check for potential collision with an existing domain theory (last activity check)
        if (!allowOverWrites
                && ((cStub.adrThyExists && dt.addressTerms)
                || (cStub.refThyExists && (!dt.addressTerms)))) {
            DomainTheory.current = oldDT;
            throw new KSInternalErrorException("Attempting to over-write existing Domain Theory in Library.");
        }
//  Finally, write out the .ctxt file & update the disk stubs file.
        DomainTheory.addrTerms = dt.addressTerms;
        ctxt.saveState = true;  //  assures it will be written to disk at exit.
        if (dt.addressTerms) {
            cStub.adrThyExists = true;
        } else {
            cStub.refThyExists = true;
        }
        writeStubFile();
    }  //  end of method addDomainTheory

    /** 
    Find the ContextStub for this language, or create one.
    
    @param  langName    name of the language for the desired context
    
    @return    a ContextStub, either the appropriate existing one or a new one.
     */
    public static ContextStub retrieveOrCreateStub(String langName) {
        for (ContextStub stub : stubs) {
            if (langName.equals(stub.languageName)) {
                return stub;
            }
        }
        //  If we get here, must make & register a new stub
        ContextStub newStub = new ContextStub(langName);
        stubs.add(newStub);
        return newStub;
    }  //  end of method retrieveOrCreateStub

    /** 
    Return a String array where each array element is the name of a language for a
    domain theory in the Library.
    By convention, a languageName with no type on the end is for Terms of Reference.  For example:
    "English" means English terms of reference, and "English(Adr)" means English terms of address.

    @return    the String array.
     */
    public static String[] genLangMenu() {
        //  Generate a string array for use in a Menu.  
        int count = 0, j = 0;
        for (ContextStub stub : stubs) {
            if (stub.adrThyExists) {
                count++;
            }
            if (stub.refThyExists) {
                count++;
            }
        }
        String[] langs = new String[count];
        for (ContextStub stub : stubs) {
            if (stub.refThyExists) {
                langs[j++] = stub.languageName;
            }
            if (stub.adrThyExists) {
                langs[j++] = stub.languageName + "(Adr)";
            }
        }
        return langs;
    }  //  end of method genLangMenu

    /** 
    Return a String array where each array element is the name (28 char max) of a language for a
    Context in the Library.

    @return    the String array.
     */
    public static String[] genCtxtMenu() {
        //  Generate a string array for use in a Menu.  
        String[] langs = new String[stubs.size()];
        for (int i = 0; i < stubs.size(); i++) {
            langs[i] = stubs.get(i).languageName;
        }
        return langs;
    }  //  end of method genCtxtMenu

    public static String[] genCtxtMenu(String all) {
        //  Generate a string array for use in a Menu.  
        String[] langs = new String[stubs.size() + 1];
        langs[0] = "All";
        for (int i = 0; i < stubs.size(); i++) {
            langs[i + 1] = stubs.get(i).languageName;
        }
        return langs;
    }  //  end of method genCtxtMenu

    /** Build from scratch the Library's ClauseIndex (cbIndex), BaseCBIndex, KinTerm Signature Tree (ktSigTree), 
    PredEncodings, PredDecodings, and ClauseCounts (cbCounts) for every selected language.   */
    public static void generateAllIndexes(int start, int end, String suffix) throws KSInternalErrorException, JavaSystemException,
            KSParsingErrorException, KSBadHornClauseException, KSConstraintInconsistency, ClassNotFoundException, IOException {
        cbIndex = new ClauseIndex();
        baseCBIndex = new ClauseIndex();
        ktSigTree = new TreeMap();
        cbCounts = new ClauseCounts();
        String[] langs = genCtxtMenu();
        int stop = Math.min(end + 1, langs.length);
        Context ctxt;
        for (int i = start; i < stop; i++) {
            String langName = langs[i];
            ctxt = (Context) activeContexts.get(langName);
            if (ctxt == null) { //  need to load from disk
                String fileName = libraryCtxtDirectory + langName + ".ctxt";
                ctxt = readContextFromDisk(fileName);
            }  //  end of need to load from disk
            Context.current = ctxt;
            ContextStub cStub = retrieveOrCreateStub(langName);  //  we know it exists
            if (cStub.refThyExists) {
                ctxt.domTheoryRef().generateIndexes();
            }
            if (cStub.adrThyExists) {
                ctxt.domTheoryAdr().generateIndexes();
            }
        }  //  end of loop thru languages
        //  Now save indexes to Disk.
        String fileName;
        PrintWriter outFile;
        fileName = libraryDirectory + "Index Segments/ClauseIndex" + suffix;
        outFile = new PrintWriter(new BufferedWriter(new FileWriter(fileName)));
        cbIndex.toDisk(outFile);
        System.out.println(cbIndex.stats());
        fileName = libraryDirectory + "Index Segments/BaseCBIndex" + suffix;
        outFile = new PrintWriter(new BufferedWriter(new FileWriter(fileName)));
        baseCBIndex.toDisk(outFile);
        System.out.println("Base" + baseCBIndex.stats());
        fileName = libraryDirectory + "Index Segments/KinTermSigTree" + suffix;
        outFile = new PrintWriter(new BufferedWriter(new FileWriter(fileName)));
        writeKTSig(outFile, "full");
        ktSigCompressed = compress(ktSigTree);
        fileName = libraryDirectory + "Index Segments/KTSigCompressed" + suffix;
        outFile = new PrintWriter(new BufferedWriter(new FileWriter(fileName)));
        writeKTSig(outFile, "compact");
        fileName = libraryDirectory + "Index Segments/ClauseCounts" + suffix;
        outFile = new PrintWriter(new BufferedWriter(new FileWriter(fileName)));
        cbCounts.toDisk(outFile);
        writePredEncodings(suffix);
        writePredDecodings(suffix);
    }  //  end of method generateAllIndexes

    static void mergeIndexes(ArrayList<Object> cbIfiles, ArrayList<Object> bcbIfiles, ArrayList<Object> ktFiles, ArrayList<Object> cbCountFiles,
            ArrayList<Object> predEncodeFileList, ArrayList<Object> predDecodeFileList)
            throws FileNotFoundException, KSParsingErrorException, JavaSystemException, IOException,
            KSInternalErrorException, KSConstraintInconsistency, KSBadHornClauseException,
            KSNoChainOfRelations2Alter, ClassNotFoundException {

        parseClauseCounterOn = false;
        String fileName;
        BufferedReader file;
        PrintWriter outFile;
        //  First merge ClauseCounts
        fileName = (String) cbCountFiles.get(0);
        file = new BufferedReader(new FileReader(fileName));
        cbCounts = new ClauseCounts(file);
        for (int i = 1; i < cbCountFiles.size(); i++) {
            fileName = (String) cbCountFiles.get(i);
            file = new BufferedReader(new FileReader(fileName));
            cbCounts.assimilate(new ClauseCounts(file));
        }
        fileName = libraryDirectory + "ClauseCounts";
        outFile = new PrintWriter(new BufferedWriter(new FileWriter(fileName)));
        cbCounts.toDisk(outFile);
        System.out.println("Wrote " + fileName);

        //  Now merge pred Encode files
        fileName = (String) predEncodeFileList.get(0);
        file = new BufferedReader(new FileReader(fileName));
        predEncodings = readPredEncodings(file);
        for (int i = 1; i < predEncodeFileList.size(); i++) {
            fileName = (String) predEncodeFileList.get(i);
            file = new BufferedReader(new FileReader(fileName));
            TreeMap newGuy = readPredEncodings(file);
            predEncodings.putAll(newGuy);
        }
        writePredEncodings("");
        System.out.println("Wrote predEncodings.");

        //  And pred Decode files
        fileName = (String) predDecodeFileList.get(0);
        file = new BufferedReader(new FileReader(fileName));
        predDecodings = readPredDecodings(file);
        for (int i = 1; i < predDecodeFileList.size(); i++) {
            fileName = (String) predDecodeFileList.get(i);
            file = new BufferedReader(new FileReader(fileName));
            TreeMap newGuy = readPredDecodings(file);
            predDecodings.putAll(newGuy);
        }
        writePredDecodings("");
        System.out.println("Wrote predDecodings.");

        //  Now merge ClauseIndexes
        fileName = (String) cbIfiles.get(0);
        file = new BufferedReader(new FileReader(fileName));
        cbIndex = new ClauseIndex(file);
        for (int i = 1; i < cbIfiles.size(); i++) {
            fileName = (String) cbIfiles.get(i);
            file = new BufferedReader(new FileReader(fileName));
            cbIndex.merge(new ClauseIndex(file));
            System.out.println("Done merging " + fileName);
            System.out.println(cbIndex.stats());
        }
        fileName = libraryDirectory + "ClauseIndex";
        outFile = new PrintWriter(new BufferedWriter(new FileWriter(fileName)));
        cbIndex.toDisk(outFile);
        System.out.println("Wrote " + fileName);

        //  And BaseCBIndexes
        fileName = (String) bcbIfiles.get(0);
        file = new BufferedReader(new FileReader(fileName));
        baseCBIndex = new ClauseIndex(file);
        for (int i = 1; i < bcbIfiles.size(); i++) {
            fileName = (String) bcbIfiles.get(i);
            file = new BufferedReader(new FileReader(fileName));
            baseCBIndex.merge(new ClauseIndex(file));
            System.out.println("Done merging " + fileName);
            System.out.println(baseCBIndex.stats());
        }
        fileName = libraryDirectory + "BaseCBIndex";
        outFile = new PrintWriter(new BufferedWriter(new FileWriter(fileName)));
        baseCBIndex.toDisk(outFile);
        System.out.println("Wrote " + fileName);

        //  Then KinTermSigTrees
        fileName = (String) ktFiles.get(0);
        file = new BufferedReader(new FileReader(fileName));
        ktSigTree = readKTSig(file);
        for (int i = 1; i < ktFiles.size(); i++) {
            fileName = (String) ktFiles.get(i);
            file = new BufferedReader(new FileReader(fileName));
            ktSigTree = mergeKTSigTrees(ktSigTree, readKTSig(file));
            System.out.println("Done merging " + fileName);
        }
        fileName = libraryDirectory + "KinTermSigTree";
        outFile = new PrintWriter(new BufferedWriter(new FileWriter(fileName)));
        writeKTSig(outFile, "full");
        ktSigCompressed = compress(ktSigTree);
        fileName = libraryDirectory + "KTSigCompressed";
        outFile = new PrintWriter(new BufferedWriter(new FileWriter(fileName)));
        writeKTSig(outFile, "compact");
        parseClauseCounterOn = true;
    }  //  end of method mergeIndexes

    
    static FeatureVectorObj findOrCreateFV(String langName, boolean adr)
            throws JavaSystemException {
        FeatureVectorObj fv;
        String suffix = (adr ? "(Adr)" : "");
        String fileName = libraryDirectory + "Feature Vectors/" + langName + suffix + ".fvect";
        try {
     // 1st choice: read pre-computed FV
            BufferedReader inFile = new BufferedReader(new FileReader(fileName));
            return new FeatureVectorObj(inFile);
        } catch (Exception exc) {
            Context oldCtxtCurrent = Context.current;
            DomainTheory dt, oldDTCurrent = DomainTheory.current;
            Context actxt = (Context) activeContexts.get(langName);
            if (actxt != null) {
     // 2nd choice: Try to create from context already loaded
                try {
                    dt = (adr ? actxt.domTheoryAdr() : actxt.domTheoryRef());
                    ArrayList<Object> egoList = new ArrayList<Object>();
                    fv = dt.computeFeatureVector(egoList);
                    Context.current = oldCtxtCurrent;
                    DomainTheory.current = oldDTCurrent;
                    return fv;
                } catch (Exception dtx) {
                }
            }
      // 3rd choice: read domThy from Contexts Under Construction
            fileName = libraryDirectory + "Context Under Construction/" + langName + suffix + ".thy";
            try {
                dt = readThyFile(fileName);
                ArrayList<Object> egoList = new ArrayList<Object>();
                fv = dt.computeFeatureVector(egoList);
                Context.current = oldCtxtCurrent;
                DomainTheory.current = oldDTCurrent;
                return fv;
            } catch (Exception ex) {
      // 4th choice: read in Library .thy file.
                fileName = libraryDirectory + "Domain Theory Files/" + langName + suffix + ".thy";
                try {
                    dt = readThyFile(fileName);
                    ArrayList<Object> egoList = new ArrayList<Object>();
                    fv = dt.computeFeatureVector(egoList);
                    Context.current = oldCtxtCurrent;
                    DomainTheory.current = oldDTCurrent;
                    return fv;
                } catch (Exception dtx) {
                    String msg = "Unable to find/create Feature Vector for " + langName + suffix;
                    Context.current = oldCtxtCurrent;
                    DomainTheory.current = oldDTCurrent;
                    throw new JavaSystemException(msg);
                }
            }
        }
    }

    /** Generate a Similarity Matrix for all FeatureVectors in the Library.	*/
    public static void generateSimMatrix()
            throws KSBadHornClauseException, KSInternalErrorException, KSConstraintInconsistency,
            ClassNotFoundException, java.io.IOException, JavaSystemException {
        if (clSt == null) {
            clSt = new ClusterState();
        }
        generateSimMatrix(clSt);
    }  //  end of default generator from scratch

    public static void generateSimMatrix(ClusterState cluSt)
            throws KSBadHornClauseException, KSInternalErrorException, KSConstraintInconsistency,
            ClassNotFoundException, java.io.IOException, JavaSystemException {
        FeatureVectorObj fv = null;
        int serialNum = 0, numDTs;
        resetDistributions();
        for (ContextStub cStub : stubs) {
            if (cStub.adrThyExists) {
                fv = findOrCreateFV(cStub.languageName, true);
                fv.fvID = serialNum++;
                cluSt.allFVs.add(fv);
                cluSt.fvMap.put(cStub.languageName + "(Adr)", fv);
                postDistributions(fv);
            }
            if (cStub.refThyExists) {
                fv = findOrCreateFV(cStub.languageName, false);
                fv.fvID = serialNum++;
                cluSt.allFVs.add(fv);
                cluSt.fvMap.put(cStub.languageName, fv);
                postDistributions(fv);
            }
        }  //  end of loop thru languages
        //  Now create the matrix of dimensional distances.  The 'dimensional distance' between the values for feature_x
        //  on fv1 and fv2 is defined as 1 - similarity between those corresponding feaures.
        numDTs = cluSt.allFVs.size();
        cluSt.dimDistSqrdMatrix = new FloatMatrix(numDTs, numDTs, cluSt.numberOfFeatures);
        cluSt.dimDistSqrDistns = new FeatureVectorObj.FloatDistributionObj[cluSt.numberOfFeatures];
        for (int i = 0; i < cluSt.numberOfFeatures; i++) {
            cluSt.dimDistSqrDistns[i] = new FeatureVectorObj.FloatDistributionObj();
        }
        FeatureVectorObj fv1, fv2;
        float[] simVector;
        float dimDistSqrd;
        for (int j = 0; j < numDTs; j++) {
            for (int k = j; k < numDTs; k++) {
                if (j == k) {
                    for (int n = 0; n < cluSt.numberOfFeatures; n++) {
                        cluSt.dimDistSqrdMatrix.put(j, k, n, ZERO);
                    }
                } else {  //  j != k
                    fv1 = (FeatureVectorObj) cluSt.allFVs.get(j);
                    fv2 = (FeatureVectorObj) cluSt.allFVs.get(k);
                    simVector = fv1.computeSimilarity(fv2);
                    for (int n = 0; n < cluSt.numberOfFeatures; n++) {
                        dimDistSqrd = (float) Math.pow(1d - (double) simVector[n], 2d);
                        //  dimDistSqrd = (1 - simVector[n])^2;
                        cluSt.dimDistSqrdMatrix.put(j, k, n, dimDistSqrd);
                        cluSt.dimDistSqrdMatrix.put(k, j, n, dimDistSqrd);
                        cluSt.dimDistSqrDistns[n].add(dimDistSqrd);
                    }
                }  //  end of else-j != k
            }  //  end of inner loop (k)
        }  //  end of outer loop (j)
    }  //  end of method generateSimMatrix()

    static void resetDistributions() {
        FeatureVectorObj.el_1_distn = new FeatureVectorObj.FloatDistributionObj();
        FeatureVectorObj.el_2_distn = new FeatureVectorObj.FloatDistributionObj();
        FeatureVectorObj.el_3_distn = new FeatureVectorObj.SymbolDistributionObj();
        FeatureVectorObj.el_4_distn = new FeatureVectorObj.SymbolDistributionObj();
        FeatureVectorObj.el_5_distn = new FeatureVectorObj.FloatDistributionObj();
        FeatureVectorObj.el_8_distn = new FeatureVectorObj.SymbolDistributionObj();
        FeatureVectorObj.el_9_distn = new FeatureVectorObj.SymbolDistributionObj();
    }  //  end of method resetDistributions()

    static void postDistributions(FeatureVectorObj fv) {
        FeatureVectorObj.el_1_distn.add(fv.percentRecip);
        FeatureVectorObj.el_2_distn.add(fv.percentMultiGen);
        FeatureVectorObj.el_3_distn.addAll(fv.ivcList);
        FeatureVectorObj.el_4_distn.addAll(fv.hcvcList);
        FeatureVectorObj.el_5_distn.add(fv.avgLateralCount);
        FeatureVectorObj.el_8_distn.addAll(fv.exactSigSet);
        FeatureVectorObj.el_9_distn.addAll(fv.structSigSet);
    }  //  end of method postDistributions

    /** Write all the Feature Vector distributions to disk.

    @throws JavaSystemException	if file system gets in trouble.	*/
    public static void writeDistributionsToFile() throws JavaSystemException {
        try {
            String fileName = libraryDirectory + "Feature Vectors/" + "el_1.distn";
            PrintWriter file = new PrintWriter((new BufferedWriter(new FileWriter(fileName))));
            FeatureVectorObj.el_1_distn.writeToFile(file);

            fileName = libraryDirectory + "Feature Vectors/" + "el_2.distn";
            file = new PrintWriter((new BufferedWriter(new FileWriter(fileName))));
            FeatureVectorObj.el_2_distn.writeToFile(file);

            fileName = libraryDirectory + "Feature Vectors/" + "el_3.distn";
            file = new PrintWriter((new BufferedWriter(new FileWriter(fileName))));
            FeatureVectorObj.el_3_distn.writeToFile(file);

            fileName = libraryDirectory + "Feature Vectors/" + "el_4.distn";
            file = new PrintWriter((new BufferedWriter(new FileWriter(fileName))));
            FeatureVectorObj.el_4_distn.writeToFile(file);

            fileName = libraryDirectory + "Feature Vectors/" + "el_5.distn";
            file = new PrintWriter((new BufferedWriter(new FileWriter(fileName))));
            FeatureVectorObj.el_5_distn.writeToFile(file);

            fileName = libraryDirectory + "Feature Vectors/" + "el_8.distn";
            file = new PrintWriter((new BufferedWriter(new FileWriter(fileName))));
            FeatureVectorObj.el_8_distn.writeToFile(file);

            fileName = libraryDirectory + "Feature Vectors/" + "el_9.distn";
            file = new PrintWriter((new BufferedWriter(new FileWriter(fileName))));
            FeatureVectorObj.el_9_distn.writeToFile(file);
        } catch (IOException ioe) {
            throw new JavaSystemException("Error while writing distribution files:\n" + ioe);
        }
    }  //  end of method writeDistributionsToFile

    /** Read in the Feature Vector distributions from disk.

    @throws JavaSystemException	if file system gets in trouble.	*/
    public static void readDistributionsFromFile() throws JavaSystemException {
        try {
            String fileName = libraryDirectory + "Feature Vectors/" + "el_1.distn";
            BufferedReader file = new BufferedReader(new FileReader(fileName));
            FeatureVectorObj.el_1_distn = new FeatureVectorObj.FloatDistributionObj(file);

            fileName = libraryDirectory + "Feature Vectors/" + "el_2.distn";
            file = new BufferedReader(new FileReader(fileName));
            FeatureVectorObj.el_2_distn = new FeatureVectorObj.FloatDistributionObj(file);

            fileName = libraryDirectory + "Feature Vectors/" + "el_3.distn";
            file = new BufferedReader(new FileReader(fileName));
            FeatureVectorObj.el_3_distn = new FeatureVectorObj.SymbolDistributionObj(file);

            fileName = libraryDirectory + "Feature Vectors/" + "el_4.distn";
            file = new BufferedReader(new FileReader(fileName));
            FeatureVectorObj.el_4_distn = new FeatureVectorObj.SymbolDistributionObj(file);

            fileName = libraryDirectory + "Feature Vectors/" + "el_5.distn";
            file = new BufferedReader(new FileReader(fileName));
            FeatureVectorObj.el_5_distn = new FeatureVectorObj.FloatDistributionObj(file);

            fileName = libraryDirectory + "Feature Vectors/" + "el_8.distn";
            file = new BufferedReader(new FileReader(fileName));
            FeatureVectorObj.el_8_distn = new FeatureVectorObj.SymbolDistributionObj(file);

            fileName = libraryDirectory + "Feature Vectors/" + "el_9.distn";
            file = new BufferedReader(new FileReader(fileName));
            FeatureVectorObj.el_9_distn = new FeatureVectorObj.SymbolDistributionObj(file);
        } catch (FileNotFoundException fnf) {
            throw new JavaSystemException("Error while reading distribution files:\n" + fnf);
        }
    }  //  end of method readDistributionsFromFile

    /** Do a clustering of all the feature vectors (representing domain theories) in the Library.
    The algorithm is:
    <p> For k = minK to maxK do
    <p> Set "equal impact" weights on each of the F features (normalized by variance of feature distances)
    <p> Pick initial seeds c_1 ... c_k. whose distance to each other is >= median.
    <p> Calculate Squared Euclidian Distance matrix for the DTs
    <p> Do K-medioids clustering using distance of newbie to seed-or-mediod
    <p> Iteratively alter the weights on each feature to maximize cluster quality.
    <p> Cluster Quality =  - Sum_over_all_x,y[ b * dist(x, y)] + Lopsided-Weight-Penalty
    <p>   	where b = 1 if x & y are in same the cluster or -1 otherwise
    <p> Re-cluster with the new weight vector.
    <p> Repeat until clustering does not change.
    <p> Store the best clustering and its quality score.
    <p> Pick the k (and weight vector) which has the best quality score.

    @param	minK	the smallest number of clusters desired
    @param	maxK	the largest number of clusters desired
    @param	penalty	the percentage of a cluster's quality score which is subtracted if all the feature weight is
    given to a single feature.

    @throws JavaSystemException			if file system gets in trouble.
    @throws	KSInternalErrorException	if the code gets hung up
    @throws KSBadHornClauseException	if the generation of a Similarity Matrix hits a troublesome Horn clause
    @throws	IOException					if file system activity encountered
    @throws	ClassNotFoundException		if class can't be found
    @throws KSConstraintInconsistency	if the generation of a Similarity Matrix hits troublesome constrints in a Horn clause
     */
    public static void clusterFVs(int minK, int maxK, float penalty)
            throws KSBadHornClauseException, KSInternalErrorException, KSConstraintInconsistency,
            ClassNotFoundException, java.io.IOException, JavaSystemException {
        // Cluster the DomainTheories (j.e. their feature vectors) according to similarities.
        // minK to maxK = the numbers of clusters to try.
        //

        if (clSt == null) {
            generateSimMatrix();
        }
        int numKs = maxK - minK + 1, numDTs = clSt.allFVs.size(), minClustSeen, soloCntr, cell = 0;
        int[] bMatrix = new int[numDTs * numDTs];
        DoubleMatrix kBestWeights = new DoubleMatrix(numKs, clSt.numberOfFeatures + 2);
        ArrayList<Object> bestClusterTried = new ArrayList<Object>();
        FeatureVectorObj cand, fvo1, fvo2;
        boolean keepOn, tooSmall = false;
        double invSum = 0d, qualScore, bestQSTried, vari;
        float avgDist, totalDist = 0f, thisDist;
        double[] weights = new double[clSt.numberOfFeatures], bestWeightsTried = new double[clSt.numberOfFeatures],
                initWeights = new double[clSt.numberOfFeatures];
        //  Calc initial weights inversely proportional to variance of each feature's distribution
        for (int w = 0; w < clSt.numberOfFeatures; w++) {
            vari = clSt.dimDistSqrDistns[w].variance();
            if (vari > 0) {
                initWeights[w] = 1d / vari;
            } else {
                initWeights[w] = 0d;
            }
            invSum += initWeights[w];
        }  //  end of first loop thru initWeights
        for (int w = 0; w < clSt.numberOfFeatures; w++) {
            initWeights[w] /= invSum;
        }
        //  Compute the average distance between any 2 FVs using the initial set of weights
        for (int fv1 = 0; fv1 < numDTs - 1; fv1++) {
            for (int fv2 = fv1 + 1; fv2 < numDTs; fv2++) {
                thisDist = 0f;
                for (int ftr = 0; ftr < clSt.numberOfFeatures; ftr++) {
                    thisDist += (clSt.dimDistSqrdMatrix.get(fv1, fv2, ftr) * (float) initWeights[ftr]);
                }
                totalDist += Math.pow((double) thisDist, 0.5d);
            }  //  end of loop thru all fv2's
        }  //  end of loop thru all fv1's
        avgDist = (float) (totalDist * 2f) / (numDTs * (numDTs - 1));
        /*FloatMatrix clusterBuds = new FloatMatrix(numDTs, numDTs);
        clusterBuds.initialize(0f);
        int numClusterings = 0;
         */
        for (int k = minK; k <= maxK; k++) {
            bestQSTried = -9999d;
            soloCntr = 0;
            qualScore = -9999d;
            for (int tries = 0; tries < 5; tries++) {
                for (int i = 0; i < clSt.numberOfFeatures; i++) {
                    weights[i] = initWeights[i];  //  reset weight vector for each new try
                }
                ArrayList<Object> clusters = new ArrayList<Object>(), newClusters = new ArrayList<Object>(),
                        candidates = new ArrayList<Object>(clSt.allFVs), innerList;
                keepOn = true;
                for (int i = 0; i < k; i++) {
                    addSeed(clusters, candidates, i, avgDist, weights);
                }
                /*  TESTING CODE
                System.out.println("###############\n  Initial Seeds are:");
                displayClusters(clusters);
                 */
                //  Now we have k clusters, each containing only its seed.  Assign each member of candidates (the non-seeds)
                //  to whichever cluster has highest avg similarity to it.
                for (int j = 0; j < candidates.size(); j++) {
                    cand = (FeatureVectorObj) candidates.get(j);
                    assignToCluster(cand, clusters, weights);
                }  //  end of loop to assign candidates to clusters
                clusters = reClusterOnMedioids(clusters, weights);
                //  Compute B-Matrix for this clustering
                for (int fv1 = 0; fv1 < numDTs; fv1++) {
                    fvo1 = (FeatureVectorObj) clSt.allFVs.get(fv1);
                    for (int fv2 = 0; fv2 < numDTs; fv2++) {
                        cell = (fv1 * numDTs) + fv2;
                        if (fv1 == fv2) {
                            bMatrix[cell] = 0;
                        } else {   //  2-different-fvs
                            fvo2 = (FeatureVectorObj) clSt.allFVs.get(fv2);
                            bMatrix[cell] = sameCluster(fvo1, fvo2, clusters);
                        }
                    }
                }	//  end of loop thru bMatrix cells
                qualScore = computeQualityScore(clusters, weights, k, bMatrix, penalty);
                if (qualScore > bestQSTried) {  //  best-tried-so-far
                    bestQSTried = qualScore;
                    for (int w = 0; w < clSt.numberOfFeatures; w++) {
                        bestWeightsTried[w] = weights[w];
                    }
                    bestClusterTried = newClusters;
                }  //  end of this-is-best-so-far
                //  System.out.println("\n*************************\n");
                while (keepOn) {
                    /*  TESTING CODE
                    System.out.println("Quality Score:  " + qualScore);
                    displayClusters(clusters);
                    System.out.println("Using these Weights:");
                    for (int wx=0; wx < clSt.numberOfFeatures; wx++)  {
                    System.out.print(wx + ": ");
                    String prWt = "" + weights[wx];
                    if (weights[wx] > 0.000001) System.out.print(prWt.substring(0,7) + "   ");
                    else System.out.print("___   ");
                    }
                    System.out.println("\n---------------------------------\n");
                    //  END OF TESTING CODE
                     */
                    weights = adjustWeights(clusters, weights, qualScore, k, bMatrix, penalty);
                    newClusters = reClusterOnMedioids(clusters, weights);
                    if (equivalentClustering(newClusters, clusters)) {
                        keepOn = false;
                    } else {
                        clusters = newClusters;
                        for (int fv1 = 0; fv1 < numDTs; fv1++) {
                            fvo1 = (FeatureVectorObj) clSt.allFVs.get(fv1);
                            for (int fv2 = 0; fv2 < numDTs; fv2++) {
                                cell = (fv1 * numDTs) + fv2;
                                if (fv1 == fv2) {
                                    bMatrix[cell] = 0;
                                } else {   //  2-different-fvs
                                    fvo2 = (FeatureVectorObj) clSt.allFVs.get(fv2);
                                    bMatrix[cell] = sameCluster(fvo1, fvo2, clusters);
                                }
                            }
                        }	//  end of loop thru bMatrix cells
                        System.out.println("RE-Clustering:");
//	numClusterings++;
                        qualScore = computeQualityScore(clusters, weights, k, bMatrix, penalty);
                        if (qualScore > bestQSTried) {  //  best-tried-so-far
                            bestQSTried = qualScore;
                            for (int w = 0; w < clSt.numberOfFeatures; w++) {
                                bestWeightsTried[w] = weights[w];
                            }
                            bestClusterTried = clusters;
                        }  //  end of this-is-best-so-far
                    }  //  end of else-the-clustering-changed
                }  //  end of while(keepOn)
                if (qualScore > bestQSTried) {  //  best-tried-so-far
                    bestQSTried = qualScore;
                    for (int w = 0; w < clSt.numberOfFeatures; w++) {
                        bestWeightsTried[w] = weights[w];
                    }
                    bestClusterTried = newClusters;
                }  //  end of if-this-is-best-so-far
            }  //  end of tries for this k
            //  At this point, the best clustering for this k has been found.  Record it & go on to next k.
            if (bestQSTried > -9999) {
                kBestWeights.put(k - minK, 0, (double) k);
                kBestWeights.put(k - minK, 1, bestQSTried);
                for (int r = 2; r < clSt.numberOfFeatures + 2; r++) {
                    kBestWeights.put(k - minK, r, bestWeightsTried[r - 2]);
                }
                clSt.bestClusters.add(bestClusterTried);
            }  //  end of if a good one was found
        }  //  end of loop-thru-all-values-of-k
        //  Pick the best one and store in Library static attic
        clSt.weightVector = kBestWeights.colWithMaxIn(1);
        /*  TEMP DEBUG CODE
        System.out.println("\nThe k Best Weight Vectors:\n" + kBestWeights.toGrid(6));
        System.out.println("\nPenalty Percentage: " + (penalty * 100f));
        System.out.println("\nCluster Buddy Trends for " + numClusterings + " clusterings:");
        System.out.println(clusterBuds);
        System.out.println("\nIndex:");
        for (int j=0; j < numDTs; j++) {
        fvo1 = (FeatureVectorObj)clSt.allFVs.get(j);
        System.out.println(fvo1.fvID + "\t" + fvo1.languageName);
        }
         */
    }  //  end of method clusterFVs

    static void displayClusters(ArrayList<Object> clusters) {
        ArrayList<Object> innerList;
        FeatureVectorObj fv;
        String msg = "";
        for (int i = 0; i < clusters.size(); i++) {
            msg = "Cluster " + i + ": ";
            innerList = (ArrayList<Object>) clusters.get(i);
            for (int j = 0; j < innerList.size(); j++) {
                msg += ((FeatureVectorObj) innerList.get(j)).languageName;
                msg += ", ";
            }  //  end of loop thru this cluster
            System.out.println(msg);
        }  //  end of loop thru all clusters
    }  //  end of utility displayClusters()

    static void addSeed(ArrayList<Object> clusters, ArrayList<Object> candidates, int where, float averageDist, double[] weights) {
        //  choose a seed from candidates that has more than the average distance to the other seeds
        int which = 99, tryCounter = 0;
//		boolean printOn = false;
        float minDist = 0f, newDist, avgDist = averageDist;
        FeatureVectorObj potentialSeed = null, otherSeed;
        while (minDist < avgDist) {
            if (tryCounter++ > (2 * candidates.size())) {
                avgDist *= 0.9f;
                tryCounter = 0;
//				printOn = true;
//				System.out.println("# # # # # # # \n#\n#");
//				System.out.println("Avg Dist = " + avgDist);
            }
            which = (int) Math.floor((Math.random() * candidates.size()));
            potentialSeed = (FeatureVectorObj) candidates.get(which);
            minDist = 2f;
            for (int i = 0; i < where; i++) {  //  check for distance >= average
                otherSeed = (FeatureVectorObj) ((ArrayList<Object>) clusters.get(i)).get(0);
                newDist = 0f;
                for (int j = 0; j < clSt.numberOfFeatures; j++) {
                    newDist += clSt.dimDistSqrdMatrix.get(potentialSeed.fvID, otherSeed.fvID, j) * weights[j];
                }
                newDist = (float) Math.pow((double) newDist, 0.5d);  // newDist = weighted euclidian distance between potential & other
//				if (printOn) System.out.println("Dist(" + potentialSeed.languageName + ", " + otherSeed.languageName + ") = " + newDist);
                if (newDist < minDist) {
                    minDist = newDist;
                }
            }  //  end of loop thru other seeds
            //  If we've found a potential with more-than-avg distance to all existing seeds, quit.  else, try again.
        }  //  end of while-min<avg
        candidates.remove(which);
        ArrayList<Object> newList = new ArrayList<Object>();
        newList.add(potentialSeed);
        clusters.add(newList);
    }  //  end of method addSeed

    static boolean memberOf(ArrayList<Object> clusters, FeatureVectorObj potentialSeed) {
        //  clusters is an ArrayList<Object> of ALists.  A seed is the 0th element of an inner list
        for (int i = 0; i < clusters.size(); i++) {
            if (((ArrayList<Object>) clusters.get(i)).indexOf(potentialSeed) > -1) {
                return true;
            }
        }
        return false;
    }  //  end of method memberOf

    static int sameCluster(FeatureVectorObj fv1, FeatureVectorObj fv2, ArrayList<Object> clusters) {
        //  Return 1 if fv1 & fv2 are members of the same cluster
        ArrayList<Object> clust;
        for (int cl = 0; cl < clusters.size(); cl++) {
            clust = (ArrayList<Object>) clusters.get(cl);
            if ((clust.indexOf(fv1) > -1) && (clust.indexOf(fv2) > -1)) {
                return 1;
            }
        }  //  end of loop thru clusters
        return -1;
    }  //  end of method sameCluster(fv1, fv2, clusters)

    //  SPECIAL VERSION used for analysis of clustering
    static int sameCluster(FeatureVectorObj fv1, FeatureVectorObj fv2, ArrayList<Object> clusters, FloatMatrix buds) {
        //  Return 1 if fv1 & fv2 are members of the same cluster
        ArrayList<Object> clust;
        int dt1 = fv1.fvID, dt2 = fv2.fvID;
        for (int cl = 0; cl < clusters.size(); cl++) {
            clust = (ArrayList<Object>) clusters.get(cl);
            if ((clust.indexOf(fv1) > -1) && (clust.indexOf(fv2) > -1)) {
                buds.add(dt1, dt2, 1f);
                return 1;
            }
        }  //  end of loop thru clusters
        return -1;
    }  //  end of method sameCluster(fv1, fv2, clusters, buds)

    static void assignToCluster(FeatureVectorObj cand, ArrayList<Object> clusters, double[] weights) {
        //  Assign cand to whichever cluster has lowest euclidian distance between its seed and cand.
        int best = 0;
        float totalDist, thisDist, minDist = 100f;
        FeatureVectorObj seed;
        ArrayList<Object> thisCluster;
        for (int i = 0; i < clusters.size(); i++) {
            thisCluster = (ArrayList<Object>) clusters.get(i);
            seed = (FeatureVectorObj) thisCluster.get(0);
            thisDist = 0f;
            for (int j = 0; j < clSt.numberOfFeatures; j++) {
                thisDist += (clSt.dimDistSqrdMatrix.get(cand.fvID, seed.fvID, j) * weights[j]);
            }
            totalDist = (float) Math.pow((double) thisDist, 0.5d);
//			System.out.println("dist(" + cand.languageName + ", " + seed.languageName + ") = " + Math.pow((double)thisDist, 0.5d));
            if (totalDist < minDist) {
                minDist = totalDist;
                best = i;
            }  //  end of if-this-beats-minDist
        }  //  end of loop thru the clusters
        ((ArrayList<Object>) clusters.get(best)).add(cand);
//		System.out.println("Picked " + ((FeatureVectorObj)((ArrayList<Object>)clusters.get(best)).get(0)).languageName + "\n");
    }  //  end of method assignToCluster(cand, clusters, weights)

    static ArrayList<Object> reClusterOnMedioids(ArrayList<Object> clusters, double[] weights) {
        //  The nested list 'clusters' already contains a clustering of FVs around seeds (seed = element 0)
        //  Calculate the 'medioid' of each cluster = the element with least avg distance to the other elements.
        //  Then re-cluster the FVs with the medioids as seeds.  Repeat until clustering is stable.
        //  Return the new, stable clustering.
        ArrayList<Object> thisCluster, newClusters = new ArrayList<Object>(), newClst, newCandidates = new ArrayList<Object>();
        FeatureVectorObj medioid, fv1, fv2;
        int best = 0;
        float totalDist, thisDist, minDist;
//		System.out.println("+++++++++++++++++ Re-Clustering ++++++++++++");
        for (int i = 0; i < clusters.size(); i++) {
            //  calc the medioid of this cluster
            thisCluster = new ArrayList<Object>((ArrayList<Object>) clusters.get(i));  // a shallow copy of the cluster
            minDist = 10000f;
            for (int el_1 = 0; el_1 < thisCluster.size(); el_1++) {
                totalDist = 0f;
                fv1 = (FeatureVectorObj) thisCluster.get(el_1);
                for (int el_2 = 0; el_2 < thisCluster.size(); el_2++) {
                    if (el_2 != el_1) {
                        fv2 = (FeatureVectorObj) thisCluster.get(el_2);
                        thisDist = 0f;
                        for (int j = 0; j < clSt.numberOfFeatures; j++) {
                            thisDist += (clSt.dimDistSqrdMatrix.get(fv1.fvID, fv2.fvID, j) * weights[j]);
                        }
                        totalDist += Math.pow((double) thisDist, 0.5d);
                        //					System.out.println("dist(" + fv1.languageName + ", " + fv2.languageName + ") = " + Math.pow((double)thisDist, 0.5d));
                    }  //  end of loop thru all fv2's
                }
                if (totalDist < minDist) {  //  best so far
                    minDist = totalDist;
                    best = el_1;
                }  //  end of best-so-far
            }  //  end of loop thru all fv1's
            //  the best medioid is the FV with the smallest total distance to all others in the cluster
            medioid = (FeatureVectorObj) thisCluster.remove(best);  //  remove the best one, make it the new seed
//			System.out.println("Picked " + medioid.languageName);
            newClst = new ArrayList<Object>();
            newClst.add(medioid);
            newClusters.add(newClst);
            newCandidates.addAll(thisCluster);  //  put the remaining elements into new Candidates list
        }  //  end of loop thru the clusters
        //  Now we have a new set of (better) seeds and a list of candidates.  So cluster 'em.
        for (int cand = 0; cand < newCandidates.size(); cand++) {
            assignToCluster((FeatureVectorObj) newCandidates.get(cand), newClusters, weights);
        }
        if (equivalentClustering(newClusters, clusters)) {
            return newClusters;
        } else {
            return reClusterOnMedioids(newClusters, weights);
        }
    }  //  end of method reClusterOnMedioids(clusters, weights)

    static boolean equivalentClustering(ArrayList<Object> newClusters, ArrayList<Object> oldClusters) {
        //  Test for equivalence of these 2 clusterings, meaning that each cluster in newClusters
        //  must be equivalent to its counterpart in oldClusters.  So order of the clusters is important.
        //  Within the counterpart clusters, order is NOT important.  2 different orderings of the same
        //  elements is considered equivalent.
        if (newClusters.size() != oldClusters.size()) {
            return false;
        }
        ArrayList<Object> newInner, oldInner;
        for (int i = 0; i < newClusters.size(); i++) {
            newInner = (ArrayList<Object>) newClusters.get(i);
            oldInner = (ArrayList<Object>) oldClusters.get(i);
            if (newInner.size() != oldInner.size()) {
                return false;
            }
            for (int j = 0; j < newInner.size(); j++) {
                if (!oldInner.contains(newInner.get(j))) {
                    return false;
                }
            }
        }  //  end of loop thru inner lists
        return true;
    }  //  end of method equivalentClustering

    static double computeQualityScore(ArrayList<Object> clusters, double[] weights, double newWeight,
            int where, int k, int[] bMatrix, float penalty) {
        //  Make a new weight vector in which weights[where] is replaced by newWeight, and the rest of the newWts are
        //  adjusted so they all total to 1.0 again.  Then call computeQualityScore with that new vector.
        double[] newWts = new double[weights.length];
        for (int i = 0; i < clSt.numberOfFeatures; i++) {
            newWts[i] = weights[i];
        }
        double balOfWt, shrinkFactor, delta;
        balOfWt = 1d - weights[where];
        delta = newWeight - weights[where];
        shrinkFactor = 1d - (delta / balOfWt);
        for (int i = 0; i < clSt.numberOfFeatures; i++) {
            if (i != where) {
                newWts[i] *= shrinkFactor;
            } else {
                newWts[i] = newWeight;
            }
        }
        return computeQualityScore(clusters, newWts, k, bMatrix, penalty);
    }  //  end of method computeQualityScore(clusters, newWts, newWeight, j, k)

    static double computeQualityScore(ArrayList<Object> clusters, double[] weights, int k, int[] bMatrix, float penalty) {
        //  Quality Score  =  - Sum_over_all_x,y[ b(x,y) * wtd_euclidian_dist(x, y)] - (penalty * totalScore * sumSqrWts)
        //  We return the negative total distance because it is intuitive for a quality score to be
        //  positive, but with distance, less is better.  So negate it.
        //  We reduce the score by up to X% as a penalty term (to discourage placing all the weight on a single feature).
        //  The amount of the penalty reduction is determined by the sum of the squares of the weights.  If all the
        //  weight is placed on a single feature, the reduction is 50%.  If weight is distributed evenly over 10 features
        //  (for example) the reduction is only 10%
        double totalScore = 0d, subTotal, sumSqrWts = 0d;
        int numDTs = clSt.allFVs.size();
        for (int fv1 = 0; fv1 < (numDTs - 1); fv1++) {
            for (int fv2 = fv1 + 1; fv2 < numDTs; fv2++) {
                subTotal = 0;
                for (int ftr = 0; ftr < clSt.numberOfFeatures; ftr++) {
                    subTotal += clSt.dimDistSqrdMatrix.get(fv1, fv2, ftr) * weights[ftr];
                }  //  end of loop thru all features
                totalScore += Math.pow(subTotal, 0.5d) * bMatrix[(fv1 * numDTs) + fv2];
            }  //  end of loop thru all pairs of feature vectors
        }
        for (int w = 0; w < clSt.numberOfFeatures; w++) {
            sumSqrWts += Math.pow(weights[w], 2d);
        }
        //  DE-BUG CODE
//		System.out.println("=========\n=\n=\n" + totalScore + " /  -" + sumSqrWts + " = " + (- totalScore / sumSqrWts));
        return -(totalScore - (penalty * totalScore * sumSqrWts));
    }  //  end of method computeQualityScore()

    static double[] adjustWeights(ArrayList<Object> clusters, double[] weights, double qualScore, int k, int[] bMatrix, float penalty) {
        //  The clustering represented in clusters has a Quality Score of qualScore achieved with the
        //  current weights.  Adjust the weights to maximize the Qualilty Score (QS).
        //  Find the feature F which gives the greatest increase in QS per unit of weight change (bang for the buck)
        //  with all other weights changed proportionately (return to sum(weights) = 1).  Accept that change
        //  If no increase was found, do not accept any change to the weights. Instead, cut the percentage adjustment
        //  (delta-frac) in half, and repeat.
        //  Continue until delta-frac is less than .001.
        //  Return the adjusted weights.
        double[] newWts = new double[clSt.numberOfFeatures];
        double maxQS = qualScore, currQS, tempQS, posIncr, negIncr, maxGain, newWeight,
                deltaFrac = .5d, oldWt, delta, posDelta, bestDelta = 0d, balOfWt, shrinkFactor;
        int whichFeature = 0;
        for (int j = 0; j < clSt.numberOfFeatures; j++) {
            newWts[j] = weights[j];
        }
        while (deltaFrac > .001d) {  // iterate until adjustment delta is very small
            maxGain = 0d;
            for (int i = 0; i < clSt.numberOfFeatures; i++) {
                oldWt = newWts[i];
                if (oldWt > 0.99999999d) {	//  essentially 1.  Stop - no more adjustments can be made.
                    for (int wx = 0; wx < clSt.numberOfFeatures; wx++) {
                        newWts[wx] = 0d;
                    }
                    newWts[i] = 1d;			//  just to be safe
                    deltaFrac = .00001d;	//  this will end the looping
                    maxGain = 0d;			//  just to be safe
                } else if (oldWt <= 0.000001) {
                    newWts[i] = 0d;
                } else if (oldWt > 0.000001) {
                    delta = oldWt * deltaFrac;
                    posDelta = Math.min(delta, (1 - oldWt));  //  % increase could push weight over 1.0
                    newWeight = newWts[i] + posDelta;
                    tempQS = computeQualityScore(clusters, newWts, newWeight, i, k, bMatrix, penalty);
                    posIncr = (tempQS - maxQS) / posDelta;  //  increase per unit change
                    newWeight = oldWt - delta;
                    tempQS = computeQualityScore(clusters, newWts, newWeight, i, k, bMatrix, penalty);
                    negIncr = (tempQS - maxQS) / delta;
                    //  FOR DEBUG PURPOSES ONLY
                    // System.out.println("feature " + j + ": +/- = " + posIncr + " / " + negIncr);
                    if (posIncr > negIncr) {  //  pos is best
                        if (posIncr > maxGain) {
                            maxGain = posIncr;
                            whichFeature = i;
                            bestDelta = posDelta;
                        }  //  end of its-a-winner
                    } //  end of pos is best
                    else {   //  neg is best
                        if (negIncr > maxGain) {
                            maxGain = negIncr;
                            whichFeature = i;
                            bestDelta = -delta;
                        }  //  end of its-a-winner
                    }  //  end of neg is best
                }  // end of if non-zero weight
            }  //  end of loop thru the weight vector
            //  If a best-change was found, do it.
            if (maxGain > 0) {  //  found worthwhile change
                balOfWt = 1d - newWts[whichFeature];
                shrinkFactor = 1d - (bestDelta / balOfWt);
                for (int i = 0; i < clSt.numberOfFeatures; i++) {
                    if (i != whichFeature) {
                        newWts[i] *= shrinkFactor;
                    } else {
                        newWts[i] += bestDelta;
                    }
                }
                maxQS = computeQualityScore(clusters, newWts, k, bMatrix, penalty);
                //  FOR DEBUG PURPOSES ONLY
                //  System.out.println("Picked " + whichFeature + " with QS = " + maxQS + "\n");
            } //  end of worthwhile change
            else {
                deltaFrac /= 2d;  //  perhaps the granularity of change was too large.
            }
        } // end of while(deltaFrac > .001d)
        return newWts;
    }  //  end of method adjustWeights

    static ArrayList<Object> cleanClusters(ArrayList<Object> clusters) {
        //  NOT CURRENTLY USED.  But it doesn't take up much space.
        //  For each cluster, erase all but the seed.  Return a new, seed-only cluster set
        ArrayList<Object> innerList, newInnerList, newClusters = new ArrayList<Object>();
        for (int i = 0; i < clusters.size(); i++) {
            innerList = (ArrayList<Object>) clusters.get(i);
            newInnerList = new ArrayList<Object>();
            newInnerList.add(innerList.get(0));  //  element 0 is the seed
            newClusters.add(newInnerList);
        }  //  end of loop thru clusters
        return newClusters;
    }  //  end of method cleanClusters
}  //  end of class Library

