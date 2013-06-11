import java.util.*;
import java.text.*;
import java.io.*;
import java.awt.*;
import javax.swing.JOptionPane;

/** 
Each instance of Context is a 'workspace' in which a particular culture's Kinship System
is under construction or examination.  Each contains its own population of 
{@link Family} and {@link Individual} objects, domain theories, etc.
Class-level (static) fields act as global variables.

@author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
 */
public class Context implements Serializable {

    static Context current;  // for Library Browser purposes.  User's current Context = Library.contextUnderConstruction
    static boolean simulation = false;
    static float spellingNoise, classNoise;
    static String[] chartLtrs = LiteralAbstract1.argCodes;
        
    //  --- Debug tools ---
    static Individual watchInd;
    static int breakCount1 = 0;
    static int breakCount2 = 0;
    static boolean breakFlag = false;
    //  ---  Instance Variables  --- 
    /**	Comments hold special comment from (or about) the author of the data about this culture.	*/
    public String comments = "",
            /**	Date this context was initialized.	*/
            createDate;
    public String dateOfLastSuggestion, dateOfLastDataChange, currentChart = "A";
    ArrayList<String> dataAuthors = new ArrayList<String>();
    ArrayList<String> chartDescriptions = new ArrayList<String>();
    int indSerNumGen = 0, famSerNumGen = 0, linkSerNumGen = 0, maxBaseDefMisFits = 4;
    /**	Name of the language spoken in this culture. It is limited administratively to 28 characters.	*/
    public String languageName;
    ArrayList<Object> selectedKinTerms;
    /**	List of all persons in this culture, in serialNmbr order (beginning with 0).	*/
    public ArrayList<Individual> individualCensus = new ArrayList<Individual>();
    /**		List of all families in this culture, in serialNmbr order (beginning with 0).	*/
    public ArrayList<Family> familyCensus = new ArrayList<Family>();
    public ArrayList<Link> linkCensus = new ArrayList<Link>();
    ArrayList<Object> bagOfEgos = new ArrayList<Object>();
    private DomainTheory domTheoryRef, domTheoryAdr;
    /** Two-dimensional matrix of all kin terms known for pairs of persons. Row# = Ego's serialNmbr.
    Column = Alter's serialNmbr.  Each cell contains null or a {@link Node} with the kinTerms
    <code>Row</code> (Ego) could use to refer to <code>Column</code> (Alter).  */
    public KinTermMatrix ktm = new KinTermMatrix();
    /** Index of all {@link Node}str according to their kin type. Used to create
     *  named-data-requests.*/
    public KinTypeIndex kti = new KinTypeIndex();
    Individual currentEgo;
    String editDirectory;
    /**	True if polygamy is accepted in this culture (regardless of whether it has ever happened).	*/
    public boolean polygamyPermit, featuresHaveChanged = false;  //  flag -> true when definition added
    // These 2 parameters (plus maxNoiseP and ignorableP) control the Learning Algorithm
    public boolean doBaseCBs = false, doInduction = false;
    /**	Optional extra fields, defined by user.  Stored as a TreeMap of pairs:
    property-name (must begin with '*') -> UserDefinedProperty-object.	*/
    public TreeMap userDefinedProperties;
    /** The <code>saveState</code> boolean flag determines whether this instance of Context has its complete state
    saved to disk at shut-down.  The context in which Data_Gathering is done (the 'target culture') MUST be
    saved between sessions.  Other contexts can be saved by the User's explicit menu choice.  */
    public boolean saveState = false, simDataGen = false, maleFirst = true;
    /** The learningHistory (Ref or Adr) is a TreeMap from kinTerm -> ArrayList<HistoryItem>.
     *  Each history item records a User decision on a Suggestion.   */
    public TreeMap<String, ArrayList<HistoryItem>> learningHistoryRef = new TreeMap<String, ArrayList<HistoryItem>>();
    public TreeMap<String, ArrayList<HistoryItem>> learningHistoryAdr;
    /** The autoDef (Ref or Adr) is a TreeMap from kinType -> ArrayList<kinTerm>.
     *  This indexes by kin type each accepted definition that could apply to that kin type.
     *  It is used to determine if we should attempt to pre-fill the kinTerm field for a new Alter.  */
    public TreeMap<String, ArrayList<CB_Ptr>> autoDefRef = new TreeMap<String, ArrayList<CB_Ptr>>();
    public TreeMap<String, ArrayList<CB_Ptr>> autoDefAdr;
    public String[] defaultLinkOrder = { "Fa", "Mo", "P", "So", "Da", "C", "Hu", "Wi", "S",
           "Bro", "Sis", "Sib", "Hbro", "Hsis", "Stfa", "Stmo", "Stbro", "Stsis", "Stso", "Stda" };
    public String[] defaultLinkPriority = { "A", "A", "A", "B", "B", "B", "B", "B", "B", 
            "C", "C", "C", "D", "D", "E", "E", "E", "E", "E", "E" };
    public ArrayList<String> linkOrder, linkPriority;
    public TreeMap<String, String> linkPriorityTMap;
    
    /* The following fields were added to allow a Context to carry the parameters
     * needed by KAES back to the loadFile method.     */
    public Point origin;
    public Dimension area;
    public int infoPerson, infoMarriage, labelChoice, ktLabelChoice, maxNoiseP = 25, ignorableP = 5;
    public boolean editable, distinctAdrTerms, birthDateNormallyCaptured = false,
            surnameNormallyCaptured = true;

    /** This zero-arg constructor is for use by Serialization ONLY.  */
    public Context() {
        createDate = UDate.today();
        Context.current = this;
        loadDefaultLinkStuff();
    }
// end of zero-arg constructor

    /**
    Constructor with only a {@link DomainTheory} as argument.
    
    @param	dt	a (possibly empty) domain theory for a Kinship System
     */
    public Context(DomainTheory dt) {
        createDate = UDate.today();
        Context.current = this;
        dt.ctxt = this;
        if (dt.addressTerms) {
            domTheoryAdr = dt;
        } else {
            domTheoryRef = dt;
        }
        languageName = dt.languageName;
        int end = languageName.indexOf("(");
        if (end > -1) {
            languageName = languageName.substring(0, end);
        }
        polygamyPermit = dt.polygamyOK;
        userDefinedProperties = dt.userDefinedProperties;
        loadDefaultLinkStuff();
        Library.activeContexts.put(languageName, this);
    }  // end of theory-only constructor

    /**
    Constructor with a {@link DomainTheory} and comments-string.
    
    @param		dt      a (possibly empty) domain theory for a Kinship System
    @param		cmts	string to begin the Comments field of this instance.
     */
    public Context(DomainTheory dt, String cmts) {
        createDate = UDate.today();
        Context.current = this;
        dt.ctxt = this;
        comments = cmts;
        if (dt.addressTerms) {
            domTheoryAdr = dt;
        } else {
            domTheoryRef = dt;
        }
        languageName = dt.languageName;
        int end = languageName.indexOf("(");
        if (end > -1) {
            languageName = languageName.substring(0, end);
        }
        polygamyPermit = dt.polygamyOK;
        userDefinedProperties = dt.userDefinedProperties;
        loadDefaultLinkStuff();
        Library.activeContexts.put(languageName, this);
    }  // end of 2-arg constructor

    public static void breakpoint() {
        return;
    }  //  end of breakpoint

    public static String convertDoubleQuotes(String s) {
        return FamilyPanel.convertBannedCharacters(s);
    }  //  end of method convertDoubleQuotes
    
    public static Context tempCtxt(DomainTheory dt) {
        Context c = new Context(dt);
        Library.activeContexts.remove(c.languageName);
        return c;
    }

    /** Add a Domain Theory to this context.
    
    @param	theory	new theory to be added, covering kinship terms of Reference or Address.
    
    @throws KSInternalErrorException if the new theory will over-write an existing one
     */
    public void addDomainTheory(DomainTheory theory) throws KSInternalErrorException {
        theory.ctxt = this;
        if (theory.addressTerms) {
            if (domTheoryAdr == null || domTheoryAdr.isEmpty()) {
                domTheoryAdr = theory;
            } else {
                String st = "Attempt to over-write existing Domain Theory (Address) "
                        + "for language " + theory.languageName;
                throw new KSInternalErrorException(st);
            }
        } else {
            if (domTheoryRef == null || domTheoryRef.isEmpty()) {
                domTheoryRef = theory;
            } else {
                String st = "Attempt to over-write existing Domain Theory (Reference) "
                        + "for language " + theory.languageName;
                throw new KSInternalErrorException(st);
            }
        }
        if (userDefinedProperties == null) {
            userDefinedProperties = theory.userDefinedProperties;
        } else if (theory.userDefinedProperties != null) {
            //  Aha!  Both theories have non-null TreeMaps of userDefinedProperties
            //  We must merge them.  IF THERE ARE CONFLICTS, the newly-added theory's version will overwrite.
            Iterator udpIter = theory.userDefinedProperties.entrySet().iterator();
            Map.Entry entry;
            while (udpIter.hasNext()) {
                entry = (Map.Entry) udpIter.next();
                userDefinedProperties.put(entry.getKey(), entry.getValue());
            }  //  end iteration over all entries in new theory's TMap
        }  //  end of 2 non-null TreeMaps of userDefinedProperties
    }  // end of method addDomainTheory

    /** Returns the Domain Theory for Terms of Reference in this context.	*/
    public DomainTheory domTheoryRef() throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException,
            KSInternalErrorException, KSConstraintInconsistency {
        if (domTheoryRef != null) {
            return domTheoryRef;
        }
        String fileName = Library.thyDirectory + languageName + ".thy";
        domTheoryRef = Library.readThyFile(fileName);
        return domTheoryRef;
    }  //  end of accessor method domTheoryRef

    /** Returns the Domain Theory for Terms of Address in this context.	*/
    public DomainTheory domTheoryAdr() throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException,
            KSInternalErrorException, KSConstraintInconsistency {
        if (domTheoryAdr != null) {
            return domTheoryAdr;
        }
        String fileName = Library.thyDirectory + languageName + "(Adr).thy";
        domTheoryAdr = Library.readThyFile(fileName);
        return domTheoryAdr;
    }  //  end of accessor method domTheoryAdr

    public boolean hasIssues() {
        if (domTheoryRef != null && !domTheoryRef.issuesForUser.isEmpty()) {
            return true;
        }
        if (domTheoryAdr != null && !domTheoryAdr.issuesForUser.isEmpty()) {
            return true;
        }
        return false;
    }
    
    public boolean domTheoryAdrLoaded() {
        return domTheoryAdr != null;
    }

    public boolean domTheoryRefLoaded() {
        return domTheoryRef != null;
    }

    /** Returns true if a domain theory for Terms of Address exists. It may not be loaded into memory yet.	*/
    public boolean domTheoryAdrExists() {
        if (domTheoryAdr != null) {
            return true;
        }
        Library.ContextStub cStub = Library.retrieveOrCreateStub(languageName);
        return cStub.adrThyExists;
    }

