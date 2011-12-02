

import java.util.*;
import java.io.*;
import java.text.*;

/** A ClauseBody is just a list of literals, constituting one complete 	
definition of the (predicate in the ClauseHead of the) kinship term.
Multiple clause bodies comprise a disjunctive definition.

@author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
 */
public class ClauseBody implements Serializable, Comparator {

    public static int seq = 0, seqTotal = 0, dups = 0, dupTotal = 0;
    public static String priorPred = "";
    public static int distanceLimit = 0;
    public static String[] arg0Guys = {"father", "husband", "son", "male", "brother", "half_brother",
        "step_brother", "step_father", "step_son"},
            arg0Gals = {"mother", "wife", "daughter", "female", "sister", "half_sister",
        "step_sister", "step_mother", "step_daughter"},
            exempts = {"male", "female", "equal", "not", "divorced", "dead", "gender",
        "lessThan", "greaterThan", "lessOrEql ", "greaterOrEql", "contains",
        "allowCreation", "parents", "siblings", "brother", "sister",
        "half_brother", "half_sister", "step_brother", "step_sister",
        "step_father", "step_mother", "children", "step_son",
        "step_daughter", "spice"},
            yin = {"male", "female", "elder", "younger", "brother", "sister"},
            yan = {"female", "male", "younger", "elder", "sister", "brother"};
    public static ArrayList<Object> arg0Males = loadMales(),
            arg0Females = loadFemales(),
            exemptPreds = loadExempt(),
            ying = loadYing(),
            yang = loadYang();
    /**  <code>body</code> is an ArrayList<Object> of literals that make up the Right Hand Side of a Horn Clause.
    <code>expansionPath</code> is an ArrayList<Object> of strings that document the sequence of cultural
    kinTerms that were expanded into their all-Primitive meanings in the course of expanding THIS
    ClauseBody into its all-Primitive form.
     */
    ArrayList<Object> body, expansionPath, duplications;
    int seqNmbr;
    String genderOfAlter = "", pcString, pcStringStructural;
    KinTermDef ktd;  //  points to the enclosing KinTerm Definition
    /** During Example-Generation, this becomes true if recursion is encountered while
    interpreting this clause.  Direct, indirect, and mutual recursion are detected.  */
    boolean recursive = false;
    /** If the interpretation of this clause leads to the same node in a family tree as
    some other clause for the same kinTerm, then <code>duplicative</code> = true.  */
    boolean duplicative = false;
    /** In Active Learning, we want to note which CBs matched postive examples of a kinTerm.
    true = 1 or more hits for the current kinTerm.*/
    boolean posHit = false;
    /**  Contains all flags (strings within square brackets) found in the clauseBody during parsing.  */
    public ArrayList<Object> flags;
    /**  Level indicates the generation to which Alter belongs: 0 = Ego's generation, +1 = her father's generation,
    and -1 = her child's generation, etc.  pcCounter is the count of all parent and child links traversed
    in reaching Alter.  sCounter is the count of spouse links traversed to reach Alter, etc.*/
    int level = 0, pcCounter = 0, sCounter = 0, starCounter = 0, egoNum = -99;
    Library.BaseCB_Ptr baseCB_Ptr;

    public static ArrayList<Object> loadMales() {
        ArrayList<Object> result = new ArrayList<Object>();
        for (int i = 0; i < arg0Guys.length; i++) {
            result.add(arg0Guys[i]);
        }
        return result;
    }  //  end of static method loadMales

    public static ArrayList<Object> loadFemales() {
        ArrayList<Object> result = new ArrayList<Object>();
        for (int i = 0; i < arg0Gals.length; i++) {
            result.add(arg0Gals[i]);
        }
        return result;
    }  //  end of static method loadFemales

    public static ArrayList<Object> loadExempt() {
        ArrayList<Object> result = new ArrayList<Object>();
        for (int i = 0; i < exempts.length; i++) {
            result.add(exempts[i]);
        }
        return result;
    }  //  end of static method loadExempt

    public static ArrayList<Object> loadYing() {
        ArrayList<Object> result = new ArrayList<Object>();
        for (int i = 0; i < yin.length; i++) {
            result.add(yin[i]);
        }
        return result;
    }  //  end of static method loadYing

    public static ArrayList<Object> loadYang() {
        ArrayList<Object> result = new ArrayList<Object>();
        for (int i = 0; i < yan.length; i++) {
            result.add(yan[i]);
        }
        return result;
    }  //  end of static method loadYang

    ClauseBody() {
        body = new ArrayList<Object>();
        expansionPath = new ArrayList<Object>();
        flags = new ArrayList<Object>();
    }	// end of constructor with no args

    /** Construct a new ClauseBody with one Literal in the body.

    @param	lit	the Literal to be placed in the body.
     */
    ClauseBody(Literal lit) {
        body = new ArrayList<Object>();
        expansionPath = new ArrayList<Object>();
        body.add(lit);
        flags = new ArrayList<Object>();
    }	// end of constructor with one literal as arg

    /** Make a shallow copy of this ClauseBody.  The new ClauseBody's fields will
    contain shallow copies of this one's fields.
     */
    public ClauseBody copy() {
        ClauseBody newCB = new ClauseBody();
        newCB.body = new ArrayList<Object>(body);
        newCB.genderOfAlter = genderOfAlter;
        newCB.duplications = duplications;
        newCB.duplicative = duplicative;
        newCB.pcString = pcString;
        newCB.pcStringStructural = pcStringStructural;
        newCB.recursive = recursive;
        newCB.ktd = ktd;
        newCB.level = level;
        newCB.egoNum = egoNum;
        newCB.pcCounter = pcCounter;
        newCB.sCounter = sCounter;
        newCB.starCounter = starCounter;
        newCB.flags = new ArrayList<Object>(flags);
        if (expansionPath == null) {
            newCB.expansionPath = new ArrayList<Object>();
        } else {
            newCB.expansionPath = new ArrayList<Object>(expansionPath);
        }
        newCB.baseCB_Ptr = baseCB_Ptr;
        return newCB;
    }  //  end of copy method

    /** Make a deep copy of this ClauseBody.  The new ClauseBody's body will
    contain a deep copy of this one's.
     */
    public ClauseBody deepCopy() {
        ClauseBody newCB = new ClauseBody();
        newCB.body = new ArrayList<Object>();
        for (int i = 0; i < body.size(); i++) {
            Literal lit = (Literal) body.get(i);
            newCB.body.add(lit.copy());
        }
        newCB.genderOfAlter = genderOfAlter;
        newCB.duplications = duplications;
        newCB.duplicative = duplicative;
        newCB.pcString = pcString;
        newCB.pcStringStructural = pcStringStructural;
        newCB.recursive = recursive;
        newCB.ktd = ktd;
        newCB.level = level;
        newCB.egoNum = egoNum;
        newCB.pcCounter = pcCounter;
        newCB.sCounter = sCounter;
        newCB.starCounter = starCounter;
        newCB.flags = new ArrayList<Object>(flags);
        if (expansionPath == null) {
            newCB.expansionPath = new ArrayList<Object>();
        } else {
            newCB.expansionPath = new ArrayList<Object>(expansionPath);
        }
        newCB.baseCB_Ptr = baseCB_Ptr;
        return newCB;
    }  //  end of deepCopy method

    /** Add this Literal to the body of this ClauseBody.
    @param	lit	the Literal to be added to the body.
     */
    public void addLiteral(Literal lit) {
        body.add(lit);
    }
    // probably someday I'll need a "remove" method.  Not Yet!

    /** Create a string representing this Horn Clause, in loose Prolog syntax.

    @return		a String suitable for display or printing.
     */
    public String toString() {
        int size = body.size();
        String display = "", flagList = "", path = "", dups, prior, curr;
        for (int i = 0; i < size; i++) {
            display += body.get(i).toString();
            if (i < (size - 1)) {
                display += ", ";
            }
        }
        display += ".\n";
        if (flags.size() > 0) {
            Iterator flagIter = flags.iterator();
            while (flagIter.hasNext()) {
                flagList += "[" + (String) flagIter.next() + "], ";
            }
        }  //  end of if-there-are-flags
        if ((pcCounter + sCounter + starCounter) > 0) {
            path += ".\n  Lvl=" + level + ",  PC=" + pcCounter + ", S=" + sCounter + ", *=" + starCounter + ".  ";
        }
        if (pcString != null && pcString.length() > 0) {
            path += "{" + pcString + "}  ";
        }
        if (expansionPath.size() > 0) {
            Iterator pathIter = expansionPath.iterator();
            prior = (String) pathIter.next();
            if (path.length() > 5) {
                path += "[Expansion Path: " + prior;
            } else {
                path = ".\n  [Expansion Path: " + prior;
            }
            while (pathIter.hasNext()) {
                curr = (String) pathIter.next();
                if (prior.equals("(not:")) {
                    path += " ";
                } else if (!curr.equals(")")) {
                    path += ", ";
                }
                prior = curr;
                path += prior;
            }
            path += "]";
        }  //  end of if-expansion-path-is-not-empty
        return flagList + display + path;
    }  // end of over-riding toString method

    /** Create a string representing this Horn Clause, in strict Prolog syntax.

    @return		a String suitable for parsing.
     */
    public String toThyString() throws KSInternalErrorException {
        int size = body.size();
        String display = " ", flagList = "", path = "", prior;
        for (int i = 0; i < size; i++) {
            display += body.get(i).toString() + (i < (size - 1) ? ", " : ".");
        }
        if (flags.size() > 0) {
            Iterator flagIter = flags.iterator();
            while (flagIter.hasNext()) {
                flagList += "[" + (String) flagIter.next() + "], ";
            }
        }  //  end of if-there-are-flags
        if (expansionPath.size() > 0) {
            Iterator pathIter = expansionPath.iterator();
            prior = (String) pathIter.next();
            path = ";; " + seqNmbr + "\n%" + prior;
            while (pathIter.hasNext()) {
                if (prior.equals("(not:")) {
                    path += " ";
                } else {
                    path += ", ";
                }
                prior = (String) pathIter.next();
                if (prior.equals(")")) {
                    path = path.substring(0, path.length() - 2);
                }
                path += prior;
            }
            path += "%\n";
            path += " Lvl=" + level + ",  PC=" + pcCounter + ", S=" + sCounter + ", Star=" + starCounter + ",  ";
            path += "{" + (pcString == null || pcString.length() == 0 ? "None" : pcString) + "}  \n";
        }  //  end of if-expansion-path-is-not-empty
        return path + flagList + display;
    }  // end of method toThyString()

    String toXML(String bacer) {
        String s = bacer + "<clause>\n";
        for (int i=0; i < body.size(); i++) {
            Literal lit = (Literal)body.get(i);
            s += lit.toXML(bacer + "\t");
        }
        s += "\n" + bacer + "</clause>\n";
        return s;
    }
    
    String toSimpleHornClause() {
        String hornClaws = "";
        int last = body.size() - 1;
        for (int i = 0; i < last; i++) {
            Literal lit = (Literal) body.get(i);
            hornClaws += lit + ", ";
        }
        Literal lit = (Literal) body.get(last);        
        return hornClaws + lit + ". ";
    }

    String toSILKString(String bacer) {
        String s = bacer + "<clause level=\"" + level + "\">\n", 
               dblSpace = "\t\t";
        if (pcString != null && !pcString.isEmpty()) {
            s += bacer + "\t" + "<pc-string>" + pcString + "</pc-string>\n";
        }
        if (pcStringStructural != null && !pcStringStructural.isEmpty()) {
            s += bacer + "\t" + "<pc-string-structural>" + pcStringStructural
                    + "</pc-string-structural>\n";
        }
        for (int i=0; i < body.size(); i++) {
            Literal lit = (Literal)body.get(i);
            s += lit.toSILKString(bacer + "\t") + "\n";
        }
        s += bacer + "</clause>\n";
        return s;
    }

    /** Expand this ClauseBody into one or more ClauseBodies that contain only predicates that
    are members of (@link PrimitiveCategory), and place them in <code>expandedDefs</code>.
    For example, assume the current domain theory contains the following definition:
    <p>
    <code>fee(Alter,Ego) :- son(Alter,Ego).
    <p>               |  daughter(Alter,Ego).</code>
    <p>
    that is: Alter is my 'fee' if he is either my 'son' or my 'daughter'.  If this ClauseBody
    contains the literal <code>fee(X,Y)</code> then it will be expanded into 2 ClauseBodies;
    one will contain the "son" definition and one will contain the "daughter" definition.
    Both of them (after all literals have been expanded) will be stored in the <code>expandedDefs</code>
    for the current KinTermDef.

    @param	hypo			the current context.
    @param	expandedDefs	the location where completed expansions will be stored.
    @param	kinTerm			the cultural kinship term which this ClauseBody helps define.
    @param	index			the clause number of the base clause that we're expanding
     */
    public void expand(Context hypo, ArrayList<Object> expandedDefs, String kinTerm, int index)
            throws KSBadHornClauseException, KSInternalErrorException {
        ArrayList<Object> clauseSoFar = new ArrayList<Object>(), kinTermLst = new ArrayList<Object>(), recursLvlLst = new ArrayList<Object>(),
                save4Last = new ArrayList<Object>(), expPath = new ArrayList<Object>(),
                remainingLits = new ArrayList<Object>(body.subList(1, body.size()));
        kinTermLst.add(kinTerm);
        recursLvlLst.add(new Integer(0));
        expPath.add(kinTerm + ":" + index);
//	System.out.println("Expanding " + kinTerm + ":" + index);
//	if (kinTerm.equals("dad")) Context.breakpoint();
        Literal firstLit = (Literal) body.get(0);
        StackMarkerObj marker = new StackMarkerObj(kinTermLst, recursLvlLst);
        LiteralAbstract1.expansionSerial = 0;
        firstLit.expand(hypo, clauseSoFar, remainingLits, expandedDefs, save4Last, marker, this, expPath);
        return;
    }  // end of method expand

    public boolean isExpansionOf(ClauseBody original) {
        if (original == null) {
            return true;
        }
        String origClauseNmbr = String.valueOf(original.seqNmbr);
        String firstExpansion = (String) expansionPath.get(0);
        int where = firstExpansion.indexOf(":");
        return (origClauseNmbr.equals(firstExpansion.substring(where + 1).trim()));
    }

    public int isExpandedFrom(ClauseBody original) {
        if (original == null) {
            return -1;
        }
        String firstExpansion = (String) expansionPath.get(0);
        int where = firstExpansion.indexOf(":");
        int origin = Integer.parseInt(firstExpansion.substring(where + 1).trim());
        return origin;
    }

    public void findAuxPreds(ArrayList<Object> auxPreds)
            throws KSParsingErrorException, KSConstraintInconsistency, KSInternalErrorException {
        //  Find any cultural (non-primitive) predicates in the body of this base CB.
        //  Retrieve the KTDs for all those, and put deep copies of them in auxPreds.
        //  Recursively, find & deep-copy any non-primitives found in those auxPreds.  (Compute a closure.)
        for (int i = 0; i < body.size(); i++) {
            Literal lit = (Literal) body.get(i);
            String lang = ktd.domTh.languageName,
                    predName = lit.predicate.name;
            boolean duplicate = false;
            for (int j = 0; !duplicate && j < auxPreds.size(); j++) {  // no duplicates
                KinTermDef pred = (KinTermDef) auxPreds.get(j);
                if (pred.kinTerm.equals(predName) && pred.domTh.languageName.equals(lang)) {
                    duplicate = true;
                }
            }
            if (!duplicate && !DomainTheory.isPrimOrMacro(predName)
                    && predName.indexOf("*") == -1) {
                int tagSpot = predName.indexOf("<F_aux>");  // maybe a prior aux was generalized
                String altName = (tagSpot > -1 ? predName.substring(0, tagSpot) : null);
                KinTermDef culturalPred = (KinTermDef) ktd.domTh.theory.get(predName);  //  look on original DT under predName
                if (culturalPred == null && altName != null) {
                    culturalPred = (KinTermDef) ktd.domTh.theory.get(altName);  //  look on original DT under original name
                }
                if (culturalPred == null && altName != null) {
                    culturalPred = (KinTermDef) DomainTheory.current.theory.get(predName);  //  look on Learner only under <F_aux> name
                }				//  Hopefully, one of those methods got it.
                if (culturalPred != null && culturalPred.definitions != null
                        && culturalPred.definitions.size() > 0 && culturalPred.expandedDefs != null
                        && culturalPred.expandedDefs.size() > 0) {  //  Easy
                    KinTermDef culturalPredCopy = culturalPred.deepCopy();
                    culturalPredCopy.kinTerm = predName;  //  Just in case we retrieved it under other name
                    auxPreds.add(culturalPredCopy);
                    for (int k = 0; k < culturalPred.definitions.size(); k++) {
                        ((ClauseBody) culturalPred.definitions.get(k)).findAuxPreds(auxPreds);
                    }
                } else {
                    String fileName = Library.libraryDirectory + "Domain Theory Files/" + lang + ".thy";
                    Linus dtLineServer = new Linus(fileName);
                    Parser parzer = new Parser(new Tokenizer(Library.getDFA(), dtLineServer));
                    try {
                        culturalPred = parzer.parseKinTerm(predName, false);
                    } catch (KSParsingErrorException pe) {
                        if (altName != null) {
                            culturalPred = parzer.parseKinTerm(altName, false);
                        } else {
                            throw pe;
                        }
                    }
                    KinTermDef culturalPredCopy = culturalPred.deepCopy();
                    culturalPredCopy.kinTerm = predName;  //  Just in case we retrieved it under other name
                    try {
                        ktd.domTh.addTerm(culturalPredCopy);
                    } catch (KSParsingErrorException pe) {
                    } //  OK to over-write definition with complete KTD
                    auxPreds.add(culturalPredCopy);
                    for (int k = 0; k < culturalPredCopy.definitions.size(); k++) {
                        ((ClauseBody) culturalPredCopy.definitions.get(k)).findAuxPreds(auxPreds);
                    }
                }  //  end of else-parse-it
            }  //  end of found a cultural predicate
        }  //  end of loop thru definitions
    }  //  end of method findAuxPreds

    public void postToBaseSigString() throws KSInternalErrorException {
        //  May be called only on an ExpandedDef, not on a base clause
        if (pcString == null) {
            throw new KSInternalErrorException("CB.postToBaseSigString called on CB with no pcString");
        }
        String firstExpansion = (String) expansionPath.get(0);
        int where = firstExpansion.indexOf(":");
        int baseCBNmbr = Integer.parseInt(firstExpansion.substring(where + 1).trim());
        ClauseBody baseCB = (ClauseBody) ktd.definitions.get(baseCBNmbr);
        if (baseCB.pcString == null) {
            baseCB.pcString = pcString;
        } else {
            baseCB.pcString += "_" + pcString;
        }
    }  //  end of method postToBaseSigString

    public void sortSigString() throws KSInternalErrorException {
        if (pcString == null || pcString.length() < 1) {
            throw new KSInternalErrorException("WARNING: Base clause " + ktd.domTh.languageName
                    + ":" + ktd.kinTerm + ":" + seqNmbr + " has no non-duplicative expansions.  Remove or fix it.");
        }
        TreeMap sorter = new TreeMap();
        String sigStr;
        int start = 0, end = pcString.indexOf("_");
        while (end > -1) {
            sigStr = pcString.substring(start, end);
            sorter.put(sigStr, sigStr);
            start = end + 1;
            end = pcString.indexOf("_", start);
        }  //  now get last one
        sigStr = pcString.substring(start);
        sorter.put(sigStr, sigStr);
        // Reassemble the sorted sigString
        Iterator iter = sorter.values().iterator();
        pcString = (String) iter.next();
        while (iter.hasNext()) {
            pcString += "_" + (String) iter.next();
        }
    }  //  end of method sortSigString()

    public void assignArgNames(Context ctxt) throws KSConstraintInconsistency {
        //  Assign argNames to all the args, based on the assumption of a logical chain from Ego to Alter
        int argCodeIndex = 0;
        Variable nextVar = new Variable(LiteralAbstract1.argCodes[argCodeIndex++]);
        for (int i = 0; i < body.size(); i++) {
            Literal lit = (Literal) body.get(i);
            if (i == 0) {
                lit.args.add((body.size() > 1 ? nextVar : new Variable("Alter")));
                lit.args.add(new Variable("Ego"));
            } else if (i == body.size() - 1) {
                lit.args.add(new Variable("Alter"));
                lit.args.add(nextVar);
            } else {
                Variable arg1 = nextVar;
                nextVar = new Variable(LiteralAbstract1.argCodes[argCodeIndex++]);
                lit.args.add(nextVar);  //  new varName
                lit.args.add(arg1);
            }
            if (lit.predicate.name.equals("*")) {  //  Special processing for UDPs
                if (ctxt.userDefinedProperties == null || ctxt.userDefinedProperties.isEmpty()) {
                    Context.breakpoint();
                }
                //  TBA
            }  //  end of processing for UDPs

        }  //  end of loop thru body
        unifyVariables();
    }  //  end of method assignArgNames

    public void reassignArgNames(Context ctxt) throws KSConstraintInconsistency, KSInternalErrorException {
        //  This method is like reassignArgNames_NewFront, but it handles the new (empty args) literal anywhere
        int insertionPt = -1;
        for (int i = 0; i < body.size(); i++) {
            Literal lit = (Literal) body.get(i);
            if (lit.args.isEmpty()) {
                if (insertionPt == -1) {
                    insertionPt = i;
                } else {
                    throw new KSConstraintInconsistency("CB.reassignArgNames got more than one lit with empty args.");
                }
            }
        }  //  end of i_loop
        if (insertionPt == -1) {
            throw new KSConstraintInconsistency("CB.reassignArgNames got no literals with empty args.");
        }
        if (insertionPt == 0) {
            reassignArgNames_NewFront(ctxt);
            return;
        }
        //  Leave the literals ahead of the insertionPt alone.  Note the arg names used.
        TreeMap old2New = new TreeMap();  //  oldVarName => newVarName
        Literal lit = null;
        int argCodeIndex = 0;
        String nextVarName = LiteralAbstract1.argCodes[argCodeIndex++],
                mostRecentNewVarName = null,
                newVarName;
        for (int i = 0; i < insertionPt; i++) {
            lit = (Literal) body.get(i);
            for (int j = lit.args.size() - 1; j >= 0; j--) {
                String argName = ((Variable) lit.args.get(j)).argName;
                if (argName.equals(nextVarName)) {
                    nextVarName = LiteralAbstract1.argCodes[argCodeIndex++];
                }
                old2New.put(argName, argName);
                mostRecentNewVarName = argName;
            }  //  end of j_loop
        }  //  end of i_loop
        //  Give the inserted literal arg1 = previous end-of-chain, and arg0 = new variable
        lit = (Literal) body.get(insertionPt);
        lit.args.add(new Variable(nextVarName));
        lit.args.add(new Variable(mostRecentNewVarName));
        mostRecentNewVarName = nextVarName;
        nextVarName = LiteralAbstract1.argCodes[argCodeIndex++];
        //  Give all following lits new variable argNames
        for (int i = insertionPt + 1; i < body.size(); i++) {
            lit = (Literal) body.get(i);
            Variable arg0Var = (Variable) lit.args.get(0);
            Variable arg1Var = (lit.args.size() == 2 ? (Variable) lit.args.get(1) : null);
            if (arg1Var != null) {
                newVarName = (String) old2New.get(arg1Var.argName);
                if (newVarName != null) {
                    arg1Var.argName = newVarName;
                } else {  //  create a new var name for arg1
                    old2New.put(arg1Var.argName, nextVarName);
                    arg1Var.argName = nextVarName;
                    nextVarName = LiteralAbstract1.argCodes[argCodeIndex++];
                }
            }  //  end of arg1Var not null
            newVarName = (String) old2New.get(arg0Var.argName);
            if (newVarName != null) {
                arg0Var.argName = newVarName;
            } else {  //  create a new var name for arg0
                old2New.put(arg0Var.argName, nextVarName);
                arg0Var.argName = nextVarName;
                mostRecentNewVarName = nextVarName;
                nextVarName = LiteralAbstract1.argCodes[argCodeIndex++];
            }
        }
        //  Now change the mostRecentNewVarName to 'Alter'
        for (int j = 0; j < body.size(); j++) {
            lit = (Literal) body.get(j);
            for (int k = 0; k < lit.args.size(); k++) {
                Variable var = (Variable) lit.args.get(k);
                if (var.argName.equals(mostRecentNewVarName)) {
                    var.argName = "Alter";
                }
            }  //  end of k_loop
        }  //  end of j_loop
    }  //  end of method reassignArgNames

    public void reassignArgNames_NewFront(Context ctxt) throws KSConstraintInconsistency, KSInternalErrorException {
        //  Relabel the body literals' argNames into a nice progression
        //  This method does NOT handle general negation or new variables introduced AFTER Alter.
        Literal lit = (Literal) body.get(0);
        if (lit.args.size() > 0) //  First lit must be binary predicate with empty args
        {
            throw new KSInternalErrorException("CB.reassignArgNames_NewFront got front literal with existing args.");
        }
        int argCodeIndex = 0;
        String nextVarName = LiteralAbstract1.argCodes[argCodeIndex++],
                mostRecentNewVarName = null,
                newVarName;
        TreeMap old2New = new TreeMap();  //  oldVarName => newVarName
        Variable arg1Var = new Variable("Ego"),
                arg0Var = ((body.size() == 1 ? new Variable("Alter") : new Variable(nextVarName)));
        lit.args.add(arg0Var);
        lit.args.add(arg1Var);
        if (body.size() == 1) {
            unifyVariables();
            return;
        }
        for (int i = 1; i < body.size(); i++) {
            lit = (Literal) body.get(i);
            arg0Var = (Variable) lit.args.get(0);
            arg1Var = (lit.args.size() == 2 ? (Variable) lit.args.get(1) : null);
            if (arg1Var != null) {
                newVarName = (String) old2New.get(arg1Var.argName);
                if (newVarName != null) {
                    arg1Var.argName = newVarName;
                } else {  //  create a new var name for arg1
                    old2New.put(arg1Var.argName, nextVarName);
                    arg1Var.argName = nextVarName;
                    nextVarName = LiteralAbstract1.argCodes[argCodeIndex++];
                }
            }  //  end of arg1Var not null
            newVarName = (String) old2New.get(arg0Var.argName);
            if (newVarName != null) {
                arg0Var.argName = newVarName;
            } else {  //  create a new var name for arg0
                old2New.put(arg0Var.argName, nextVarName);
                arg0Var.argName = nextVarName;
                mostRecentNewVarName = nextVarName;
                nextVarName = LiteralAbstract1.argCodes[argCodeIndex++];
            }
            if (lit.predicate.name.equals("*")) {  //  Special processing for UDPs
                if (ctxt.userDefinedProperties == null || ctxt.userDefinedProperties.isEmpty()) {
                    Context.breakpoint();
                }
                //  TBA
            }  //  end of processing for UDPs
        }  //  end of i_loop
        //  Now change the mostRecentNewVarName to 'Alter'
        for (int j = 0; j < body.size(); j++) {
            lit = (Literal) body.get(j);
            for (int k = 0; k < lit.args.size(); k++) {
                Variable var = (Variable) lit.args.get(k);
                if (var.argName.equals(mostRecentNewVarName)) {
                    var.argName = "Alter";
                }
            }  //  end of k_loop
        }  //  end of j_loop
        unifyVariables();
    }  //  end of method reassignArgNames_NewFront

