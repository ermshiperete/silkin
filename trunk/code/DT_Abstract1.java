
import java.util.*;
import java.text.*;
import java.io.*;

/** This class begins the definition of a Domain Theory in Prolog syntax.  In this system, a Domain Theory is a grammar
defining a Kinship System.  This is the level at which 90% of the action takes place in Active Learning.
<p>
Because so many methods are defined at the Domain Theory level, the code files are broken into 4 classes:  
DT_Abstract1, DT_Abstract12, & DomainTheory. 

@author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
 */
public abstract class DT_Abstract1 implements Serializable {

    /**  This global variable records whether the Domain Theory currently in focus concerns
    Terms of Address (true)  or Terms of Reference (false).
     */
    public static boolean addrTerms = false;
    public static DomainTheory current;
    public static final TreeMap standardMacroTree = new TreeMap();  //  quick index of these macros
    public static String[] primPredNames = {"father", "mother", "parent", "child", "husband", "wife", "spouse",
        "son", "daughter", "male", "female", "elder", "younger", "equal", "not", "divorced", "dead",
        "gender", "lessThan", "greaterThan", "lessOrEql ", "greaterOrEql", "contains", "allowCreation",
        "sibling", "parents", "siblings", "brother", "sister", "half_brother", "half_sister", "step_brother",
        "step_sister", "step_father", "step_mother", "children", "step_son", "step_daughter", "spice"};
    //  A single instance of each of the 24 primitive predicate names; to be replaced by codes
    //  in the CompactCBStrings used in CB_Index
    public static final TreeMap primitiveCodes = loadPrimitiveCodes();

    public static TreeMap loadPrimitiveCodes() {
        TreeMap theMap = new TreeMap();
        for (int i = 0; i < 24; i++) {
            theMap.put(primPredNames[i], new Integer(i));
        }
        for (int i = 24; i < 39; i++) {
            theMap.put(primPredNames[i], new Integer(i));
            standardMacroTree.put(primPredNames[i], primPredNames[i]);
        }
        return theMap;
    }  //  end of static method loadPrimitiveCodes

    public static boolean isPrimOrMacro(String predName) {
        for (int i = 0; i < primPredNames.length; i++) {
            if (primPredNames[i].equals(predName)) {
                return true;
            }
        }
        return false;
    }  //  end of class method isPrimOrMacro

    public static TreeMap mergeTrees(TreeMap tree1, TreeMap tree2) {
        //  merge 2 trees that are exactStr -> dyadList.
        if (tree1 == null || tree1.isEmpty()) {
            return tree2;
        }
        if (tree2 == null || tree2.isEmpty()) {
            return tree1;
        }
        TreeMap merg = new TreeMap(tree1);
        Iterator trIter = tree2.entrySet().iterator();
        while (trIter.hasNext()) {
            Map.Entry entry = (Map.Entry) trIter.next();
            String exactStr = (String) entry.getKey();
            if (merg.get(exactStr) == null) {
                merg.put(exactStr, entry.getValue());
            } else {  //  leave old entry un-modified -- make new copy
                ArrayList<Object> list1 = new ArrayList<Object>((ArrayList<Object>) merg.get(exactStr)),
                        list2 = (ArrayList<Object>) entry.getValue();
                for (int i = 0; i < list2.size(); i++) {
                    Dyad dy = (Dyad) list2.get(i);
                    if (!list1.contains(dy)) {
                        list1.add(dy);
                    }
                }
                merg.put(exactStr, list1);
            }  //  end of make-merged-list
        }  //  end of loop thru tree2 entries
        return merg;
    }  //  end of method mergeTrees

    public static TreeMap mergeNestedTrees(TreeMap tree1, TreeMap tree2) {
        //  merge 2 trees that are kinTerm => exactStr => dyadList.
        if (tree1 == null || tree1.isEmpty()) {
            return new TreeMap(tree2);
        }
        if (tree2 == null || tree2.isEmpty()) {
            return new TreeMap(tree1);
        }
        TreeMap merg = new TreeMap(tree1),
                source = new TreeMap(tree2);
        Iterator trIter = source.entrySet().iterator();
        while (trIter.hasNext()) {
            Map.Entry entry = (Map.Entry) trIter.next();
            String kinTerm = (String) entry.getKey();
            if (merg.get(kinTerm) == null) {
                merg.put(kinTerm, entry.getValue());
            } else {  //  merge the 2 sub-trees
                TreeMap subTree1 = (TreeMap) merg.get(kinTerm);
                TreeMap subTree2 = (TreeMap) entry.getValue();
                merg.put(kinTerm, mergeTrees(subTree2, subTree1));
            }  //  end of merge-the-sub-trees
        }  //  end of loop thru tree2 entries
        return merg;
    }  //  end of method mergeNestedTrees