    /** Returns true if a domain theory for Terms of Reference exists. It may not be loaded into memory yet.	*/
    public boolean domTheoryRefExists() {
        if (domTheoryRef != null) {
            return true;
        }
        Library.ContextStub cStub = Library.retrieveOrCreateStub(languageName);
        return cStub.refThyExists;
    }

    void domTheoryRefNullify() {
        domTheoryRef = null;
    }

    void domTheoryAdrNullify() {
        domTheoryAdr = null;
    }

    /** Remove this domain theory from this context.
    @param	dt	theory to be removed.	*/
    public void removeDomainTheory(DomainTheory dt) {
        //   They should all be this simple.
        if (dt.addressTerms) {
            domTheoryAdr = null;
        } else {
            domTheoryRef = null;
        }
        dt.ctxt = null;
    }  // end of method removeDomainTheory

    /**Delete all dyads associated with node from the dyadsDefined
     * and dyadsUndefined of the 2 DomainTheories for this context.
     *
     * @param node  The source of any dyads.
     */
    void deleteDyads(Node node, int egoSerial) {
        if (node == null) {
            return;
        }
        int alterSerial = node.indiv.serialNmbr;
        String kinType = node.pcString;
        if (domTheoryRef != null) {
            for (Object o : node.kinTermsRef) {
                String kinTerm = (String) o;
                deleteDyad(domTheoryRef, kinTerm, kinType, egoSerial, alterSerial);
            }
            for (Object o : node.extKinTermsRef) {
                deleteDyad(domTheoryRef, (String) o, kinType, egoSerial, alterSerial);
            }
        }
        if (domTheoryAdr != null) {
            for (Object o : node.kinTermsAddr) {
                deleteDyad(domTheoryAdr, (String) o, kinType, egoSerial, alterSerial);
            }
            for (Object o : node.extKinTermsAddr) {
                deleteDyad(domTheoryAdr, (String) o, kinType, egoSerial, alterSerial);
            }
        }
    }

    void addDyad(DomainTheory dt, Dyad d) {
        DyadTMap tm;
        if (dt.theory.containsKey(d.kinTerm)) {
            tm = dt.dyadsDefined;
        } else {
            tm = dt.dyadsUndefined;
        }
        tm.dyAdd(d);
    }

    void confirmDyad(DomainTheory dt, Dyad dy1) {
        DyadTMap tm;
        if (dt.theory.containsKey(dy1.kinTerm)) {
            tm = dt.dyadsDefined;
        } else {
            tm = dt.dyadsUndefined;
        }
        ArrayList<Dyad> lst = tm.findDyadList(dy1);
        for (Dyad dy2 : lst) {
            if (dy1.equals(dy2)) {
                dy2.confirmed = true;
                dy2.challenged = false;
                break;
            }
        } // if we get here, did not find a match
        String msg = "Did not find match for dyad: " + dy1;
        MainPane.displayError(msg, "Internal Error", JOptionPane.ERROR_MESSAGE);
    }

    void deleteDyad(DomainTheory dt, String kinTerm, String kinType,
            int egoSerial, int alterSerial) {
        TreeMap kinTypeTree, dyadTMap = dt.dyadsDefined;
        if (dyadTMap.containsKey(kinTerm)) {
            kinTypeTree = (TreeMap) dyadTMap.get(kinTerm);
        } else {
            dyadTMap = dt.dyadsUndefined;
            kinTypeTree = (TreeMap) dyadTMap.get(kinTerm);
        }
        if (kinTypeTree != null && kinTypeTree.containsKey(kinType)) {
            ArrayList<Object> dyads = (ArrayList<Object>) kinTypeTree.get(kinType);
            Iterator dyIter = dyads.iterator();
            while (dyIter.hasNext()) {
                Dyad dy = (Dyad) dyIter.next();
                if (dy.ego.serialNmbr == egoSerial
                        && dy.alter.serialNmbr == alterSerial) {
                    dyIter.remove();
                    break;
                }
            }  //  if we deleted a singleton, clean up.
            if (dyads.isEmpty()) {
                kinTypeTree.remove(kinType);
            }
            if (kinTypeTree.isEmpty()) {
                dyadTMap.remove(kinTerm);
            }
        }
    }

    public ArrayList<Object> getPair() throws KSInternalErrorException {
        //  return 1 male and 1 female person from IndividualCensus
        ArrayList<Object> pair = new ArrayList<Object>();
        Individual first = individualCensus.get(0), second;
        String nextSex = (first.gender.equals("M") ? "F" : "M");
        pair.add(first);
        Iterator iter = individualCensus.iterator();
        while (iter.hasNext()) {
            second = (Individual) iter.next();
            if (second.gender.equals(nextSex)) {
                pair.add(second);
                return pair;
            }  //  end of BINGO
        }  //  end of loop thru individualCensus
        throw new KSInternalErrorException("Context.getPair couldn't find 1 male & 1 female.");
        //  return pair;
    }  //  end of method getPair

    /**
    Add an individual (stored by serial number) to this context.
    @param	indiv	person to be added	*/
    public void addIndividual(Individual indiv) {  // just for type-checking
        individualCensus.add(indiv.serialNmbr, indiv);
    }  // end of method addIndividual

    /**
    Add a family (stored by serial number) to this context.
    
    @param	fam		family to be added	*/
    public void addFamily(Family fam) {  // just for type-checking
        familyCensus.add(fam.serialNmbr, fam);
    }  // end of method addFamily

    int litCounter() {
        int total = 0;
        if (domTheoryRef != null && domTheoryRef.theory != null) {
            Iterator iter = domTheoryRef.theory.values().iterator();
            while (iter.hasNext()) {
                KinTermDef ktd = (KinTermDef) iter.next();
                for (int i = 0; i < ktd.definitions.size(); i++) {
                    ClauseBody cb = (ClauseBody) ktd.definitions.get(i);
                    total += cb.body.size();
                }  //  end of loop thru definitions
                for (int i = 0; i < ktd.expandedDefs.size(); i++) {
                    ClauseBody cb = (ClauseBody) ktd.expandedDefs.get(i);
                    total += cb.body.size();
                }  //  end of loop thru expandedDefs
            }  // end of loop thru theory
        }  //  end of loop thru domThRef
        if (domTheoryAdr != null && domTheoryAdr.theory != null) {
            Iterator iter = domTheoryAdr.theory.values().iterator();
            while (iter.hasNext()) {
                KinTermDef ktd = (KinTermDef) iter.next();
                for (int i = 0; i < ktd.definitions.size(); i++) {
                    ClauseBody cb = (ClauseBody) ktd.definitions.get(i);
                    total += cb.body.size();
                }  //  end of loop thru definitions
                for (int i = 0; i < ktd.expandedDefs.size(); i++) {
                    ClauseBody cb = (ClauseBody) ktd.expandedDefs.get(i);
                    total += cb.body.size();
                }  //  end of loop thru expandedDefs
            }  // end of loop thru theory
        }  //  end of loop thru domTheoryAdr
        return total;
    }  //  end of method litCounter

    /**
    Build a string with a brief summary of this context.
    
    @return	a string containing:
    <ul>
    <li>		Lanuguage name
    <li>		Field worker's comments (if any)
    <li>		A count of the individuals and families in this context
    </ul>
     */
    public String toString() {
        String image = createDate + "\nContext for " + languageName + " language";
        if (comments == null || comments.length() == 0) {
            image += " is:\n";
        } else {
            image += " (" + comments + ") is:\n";
        }
        image += indSerNumGen + " individuals and " + famSerNumGen + " families registered.\n";
        return image;
    }  // end of description method -- short (default)

    /**
    Build a string with a brief summary of this context.
    
    @param	style	a string containing 'theory' or 'census' or both terms
    
    @return	a string containing:
    <ul>
    <li>		Lanuguage name
    <li>		Field worker's comments (if any)
    <li>		A count of the individuals and families in this context
    <li>		(if theory)  all known definitions of kinTerms
    <li>		(if census)  List of each individual (short display)
    <li>		(if census)  List of each family (short display)
    </ul>
     */
    public String toString(String style) {
        String image = createDate + "\nContext for " + languageName + " language";
        if (comments == null || comments.length() == 0) {
            image += " is:\n";
        } else {
            image += " (" + comments + ") is:\n";
        }
        image += indSerNumGen + " individuals and " + famSerNumGen + " families registered.\n\n";
        if (style.indexOf("theory") >= 0) {
            if (domTheoryRef != null) {
                image += "Terms of Reference:\n";
                image += domTheoryRef.toString()
                        + "\n==================================================\n\n";
            }
            if (domTheoryAdr != null) {
                image += "Terms of Address:\n";
                image += domTheoryAdr.toString()
                        + "\n==================================================\n\n";
            }
        }  //  end of if-theory-is-requested
        if (style.indexOf("census") >= 0) {
            image += "Individuals:\n";
            for (int i = 0; i < individualCensus.size(); i++) {
                image += individualCensus.get(i);
            }
            image += "\nFamilies:\n";
            for (int j = 0; j < familyCensus.size(); j++) {
                image += familyCensus.get(j);
            }
            image += "-------End------\n";
        }  // end of if-census-requested
        return image;
    }  // end of description method -- long, with optional details

    /** Write out a domain theory to a file.
    
    @param	file	name of file to hold a complete theory.
    @param	type	if type = 'address' the Terms of Address are written. Else Terms of Reference.
    
    @throws	an internal error if the chosen domain theory does not exist or can't be written.	*/
    public void printTheory(PrintWriter file, String type) throws KSInternalErrorException {
        if (type.equals("address")) {
            domTheoryAdr.toThyFile(file);
        } else {
            domTheoryRef.toThyFile(file);
        }
    }  //  end of method printTheory

    /** Write out a domain theory for Terms of Reference to a file.
    
    @param	file	name of file to hold a complete theory.
    
    @throws	an internal error if the chosen domain theory does not exist or can't be written.	*/
    public void printTheory(PrintWriter file)
            throws KSInternalErrorException {
        domTheoryRef.toThyFile(file);
    }  //  end of method printTheory

    /** Write to a file a complete census of Families and Individuals for this context.
    
    @param	file	name of file to hold the census. 	*/
    public void printCensus(PrintWriter file) {
        file.print(createDate + "\nContext for " + languageName + " language");
        if (comments == null || comments.length() == 0) {
            file.println(" is:");
        } else {
            file.println(" (" + comments + ") is:");
        }
        file.println(indSerNumGen + " individuals and " + famSerNumGen + " families registered.\n");
        file.println("Individuals:");
        for (int i = 0; i < individualCensus.size(); i++) {
            file.println(individualCensus.get(i));
        }
        file.println("\nFamilies:");
        for (int j = 0; j < familyCensus.size(); j++) {
            file.println(familyCensus.get(j));
        }
        file.println("\n-------End------\n");
        file.flush();
        file.close();
    }  //  end of method printCensus