    /** If this ClauseBody's literals contain multiple references to a single
    variable X, make sure that all references to X point to the same {@link Variable} object.
    Then implement all 'equal' predicates by doing global replacements in this ClauseBody.  */
    public void unifyVariables() throws KSConstraintInconsistency {
        TreeMap bindery = new TreeMap();
        Counter cntr = new Counter();
        ArrayList<Object> bodyCopy = new ArrayList<Object>(body);  // a "shallow copy" which points to the members of body.
        Literal lit = (Literal) bodyCopy.remove(0);
        try {
            lit.unifyVariables(bindery, bodyCopy, cntr);
        } catch (KSConstraintInconsistency ci) {
            throw new KSConstraintInconsistency(ci.toString().substring(39) + " in:\n" + this);
        }
        ArrayList<Object> eqLst = new ArrayList<Object>();
        for (int i = 0; i < body.size(); i++) {
            lit = (Literal) body.get(i);
            if (lit.predicate.name.equals("equal")) {
                eqLst.add(lit);
            }
            if (lit.predicate.name.equals("contains")) {
                checkValidity(lit);
            }
        }  // end of for-loop
        if (eqLst.size() > 0) {
            globalReplace(eqLst, body);
        }
    }  //  end of method unifyVariables()

    public void checkValidity(Literal lit) throws KSConstraintInconsistency {
        //  We have a 'contains' predicate.  If the MathVar is single-valued, it should be an 'equal' predicate
        MathVariable var0 = (MathVariable) lit.args.get(0);
        String arg0Name = var0.argName, starPredName;
        UserDefinedProperty udp;
        Literal bodyLit;
        for (int i = 0; i < body.size(); i++) {
            bodyLit = (Literal) body.get(i);
            if ((bodyLit.predicate.name.substring(0, 1).equals("*"))
                    && (arg0Name.equals(((Argument) bodyLit.args.get(0)).argName))) {  //  found-a-star-pred-binding-this-var
                starPredName = bodyLit.predicate.name;
                udp = (UserDefinedProperty) Context.current.userDefinedProperties.get(starPredName);
                if (udp == null) {
                    String msg = "User-Defined Property '" + starPredName + "' is not defined for this domain.";
                    throw new KSConstraintInconsistency(msg);
                }  //  end of udp-is-null  =>  ERROR
                if (udp.singleValue) {
                    String msg = "The variable '" + arg0Name + "' appears in '" + bodyLit + "' and in '"
                            + lit + "' in:\n" + this + "\nThe former implies that " + arg0Name + " holds a single " + udp.typ
                            + ", while the latter implies it is a list.\nNot permitted.";
                    throw new KSConstraintInconsistency(msg);
                }
            }  //  end of found-a-star-pred-binding-this-var
        }  //  end of loop thru body
    }  //  end of method checkValidity

    public void globalReplace(ArrayList<Object> eqLst, ArrayList<Object> target) {
        Literal eqLit, lit2;
        Iterator iter;
        Argument arg1, in, out;
        for (int i = 0; i < eqLst.size(); i++) {
            eqLit = (Literal) eqLst.get(i);
            arg1 = (Argument) eqLit.args.get(1);
            if ((arg1.argName.equals("Alter"))
                    || (arg1.argName.equals("Ego"))
                    || (arg1 instanceof Constant)) {
                in = (Argument) eqLit.args.get(1);  // never replace 'Alter', 'Ego' or a Constant.
                out = (Argument) eqLit.args.get(0);
            } else {
                in = (Argument) eqLit.args.get(0);
                out = (Argument) eqLit.args.get(1);
            }
            iter = target.iterator();  //  at the top level, 'target' is really this ClauseBody's body
            while (iter.hasNext()) {
                lit2 = (Literal) iter.next();
                if (eqLit == lit2) {
                    iter.remove();
                } else {
                    for (int j = 0; j < lit2.args.size(); j++) {
                        if (lit2.args.get(j) instanceof Literal) {  //  e.g. a 'not' predicate
                            ArrayList<Object> newEq = new ArrayList<Object>(), newTarget = new ArrayList<Object>();
                            newEq.add(eqLit);
                            newTarget.add(lit2.args.get(j));
                            globalReplace(newEq, newTarget);
                        } //  end of this-arg-is-a-Literal
                        else if (lit2.args.get(j) == out) {
                            lit2.args.set(j, in);
                        }
                    }  //  end of loop thru args of lit2
                }
            }  //  end of while-loop thru body
        }  //  end of for-loop thru eqLst
    }  //  end of method globalReplace

    /** Generate hypothetical people who have the relationship described in this ClauseBody.
    Add those people to the current context.  Label the person called "Alter" in the clause
    with the <code>kinTerm</code> that this ClauseBody helps define.
    <p>
    This method is called only on a ClauseBody in the <code>extendedDefs</code> of a {@link KinTermDef}.
    Therefore, there are only Primitive predicates in the body.
    <p>
    When NOT doing simulatedDataGeneration, try to re-use an Ego from the egoBag, with all attributes assigned by prior clauses.
    If none of them work, try 1 male and 1 female 'fresh' Ego (no pre-existing attributes) & add them to the shared bag.
    If those don't work, give up.

    @param	ktd	the KinTermDef that this ClauseBody is part of.
    @param	hypo	the current context.
    @param	egoBag	collection of hypothetical persons (M & F) who can be 'ego.'

    @throws KSBadHornClauseException        if this clause contains literals that are syntactically correct, but have logical flaws.
    @throws KSConstraintInconsistency       if the constraints specified or implied in this clause are contradictory.
    @throws KSInternalErrorException        if KS system has processed a literal improperly: send Bug Report!
    @throws ClassNotFoundException          if an invalid type name is found in a user-defined property
     */
    public void generateExamples(Context hypo, ArrayList<Object> egoBag, Dyad dyad, Oracle orca)
            throws KSBadHornClauseException, KSInternalErrorException, KSConstraintInconsistency, ClassNotFoundException {
        Individual ego = null;
        boolean oKay = false;
        int loops = 0, spares = 2,
                indivReset = hypo.indSerNumGen,
                famReset = hypo.famSerNumGen;
        String pad = "";
        ConstraintObj constraints = null;
        TreeMap bindings = null, badBindings;
        ArrayList<Object> genderStuff, starStuff, starBindings, eBagCopy = new ArrayList<Object>(egoBag), pcStr = null;
        Iterator bagIter = eBagCopy.iterator(), bodyIter;
//  CLAUSE COUNTER
        if (Library.parseClauseCounterOn && !ktd.kinTerm.equals(priorPred)) {
            if (!priorPred.equals("")) {
                pad = "";
                if (++seq < 10) {
                    pad = "  ";
                } else if (seq < 100) {
                    pad = " ";
                }
                System.out.println(priorPred + ": " + pad + seq + " - " + dups + " = " + (seq - dups));
                seqTotal += seq;
                dupTotal += dups;
            }
            priorPred = ktd.kinTerm;
            dups = 0;
        }
        seq = seqNmbr;
//  END OF CLAUSE COUNTER
//  if (ktd.kinTerm.equals("hagaah")) Context.breakpoint();
//  else Context.breakFlag = false;
        //  distanceLimit is enforced only during simDataGen for Leave-One-Out
        //  Since nearly all PC_String components are 2 or 3 characters, we let
        //  (floor(half the length of the PC_String)) -1 = a rough metric of relationship distance
        try {
            int stringDist = 0,
                pcStrLength = (pcString == null ? 0 : pcString.length());
            if (hypo.simDataGen) {
                stringDist = Math.min(Math.max((pcStrLength / 2) - 1, 0), Library.ClauseCounts.maxDist);
            }
            if (hypo.simDataGen && stringDist > distanceLimit) {
                return;
            }
            try {
                while (!oKay //  && (loops++ == 0 || ! hypo.simDataGen) //  Experimental
                        && (bagIter.hasNext() || spares > 0)) {  //  the Big While Loop
                    valRemover(body, new ArrayList<Object>());	//  This will remove all "leftover" constraints & values from all variables in this ClauseBody
                    if (bagIter.hasNext()) {
                        ego = (Individual) bagIter.next();
                    } else { // All existing Ego's have failed; make a fresh spare (M or F) for final try.
                        if (spares > 1) {
                            spares = 1;
                            ego = new Individual("Ego", "F");
                        } else {
                            spares = 0;
                            ego = new Individual("Ego", "M");
                        }
                        if (ktd.domTh.addressTerms) {
                            ego.node.kinTermsAddr.add("Ego");
                        } else {
                            ego.node.kinTermsRef.add("Ego");
                        }
                        ego.setDateOfBirth("1970-01-01");
                    }
                    oKay = true;
                    constraints = new ConstraintObj();
                    genderStuff = new ArrayList<Object>();
                    starStuff = new ArrayList<Object>();
                    starBindings = new ArrayList<Object>();
                    bodyIter = body.iterator();
//   if (loops++ > 0) System.out.println("With Ego = #" + ego.serialNmbr + ", re-trying " + ktd.kinTerm);
//   if (ktd.kinTerm.equals("dad")) System.out.println("With Ego #" + ego.serialNmbr + ", generating " + ktd.kinTerm + ":" + seqNmbr); 
/*  if (Context.breakFlag) {
                    System.out.println("With Ego = #" + ego.serialNmbr + ", generating " + ktd.kinTerm + ":" + seqNmbr);
                    Context.breakpoint();
                    }  */
                    while (oKay && bodyIter.hasNext()) // if any literal specifies ego gender ...
                    {
                        oKay = ((Literal) bodyIter.next()).constraintCheck(ego.gender, constraints, genderStuff, starStuff);
                    }
                    //  constraintCheck, by side-effect, builds all constraints
                    if (oKay) {  //  1st OK
                        bindings = new TreeMap();
                        badBindings = new TreeMap();
                        bindings.put("Ego", ego);
                        oKay = LiteralAbstract1.finalConstraintCheck(ego.gender, bindings, constraints, body, genderStuff, starStuff);
                        // finalConstraintCheck does post-processing & a final conflict-check.
                        if (oKay) {  //  2nd OK
                            ArrayList<Object> bodyCopy = new ArrayList<Object>(body), starStuffCopy = new ArrayList<Object>(starStuff), empties;
                            Literal next = null;
                            while (((bodyCopy.size() > 0) || (starStuffCopy.size() > 0)) && (next == null)) {
                                next = pop(bodyCopy, starStuffCopy, bindings, ktd.kinTerm);  //  next = first non-constraint literal in body
                            }
                            if (next == null) {
                                throw new KSBadHornClauseException("No processable literals in:\n" + ktd.kinTerm + " :- " + lineBreaker(body));
                            }
                            // start the process with next.  First, find any star-props for Ego
                            Variable egoVar = null;
                            for (int i = 0; i < next.args.size(); i++) {
                                if (((Argument) next.args.get(i)).argName.equals("Ego")) {
                                    egoVar = (Variable) next.args.get(i);
                                }
                            }
                            //  Record which of Ego's star-props was blank before we started this CB.
                            //  Those are the only ones we can erase or change.
                            empties = new ArrayList<Object>();
                            UserDefinedProperty udp;
                            if (ego.userDefinedProperties != null) {
                                Iterator egoUDPiter = ego.userDefinedProperties.values().iterator();
                                while (egoUDPiter.hasNext()) {
                                    udp = (UserDefinedProperty) egoUDPiter.next();
                                    if (udp.value.isEmpty()) {
                                        empties.add(udp.starName);
                                    }
                                }
                            }
                            oKay = next.meetsStarSpecs(ego, egoVar, constraints, starBindings, bindings, "commit", this);
                            if (oKay) {  //  3rd OK
                                //  Find/Create will use level, pcCounter & sCounter.  Re-initialize them to start.
                                resetCounters();
                                LiteralAbstract1.negativeConstraintPhase = false;  //  fresh start
                                pcStr = new ArrayList<Object>();  //  start with a blank PC-String
                                oKay = next.findOrCreate(bodyCopy, starStuffCopy, bindings, badBindings, starBindings, constraints, ktd.kinTerm,
                                        this, pcStr, dyad);
                                if ((!oKay) && (empties.size() > 0)) {
                                    //  Recursive descent or negatedConstraints failed. Empties contains star properties that we are free to change
                                    //  in this effort, and might have caused failure to find a conforming value for a UDP.  Try 'em all.
                                    //  If altering each of those doesn't help, then it's hopeless.
                                    //  For each potentially ill-chosen UDP, try to pick a different UDP value for Ego & try again.
                                    String failure;
                                    Literal starLit;
                                    ArrayList<Object> allStars = new ArrayList<Object>(), cumPriorVals = new ArrayList<Object>(), allStarMathVars = new ArrayList<Object>();
                                    TreeMap thisUDMap = (TreeMap) constraints.userDefined.get(egoVar);
                                    MathVariable argForUDPVal;
                                    for (int j = 0; j < starStuff.size(); j++) {
                                        starLit = (Literal) starStuff.get(j);
                                        failure = starLit.predicate.name;
                                        argForUDPVal = (MathVariable) starLit.args.get(0);
                                        if (failure.substring(0, 1).equals("*") && (!allStars.contains(failure))) {
                                            allStars.add(failure);
                                        }
                                        if (failure.substring(0, 1).equals("*") && (!allStarMathVars.contains(argForUDPVal))) {
                                            allStarMathVars.add(argForUDPVal);
                                        }
                                    }  //  Now allStars is a list of all possible *-props that might have caused failure & allStarMathVars is the associated variables.
                                    Iterator starIter = allStars.iterator();
                                    Object pv = null;
                                    while ((!oKay) && (starIter.hasNext())) {
                                        failure = (String) starIter.next();
                                        if ((thisUDMap != null) && (thisUDMap.get(failure) != null)
                                                && (empties.contains(failure))
                                                && (!(thisUDMap.get(failure) instanceof Constant))) {
                                            //  Ego has a constraint on this StarProp, his value was blank before this effort,
                                            //  and the argument defining its constraint is not a Constant (ergo, it's a MathVar)
                                            argForUDPVal = (MathVariable) thisUDMap.get(failure);
                                            //  If we can try again with a different value for UDP, do it.  If not, fall thru to failure.
                                            LiteralAbstract1.failReason = null;
                                            boolean newValFound = true;
                                            cumPriorVals.clear();
                                            udp = (UserDefinedProperty) ego.userDefinedProperties.get(failure);
                                            while ((!oKay) && newValFound) {
                                                bindings.clear();
                                                starBindings.clear();
                                                badBindings.clear();
                                                bindings.put("Ego", ego);
                                                udp.value.clear();
                                                argForUDPVal.updatePriorVals(cumPriorVals);
                                                newValFound = next.newUDPVal(failure, argForUDPVal, "Ego", bindings, starBindings, constraints, this);
                                                if (newValFound) {
                                                    if (argForUDPVal.priorValues != null) {
                                                        for (int i = 0; i < argForUDPVal.priorValues.size(); i++) {
                                                            pv = argForUDPVal.priorValues.get(i);
                                                            if (!cumPriorVals.contains(pv)) {
                                                                cumPriorVals.add(pv);
                                                            }
                                                        }	//  Save the PriorVals for the "experimental variable"
                                                    }
                                                    for (int i = 0; i < allStarMathVars.size(); i++) {  //  Erase PriorVals for all other MathVars
                                                        Variable var = (Variable) allStarMathVars.get(i);
                                                        if (var.priorValues != null) {
                                                            var.priorValues.clear();
                                                        }
                                                    }
                                                    argForUDPVal.updatePriorVals(cumPriorVals);  //  Restore the record for the "experimental variable."
                                                    ArrayList<Object> pcStr2 = new ArrayList<Object>();  //  start with a blank PC-String
                                                    if (next.meetsStarSpecs(ego, egoVar, constraints, starBindings, bindings, "commit", this)) {
                                                        oKay = next.findOrCreate(bodyCopy, starStuffCopy, bindings, badBindings, starBindings,
                                                                constraints, ktd.kinTerm, this, pcStr2, dyad);
                                                        if (oKay) {
                                                            pcStr = pcStr2;
                                                        }
                                                    }
                                                }
                                            }
                                            //  In this loop, newUDPVal tries to find a new conforming value for this UDP.
                                            //  If it succeeds, then it calls findOrCreate to re-start the generation of this example.
                                            //  If that succeeds, OK - end these loops; if not, pick another value and try again.
                                            //  If all possible UDP values are used up without success, the loop ends and we try the next UDP in allStars
                                        }  //  end of there is a UDP constraint for this bound-arg
                                    }  //  end of outer while loop: while possible *-prop failure exists
                                }  //  end of NOT-OK--find/create-fails
                            }  // end of 3rd OK
                        }  //  end of 2nd OK
                    } //  end of 1st OK
                }  //  end of big-while-loop, which ends either when oKay = true or we ran out of Egos.
                if (!oKay) {
                    if (hypo.simDataGen) {
                        return;
                    }
                    throw new KSBadHornClauseException("Trying to process this clause:\n"
                            + ktd.kinTerm + " :- " + lineBreaker(body) + "\n... caused Example Generation to fail.");
                }
            } catch (KSConstraintInconsistency e) {
                String errorMsg = e.toString().substring(39) + " in:\n" + ktd.kinTerm + " :- " + lineBreaker(body)
                        + "\nExpansion Path = " + expansionPath + "\n";
                throw new KSConstraintInconsistency(errorMsg);
            }  //  end of catch KSConstraintInconsistency
            // We're OK!!  By side-effect, findOrCreate bound all variables to example individuals.
            // Now label Alter, the person who illustrates the kinTerm.
            Individual alter = (Individual) bindings.get("Alter");
            if (alter == null) {
                throw new KSBadHornClauseException("Clause body in domain theory does not mention 'Alter.'\n" + lineBreaker(body));
            }
            ArrayList<Object> requiredGenderList = (ArrayList<Object>) constraints.gender.get("Alter");
            //  If the requirement is "?" but Alter happens to be M or F, we should record the requirement, not
            //  the happenstance.
            if (requiredGenderList == null) {
                genderOfAlter = "?";
            } else if (requiredGenderList.contains("F")) {
                genderOfAlter = "F";
            } else if (requiredGenderList.contains("M")) {
                genderOfAlter = "M";
            } else {
                genderOfAlter = "?";
            }
            egoNum = ego.serialNmbr;
            String startEgo = "#" + egoNum, startAlter = "#" + alter.serialNmbr;
            LiteralAbstract1.assignKinTerm(ktd.kinTerm, alter, this, MainPane.fill_In_Flag, orca);
            if (orca != null && orca.holder.size() > 0) {
                Oracle.NoiseRecord rec = (Oracle.NoiseRecord) orca.holder.remove(0);  //  there can only be one
                rec.egoSerial = egoNum;
                rec.alterSerial = alter.serialNmbr;
                Integer egoNumInt = new Integer(egoNum);
                if (orca.noiseFacts.get(egoNumInt) == null) {
                    orca.noiseFacts.put(egoNumInt, new ArrayList<Object>());
                }
                ArrayList<Object> egosList = (ArrayList<Object>) orca.noiseFacts.get(egoNumInt);
                egosList.add(rec);
            }  //  end of recording noise on orca
            pcString = makePCString(ego, alter);
//            pcString = sumStr(pcStringReduction(pcStr, startEgo, startAlter, false));
            if (Library.parseClauseCounterOn) {
                if (illegalString(pcString) && !duplicative && !ktd.kinTerm.equals("a_nero")) { //  nero's weired, but OK.
                    System.out.println("ILLEGAL STRING --" + ktd.kinTerm + ": " + seqNmbr + " \t" + pcString
                            + "\n\t from: " + pcStr + " \t" + expansionPath);
                }
                StringObj details = new StringObj("");
                if (!duplicative && MainPane.topPane.neutersIn(this, details) && !knownNeuter()) {
                    System.out.println("\t" + details + " = NEUTER in " + ktd.kinTerm + ": "
                            + seqNmbr + " \t" + pcString + " \t" + expansionPath);
                }
            }
            pcStringStructural = structStr(pcString);
            if (duplicative) {
                dups++;		//  Count the duplications encountered
            }		//  Make sure ego is in egoBag (could be new one)
            if (!egoBag.contains(ego)) {
                egoBag.add(ego);
            }
            if (dyad != null) {
                dyad.ego = ego;
                dyad.alter = alter;
                dyad.pcString = pcString;  // 99.99% the same, but sometimes legitimately different.  We want the pcStr for actual example.
            }
        } catch (Exception exc) {
            hypo.resetTo(indivReset, famReset);
        }
        return;
    }  //  end of method generateExamples

    /** Return a string with line-breaks every 80 - 100 characters.  Place the line-breaks after a ")," pair if possible,
    otherwise at any whitespace.

    @param	runOn		an ArrayList<Object> of objects (with toString() methods) to be broken into printable lines.
     */
    public String lineBreaker(ArrayList<Object> runOn) {
        String before = runOn.toString(), after = "";
        if (before.length() < 100) {
            return before;		//  Don't bother
        }
        int start = 75, stop;
        while (before.length() > 99) {
            stop = before.substring(start).indexOf("),");
            if (stop == -1) {
                stop = before.substring(start).indexOf(" ");
            }
            if (stop == -1) {
                return after + before;	//  Can't find a breaking point.  Punt.
            }
            after += before.substring(0, stop + start + 2) + "\n    ";
            before = before.substring(stop + start + 2);
        }
        return after + before;
    }  //  end of method lineBreaker


    public String makePCString(Individual ego, Individual alter)
            throws KSInternalErrorException {
        String pcStr = null;
        int oldEgo = SIL_Edit.editWindow.getCurrentEgo();
        SIL_Edit.editWindow.setCurrentEgo(ego.serialNmbr);
        boolean oldIndexBool = ChartPanel.doIndexes;
        ChartPanel.doIndexes = false;
        Family fam = ego.birthFamily;
        if (fam != null) {
            resetNodes(ego, SIL_Edit.editWindow.chart.distinctAdrTerms);
            ChartPanel.createNode(ego, fam, "child");
            if (alter.node != null) {
                pcStr = alter.node.pcString;
                if (genderOfAlter.equals("?")) {
                    pcStr = neuterAlter(pcStr);
                }
            }
        } // if we reached Alter and gave her a PC String, we're done
        if (pcStr != null && pcStr.length() > 0) {
            SIL_Edit.editWindow.setCurrentEgo(oldEgo);
            ChartPanel.doIndexes = oldIndexBool;
            return pcStr;
        }
        // else, try again with Ego's marriages
        for (Object o : ego.marriages) {
            fam = (Family) o;
            resetNodes(ego, SIL_Edit.editWindow.chart.distinctAdrTerms);
            ChartPanel.createNode(ego, fam, "spouse");
            if (alter.node != null) {
                pcStr = alter.node.pcString;
                if (genderOfAlter.equals("?")) {
                    pcStr = neuterAlter(pcStr);
                }
                if (pcStr != null && pcStr.length() > 0) {
                    SIL_Edit.editWindow.setCurrentEgo(oldEgo);
                    ChartPanel.doIndexes = oldIndexBool;
                    return pcStr;
                }
            }
        } // if no hits in marriages either: Error!
        SIL_Edit.editWindow.setCurrentEgo(oldEgo);
        ChartPanel.doIndexes = oldIndexBool;
        String msg = "While making a PC String for " + ktd.domTh.languageName;
        msg += ", " + ktd.kinTerm + ": " + seqNmbr;
        msg += ",\nfound no logical path from Ego to Alter.";
        MainPane.activity.log.append(msg);
        System.err.println(msg);
        throw new KSInternalErrorException(msg);
    }

    public void resetNodes(Individual ego, boolean adr) {
        ArrayList<Individual> pop = ktd.domTh.ctxt.individualCensus;
        for (Individual ind : pop) {
            ind.node = new Node();
            ind.seenB4 = 0;
        }
        ego.node = Node.makeSelfNode(adr);
    }
    
    String neuterAlter(String pcStr) {
        String neutered = pcStr;
        ArrayList pcStringList = ktd.decodeString(pcStr);
        String lastSymbol = (String)pcStringList.remove(pcStringList.size() -1);
        try {
           pcStringList.add(generify(lastSymbol));
           neutered = "";
           for (Object o : pcStringList) {
               neutered += o;
           }
        }catch(Exception exc) {  } // won't happen
        return neutered;
    }


    public boolean knownNeuter() {
        //  if (ktd.domTh.nonTerms.contains(ktd.kinTerm)) return true;
        //  for (int i=0; i < ktd.flags.size(); i++)
        //  	if (ktd.domTh.nonTermFlags.contains(ktd.flags.get(i))) return true;
        if ((ktd.kinTerm.equals("buchu") && seqNmbr == 3)
                || ktd.kinTerm.equals("sibling")
                || (ktd.kinTerm.equals("juai_co") && seqNmbr == 152)
                || (ktd.kinTerm.equals("juai_yo") && seqNmbr == 152)) {
            return true;
        }
        return false;
    }