    //       Class Variables        //
    Context ctxt;           //  Ptr to enclosing Context.
    String languageName;    // name of the language or people group
    String author;		// field worker who devised theory or gathered data
    String createDate;	// date domain theory was developed (not necessarily the date computerized).
    String citation;        // documents source of this domain theory in the literature.
    String filePath;        // pathname to the file which contains this domain theory.
    ArrayList<Object> nonTerms = new ArrayList<Object>();  // predicates that should not be printed.  Not really kinTerms.
    //  These flags (enclosed in square brackets) on any definition make it non-printing.
    ArrayList<Object> nonTermFlags = new ArrayList<Object>();
    boolean partial = false;  // 'true' if this is a partial theory, an example
    // of a particular kinship pattern from the literature.
    boolean polygamyOK = true;	// default: true = multiple spice allowed
    boolean addressTerms = false;  // default = this is a theory for Terms of Reference
    int levelsOfRecursion = 1;  //  the number of recursive levels to 'unwind' explicitly in an expanded def
    TreeMap theory;             // structure: kinTerm => KinTermDef.
    TreeMap userDefinedProperties;  // A TMap of UDPs, stored here during parsing.  Then moved to Context.
    DyadTMap dyadsUndefined = new DyadTMap(),
             dyadsDefined = new DyadTMap();
    TreeMap synonyms, umbrellas, overlaps, potUmbrellas, nonUmbrellas, nonOverlaps;
    TreeMap<String, ArrayList<Issue>> issuesForUser = new TreeMap<String, ArrayList<Issue>>();
    ArrayList<Object> nonSynonyms;
    //  NOTE:  structure of umbrellas is:  umbTerm -> list-of-subsumed-terms
    //		   structure of potUmbrellas is:  umbTerm -> {list of pcStrings, Quad, ... Quad }
    //				where Quad = {subTerm, list of its pcStrings, list of Dyads, filterType}
    //		   structure of synonyms is:  synonym -> baseTerm
    //		   structure of overlaps is:  term => ArrayList<Object> of overlapping terms
    //		   structure of nonOverlaps is:  term => ArrayList<Object> of rejected terms	
    //		   structure of issuesForUser is:  kinTerm -> ArrayList<Object>-of-Issues
    //  The nonUmbrellas & nonSynonyms record suggested terms specifically rejected by User.
    //		   structure of nonSynonymns is: ArrayList<Object>-of word1_word2 pairs (words in lexico order)
    //		   structure of nonUmbrellas is: RejectedUmbTerm => ArrayList<Object>-of-rejectedSubTerms

    public boolean isEmpty() {
        if (theory != null && ! theory.isEmpty()) return false;
        if (userDefinedProperties != null && ! userDefinedProperties.isEmpty()) return false;
        if (! dyadsUndefined.isEmpty()) return false;
        if (! dyadsDefined.isEmpty()) return false;
        if (synonyms != null && ! synonyms.isEmpty()) return false;
        if (umbrellas != null && ! umbrellas.isEmpty()) return false;
        if (overlaps != null && ! overlaps.isEmpty()) return false;
        if (issuesForUser != null && ! issuesForUser.isEmpty()) return false;
        return true;
    }

    
    void addTerm(KinTermDef ktd) throws KSParsingErrorException {
        KinTermDef priorDef = (KinTermDef) theory.get(ktd.kinTerm);
        //  It is OK to overwrite a temporary aux during learning.
        if (priorDef == null || ktd.kinTerm.indexOf("<temp_aux>") > -1) {
            theory.put(ktd.kinTerm, ktd);
            ktd.domTh = (DomainTheory) this;
        } else {
            throw new KSParsingErrorException("Attempt to re-define kinTerm " + ktd.kinTerm
                    + "\nin DomainTheory " + languageName);  //  identify where the activity is
        }
    }	// end of method for adding a term to the theory