    void diagnosticPrint(ClauseBody cb, TreeMap bindings) {
        System.out.println("\n\n##############################################################");
        System.out.println("Generating Examples for: " + cb);
        System.out.println("Bindings: ");
        Iterator bindIter = bindings.entrySet().iterator();
        Map.Entry boundPair;
        while (bindIter.hasNext()) {
            boundPair = (Map.Entry) bindIter.next();
            System.out.println(boundPair.getKey() + " bound to: I-"
                    + ((Individual) boundPair.getValue()).serialNmbr);
        }  //  end of iteration thru bindings
        System.out.println("Individuals:\n");
        for (int i = 0; i < individualCensus.size(); i++) {
            System.out.println(individualCensus.get(i));
        }
        System.out.println("\nFamilies:\n");
        for (int j = 0; j < familyCensus.size(); j++) {
            System.out.println(familyCensus.get(j));
        }
        System.out.println("-------End------\n");
    }  //  end of diagnosticPrint()

    /**
    <p>Write output file in GEDCOM (v 5.5) format, containing all individuals and
    families in this context.
    </p>
    File will contain:
    <ul>
    <li>	Header: Source program & version, </li>
    <li>	Destination program & version, </li>
    <li>	Date, Filename, GEDCOM version </li>
    <li>	Individuals:  1 GEDCOM record each </li>
    <li>	Families:  1 GEDCOM record each </li>
    <li>	Trailer. </li>
    </ul>
    
    @param	outFile		a {@link PrintWriter} to write to.
    @param	fileName	direct filename; required extension is '.ged'
     */
    public void exportGEDCOM(PrintWriter outFile, String fileName, String choice) {
        // Write out the header, all individual and family records, & then trailer.
        outFile.println("0 HEAD");
        outFile.println("1 SOUR SILKin");
        outFile.println("2 VERS 1.0");
        outFile.println("2 NAME SIL Kinship Analysis Tools");
        outFile.println("1 DEST Reunion");
        String today = UDate.today();
        outFile.println("1 DATE " + today);
        outFile.println("1 FILE " + fileName);
        outFile.println("1 GEDC");
        outFile.println("2 VERS 5.5");
        outFile.println("2 FORM LINEAGE-LINKED");
        outFile.println("1 CHAR ASCII");
        Individual ind;
        Family fam;
        Iterator iter1 = individualCensus.iterator();
        while (iter1.hasNext()) {
            ind = (Individual) iter1.next();
            ind.exportGEDCOM(outFile, today, choice, DomainTheory.current.nonTerms);
        }  //  end of loop through Individuals
        Iterator iter2 = familyCensus.iterator();
        while (iter2.hasNext()) {
            fam = (Family) iter2.next();
            fam.exportGEDCOM(outFile, today);
        }  //  end of loop through Families
        outFile.println("0 TRLR");
        return;
    }  // end of method exportGEDCOM
    
    void loadDefaultLinkStuff() {
    //  Since no link priority order is specified for this context, load the deaults
        linkOrder = new ArrayList<String>();
        linkPriority = new ArrayList<String>();
        for (String link : defaultLinkOrder) {
            linkOrder.add(link);
        }
        for (String prio : defaultLinkPriority) {
            linkPriority.add(prio);
        }
        linkPriorityTMap = new TreeMap<String, String>();
        for (int i=0; i < linkOrder.size(); i++) {
            linkPriorityTMap.put(defaultLinkOrder[i], defaultLinkPriority[i]);
        }
    }
    
    public String getChartDescription(String chart) {
        String description = "ERROR -- No Description Found";
        int index = Arrays.binarySearch(chartLtrs, chart);
        if (index >= 0 && index < chartDescriptions.size()) {
            description = chartDescriptions.get(index);
        }        
        return description;
    }
    
    public int getChartIndex(String chartLtr) {
        return Arrays.binarySearch(chartLtrs, chartLtr);
    }
    
    public String getChartLtr(int n) {
        return chartLtrs[n];
    }
    
    public String getNextChartLtr() {
        int nextIndex = chartDescriptions.size();
        if (nextIndex >= chartLtrs.length) {
            return null;
        }
        return chartLtrs[nextIndex];
    }
    
    private String editorParameters = "";

    public void writeSILKFile(File f, String params) throws FileNotFoundException,
            KSInternalErrorException, KSDateParseException {
        editorParameters = params;
        writeSILKFile(f);
    }

    /**
    Write output file in _.silk format, containing all parameters, dyads, 
    individuals and families in this context. This is an XML-style file, with
    blocks defined as follows:
    <p>
    File will contain:
    <ul>
    <li>	a <parameters> block.  </li>
    <li>	an <IndividualCensus> block containing zero or more <individual> blocks.  </li>
    <li>	a <FamilyCensus> block containing zero or more <family> blocks  </li>
    <li>	a <matrix> block containing zero or more <row> blocks (specified below).   
    This block represents the contents of the KinTermMatrix.  </li>
    <li>	a <dyadsUndefinedRef> block containing zero or more <dyad> blocks 
    for terms of reference.  </li>
    <li>	a <dyadsDefinedRef> block containing zero or more <dyad> blocks 
    for terms of reference.  </li>
    <li>	(optionally) a <dyadsUndefinedAddr> block containing zero or more <dyad> blocks 
    for terms of address.  </li>
    <li>	(optionally) a <dyadsDefinedAddr> block containing zero or more <dyad> blocks 
    for terms of address.  </li>
    </ul> </p>
    
    @param	f		a file to write to.
     */
    public void writeSILKFile(File f) throws FileNotFoundException, KSInternalErrorException,
            KSDateParseException {
        String directory = f.getParent(), path, lang;
        PrintWriter silk = null;
        try {
            silk = new PrintWriter(f, "UTF-8");
        } catch (Exception ex) {
            System.err.println("Encoding 'UTF-8' rejected.");
            System.exit(9);
        }
        silk.println("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>");
        silk.println("<?xml-stylesheet type=\"text/xsl\" href=\"Silk-status.xsl\"?>");
        silk.println("<!DOCTYPE SIL_KinData>");
        silk.println("<SIL_KinData>");
        writeSILKGuts(silk, directory);
        if (domTheoryRef != null && domTheoryRef.issuesForUser != null
                && !domTheoryRef.issuesForUser.isEmpty()) {
            DomainTheory.current = domTheoryRef;
            printSuggestions(silk, domTheoryRef, "Reference");
        }
        if (domTheoryAdr != null && domTheoryAdr.issuesForUser != null
                && !domTheoryAdr.issuesForUser.isEmpty()) {
            DomainTheory.current = domTheoryAdr;
            printSuggestions(silk, domTheoryAdr, "Address");
        }
        silk.println("</SIL_KinData>");
        silk.flush();
        silk.close();
        saveState = false;
    }  //  end of method writeSILKFile

    /** This method writes the entire saved state of the SIL_Edit session in XML-like format.
     *  It is used by writeSILKFile for xxx.silk files, and by writeSuggsFile for xxx.sugg files.
     *
     * @param silk      the file to be written
     * @param directory the directory containing 'silk', or null
     * @param sug       true = writing a Suggestion file. false = a SILK file
     *
     * @throws FileNotFoundException        if there's a file system error
     * @throws KSInternalErrorException     if SILKin code crashes
     */
    void writeSILKGuts(PrintWriter silk, String directory)
            throws FileNotFoundException, KSInternalErrorException, KSDateParseException {
        String path, lang;
        silk.println("<parameters>");
        silk.println("  <language name=\"" + languageName + "\"/>");
        if (comments != null && comments.length() > 1) {
            silk.print("  <comments txt=\"");
            comments = convertDoubleQuotes(comments); // replace doubles with singles, etc.
            silk.print(comments);
            silk.println("\"/>");
        }  //  end of optional comments
        if (createDate != null) {
            if (!UDate.validXSD(createDate)) {
                createDate = UDate.convertToXSD(createDate);
            }
            silk.println("  <createDate value=\"" + createDate + "\"/>");
        }  //  end of optional createDate
        silk.println("  <dataAuthors>");
        for (String auth : dataAuthors) {
            silk.println("\t<dataAuthor name=\"" + auth + "\"/>");
        }
        silk.println("  </dataAuthors>");  //  end of dataAuthors
        if (dateOfLastDataChange != null) {
            silk.println("  <lastDataChangeDate value=\"" + dateOfLastDataChange + "\"/>");
        }
        if (dateOfLastSuggestion != null) {
            silk.println("  <lastSuggestionDate value=\"" + dateOfLastSuggestion + "\"/>");
        }
        silk.println("  <indSerNum>" + indSerNumGen + "</indSerNum> ");
        silk.println("  <linkSerNum>" + linkSerNumGen + "</linkSerNum> ");
        silk.println("  <famSerNum>" + famSerNumGen + "</famSerNum> ");
        silk.println("  <polygamyPermit>" + polygamyPermit + "</polygamyPermit> ");
        if (userDefinedProperties != null) {
            silk.println("<userDefinedProperties>");
            Iterator iter = userDefinedProperties.entrySet().iterator();
            Map.Entry entry;
            while (iter.hasNext()) {
                silk.println("\t<UDP>");
                entry = (Map.Entry) iter.next();
                String propName = (String) entry.getKey();
                UserDefinedProperty udp = (UserDefinedProperty) entry.getValue();
                silk.println("\t\t<propertyName>" + propName + "</propertyName>");
                silk.println(udp.toSILKString("full"));
                silk.println("\t</UDP>");
            }  //  end of loop thru UDPs
            silk.println("</userDefinedProperties>");
        }  //  end of optional UDPs
        silk.println("</parameters>");
        silk.println("<editorSettings>");
        if (currentEgo != null) {
            silk.println("  <currentEgo n=\"" + currentEgo.serialNmbr + "\"/>");
        }
        if (editDirectory != null) {
            silk.println("  <editDirectory dir=\"" + editDirectory + "\"/>");
        }
        silk.println("  <currentChart id=\"" + currentChart + "\"/>");
        if (!chartDescriptions.isEmpty()) {
            silk.println("  <chartDescriptions>");
            for (String s : chartDescriptions) {
                silk.println("    <chart name=\"" + s + "\"/>");
            }
            silk.println("  </chartDescriptions>");
        }
        silk.println(editorParameters);
        if (kti.lastSerial != -1) {
            silk.println("  <lastPersonIndexed>" + kti.lastSerial + "</lastPersonIndexed>");
        }
        if (linkOrder != null && ! linkOrder.isEmpty()) {
            silk.println("  <linkPriorities maleFirst=\"" + maleFirst + "\">");
            for (int i=0; i < linkOrder.size(); i++) {
                silk.println("\t<link name=\"" + linkOrder.get(i) + "\" priority=\"" 
                        + linkPriority.get(i) + "\"/>");
            }
            silk.println("  </linkPriorities>");            
        }
        silk.println("  <snapToGrid val=\"" + Library.snapToGrid + "\" x=\"" 
                + Library.gridX + "\" y=\"" + Library.gridY + "\"/>");
        silk.println("</editorSettings>\n");
        if (domTheoryRef != null) {
            silk.println(domTheoryRef.toSILKString(""));
        }
        if (domTheoryAdr != null) {
            silk.println(domTheoryAdr.toSILKString(""));
        }        
        silk.println("<individualCensus>");
        for (Individual ind : individualCensus) {
            silk.println(ind.toSILKString());
        }
        silk.println("</individualCensus>");
        if (!linkCensus.isEmpty()) {
            silk.println("<linkCensus>");
            for (Link lk : linkCensus) {
                silk.println(lk.toSILKString());
            }
            silk.println("</linkCensus>");
        }        
        silk.println("<familyCensus>");
        for (Family fam : familyCensus) {
            silk.println(fam.toSILKString());
        }
        silk.println("</familyCensus>");
        silk.println("<matrix>");
        if (ktm.matrix.size() > 0) {
            silk.println(ktm.toSILKString());
        }
        silk.println("</matrix>");
        silk.println("<dyadsUndefinedRef>");
        if (domTheoryRef != null && domTheoryRef.dyadsUndefined != null) {
            silk.print(domTheoryRef.dyadsUndefined.toSILKString());
        }
        silk.println("</dyadsUndefinedRef>");
        silk.println("<dyadsDefinedRef>");
        if (domTheoryRef != null && domTheoryRef.dyadsDefined != null) {
            silk.print(domTheoryRef.dyadsDefined.toSILKString());
        }
        silk.println("</dyadsDefinedRef>");
        if (domTheoryAdr != null && domTheoryAdr.dyadsUndefined != null) {
            silk.println("<dyadsUndefinedAddr>");
            silk.print(domTheoryAdr.dyadsUndefined.toSILKString());
            silk.println("</dyadsUndefinedAddr>");
        }
        if (domTheoryAdr != null && domTheoryAdr.dyadsDefined != null) {
            silk.println("<dyadsDefinedAddr>");
            silk.print(domTheoryAdr.dyadsDefined.toSILKString());
            silk.println("</dyadsDefinedAddr>");
        }
        if (!kti.isEmpty() && directory != null) {
            silk.println("\n<kinTypeIndex>");
            silk.println(kti.toSILKString());
            silk.println("</kinTypeIndex>");
        }
        if (!learningHistoryRef.isEmpty()) {
            silk.println("\n<learning-history type=\"Ref\">");
            Iterator iter = learningHistoryRef.entrySet().iterator();
            while (iter.hasNext()) {
                Map.Entry<String, ArrayList<HistoryItem>> entry =
                        (Map.Entry<String, ArrayList<HistoryItem>>) iter.next();
                String kinTerm = entry.getKey();
                ArrayList<HistoryItem> list = entry.getValue();
                silk.println("\t<history kinTerm=\"" + kinTerm + "\">");
                for (HistoryItem hi : list) {
                    silk.println("\t" + hi.toSILKString());
                }
                silk.println("\t</history>");
            }
            silk.println("</learning-history>\n");
        }
        if (learningHistoryAdr != null && !learningHistoryAdr.isEmpty()) {
            silk.println("\n<learning-history type=\"Adr\">");
            Iterator iter = learningHistoryAdr.entrySet().iterator();
            while (iter.hasNext()) {
                Map.Entry<String, ArrayList<HistoryItem>> entry =
                        (Map.Entry<String, ArrayList<HistoryItem>>) iter.next();
                String kinTerm = entry.getKey();
                ArrayList<HistoryItem> list = entry.getValue();
                silk.println("\t<history kinTerm=\"" + kinTerm + "\">");
                for (HistoryItem hi : list) {
                    silk.println("\t" + hi.toSILKString());
                }
                silk.println("\t</history>");
            }
            silk.println("</learning-history>\n");
        }
        if (!autoDefRef.isEmpty()) {
            printAutoDefs(silk, "Ref");
        }
        if (autoDefAdr != null && !autoDefAdr.isEmpty()) {
            printAutoDefs(silk, "Adr");
        }
    }