    public boolean dblCheck() {
        //  Return false if the structural PC-String violates level etc.
        int ckLevel = 0, ckPCctr = 0, ckSctr = 0, ckStarctr = 0, curr = 1;
        char ch;
        char[] symbol = "     ".toCharArray();  //  5 blanks
        symbol[0] = pcStringStructural.charAt(0);
        String result = "", symbolStr;
        for (int i = 1; i < pcStringStructural.length(); i++) {
            ch = pcStringStructural.charAt(i);
            if (Character.isUpperCase(ch) || (ch == '*')) {
                symbolStr = new String(symbol).trim();
                if (symbolStr.equals("P")) {
                    ckLevel++;
                    ckPCctr++;
                } else if (symbolStr.equals("C")) {
                    ckLevel--;
                    ckPCctr++;
                } else if (symbolStr.equals("Sp")) {
                    ckSctr++;
                } else if (symbolStr.equals("Exsp")) {
                    ckSctr++;
                } else if (symbolStr.equals("Sib")) {
                    ckPCctr += 4;
                } else if (symbolStr.equals("Hsib")) {
                    ckPCctr += 4;
                    ckSctr++;
                } else if (symbolStr.equals("Stsib")) {
                    ckPCctr += 4;
                    ckSctr += 2;
                } else if (symbolStr.equals("Stp")) {
                    ckPCctr += 2;
                    ckSctr += 2;
                    ckLevel++;
                } else if (symbolStr.equals("Stc")) {
                    ckPCctr += 2;
                    ckSctr++;
                    ckLevel--;
                } else if (symbolStr.equals("*")) {
                    ckStarctr++;
                } else {
                    System.out.println("BAD SYMBOL in dblCheck!  " + symbolStr);
                }
                symbol = "     ".toCharArray();
                curr = 0;
            }  //  end of processing completed symbol
            symbol[curr++] = ch;
        }  //  end of loop thru chars in pcStringStructural
        symbolStr = new String(symbol).trim();
        if (symbolStr.equals("P")) {
            ckLevel++;
            ckPCctr++;
        } else if (symbolStr.equals("C")) {
            ckLevel--;
            ckPCctr++;
        } else if (symbolStr.equals("Sp")) {
            ckSctr++;
        } else if (symbolStr.equals("Exsp")) {
            ckSctr++;
        } else if (symbolStr.equals("Sib")) {
            ckPCctr += 4;
        } else if (symbolStr.equals("Hsib")) {
            ckPCctr += 4;
            ckSctr++;
        } else if (symbolStr.equals("Stsib")) {
            ckPCctr += 4;
            ckSctr += 2;
        } else if (symbolStr.equals("Stp")) {
            ckPCctr += 2;
            ckSctr += 2;
            ckLevel++;
        } else if (symbolStr.equals("Stc")) {
            ckPCctr += 2;
            ckSctr++;
            ckLevel--;
        } else if (symbolStr.equals("*")) {
            ckStarctr++;
        } else {
            System.out.println("BAD SYMBOL in dblCheck!  " + symbolStr);
        }
        if (level != ckLevel) {
            System.out.println("\n\nCkLvl = " + ckLevel + "; CkPC = " + ckPCctr + "; CkS = "
                    + ckSctr + "; CkStar = " + ckStarctr);
            return false;
        } else {
            return true;
        }
    }  //  end of method dblCheck

    public boolean illegalString(String pcString) {  //  all the sanity tests I can think of
        return (pcString.indexOf("roBro") > -1
                || pcString.indexOf("roSis") > -1
                || pcString.indexOf("isSis") > -1
                || pcString.indexOf("isBro") > -1
                || pcString.indexOf("ibSis") > -1
                || pcString.indexOf("ibBro") > -1
                || pcString.indexOf("roSib") > -1
                || pcString.indexOf("isSib") > -1
                || pcString.indexOf("BroHbro") > -1
                || pcString.indexOf("BroHsis") > -1
                || pcString.indexOf("BroHsib") > -1
                || pcString.indexOf("SisHbro") > -1
                || pcString.indexOf("SisHsis") > -1
                || pcString.indexOf("SisHsib") > -1
                || pcString.indexOf("SibHbro") > -1
                || pcString.indexOf("SibHsis") > -1
                || pcString.indexOf("SibHsib") > -1
                || pcString.indexOf("BroStbro") > -1
                || pcString.indexOf("BroStsis") > -1
                || pcString.indexOf("BroStsib") > -1
                || pcString.indexOf("SisStbro") > -1
                || pcString.indexOf("SisStsis") > -1
                || pcString.indexOf("SisStsib") > -1
                || pcString.indexOf("SibStbro") > -1
                || pcString.indexOf("SibStsis") > -1
                || pcString.indexOf("SibStsib") > -1
                || pcString.indexOf("FaSo") > -1
                || pcString.indexOf("FaDa") > -1
                || pcString.indexOf("FaC") > -1
                || pcString.indexOf("MoDa") > -1
                || pcString.indexOf("MoSo") > -1
                || pcString.indexOf("MoC") > -1
                || pcString.indexOf("PSo") > -1
                || pcString.indexOf("PDa") > -1
                || pcString.indexOf("PC") > -1
                || pcString.indexOf("SoFa") > -1
                || pcString.indexOf("DaFa") > -1
                || pcString.indexOf("SoMo") > -1
                || pcString.indexOf("DaMo") > -1
                || pcString.indexOf("SoP") > -1
                || pcString.indexOf("DaP") > -1
                || pcString.indexOf("CFa") > -1
                || pcString.indexOf("CMo") > -1
                || pcString.indexOf("CP") > -1
                || pcString.indexOf("FaWi") > -1
                || pcString.indexOf("FaSp") > -1
                || pcString.indexOf("MoHu") > -1
                || pcString.indexOf("MoSp") > -1
                || pcString.indexOf("PWi") > -1
                || pcString.indexOf("PHu") > -1
                || pcString.indexOf("PSp") > -1
                || pcString.indexOf("SpC") > -1
                || pcString.indexOf("SpSo") > -1
                || pcString.indexOf("SpDa") > -1
                || pcString.indexOf("HuC") > -1
                || pcString.indexOf("HuSo") > -1
                || pcString.indexOf("HuDa") > -1
                || pcString.indexOf("WiC") > -1
                || pcString.indexOf("WiSo") > -1
                || pcString.indexOf("WiDa") > -1
                || pcString.indexOf("SoSib") > -1
                || pcString.indexOf("DaSib") > -1
                || pcString.indexOf("CSib") > -1
                || pcString.indexOf("SoBro") > -1
                || pcString.indexOf("DaBro") > -1
                || pcString.indexOf("CBro") > -1
                || pcString.indexOf("SoSis") > -1
                || pcString.indexOf("DaSis") > -1
                || pcString.indexOf("CSis") > -1
                || pcString.indexOf("BroStfa") > -1
                || pcString.indexOf("BroStmo") > -1
                || pcString.indexOf("SisStfa") > -1
                || pcString.indexOf("SisStmo") > -1
                || pcString.indexOf("SibStfa") > -1
                || pcString.indexOf("SibStmo") > -1
                || pcString.indexOf("Sth") > -1
                || pcString.indexOf("Stst") > -1
                || pcString.indexOf("Hh") > -1
                || pcString.indexOf("Hst") > -1
                || pcString.indexOf("BroFa") > -1
                || pcString.indexOf("BroMo") > -1
                || pcString.indexOf("SisFa") > -1
                || pcString.indexOf("SisMo") > -1
                || pcString.indexOf("SibFa") > -1
                || pcString.indexOf("SibMo") > -1);
    }

    void displayArgs(String meth, ArrayList<Object> pcStrCopy, ArrayList<Object> famPreds,
            ArrayList<Object> extra, String ego) {
        System.out.print("Entered " + meth);
        if (ego != null) System.out.println( " with Ego = " + ego);
        else System.out.println();
        System.out.println("\tpcStrCopy = " + pcStrCopy);
        System.out.println("\tfamPreds = " + famPreds);
        if (extra != null) System.out.println( "3rd list = " + extra);
        System.out.println();
    }

    /*  OLD CODE for computing PC Strings in examples. New method = makePCString().
     *  This code used only during expansion of primitive clauses into expanded clauses.
     * */
    public ArrayList<Object> pcStringReduction(ArrayList<Object> pcStr, String ego,
            String alter, boolean ignoreError)
            throws KSInternalErrorException {
        //	Goal:  Find sub-sets of literals that represent full-, half-, and step-siblings or step-parents;
        //		   replace them with single symbols.  Also remove redundent intermediate literals.
        //	The input pcStr is a list of Strings, and the returned list contains Strings.  However, for internal
        //	processing we work with lists of StringObjs (to handle duplicate Strings).

        ArrayList<Object> pcStrCopy = new ArrayList<Object>(), famPreds = new ArrayList<Object>();
        for (int j = 0; j < pcStr.size(); j++) {
            pcStrCopy.add(new StringObj((String) pcStr.get(j)));
        }
        StringObj candiStr;
        int typ, priorSize;
        //	Look for Full Siblings
        for (int i = 0; i < pcStrCopy.size(); i++) {
            candiStr = (StringObj) pcStrCopy.get(i);
            typ = famPred(candiStr);
            if (typ > 0 && typ < 3) {
                famPreds.add(candiStr);
            }
        }
        priorSize = famPreds.size() + 1;
        while (famPreds.size() < priorSize) {  // size always decreases, unless too few family predicates left
            priorSize = famPreds.size();
//            displayArgs("reduceFullSiblings", pcStrCopy, famPreds, null, ego);
            reduceFullSiblings(pcStrCopy, famPreds, ego);
        }	//	Look for Step Siblings
        famPreds = new ArrayList<Object>(pcStrCopy);
        priorSize = famPreds.size() + 1;
        while (famPreds.size() < priorSize) {  // size always decreases, unless too few family predicates left
            priorSize = famPreds.size();
//            displayArgs("reduceStepSiblings", pcStrCopy, famPreds, null, ego);
            reduceStepSiblings(pcStrCopy, famPreds, ego);
        }	//	Look for Step Siblings (reversed)
        famPreds = new ArrayList<Object>(pcStrCopy);
        priorSize = famPreds.size() + 1;
        while (famPreds.size() < priorSize) {
            priorSize = famPreds.size();
//            displayArgs("reduceStepSiblings2", pcStrCopy, famPreds, null, ego);
            reduceStepSiblings2(pcStrCopy, famPreds, ego);
        }	//	Look for Half Siblings: first way they can be expresed
        famPreds = new ArrayList<Object>(pcStrCopy);
        priorSize = famPreds.size() + 1;
        while (famPreds.size() < priorSize) {
            priorSize = famPreds.size();
//            displayArgs("reduceHalfSiblings1", pcStrCopy, famPreds, null, ego);
            reduceHalfSiblings1(pcStrCopy, famPreds, ego);
        }	//	Look for Step Children expressed with Std Macro
        famPreds = new ArrayList<Object>(pcStrCopy);
        priorSize = famPreds.size() + 1;
        while (famPreds.size() < priorSize) {
            priorSize = famPreds.size();
//            displayArgs("reduceStepChildren", pcStrCopy, famPreds, null, ego);
            reduceStepChildren(pcStrCopy, famPreds, ego);
        }	//	Look for Step Children expressed with reversed Step Parent
        famPreds = new ArrayList<Object>(pcStrCopy);
        priorSize = famPreds.size() + 1;
        while (famPreds.size() < priorSize) {
            priorSize = famPreds.size();
//            displayArgs("reduceStepChildren2", pcStrCopy, famPreds, null, ego);
            reduceStepChildren2(pcStrCopy, famPreds, ego);
        }	//	Look for Step Parents
        famPreds = new ArrayList<Object>(pcStrCopy);
        priorSize = famPreds.size() + 1;
        while (famPreds.size() < priorSize) {
            priorSize = famPreds.size();
//            displayArgs("reduceStepParents", pcStrCopy, famPreds, null, ego);
            reduceStepParents(pcStrCopy, famPreds, ego);
        }	//	Look for Half Siblings: 2nd way they can be expresed
        famPreds.clear();
        for (int i = 0; i < pcStrCopy.size(); i++) {
            candiStr = (StringObj) pcStrCopy.get(i);
            typ = famPred(candiStr);
            if (typ > 0 && typ < 3) {
                famPreds.add(candiStr);
            }
        }
        priorSize = famPreds.size() + 1;
        while (famPreds.size() < priorSize) {
            priorSize = famPreds.size();
//            displayArgs("reduceHalfSiblings2", pcStrCopy, famPreds, null, ego);
            reduceHalfSiblings2(pcStrCopy, famPreds, ego);
        }

        if (pcStr.indexOf("Hu") == 0 && pcStr.indexOf("Wi") == 1) {
            Context.breakpoint();
        }

        famPreds = new ArrayList<Object>(pcStrCopy);
//            displayArgs("reduceIndirectRefs", pcStrCopy, famPreds, null, null);
        eliminateReflections(pcStrCopy, famPreds);
        famPreds.clear();
        for (int i = 0; i < pcStrCopy.size(); i++) {
            candiStr = (StringObj) pcStrCopy.get(i);
            typ = famPred(candiStr);
            if ((typ > 19 && typ < 49) || typ == 1) {
                famPreds.add(candiStr);  //  parent or sibling, not spouse or child
            }
        }
        priorSize = famPreds.size() + 1;
        while (famPreds.size() < priorSize) {
            priorSize = famPreds.size();
//            displayArgs("reduceBroSisEtc", pcStrCopy, famPreds, pcStr, ego);
            reduceBroSisEtc(pcStrCopy, famPreds, pcStr, ego);
        }
        famPreds = new ArrayList<Object>(pcStrCopy);
//            displayArgs("reduceIndirectRefs", pcStrCopy, famPreds, null, null);
        reduceIndirectRefs(pcStrCopy, famPreds);
        ArrayList<Object> newPC_String = new ArrayList<Object>();
        for (int i = 0; i < pcStrCopy.size(); i++) {
            newPC_String.add(((StringObj) pcStrCopy.get(i)).value);
        }
        if (newPC_String.isEmpty()) {
            throw new KSInternalErrorException("CB:pcStringReduction choked on a weird CB");
        }
        String firstPred = (String) newPC_String.get(0),
                lastPred = (String) newPC_String.get(newPC_String.size() - 1);
        String endEgo = strArg1(firstPred), endAlter = strArg0(lastPred, true);
        if (!ego.equals(endEgo) || !alter.equals(endAlter)
                || !logicalChain(endEgo, endAlter, newPC_String, pcStr)) {
            if (!ignoreError && !ktd.kinTerm.equals("a_nero")) {
                throw new KSInternalErrorException("Ego, Alter, or Chain of relations ruined in CB:pcStringReduction.\n"
                        + "for  " + ktd.kinTerm + ":" + seqNmbr + "\n" + expansionPath + "\nOld = "
                        + pcStr + ".\tNew = " + newPC_String);
            }
        }
//        System.out.println("Final result: " + newPC_String);
//        System.out.println("\t\t########################################\n\n");
        return newPC_String;
    }  //  end of method pcStringReduction

    public int famPred(StringObj strObj) throws KSInternalErrorException {
        return famPred(strObj.value);
    }

    public int famPred(String candiStr) throws KSInternalErrorException {
        //  Return 1 if it's parental predicate, 2 if it's a child predicate,
        //  11 = husband, 12 = wife, 13 = spouse,
        //	21 = Bro, 22 = Sis, 23 = Sib,
        //	31 = Hbro, 32 = Hsis, 33 = Hsib,
        //	41 = Stbro, 42 = Stsis, 43 = Stsib,
        //  EXCEPTION if it's none of those.
        String[] birthPreds = {"Fa", "Mo", "P", "Stfa", "Stmo", "Stp", "So", "Da", "C", "Stso", "Stda", "Stc"};
        int where = candiStr.indexOf("(");  //  some strings have a parenthetical expression
        String pred = candiStr.substring(0, where);
        for (int i = 0; i < 6; i++) {
            if (pred.equals(birthPreds[i])) {
                return 1;
            }
        }
        for (int i = 6; i < 12; i++) {
            if (pred.equals(birthPreds[i])) {
                return 2;
            }
        }
        if (pred.equals("Hu")) {
            return 11;
        }
        if (pred.equals("Wi")) {
            return 12;
        }
        if (pred.equals("Sp")) {
            return 13;
        }
        if (pred.equals("Bro")) {
            return 21;
        }
        if (pred.equals("Sis")) {
            return 22;
        }
        if (pred.equals("Sib")) {
            return 23;
        }
        if (pred.equals("Hbro")) {
            return 31;
        }
        if (pred.equals("Hsis")) {
            return 32;
        }
        if (pred.equals("Hsib")) {
            return 33;
        }
        if (pred.equals("Stbro")) {
            return 41;
        }
        if (pred.equals("Stsis")) {
            return 42;
        }
        if (pred.equals("Stsib")) {
            return 43;
        }
        if (pred.equals("*")) {
            return 99;
        }
        throw new KSInternalErrorException("Illegal predicate '" + pred + "' in famPred");
    }  //  end of method famPred

    public void reduceFullSiblings(ArrayList<Object> pcStrCopy, ArrayList<Object> famPreds, String ego) throws KSInternalErrorException {
        if (famPreds.size() < 4) {
            return;    //  minimum 4 literals needed for full--siblings
        }
        ArrayList<Object> candidates = new ArrayList<Object>(), searchSet = new ArrayList<Object>();
        for (int i = 1; i < famPreds.size(); i++) {
            searchSet.add(famPreds.get(i));  //  Here's where we'll look
        }
        String kid1 = "", kid2 = "", par1 = "", par2 = "", kid2pred = "";
        StringObj candidate = (StringObj) famPreds.get(0);
        TreeMap bindings = new TreeMap();
        bindings.put(ego, ego);
        for (int i = 0; i < pcStrCopy.indexOf(candidate); i++) {
            postBinding(bindings, (StringObj) pcStrCopy.get(i));
        }
        String[] family = bindFamily(candidate.value);
        par1 = family[0];
        kid1 = family[1];
        if (bindings.get(kid1) == null) {  //  The reference kid must already be known (bound)
            famPreds.remove(0);
            return;
        }
        candidates.add(candidate);
        candidate = findOtherParent(par1, kid1, searchSet);
        if (candidate == null) {  //  this doesn't fit the full-sibling pattern.  Punt.
            famPreds.remove(0);
            return;
        }
        //  We have 1 parent/child combo in hand, and the 2nd parent
        family = bindFamily(candidate.value);
        par2 = family[0];
        candidates.add(candidate);
        candidate = findKid2(par1, par2, kid1, searchSet);
        if (candidate == null) {  //  this doesn't fit the full-sibling pattern.  Punt.
            famPreds.remove(0);
            return;
        }
        family = bindFamily(candidate.value);
        kid2 = family[1];
        kid2pred = kid2pred(candidate.value, 0);
        candidates.add(candidate);
        //  If we get here, we've found both parents & both kids.  Last lit completes circle
        candidate = findKid2(par1, par2, kid1, searchSet);
        if (candidate == null) {  //  this doesn't fit the full-sibling pattern.  Punt.
            famPreds.remove(0);
            return;
        }
        family = bindFamily(candidate.value);
        if (!kid2.equals(family[1])) {  //  this doesn't fit the full-sibling pattern.  Punt.
            famPreds.remove(0);
            return;
        }
        //  Completed the pattern for Full Sibling.  Make reduction and return.
        candidates.add(candidate);
        if (kid2pred.equals("Sib")) {
            kid2pred = kid2pred(candidate.value, 0);
        }
        int where = pcStrCopy.indexOf(candidates.get(0));  //  start of pattern we're reducing
        String newStr = kid2pred + "(" + kid2 + "," + kid1 + ")";
        for (int j = 0; j < candidates.size(); j++) {
            pcStrCopy.remove(pcStrCopy.indexOf(candidates.get(j)));
            famPreds.remove(famPreds.indexOf(candidates.get(j)));
        }
        pcStrCopy.add(where, new StringObj(newStr));
        return;
    }  //  end of method reduceFullSiblings

    public void postBinding(TreeMap bindings, StringObj lit) {
        int left = lit.value.indexOf("("), mid = lit.value.indexOf(","), right = lit.value.indexOf(")");
        String arg0 = lit.value.substring(left + 1, mid), arg1 = lit.value.substring(mid + 1, right);
        bindings.put(arg0, arg0);
        bindings.put(arg1, arg1);
    }  //  end of method postBinding

    public StringObj findOtherParent(String par1, String kid1, ArrayList<Object> searchSet) throws KSInternalErrorException {
        //  Find in searchSet a birth Literal with a different parent for kid1.
        StringObj answer;
        String[] family;  //  family[0] = parent; family[1] = kid
        for (int i = 0; i < searchSet.size(); i++) {
            answer = (StringObj) searchSet.get(i);
            int typ = famPred(answer.value);  //  1=P, 2=C, 11=Hu, 12=Wi, 13=Sp
            family = bindFamily(answer.value);
            if (typ < 3 && kid1.equals(family[1]) && !par1.equals(family[0])) {
                searchSet.remove(i);
                return answer;
            }
        }  //  end of loop thru all StringObjs in searchSet
        return null;
    }  //  end of method findOtherParent

    public String findKidOf2Pars(String par1, String par2, ArrayList<Object> searchSet, ArrayList<Object> foundSet) throws KSInternalErrorException {
        StringObj prospect;
        String[] family;  //  family[0] = parent; family[1] = kid
        ArrayList<Object> kidsOf1 = new ArrayList<Object>(), kidsOf2 = new ArrayList<Object>(),
                litsFor1 = new ArrayList<Object>(), litsFor2 = new ArrayList<Object>();
        for (int i = 0; i < searchSet.size(); i++) {
            prospect = (StringObj) searchSet.get(i);
            int typ = famPred(prospect.value);  //  1=P, 2=C, 11=Hu, 12=Wi, 13=Sp
            family = bindFamily(prospect.value);
            if (typ < 3 && par1.equals(family[0])) {
                kidsOf1.add(family[1]);
                litsFor1.add(prospect);
            } else if (typ < 3 && par2.equals(family[0])) {
                kidsOf2.add(family[1]);
                litsFor2.add(prospect);
            }
        }  //  end of loop thru all StringObjs in searchSet
        for (int j = 0; j < kidsOf1.size(); j++) {
            String kid = (String) kidsOf1.get(j);
            int where = kidsOf2.indexOf(kid);
            if (where > -1) {
                foundSet.add(litsFor1.get(j));
                foundSet.add(litsFor2.get(where));
                return kid;
            }
        }  //  end of loop thru kid lists, looking for match
        return null;
    }  //  end of method findKidOf2Pars

    public StringObj findKid2(String par1, String par2, String kid1, ArrayList<Object> searchSet) throws KSInternalErrorException {
        //  Find in searchSet a StringObj for a Literal with par1 or par2 as the parent
        //  and someone other than kid1 as the kid.
        StringObj answer;
        String[] family;  //  family[0] = parent; family[1] = kid
        for (int i = 0; i < searchSet.size(); i++) {
            answer = (StringObj) searchSet.get(i);
            int typ = famPred(answer.value);  //  1=P, 2=C, 11=Hu, 12=Wi, 13=Sp
            family = bindFamily(answer.value);
            if (typ < 3 && (par1.equals(family[0]) || par2.equals(family[0]))
                    && !kid1.equals(family[1])) {
                searchSet.remove(i);
                return answer;
            }
        }  //  end of loop thru all StringObjs in searchSet
        return null;
    }  //  end of method findKid2

    public StringObj findSpouse3(String par1, String par2, ArrayList<Object> searchSet) throws KSInternalErrorException {
        //  Find in searchSet a StringObj for a Literal with par1 or par2 as one spouse
        //  and someone new as the other spouse.
        StringObj answer;
        String[] family;  //  family[0] = parent; family[1] = kid
        for (int i = 0; i < searchSet.size(); i++) {
            answer = (StringObj) searchSet.get(i);
            int typ = famPred(answer.value);  //  1=P, 2=C, 11=Hu, 12=Wi, 13=Sp, 20+ = siblings
            family = bindFamily(answer.value);
            if (typ > 3 && typ < 20 && //  it's a marital predicate
                    (((par1.equals(family[0]) || par2.equals(family[0]))
                    && !par1.equals(family[1]) && !par2.equals(family[1]))
                    || ((par1.equals(family[1]) || par2.equals(family[1]))
                    && !par1.equals(family[0]) && !par2.equals(family[0])))) {
                searchSet.remove(i);
                return answer;
            }
        }  //  end of loop thru all StringObjs in searchSet
        return null;
    }  //  end of method findSpouse3

    public StringObj findSpouse4(String par1, String par2, ArrayList<Object> searchSet) throws KSInternalErrorException {
        //  Find in searchSet a Literal with par1 as one spouse and someone
        //  other than par2 as the other spouse.
        StringObj answer;
        String[] family;  //  family[0] = parent; family[1] = kid
        for (int i = 0; i < searchSet.size(); i++) {
            answer = (StringObj) searchSet.get(i);
            int typ = famPred(answer.value);  //  1=P, 2=C, 11=Hu, 12=Wi, 13=Sp
            family = bindFamily(answer.value);
            if (typ > 3 && typ < 20 && //  it's a marital predicate
                    ((par1.equals(family[0]) && !par2.equals(family[1]))
                    || (par1.equals(family[1]) && !par2.equals(family[0])))) {
                searchSet.remove(i);
                return answer;
            }
        }  //  end of loop thru all StringObjs in searchSet
        return null;
    }  //  end of method findSpouse4

    public StringObj confirmKid(String par1, String par2, String kid, ArrayList<Object> searchSet) throws KSInternalErrorException {
        //  Find a Literal with par1 or par2 as parent and kid as ... well, kid.
        StringObj answer;
        String[] family;  //  family[0] = parent; family[1] = kid
        for (int i = 0; i < searchSet.size(); i++) {
            answer = (StringObj) searchSet.get(i);
            int typ = famPred(answer.value);  //  1=P, 2=C, 11=Hu, 12=Wi, 13=Sp
            family = bindFamily(answer.value);
            if (typ < 3 && (par1.equals(family[0]) || par2.equals(family[0]))
                    && kid.equals(family[1])) {
                searchSet.remove(i);
                return answer;
            }
        }  //  end of loop thru all StringObjs in searchSet
        return null;
    }  //  end of method confirmKid

    public StringObj confirmCouple(String par1, String par2, ArrayList<Object> searchSet) throws KSInternalErrorException {
        //  Find a Literal with par1 & par2 as spouses.
        StringObj answer;
        String[] family;
        for (int i = 0; i < searchSet.size(); i++) {
            answer = (StringObj) searchSet.get(i);
            int typ = famPred(answer.value);  //  1=P, 2=C, 11=Hu, 12=Wi, 13=Sp
            family = bindFamily(answer.value);
            if (typ > 3 && typ < 20
                    && (par1.equals(family[0]) || par2.equals(family[0]))
                    && (par1.equals(family[1]) || par2.equals(family[1]))) {
                searchSet.remove(i);
                return answer;
            }
        }  //  end of loop thru all StringObjs in searchSet
        return null;
    }  //  end of method confirmCouple