    public void toThyFile(PrintWriter file) throws KSInternalErrorException {
        file.println(";;  Horn Clause Representation of " + languageName
                + " Kinship Term-of-" + (addressTerms ? "Address" : "Reference") + " Rules");
        file.println("\n;;  The following 'header' gives some basic parameters of this kinship system:");
        file.print("(languageName, \"" + languageName + "\") ");
        if (author != null) {
            file.print("(author, \"" + author + "\") ");
        }
        if (createDate != null) {
            file.print("(date, \"" + createDate + "\") ");
        }
        if (citation != null) {
            file.println("(citation, \"" + citation + "\") ");
        }
        if ((nonTerms.size() + nonTermFlags.size()) > 0) {
            String image = "(non_term, ";
            for (int i = 0; i < nonTermFlags.size(); i++) {
                image += "[" + nonTermFlags.get(i) + "], ";
            }
            for (int i = 0; i < nonTerms.size(); i++) {
                image += nonTerms.get(i) + ", ";
            }
            image = image.substring(0, image.length() - 2) + ") ";
            file.print(image);
        }  //  end of if-there-are-non-Terms-or-flags
        file.print("(partial, " + (partial ? "true) " : "false) "));
        file.print("(polygamyOK, " + (ctxt.polygamyPermit ? "true) " : "false) "));
        file.print("(address, " + (addressTerms ? "true) " : "false) "));
        file.println("(recursiveLevels, " + levelsOfRecursion + ")");
        if (synonyms != null) {
            file.print("(synonyms, ");
            Iterator synIter = synonyms.entrySet().iterator();
            while (synIter.hasNext()) {
                Map.Entry entry = (Map.Entry) synIter.next();
                file.print("(" + entry.getValue() + ", " + entry.getKey() + ")");
                if (synIter.hasNext()) {
                    file.print(", ");
                }
            }
            file.println(")");
        }  //  end of writing synonyms
        if (overlaps != null) {
            file.print("(overlaps, ");
            String holder = "";
            Iterator iter = overlaps.entrySet().iterator();
            while (iter.hasNext()) {
                Map.Entry entry = (Map.Entry) iter.next();
                holder += "(" + entry.getKey() + ", " + entry.getValue() + ")";
                if (iter.hasNext()) {
                    holder += ", ";
                }
            }
            holder = holder.replace(", [", ", (");
            holder = holder.replace("])", "))");
            file.println(holder + ")");
        }  //  end of writing overlaps
        if (umbrellas != null) {
            file.print("(umbrellas, ");
            String holder = "", smpl = "[]()";
            char leftSq = smpl.charAt(0), rightSq = smpl.charAt(1),
                    leftParen = smpl.charAt(2), rightParen = smpl.charAt(3);
            Iterator umbIter = umbrellas.entrySet().iterator();
            while (umbIter.hasNext()) {
                Map.Entry entry = (Map.Entry) umbIter.next();
                holder += "(" + entry.getKey() + ", " + entry.getValue() + ")";
                if (umbIter.hasNext()) {
                    holder += ", ";
                }
            }
            holder = holder.replace(leftSq, leftParen);
            holder = holder.replace(rightSq, rightParen);
            file.println(holder + ")");
        }  //  end of writing umbrellas
        TreeMap udps = ctxt.userDefinedProperties;
        //  Define UDPs, if any
        if ((udps != null) && (udps.size() > 0)) {
            file.println("(userDefinedProperties, ");
            UserDefinedProperty udp;
            String quoter;
            Iterator udIter = udps.values().iterator();
            while (udIter.hasNext()) {
                udp = (UserDefinedProperty) udIter.next();
                file.print("\t(" + udp.starName + ", type, " + udp.typ + ", single_value, " + udp.singleValue);
                //  next items are optional
                if ((udp.typ.equals("string")) || (udp.typ.equals("boolean"))) {
                    quoter = "\"";
                } else {
                    quoter = "";
                }
                if ((udp.validEntries != null) && (udp.validEntries.size() > 0)) {
                    int sz = udp.validEntries.size();
                    file.print(", restricted_to, (");
                    for (int i = 0; i < sz; i++) {
                        if (i > 0) {
                            file.print(", ");
                        }
                        file.print(quoter + udp.validEntries.get(i) + quoter);
                    }  //  end of loop through validEntries
                    file.print(")");
                }  //  end of there-are-validEntries
                if (udp.defaultValue != null) {
                    file.print(", default, " + quoter + udp.defaultValue + quoter);
                }
                file.println(")" + (udIter.hasNext() ? "," : ""));
            }  //  end of loop thru UDP's
            file.println("  )");
        }  //  end of there-are-UDPs
        Iterator iter = theory.values().iterator();
        file.println("\n\n;;  Kin Term Definitions:");
        file.println(";;\t(Standard Macros are automatically incorporated.)");
        while (iter.hasNext()) {
            file.println("\n" + ((KinTermDef) iter.next()).toThyString());
        }
        file.flush();
        file.close();
    }  //  end of method toThyFile