    void printAutoDefs(PrintWriter pw, String typ) {
        TreeMap<String, ArrayList<CB_Ptr>> autos =
                (typ.equals("Ref") ? autoDefRef : autoDefAdr);
        pw.println("<auto-def type=\"" + typ + "\">");
        Iterator typeIter = autos.entrySet().iterator();
        while (typeIter.hasNext()) {
            Map.Entry<String, ArrayList<CB_Ptr>> entry =
                    (Map.Entry<String, ArrayList<CB_Ptr>>) typeIter.next();
            String kinType = entry.getKey();
            ArrayList<CB_Ptr> lst = entry.getValue();
            pw.println("\t<kinType type=\"" + kinType + "\">");
            for (CB_Ptr ptr : lst) {
                pw.println(ptr.toSILKString("\t\t"));
            }
            pw.println("\t</kinType>");
        }
        pw.println("</auto-def>\n");
    }

    public void printSuggestions(PrintWriter pw, DomainTheory dt, String typ) {
        TreeMap<String, ArrayList<Issue>> suggs = dt.issuesForUser;
        pw.println("<silkin-issues type=\"" + typ + "\">");
        Iterator suggIter = suggs.values().iterator();
        while (suggIter.hasNext()) {
            ArrayList<Issue> issues = (ArrayList<Issue>) suggIter.next();
            for (Issue issue : issues) {
                issue.toSILKFile(pw);
            }
        }
        pw.println("</silkin-issues>");
    }

    /** Update certain elements of this context from a newer one.
    
    @param	newCtxt		contains new or updated information. 	*/
    public void updateFrom(Context newCtxt) throws KSParsingErrorException,
            JavaSystemException, KSBadHornClauseException,
            KSInternalErrorException, KSConstraintInconsistency {
        if (individualCensus.size() != newCtxt.individualCensus.size()
                || familyCensus.size() != newCtxt.familyCensus.size()) {
            throw new KSInternalErrorException("Number of individuals in XML file"
                    + "\n does not match number in SILK file.");
        }
        for (int i = 0; i < individualCensus.size(); i++) {
            Individual newRec = newCtxt.individualCensus.get(i),
                    oldRec = individualCensus.get(i);
            oldRec.updateFrom(newRec);
        }  //  end of loop through individuals
        for (int i = 0; i < familyCensus.size(); i++) {
            Family newRec = newCtxt.familyCensus.get(i),
                    oldRec = familyCensus.get(i);
            oldRec.updateFrom(newRec);
        }  //  end of loop through families
        createDate = newCtxt.createDate;
        comments += newCtxt.comments;
        languageName = newCtxt.languageName;
        domTheoryRef = (domTheoryRefExists() ? newCtxt.domTheoryRef() : null);
        domTheoryAdr = (domTheoryAdrExists() ? newCtxt.domTheoryAdr() : null);
        ktm = newCtxt.ktm;
        Iterator egoIter = ktm.matrix.values().iterator();
        while (egoIter.hasNext()) {
            Iterator alterIter = ((TreeMap) egoIter.next()).values().iterator();
            while (alterIter.hasNext()) {
                TempNode tNode = (TempNode) alterIter.next();
                tNode.indiv = individualCensus.get(tNode.indNmbr);
            } // end of loop through cells
        } // end of loop thru rows
        editDirectory = newCtxt.editDirectory;
        polygamyPermit = newCtxt.polygamyPermit;
        currentEgo = newCtxt.currentEgo;
        userDefinedProperties =
                (newCtxt.userDefinedProperties != null ? newCtxt.userDefinedProperties : null);
    }  //  end of method updateFrom

    /** Designate a new Ego (interview subject).
    
    @param	ego		the new person whose data is being gathered (being interviewed). 	*/
    public void changeEgoTo(Individual ego) {
        //  First, store all data for currentEgo
        if (currentEgo != null) {
            ktm.updateRow(currentEgo, individualCensus);
        }
        //  Now prep for the new currentEgo
        currentEgo = ego;
        if (ego == null) {
            return;  //  for final storage of KTM before shutdown
        }
        TreeMap egoRow = ktm.getRow(ego);
        for (int i = 0; i < individualCensus.size(); i++) {
            Individual person = individualCensus.get(i);
            person.dyad = null;
            person.node = new Node();
            if (egoRow != null && person != ego) {
                Node nod = (Node) egoRow.get(new Integer(person.serialNmbr));
                if (nod != null) {
                    person.node = nod;
                }
            }
        }  //  end of loop thru all people
    }  //  end of method changeEgoTo

    /**
    Restore this context to a prior state, ELIMINATING all persons and families
    created with serial numbers greater-or-equal-to these.  USE WITH CAUTION.  After this purging,
    the census populations will contain 'nmbrIndivs' individuals and 'nmbrFams' families.
    
    @param	nmbrIndivs	lowest individual serial number to be removed.
    @param	nmbrFams	lowest family serial number to be removed.
    
    @throws			KSInternalErrorException if the population counts do not add up
    to the proper figures after purging.
     */
    public void resetTo(int nmbrIndivs, int nmbrFams) throws KSInternalErrorException {
        if (nmbrIndivs == 0 && nmbrFams == 0) {  //  Erase all and start over.
            individualCensus = new ArrayList<Individual>();
            familyCensus = new ArrayList<Family>();
            currentEgo = null;
            indSerNumGen = 0;
            famSerNumGen = 0;
            return;
        }
        Individual currInd;
        Family fam, currFam;
        for (int i = individualCensus.size() - 1; i >= nmbrIndivs; i--) {
            // work from end of list back to reset point.
            currInd = individualCensus.get(i);
            indSerNumGen--;
            for (int j = 0; j < currInd.marriages.size(); j++) {
                fam = (Family) currInd.marriages.get(j);
                if (fam.husband == currInd) {
                    fam.husband = null;
                } else if (fam.wife == currInd) {
                    fam.wife = null;
                } else {
                    String msg = "Indiv lists marriage but is neither H nor W.\n";
                    msg += currInd + "\n";
                    msg += fam;
                    throw new KSInternalErrorException(msg);
                }  //  end of error
            }  //  end of for-each-marriage-she-is-in
            if (currInd.birthFamily != null) {
                fam = currInd.birthFamily;
                int k = fam.children.lastIndexOf(currInd);
                if ((k < 0) || (fam.nmbrOfKids <= 0)) {
                    String msg2 = "Indiv lists birthFamily but is not a child in it.";
                    msg2 += currInd + "\n";
                    msg2 += fam;
                    throw new KSInternalErrorException(msg2);
                }  //  end of error
                fam.children.remove(k);
                fam.nmbrOfKids--;
            }  //  end of remove-from-birthFamily
            individualCensus.remove(i);
        }  //  end of Individual purge
        //  It is possible that families created after the reset point could have one or both
        //  parents from prior to the reset point, and even kids created pre-reset.  Ergo, we can't
        //  do any error-checking before purging this family.
        for (int i = familyCensus.size() - 1; i >= nmbrFams; i--) {
            currFam = familyCensus.get(i);
            famSerNumGen--;
            if (currFam.husband != null) {
                int k = currFam.husband.marriages.lastIndexOf(currFam);
                currFam.husband.marriages.remove(k);
            }  //  end of husband processing
            if (currFam.wife != null) {
                int k = currFam.wife.marriages.lastIndexOf(currFam);
                currFam.wife.marriages.remove(k);
            }  //  end of husband processing
            for (int j = 0; j < currFam.nmbrOfKids; j++) {
                currInd = (Individual) currFam.children.get(j);
                currInd.birthFamily = null;
            }  //  end of kid processing
            familyCensus.remove(i);
        }  //  end of Family purge
        try {
            domTheoryRef().dyadsDefined.purgeDyads(nmbrIndivs);
            domTheoryRef().dyadsUndefined.purgeDyads(nmbrIndivs);
            if (domTheoryAdrExists()) {
                domTheoryAdr().dyadsDefined.purgeDyads(nmbrIndivs);
                domTheoryAdr().dyadsUndefined.purgeDyads(nmbrIndivs);
            }
        }catch(Exception exc) {
            String msg = "Undexpected error while purging DyadTMaps of\n" +
                    "persons created for examples:\n" + exc;
            System.err.println(msg);
        }

        if ((familyCensus.size() != nmbrFams) || (individualCensus.size() != nmbrIndivs)) {
            throw new KSInternalErrorException("Population counts after reset-purge don't balance.");
        }
        return;
    }  //  end of method resetTo