    public String kid2pred(String candiStr, int typ) throws KSInternalErrorException {
        // typ:  0 = full sibling; 1 = step-sibling; 2 = half-sibling
        String[] broTerms = {"Bro", "Stbro", "Hbro"};
        String[] sisTerms = {"Sis", "Stsis", "Hsis"};
        String[] sibTerms = {"Sib", "Stsib", "Hsib"};
        int where = candiStr.indexOf("(");
        String pc = candiStr.substring(0, where);
        if (pc.equals("So") || pc.equals("Stso")) {
            return broTerms[typ];
        } else if (pc.equals("Da") || pc.equals("Stda")) {
            return sisTerms[typ];
        } else if (pc.equals("C") || pc.equals("Stc")) {
            return sibTerms[typ];
        } else {
            throw new KSInternalErrorException("CB.kid2Pred given illegal PC_Str '" + pc + "'.");
        }
    }  //  end of method kid2pred

    public String stepPred(String candiStr) {
        int where = candiStr.indexOf("(");
        String pc = candiStr.substring(0, where);
        if (pc.equals("Hu")) {
            return "Stfa";
        } else if (pc.equals("Wi")) {
            return "Stmo";
        } else if (pc.equals("Sp")) {
            return "Stp";
        } else if (pc.equals("Fa")) {
            return "Stc";
        } else if (pc.equals("Mo")) {
            return "Stc";
        } else if (pc.equals("P")) {
            return "Stc";
        } else if (pc.equals("So")) {
            return "Stso";
        } else if (pc.equals("Da")) {
            return "Stda";
        } else if (pc.equals("C")) {
            return "Stc";
        }
        return "Error";
    }  //  end of method stepPred

    public String[] bindFamily(String candiStr) throws KSInternalErrorException {
        //  family[0] = parent.  family[1] = kid
        //	OR family[0] = husband.  family[1] = wife (if genders known)
        String[] family = new String[2];
        int typ = famPred(candiStr);
        if (typ == 1) {  //  a parental predicate
            family[0] = strArg0(candiStr);
            family[1] = strArg1(candiStr);
        } else if (typ == 2) {  //  a child predicate
            family[0] = strArg1(candiStr);
            family[1] = strArg0(candiStr);
        } else if (typ == 11) {  //  a husband predicate
            family[0] = strArg0(candiStr);
            family[1] = strArg1(candiStr);
        } else if (typ == 12 || typ == 13) {  //  a wife or spouse predicate
            family[0] = strArg1(candiStr);
            family[1] = strArg0(candiStr);
        } else if (typ > 20) {
            family[0] = strArg0(candiStr);
            family[1] = strArg1(candiStr);
        }
        return family;
    }  // end of method bindFamily

    public String strArg0(String candiStr, boolean special) {
        //  Return 1st arg, unless predicate == '*' -- then return 2nd
        if (candiStr.substring(0, 1).equals("*")) {
            return strArg1(candiStr);
        }
        int strt = candiStr.indexOf("(") + 1, end = candiStr.indexOf(",");
        return candiStr.substring(strt, end);
    }  //  end of method strArg0

    public String strArg0(String candiStr) {
        int strt = candiStr.indexOf("(") + 1, end = candiStr.indexOf(",");
        return candiStr.substring(strt, end);
    }  //  end of method strArg0

    public String strArg1(String candiStr) {
        int strt = candiStr.indexOf(",") + 1, end = candiStr.indexOf(")");
        return candiStr.substring(strt, end);
    }  //  end of method strArg0

    public boolean logicalChain(String ego, String alter, ArrayList<Object> pcString, ArrayList<Object> original) {
        //  true = there is a logical chain from ego to alter.
        //  singles & singlesCk look for single occurences of an arg (except ego & alter)
        //  If pcString contains a *-pred, its arg0 is allowed to appear once or more; arg1 is subject to normal rules.
        //  If the logical chain has a gap, and the original has a literal that closes taht gap, then add the
        //  gap-filler to pcString & return true.
        ArrayList<Object> bindings = new ArrayList<Object>(),
                singles = new ArrayList<Object>(),
                singlesCk = new ArrayList<Object>(),
                pcStr = new ArrayList<Object>(pcString);
        bindings.add(ego);
        singlesCk.add(ego);
        singlesCk.add(alter);
        int remaining = pcStr.size() + 1;
        while (pcStr.size() < remaining) {
            remaining = pcStr.size();
            Iterator strIter = pcStr.iterator();
            while (strIter.hasNext()) {
                String lit = (String) strIter.next();
                String arg0 = strArg0(lit);
                String arg1 = strArg1(lit);
                if (lit.substring(0, 1).equals("*")) {
                    singlesCk.add(arg0);
                    bindings.add(arg0);
                }
                if (bindings.contains(arg0) || bindings.contains(arg1)) {
                    bindings.add((bindings.contains(arg0) ? arg1 : arg0));
                    //  arg0 of a *-predicate is counted twice
                    if (singlesCk.contains(arg0)) {
                        singles.remove(arg0);
                    } else {
                        singles.add(arg0);
                        singlesCk.add(arg0);
                    }
                    if (singlesCk.contains(arg1)) {
                        singles.remove(arg1);
                    } else {
                        singles.add(arg1);
                        singlesCk.add(arg1);
                    }
                    strIter.remove();
                }
            }  //  end of loop thru pcStr
        }  //  end of while pcStr.size() < remaining
        if (bindings.contains(alter)
                && pcStr.isEmpty() && singles.isEmpty()) {
            return true;
        }
        if (singles.size() > 0 && repairGap(ego, alter, singles, pcString, original)) {
            return true;
        }
        return false;
    }  //  end of method logicalChain

    public boolean repairGap(String ego, String alter, ArrayList<Object> singles, ArrayList<Object> pcString, ArrayList<Object> original) {
        //	Hypothesis = there are 1 or more singles, causing a break in the logical chain between
        //	Ego & Alter.  Goal = find literals in the original string which can bridge any gaps.
        ArrayList<Object> allArgs = argsIn(pcString);
        while (singles.size() > 0) {
            String solo = (String) singles.remove(0);
            String gapFiller = findGapFiller(solo, original, singles, allArgs);
            if (gapFiller == null) {
                return false;
            }
            int where = -1;
            for (int i = pcString.size() - 1; i >= 0; i--) {
                String lit = (String) pcString.get(i);
                if (lit.indexOf(solo) > -1) {
                    where = i + 1;
                }
            }
            pcString.add(where, gapFiller);
        }
        if (logicalChain(ego, alter, pcString, original)) {
            return true;
        } else {
            return false;
        }
    }  //  end of method repairGap

    public String findGapFiller(String solo, ArrayList<Object> original, ArrayList<Object> singles, ArrayList<Object> allArgs) {
        //  Find a literal in 'original' that has 'solo' as arg1 and arg0 is either in 'singles' or in allArgs.
        //	First, search thru singles

        for (int i = 0; i < singles.size(); i++) {
            String otherArg = (String) singles.get(i);
            for (int j = 0; j < original.size(); j++) {
                String lit = (String) original.get(j);
                if (solo.equals(strArg1(lit)) && otherArg.equals(strArg0(lit))) {
                    singles.remove(otherArg);
                }
                return lit;
            }
        }	//	Second, search thru allArgs
        for (int i = 0; i < allArgs.size(); i++) {
            String otherArg = (String) allArgs.get(i);
            if (!solo.equals(otherArg)) {
                for (int j = 0; j < original.size(); j++) {
                    String lit = (String) original.get(j);
                    if (solo.equals(strArg1(lit)) && otherArg.equals(strArg0(lit))) {
                        return lit;
                    }
                }
            }
        }
        // Report failure
        return null;
    }

    public ArrayList<Object> argsIn(ArrayList<Object> pcString) {
        ArrayList<Object> result = new ArrayList<Object>();
        for (int i = 0; i < pcString.size(); i++) {
            String lit = (String) pcString.get(i);
            String arg0 = strArg0(lit), arg1 = strArg1(lit);
            if (!result.contains(arg0)) {
                result.add(arg0);
            }
            if (!result.contains(arg1)) {
                result.add(arg1);
            }
        }
        return result;
    }  //  end of method argsIn

    public void reduceStepSiblings(ArrayList<Object> pcStrCopy, ArrayList<Object> famPreds, String ego) throws KSInternalErrorException {
        //  Find the pattern which defines a step-sibling, & replace it with a step-sibling PC-Symbol
        if (famPreds.size() < 5) {
            return;    //  minimum 5 literals needed for step-siblings
        }
        ArrayList<Object> candidates = new ArrayList<Object>(), searchSet = new ArrayList<Object>(famPreds);
        String kid1 = "", kid2 = "", par1 = "", par2 = "", par3 = "", par4 = "", poly = "", kid2pred = "";
        StringObj candidate = (StringObj) searchSet.remove(0);
        int typ = famPred(candidate.value);  //  1=P, 2=C, 11=Hu, 12=Wi, 13=Sp
        if (typ > 3) {  //  must start with a birthlink
            famPreds.remove(0);
            return;
        }
        TreeMap bindings = new TreeMap();
        bindings.put(ego, ego);
        for (int i = 0; i < pcStrCopy.indexOf(candidate); i++) {
            postBinding(bindings, (StringObj) pcStrCopy.get(i));
        }
        String[] family = bindFamily(candidate.value);
        par1 = family[0];
        kid1 = family[1];
        if (bindings.get(kid1) == null) {  //  The reference kid must already be known (bound)
            famPreds.remove(0);
            return;
        }
        candidates.add(candidate);
        candidate = findOtherParent(par1, kid1, searchSet);
        if (candidate == null) {  //  this doesn't fit the step-sibling pattern.  Punt.
            famPreds.remove(0);
            return;
        }
        family = bindFamily(candidate.value);
        par2 = family[0];
        candidates.add(candidate);
        candidate = findSpouse3(par1, par2, searchSet);
        if (candidate == null) {
            famPreds.remove(0);
            return;
        }  //  doesn't fit the pattern.
        family = bindFamily(candidate.value);
        if (par1.equals(family[0]) || par2.equals(family[0])) { //  found 2nd spouse of par1 or par2
            par3 = family[1];
            poly = family[0];
        } else if (par1.equals(family[1]) || par2.equals(family[1])) { //  found 2nd spouse of par1 or par2
            par3 = family[0];
            poly = family[1];
        }
        candidates.add(candidate);
        candidate = findSpouse4(par3, poly, searchSet);  //  Looking for par3's other spouse
        if (candidate == null) {
            famPreds.remove(0);
            return;
        }  //  doesn't fit the pattern.
        family = bindFamily(candidate.value);
        if (par3.equals(family[0])) {
            par4 = family[1];
        } else {
            par4 = family[0];
        }
        if (par4.equals(par1) || par4.equals(par2)) {  // Shared parent makes HALF-bro, not STEP-bro
            famPreds.remove(0);
            return;
        }
        candidates.add(candidate);
        candidate = findKid2(par3, par4, kid1, searchSet);  //  In effect, we want ANY kid of par3 & 4
        if (candidate == null) {
            famPreds.remove(0);
            return;
        }  //  doesn't fit the pattern.
        family = bindFamily(candidate.value);
        kid2 = family[1];
        if (bindings.get(kid2) != null) {  //  Alter must be not yet known (bound)
            famPreds.remove(0);
            return;
        }
        kid2pred = kid2pred(candidate.value, 1);
        candidates.add(candidate);
        //  Last literal confirms that kid2 is of par3 & 4.  If missing, activity.
        candidate = confirmKid(par3, par4, kid2, searchSet);
        if (candidate == null) {
            famPreds.remove(0);
            return;
        }  //  doesn't fit the pattern.
        if (kid2pred.equals("Stsib")) {
            kid2pred = kid2pred(candidate.value, 1);
        }
        candidates.add(candidate);
        int where = pcStrCopy.indexOf(candidates.get(0));  //  start of pattern we're reducing
        String newStr = kid2pred + "(" + kid2 + "," + kid1 + ")";
        for (int j = 0; j < candidates.size(); j++) {
            pcStrCopy.remove(pcStrCopy.indexOf(candidates.get(j)));
            famPreds.remove(famPreds.indexOf(candidates.get(j)));
        }
        pcStrCopy.add(where, new StringObj(newStr));
        return;
    }  //  end of method reduceStepSiblings

    public void reduceStepSiblings2(ArrayList<Object> pcStrCopy, ArrayList<Object> famPreds, String ego) throws KSInternalErrorException {
        //  Find the pattern which defines a step-sibling, & replace it with a step-sibling PC-Symbol.
        //  This version is aimed at step-sibling predicates run backwards.
        if (famPreds.size() < 5) {
            return;    //  minimum 5 literals needed for step-siblings
        }
        ArrayList<Object> candidates = new ArrayList<Object>(), searchSet = new ArrayList<Object>(famPreds);
        String kid1 = "", kid2 = "", par1 = "", par2 = "", par3 = "", par4 = "", kid2pred = "";
        StringObj candidate = (StringObj) searchSet.remove(0);
        int typ = famPred(candidate.value);  //  1=P, 2=C, 11=Hu, 12=Wi, 13=Sp
        if (typ > 3) {  //  must start with a birthlink
            famPreds.remove(0);
            return;
        }
        TreeMap bindings = new TreeMap();
        bindings.put(ego, ego);
        for (int i = 0; i < pcStrCopy.indexOf(candidate); i++) {
            postBinding(bindings, (StringObj) pcStrCopy.get(i));
        }
        String[] family = bindFamily(candidate.value);
        par1 = family[0];
        kid1 = family[1];
        if (bindings.get(kid1) == null) {  //  The reference kid must already be known (bound)
            famPreds.remove(0);
            return;
        }
        candidates.add(candidate);
        candidate = findOtherParent(par1, kid1, searchSet);
        if (candidate == null) {  //  Doesn't fit this step-sibling pattern.  Punt.
            famPreds.remove(0);
            return;
        }
        family = bindFamily(candidate.value);
        par2 = family[0];
        candidates.add(candidate);
        candidate = findSpouse3(par1, par2, searchSet);
        if (candidate == null) {
            famPreds.remove(0);
            return;
        }  //  doesn't fit the pattern.
        family = bindFamily(candidate.value);
        if (par1.equals(family[0]) || par2.equals(family[0])) { //  found 2nd spouse of par1 or par2
            par3 = family[1];
        } else if (par1.equals(family[1]) || par2.equals(family[1])) //  found 2nd spouse of par1 or par2
        {
            par3 = family[0];
        }
        candidates.add(candidate);
        candidate = findKid2(par3, par3, kid1, searchSet);  // finds any kid of par3
        if (candidate == null) {
            famPreds.remove(0);
            return;
        }  //  doesn't fit the pattern.
        family = bindFamily(candidate.value);
        kid2 = family[1];
        if (bindings.get(kid2) != null) {  //  Alter must be not yet known (bound)
            famPreds.remove(0);
            return;
        }
        kid2pred = kid2pred(candidate.value, 1);
        candidates.add(candidate);
        candidate = findOtherParent(par3, kid2, searchSet); //  find 2nd parent of kid2
        if (candidate == null) {
            famPreds.remove(0);
            return;
        }  //  doesn't fit the pattern.
        family = bindFamily(candidate.value);
        par4 = family[0];
        if (par4.equals(par1) || par4.equals(par2)) {  // Shared parent makes HALF-bro, not STEP-bro
            famPreds.remove(0);
            return;
        }
        if (kid2pred.equals("Stsib")) {
            kid2pred = kid2pred(candidate.value, 1);
        }
        candidates.add(candidate);
        //  Last literal confirms that par1 & par2 are married.  Expected, but optional.
        candidate = confirmCouple(par1, par2, searchSet);
        if (candidate != null) {
            candidates.add(candidate);  //  consume if present
        }
        int where = pcStrCopy.indexOf(candidates.get(0));  //  start of pattern we're reducing
        String newStr = kid2pred + "(" + kid2 + "," + kid1 + ")";
        for (int j = 0; j < candidates.size(); j++) {
            pcStrCopy.remove(pcStrCopy.indexOf(candidates.get(j)));
            famPreds.remove(famPreds.indexOf(candidates.get(j)));
        }
        pcStrCopy.add(where, new StringObj(newStr));
        return;
    }  //  end of method reduceStepSiblings2

    public void reduceStepParents(ArrayList<Object> pcStrCopy, ArrayList<Object> famPreds, String ego) throws KSInternalErrorException {
        if (famPreds.size() < 3) {
            return;    //  minimum 3 literals needed for step-parents
        }
        ArrayList<Object> candidates = new ArrayList<Object>(), searchSet = new ArrayList<Object>(famPreds);
        String kid1 = "", par1 = "", par2 = "", sps = "", spsPred = "";
        StringObj candidate = (StringObj) searchSet.remove(0);
        int typ = famPred(candidate.value);  //  1=P, 2=C, 11=Hu, 12=Wi, 13=Sp
        if (typ > 3) {  //  must start with a birthlink
            famPreds.remove(0);
            return;
        }
        TreeMap bindings = new TreeMap();
        bindings.put(ego, ego);
        for (int i = 0; i < pcStrCopy.indexOf(candidate); i++) {
            postBinding(bindings, (StringObj) pcStrCopy.get(i));
        }
        String[] family = bindFamily(candidate.value);
        par1 = family[0];
        kid1 = family[1];
        if (bindings.get(kid1) == null) {  //  The reference kid must already be known (bound)
            famPreds.remove(0);
            return;
        }
        candidates.add(candidate);
        candidate = findOtherParent(par1, kid1, searchSet);
        if (candidate == null) {  //  this doesn't fit the step-parent pattern.  Punt.
            famPreds.remove(0);
            return;
        }
        family = bindFamily(candidate.value);
        par2 = family[0];
        //  Got the kid and his 2 parents
        candidates.add(candidate);
        candidate = findSpouse3(par1, par2, searchSet);
        if (candidate == null) {
            famPreds.remove(0);
            return;
        }  //  doesn't fit the pattern.
        family = bindFamily(candidate.value);
        if (par1.equals(family[0]) || par2.equals(family[0])) {
            sps = family[1];
        } else {
            sps = family[0];
        }
        if (bindings.get(sps) != null) {  //  Alter must be not yet known (bound)
            famPreds.remove(0);
            return;
        }
        spsPred = stepPred(candidate.value);
        candidates.add(candidate);
        // sometimes an extra lit explicitly marries par1 & 2;  optional -- consume if present
        candidate = confirmCouple(par1, par2, searchSet);
        if (candidate != null) {
            candidates.add(candidate);
        }
        int where = pcStrCopy.indexOf(candidates.get(0));  //  start of pattern we're reducing
        String newStr = spsPred + "(" + sps + "," + kid1 + ")";
        for (int j = 0; j < candidates.size(); j++) {
            pcStrCopy.remove(pcStrCopy.indexOf(candidates.get(j)));
            famPreds.remove(famPreds.indexOf(candidates.get(j)));
        }
        pcStrCopy.add(where, new StringObj(newStr));
        return;
    }  //  end of method reduceStepParents

    public void reduceStepChildren(ArrayList<Object> pcStrCopy, ArrayList<Object> famPreds, String egoNum) throws KSInternalErrorException {
        //	Look for Step Children expressed with Std Macro
        if (famPreds.size() < 3) {
            return;    //  minimum 3 literals needed for step-kids
        }
        ArrayList<Object> candidates = new ArrayList<Object>(), searchSet = new ArrayList<Object>(famPreds);
        String ego = "", egoSp = "", kid = "", sps1 = "", sps2 = "", sps3 = "", kidPred;
        StringObj candidate = (StringObj) searchSet.remove(0);
        int typ = famPred(candidate.value);  //  1=P, 2=C, 11=Hu, 12=Wi, 13=Sp
        if (typ < 3 || typ > 13) {  //  must start with a spousal link
            famPreds.remove(0);
            return;
        }
        TreeMap bindings = new TreeMap();
        bindings.put(egoNum, egoNum);
        for (int i = 0; i < pcStrCopy.indexOf(candidate); i++) {
            postBinding(bindings, (StringObj) pcStrCopy.get(i));
        }
        String[] family = bindFamily(candidate.value);
        sps1 = family[0];
        sps2 = family[1];
        candidates.add(candidate);
        candidate = findSpouse3(sps1, sps2, searchSet);
        if (candidate == null) {
            famPreds.remove(0);
            return;
        }  //  doesn't fit the pattern.
        family = bindFamily(candidate.value);
        //  2nd Lit:  Looking for another spouse of sps1 or sps2
        if (sps1.equals(family[0])) { //  found 2nd spouse of sps1
            sps3 = family[1];
            ego = sps2;
            egoSp = sps1;
        } else if (sps2.equals(family[0])) { // found 2nd spouse of sps2
            sps3 = family[1];
            ego = sps1;
            egoSp = sps2;
        } else if (sps1.equals(family[1])) { //  found 2nd spouse of sps1
            sps3 = family[0];
            ego = sps2;
            egoSp = sps1;
        } else if (sps2.equals(family[1])) { // found 2nd spouse of sps2
            sps3 = family[0];
            ego = sps1;
            egoSp = sps2;
        } //  3rd Lit: We've found all spouses; now find kid
        if (bindings.get(ego) == null) {  //  The reference spouse must already be known (bound)
            famPreds.remove(0);
            return;
        }
        candidates.add(candidate);
        ArrayList<Object> foundSet = new ArrayList<Object>();
        kid = findKidOf2Pars(sps3, egoSp, searchSet, foundSet);  //  find kid belonging to both parents
        if (kid == null) {
            famPreds.remove(0);
            return;
        }  //  doesn't fit the pattern.
        if (bindings.get(kid) != null) {  //  Kid must be a previously-unbound person
            famPreds.remove(0);
            return;
        }
        candidates.addAll(foundSet);
        candidate = (StringObj) foundSet.get(0);
        kidPred = stepPred(candidate.value);
        if (kidPred.equals("Stc")) {
            kidPred = stepPred(((StringObj) foundSet.get(1)).value);
        }
        //  We have all 4 players now.  But there MIGHT be a 4th lit (birth-type)
        searchSet.removeAll(foundSet);
        candidate = confirmKid(sps3, egoSp, kid, searchSet);
        if (candidate != null) {
            candidates.add(candidate);  //  consume if present
        }
        int where = pcStrCopy.indexOf(candidates.get(0));  //  start of pattern we're reducing
        String newStr = kidPred + "(" + kid + "," + ego + ")";
        for (int j = 0; j < candidates.size(); j++) {
            pcStrCopy.remove(pcStrCopy.indexOf(candidates.get(j)));
            famPreds.remove(famPreds.indexOf(candidates.get(j)));
        }
        pcStrCopy.add(where, new StringObj(newStr));
        return;
    }  //  end of method reduceStepChildren

    public void reduceStepChildren2(ArrayList<Object> pcStrCopy, ArrayList<Object> famPreds, String egoNum) throws KSInternalErrorException {
        //	Look for Step Children expressed with reversed Step Parent Macro
        if (famPreds.size() < 3) {
            return;    //  minimum 3 literals needed for step-kids
        }
        ArrayList<Object> candidates = new ArrayList<Object>(), searchSet = new ArrayList<Object>(famPreds);
        String ego = "", egoSp = "", kid = "", sps1 = "", sps2 = "", sps3 = "", kidPred;
        StringObj candidate = (StringObj) searchSet.remove(0);
        int typ = famPred(candidate.value);  //  1=P, 2=C, 11=Hu, 12=Wi, 13=Sp
        if (typ < 3 || typ > 13) {  //  must start with a spousal link
            famPreds.remove(0);
            return;
        }
        TreeMap bindings = new TreeMap();
        bindings.put(egoNum, egoNum);
        for (int i = 0; i < pcStrCopy.indexOf(candidate); i++) {
            postBinding(bindings, (StringObj) pcStrCopy.get(i));
        }
        String[] family = bindFamily(candidate.value);
        sps1 = family[0];
        sps2 = family[1];
        candidates.add(candidate);
        candidate = findKid2(sps1, sps2, sps1, searchSet);  //  using sps1 as 'kid' = accept ANY kid
        if (candidate == null) {
            famPreds.remove(0);
            return;
        }  //  doesn't fit the pattern.
        family = bindFamily(candidate.value);
        kid = family[1];
        if (bindings.get(kid) != null) {  //  Kid must be a previously-unbound person
            famPreds.remove(0);
            return;
        }
        kidPred = stepPred(candidate.value);
        //  2nd Lit declares the step-child as descendent of ego's spouse (not ego)
        if (sps1.equals(family[0])) { // sps1 is the multi-marriage spouse
            ego = sps2;
            egoSp = sps1;
        } else if (sps2.equals(family[0])) { // sps2 is the multi-marriage spouse
            ego = sps1;
            egoSp = sps2;
        } //  3rd Lit: Should identify sps3 as kid's other parent
        if (bindings.get(ego) == null) {  //  The reference spouse must already be known (bound)
            famPreds.remove(0);
            return;
        }
        candidates.add(candidate);
        candidate = findOtherParent(egoSp, kid, searchSet);
        if (candidate == null) {
            famPreds.remove(0);
            return;
        }  //  doesn't fit the pattern.
        family = bindFamily(candidate.value);  //  family[0] = parent.  family[1] = kid
        sps3 = family[0];
        if (kidPred.equals("Stc")) {
            kidPred = stepPred(candidate.value);
        }
        candidates.add(candidate);
        //  We have all 4 players now.  But there MIGHT be a 4th lit (birth-type)
        candidate = confirmKid(sps3, egoSp, kid, searchSet);
        if (candidate != null) {
            candidates.add(candidate);  //  consume if present
        }
        int where = pcStrCopy.indexOf(candidates.get(0));  //  start of pattern we're reducing
        String newStr = kidPred + "(" + kid + "," + ego + ")";
        for (int j = 0; j < candidates.size(); j++) {
            pcStrCopy.remove(pcStrCopy.indexOf(candidates.get(j)));
            famPreds.remove(famPreds.indexOf(candidates.get(j)));
        }
        pcStrCopy.add(where, new StringObj(newStr));
        return;
    }  //  end of method reduceStepChildren2