    public String toSILKString(String bacer) {
        String spacer = "\t", dblSpacer = "\t\t";
        String s = bacer + "<domain-theory type=\"" + (addressTerms ? "Adr" : "Ref") + "\">\n";
        if (citation != null && !citation.isEmpty()) {
            s += bacer + spacer + "<citation text=\"" + citation + "\"/>\n";
        }
        if (nonTerms != null && !nonTerms.isEmpty()) {
            s += bacer + spacer + "<non-terms>\n";
            for (Object o : nonTerms) {
                s += bacer + dblSpacer + "<non-term value=\"" + o + "\"/>\n";
            }
            s += bacer + spacer + "</non-terms>\n";
        }
        if (nonTermFlags != null && !nonTermFlags.isEmpty()) {
            s += bacer + spacer + "<non-term-flags>\n";
            for (Object o : nonTermFlags) {
                s += bacer + dblSpacer + "<non-term-flag value=\"" + o + "\"/>\n";
            }
            s += bacer + spacer + "</non-term-flags>\n";
        }
        s += bacer + spacer + "<levels-of-recursion n=\"" + levelsOfRecursion + "\"/>\n";
        if (theory != null && !theory.isEmpty()) {
            s += bacer + spacer + "<theory>\n";
            Iterator iter = theory.values().iterator();
            while (iter.hasNext()) {
                KinTermDef ktd = (KinTermDef)iter.next();
                s += ktd.toSILKString(bacer + dblSpacer, false) + "\n";
            }
            s += bacer + spacer + "</theory>\n";
        }
        if (synonyms != null && !synonyms.isEmpty()) {
            s += bacer + spacer + "<synonyms>\n";
            Iterator iter = synonyms.entrySet().iterator();
            while (iter.hasNext()) {
                Map.Entry<String, String> entry = (Map.Entry<String, String>)iter.next();
                String sub = entry.getKey(), base = entry.getValue();
                s += bacer + dblSpacer + "<pair subTerm=\"" + sub + "\" baseTerm=\"" + base + "\"/>\n";
            }
            s += bacer + spacer + "</synonyms>\n";
        }
        if (umbrellas != null && !umbrellas.isEmpty()) {
            s += bacer + spacer + "<umbrellas>\n";
            Iterator iter = umbrellas.entrySet().iterator();
            while (iter.hasNext()) {
                Map.Entry<String, ArrayList<String>> entry = (Map.Entry<String, ArrayList<String>>)iter.next();
                String umbTerm = entry.getKey();
                ArrayList<String> subTerms = entry.getValue();
                s += bacer + dblSpacer + "<umbrella umbTerm=\"" + umbTerm + "\">\n";
                for (String subTerm : subTerms) {
                    s += bacer + dblSpacer + spacer + "<sub-term value=\"" + subTerm + "\"/>\n";
                }
                s += bacer + dblSpacer + "</umbrella>\n";
            }
            s += bacer + spacer + "</umbrellas>\n";
        }
        if (overlaps != null && !overlaps.isEmpty()) {
            s += bacer + spacer + "<overlaps>\n";
            Iterator iter = overlaps.entrySet().iterator();
            while (iter.hasNext()) {
                Map.Entry<String, ArrayList<String>> entry = (Map.Entry<String, ArrayList<String>>)iter.next();
                String baseTerm = entry.getKey();
                ArrayList<String> olapTerms = entry.getValue();
                s += bacer + dblSpacer + "<overlap baseTerm=\"" + baseTerm + "\">\n";
                for (String olapTerm : olapTerms) {
                    s += bacer + dblSpacer + spacer + "<overlap-term value=\"" + olapTerm + "\"/>\n";
                }
                s += bacer + dblSpacer + "</overlap>\n";
            }
            s += bacer + spacer + "</overlaps>\n";
        }
        if (nonSynonyms != null && !nonSynonyms.isEmpty()) {
            s += bacer + spacer + "<nonSynonyms>\n";
            for (Object o : nonSynonyms) {
                String nonPair = (String)o;
                int slash = nonPair.indexOf("/");
                String tm1 = nonPair.substring(0, slash);
                String tm2 = nonPair.substring(slash +1);
                s += bacer + dblSpacer + "<nonSynonym term1=\"" + tm1 + "\" term2=\"" + tm2 + "\"/>\n";
            }
            s += bacer + spacer + "</nonSynonyms>\n";
        }
        if (nonOverlaps != null && !nonOverlaps.isEmpty()) {
            s += bacer + spacer + "<nonOverlaps>\n";
            Iterator iter = nonOverlaps.entrySet().iterator();
            while (iter.hasNext()) {
                Map.Entry<String, ArrayList<String>> entry = (Map.Entry<String, ArrayList<String>>)iter.next();
                String baseTerm = entry.getKey();
                ArrayList<String> olapTerms = entry.getValue();
                s += bacer + dblSpacer + "<nonOverlap baseTerm=\"" + baseTerm + "\">\n";
                for (String olapTerm : olapTerms) {
                    s += bacer + dblSpacer + spacer + "<nonOverlap-term value=\"" + olapTerm + "\"/>\n";
                }
                s += bacer + dblSpacer + "</nonOverlap>\n";
            }
            s += bacer + spacer + "</nonOverlaps>\n";
        }
        if (nonUmbrellas != null && !nonUmbrellas.isEmpty()) {
            s += bacer + spacer + "<nonUmbrellas>\n";
            Iterator iter = nonUmbrellas.entrySet().iterator();
            while (iter.hasNext()) {
                Map.Entry<String, ArrayList<String>> entry = (Map.Entry<String, ArrayList<String>>)iter.next();
                String umbTerm = entry.getKey();
                ArrayList<String> subTerms = entry.getValue();
                s += bacer + dblSpacer + "<nonUmbrella umbTerm=\"" + umbTerm + "\">\n";
                for (String subTerm : subTerms) {
                    s += bacer + dblSpacer + spacer + "<sub-term value=\"" + subTerm + "\"/>\n";
                }
                s += bacer + dblSpacer + "</nonUmbrella>\n";
            }
            s += bacer + spacer + "</nonUmbrellas>\n";
        }        
        s += bacer + "</domain-theory>\n";
        return s;
    }