    public void cleanNodeFields() {
        Individual ind;
        for (int i = 0; i < indSerNumGen; i++) {
            (individualCensus.get(i)).node = null;
        }
    }  //  end of method cleanNodeFields    

    /** Searches through all persons on this context, seeking one with the target value
    that meets all the constraints.  SEMANTIC NOTE:  If the target value is a list of objects,
    this method considers another list to 'match' if it has the same elements IN ANY ORDER.
    
    @param  arg			  an Argument (MathVariable or Constant) with a target value we want to match.  
    @param	starName	  the name of a UserDefinedPredicate that must hold the target value; must begin with '*'
    @param	personVar	  the variable for the person we seek
    @param	constraints	  holds all known constraints for varName
    @param	badBindings   a TreeMap (perhaps empty) of keys = argNames and Values = ALists of Individuals who shouldn't be chosen
    @param	starBindings  a list of {@link StarPropertyBinding}str
    @param	bindings	  all the bindings of variables thus far
    
    @return		an Individual conforming to this set of requirements, or null if none is found.
     */
    public Individual findConformingPerson(Argument arg, String starName, Variable personVar, ConstraintObj constraints,
            TreeMap badBindings, ArrayList<Object> starBindings, TreeMap bindings)
            throws KSConstraintInconsistency, KSInternalErrorException, ClassNotFoundException {
        if (arg.getVal().isEmpty()) {
            return null;  //  There's no target value, so we must punt.
        }
        boolean singleVal = true, bbOK;
        if (arg.getVal().size() > 1) {
            singleVal = false;
        }
        Object theVal = null;
        if (singleVal) {
            theVal = arg.getVal().get(0);
        }
        Iterator indIter = individualCensus.iterator();
        Individual ind;
        ArrayList<Object> badList = (ArrayList<Object>) badBindings.get(personVar.argName);
        UserDefinedProperty udp = (UserDefinedProperty) userDefinedProperties.get(starName);  //  using the Context's master copy to verify
        if ((!singleVal) && udp.singleValue) {
            throw new KSInternalErrorException("Multi-valued arg '" + arg.argName + "' linked to single-valued UDP "
                    + starName + " for " + personVar.argName);
        }
        while (indIter.hasNext()) {
            ind = (Individual) indIter.next();
            if (badList != null && badList.contains(ind)) {
                bbOK = false;
            } else {
                bbOK = true;
            }
            udp = (UserDefinedProperty) ind.userDefinedProperties.get(starName);
            if (singleVal) {  //  single-valued arg
                if (udp.value.contains(theVal) && (udp.value.size() == 1) && bbOK
                        && ind.meetsConstraintsStrictly(personVar, constraints, bindings, starBindings)) {
                    return ind;
                }
            } //  end of processing for single-valued arg
            else {  //  multi-valued arg
                boolean equality = true;
                if (udp.value.size() != arg.getVal().size()) {
                    equality = false;
                }
                if (equality) {
                    for (int i = 0; i < udp.value.size(); i++) {
                        if (!arg.getVal().contains(udp.value.get(i))) {
                            equality = false;
                        }
                    }
                }
                if (equality && bbOK
                        && ind.meetsConstraintsStrictly(personVar, constraints, bindings, starBindings)) {
                    return ind;
                }
            }  //  end of processing for multi-valued arg
        }  //  end of loop thru all persons
        return null;
    }  //  end of method findConformingPerson

    /** Searches through all persons on this context, seeking one with the target value
    that meets all the constraints.
    
    @param  targetVal   the person (target value) we want to match.  
    @param	starName	the name of a UserDefinedPredicate that must hold the target value; must begin with '*'
    @param	personVar	the variable for the person we seek
    @param	constraints	holds all known constraints for varName
    @param	badBindings   a TreeMap (perhaps empty) of keys = argNames and Values = ALists of Individuals who shouldn't be chosen
    @param	starBindings  a list of {@link StarPropertyBinding}str
    @param	bindings	all the bindings of variables thus far
    
    @return		an Individual conforming to this set of requirements, or null if none is found.
     */
    public Individual findConformingPerson(Individual targetVal, String starName, Variable personVar,
            ConstraintObj constraints, TreeMap badBindings, ArrayList<Object> starBindings, TreeMap bindings)
            throws KSConstraintInconsistency, KSInternalErrorException, ClassNotFoundException {
        Iterator indIter = individualCensus.iterator();
        Individual ind;
        boolean bbOK;
        UserDefinedProperty udp;
        while (indIter.hasNext()) {
            ind = (Individual) indIter.next();
            ArrayList<Object> badList = (ArrayList<Object>) badBindings.get(personVar.argName);
            bbOK = true;
            if (badList != null && badList.contains(ind)) {
                bbOK = false;
            }
            udp = (UserDefinedProperty) ind.userDefinedProperties.get(starName);
            if (udp.value.contains(targetVal) && (udp.value.size() == 1) && bbOK
                    && ind.meetsConstraintsStrictly(personVar, constraints, bindings, starBindings)) {
                return ind;
            }
        }  //  end of loop thru all persons
        return null;
    }  //  end of method findConformingPerson

    /** Start from ego and create a {@link Dyad} for each named relationship encountered on a breadth-first
    walk of ego's family tree.  We do the walk in 2 passes:  the first pass uses ONLY biological links (i.e.
    spousal links and birth links).  The second pass adds any Star-Links (based on UDPs) which add new relatives
    of Ego.  This 2-pass method is required because kinship defined in terms of biological relationships almost
    always takes precedence over a relationship based on UDPs (e.g. clan membership).
    <p>
    This method is only called on individuals created in the Data-Gathering
    Module and graphed on-screen.  Therefore, we assume that each person has a non-null {@link Node} attached, 
    which contains all the relationship information, levels, etc.  Generate a complete PC_String for each dyad,
    containing a fully-reduced (i.e. has Stfa or Hbro where appropriate) exact string.
    <p>
    When posting dyads (Undefined) created by Example Generation, not all nodes on Ego's relatives document kinship to her;
    some document the kinship of some alternate ego.  Test for that on the node.
    
    @param  ego     the focus person, to whom all others are related in this family tree.  		*/
    public void addDyads(Individual ego) throws KSInternalErrorException {
        TreeMap bioDyads = new TreeMap();
        if (addDyads2(ego, bioDyads, true)) //  1st pass fills in bioDyads; returns true if starLinks exist anywhere
        {
            addDyads2(ego, bioDyads, false); //  2nd pass, done only of 1st pass found starLinks.
        }
    }

    public boolean addDyads2(Individual ego, TreeMap bioDyads, boolean onlyBioLinks) throws KSInternalErrorException {
        //  Clean off the "dyad" field of each person in the population (used to keep track of who's processed)
        //  Maybe later, only clean off the dyad field of persons who've had kinTerms added since last call to this fn.
        for (int i = 0; i < indSerNumGen; i++) {
            (individualCensus.get(i)).dyad = null;
        }
        //  initialize ego and place her in the ready_Queue
        if (ego == null) {
            return false;
        }
        boolean starLinksFound = false;
        int egoLevel = ego.node.getLevel();
        Family fam;
        String pcs;
        KSQ ready = new KSQ();
        ego.dyad = new Dyad(ego);
        ready.enQ(ego);
        //  Now process the queue until empty (a sort-of-breadth-first walk)
        while (!ready.isEmpty()) {
            Individual self = (Individual) ready.deQ();
            if (self.birthFamily != null) {  //  birthFam processing
                Individual dad = self.birthFamily.husband;
                makeNextDyad(self, dad, "Fa", ready);
                Individual mom = self.birthFamily.wife;
                makeNextDyad(self, mom, "Mo", ready);
                //  end of full parent processing
                for (int i = 0; i < self.birthFamily.children.size(); i++) {
                    Individual sib = (Individual) self.birthFamily.children.get(i);
                    if (sib != self) {
                        pcs = (sib.gender.equals("M") ? "Bro" : "Sis");
                        makeNextDyad(self, sib, pcs, ready);
                    }
                }   //  end of full sibling processing
                Individual[] parents = {mom, dad};
                for (int i = 0; i < 2; i++) {
                    Individual parent = parents[i];
                    if (parent.marriages.size() > 1) {
                        for (int j = 0; j < parent.marriages.size(); j++) {
                            Family fam2 = (Family) parent.marriages.get(j);
                            if (fam2.husband != dad || fam2.wife != mom) {
                                Individual stepParent = (fam2.husband == parent ? fam2.wife : fam2.husband);
                                pcs = (stepParent.gender.equals("M") ? "Stfa" : "Stmo");
                                makeNextDyad(self, stepParent, pcs, ready);
                                //  end of step-Parent processing
                                for (int k = 0; k < fam2.children.size(); k++) {
                                    Individual halfSib = (Individual) fam2.children.get(k);
                                    pcs = (halfSib.gender.equals("M") ? "Hbro" : "Hsis");
                                    makeNextDyad(self, halfSib, pcs, ready);
                                }  //  end of half-sibling processing
                                if (stepParent.marriages.size() > 1) {
                                    for (int m = 0; m < stepParent.marriages.size(); m++) {
                                        Family fam3 = (Family) stepParent.marriages.get(m);
                                        if (fam3.husband != parent || fam3.wife != parent) {
                                            for (int n = 0; n < fam3.children.size(); n++) {
                                                Individual stepSib = (Individual) fam3.children.get(n);
                                                pcs = (stepSib.gender.equals("M") ? "Stbro" : "Stsis");
                                                makeNextDyad(self, stepSib, pcs, ready);
                                            }  //  end of step-Sibling processing
                                        }
                                    }  //  end of loop thru step parent's other marriages
                                }
                            }  //  end of this-is-not-self's-birthFam
                        }  //  end of loop thru parent's other marriages
                    }
                }  //  end of loop thru mom and dad
            }  //  end of birthFam processing
            for (int i = 0; i < self.marriages.size(); i++) {  //  processing for self's marriages
                fam = (Family) self.marriages.get(i);
                Individual spouse = (fam.husband == self ? fam.wife : fam.husband);
                pcs = (spouse.gender.equals("M") ? "Hu" : "Wi");
                makeNextDyad(self, spouse, pcs, ready);
                //  end of (ex-)spouse processing
                for (int j = 0; j < fam.children.size(); j++) {
                    Individual kid = (Individual) fam.children.get(j);
                    pcs = (kid.gender.equals("M") ? "So" : "Da");
                    makeNextDyad(self, kid, pcs, ready);
                }  //  end of loop thru self's kids
                if (spouse.marriages.size() > 1) {
                    for (int j = 0; j < spouse.marriages.size(); j++) {
                        Family fam4 = (Family) spouse.marriages.get(j);
                        if (fam4.husband != self && fam4.wife != self) {
                            for (int k = 0; k < fam4.children.size(); k++) {
                                Individual stepKid = (Individual) fam4.children.get(k);
                                pcs = (stepKid.gender.equals("M") ? "Stso" : "Stda");
                                makeNextDyad(self, stepKid, pcs, ready);
                            }  //  end of step-child processing
                        }
                    }  //  end of loop thru mate's other marriages
                }
            }  //  end of processing for self's marriages
            //  Now handle Star-links -- if any.
            if (self.starLinks != null) {
                if (onlyBioLinks) {
                    starLinksFound = true;
                } else {
                    for (int i = 0; i < self.starLinks.size(); i++) //  A star-link is 2 star-preds that form a link between individuals, so PC_String is '**'
                    {
                        makeNextDyad(self, (Individual) self.starLinks.get(i), "**", ready);
                    }
                }
            }
            //  Finalize the dyads (if any are needed) for self and send them to the Dyad TreeMap
            if ((self.dyad.path.size() > 0) && (self.node.hasKinTerms()) // only ego has an empty path; no dyad needed for her
                    && (onlyBioLinks || self.dyad.pcString.indexOf("*") > -1)) { //  if not bios-only, then must have * in path
                self.dyad.alter = self;
                generateDyads(self, egoLevel, onlyBioLinks, bioDyads);
            }
        }  //  end of while-loop thru ready_Queue
        return starLinksFound;
    }  //  end of method addDyads2()