    public void reduceHalfSiblings1(ArrayList<Object> pcStrCopy, ArrayList<Object> famPreds, String ego) throws KSInternalErrorException {
        if (famPreds.size() < 4) {
            return;    //  minimum 4 literals needed for half-siblings expressed this way
        }
        ArrayList<Object> candidates = new ArrayList<Object>(), searchSet = new ArrayList<Object>(famPreds);
        String kid = "", kid1 = "", kid2 = "", sharedPar = "", par1 = "", par2 = "", par3 = "", kid2pred = "";
        StringObj candidate = (StringObj) searchSet.remove(0);
        int typ = famPred(candidate.value);  //  1=P, 2=C, 11=Hu, 12=Wi, 13=Sp
        if (typ > 3) {  //  must start with a birthlink
            famPreds.remove(0);
            return;
        }
        TreeMap bindings = new TreeMap();
        bindings.put(ego, ego);
        for (int i = 0; i < pcStrCopy.indexOf(candidate); i++) {
            postBinding(bindings, (StringObj) pcStrCopy.get(i));
        }
        String[] family = bindFamily(candidate.value);  //  0 = parent, 1 = kid
        par1 = family[0];
        kid1 = family[1];
        if (bindings.get(kid1) == null) {  //  The reference kid must already be known (bound)
            famPreds.remove(0);
            return;
        }
        candidates.add(candidate);
        candidate = findOtherParent(par1, kid1, searchSet);
        if (candidate == null) {
            famPreds.remove(0);
            return;
        }  //  doesn't fit the pattern.
        family = bindFamily(candidate.value);
        par2 = family[0];
        candidates.add(candidate);
        candidate = findKid2(par1, par2, kid1, searchSet);
        if (candidate == null) {
            famPreds.remove(0);
            return;
        }  //  doesn't fit the pattern.
        family = bindFamily(candidate.value);
        kid2 = family[1];
        if (bindings.get(kid2) != null) {  //  Alter must be not yet known (bound)
            famPreds.remove(0);
            return;
        }
        sharedPar = family[0];
        kid2pred = kid2pred(candidate.value, 2);
        candidates.add(candidate);
        candidate = findOtherParent(sharedPar, kid2, searchSet);  // look for kid2's other parent
        if (candidate == null) {
            famPreds.remove(0);
            return;
        }  //  doesn't fit the pattern.
        family = bindFamily(candidate.value);
        par3 = family[0];
        candidates.add(candidate);
        //  There MAY be a 5th lit confirming the marriage of 1 & 2.
        candidate = confirmCouple(par1, par2, searchSet);
        if (candidate != null) {
            candidates.add(candidate);  //  consume if present
        }		// ... or of the other couple
        candidate = confirmCouple(sharedPar, par3, searchSet);
        if (candidate != null) {
            candidates.add(candidate);  //  consume if present
        }
        int where = pcStrCopy.indexOf(candidates.get(0));  //  start of pattern we're reducing
        String newStr = kid2pred + "(" + kid2 + "," + kid1 + ")";
        for (int j = 0; j < candidates.size(); j++) {
            pcStrCopy.remove(pcStrCopy.indexOf(candidates.get(j)));
            famPreds.remove(famPreds.indexOf(candidates.get(j)));
        }
        pcStrCopy.add(where, new StringObj(newStr));
        return;
    }  //  end of method reduceHalfSiblings1

    public void reduceHalfSiblings2(ArrayList<Object> pcStrCopy, ArrayList<Object> famPreds, String ego) throws KSInternalErrorException {

        if (famPreds.size() < 2) {
            return;    //  2 literals needed for half--siblings expressed this way
        }
        ArrayList<Object> candidates = new ArrayList<Object>();
        String kid = "", kid1 = "", kid2 = "", par = "", par1 = "", kid2pred = "";
        Iterator famIter = famPreds.iterator();
        StringObj candidate = (StringObj) famIter.next();
        int typ = famPred(candidate.value);  //  1=P, 2=C, 11=Hu, 12=Wi, 13=Sp
        if (typ > 3) {  //  must start with a birthlink
            famPreds.remove(0);
            return;
        }
        TreeMap bindings = new TreeMap();
        bindings.put(ego, ego);
        for (int i = 0; i < pcStrCopy.indexOf(candidate); i++) {
            postBinding(bindings, (StringObj) pcStrCopy.get(i));
        }
        String[] family = bindFamily(candidate.value);  //  0 = parent, 1 = kid
        par1 = family[0];
        kid1 = family[1];
        if (bindings.get(kid1) == null) {  //  The reference kid must already be known (bound)
            famPreds.remove(0);
            return;
        }
        candidates.add(candidate);
        candidate = (StringObj) famIter.next();
        //  2nd Lit:  We have 1 parent/child combo in hand; expect a 2nd.
        family = bindFamily(candidate.value);
        par = family[0];
        kid = family[1];
        if (par.equals(par1) && !kid.equals(kid1)
                && bindings.get(kid2) == null) {  //  found second kid, not previously bound
            kid2 = kid;
            kid2pred = kid2pred(candidate.value, 2);
            candidates.add(candidate);
        } else {  //  this doesn't fit the half-sibling pattern.  Punt.
            famPreds.remove(0);
            return;
        }  //  Completed the pattern for Half Sibling.  Make reduction and return.
        int where = pcStrCopy.indexOf(candidates.get(0));  //  start of pattern we're reducing
        String newStr = kid2pred + "(" + kid2 + "," + kid1 + ")";
        for (int j = 0; j < candidates.size(); j++) {
            pcStrCopy.remove(pcStrCopy.indexOf(candidates.get(j)));
            famPreds.remove(famPreds.indexOf(candidates.get(j)));
        }
        pcStrCopy.add(where, new StringObj(newStr));
        return;
    }  //  end of method reduceHalfSiblings2

    public void eliminateReflections(ArrayList<Object> pcStrCopy, ArrayList<Object> preds) throws KSInternalErrorException {
        //  See if the reductions above have produced any reflective pairs of predicates (useless)
        //  or duplicate literals (redundant).
        while (preds.size() > 1) {
            StringObj candidate = (StringObj) preds.remove(0), other;
            int typ0 = famPred(candidate), typ1;
            if (typ0 < 49) {
                String[] candArgs = bindFamily(candidate.value), otherArgs;
                Iterator iter = preds.iterator();
                while (iter.hasNext()) {
                    other = (StringObj) iter.next();
                    typ1 = famPred(other);
                    otherArgs = bindFamily(other.value);
                    if (Math.abs(typ0 - typ1) < 4 //  same kind of predicate, e.g. Bro & Sis or Fa & So
                            && (candArgs[0].equals(otherArgs[1])
                            && candArgs[1].equals(otherArgs[0]))) { // reversed args, same predicate type
                        iter.remove();
                        pcStrCopy.remove(other);
                        pcStrCopy.remove(candidate);  //  eliminate both of them
                    } else if (Math.abs(typ0 - typ1) < 4
                            && candArgs[0].equals(otherArgs[0])
                            && candArgs[1].equals(otherArgs[1])) {  // same args
                        iter.remove();
                        pcStrCopy.remove(other);
                        // if same pred & same args, other's a duplicate; keep candidate
                        if (typ0 != typ1) {
                            pcStrCopy.remove(candidate);
                        }
                    }  //  end of found-a-reflection
                }  //  end of inner while loop
            }  //  end of it's not a *-pred
        }  //  end of outer while loop
    }  //  end of method eliminateReflections

    public boolean isGenericPred(String pred) {
        if (pred.equals("P") || pred.equals("C") || pred.equals("Stp") || pred.equals("Stc")
                || pred.equals("Stsib") || pred.equals("Sib") || pred.equals("Hsib")) {
            return true;
        } else {
            return false;
        }
    }  //  end of method isGenericPred

    public void reduceBroSisEtc(ArrayList<Object> pcStrCopy, ArrayList<Object> sibPreds, ArrayList<Object> pcString, String ego)
            throws KSInternalErrorException {
        //  See if the reductions above have produced any silly sequences like "BroSis"
        if (sibPreds.size() < 2) {
            return;    //  2 literals needed
        }
        ArrayList<Object> candidates = new ArrayList<Object>(), printOrig = new ArrayList<Object>(pcStrCopy);
        StringObj candidate = (StringObj) sibPreds.remove(0);
        int typ0 = famPred(candidate), typ1;
        if (typ0 < 21 || typ0 > 49) {
            return;  //  must start with a sibling predicate
        }
        String[] sibs = bindFamily(candidate.value);  //  0 = linker, 1 = sib1
        String linker = sibs[0], sib1 = sibs[1], sib2 = "";
        TreeMap bindings = new TreeMap();
        bindings.put(ego, ego);
        for (int i = 0; i < pcStrCopy.indexOf(candidate); i++) {
            postBinding(bindings, (StringObj) pcStrCopy.get(i));
        }
        if (bindings.get(sib1) == null) {  //  The reference kid must already be known (bound)
            return;
        }
        candidates.add(candidate);
        Iterator sibIter = sibPreds.iterator();
        boolean foundOne = false;
        if (typ0 < 29) {  //  We have a FullSibling pair in hand; look for any pred except a child.
            while (sibIter.hasNext() && !foundOne) {
                candidate = (StringObj) sibIter.next();
                sibs = bindFamily(candidate.value);
                if (linker.equals(sibs[1]) && !sib1.equals(sibs[0])) {
                    foundOne = true;
                    sib2 = sibs[0];
                    candidates.add(candidate);
                }
            }
        } else {  //  We have a Half- or Step-Sibling; only a FullSibling will work
            while (sibIter.hasNext() && !foundOne) {
                candidate = (StringObj) sibIter.next();
                typ1 = famPred(candidate);
                sibs = bindFamily(candidate.value);
                if (typ1 < 29 && typ1 > 20 && linker.equals(sibs[1]) && !sib1.equals(sibs[0])) {
                    foundOne = true;
                    sib2 = sibs[0];
                    candidates.add(candidate);
                }
            }
        }
        if (!foundOne) {
            return;
        }
        //  found a full-sibling or parent predicate
        if (linkerHasOtherRoles(linker, pcStrCopy, candidates)) {
            return;
        }
        //  and the linking kin has no other role in this String.  Bingo!
        int where = pcStrCopy.indexOf(candidates.get(0));  //  start of pattern we're reducing
        String combPred = combineSibPred(candidates, pcString);
        if (combPred == null) {
            return;
        }
        String newStr = combPred + "(" + sib2 + "," + sib1 + ")";
        for (int j = 0; j < candidates.size(); j++) {
            pcStrCopy.remove(pcStrCopy.indexOf(candidates.get(j)));
        }
        pcStrCopy.add(where, new StringObj(newStr));
        return;
    }  //  end of method reduceBroSisEtc

    public void reduceIndirectRefs(ArrayList<Object> pcStrCopy, ArrayList<Object> preds) throws KSInternalErrorException {
        //  Find any indirect references, like "FaWi"  which must mean "Mo" 'cuz we've reduced StepParent already
        while (preds.size() > 1) {
            StringObj candidate = (StringObj) preds.remove(0), other;
            int typ0 = famPred(candidate), typ1, pos0 = pcStrCopy.indexOf(candidate), pos1;
            String[] candArgs = bindFamily(candidate.value), otherArgs;
            Iterator iter = preds.iterator();
            while (iter.hasNext()) {
                other = (StringObj) iter.next();
                typ1 = famPred(other);
                pos1 = pcStrCopy.indexOf(other);
                //  bindFam => [0] = parent.  [1] = kid
                //			OR [0] = husband. [1] = wife (if genders known)
                //			OR [0] = arg0.	  [1] = arg1.
                otherArgs = bindFamily(other.value);
                if (typ0 == 1) {
                    String pred0 = candidate.value.substring(0, candidate.value.indexOf("("));
                    if ((pred0.equals("Fa") || pred0.equals("Mo") || pred0.equals("P"))
                            && (typ1 > 10) && (typ1 < 14)) {  //  only natural parents' spouses
                        if (candArgs[0].equals(otherArgs[1]) || candArgs[0].equals(otherArgs[0])) {
                            //  this is the spouse of parent
                            String newPred = "P";
                            if (typ1 == 11) {
                                newPred = "Fa";
                            } else if (typ1 == 12) {
                                newPred = "Mo";
                            } else if (pred0.equals("Fa")) {
                                newPred = "Mo";
                            } else if (pred0.equals("Mo")) {
                                newPred = "Fa";
                            }
                            newPred += "(" + (candArgs[0].equals(otherArgs[1]) ? otherArgs[0] : otherArgs[1])
                                    + "," + candArgs[1] + ")";
                            pcStrCopy.remove(pos1);
                            pcStrCopy.set(pos0, new StringObj(newPred));
                            iter.remove();
                        }
                    } else if ((pred0.equals("Fa") || pred0.equals("Mo") || pred0.equals("P"))
                            && (typ1 == 2)) {  //  a natural parent's child == sibling
                        if (candArgs[0].equals(otherArgs[0])) { //  parent matches
                            String newPred = "Sib";
                            String otherPred = other.value.substring(0, other.value.indexOf("("));
                            if (otherPred.equals("So")) {
                                newPred = "Bro";
                            } else if (otherPred.equals("Da")) {
                                newPred = "Sis";
                            }
                            newPred += "(" + otherArgs[1] + "," + candArgs[1] + ")";
                            pcStrCopy.remove(pos1);
                            pcStrCopy.set(pos0, new StringObj(newPred));
                            iter.remove();
                        }
                    }
                } else if (typ0 == 2) {
                    String pred0 = candidate.value.substring(0, candidate.value.indexOf("("));
                    if ((pred0.equals("So") || pred0.equals("Da") || pred0.equals("C"))
                            && (typ1 > 20) && (typ1 < 24)) {  //  a natural child's full sibling
                        if (candArgs[1].equals(otherArgs[1])) { // this is the sibling
                            String newPred = "C";
                            if (typ1 == 21) {
                                newPred = "So";
                            } else if (typ1 == 22) {
                                newPred = "Da";
                            }
                            newPred += "(" + otherArgs[0] + "," + candArgs[0] + ")";
                            pcStrCopy.remove(pos1);
                            pcStrCopy.set(pos0, new StringObj(newPred));
                            iter.remove();
                        }
                    } else if ((pred0.equals("So") || pred0.equals("Da") || pred0.equals("C"))
                            && (typ1 == 1)) {  //  a child's parent == spouse
                        if (candArgs[1].equals(otherArgs[1])) {  //  the kid matches
                            String newPred = "Sp";
                            String otherPred = other.value.substring(0, other.value.indexOf("("));
                            if (otherPred.equals("Fa")) {
                                newPred = "Hu";
                            } else if (otherPred.equals("Mo")) {
                                newPred = "Wi";
                            }
                            newPred += "(" + otherArgs[0] + "," + candArgs[0] + ")";
                            pcStrCopy.remove(pos1);
                            pcStrCopy.set(pos0, new StringObj(newPred));
                            iter.remove();
                        }
                    }
                } else if (typ0 > 10 && typ0 < 14 && typ1 == 2) {  //  a spouse's child (stepchild was already reduced)
                    String pred1 = other.value.substring(0, other.value.indexOf("("));
                    if (pred1.equals("So") || pred1.equals("Da") || pred1.equals("C")) {
                        if (candArgs[0].equals(otherArgs[0]) || candArgs[1].equals(otherArgs[0])) {
                            // this is the spouse's child
                            pred1 += "(" + otherArgs[1] + ","
                                    + (candArgs[0].equals(otherArgs[0]) ? candArgs[1] : candArgs[0]) + ")";
                            pcStrCopy.remove(pos1);
                            pcStrCopy.set(pos0, new StringObj(pred1));
                            iter.remove();
                        }
                    }
                }
            }  //  end of while iter-hasNext
        }  // end of while (preds.size() > 1)
    }  //  end of method reduceIndirectRefs

    public boolean linkerHasOtherRoles(String linker, ArrayList<Object> pcStrCopy, ArrayList<Object> candidates) throws KSInternalErrorException {
        for (int i = 0; i < pcStrCopy.size(); i++) {
            StringObj lit = (StringObj) pcStrCopy.get(i);
            if (!candidates.contains(lit)) {
                String[] args = bindFamily(lit.value);
                if (linker.equals(args[0]) || linker.equals(args[1])) {
                    return true;
                }
            }
        }  //  end of loop thru StringObjs in pcStrCopy
        return false;
    }  //  end of method linkerHasOtherRoles

    public String combineSibPred(ArrayList<Object> candidates, ArrayList<Object> pcString) throws KSInternalErrorException {
        String candiStr = ((StringObj) candidates.get(0)).value;
        int where = candiStr.indexOf("("), typ1 = famPred(candiStr),
                comma = candiStr.indexOf(",");
        String pred1 = candiStr.substring(0, where),
                ego = candiStr.substring(comma + 1, candiStr.length() - 1);
        candiStr = ((StringObj) candidates.get(1)).value;
        where = candiStr.indexOf("(");
        String pred2 = candiStr.substring(0, where);
        if (typ1 < 29) {
            return pred2;
        }
        int typ2 = famPred(candiStr);
        if (typ2 > 20 && typ2 < 30) {  //  simple sibling pred
            if (typ1 < 39) {
                return "H" + pred2.toLowerCase();
            } else {
                return "St" + pred2.toLowerCase();
            }
        }
        //  OK, got a parent of a half- or step-sibling or a 31-43 with another 31-43
        if (typ1 < 39) {  //  a half-sibling
            if (typ2 < 3) {  //  parent of a half-sibling
                String[] parents = findParents(ego, pcString);  //  0=mom, 1=dad
                where = candiStr.indexOf("(");
                comma = candiStr.indexOf(",");
                String halfPar = candiStr.substring(where + 1, comma);
                if (halfPar.equals(parents[0]) || halfPar.equals(parents[1])) {
                    return pred2;
                }
                return "St" + pred2.toLowerCase();
            } else {
                return null;
            }
        } else {  //  a step-sibling
            if (typ2 < 3) {  //  parent of a step-sibling
                String egoStepPar = findStepPar(ego, pcString);
                String[] family = bindFamily(candiStr);
                String altPar = family[0];
                if (egoStepPar.equals(altPar)) {
                    return "St" + pred2.toLowerCase();
                }
                return null;
            } else {
                return null;
            }
        }
    }  //  end of method combineSibPred

    public String[] findParents(String ego, ArrayList<Object> pcString) throws KSInternalErrorException {
        //  Return {mom, dad}
        String[] answer = {"", ""}, args;
        String mom = "", dad = "", par1 = "", par2 = "", next, pred;
        for (int i = 0; i < pcString.size(); i++) {
            next = (String) pcString.get(i);
            int typ = famPred(next);
            if (typ < 3) {
                args = bindFamily(next);  //  args[0] = parent.  args[1] = kid
                if (ego.equals(args[1])) {
                    pred = next.substring(0, next.indexOf("("));
                    if (pred.equals("Mo")) {
                        mom = args[0];
                    } else if (pred.equals("Fa")) {
                        dad = args[0];
                    } else if (par1.equals("")) {
                        par1 = args[0];
                    } else {
                        par2 = args[0];
                    }
                }  //  end of found ego's parent
            }  //  end of it's a parent/child pred
        }
        if (!mom.equals("")) {
            answer[0] = mom;
        }
        if (!dad.equals("")) {
            answer[1] = dad;
        }
        if (answer[0].equals("")) {
            answer[0] = par1;
        }
        if (answer[1].equals("")) {
            answer[1] = (par2.equals("") ? par1 : par2);
        }
        if (answer[0].equals("") || answer[1].equals("")) {
            throw new KSInternalErrorException("Failed to find both parents in CB:findParents");
        }
        return answer;
    }  //  end of method findParents

    public String findStepPar(String ego, ArrayList<Object> pcString) throws KSInternalErrorException {
        // find someone married to one of ego's parents
        String[] parents = findParents(ego, pcString);
        for (int i = 0; i < pcString.size(); i++) {
            String next = (String) pcString.get(i);
            int typ = famPred(next);
            if (typ < 19 && typ > 9) {
                String[] args = bindFamily(next);
                if (args[0].equals(parents[0]) && !args[1].equals(parents[1])) {
                    return args[1];
                }
                if (args[0].equals(parents[1]) && !args[1].equals(parents[0])) {
                    return args[1];
                }
                if (args[1].equals(parents[0]) && !args[0].equals(parents[1])) {
                    return args[0];
                }
                if (args[1].equals(parents[1]) && !args[0].equals(parents[0])) {
                    return args[0];
                }
            }  //  end of found a spousal pred
        }  //  end of loop thru pcString
        return null;
    }  //  end of method findStepPar

    
    public static String sumStr(ArrayList<Object> pcStr) {
        //  Make a PC-String with no args, just the Symbols
        String sumStr = "", piece;
        int where;
        for (int i = 0; i < pcStr.size(); i++) {
            piece = (String) pcStr.get(i);
            where = piece.indexOf("(");
            sumStr += piece.substring(0, where);
        }
        return sumStr;
    }  //  end of method sumStr

    public static String structStr(String pcStr) throws KSInternalErrorException {
        //  Makes structural equivalent of expCB pcStrings and baseCB sigStrings
        //  Components of sigStrings, when generified, could duplicate; hence the check
if (pcStr == null) Context.breakpoint();

        char ch;
        char[] symbol = "      ".toCharArray();  //  6 blanks
        symbol[0] = pcStr.charAt(0);
        if ((!Character.isUpperCase(symbol[0])) && (symbol[0] != '*')) //  All symbols begin with cap or asterisk.
        {
            throw new KSInternalErrorException("PC String started with non-capital letter");
        }
        String result = "";
        ArrayList<Object> resultSet = new ArrayList<Object>();
        int curr = 1;
        for (int i = 1; i < pcStr.length(); i++) {
            ch = pcStr.charAt(i);
            if (Character.isUpperCase(ch) || (ch == '*') || (ch == '_')) {
                result += generify((new String(symbol)).trim());
                symbol = "      ".toCharArray();
                curr = 0;
            }  //  end of processing completed symbol
            if (ch == '_') {
                if (!resultSet.contains(result)) {
                    if (resultSet.size() > 0) {
                        resultSet.add("_");
                    }
                    resultSet.add(result);
                }
                result = "";
                if (i < pcStr.length() - 1) {  //  more string left
                    symbol[curr++] = pcStr.charAt(++i);
                }
            } else {
                symbol[curr++] = ch;
            }
        }  //  end of loop thru chars in pcStr
        result += generify((new String(symbol)).trim());
        if (!resultSet.contains(result)) {
            if (resultSet.size() > 0) {
                resultSet.add("_");
            }
            resultSet.add(result);
        }
        result = "";
        for (int i = 0; i < resultSet.size(); i++) {
            result += resultSet.get(i);
        }
        return result;
    }  //  end of method structStr

    public static String generify(String symb) throws KSInternalErrorException {
        if (symb.equals("Fa") || symb.equals("Mo") || symb.equals("P")) {
            return "P";
        }
        if (symb.equals("So") || symb.equals("Da") || symb.equals("C")) {
            return "C";
        }
        if (symb.equals("Hu") || symb.equals("Wi") || symb.equals("Sp")) {
            return "Sp";
        }
        if (symb.equals("Bro") || symb.equals("Sis") || symb.equals("Sib")) {
            return "Sib";
        }
        if (symb.equals("Hbro") || symb.equals("Hsis") || symb.equals("Hsib")) {
            return "Hsib";
        }
        if (symb.equals("Stbro") || symb.equals("Stsis") || symb.equals("Stsib")) {
            return "Stsib";
        }
        if (symb.equals("Stfa") || symb.equals("Stmo") || symb.equals("Stp")) {
            return "Stp";
        }
        if (symb.equals("Stso") || symb.equals("Stda") || symb.equals("Stc")) {
            return "Stc";
        }
        if (symb.indexOf("*") == 0) {
            return "*";
        }
        if (symb.indexOf("_") == 0) {
            return "_";
        }
        if (symb.equals("None")) {
            return "None";
        }
        throw new KSInternalErrorException("Unknown symbol encountered: " + symb);
    }  //  end of method generify

    /** Return the next logical literal in <code>bodyCopy</code>; used in Example-Generation.
    When called repeatedly on a list of literals, pop searches out the logical chain from Ego to Alter.
    That NORMALLY means taking the literals from left to right -- but not always.  Constraints do not
    define a path between objects; they are filtered out.  Star-props CAN define a path between
    2 variables, but only if there is no genetic path (non-genetic paths are a last resort).
    <p>
    NOTE:  Pop will attempt to process all the literals in bodyCopy & starStuff, even if they're not all
    needed to reach Alter.  If we can't process them all, but we DID reach Alter, fine.  However, a superfluous
    literal with unsatisfiable conditions can still cause an activity condition -- even though a path
    to Alter was found BEFORE the activity occurred.

    @param	bodyCopy		an ArrayList<Object> of literals, usually a copy of the <code>body</code>.
    @param	starStuff		an ArrayList<Object> of *-props; MUST be from a COPY of the original list 'starStuff'
    @param	bindings		a TreeMap recording all the bindings of Individuals to Variables.
    @param	kinTerm			the kinship term we're trying to illustrate.

    @throws		KSNoChainOfRelations2Alter	if there is not a path from Ego to Alter defined in the literals.
     */
    public Literal pop(ArrayList<Object> bodyCopy, ArrayList<Object> starStuff, TreeMap bindings, String kinTerm)
            throws KSNoChainOfRelations2Alter {
        Literal lit, subLit;
        Argument arg;
        Iterator iter = bodyCopy.iterator();
        while (iter.hasNext()) {
            lit = (Literal) iter.next();
            if ((lit.predicate.name.equals("male")) || (lit.predicate.name.equals("female"))
                    || (lit.predicate.name.equals("elder")) || (lit.predicate.name.equals("younger"))
                    || (lit.predicate.name.equals("dead")) || (lit.predicate.name.equals("equal"))
                    || (lit.predicate.name.equals("gender")) || (lit.predicate.name.equals("allowCreation"))
                    || ((lit.predicate.name.equals("divorced")) && (lit.args.size() == 1))
                    || (lit.predicate.category instanceof MathCategory)
                    || (lit.predicate.name.substring(0, 1).equals("*"))) {
                iter.remove();  //  gender, age, star, and equality constraints were already gathered
            } else {
                for (int i = 0; i < lit.args.size(); i++) {
                    arg = (Argument) lit.args.get(i);
                    if ((arg instanceof Variable) && (bindings.containsKey(arg.argName))) {
                        iter.remove();
                        return lit;
                    } //  end of if-this-variable-is-bound
                    else if (arg.argType.equals("Literal")) {
                        subLit = subPop((Literal) arg, bindings);
                        if (subLit != null) {
                            iter.remove();
                            if (!lit.predicate.name.equals("not")) {
                                return lit;  // constraints were already gathered
                            } else {
                                return null;
                            }
                        }  //  end of if-we-hit-jackpot
                    }  //  end of if-its-a-literal
                }  //  end of for-i=each-arg
            }
        }  //  end of while-bodyCopy-has-literals
        //  not there yet -- look-for-chain-in-starStuff
        iter = starStuff.iterator();
        while (iter.hasNext()) {
            lit = (Literal) iter.next();
            if ((lit.predicate.category instanceof MathCategory)
                    || (lit.predicate.name.substring(0, 1).equals("*"))) {

                for (int i = 0; i < lit.args.size(); i++) {
                    arg = (Argument) lit.args.get(i);
                    if (bindings.containsKey(arg.argName)) {
                        iter.remove();
                        return lit;
                    }  //  end of if-this-variable-is-bound
                }  //  end of loop through args
            } else if (lit.predicate.name.equals("not")) {
                // ignore-if-it-isn't-not-equal
                if (!((lit.args.size() == 1) && (lit.args.get(0) instanceof Literal)
                        && ((Literal) lit.args.get(0)).predicate.name.equals("equal"))) {
                    iter.remove();
                } else {  //  must-be-not-equal
                    subLit = subPop((Literal) lit.args.get(0), bindings);
                    if (subLit != null) {
                        iter.remove();
                        return lit;
                    }  //  if we don't return lit, keep looping thru starStuff until success or failure
                }  //  end of must-be-not-equal
            }  //  end of else-its-a-'not'-predicate
        }  //  end of while-loop through starStuff
        Object alter = bindings.get("Alter");	//	When pop is used by lateralCount, Alter is bound to an Integer.
        //	It doesn't matter what it is bound to -- if it is bound we're OK.
        if (alter != null) {	// Both lists are empty.  Alter's already found & bound. 
            starStuff.clear();  // Signal end of clausebody by emptying all lists.
            bodyCopy.clear();
            return null;
        }
        //  If we get here, there is no chain of relations in bodyCopy or starStuff.  Punt!
        throw new KSNoChainOfRelations2Alter("Failed to find logical chain in a ClauseBody for "
                + kinTerm + ".\n" + this);
    }  //  end of method pop