    public String toString() {
        String partiality = "", polygamy, recursion = "", image = "Kin Term Domain: " + languageName;
        if (ctxt.polygamyPermit) {
            polygamy = "  (polygamous)";
        } else {
            polygamy = "  (monogamous)";
        }
        if (partial) {
            partiality = " (partial theory)";
        }
        if (levelsOfRecursion != 1) {
            recursion = "  (" + levelsOfRecursion + " levels of recursion)";
        }
        image += polygamy + partiality + recursion + "\nField Worker/Analyst: " + author;
        image += "\nCreate Date: " + createDate + "\n";
        if (citation != null) {
            image += "Source: " + citation + "\n";
        }
        Collection values = theory.values();
        Iterator iter = values.iterator();
        image += "\nKin Term Definitions: ";
        while (iter.hasNext()) {
            image += "\n" + iter.next();
        }
        image += "\n---- End ----\n";
        return image;
    }  // end for now.

    public boolean printableTerm(KinTermDef ktd) {
        if (nonTerms.contains(ktd.kinTerm)) {
            return false;
        }
        if (synonyms != null && synonyms.containsKey(ktd.kinTerm)) {
            return false;
        }
        for (int i = 0; i < ktd.flags.size(); i++) {
            if (nonTermFlags.contains(ktd.flags.get(i))) {
                return false;
            }
        }
        return true;
    }  //  end of method printableTerm

    public boolean nonSynNonMacro(KinTermDef ktd) {
        if ((synonyms != null && synonyms.containsKey(ktd.kinTerm)) //  a synonym
                || standardMacroTree.containsKey(ktd.kinTerm)) {
            return false;
        } else {
            return true;
        }
    }  //  end of method nonSynNonMacro

    public boolean nonMacro(KinTermDef ktd) {
        if (standardMacroTree.containsKey(ktd.kinTerm)) {
            return false;
        } else {
            return true;
        }
    }  //  end of method nonMacro

    public boolean nonTerm(String term) {
        if (nonTerms.contains(term)) {
            return true;
        }
        KinTermDef ktd = (KinTermDef) theory.get(term);
        if (ktd == null) {
            return true;
        }
        for (int i = 0; i < ktd.flags.size(); i++) {
            if (nonTermFlags.contains(ktd.flags.get(i))) {
                return true;
            }
        }
        return false;
    }  //  end of method nonMacro

    public boolean printableBaseTerm(KinTermDef ktd) {
        if (ktd == null) {
            return true;
        }
        if (nonTerms.contains(ktd.kinTerm)) {
            return false;
        }
        for (int i = 0; i < ktd.flags.size(); i++) {
            if (nonTermFlags.contains(ktd.flags.get(i))) {
                return false;
            }
        }
        return true;
    }  //  end of method printableBaseTerm

    public ArrayList<Object> maleAndFemaleCreatedHeThem() {
        Individual malEgo = new Individual("Ego", "M"), femalEgo = new Individual("Ego", "F");
        //  NOTE:  May be creating egos for some other DT & Context.current
        if (Context.current.domTheoryAdrExists()) {
            malEgo.node.kinTermsAddr.add("Ego");
            femalEgo.node.kinTermsAddr.add("Ego");
        }
        if (Context.current.domTheoryRefExists()) {
            malEgo.node.kinTermsRef.add("Ego");
            femalEgo.node.kinTermsRef.add("Ego");
        }
        malEgo.setDateOfBirth("1970-01-01");
        femalEgo.setDateOfBirth("1970-01-01");
        malEgo.node.setLevel(0);
        femalEgo.node.setLevel(0);
        ArrayList<Object> result = new ArrayList<Object>();
        result.add(malEgo);
        result.add(femalEgo);
        return result;
    }  //  end of pretentiously-titled-method