    boolean nonDupStarDyad(Dyad dy, TreeMap bioDyads) {
        if (dy.pcString.indexOf("*") == -1) {
            return false;
        }
        Integer altSerial = new Integer(dy.alter.serialNmbr);
        if (bioDyads.get(altSerial) == null
                || !((ArrayList<Object>) bioDyads.get(altSerial)).contains(dy.kinTerm)) {
            return true;
        }
        return false;
    }  //  end of method  nonDupStarDyad

    void makeNextDyad(Individual curent, Individual next, String pcs, KSQ queue) {
        //  5/12/06  Add more precise logic re: pcCounter and levels
        //  next's level should be relative to curent's.  Here we encode only the pcStrings for
        //  people we can reach directly from curent's Individual (in addDyads() above).
        if (next.dyad == null) { //  person hasn't been processed yet
            next.dyad = new Dyad(curent.dyad);
            next.dyad.path.add(curent);
            next.dyad.pcString += pcs;
            if (pcs.equals("Fa") || pcs.equals("Mo")) {
                next.dyad.level++;
            } else if (pcs.equals("So") || pcs.equals("Da")) {
                next.dyad.level--;
            } else if (pcs.equals("Stso") || pcs.equals("Stda")) {
                next.dyad.level--;
            } else if (pcs.equals("Stfa") || pcs.equals("Stmo")) {
                next.dyad.level++;
            }
            queue.enQ(next);
        }  //  end of process
    }  //  end of method makeNextDyad

    /**   Generate one Dyad for each kinTerm found in any of the six lists on this Individual's Node.
    
    @param	current		 the Individual whose kinTerms we are recording in dyadsUndefined.  
    @param  egoLevel	 the treeLevel assigned to ego in this set of Nodes.  We normalize the treeLevels for use
    in indexing, with ego's level = 0.
    @param onlyBioLinks  is true when we are in 1st pass, and must post to bioDyads.
    @param bioDyads		 has structure Alter.serialNmbr => ArrayList<Object> of kinTerms.   */
    public void generateDyads(Individual current, int egoLevel, boolean onlyBioLinks, TreeMap bioDyads)
            throws KSInternalErrorException, NumberFormatException {
        if (current.node.ktSuffix.length() > 0) {
            int egoForCurrent = ktm.pullSerial(current.node.ktSuffix);
            if (egoForCurrent != currentEgo.serialNmbr) {
                return;  //  if substitute ego, skip it.
            }
        }
        ArrayList<Object> terms = current.node.kinTermsRef();
        DomainTheory dt = domTheoryRef;
        String auth = (domTheoryAdr == null ? "" : domTheoryAdr.author);
        Dyad newDyad;
        ClauseBody cb = new ClauseBody();
        String structString = ClauseBody.structStr(current.dyad.pcString);
        for (int i = 0; i < terms.size(); i++) {
            newDyad = new Dyad(current.dyad);
            newDyad.path.remove(0);  //  remove ego from head of the list
            newDyad.kinTerm = (String) terms.get(i);
            newDyad.kinTermType = Dyad.PRIMARY;
            newDyad.addrOrRef = Dyad.REF;
            newDyad.level = current.dyad.level - egoLevel;
            newDyad.pcStringStructural = structString;
            if (dt == null) {
                domTheoryRef = new DomainTheory(this, false, auth);
            }
            if (onlyBioLinks) {
                postBioDyads(newDyad, bioDyads);
                dt.dyadsUndefined.dyAdd(newDyad);
            } else if (nonDupStarDyad(newDyad, bioDyads)) {
                dt.dyadsUndefined.dyAdd(newDyad);
            }
        }  //  end of loop thru kinTermsRef 
        terms = current.node.extKinTermsRef();
        for (int i = 0; i < terms.size(); i++) {
            newDyad = new Dyad(current.dyad);
            newDyad.path.remove(0);  //  remove ego from head of the list
            newDyad.kinTerm = (String) terms.get(i);
            newDyad.kinTermType = Dyad.EXTENDED;
            newDyad.addrOrRef = Dyad.REF;
            newDyad.level = current.dyad.level - egoLevel;
            newDyad.alter = current;
            newDyad.pcStringStructural = structString;
            if (dt == null) {
                domTheoryRef = new DomainTheory(this, false, auth);
            }
            if (onlyBioLinks) {
                postBioDyads(newDyad, bioDyads);
                dt.dyadsUndefined.dyAdd(newDyad);
            } else if (nonDupStarDyad(newDyad, bioDyads)) {
                dt.dyadsUndefined.dyAdd(newDyad);
            }
        }  //  end of loop thru extKinTermsRef 
        terms = current.node.kinTermsAddr();
        dt = domTheoryAdr;
        auth = (domTheoryRef == null ? "" : domTheoryRef.author);
        for (int i = 0; i < terms.size(); i++) {
            newDyad = new Dyad(current.dyad);
            newDyad.path.remove(0);  //  remove ego from head of the list
            newDyad.kinTerm = (String) terms.get(i);
            newDyad.kinTermType = Dyad.PRIMARY;
            newDyad.addrOrRef = Dyad.ADDR;
            newDyad.level = current.dyad.level - egoLevel;
            newDyad.alter = current;
            newDyad.pcStringStructural = structString;
            if (dt == null) {
                domTheoryAdr = new DomainTheory(this, true, auth);
            }
            if (onlyBioLinks) {
                postBioDyads(newDyad, bioDyads);
                dt.dyadsUndefined.dyAdd(newDyad);
            } else if (nonDupStarDyad(newDyad, bioDyads)) {
                dt.dyadsUndefined.dyAdd(newDyad);
            }
        }  //  end of loop thru kinTermsAddr 
        terms = current.node.extKinTermsAddr();
        for (int i = 0; i < terms.size(); i++) {
            newDyad = new Dyad(current.dyad);
            newDyad.path.remove(0);  //  remove ego from head of the list
            newDyad.kinTerm = (String) terms.get(i);
            newDyad.kinTermType = Dyad.EXTENDED;
            newDyad.addrOrRef = Dyad.ADDR;
            newDyad.level = current.dyad.level - egoLevel;
            newDyad.alter = current;
            newDyad.pcStringStructural = structString;
            if (dt == null) {
                domTheoryAdr = new DomainTheory(this, true, auth);
            }
            if (onlyBioLinks) {
                postBioDyads(newDyad, bioDyads);
                dt.dyadsUndefined.dyAdd(newDyad);
            } else if (nonDupStarDyad(newDyad, bioDyads)) {
                dt.dyadsUndefined.dyAdd(newDyad);
            }
        }  //  end of loop thru extKinTermsAddr 
    }  //  end of method generateDyads

    void postBioDyads(Dyad newDyad, TreeMap bioDyads) {
        //   bioDyads		 has structure Alter.serialNmbr => ArrayList<Object> of kinTerms.
        Integer altSerial = new Integer(newDyad.alter.serialNmbr);
        if (bioDyads.get(altSerial) == null) {
            bioDyads.put(altSerial, new ArrayList<Object>());
        }
        ArrayList<Object> altKinTermList = (ArrayList<Object>) bioDyads.get(altSerial);
        if (!altKinTermList.contains(newDyad.kinTerm)) {
            altKinTermList.add(newDyad.kinTerm);
        }
    }  //  end of method postBioDyads

    public ContextEditor editFields() throws KSInternalErrorException {
        //  Open an editor window within frame.  Allow editing of certain fields of this Context.
        return new ContextEditor(this);
        //   .... and then???
    }  //  end of method editFields

    void addTheseEgos(ArrayList<Object> egoBag) {
        Iterator egoIter = egoBag.iterator();
        Individual egoist;
        while (egoIter.hasNext()) {
            egoist = (Individual) egoIter.next();
            if (!bagOfEgos.contains(egoist)) {
                bagOfEgos.add(egoist);
            }
        }
    }