    Literal subPop(Literal lit, TreeMap bindings) {
        Argument arg;
        for (int i = 0; i < lit.args.size(); i++) {
            arg = (Argument) lit.args.get(i);
            if ((arg instanceof Variable) && (bindings.containsKey(arg.argName))) {
                return lit;
            }
            if (arg.argType.equals("Literal")) {
                Literal subLit = subPop((Literal) arg, bindings);
                if (subLit != null) {
                    return lit;
                }
            }  //  end of if-its-a-literal
        }  //  end of for-i=each-arg
        return null;
    }  //  end of method subPop

    /**	Return an integer equal to the distance (in generations) between the highest-level
    linking kinsman and the lower of (Ego, Alter).  For example, the definition of NIECE
    refers to Ego's father and/or mother, Ego's sibling, and the sibling's daughter, Alter.
    Ego is at level 0, his parents are ar level +1, his sibling is at level 0, and the niece
    (Alter) is at level -1.  Thus the distance = +1 - min(0, -1) = 2.
    <p>
    This method should only be called on an Expanded Definition, which contains only primitive predicates.

    @throws	KSInternalErrorException	if a non-primitive is encountered.

     */
    public int lateralCount() throws KSInternalErrorException {
        ArrayList<Object> bodyCopy = new ArrayList<Object>(body), starStuff = new ArrayList<Object>();
        TreeMap bindings = new TreeMap();
        Literal lit;
        int alterLvl, egoLvl = 0, hiLvl, latCount;
        //  First, make a valid list of star-predicates
        for (int i = 0; i < bodyCopy.size(); i++) {
            lit = (Literal) bodyCopy.get(i);
            if (lit.predicate.name.substring(0, 1).equals("*")) {
                starStuff.add(lit);
            }
        }  //  end of loop thru literals
        bindings.put("Ego", new Integer(0));
        try {
            while (true) {
                lit = null;
                while (((bodyCopy.size() > 0) || (starStuff.size() > 0)) && (lit == null)) {
                    lit = pop(bodyCopy, starStuff, bindings, ktd.kinTerm);  //  lit = first non-constraint literal in body
                }
                if (lit == null) {	//	end game
                    alterLvl = ((Integer) bindings.get("Alter")).intValue();
                    hiLvl = maxLevel(bindings);
                    latCount = hiLvl - Math.min(egoLvl, alterLvl);
                    return Math.min(4, latCount);
                }  //  end of end game
                if (!(lit.predicate.category instanceof PrimitiveCategory)) {
                    throw new KSInternalErrorException("While computing LateralCount, non-primitive literal for: " + ktd.kinTerm);
                }
                //	If we get here, lit is a valid primitive literal with Ego as 1 of its args
                setLevel(lit, bindings);
            }  //  end of while-true loop
        } catch (KSNoChainOfRelations2Alter exc) {
            return 0;
        }	//	Rare cases involving UDPs have no true path to Alter.
    }	//	end of method lateralCount()						//	Those cases also defy definition of a lateral count.

    public void setLevel(Literal lit, TreeMap bindings) {
        if (lit.predicate.name.equals("not")) {
            return;
        }
        Argument arg0 = (Argument) lit.args.get(0), arg1 = (Argument) lit.args.get(1);
        Integer arg0Lvl = (Integer) bindings.get(arg0.argName), arg1Lvl = (Integer) bindings.get(arg1.argName);
        if ((arg0Lvl == null) || (arg1Lvl == null)) {  // Need to set the level of 1 of them
            if ((lit.predicate.name.equals("father")) || (lit.predicate.name.equals("mother"))
                    || (lit.predicate.name.equals("parent"))) {
                if (arg1Lvl == null) {
                    arg1Lvl = new Integer(arg0Lvl.intValue() - 1);
                    bindings.put(arg1.argName, arg1Lvl);
                } else if (arg0Lvl == null) {
                    arg0Lvl = new Integer(arg1Lvl.intValue() + 1);
                    bindings.put(arg0.argName, arg0Lvl);
                }
            } else if ((lit.predicate.name.equals("son")) || (lit.predicate.name.equals("daughter"))
                    || (lit.predicate.name.equals("child"))) {
                if (arg1Lvl == null) {
                    arg1Lvl = new Integer(arg0Lvl.intValue() + 1);
                    bindings.put(arg1.argName, arg1Lvl);
                } else if (arg0Lvl == null) {
                    arg0Lvl = new Integer(arg1Lvl.intValue() - 1);
                    bindings.put(arg0.argName, arg0Lvl);
                }
            } else if ((lit.predicate.name.equals("spouse")) || (lit.predicate.name.equals("husband"))
                    || (lit.predicate.name.equals("wife")) || (lit.predicate.name.equals("divorced"))
                    || (lit.predicate.name.substring(0, 1).equals("*"))) {
                if (arg1Lvl == null) {
                    arg1Lvl = new Integer(arg0Lvl.intValue());
                    bindings.put(arg1.argName, arg1Lvl);
                } else if (arg0Lvl == null) {
                    arg0Lvl = new Integer(arg1Lvl.intValue());
                    bindings.put(arg0.argName, arg0Lvl);
                }
            }  //  end of tests on the predicate.name
        }  //  end of need to set the level
    }  //  end of method setLevel

    public int maxLevel(TreeMap bindings) {
        Integer best = new Integer(-99), candidate;
        Iterator treeIter = bindings.values().iterator();
        while (treeIter.hasNext()) {
            candidate = (Integer) treeIter.next();
            if (candidate.compareTo(best) > 0) {
                best = candidate;
            }
        }
        return best.intValue();
    }  //  end of method maxLevel

    public void valRemover(ArrayList<Object> literals, ArrayList<Object> argBag) {
        Iterator litIter = literals.iterator();
        Literal nextLit;
        Argument nextArg;
        while (litIter.hasNext()) {
            nextLit = (Literal) litIter.next();
            for (int i = 0; i < nextLit.args.size(); i++) {
                nextArg = (Argument) nextLit.args.get(i);
                if ((nextArg instanceof Constant) && (!argBag.contains(nextArg))) {
                    argBag.add(nextArg);  //  Don't mess with Constants (incl ArgStrings)
                } else if (nextArg instanceof Literal) {
                    ArrayList<Object> subLits = new ArrayList<Object>();
                    subLits.add(nextArg);
                    valRemover(subLits, argBag);
                } else if ((nextArg instanceof Variable) && (!argBag.contains(nextArg))) {
                    if (nextArg instanceof MathVariable) {
                        ((MathVariable) nextArg).lessThan = null;
                        ((MathVariable) nextArg).greaterThan = null;
                        ((MathVariable) nextArg).lessOrEql = null;
                        ((MathVariable) nextArg).greaterOrEql = null;
                        ((MathVariable) nextArg).notEqual = null;
                        ((MathVariable) nextArg).contains = null;
                        ((MathVariable) nextArg).unLink();
                    }
                    ((Variable) nextArg).clearVal();
                    ((Variable) nextArg).priorValues = null;
                    ((Variable) nextArg).containedBy = null;
                    ((Variable) nextArg).neuterOK = true;
                    argBag.add(nextArg);
                }  //  end of Variable processing
            }  //  end of loop thru args of nextLit
        }  //  end while
    }  //  end of method valRemover

    /** Do a depth-first walk of any portion of the family tree for Ego (found in Context <code>hypo</code>)
    that satisfies the definition in this ClauseBody.  Label the person at that leaf with <code>kinTerm</code>.

    @param	ego		the person "in focus" -- the starting point for each definition.
    @param	kinTerm	the kinship term that is defined by this ClauseBody.
     */
    public void fillInNames(Individual ego, String kinTerm)
            throws KSBadHornClauseException, KSInternalErrorException, KSConstraintInconsistency, ClassNotFoundException {

        ConstraintObj constraints = new ConstraintObj();
        ArrayList<Object> genderStuff = new ArrayList<Object>(), starStuff = new ArrayList<Object>(), starBindings = new ArrayList<Object>();
        for (int i = 0; i < body.size(); i++) // if any literal specifies an ego gender ‚ego.gender, skip this clause
        {
            if (!(((Literal) body.get(i)).constraintCheck(ego.gender, constraints, genderStuff, starStuff))) {
                return;
            }
        }
        //  constraintCheck, by side-effect, builds the lists of gender, age, equality, & inequality constraints
        TreeMap bindings = new TreeMap();
        bindings.put("Ego", ego);
//  if (ego.serialNmbr == 1 && kinTerm.equals("jibuwaimo"))  Context.breakpoint(); 
        if (! LiteralAbstract1.finalConstraintCheck(ego.gender, bindings, constraints, body, genderStuff, starStuff)) {
            return;  // does post-processing
        }
        ArrayList<Object> bodyCopy = new ArrayList<Object>(body), starStuffCopy = new ArrayList<Object>(starStuff);
        Literal first = null;
        while ((first == null) && ((bodyCopy.size() > 0) || (starStuffCopy.size() > 0))) {
            first = pop(bodyCopy, starStuffCopy, bindings, kinTerm);
        }
        try {
            Variable egoVar = null;
            for (int i = 0; i < first.args.size(); i++) {
                if (((Argument) first.args.get(i)).argName.equals("Ego")) {
                    egoVar = (Variable) first.args.get(i);
                }
            }
            if (!first.meetsStarSpecsStrictly(ego, egoVar, starBindings, bindings, constraints)) {
                return;  //  NOTE: 'starBindings' is a throw-away; there's no backtracking in FillInNames.
            }
            first.fillInNames(kinTerm, bodyCopy, starStuffCopy, this, bindings, constraints);
        } catch (NullPointerException npe) {
            throw new KSBadHornClauseException("Logical error in: " + this);
        }
        // launch a depth-first walk of the family tree from Ego to all Alters reachable by this clause.
        // if NullPointers are encountered, it is due to un-repaired logic errors.  Report them & give up.
    }  //  end of method fillInNames

    void markDuplication(String kinTerm, Individual ind) {
        //  method LiteralAbstract1.assignKinTerm has identified this ClauseBody as duplicative
        //  because it was asked to assign 'kinTerm' more than once.  Record this.
        String historyItem;
        duplicative = true;
        if (duplications == null) {
            duplications = new ArrayList<Object>();
        }
        for (int i = 0; i < (ind.nameHistory.size() - 1); i++) {
            historyItem = (String) ind.nameHistory.get(i);
            if (historyItem.indexOf(kinTerm + ":") >= 0) {
                duplications.add(historyItem);
            }
        }  //  end of loop through nameHistory
    }  //  end of method markDuplication

    public void resetCounters() {
        level = 0;
        pcCounter = 0;
        sCounter = 0;
        starCounter = 0;
    }  //  end of method resetCounters

    public int compare(Object o1, Object o2) {
        String name1 = ((ClauseBody) o1).ktd.domTh.languageName + ":" + ((ClauseBody) o1).ktd.kinTerm;
        name1 += ":" + ((ClauseBody) o1).seqNmbr;
        String name2 = ((ClauseBody) o2).ktd.domTh.languageName + ":" + ((ClauseBody) o2).ktd.kinTerm;
        name2 += ":" + ((ClauseBody) o2).seqNmbr;
        return name1.compareTo(name2);
    }  //  end of method compare() which partially implements Interface Comparator

    public boolean equals(Object obj) {
        String objName = ((ClauseBody) obj).ktd.domTh.languageName + ":" + ((ClauseBody) obj).ktd.kinTerm
                + ":" + ((ClauseBody) obj).seqNmbr;
        String myName = ktd.domTh.languageName + ":" + ktd.kinTerm + ":" + seqNmbr;
        if (objName.equals(myName)) {
            return true;
        } else {
            return false;
        }
    }  //  end of method equals() which partially implements Interface Comparator

    public boolean containsUDPs(ArrayList<Object> body) {
        for (int i = 0; i < body.size(); i++) {
            Literal lit = (Literal) body.get(i);
            if (lit.predicate.name.charAt(0) == '*') {
                return true;
            }
            if (lit.predicate.name.equals("not") && containsUDPs(lit.args)) {
                return true;
            }
        }
        return false;
    }  //  end of method containsUDPs

    public boolean containsUDPs() {
        if (pcString != null && pcString.indexOf("*") > -1) {
            return true;
        }
        for (int i = 0; i < body.size(); i++) {
            Literal lit = (Literal) body.get(i);
            if (lit.predicate.name.charAt(0) == '*') {
                return true;
            }
            if (lit.predicate.name.equals("not") && containsUDPs(lit.args)) {
                return true;
            }
        }
        return false;
    }  //  end of method containsUDPs

    public boolean unequalConstraints(ArrayList<Object> bodyA, ArrayList<Object> bodyB) {
        TreeMap constraintsA = new TreeMap(),
                constraintsB = new TreeMap();
        ArrayList<Object> lst;
        Literal lit = (Literal) bodyA.get(0);
        //  First make lists of string representations of constraint literals, except
        //  gender constraints on Ego/Alter -- they're already tested.
        for (int i = 0; i < bodyA.size(); i++) {
            lit = (Literal) bodyA.get(i);
            if (lit.predicate.name.equals("gender") || lit.predicate.name.equals("divorced")
                    || lit.predicate.name.equals("elder") || lit.predicate.name.equals("dead")) {
                if (constraintsA.get(lit.predicate.name) == null) {
                    constraintsA.put(lit.predicate.name, new ArrayList<Object>());
                }
                lst = (ArrayList<Object>) constraintsA.get(lit.predicate.name);
                lst.add(lit.toString());
            } else if (lit.predicate.name.equals("younger")) {// normalize to elder
                String normalized = "elder(" + lit.args.get(1) + ", " + lit.args.get(0) + ")";
                if (constraintsA.get("elder") == null) {
                    constraintsA.put("elder", new ArrayList<Object>());
                }
                lst = (ArrayList<Object>) constraintsA.get("elder");
                lst.add(normalized);
            } else if ((lit.predicate.name.equals("male") || lit.predicate.name.equals("female"))
                    && !(((Argument) lit.args.get(0)).argName.equals("Ego")
                    || ((Argument) lit.args.get(0)).argName.equals("Alter"))) {
                if (constraintsA.get(lit.predicate.name) == null) {
                    constraintsA.put(lit.predicate.name, new ArrayList<Object>());
                }
                lst = (ArrayList<Object>) constraintsA.get(lit.predicate.name);
                lst.add(lit.toString());
            }
        }
        for (int i = 0; i < bodyB.size(); i++) {
            lit = (Literal) bodyB.get(i);
            if (lit.predicate.name.equals("gender") || lit.predicate.name.equals("divorced")
                    || lit.predicate.name.equals("elder") || lit.predicate.name.equals("dead")) {
                if (constraintsB.get(lit.predicate.name) == null) {
                    constraintsB.put(lit.predicate.name, new ArrayList<Object>());
                }
                lst = (ArrayList<Object>) constraintsB.get(lit.predicate.name);
                lst.add(lit.toString());
            } else if (lit.predicate.name.equals("younger")) {// normalize to elder
                String normalized = "elder(" + lit.args.get(1) + ", " + lit.args.get(0) + ")";
                if (constraintsB.get("elder") == null) {
                    constraintsB.put("elder", new ArrayList<Object>());
                }
                lst = (ArrayList<Object>) constraintsB.get("elder");
                lst.add(normalized);
            } else if ((lit.predicate.name.equals("male") || lit.predicate.name.equals("female"))
                    && !(((Argument) lit.args.get(0)).argName.equals("Ego")
                    || ((Argument) lit.args.get(0)).argName.equals("Alter"))) {
                if (constraintsB.get(lit.predicate.name) == null) {
                    constraintsB.put(lit.predicate.name, new ArrayList<Object>());
                }
                lst = (ArrayList<Object>) constraintsB.get(lit.predicate.name);
                lst.add(lit.toString());
            }
        }
        ArrayList<Object> aConst = new ArrayList<Object>(constraintsA.keySet()),
                bConst = new ArrayList<Object>(constraintsB.keySet());
        if (!lit.listEqual(aConst, bConst)) {
            return true;  //  unequal types of constraints
        }
        for (int i = 0; i < aConst.size(); i++) {
            String pred = (String) aConst.get(i);
            ArrayList<Object> aLits = (ArrayList<Object>) constraintsA.get(pred),
                    bLits = (ArrayList<Object>) constraintsB.get(pred);
            if (aLits.size() != bLits.size()) {
                return true;  //  unequal number of constraints
            }
        }
        return false;
    }  //  end of method unequalConstraints

    public ClauseBody makeGenderTwin() throws KSInternalErrorException {
        //  Examine this CB to see if it can generate a "gender twin".  For example: if the body has
        //  gender(X,Ego), .... gender(X,Somebody), ...  AND if the body does not otherwise specify
        //  the gender of Ego, then the precise kin type of this ClauseBody (and its PC_String)
        //  depends on the gender of Ego.  In those cases, modify this CB to make it specify a male Ego
        //  and return another CB which specifies a female Ego -- the gender twin.
        boolean twinPossible = false;
        for (int i = 0; i < body.size(); i++) {
            Literal lit = (Literal) body.get(i);
            if (lit.predicate.name.equals("gender")
                    && ((Argument) lit.args.get(1)).argName.equals("Ego")) {
                twinPossible = true;
                i = body.size();
            }
        }
        if (!twinPossible) {
            return null;  //  quick exit for most CBs
        }		//  We have a gender variable for Ego; now see if Ego's gender is otherwise determined
        ClauseBody superPrimitive = canonicalizePreds(this);
        for (int i = 0; i < superPrimitive.body.size(); i++) {
            Literal lit = (Literal) superPrimitive.body.get(i);
            if ((lit.predicate.name.equals("male") || lit.predicate.name.equals("female"))
                    && ((Argument) lit.args.get(0)).argName.equals("Ego")) {
                twinPossible = false;
                i = superPrimitive.body.size();
            }
        }
        if (!twinPossible) {
            return null;  //  quick exit for additional CBs with constrained gender variables
        }		//  OK.  We must specify male(Ego) for this CB
        ClauseBody genderTwin = deepCopy();
        Argument egoArg = null;
        for (int i = 0; i < body.size(); i++) {
            ArrayList<Object> args = ((Literal) body.get(i)).args;
            for (int j = 0; j < args.size(); j++) {
                egoArg = (Argument) args.get(j);
                if (egoArg.argName.equals("Ego")) {
                    i = body.size();	//  end both loops
                    j = args.size();
                }
            }
        }  //  At end, must have found egoArg
        if (egoArg == null) {
            throw new KSInternalErrorException("CB.makeGenderTwin did not find an Ego Arg.");
        }
        Predicate pred = new Predicate("male", new PrimitiveCategory());
        Literal sexSpec = new Literal(pred, egoArg);
        body.add(0, sexSpec);  //  We've inserted 'male(Ego)' into this body
        //  Now we generate a gender twin
        for (int i = 0; i < genderTwin.body.size(); i++) {
            ArrayList<Object> args = ((Literal) genderTwin.body.get(i)).args;
            for (int j = 0; j < args.size(); j++) {
                egoArg = (Argument) args.get(j);
                if (egoArg.argName.equals("Ego")) {
                    i = genderTwin.body.size();	//  end both loops
                    j = args.size();
                }
            }
        }  //  At end, we surely found egoArg 'cuz genderTwin is a copy of this
        pred = new Predicate("female", new PrimitiveCategory());
        sexSpec = new Literal(pred, egoArg);
        genderTwin.body.add(0, sexSpec);
        return genderTwin;
    }  //  end of method makeGenderTwin

    public boolean isEquivalent(ClauseBody other) throws KSBadHornClauseException, KSNoChainOfRelations2Alter,
            KSInternalErrorException, KSConstraintInconsistency, KSParsingErrorException,
            JavaSystemException, ClassNotFoundException {
        //  Strategy:  Apply PC_String test and other 'cheap' tests first.
        //  Then apply unification to the 2 bodies.
        if (pcString != null && (!other.pcString.equals(pcString))) {
            return false;
        }
        if (containsUDPs() || containsUDPs(other.body)) {
            return false;
        }
        if (expansionPath != null && other.expansionPath != null) //  non-null XPath means 2 expandedDefs
        {
            return unifiesWith(other, new ArrayList<Object>(), new ArrayList<Object>(), new ArrayList<Object>());
        }
        if (expansionPath == null && other.expansionPath == null) {//  must be 2 base clauses
            TreeMap myExpCBs = getExpCBs(),
                    otherExpCBs = other.getExpCBs();
            if (myExpCBs.size() != otherExpCBs.size()) {
                return false;
            }
            Iterator iter = myExpCBs.entrySet().iterator();
            while (iter.hasNext()) {
                Map.Entry myEntry = (Map.Entry) iter.next();
                String exactString = (String) myEntry.getKey();
                ClauseBody myExpCB = (ClauseBody) myEntry.getValue(),
                        otherExpCB = (ClauseBody) otherExpCBs.get(exactString);
                if (!myExpCB.unifiesWith(otherExpCB, new ArrayList<Object>(), new ArrayList<Object>(), new ArrayList<Object>())) {
                    return false;
                }
            }  //  end of loop thru exp CBs
            return true;
        }
        throw new KSInternalErrorException("CB.isEquivalent given 1 base CB and 1 expanded.  Error.");
    }  //  end of method isEquivalent

    public TreeMap getExpCBs() throws KSInternalErrorException, KSParsingErrorException, JavaSystemException,
            KSConstraintInconsistency, KSBadHornClauseException {
        TreeMap result = new TreeMap();
        int[] defNmbrs = baseCB_Ptr.expDefNmbrs;
        if (pcString != null && pcString.length() > 0) {  //  base CB pcString is a signature string
            ArrayList<Object> mbrStrings = ktd.decodeString(pcString);
            for (int i = 0; i < mbrStrings.size(); i++) {
                String exactStr = (String) mbrStrings.get(i);
                ArrayList<Object> eqcCands = (ArrayList<Object>) Library.cbIndex.get(exactStr);
                j_loop:
                for (int j = 0; j < eqcCands.size(); j++) {
                    Library.CB_EQC eqc = (Library.CB_EQC) eqcCands.get(j);
                    for (int k = 0; k < eqc.members.size(); k++) {
                        Library.CB_Ptr ptr = (Library.CB_Ptr) eqc.members.get(k);
                        if (ptr.languageName.equals(ktd.domTh.languageName)
                                && ptr.kinTerm.equals(ktd.kinTerm)
                                && containsInt(defNmbrs, ptr.cbSeqNmbr)) {
                            result.put(ptr.cbEQC.pcString, ptr.getClause());
                            break j_loop;
                        }  //  end of bingo
                    }  //  end of loop thru eqc mbrs
                }  //  end of loop thru eqcs
            }  //  end of loop thru member strings
            return result;
        }  //  end of pcString-exists
        return null;
    }  //  end of method getExpCBs

    public boolean containsInt(int[] defNmbrs, int cbSeqNmbr) {
        for (int i = 0; i < defNmbrs.length; i++) {
            if (cbSeqNmbr == defNmbrs[i]) {
                return true;
            }
        }
        return false;
    }  //  end of method containsInt

    public void absorbPCStringsOf(ClauseBody cb2) throws KSInternalErrorException {
        //  Merge the pcStr and pcStrStruct of both CBs & place on this.
        pcString += "_" + cb2.pcString;
        sortSigString();
        pcStringStructural = structStr(pcString);
    }  //  end of method cb1.absorbPCStringsOf