    public void fillInNames(Individual ego) throws KSBadHornClauseException, KSInternalErrorException,
            KSConstraintInconsistency, KSNoChainOfRelations2Alter, ClassNotFoundException {
        //  For all the persons in a context, fill in their kinTerm names (relative to Ego)
        //  per this domain theory.
        KinTermDef ktd;
        String kinTerm;
        ClauseBody cb;
        Iterator ktditer = theory.values().iterator();
        boolean suppressPrint;
        //  first we'll fill_in_names for all gender-neutral kin terms
        while (ktditer.hasNext()) {
            ktd = (KinTermDef) ktditer.next();
            kinTerm = ktd.kinTerm;
            suppressPrint = false;
            for (int i = 0; i < ktd.flags.size(); i++) {
                if (nonTermFlags.contains(ktd.flags.get(i))) {
                    suppressPrint = true;
                }
            }
            if (!(nonTerms.contains(kinTerm) || suppressPrint)) {
                Iterator defiter = ktd.expandedDefs.iterator();
                while (defiter.hasNext()) {
                    cb = (ClauseBody) defiter.next();
                    //  fill in egoNum the first time thru
                    cb.egoNum = ego.serialNmbr;
                    if (cb.genderOfAlter.equals("?")) {
                        cb.fillInNames(ego, kinTerm);
                    }
                }  //  end of for each expanded definition
            }  //  end of if-not-convenience-kinterm
        }  //  end of for-each-kinTermDef
        ktditer = theory.values().iterator();
        //  now do it for gender-specific terms.
        //  delayed-ID terms can be handled like the others, 'cuz we're not creating any people, just labeling
        while (ktditer.hasNext()) {
            ktd = (KinTermDef) ktditer.next();
            kinTerm = ktd.kinTerm;
            suppressPrint = false;
            for (int i = 0; i < ktd.flags.size(); i++) {
                if (nonTermFlags.contains(ktd.flags.get(i))) {
                    suppressPrint = true;
                }
            }
            if (!(nonTerms.contains(kinTerm) || suppressPrint)) {
                Iterator defiter = ktd.expandedDefs.iterator();
                while (defiter.hasNext()) {
                    cb = (ClauseBody) defiter.next();
                    if (!(cb.genderOfAlter.equals("?"))) {
                        cb.fillInNames(ego, kinTerm);
                    }
                }  //  end of for each expanded definition
            }  //  end of if-not-convenience-kinterm
        }  //  end of for-each-kinTermDef
    }  //  end of method fillInNames

    /** 
    Create a GEDCOM file containing hypothetical people who illustrate each definition of each kinTerm
    in this Domain Theory.

    @param	fileName    the filename to create in GEDCOM format.
    @param	sex         the gender of Ego in the hypothetical population

    @throws     KSBadHornClauseException    if a clause is encountered for which it cannot create an example
    @throws     JavaSystemException         if Java throws a run-time exception
    @throws     KSInternalErrorException    if an internal processing activity occurs
    @throws     KSConstraintInconsistency   if the constraints on a person (imposed by the literals in a clause)
    are inconsistent.  For example:  male(X) and female(X).
    @throws     KSNoChainOfRelations2Alter  if a clause is encountered with no "path" from Ego to Alter via its literals.
    For example:  'foo(Alter,Ego) :- parent(P,Ego), child(Alter,Q).' is wrong.
    But 'foo(Alter,Ego) :- parent(P,Ego), sibling(P,Q), child(Alter,Q).' is OK.
     */
    public void makeExampleGEDCOMFile(String fileName, String sex)
            throws KSBadHornClauseException, JavaSystemException, KSInternalErrorException, KSConstraintInconsistency,
            KSNoChainOfRelations2Alter, ClassNotFoundException {
        makeExampleGEDCOMFile(fileName, sex, Context.current, null);
    }  //  end of makeExampleGEDCOMFile with 2 args