    public boolean notRejected(Library.KTD_EQC eqc, boolean adr) {
        if (adr && learningHistoryAdr == null) {
            learningHistoryAdr = new TreeMap<String, ArrayList<HistoryItem>>();
        }
        TreeMap<String, ArrayList<HistoryItem>> history =
                (adr ? learningHistoryAdr : learningHistoryRef);
        ArrayList<HistoryItem> list = history.get(eqc.prototype.kinTerm);
        if (list == null) {
            return true;
        }
        for (HistoryItem hi : list) {
            if (hi instanceof RejectedPropDefPtr) {
                RejectedPropDefPtr reject = (RejectedPropDefPtr) hi;
                Library.KTD_Ptr ptr = eqc.prototype;
                if (ptr.languageName.equals(reject.eqcProtoLangName)
                        && ptr.kinTerm.equals(reject.eqcProtoKinTerm)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static class CB_Ptr implements Serializable {

        String kinTerm;
        int clauseNmbr;

        CB_Ptr(String kt, int cn) {
            kinTerm = kt;
            clauseNmbr = cn;
        }

        public String toSILKString(String bacer) {
            return bacer + "<def kinTerm=\"" + kinTerm
                    + "\" clause-number=\"" + clauseNmbr + "\"/>";
        }

        public String toString() {
            return toSILKString("");
        }
    }
    
    public static String hornClauseFormatter(String in) {
        String out = "", linePad,
               padding = "                                        ";
        int max = 72, start, end, cut, padPt = 0;
        ArrayList<String> lines = makeLines(in);
        for (String line : lines) {
            start = 0;
            end = max;
            padPt = line.indexOf(":-") + 3;  //  look for implication symbol
            if (padPt == 2) {
                padPt = line.indexOf("|") + 2;  //  look for "OR"
                if (padPt == 1) {
                    padPt = 0;
                }
            }
            if (padPt > 40) padPt = 40;
            linePad = padding.substring(0, padPt);
            boolean done = false,
                    first = true;
            while (!done) {
                if (line.substring(start).length() < max + (first ? 0 : padPt)) {
                    if (! first) {
                        out += linePad;
                    }
                    out += line.substring(start) + "\n";
                    done = true;
                } else {
                    cut = line.substring(start, end).lastIndexOf("),") + 3;
                    if (cut < 0) {
                        cut = max;
                    }
                    if (first) {
                        first = false;
                    } else {
                        out += linePad;
                    }
                    out += line.substring(start, start + cut) + "\n";
                    start += cut;
                    end = start + max;
                }
            }
        }
        return out;
    }
    
    public static ArrayList<String> makeLines(String in) {
        ArrayList<String> out = new ArrayList<String>();
        int start = 0, end;
        boolean done = false;
        while (!done) {
            end = in.indexOf("\n", start);
            if (end == -1) {
                out.add(in.substring(start));
                done = true;
            }else {
                out.add(in.substring(start, end));
                start = end +1;
                if (start >= in.length()) {
                    done = true;
                }
            }
        }
        return out;
    }

    abstract static class HistoryItem implements Serializable {

        String kinTerm, date, notes;
        boolean rescinded = false;

        void postToHistory(TreeMap<String, ArrayList<HistoryItem>> history) {
            if (history.get(kinTerm) == null) {
                history.put(kinTerm, new ArrayList<HistoryItem>());
            }
            ArrayList<HistoryItem> ktList = (ArrayList<HistoryItem>) history.get(kinTerm);
            ktList.add(this);
        }

        public String toString() {
            return toSILKString();
        }

        abstract String toSILKString();
        
        abstract void unDo(DomainTheory dt);
        
        abstract String unDoDescription();
    }

    /**This inner class represents a pointer to a KinTermDef
     * that was accepted by the User and added to the domain theory.
     * 
     */
    public static class AcceptedDefPtr extends HistoryItem implements Serializable {

        ArrayList<Integer[]> autoDefPairs = new ArrayList<Integer[]>();

        AcceptedDefPtr(String kt, String dat, String resc, String nt) {
            kinTerm = kt;
            date = dat;
            rescinded = Boolean.parseBoolean(resc);
            notes = nt;
        }

        public String toSILKString() {
            String img = "\t<accepted-def kinTerm=\"";
            img += kinTerm + "\" date=\"" + date;
            img += "\" rescinded=\"" + rescinded;            
            img += "\" notes=\"" + notes + "\">\n";
            if (!autoDefPairs.isEmpty()) {
                img += "\t\t\t<auto-defs>\n";
                for (Integer[] pair : autoDefPairs) {
                    img += "\t\t\t\t<pair ego=\"" + pair[0] + "\" alter=\"" + pair[1] + "\"/>\n";
                }
                img += "\t\t\t</auto-defs>\n";
            }
            img += "\t\t</accepted-def>";
            return img;
        }

        public String description(DomainTheory dt) {
            String img = "ACCEPTED the following definition for " + kinTerm + ":";
            KinTermDef ktd = (KinTermDef) dt.theory.get(kinTerm);
            img += "\n" + ktd.toString();
            return hornClauseFormatter(img);
        }
        
        public void unDo(DomainTheory dt) {
            KinTermDef ktd = (KinTermDef) dt.theory.remove(kinTerm);
            rescinded = true;
            SIL_Edit win = SIL_Edit.editWindow;
            for (Integer[] pair : autoDefPairs) {
                win.removeDef(dt, pair[0], pair[1], kinTerm);
            }
            TreeMap<String, ArrayList<CB_Ptr>> autoDef =
                    (dt.addressTerms ? dt.ctxt.autoDefAdr : dt.ctxt.autoDefRef);
            for (Object o : ktd.expandedDefs) {
                ClauseBody cb = (ClauseBody) o;
                String kinType = cb.pcString;
                ArrayList<CB_Ptr> ptrList = autoDef.get(kinType);
                Iterator ptrIter = ptrList.iterator();
                while (ptrIter.hasNext()) {
                    CB_Ptr ptr = (CB_Ptr) ptrIter.next();
                    if (ptr.kinTerm.equals(kinTerm)) {
                        ptrIter.remove();
                    }
                }
                if (ptrList.isEmpty()) {
                    autoDef.remove(kinType);
                }
            }
            win.showInfo(win.infoPerson);
            win.chart.repaint();
        }
        
        
        public String unDoDescription() {
            String s = "Withdrew the previously-accepted definition for " + kinTerm;
            s += ".\nDid NOT REJECT this definition, just rescinded its acceptance.";
            s += "\n(To reject it, select this Proposed Definition again and click REJECT.)";
            if (autoDefPairs.size() > 0) {
                s += "\nRemoved automatically-generated kinterms for these ego/alter pairs:\n";
                String lead = "";
                for (Integer[] pair : autoDefPairs) {
                    s += lead + pair[0] + "/" + pair[1];
                    lead = ", ";
                }
            }
            return s;            
        }
        
    } // end of inner class AcceptedDefPtr

    /**This inner class represents a pointer to a KinTermDef
     * (or EQC of them) that was proposed to User but rejected.
     *
     */
    public static class RejectedPropDefPtr extends HistoryItem implements Serializable {

        String sigString, eqcProtoLangName, eqcProtoKinTerm;

        RejectedPropDefPtr(String kt, String dat, String resc, String not, String sig,
                String protoLang, String protoKT) {
            kinTerm = kt;
            date = dat;
            rescinded = Boolean.parseBoolean(resc);
            notes = not;
            sigString = sig;
            eqcProtoLangName = protoLang;
            eqcProtoKinTerm = protoKT;
        }

        public String toSILKString() {
            String img = "\t<rejected-def kinTerm=\"";
            img += kinTerm + "\" date=\"" + date;
            img += "\" rescinded=\"" + rescinded;
            img += "\" notes=\"" + notes + "\" sigString=\"" + sigString;
            img += "\" protoLang=\"" + eqcProtoLangName;
            img += "\" protoKT=\"" + eqcProtoKinTerm + "\"/>";
            return img;
        }

        public String description(KinTermDef ktd) {
            String img = "REJECTED the following definition for " + kinTerm + ":";
            img += "\n" + ktd.toString().replace(eqcProtoKinTerm, kinTerm);
            return hornClauseFormatter(img);
        }
        
        public void unDo(DomainTheory dt) {            
            rescinded = true;
        }
        
        public String unDoDescription() {
            String s = "Rescinded the rejection of this definition of " + kinTerm + ".";
            s += "\nThe definition is now available for new action (acceptance) or";
            s += "\nyou may take No Action for now.";            
            return s;            
        }
        
    } // end of inner class RejectedPropDefPtr

    /**This inner class documents User's rejection of a proposed Synonym pair
     * 
     */
    public static class RejectedSynonym extends HistoryItem implements Serializable {

        String synTerm;

        RejectedSynonym(String kt, String dat, String resc, String comments, String st) {
            kinTerm = kt;
            date = dat;
            rescinded = Boolean.parseBoolean(resc);
            notes = comments;
            synTerm = st;
        }

        public String toSILKString() {
            String img = "\t<rejected-synonym primary=\"";
            img += kinTerm + "\" date=\"" + date;
            img += "\" rescinded=\"" + rescinded;
            img += "\" notes=\"" + notes + "\" synonym=\"" + synTerm + "\"/>";
            return img;
        }

        public String description() {
            return "REJECTED " + synTerm + " as a synonym for the primary term "
                    + kinTerm + ".";
        }
        
        public void unDo(DomainTheory dt) {            
            rescinded = true;
            ArrayList<Object> rejects = dt.nonSynonyms;
            String pair, term1, term2;
            if (kinTerm.compareTo(synTerm) < 0) {
                term1 = kinTerm;
                term2 = synTerm;
            }else {
                term2 = kinTerm;
                term1 = synTerm;
            }
            pair = term1 + "/" + term2;
            rejects.remove(pair);            
        }
        
        public String unDoDescription() {
            String s = "Rescinded the rejection of " + synTerm + 
                    " as a synonym for the primary term " + kinTerm + ".";
            s += "\nThis suggestion is now available for new action (acceptance) or";
            s += "\nyou may take No Action for now.";             
            return s;            
        }
        
    }  //  end of Inner class RejectedSynonym

    /**This inner class documents User's acceptance of a proposed Synonym pair
     * 
     */
    public static class AcceptedSynonym extends HistoryItem implements Serializable {

        String synTerm;

        AcceptedSynonym(String kt, String dat, String resc, String comments, String st) {
            kinTerm = kt;
            date = dat;
            rescinded = Boolean.parseBoolean(resc);
            notes = comments;
            synTerm = st;
        }

        public String toSILKString() {
            String img = "\t<accepted-synonym primary=\"";
            img += kinTerm + "\" date=\"" + date;
            img += "\" rescinded=\"" + rescinded;
            img += "\" notes=\"" + notes + "\" synonym=\"" + synTerm + "\"/>";
            return img;
        }

        public String description() {
            return "ACCEPTED " + synTerm + " as a synonym for the primary term "
                    + kinTerm + ".";
        }
        
        public void unDo(DomainTheory dt) {        
            rescinded = true;
            String oldPrimary = (String)dt.synonyms.get(synTerm);
            if (oldPrimary.equals(kinTerm)) {
                dt.synonyms.remove(synTerm);
            }
        }
        
        public String unDoDescription() {
            String s = "Rescinded the acceptance of " + synTerm + 
                    " as a synonym for the primary term " + kinTerm + ".";
            s += "\nThis suggestion is now available for new action (rejection) or";
            s += "\nyou may take No Action for now.";  
            return s;            
        }
        
    }  //  end of Inner class AcceptedSynonym

    /**This inner class documents User's rejection of a proposed Umbrella
     * 
     */
    public static class RejectedUmbrella extends HistoryItem implements Serializable {

        ArrayList<String> subTerms;

        RejectedUmbrella(String kt, String dat, String resc, String comments, ArrayList<String> st) {
            kinTerm = kt;
            date = dat;
            rescinded = Boolean.parseBoolean(resc);
            notes = comments;
            subTerms = st;
        }

        public String toSILKString() {
            String img = "\t<rejected-umbrella umbTerm=\"";
            img += kinTerm + "\" date=\"" + date;
            img += "\" rescinded=\"" + rescinded;
            img += "\" notes=\"" + notes + "\">";
            img += "<\t\t<original-sub-terms>\n";
            for (String tm : subTerms) {
                img += "\t\t\t<sub-term value=\"" + tm + "\"/>";
            }
            img += "<\t\t</original-sub-terms>\n";
            img += "\t<rejected-umbrella>\n";
            return img;
        }

        public String description() {
            String img = "REJECTED " + kinTerm + " as an umbrella term covering:\n";
            String leader = "";
            for (String s : subTerms) {
                img += leader + s;
                leader = ", ";
            }
            return img;
        }
        
        public void unDo(DomainTheory dt) {       
            rescinded = true;
            ArrayList<Object> lst = (ArrayList<Object>)dt.nonUmbrellas.get(kinTerm);
            for (String st : subTerms) {
                lst.remove(st);
            }
            if (lst.isEmpty()) {
                dt.nonUmbrellas.remove(kinTerm);
            }
        }
        
        public String unDoDescription() {
            String img ="Rescinded the rejection of " + kinTerm + 
                    " as an umbrella term covering:\n";
            String leader = "";
            for (String s : subTerms) {
                img += leader + s;
                leader = ", ";
            }
            img += "\nThis suggestion is now available for new action (acceptance) or";
            img += "\nyou may take No Action for now.";             
            return img;            
        }
        
    }  //  end of Inner class RejectedUmbrella

    /**This inner class documents User's acceptance of a proposed Umbrella
     * 
     */
    public static class AcceptedUmbrella extends HistoryItem implements Serializable {
        //  Original subterms were as proposed by the UmbrellaCandidate. 
        //  Edited subterms are as approved by User.
        //  Added subterms are memebers of edited subterms that were new additions to the
        //  umbrella as stored on the DomainTheory.

        ArrayList<String> origSubTerms, editedSubTerms, addedSubTerms;

        AcceptedUmbrella(String kt, String dat, String resc, String comments,
                ArrayList<String> ost, ArrayList<String> est) {
            kinTerm = kt;
            date = dat;
            rescinded = Boolean.parseBoolean(resc);
            notes = comments;
            origSubTerms = ost;
            editedSubTerms = est;
        }

        public String toSILKString() {
            String img = "\t<accepted-umbrella umbTerm=\"";
            img += kinTerm + "\" date=\"" + date;
            img += "\" rescinded=\"" + rescinded;
            img += "\" notes=\"" + notes + "\">\n";
            img += "\t\t<original-sub-terms>\n";
            for (String tm : origSubTerms) {
                img += "\t\t\t<sub-term value=\"" + tm + "\"/>\n";
            }
            img += "\t\t</original-sub-terms>\n";
            img += "\t\t<edited-sub-terms>\n";
            for (String tm : editedSubTerms) {
                img += "\t\t\t<sub-term value=\"" + tm + "\"/>\n";
            }
            img += "\t\t</edited-sub-terms>\n";
            if (addedSubTerms != null & !addedSubTerms.isEmpty()) {
                img += "\t\t<added-sub-terms>\n";
                for (String tm : addedSubTerms) {
                    img += "\t\t\t<sub-term value=\"" + tm + "\"/>\n";
                }
                img += "\t\t</added-sub-terms>\n";
            }
            img += "\t</accepted-umbrella>\n";
            return img;
        }

        public String description() {
            String img = "ACCEPTED " + kinTerm + " as an umbrella term covering:\n";
            String leader = "";
            for (String s : editedSubTerms) {
                img += leader + s;
                leader = ", ";
            }
            if (addedSubTerms != null & !addedSubTerms.isEmpty()) {
                img += "\nThe following were new additions to the Umbrella's coverage:\n";
                leader = "";
                for (String s : addedSubTerms) {
                    img += leader + s;
                    leader = ", ";
                }
            }else {
                img += "\nAll these sub-terms were previously known.";
            }
            return img;
        }
        
        public void unDo(DomainTheory dt) {
            rescinded = true;
            ArrayList<Object> lst = (ArrayList<Object>)dt.umbrellas.get(kinTerm);
            for (String st : editedSubTerms) {
                lst.remove(st);
            }
            if (lst.isEmpty()) {
                dt.umbrellas.remove(kinTerm);
            }
        }
        
        public String unDoDescription() {
            String img = "Rescinded the acceptance of " + kinTerm + 
                    " as an umbrella term covering:\n";
            String leader = "";
            for (String s : editedSubTerms) {
                img += leader + s;
                leader = ", ";
            }
            img += "\nThis suggestion is now available for new action (rejection) or";
            img += "\nyou may take No Action for now.";             
            return img;             
        }
        
    }  //  end of Inner class AcceptedUmbrella

    /**This inner class documents User's conversion of a proposed Umbrella
     * into one or more Synonyms
     * 
     */
    public static class UmbrellaIntoSyns extends HistoryItem implements Serializable {

        ArrayList<String> subTerms, synTerms;
        String keyTerm;

        UmbrellaIntoSyns(String kt, String dat, String resc, String comments, ArrayList<String> subs,
                ArrayList<String> syns, String newKey) {
            kinTerm = kt;
            date = dat;
            rescinded = Boolean.parseBoolean(resc);
            notes = comments;
            subTerms = subs;
            synTerms = syns;
            keyTerm = newKey;
        }

        public String toSILKString() {
            String img = "\t<umbrella-into-synonyms umbTerm=\"";
            img += kinTerm + "\" date=\"" + date;
            img += "\" rescinded=\"" + rescinded;
            img += "\" newKey=\"" + keyTerm;
            img += "\" notes=\"" + notes + "\">\n";
            if (subTerms != null && !subTerms.isEmpty()) {
                img += "\t\t<sub-terms>\n";
                for (String tm : subTerms) {
                    img += "\t\t\t<sub-term value=\"" + tm + "\"/>";
                }
                img += "\t\t</sub-terms>\n";
            }
            if (synTerms != null && !synTerms.isEmpty()) {
                img += "\t\t<syn-terms>\n";
                for (String tm : synTerms) {
                    img += "\t\t\t<syn-term value=\"" + tm + "\"/>";
                }
                img += "\t\t</syn-terms>\n";
            }
            img += "\t\t</umbrella-into-synonyms>";
            return img;
        }
        
        public String description() {
            String plural = (synTerms.size() > 1 ? "s are:\n" : " is: ");
            String img = "Changed proposed umbrella term (" + kinTerm + ") into synonyms.\n";
            img += "Primary term is " + keyTerm + ". Synonym" + plural;
            String leader = "";
            for (String s : synTerms) {
                img += leader + s;
                leader = ", ";
            }
           return img;
        }
        
        public void unDo(DomainTheory dt) {
            rescinded = true;
            // It is possible that a particular term might be proposed as a synonym
            // more than once. Since any synonym can have only one primary term,
            // if we accepted TWO ProposedSynonyms, only the 2nd one would still be
            // recorded (it replaces the 1st). Therefore, we should check that the
            // currently-recorded synonym is the one we want to rescind. 
            for (String syn : synTerms) {
                String oldPrimary = (String)dt.synonyms.get(syn);
                if (oldPrimary.equals(keyTerm)) {
                    dt.synonyms.remove(syn);
                }                
            }
        }
        
        public String unDoDescription() {
            String plural = (synTerms.size() > 1 ? "s are:\n" : " is: ");
            String str = "Rescinded the conversion of proposed umbrella term (" 
                    + kinTerm + ") into synonyms.\n";
            str += "Primary term is " + keyTerm + ". Synonym" + plural;
            String leader = "";
            for (String s : synTerms) {
                str += leader + s;
                leader = ", ";
            }
            return str;            
        }
        
    }  //  end of Inner class UmbrellaIntoSyns

    /**This inner class documents User's acceptance of a proposed Overlap
     * 
     */
    public static class AcceptedOverlap extends HistoryItem implements Serializable {

        String otherTerm;

        AcceptedOverlap(String kt, String dat, String resc, String comments, String ot) {
            kinTerm = kt;
            date = dat;
            rescinded = Boolean.parseBoolean(resc);
            notes = comments;
            otherTerm = ot;
        }

        public String toSILKString() {
            String img = "\t<accepted-overlap term1=\"";
            img += kinTerm + "\" date=\"" + date;
            img += "\" rescinded=\"" + rescinded;
            img += "\" notes=\"" + notes + "\" term2=\"" + otherTerm + "\"/>";
            return img;
        }
        
        public String description() {
            return "ACCEPTED an overlap of " + kinTerm + " and " + otherTerm + ".";
        }
        
        public void unDo(DomainTheory dt) {
            rescinded = true;
            ArrayList<Object> lst = (ArrayList<Object>)dt.overlaps.get(kinTerm);
            lst.remove(otherTerm);            
            if (lst.isEmpty()) {
                dt.overlaps.remove(kinTerm);
            }
            // Remove the inverse also
            lst = (ArrayList<Object>)dt.overlaps.get(otherTerm);
            lst.remove(kinTerm);            
            if (lst.isEmpty()) {
                dt.overlaps.remove(otherTerm);
            }
        }
        
        public String unDoDescription() {
            String img = "Rescinded the acceptance of an overlap in the coverage of\n" + kinTerm + 
                    " and " + otherTerm + ".";            
            img += "\nThis suggestion is now available for new action (rejection) or";
            img += "\nyou may take No Action for now.";             
            return img;            
        }
        
    }  //  end of Inner class AcceptedOverlap

    /**This inner class documents User's rejection of a proposed Overlap
     * 
     */
    public static class RejectedOverlap extends HistoryItem implements Serializable {

        String otherTerm;

        RejectedOverlap(String kt, String dat, String resc, String comments, String ot) {
            kinTerm = kt;
            date = dat;
            rescinded = Boolean.parseBoolean(resc);
            notes = comments;
            otherTerm = ot;
        }

        public String toSILKString() {
            String img = "\t<rejected-overlap term1=\"";
            img += kinTerm + "\" date=\"" + date;
            img += "\" rescinded=\"" + rescinded;
            img += "\" notes=\"" + notes + "\" term2=\"" + otherTerm + "\"/>";
            return img;
        }
        
        public String description() {
            return "REJECTED an overlap of " + kinTerm + " and " + otherTerm + ".";
        }
        
        public void unDo(DomainTheory dt) {
            rescinded = true;
            ArrayList<Object> lst = (ArrayList<Object>)dt.nonOverlaps.get(kinTerm);
            lst.remove(otherTerm);            
            if (lst.isEmpty()) {
                dt.nonOverlaps.remove(kinTerm);
            }
            // Remove the inverse also
            lst = (ArrayList<Object>)dt.nonOverlaps.get(otherTerm);
            lst.remove(kinTerm);            
            if (lst.isEmpty()) {
                dt.nonOverlaps.remove(otherTerm);
            }
        }
        
        public String unDoDescription() {
            String img = "Rescinded the rejection of an overlap in the coverage of\n" + kinTerm + 
                    " and " + otherTerm + ".";            
            img += "\nThis suggestion is now available for new action (acceptance) or";
            img += "\nyou may take No Action for now.";             
            return img;            
        }
        
    }  //  end of Inner class RejectedOverlap
} // end of public class Context