    public boolean unifiesWith(ClauseBody other, ArrayList<Object> boundVars, ArrayList<Object> oldNames, ArrayList<Object> newNames) {
        //  First expand each body into a super-primitive form:  parent, child, spouse etc. plus specific gender
        //  constraints (no duplicates).  (do it as returned value of canonicalizePreds.)  Then run the alg'm below.
        //  Do I need both DeepCopy and the second ArrayList<Object>.copy??
        try {  //  canonicalizePreds returns deepCopy, & reduces the body to super-primitive, canonical form.
            ClauseBody aCB = canonicalizePreds(this),
                    bCB = canonicalizePreds(other);
            ArrayList<Object> aBodyCopy = (aCB.body.size() <= bCB.body.size() ? aCB.body : bCB.body),
                    bBodyCopy = (aCB.body.size() <= bCB.body.size() ? bCB.body : aCB.body);
            if (boundVars.isEmpty()) {
                boundVars.add("Ego");
            }
            Literal aLit = uniPop(aBodyCopy, boundVars, null), bLit;
            while (aLit != null) {
                bLit = uniPop(bBodyCopy, boundVars, aLit);
                if (bLit == null || (aLit.args.size() != bLit.args.size())) {
                    return false;
                }
                for (int i = 0; i < aLit.args.size(); i++) {
                    Argument aArg = (Argument) aLit.args.get(i);
                    Argument bArg = (Argument) bLit.args.get(i);
                    if (aArg.argName.equals("Alter") && !bArg.argName.equals("Alter")) {
                        return false;
                    }
                    if (boundVars.contains(bArg.argName) && !bArg.argName.equals(aArg.argName)) {
                        return false;
                    }
                    if (aLit.args.size() > 1) {  //  not-arity-1
                        if (!aArg.argName.equals(bArg.argName)) {
                            subArgNames(aArg.argName, bArg.argName, aBodyCopy, bBodyCopy, oldNames, newNames);
                            boundVars.add("$" + aArg.argName);
                        } else if (!boundVars.contains(aArg.argName)) {
                            boundVars.add(aArg.argName);
                            oldNames.add(bArg.argName);
                            newNames.add(aArg.argName);
                        }
                    } else if ((aArg instanceof Literal) && (bArg instanceof Literal)) {  //  arity = 1 includes negation
                        //  recurse on the sub-literals.
                        ClauseBody subA = new ClauseBody((Literal) aArg),
                                subB = new ClauseBody((Literal) bArg);
                        subA.ktd = ktd;
                        subB.ktd = other.ktd;
                        ArrayList<Object> subOld = new ArrayList<Object>(), subNew = new ArrayList<Object>();
                        if (!subA.unifiesWith(subB, boundVars, subOld, subNew)) {
                            return false;
                        }
                        for (int j = 0; j < subOld.size(); j++) {
                            if (!((String) subNew.get(j)).equals((String) subOld.get(j))) {
                                subArgNames((String) subNew.get(j), (String) subOld.get(j), aBodyCopy, bBodyCopy, oldNames, newNames);
                            }
                            if (!boundVars.contains(subNew.get(j))) {
                                boundVars.add(subNew.get(j));
                            }
                        }  //  end of processing variable substitutions from sub-Lits
                    } else if ((!(aArg instanceof Literal)) && (!(bArg instanceof Literal))) {
                        //  single-arg lits that matched in uniPop must be OK.  Do nothing.
                    } else {
                        return false;  //  must be 1 Literal and 1 non-Literal.
                    }
                }  //  end of loop thru args
                aLit = uniPop(aBodyCopy, boundVars, null);
            }  //  end of while-aLit-wasn't-null
            //  It's OK if B has a few literals leftover, unless they contain constraints.
            //  UNLESS there was no PCString test -- then we must insist upon exact match
            if ((pcString == null && bBodyCopy.size() > 0) || (bBodyCopy.size() > 0 && containsConstraints(bBodyCopy))) {
                return false;
            }
        } catch (KSInternalErrorException exc) {
            return false;
        }
        return true;
    }  //  end of method unifiesWith