    /** 
    Create a GEDCOM file containing hypothetical people who illustrate each definition of each kinTerm
    in this Domain Theory.

    @param	fileName    the filename to create in GEDCOM format.
    @param	sex         the gender of Ego in the hypothetical population
    @param	hypo        the hypothetical context.
    @param	options     If it contains 'theory' then a file will be written with a full expansion of this
    domain theory and some diagnostic information.  If it contains 'census' then a printable
    listing of all Individuals and Families will be written to a file.

    @throws     KSBadHornClauseException    if a clause is encountered for which it cannot create an example
    @throws     JavaSystemException         if Java throws a run-time exception
    @throws     KSInternalErrorException    if an internal processing activity occurs
    @throws     KSConstraintInconsistency   if the constraints on a person (imposed by the literals in a clause)
    are inconsistent.  For example:  male(X) and female(X).
    @throws     KSNoChainOfRelations2Alter  if a clause is encountered with no "path" from Ego to Alter via its literals.
    For example:  'foo(Alter,Ego) :- parent(P,Ego), child(Alter,Q).' is wrong.
    But 'foo(Alter,Ego) :- parent(P,Ego), sibling(P,Q), child(Alter,Q).' is OK.
     */
    public void makeExampleGEDCOMFile(String fileName, String sex, Context hypo, String options)
            throws KSBadHornClauseException, JavaSystemException, KSInternalErrorException, KSConstraintInconsistency,
            KSNoChainOfRelations2Alter, ClassNotFoundException {
        try {
            PrintWriter outFile = new PrintWriter(new BufferedWriter(new FileWriter(fileName)));
            addrTerms = addressTerms;
            current = (DomainTheory) this;
            KinTermDef ktd;
            ArrayList<Object> egoBag = maleAndFemaleCreatedHeThem();
            Collection values = theory.values();
            Iterator iter = values.iterator();  //  each value is a KinTermDef
            boolean suppressPrint, selectedKinTerm, selectAll = false;
            if (hypo.selectedKinTerms == null) {
                selectAll = true;
            }
            //  If the term selection list is empty, select all terms; else, pick only those in the list.
            //  Terms deemed 'non_terms' in the domain theory (or those with non_term Flags) are NEVER printed
            ArrayList<Object> round2 = new ArrayList<Object>();
            while (iter.hasNext()) {
                ktd = (KinTermDef) iter.next();
                if (ktd.expandedDefs == null || ktd.expandedDefs.isEmpty()) //  Std Macros are already expanded
                {
                    ktd.expandClauses(hypo);
                }
                suppressPrint = false;
                for (int i = 0; i < ktd.flags.size(); i++) {
                    if (nonTermFlags.contains(ktd.flags.get(i))) {
                        suppressPrint = true;
                    }
                }
                if ((!(nonTerms.contains(ktd.kinTerm) || suppressPrint))
                        && (selectAll || (Context.current.selectedKinTerms.contains(ktd.kinTerm)))) {
                    if (ktd.hasDelayFlags()) {
                        round2.add(ktd);
                    } else {
                        ktd.generateExamples(hypo, egoBag, null);
                    }
                }
            }  // end of while hasNext()
            MainPane.fill_In_Flag = true;
            for (int j = 0; j < round2.size(); j++) {  //  in Round 2, process delayed-ID terms
                ktd = (KinTermDef) round2.get(j);
                ktd.generateExamples(hypo, egoBag, null);
            }
            MainPane.fill_In_Flag = false;
            Individual ego;
            for (int i = 0; i < egoBag.size(); i++) {
                ego = (Individual) egoBag.get(i);
                fillInNames(ego);
            }
            hypo.exportGEDCOM(outFile, fileName, "Include");
            outFile.flush();
            outFile.close();
            if (options != null) {
                int stop = fileName.lastIndexOf("/") + 1;
                String pathname = fileName.substring(0, stop);
                int bodyStop = fileName.lastIndexOf(".");
                if (bodyStop < stop + 1) {
                    bodyStop = fileName.length();
                }
                String fileBodyName = fileName.substring(stop, bodyStop);
                if (options.indexOf("theory") >= 0) {
                    String theoryFile = pathname + fileBodyName + ".thy", addRef = "reference";
                    PrintWriter thyFile = new PrintWriter(new BufferedWriter(new FileWriter(theoryFile)));
                    if (addressTerms) {
                        addRef = "address";
                    }
                    hypo.printTheory(thyFile, addRef);
                    System.out.println(" ");
                    System.out.println("\n * * * * * * * * * * * * * * * * * *");
                    System.out.println(" Domain Theory File was created.");
                    System.out.println(" * * * * * * * * * * * * * * * * * *");
                }  //  end of theory-option-is-invoked
                if (options.indexOf("census") >= 0) {
                    String censusFile = pathname + languageName + ".cen";
                    PrintWriter cenFile = new PrintWriter(new BufferedWriter(new FileWriter(censusFile)));
                    hypo.printCensus(cenFile);
                    System.out.println(" ");
                    System.out.println("\n * * * * * * * * * * * * * *");
                    System.out.println(languageName + " Census File was created.");
                    System.out.println(" * * * * * * * * * * * * * *");
                }  //  end of theory-option-is-invoked
            }  //  end of options-isn't-null
        } catch (IOException e) {
            throw new JavaSystemException("DomainTheory File Creation failed:\n" + e);
        }  // end of catch block
        return;
    }  // end of method makeExampleGEDCOMFile

    public static ArrayList<Object> harvestLeaves(TreeMap tree) {
        //  gather leaves from TreeMaps with sub-trees as TreeMaps or ALists
        ArrayList<Object> bag = new ArrayList<Object>();
        if (tree == null) {
            return bag;
        }
        Iterator topIter = tree.values().iterator();
        while (topIter.hasNext()) {
            Object level2 = topIter.next();
            if (level2 instanceof TreeMap) {
                bag.addAll(harvestLeaves((TreeMap) level2));
            } else if (level2 instanceof ArrayList) {
                bag.addAll((ArrayList<Object>) level2);
            }
        }
        return bag;
    }  //  end of method harvestLeaves

    public static int countLeaves(TreeMap tree) {
        //  designed to work on TreeMaps with sub-trees as TreeMaps or ALists
        //  if the subtree contains Nodes, count each node as 1 item
        if (tree == null) {
            return 0;
        }
        int leafCnt = 0;
        Iterator topIter = tree.values().iterator();
        while (topIter.hasNext()) {
            Object level2 = topIter.next();
            if (level2 instanceof TreeMap) {
                leafCnt += countLeaves((TreeMap) level2);
            } else if (level2 instanceof ArrayList) {
                leafCnt += ((ArrayList<Object>) level2).size();
            } else if (level2 instanceof Node) {
                leafCnt++;
            }
        }
        return leafCnt;
    }  //  end of method countLeaves