    public boolean almostUnifies(ArrayList<Object> aBody, ArrayList<Object> bBody, ArrayList<Object> boundVars, ArrayList<Object> oldNames, ArrayList<Object> newNames,
            ArrayList<Object> misMatches, Counter maxMisses, ClauseBody other) {
        //  aBody and bBody are deepCopies already in super-primitive form: parent, child, spouse etc. plus specific gender
        //  constraints (no duplicates).  Their bodies were identical in length at start.
        //  Look for unification of these 2 bodies with 'maxMisses' mis-matched literals.  Put those misMatched
        //  literals into 'misMatches' and return true.  Else return false.
        Literal aLit = null, bLit = null;
        try {
            if (boundVars.isEmpty()) {
                boundVars.add("Ego");
            }
            aLit = uniPop(aBody, boundVars, null);
            while (aLit != null) {
                bLit = uniPop(bBody, boundVars, aLit);
                if (maxMisses.total() == 0 && bLit == null) {
                    return false;
                }
                if (bLit != null && aLit.args.size() != bLit.args.size()) {
                    return false;
                }
                if (maxMisses.total() > 0 && bLit == null) {
                    maxMisses.decr();
                    bLit = findComplement(aLit, aBody, bBody, boundVars, oldNames, newNames);
                    if (bLit != null) {  //  found-complement-to-aLit
                        misMatches.add(aLit);
                        misMatches.add(bLit);
                        return almostUnifies(aBody, bBody, boundVars, oldNames, newNames,
                                misMatches, maxMisses, other);
                    } else {
                        return false;
                    }
                }  //  end of total > 0 and bList is null
                //  If we get here, bLit matches aLit on arity, predicate, and one bound variable
                for (int i = 0; i < aLit.args.size(); i++) {
                    Argument aArg = (Argument) aLit.args.get(i);
                    Argument bArg = (Argument) bLit.args.get(i);
                    if (aArg.argName.equals("Alter") && !bArg.argName.equals("Alter")) {
                        return false;
                    }
                    if (boundVars.contains(bArg.argName) && !bArg.argName.equals(aArg.argName)) {
                        return false;
                    }
                    if (aLit.args.size() > 1) {  //  not-arity-1
                        if (!aArg.argName.equals(bArg.argName)) {
                            subArgNames(aArg.argName, bArg.argName, aBody, bBody, oldNames, newNames);
                            boundVars.add("$" + aArg.argName);
                        } else if (!boundVars.contains(aArg.argName)) {
                            boundVars.add(aArg.argName);
                            oldNames.add(bArg.argName);
                            newNames.add(aArg.argName);
                        }
                    } else if ((aArg instanceof Literal) && (bArg instanceof Literal)) {  //  arity = 1 includes negation
                        //  recurse on the sub-literals.
                        ClauseBody subA = new ClauseBody((Literal) aArg),
                                subB = new ClauseBody((Literal) bArg);
                        subA.ktd = ktd;
                        subB.ktd = other.ktd;
                        ArrayList<Object> subOld = new ArrayList<Object>(), subNew = new ArrayList<Object>();
                        if (!subA.almostUnifies(subA.body, subB.body, boundVars, subOld, subNew, misMatches, maxMisses, other)) {
                            return false;
                        }
                        for (int j = 0; j < subOld.size(); j++) {
                            if (!((String) subNew.get(j)).equals((String) subOld.get(j))) {
                                subArgNames((String) subNew.get(j), (String) subOld.get(j), aBody, bBody, oldNames, newNames);
                            }
                            if (!boundVars.contains(subNew.get(j))) {
                                boundVars.add(subNew.get(j));
                            }
                        }  //  end of processing variable substitutions from sub-Lits
                    } else if (!(aArg instanceof Literal) && !(bArg instanceof Literal)) {
                        //  single-arg lits that matched in uniPop must be OK.  Do nothing.
                    } else {
                        return false;  //  must be 1 Literal and 1 non-Literal.
                    }
                }  //  end of loop thru args
                aLit = uniPop(aBody, boundVars, null);
            }  //  end of while-aLit-wasn't-null
            //  It's OK if B has a few literals leftover, unless they contain constraints.
            //  UNLESS there was no PCString test -- then we must insist upon exact match
            if ((pcString == null && bBody.size() > 0) || (bBody.size() > 0 && containsConstraints(bBody))) {
                return false;
            }
        } catch (KSInternalErrorException exc) {
            //  Failed to find a bLit.  Is this a complement to aLit?
            if (maxMisses.total() > 0) {
                maxMisses.decr();
                bLit = findComplement(aLit, aBody, bBody, boundVars, oldNames, newNames);
                if (bLit != null) {  //  found-complement-to-aLit
                    misMatches.add(aLit);
                    misMatches.add(bLit);
                    return almostUnifies(aBody, bBody, boundVars, oldNames, newNames,
                            misMatches, maxMisses, other);
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }
        return true;
    }  //  end of method almostUnifies

    /*			NOT CURRENTLY USED
    public boolean unequalEgoGenders(ClauseBody other)  {
    //  Internal gender constraint conflicts were previously screened out, so we can
    //  safely assume only 1 gender is implied by each CB
    String myEgoGender = "?",
    otherEgoGender = "?";
    String[] men = {"father", "son", "husband", "male"},
    women = {"mother", "daughter", "wife", "female"};
    ArrayList<Object> maleArg0Preds = makeAList(men), femaleArg0Preds = makeAList(women);
    for (int i=0; i < body.size(); i++)  {
    Literal lit = (Literal)body.get(i);
    Predicate pred = lit.predicate;
    Argument arg0 = (Argument)lit.args.get(0),
    arg1 = (lit.args.size() == 2 ? (Argument)lit.args.get(1) : null);
    if (arg0.argName.equals("Ego"))  {
    if (maleArg0Preds.contains(lit.predicate.name))  {
    myEgoGender = "M";
    i = body.size();
    }else if (femaleArg0Preds.contains(lit.predicate.name))  {
    myEgoGender = "F";
    i = body.size();
    }
    }else if (arg1 != null && arg1.argName.equals("Ego"))  {
    if (lit.predicate.name.equals("husband")) {
    myEgoGender = "F";
    i = body.size();
    }else if (lit.predicate.name.equals("wife")) {
    myEgoGender = "M";
    i = body.size();
    }	}
    }  //  end of loop thru my predicates
    for (int i=0; i < other.body.size(); i++)  {
    Literal lit = (Literal)other.body.get(i);
    Predicate pred = lit.predicate;
    Argument arg0 = (Argument)lit.args.get(0),
    arg1 = (lit.args.size() == 2 ? (Argument)lit.args.get(1) : null);
    if (arg0.argName.equals("Ego"))  {
    if (maleArg0Preds.contains(lit.predicate.name))  {
    otherEgoGender = "M";
    i = other.body.size();
    }else if (femaleArg0Preds.contains(lit.predicate.name))  {
    otherEgoGender = "F";
    i = other.body.size();
    }
    }else if (arg1 != null && arg1.argName.equals("Ego"))  {
    if (lit.predicate.name.equals("husband")) {
    otherEgoGender = "F";
    i = other.body.size();
    }else if (lit.predicate.name.equals("wife")) {
    otherEgoGender = "M";
    i = other.body.size();
    }	}
    }  //  end of loop thru other predicates
    if (myEgoGender.equals(otherEgoGender)) return false;
    else return true;
    }  //  end of method unequalEgoGenders
     */
    public Literal findComplement(Literal aLit, ArrayList<Object> aBody, ArrayList<Object> bBody, ArrayList<Object> boundVars,
            ArrayList<Object> oldNames, ArrayList<Object> newNames) {
        //  Find (and remove from bBody) the complement to aLit.  Return it (or null for failure).
        int aPredType = ying.indexOf(aLit.predicate.name);
        if (aPredType == -1) {
            return null;
        }
        String aLitArg0 = ((Argument) aLit.args.get(0)).argName,
                aLitArg1 = (aLit.args.size() > 1 ? ((Argument) aLit.args.get(1)).argName : null);
        Iterator iter = bBody.iterator();
        while (iter.hasNext()) {
            Literal bLit = (Literal) iter.next();
            String bLitArg0 = ((Argument) bLit.args.get(0)).argName,
                    bLitArg1 = (bLit.args.size() > 1 ? ((Argument) bLit.args.get(1)).argName : null);
            if (yang.indexOf(bLit.predicate.name) == aPredType //  a complementary arg
                    && ((aLitArg0.equals(bLitArg0) && boundVars.contains(aLitArg0)) //  bound arg matches
                    || (aLitArg1 != null && aLitArg1.equals(bLitArg1) && boundVars.contains(aLitArg1)))
                    && !(aLitArg0.equals("Alter") && !bLitArg0.equals("Alter")) //  Alter is not the unmatched arg
                    && !(aLitArg1 != null && aLitArg1.equals("Alter") && !bLitArg1.equals("Alter"))
                    && !(boundVars.contains(bLitArg0) && !bLitArg0.equals(aLitArg0)) // Unmatched arg not already bound
                    && !(aLitArg1 != null && boundVars.contains(bLitArg1) && !bLitArg1.equals(aLitArg1))) {
                //  BINGO.  Unify the variable naming if necessary.
                if (!aLitArg0.equals(bLitArg0)) {
                    subArgNames(aLitArg0, bLitArg0, aBody, bBody, oldNames, newNames);
                    boundVars.add("$" + aLitArg0);
                } else if (!boundVars.contains(aLitArg0)) {
                    boundVars.add(aLitArg0);
                    oldNames.add(bLitArg0);
                    newNames.add(aLitArg0);
                }
                if (aLitArg1 != null && !aLitArg1.equals(bLitArg1)) {
                    subArgNames(aLitArg1, bLitArg1, aBody, bBody, oldNames, newNames);
                    boundVars.add("$" + aLitArg1);
                } else if (aLitArg1 != null && !boundVars.contains(aLitArg1)) {
                    boundVars.add(aLitArg1);
                    oldNames.add(bLitArg1);
                    newNames.add(aLitArg1);
                }
                iter.remove();
                return bLit;
            }  //  end of found-it
        }  //  end of loop thru bBody
        return null;
    }  //  end of method findComplement

    ArrayList<Object> makeAList(String[] contents) {
        ArrayList<Object> lst = new ArrayList<Object>();
        for (int i = 0; i < contents.length; i++) {
            lst.add(contents[i]);
        }
        return lst;
    }  //  end of method makeAList

    public boolean containsConstraints(ArrayList<Object> lits) {
        for (int i = 0; i < lits.size(); i++) {
            Literal lit = (Literal) lits.get(i);
            if (lit.predicate.name.equals("male") || lit.predicate.name.equals("female")
                    || lit.predicate.name.equals("elder") || lit.predicate.name.equals("younger")
                    || lit.predicate.name.equals("gender") || lit.predicate.name.equals("divorced")
                    || lit.predicate.name.equals("dead") || lit.predicate.name.equals("not")
                    || lit.predicate.name.equals("lessThan") || lit.predicate.name.equals("greaterThan")
                    || lit.predicate.name.equals("lessOrEql") || lit.predicate.name.equals("greaterOrEql")) {
                return true;
            }
        }
        return false;
    }  //  end of method containsConstraints

    public Literal uniPop(ArrayList<Object> bodyCopy, ArrayList<Object> boundVars, Literal model) throws KSInternalErrorException {
        //  Find the first literal in bodyCopy that has an arg already found on boundVars.
        //  If model != null, predicate & at least 1 arg must match model.  If BOTH args on the model are
        //  boundVars, then they BOTH must match.
        //  When the lit has been found, delete it from bodyCopy.
        //  If none can be found, or bodyCopy is empty, return null.
        if (bodyCopy.isEmpty()) {
            return null;
        }
        boolean fullMatchRequired = allArgsBound(model, boundVars);
        Iterator iter = bodyCopy.iterator();
        while (iter.hasNext()) {
            Literal lit = (Literal) iter.next();
            boolean fullMatchFound = true;
            if (model == null
                    || (model.predicate.name.equals(lit.predicate.name)
                    && model.args.size() == lit.args.size())) {

                for (int i = 0; i < lit.args.size(); i++) {
                    Argument arg = (Argument) lit.args.get(i);
                    boolean thisArgMatches = false;
                    if ((arg instanceof Variable) || (arg instanceof Constant)) {
                        if (boundVars.contains(arg.argName)
                                && (model == null || // if model != null, must have same arg in same position
                                rightOrder(model.args, arg, i, lit.predicate.name))) {
                            if (!fullMatchRequired) {  //  we're done: 1 match is sufficient
                                iter.remove();
                                return lit;
                            } else {
                                thisArgMatches = true;  //  progress toward full match
                            }
                        }  //  end of if-this-variable-is-bound
                    } else if (arg.argType.equals("Literal")) {
                        Literal subLit = (Literal) arg;
                        if ((model != null && (model.args.get(i) instanceof Literal)
                                && argsFound(subLit.args, boundVars, (Literal) model.args.get(i), fullMatchRequired))
                                || (model == null && argsFound(subLit.args, boundVars, null, fullMatchRequired))) {
                            iter.remove();
                            return lit;
                        }  //  end of if-we-hit-jackpot
                    } //  end of it's-a-Literal
                    else {
                        throw new KSInternalErrorException("Illegal arg type in uniPop.");
                    }
                    if (!thisArgMatches) {
                        fullMatchFound = false;
                    }
                }  //  end of for-i=each-arg
            } else {
                fullMatchFound = false;  //  Matches failed
            }			//  Can only reach here if fullMatch is required or matches failed
            if (fullMatchRequired && fullMatchFound) {
                iter.remove();
                return lit;
            }
        }  //  end of while-bodyCopy-has-literals
        throw new KSInternalErrorException("Failed to process all literals in uniPop.");
    }  //  end of method uniPop

    public boolean allArgsBound(Literal model, ArrayList<Object> boundVars) {
        if (model == null) {
            return false;
        }
        if (model.predicate.name.equals("not")) {  //  check that all args to 'equal' are bound
            Literal subLit = (Literal) model.args.get(0);
            for (int i = 0; i < subLit.args.size(); i++) {
                if (!boundVars.contains(((Argument) subLit.args.get(i)).argName)) {
                    return false;
                }
            }
            return true;
        } else {
            for (int i = 0; i < model.args.size(); i++) {
                if (!boundVars.contains(((Argument) model.args.get(i)).argName)) {
                    return false;
                }
            }
        }
        return true;
    }  //  end of method allArgsBound

    public boolean rightOrder(ArrayList<Object> argList, Argument arg, int which, String predNam) {
        //  Unless predicate name = spouse, must find same argName in same position
        if ((!predNam.equals("spouse")) && (!predNam.equals("equal"))) {
            return ((Argument) argList.get(which)).argName.equals(arg.argName);
        }
        boolean swapEm = false, foundIt = false;
        for (int i = 0; i < argList.size(); i++) {
            if (((Argument) argList.get(i)).argName.equals(arg.argName)) {
                if (i != which) {
                    swapEm = true;
                }
                foundIt = true;
            }
        }
        if (swapEm) {
            Argument holder = (Argument) argList.get(0);
            argList.set(0, argList.get(1));
            argList.set(1, holder);
        }  //  end of swapped-arg-order
        return foundIt;
    }  //  end of method rightOrder

    public boolean argsFound(ArrayList<Object> argList, ArrayList<Object> boundVars, Literal model, boolean fullMatchRequired) {
        //  This method called ONLY by UniPop to test negated predicates
        boolean allFound = true;
        for (int i = 0; i < argList.size(); i++) {
            Argument arg = (Argument) argList.get(i);
            if (boundVars.contains(arg.argName)
                    && (model == null
                    || model.predicate.name.equals("equal") || //  order of args in 'equal' doesn't matter
                    ((Argument) model.args.get(i)).argName.equals(arg.argName))) {
                if (!fullMatchRequired) {
                    return true;
                }
            } else {
                allFound = false;
            }
        }  //  end of loop thru argList
        return allFound;
    }  //  end of method argsFound

    public ClauseBody canonicalizePreds(ClauseBody cb) throws KSInternalErrorException {
        //  I generify nearly all predicates.  We don't care what predicates the DT encoder used,
        //  so long as they're equivalent.  Unpack all predicates to their super-primitive components.
        if (cb == null) {
            Context.breakpoint();
        }
        ClauseBody newCB = cb.deepCopy();
        String[] specific = {"lessThan", "lessOrEql", "younger", "child", "wife"};
        String[] general = {"greaterThan", "greaterOrEql", "elder", "parent", "husband"};
        for (int i = 0; i < newCB.body.size(); i++) {
            Literal lit = (Literal) newCB.body.get(i);
            for (int j = 0; j < 5; j++) {
                if (lit.predicate.name.equals(specific[j])) {
                    lit.predicate.name = general[j];
                    swapArgs(lit);
                    j = 5;
                }
            }  // end of loop thru specific
        }  //  end of loop thru cb's body to generify the predicates
        //  Now, unpack all predicates to their super-primitive components
        ArrayList<Object> newBody = new ArrayList<Object>();
        TreeMap knownGenders = new TreeMap(), //  personVarName => gender (male/female)
                genderVarVals = new TreeMap(), //  genderVarName => gender (male/female)
                personToVarMap = new TreeMap(), //  personVarName => genderVarName
                unequals = new TreeMap(), //  varName to List_of_varNames
                oppoSex = new TreeMap();		//  personVarName to List_of_personVarNames
        makeSuperPrimitive(newCB, newBody, knownGenders, personToVarMap, unequals, oppoSex);  //  make all 'parent', 'male', etc.
        boolean progress = true;
        while (progress) {  //  progress = new gender info infered.  Go until progress stops
            progress = inferVarValsFromGenders(cb, newBody, knownGenders, genderVarVals, personToVarMap, unequals, oppoSex);
            if (inferGendersFromVarVals(cb, newBody, knownGenders, genderVarVals, personToVarMap, unequals)) {
                progress = true;
            }
        }  //  end of while-progress
        progress = inferOppoSexParents(newBody, oppoSex, knownGenders, personToVarMap, genderVarVals);
        if (progress) {
            inferVarValsFromGenders(cb, newBody, knownGenders, genderVarVals, personToVarMap, unequals, oppoSex);
        }
        if (progress) {
            inferGendersFromVarVals(cb, newBody, knownGenders, genderVarVals, personToVarMap, unequals);
        }
        withdrawGenderPreds(newBody, personToVarMap, knownGenders);
        newCB.body = newBody;
        return newCB;
    }  //  end of method canonicalizePreds

    public void swapArgs(Literal lit) {
        Argument argHold = (Argument) lit.args.get(0);
        lit.args.set(0, lit.args.get(1));  //  swap arg order
        lit.args.set(1, argHold);
    }  //  end of method swapArgs

    public void makeSuperPrimitive(ClauseBody newCB, ArrayList<Object> newBody, TreeMap knownGenders,
            TreeMap personToVarMap, TreeMap unequals, TreeMap oppoSex) {
        //  Unpack predicates like 'father' into 'parent' and 'male'
        //  Also, build directories of unequals, genderVars
        Literal newLit;
        PredCategory predCat = (PredCategory) new PrimitiveCategory();
        for (int i = 0; i < newCB.body.size(); i++) {
            Literal lit = (Literal) newCB.body.get(i);
            if (lit.predicate.name.equals("father")) {
                newBody.add(lit);
                lit.predicate.name = "parent";
                newLit = new Literal(new Predicate("male", predCat));
                newLit.args.add(((Argument) lit.args.get(0)).copy());
                addIfNotPresent(newLit, newBody, knownGenders, null);
            } else if (lit.predicate.name.equals("mother")) {
                newBody.add(lit);
                lit.predicate.name = "parent";
                newLit = new Literal(new Predicate("female", predCat));
                newLit.args.add(((Argument) lit.args.get(0)).copy());
                addIfNotPresent(newLit, newBody, knownGenders, null);
            } else if (lit.predicate.name.equals("son")) {
                newBody.add(lit);
                lit.predicate.name = "parent";
                swapArgs(lit);
                newLit = new Literal(new Predicate("male", predCat));
                newLit.args.add(((Argument) lit.args.get(1)).copy());
                addIfNotPresent(newLit, newBody, knownGenders, null);
            } else if (lit.predicate.name.equals("daughter")) {
                newBody.add(lit);
                lit.predicate.name = "parent";
                swapArgs(lit);
                newLit = new Literal(new Predicate("female", predCat));
                newLit.args.add(((Argument) lit.args.get(1)).copy());
                addIfNotPresent(newLit, newBody, knownGenders, null);
            } else if (lit.predicate.name.equals("husband")) {
                newBody.add(lit);
                lit.predicate.name = "spouse";
                newLit = new Literal(new Predicate("male", predCat));
                newLit.args.add(((Argument) lit.args.get(0)).copy());
                addIfNotPresent(newLit, newBody, knownGenders, null);
                newLit = new Literal(new Predicate("female", predCat));
                newLit.args.add(((Argument) lit.args.get(1)).copy());
                addIfNotPresent(newLit, newBody, knownGenders, null);
            } else if (lit.predicate.name.equals("wife")) {
                newBody.add(lit);
                lit.predicate.name = "spouse";
                swapArgs(lit);
                newLit = new Literal(new Predicate("male", predCat));
                newLit.args.add(((Argument) lit.args.get(0)).copy());
                addIfNotPresent(newLit, newBody, knownGenders, null);
                newLit = new Literal(new Predicate("female", predCat));
                newLit.args.add(((Argument) lit.args.get(1)).copy());
                addIfNotPresent(newLit, newBody, knownGenders, null);
            } else if (lit.predicate.name.equals("spouse")) {
                newBody.add(lit);
                String person0 = (String) ((Argument) lit.args.get(0)).argName,
                        person1 = (String) ((Argument) lit.args.get(1)).argName;
                if (oppoSex.get(person0) == null) {
                    oppoSex.put(person0, new ArrayList<Object>());
                }
                if (oppoSex.get(person1) == null) {
                    oppoSex.put(person1, new ArrayList<Object>());
                }
                ArrayList<Object> person0Opps = (ArrayList<Object>) oppoSex.get(person0),
                        person1Opps = (ArrayList<Object>) oppoSex.get(person1);
                person0Opps.add(person1);
                person1Opps.add(person0);
            } else if (lit.predicate.name.equals("gender")) {
                newBody.add(lit);
                String genderVar = (String) ((Argument) lit.args.get(0)).argName,
                        personVar = (String) ((Argument) lit.args.get(1)).argName;
                personToVarMap.put(personVar, genderVar);
            } else if (lit.predicate.name.equals("male")) {
                newBody.add(lit);
                String personVar = (String) ((Argument) lit.args.get(0)).argName;
                if (knownGenders.get(personVar) == null) {
                    knownGenders.put(personVar, "male");
                }
            } else if (lit.predicate.name.equals("female")) {
                newBody.add(lit);
                String personVar = (String) ((Argument) lit.args.get(0)).argName;
                if (knownGenders.get(personVar) == null) {
                    knownGenders.put(personVar, "female");
                }
            } else if (lit.predicate.name.equals("not")) {
                newBody.add(lit);
                if (lit.args.size() == 1) {
                    Literal subLit = (Literal) lit.args.get(0);
                    if (subLit.predicate.name.equals("equal")) {
                        String arg0Name = (String) ((Argument) subLit.args.get(0)).argName,
                                arg1Name = (String) ((Argument) subLit.args.get(1)).argName;
                        if (unequals.get(arg0Name) == null) {
                            unequals.put(arg0Name, new ArrayList<Object>());
                        }
                        if (unequals.get(arg1Name) == null) {
                            unequals.put(arg1Name, new ArrayList<Object>());
                        }
                        ArrayList<Object> arg0Opps = (ArrayList<Object>) unequals.get(arg0Name),
                                arg1Opps = (ArrayList<Object>) unequals.get(arg1Name);
                        arg0Opps.add(arg1Name);
                        arg1Opps.add(arg0Name);
                    }
                }  //  end of lit has 1 arg
            } else {
                newBody.add(lit);
            }
        }  //  end of loop thru generified lits
    }  //  end of method makeSuperPrimitive

    public void makeNormalPrimitive() throws KSInternalErrorException {
        //  Find superPrimitive expressions like 'parent(X,Y), male(X).'
        //  Change them into regular primitives like 'father(X,Y).'
        //  First, assemble all known gender information
        TreeMap knownGenders = new TreeMap(), //  personVarName => gender (male/female)
                genderVarVals = new TreeMap(), //  genderVarName => gender (male/female)
                personToVarMap = new TreeMap(), //  personVarName => genderVarName
                unequals = new TreeMap(), //  varName to List_of_varNames
                oppoSex = new TreeMap();		//  personVarName to List_of_personVarNames
        getGenderInfo(knownGenders, personToVarMap, unequals, oppoSex);
        boolean progress = true;
        while (progress) {  //  progress = new gender info infered.  Go until progress stops
            progress = inferVarValsFromGenders(this, body, knownGenders, genderVarVals, personToVarMap, unequals, oppoSex);
            if (inferGendersFromVarVals(this, body, knownGenders, genderVarVals, personToVarMap, unequals)) {
                progress = true;
            }
        }  //  end of while-progress
        progress = inferOppoSexParents(body, oppoSex, knownGenders, personToVarMap, genderVarVals);
        if (progress) {
            inferVarValsFromGenders(this, body, knownGenders, genderVarVals, personToVarMap, unequals, oppoSex);
        }
        if (progress) {
            inferGendersFromVarVals(this, body, knownGenders, genderVarVals, personToVarMap, unequals);
        }
        //  Now use gender info to de-generify predicates
        ArrayList<Object> gendersUsed = new ArrayList<Object>(), //  all argNames whose gender info has been used
                bodyCopy = new ArrayList<Object>(body), //  a shallow copy
                newBody = new ArrayList<Object>(),
                boundVars = new ArrayList<Object>();
        Literal next = null;
        boundVars.add("Ego");
        while (bodyCopy.size() > 0) {
            while (next == null && bodyCopy.size() > 0) {
                next = uniPop(bodyCopy, boundVars, null);
            }
            if (next != null) {
                reFormLit(next, newBody, knownGenders, boundVars, gendersUsed);
            }
            next = null;
        }  //  end of big loop thru bodyCopy
        //  Finally, remove redundant gender preds
        Iterator iter = newBody.iterator();
        while (iter.hasNext()) {
            Literal lit = (Literal) iter.next();
            String predName = lit.predicate.name;
            if ((predName.equals("male") || predName.equals("female"))
                    && gendersUsed.contains(((Argument) lit.args.get(0)).argName)) {
                iter.remove();
            } else if (predName.equals("gender")
                    && gendersUsed.contains(((Argument) lit.args.get(1)).argName)) {
                iter.remove();
                unequals.remove(((Argument) lit.args.get(0)).argName);
            } else if (predName.equals("not")
                    && lit.args.size() == 1 && (Argument) lit.args.get(0) instanceof Literal
                    && ((Literal) lit.args.get(0)).predicate.name.equals("equal")) {
                Literal subLit = (Literal) lit.args.get(0);
                Argument subArg0 = (Argument) subLit.args.get(0),
                        subArg1 = (Argument) subLit.args.get(1);
                if (unequals.get(subArg0.argName) == null && unequals.get(subArg1.argName) == null) {
                    iter.remove();
                }
            }
        }  //  end of 2nd loop thru body
        body = newBody;
    }  //  end of method makeNormalPrimitive

    public boolean inferOppoSexParents(ArrayList<Object> newBody, TreeMap oppoSex, TreeMap knownGenders,
            TreeMap personToVarMap, TreeMap genderVarVals) {
        //  If A & B are parents of someone, they PROBABLY have opposite gender.
        //  UNLESS they already have the same gender.
        boolean success = false;
        for (int i = 0; i < newBody.size() - 1; i++) {
            Literal lit1 = (Literal) newBody.get(i);
            if (lit1.predicate.name.equals("parent") || lit1.predicate.name.equals("parents")) {
                String par1 = ((Argument) lit1.args.get(0)).argName,
                        kid1 = ((Argument) lit1.args.get(1)).argName;
                for (int j = i + 1; j < newBody.size(); j++) {
                    Literal lit2 = (Literal) newBody.get(j);
                    if (lit2.predicate.name.equals("parent") || lit2.predicate.name.equals("parents")) {  //  found 2 parents
                        String par2 = ((Argument) lit2.args.get(0)).argName,
                                kid2 = ((Argument) lit2.args.get(1)).argName;
                        if (kid1.equals(kid2) && !par1.equals(par2)) {  //  found 2 parents of same kid
                            //  Ck to see if they are known to have same gender
                            boolean proceed = true;
                            String par1Sex = (String) knownGenders.get(par1),
                                    par2Sex = (String) knownGenders.get(par2);
                            if (par1Sex != null && par1Sex.equals(par2Sex)) {
                                proceed = false;
                            } else {
                                String par1SexVar = (String) personToVarMap.get(par1),
                                        par2SexVar = (String) personToVarMap.get(par2),
                                        par1GndrVal = (par1SexVar == null ? null : (String) genderVarVals.get(par1SexVar)),
                                        par2GndrVal = (par2SexVar == null ? null : (String) genderVarVals.get(par2SexVar));
                                if ((par1GndrVal != null
                                        && (par1GndrVal.equals(par2GndrVal) || par1GndrVal.equals(par2Sex)))
                                        || (par2GndrVal != null && par2GndrVal.equals(par1Sex))) {
                                    proceed = false;
                                }
                            }  //  end of par1Sex != par2Sex
                            if (proceed) { //  record oppoSex if not already recorded
                                if (oppoSex.get(par1) == null) {
                                    oppoSex.put(par1, new ArrayList<Object>());
                                }
                                ArrayList<Object> oppo1 = (ArrayList<Object>) oppoSex.get(par1);
                                if (!oppo1.contains(par2)) {
                                    oppo1.add(par2);
                                    success = true;
                                }
                                if (oppoSex.get(par2) == null) {
                                    oppoSex.put(par2, new ArrayList<Object>());
                                }
                                ArrayList<Object> oppo2 = (ArrayList<Object>) oppoSex.get(par2);
                                if (!oppo2.contains(par1)) {
                                    oppo2.add(par1);
                                    success = true;
                                }
                                j = newBody.size();
                            }  //  end of recording oppoSex
                        }  //  end of found-2-parents-of-1-kid
                    }  //  end of found-2-parents
                }  //  end of inner loop
            }  //  end of found-1-parent
        }  //  end of outer loop
        return success;
    }  //  end of method inferOppoSexParents

    public boolean inferVarValsFromGenders(ClauseBody cb, ArrayList<Object> newBody, TreeMap knownGenders,
            TreeMap genderVarVals, TreeMap personToVarMap, TreeMap unequals, TreeMap oppoSex)
            throws KSInternalErrorException {
        boolean progress = false;
        TreeMap knownGenderAddns = new TreeMap();
        Iterator personIter = knownGenders.entrySet().iterator();
        while (personIter.hasNext()) {
            Map.Entry entry = (Map.Entry) personIter.next();
            String person = (String) entry.getKey(),
                    gender = (String) entry.getValue(),
                    genderVar = (String) personToVarMap.get(person);
            if (genderVar != null) {
                String genderVarValue = (String) genderVarVals.get(genderVar);
                if (genderVarValue != null && !genderVarValue.equals(gender)) {
                    throw new KSInternalErrorException("Conflicting genders assigned in canonicalizePreds for "
                            + cb.ktd.kinTerm + ":" + cb.seqNmbr);
                } else if (genderVarValue == null) {  //  new info posted.  Progress!
                    genderVarVals.put(genderVar, gender);
                    progress = true;
                    ArrayList<Object> opps = (ArrayList<Object>) unequals.get(genderVar);
                    if (opps != null) {
                        for (int i = 0; i < opps.size(); i++) {
                            String oppVar = (String) opps.get(i),
                                    oppVal = (String) genderVarVals.get(oppVar),
                                    oppositeSex = (gender.equals("male") ? "female" : "male");
                            if (oppVal != null && !oppVal.equals(oppositeSex)) {
                                throw new KSInternalErrorException("Conflicting genders assigned in canonicalizePreds for "
                                        + cb.ktd.kinTerm + ":" + cb.seqNmbr);
                            } else if (oppVal == null) {
                                genderVarVals.put(oppVar, oppositeSex);
                                withdrawInequalPred(genderVar, oppVar, newBody);
                            }
                        }  //  end of opps not null / loop thru opps
                    }
                }  //  end of making progress
            }  //  end of genderVar != null
            ArrayList<Object> opps = (ArrayList<Object>) oppoSex.get(person);
            if (opps != null) {
                for (int i = 0; i < opps.size(); i++) {
                    String oppPerson = (String) opps.get(i),
                            oppPersGender = (String) knownGenders.get(oppPerson),
                            oppositeSex = (gender.equals("male") ? "female" : "male");
                    if (oppPersGender != null && !oppPersGender.equals(oppositeSex)) {
                        throw new KSInternalErrorException("Conflicting genders assigned in canonicalizePreds for "
                                + cb.ktd.kinTerm + ":" + cb.seqNmbr);
                    } else if (oppPersGender == null) {
                        Literal newLit = new Literal(new Predicate(oppositeSex, (PredCategory) new PrimitiveCategory()));
                        newLit.args.add(new Variable(oppPerson));
                        addIfNotPresent(newLit, newBody, knownGenders, knownGenderAddns);
                        progress = true;
                    }
                }  //  end of opps not null / loop thru opps
            }
        }  //  end of loop thru knownGenders
        knownGenders.putAll(knownGenderAddns);
        return progress;
    }  //  end of method inferVarValsFromGenders

    public boolean inferGendersFromVarVals(ClauseBody cb, ArrayList<Object> newBody, TreeMap knownGenders,
            TreeMap genderVarVals, TreeMap personToVarMap, TreeMap unequals) throws KSInternalErrorException {
        boolean progress = false;
        TreeMap knownGenderAddns = new TreeMap();
        Iterator varIter = personToVarMap.entrySet().iterator();
        while (varIter.hasNext()) {
            Map.Entry entry = (Map.Entry) varIter.next();
            String person = (String) entry.getKey(),
                    genderVar = (String) entry.getValue(),
                    varVal = (String) genderVarVals.get(genderVar),
                    personGender = (String) knownGenders.get(person);
            if (varVal != null && personGender != null && !varVal.equals(personGender)) {
                throw new KSInternalErrorException("Conflicting genders assigned in canonicalizePreds for "
                        + cb.ktd.kinTerm + ":" + cb.seqNmbr);
            } else if (varVal != null && personGender == null) {  //  we've induced someone's gender
                progress = true;
                Literal newLit = new Literal(new Predicate(varVal, (PredCategory) new PrimitiveCategory()));
                newLit.args.add(new Variable(person));
                addIfNotPresent(newLit, newBody, knownGenders, knownGenderAddns);
            } else if (varVal == null && personGender != null) {  //  we've found a variable's value
                progress = true;
                genderVarVals.put(genderVar, personGender);
                ArrayList<Object> opps = (ArrayList<Object>) unequals.get(genderVar);
                if (opps != null) {
                    for (int i = 0; i < opps.size(); i++) {
                        String oppVar = (String) opps.get(i),
                                oppVal = (String) genderVarVals.get(oppVar),
                                oppositeSex = (personGender.equals("male") ? "female" : "male");
                        if (oppVal != null && !oppVal.equals(oppositeSex)) {
                            throw new KSInternalErrorException("Conflicting genders assigned in canonicalizePreds for "
                                    + cb.ktd.kinTerm + ":" + cb.seqNmbr);
                        } else if (oppVal == null) {
                            genderVarVals.put(oppVar, oppositeSex);
                            withdrawInequalPred(genderVar, oppVar, newBody);
                        }
                    }  //  end of opps not null / loop thru opps
                }
            }  //  end of can infer varVal
        }  //  end of loop thru personToVarMap
        knownGenders.putAll(knownGenderAddns);
        return progress;
    }  //  end of method inferGendersFromVarVals

    public void subArgNames(String newNam, String oldNam, ArrayList<Object> body1, ArrayList<Object> body2,
            ArrayList<Object> oldNames, ArrayList<Object> newNames) {
        //  body1 & 2 are lists of Literals
        //  Replace every instance of newNam in body1's args with '$'+newNam.  ($ prevents name clashes)
        //  Replace every instance of oldNam in body2 with '$'+newNam.
        if (!oldNames.contains(oldNam)) {
            oldNames.add(oldNam);
        }
        if (!newNames.contains(newNam)) {
            newNames.add(newNam);
        }
        String repl = "$" + newNam;
        for (int i = 0; i < body1.size(); i++) {
            Literal lit = (Literal) body1.get(i);
            for (int j = 0; j < lit.args.size(); j++) {
                Argument arg = (Argument) lit.args.get(j);
                if (!(arg instanceof Literal)) {
                    if (arg.argName.equals(newNam)) {
                        arg.argName = repl;
                    }
                } else {  //  this arg is a Literal
                    ArrayList<Object> newBody = new ArrayList<Object>();
                    newBody.add((Literal) arg);
                    subArgNames(newNam, oldNam, newBody, new ArrayList<Object>(), oldNames, newNames);
                } //  end of process for literals
            } // end of loop thru args
        }  //  end of loop thru literals in body1
        for (int i = 0; i < body2.size(); i++) {
            Literal lit = (Literal) body2.get(i);
            for (int j = 0; j < lit.args.size(); j++) {
                Argument arg = (Argument) lit.args.get(j);
                if (!(arg instanceof Literal)) {
                    if (arg.argName.equals(oldNam)) {
                        arg.argName = repl;
                    }
                } else {  //  this arg is a Literal
                    ArrayList<Object> newBody = new ArrayList<Object>();
                    newBody.add((Literal) arg);
                    subArgNames(newNam, oldNam, new ArrayList<Object>(), newBody, oldNames, newNames);
                } //  end of process for literals
            } // end of loop thru args
        }  //  end of loop thru literals in body2
    }  //  end of method subArgNames

    public void addIfNotPresent(Literal newLit, ArrayList<Object> newBody, TreeMap knownGenders, TreeMap knownGenderAddns) {
        //  newLit is a new gender fact -- e.g. male(X) -- to be recorded.
        //  If knownGenderAddns != null, can't post directly to knownGenders for fear of ConcurrentModificationException
        if (knownGenderAddns == null) {
            knownGenderAddns = knownGenders;
        }
        String gender = newLit.predicate.name,
                personVar = ((Argument) newLit.args.get(0)).argName;
        if (knownGenders.get(personVar) == null) {
            knownGenderAddns.put(personVar, gender);
        }
        boolean foundIt = false;
        Iterator iter = newBody.iterator();
        while (iter.hasNext() && !foundIt) {
            Literal lit = (Literal) iter.next();
            if (lit.predicate.name.equals(gender)
                    && ((Argument) lit.args.get(0)).argName.equals(personVar)) {
                foundIt = true;
            }
        }  //  end of loop thru new Body
        if (!foundIt) {
            newBody.add(newLit);
        }
    }  //  end of method addIfNotPresent

    public void withdrawGenderPreds(ArrayList<Object> newBody, TreeMap personToVarMap, TreeMap knownGenders) {
        //  If newBody contains a lit like 'gender(X,Ego)' -- and we've inferred the gender of Ego --
        //  then remove that lit.  If we remove two genderPreds with args X & Y, then remove any lit
        //  like '(not(equals(X,Y))'
        ArrayList<Object> genderArgsKilled = new ArrayList<Object>();
        Iterator iter = personToVarMap.entrySet().iterator();
        while (iter.hasNext()) {
            Map.Entry entry = (Map.Entry) iter.next();
            String personVarName = (String) entry.getKey(),
                    genderVarName = (String) entry.getValue(),
                    gender = (String) knownGenders.get(personVarName);
            if (gender != null) {
                for (int i = 0; i < newBody.size(); i++) {
                    Literal lit = (Literal) newBody.get(i);
                    if (lit.predicate.name.equals("gender")
                            && ((Argument) lit.args.get(0)).argName.equals(genderVarName)
                            && ((Argument) lit.args.get(1)).argName.equals(personVarName)) {
                        newBody.remove(i);
                        genderArgsKilled.add(genderVarName);
                        i = newBody.size();  //  end the loop
                    }  // end of found-it
                }  //  end of gender != null & loop thru newBody
            }
        }  //  end of loop thru personToVarMap
        //  Now scan for not-equal literals
        if (genderArgsKilled.size() > 1) {
            iter = newBody.iterator();
            while (iter.hasNext()) {
                Literal lit = (Literal) iter.next();
                if (lit.predicate.name.equals("not")
                        && (lit.args.get(0) instanceof Literal)
                        && (((Literal) lit.args.get(0)).predicate.name.equals("equal"))
                        && genderArgsKilled.contains(((Argument) ((Literal) lit.args.get(0)).args.get(0)).argName)
                        && genderArgsKilled.contains(((Argument) ((Literal) lit.args.get(0)).args.get(1)).argName)) {
                    iter.remove();
                }
            }  //  end of 2nd loop thru newBody
        }  //  end of genderArgsKilled is not empty
    }  //  end of method withdrawGenderPreds

    public void withdrawInequalPred(String genderVar, String oppVar, ArrayList<Object> newBody) {
        //  newBody contains a lit like 'not(equal(X,Y))' -- remove it.
        boolean done = false;
        Iterator iter = newBody.iterator();
        while (iter.hasNext() && !done) {
            Literal lit = (Literal) iter.next();
            if (lit.predicate.name.equals("not")
                    && lit.args.size() == 1
                    && lit.args.get(0) instanceof Literal
                    && ((Literal) lit.args.get(0)).predicate.name.equals("equal")
                    && ((Literal) lit.args.get(0)).args.contains(genderVar)
                    && ((Literal) lit.args.get(0)).args.contains(oppVar)) {
                iter.remove();
            }
            done = true;
        }
    }  //  end of method withdrawInequalPred

    public void getGenderInfo(TreeMap knownGenders, TreeMap personToVarMap, TreeMap unequals, TreeMap oppoSex) {
        //  knownGenders = personVarName => gender (male/female)
        //  personToVarMap = personVarName => genderVarName
        //  unequals = varName to List_of_varNames
        //  oppoSex = personVarName to List_of_personVarNames
        for (int i = 0; i < body.size(); i++) {
            Literal lit = (Literal) body.get(i);
            if (arg0Males.contains(lit.predicate.name)) {
                knownGenders.put(((Argument) lit.args.get(0)).argName, "male");
                if (lit.predicate.name.equals("husband")) {
                    knownGenders.put(((Argument) lit.args.get(1)).argName, "female");
                }
            } else if (arg0Females.contains(lit.predicate.name)) {
                knownGenders.put(((Argument) lit.args.get(0)).argName, "female");
                if (lit.predicate.name.equals("wife")) {
                    knownGenders.put(((Argument) lit.args.get(1)).argName, "male");
                }
            } else if (lit.predicate.name.equals("spouse")) {
                String spouse0Name = ((Argument) lit.args.get(0)).argName,
                        spouse1Name = ((Argument) lit.args.get(1)).argName;
                if (oppoSex.get(spouse0Name) == null) {
                    oppoSex.put(spouse0Name, new ArrayList<Object>());
                }
                if (oppoSex.get(spouse1Name) == null) {
                    oppoSex.put(spouse1Name, new ArrayList<Object>());
                }
                ((ArrayList<Object>) oppoSex.get(spouse0Name)).add(spouse1Name);
                ((ArrayList<Object>) oppoSex.get(spouse1Name)).add(spouse0Name);
            } else if (lit.predicate.name.equals("gender")) {
                personToVarMap.put(((Argument) lit.args.get(1)).argName, ((Argument) lit.args.get(0)).argName);
            } else if (lit.predicate.name.equals("not")
                    && lit.args.size() == 1 && (Argument) lit.args.get(0) instanceof Literal
                    && ((Literal) lit.args.get(0)).predicate.name.equals("equal")) {
                String arg0 = ((Argument) ((Literal) lit.args.get(0)).args.get(0)).argName,
                        arg1 = ((Argument) ((Literal) lit.args.get(0)).args.get(1)).argName;
                if (unequals.get(arg0) == null) {
                    unequals.put(arg0, new ArrayList<Object>());
                }
                if (unequals.get(arg1) == null) {
                    unequals.put(arg1, new ArrayList<Object>());
                }
                ((ArrayList<Object>) unequals.get(arg0)).add(arg1);
                ((ArrayList<Object>) unequals.get(arg1)).add(arg0);
            }  //  end of not-equal processing
        }  //  end of loop thru body
    }  //  end of method getGenderInfo

    public void reFormLit(Literal lit, ArrayList<Object> newBody, TreeMap knownGenders, ArrayList<Object> boundVars, ArrayList<Object> gendersUsed)
            throws KSInternalErrorException {
        //  Put this lit in canonical form and add it to newBody
        String arg0Name = ((Argument) lit.args.get(0)).argName,
                arg1Name = (lit.args.size() < 2 ? null : ((Argument) lit.args.get(1)).argName),
                sex0 = (String) knownGenders.get(arg0Name),
                sex1 = (arg1Name == null ? null : (String) knownGenders.get(arg1Name)),
                predName = lit.predicate.name;
        boolean bound0 = false,
                bound1 = false;
        if (boundVars.contains(arg0Name)) {
            bound0 = true;
        } else {
            boundVars.add(arg0Name);
        }
        if (arg1Name != null && boundVars.contains(arg1Name)) {
            bound1 = true;
        } else if (arg1Name != null) {
            boundVars.add(arg1Name);
        }

        // 1) Pass along unchanged: gender specs, dead, divorced & not (incl all of arity 1)
        //	  mathVars and Standard Macros, and all auxiliaries
        if (exemptPreds.contains(predName) || predName.indexOf("<aux>") > -1) {
            newBody.add(lit);
            if ((arg0Males.contains(predName) || arg0Females.contains(predName)) && knownGenders.containsKey(arg0Name)
                    && !predName.equals("male") && !predName.equals("female")) {
                gendersUsed.add(arg0Name);
            }
            // 2) Set preferred arg order for elder/younger
        } else if (predName.equals("elder") || predName.equals("younger")) {
            if (arg0Name.equals("Ego") || arg1Name.equals("Alter")) {
                lit.reverseArgs();
            }
            newBody.add(lit);
            // 3) If no genders are known and both args bound, pass along unchanged
        } else if (sex0 == null && sex1 == null && bound0 && bound1) {
            newBody.add(lit);
            // 4) If no genders known & 1 arg is bound, boundArg = arg1 (affects parent/child/spouse/sibling)
        } else if (sex0 == null && sex1 == null) {
            if (bound0) {
                lit.reverseArgs();
            }
            newBody.add(lit);
            // 5) If 1 gender is known, that arg = arg0 (for spousal preds, we know both)
        } else if (sex0 != null && sex1 == null) {
            genderize(lit, sex0, false);
            gendersUsed.add(arg0Name);
            newBody.add(lit);
        } else if (sex1 != null && sex0 == null) {
            genderize(lit, sex1, true);
            gendersUsed.add(arg1Name);
            newBody.add(lit);
            // 6) If 2 genders known & 1 arg is bound, boundArg = arg1
        } else if (sex0 != null && sex1 != null && bound1 && !bound0) {
            genderize(lit, sex0, false);
            gendersUsed.add(arg0Name);
            if (lit.predicate.name.equals("husband") || lit.predicate.name.equals("wife")) {
                gendersUsed.add(arg1Name);
            }
            newBody.add(lit);
        } else if (sex0 != null && sex1 != null && bound0 && !bound1) {
            genderize(lit, sex1, true);
            gendersUsed.add(arg1Name);
            if (lit.predicate.name.equals("husband") || lit.predicate.name.equals("wife")) {
                gendersUsed.add(arg0Name);
            }
            newBody.add(lit);
            // 7) If 2 genders known and 2 args bound, use preferred arg order
        } else if (sex0 != null && sex1 != null && bound0 && bound1) {
            if (arg0Name.equals("Ego") || arg1Name.equals("Alter")) {
                genderize(lit, sex1, true);
                gendersUsed.add(arg1Name);
                if (lit.predicate.name.equals("husband") || lit.predicate.name.equals("wife")) {
                    gendersUsed.add(arg0Name);
                }
            } else {
                genderize(lit, sex0, false);
                gendersUsed.add(arg0Name);
                if (lit.predicate.name.equals("husband") || lit.predicate.name.equals("wife")) {
                    gendersUsed.add(arg1Name);
                }
            }
            newBody.add(lit);
        }
    }  //  end of method reFormLit

    public void genderize(Literal lit, String arg0Sex, boolean swap) throws KSInternalErrorException {
        if (swap) {
            lit.reverseArgs();
        }
        int cell = DT_Abstract2.neuterPreds.indexOf(lit.predicate.name);
        if (cell > -1) {
            ArrayList<Object> newPreds = (arg0Sex.equals("male") ? DT_Abstract2.malePreds : DT_Abstract2.femalePreds);
            lit.predicate.name = (String) newPreds.get(cell);
        }
    }  //  end of method genderize

    public boolean invalid() {
        Argument arg;
        Literal lit;
        ArrayList<Object> firstMention = new ArrayList<Object>(), otherMentions = new ArrayList<Object>();
        firstMention.add("Ego");	//  Ego & Alter are the only 2 variables
        firstMention.add("Alter");	//  it's OK to mention just once.
        for (int i = 0; i < body.size(); i++) {
            lit = (Literal) body.get(i);
            lit.countArgs(firstMention, otherMentions);
        }  //  end of loop thru literals
        if (firstMention.size() == otherMentions.size()) {
            return false;
        }
        //  Ooops.  Imbalance.  Analyze and report back.
        Iterator firstIter = firstMention.iterator();
        String argName, plural = "", reason = "";
        ArrayList<Object> goofs = new ArrayList<Object>();
        while (firstIter.hasNext()) {
            argName = (String) firstIter.next();
            if (!otherMentions.contains(argName)) {
                goofs.add(argName);
            }
        }
        if (goofs.size() > 1) {
            plural = "s";
        }
        reason += "The following clause contains single reference" + plural + " to '";
        reason += goofs.get(0) + "'";
        for (int j = 1; j < goofs.size(); j++) {
            reason += ", '" + goofs.get(j) + "'";
        }
        reason += ".\n" + lineBreaker(body) + "\nThis makes no sense.\n";
        Parser.errorFound = reason;
        return true;
    }  //  end of method invalid()

    /**	A Utility class, designed to hold a string value and behave like a String; the one difference being that
    2 StringObjs with the same String value are not equal.  For handling lists of PC-Strings, where there may be
    duplicates that must be treated separately (and differently).
     */
    public static class StringObj {

        public String value;

        public StringObj(String str) {
            value = str;
        }

        public boolean equivalent(StringObj other) {
            return value.equals(other.value);
        }  // end of method equivalent

        public boolean equivalent(String other) {
            return value.equals(other);
        }  // end of method equivalent

        public String toString() {
            return value;
        }
    }  //  end of inner class StringObj
}  // end of class ClauseBody