    public Dyad makeExampleDyad(ClauseBody cb, Context workingCtxt, ArrayList<Object> egoBag) throws KSBadHornClauseException,
            KSInternalErrorException, KSConstraintInconsistency, ClassNotFoundException {
        Context oldCurrent = Context.current;
        Context.current = workingCtxt;
        if (egoBag == null) {
            egoBag = maleAndFemaleCreatedHeThem();
        }
        Dyad dyad = new Dyad((Individual) egoBag.get(0));
        dyad.pcString = cb.pcString;
        dyad.pcStringStructural = cb.pcStringStructural;
        cb.unifyVariables();
        MainPane.fill_In_Flag = true;
        cb.generateExamples(workingCtxt, egoBag, dyad, null); //  ego & alter will be set by CB.genExamples
        MainPane.fill_In_Flag = false;
        Context.current = oldCurrent;
        return dyad;
    }  //  end of method makeExampleDyad()

    public boolean notFound(int seqNmbr, ArrayList<Object> cbList) {
        //  cbList contains CB_Ptrs.  If one has cbSeqNmbr = SeqNmbr, return false.
        //  else, return true.
        for (int i = 0; i < cbList.size(); i++) {
            if (((Library.CB_Ptr) cbList.get(i)).cbSeqNmbr == seqNmbr) {
                return false;
            }
        }
        return true;
    }  //  end of method notFound

    public boolean found(int seqNmbr, ArrayList<Object> cbList) {
        return !notFound(seqNmbr, cbList);
    }

    public boolean foundInSigStr(String sigString, String pcStr) {
        //  Standard Macros (e.g. sister) don't have a sigString, and are not what we're looking for.
        if (sigString == null) {
            return false;
        }
        String embeddedStr = "_" + pcStr + "_";
        if (sigString.indexOf(embeddedStr) > -1) {
            return true;  //  found in the middle
        }
        int stop = Math.min(pcStr.length(), sigString.length());
        if (pcStr.equals(sigString.substring(0, stop))) {
            return true;  //  found up front
        }
        int start = sigString.lastIndexOf("_");
        if (start > -1 && pcStr.equals(sigString.substring(start + 1))) {
            return true;  //  found at end
        }
        return false;
    }  //  end of method foundInSigStr

    public boolean equivalentLists(ArrayList<Object> list1, ArrayList<Object> list2) {
        if (list1.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list1.size(); i++) {
            if (!list2.contains(list1.get(i))) {
                return false;
            }
        }
        return true;
    }  //  end of method equivalentLists

    public boolean isSupersetOf(ArrayList<Object> list1, ArrayList<Object> list2) {
        //  Return true if list1 contains all of list2, IN ANY ORDER
        if (list2.isEmpty()) {
            return false;  //  Don't want trivial supersets of nil
        }
        for (int i = 0; i < list2.size(); i++) {
            Object obj = list2.get(i);
            if (!list1.contains(obj)) {
                return false;
            }
        }
        return true;
    }  //  end of method isSupersetOf

    public String[] genKTDarray(String first) {
        int extra = ((first == null || first.equals("")) ? 0 : 1);
        String[] lst = new String[theory.size() + extra];
        Iterator ktdIter = theory.keySet().iterator();
        if (extra == 1) {
            lst[0] = first;
        }
        for (int i = extra; i < theory.size() + extra; i++) {
            lst[i] = (String) ktdIter.next();
        }
        return lst;
    }  //  end of method genKTDarray

   
public class ScoreObj implements Comparable, Serializable {

        String pcString;
        double weight;

        public ScoreObj() {
        }  //  default constructor for serialization.

        public ScoreObj(String pcStr, double wt) {
            pcString = pcStr;
            weight = wt;
        }   //  end of normal constructor

        /**  Provide a method of comparing 2 ScoreObjs for use in TreeMaps and TreeSets.	*/
        public int compareTo(Object obj) throws ClassCastException {
            //  Sort order = weight, then pcString length.
            if (obj == null) {
                return -1;
            }
            ScoreObj other = (ScoreObj) obj;
            if (weight < other.weight) {
                return -1;
            }
            if (weight > other.weight) {
                return 1;
            }
            if (pcString.length() < other.pcString.length()) {
                return -1;
            }
            if (pcString.length() > other.pcString.length()) {
                return 1;
            }
            return 0;
        }  //  end of compareTo method; required for the Comparable interface
    }  //  end of inner class ScoreObj

    public abstract boolean fit(ClauseBody cb, Dyad dad) throws KSBadHornClauseException, KSNoChainOfRelations2Alter,
            KSInternalErrorException, KSConstraintInconsistency, ClassNotFoundException;
}
