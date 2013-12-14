
import java.util.*;
import java.io.*;
import java.text.*;

/** This class completes the definition of a Domain Theory in Prolog syntax.  In this system, a Domain Theory is a grammar
defining a Kinship System.  This is the level at which 90% of the action takes place in Active Learning.
<p>
Because so many methods are defined at the Domain Theory level, the code files are broken into 4 classes:  
DT_Abstract1, DT_Abstract2, DomainTheory & Learned_DT. 

@author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
 */
public class DomainTheory extends DT_Abstract2 {

    public static PrintWriter testOutFile;
    public static boolean SIMILARITY_ON = true;
    public static boolean LGG_ONLY = false;
    public TreeMap<String, String> kinTermSymbols;
    public int priorDTMSize = 0;

    DomainTheory(String langName, String auth, String date, boolean partl) {
        languageName = langName;
        author = auth;
        createDate = date;
        partial = partl;
        theory = new TreeMap();
    }	// end of general constructor

    /*  This zero-arg constructor is for use ONLY by Serialization  */
    DomainTheory() {
        languageName = "";
        author = " ";
        createDate = " ";
        partial = false;
        theory = new TreeMap();
    }	// end of no-arg constructor


    /*  This constructor is for cloning a DomainTheory.  It is intended for use in Learning & Leave One Out testing.	*/
    DomainTheory(DomainTheory model) {
        languageName = model.languageName;
        if (model.addressTerms) {
            languageName += "(Adr)";
        }
        ctxt = model.ctxt;
        author = model.author;
        createDate = UDate.today();
        partial = model.partial;
        addressTerms = model.addressTerms;
        polygamyOK = model.polygamyOK;
        theory = new TreeMap(model.theory);
        userDefinedProperties = model.userDefinedProperties;
        synonyms = model.synonyms;
        umbrellas = model.umbrellas;
        overlaps = model.overlaps;
        nonUmbrellas = model.nonUmbrellas;
        nonOverlaps = model.nonOverlaps;
        nonSynonyms = model.nonSynonyms;
    }	// end of cloning constructor


    /*  This constructor is for creating the second DT in a Context  */
    DomainTheory(Context contxt, boolean adr, String auth) {
        languageName = contxt.languageName;
        if (adr) {
            languageName += "(Adr)";
        }
        ctxt = contxt;
        author = auth;
        createDate = UDate.today();
        partial = false;
        addressTerms = adr;
        polygamyOK = ctxt.polygamyPermit;
        theory = new TreeMap();
        dyadsUndefined = new DyadTMap();
    }	// end of 2nd_DT constructor

    DomainTheory(String langName) {
        languageName = langName;
        author = "";
        createDate = " ";
        partial = false;
        theory = new TreeMap();
    }	// end of minimal constructor

    public TreeMap<String, String> getKTSymbols() {
        Set<String> kTerms = dyadsUndefined.keySet();
        kTerms.addAll(dyadsDefined.keySet());
        int DTMsize = kTerms.size(), n = 0;
        // If there are no kin terms yet, punt.
        if (DTMsize == 0) {
            return null;
        }
        // If the number of kin terms has not changed, use existing TMap.
        if (kinTermSymbols != null && DTMsize == priorDTMSize) {
            return kinTermSymbols;
        }
        //  Else, create new TMap & return it.
        priorDTMSize = DTMsize;
        kinTermSymbols = new TreeMap<String, String>();
        String[] letters = makeLetters(DTMsize);
        for (String kTm : kTerms) {
            kinTermSymbols.put(kTm, letters[n++]);
        }
        return kinTermSymbols;
    }

    public String[] makeLetters(int size) {
        String[] ltrs = new String[size];
        String[] set1 = {"", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J",
            "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U",
            "V", "W", "X", "Y", "Z"};
        String[] set2 = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J",
            "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U",
            "V", "W", "X", "Y", "Z"};
        int n1 = 0, n2 = 0;
        for (int i = 0; i < size; i++) {
            ltrs[i] = set1[n1] + set2[(n2++ % 26)];
            if (n2 == 26) {
                n1++;
            }
        }
        return ltrs;
    }

    public SynonymCandidate swapSingleUmbrella(Issue issue) {
        if (!(issue instanceof UmbrellaCandidate)) {
            return null;
        }
        UmbrellaCandidate cand = (UmbrellaCandidate) issue;
        if (cand.subTerms.size() != 1) {
            return null;
        }
        Iterator sub = cand.subTerms.entrySet().iterator();
        Map.Entry entry = (Map.Entry) sub.next();
        String subTerm = (String) entry.getKey();
        ArrayList<Object> supportLists = (ArrayList<Object>) entry.getValue(),
                subTermStr = (ArrayList<Object>) supportLists.get(0),
                subTermDys = (ArrayList<Object>) supportLists.get(1);
        if (!equivalentLists(cand.pcStringsCovered, subTermStr)) {
            return null;
        }
        //  OK, first post this as a nonUmbrella
        if (nonUmbrellas == null) {
            nonUmbrellas = new TreeMap();
        }
        if (nonUmbrellas.get(cand.kinTerm) == null) {
            nonUmbrellas.put(cand.kinTerm, new ArrayList<Object>());
        }
        ArrayList<Object> baddies = (ArrayList<Object>) nonUmbrellas.get(cand.kinTerm);
        baddies.add(subTerm);
        //  Now we need to convert this UmbrellaCandidate to a SynonymCandidate
        ArrayList<Object> qns = new ArrayList<Object>(), ktermDyads = new ArrayList<Object>();
        int order = cand.kinTerm.compareTo(subTerm);
        String termPair = (order < 0 ? cand.kinTerm + "/" + subTerm : subTerm + "/" + cand.kinTerm);
        TreeMap umbPos = null;
        if (dyadsUndefined != null) {
            umbPos = (TreeMap) dyadsUndefined.get(cand.kinTerm);
        }
        if (umbPos != null) {
            ktermDyads.addAll(harvestLeaves(umbPos));
        }
        if (dyadsDefined != null) {
            umbPos = (TreeMap) dyadsDefined.get(cand.kinTerm);
        }
        if (umbPos != null) {
            ktermDyads.addAll(harvestLeaves(umbPos));
        }
        qns.add("Could these 2 kinTerms be synonyms?");
        qns.add("Can you provide any dyads that fit one term, but not the other?");
        SynonymCandidate syn = new SynonymCandidate(cand.kinTerm, qns, termPair,
                cand.pcStringsCovered, ktermDyads, subTermDys);
        return syn;
    }  //  end of method swapSingleUmbrella

    public String addNoise(String kinTerm, Oracle orca, float classNoiseProbabililty, float spellNoiseProbabiliity) {
        //  With probability = classNoiseProbabililty, pick an incorrect kinTerm
        //  With probability = spellNoiseProbabiliity, make a 1-character activity in spelling this kinTerm
        double diceRoll = Math.random();
        int tries = 0;
        boolean keepOn = true;
        if (diceRoll <= classNoiseProbabililty) {	//  We'll add class (kinTerm) name noise
            ArrayList<Object> classNames = new ArrayList<Object>(theory.keySet());
            classNames.removeAll(nonTerms);
            while (keepOn) {
                int which = (int) Math.floor((Math.random() * classNames.size()));
                if (classNames.isEmpty()) {
                    Context.breakpoint();
                }
                if (!((String) classNames.get(which)).equals(kinTerm)) {
                    if (orca != null) {
                        Oracle.NoiseRecord noiseRec = new Oracle.NoiseRecord("class", kinTerm, (String) classNames.get(which));
                        orca.holder.add(noiseRec);
                    }
                    return (String) classNames.get(which);
                }
                if (tries++ > 20) {
                    keepOn = false;
                }
            }  //  end of while loop
        }  //  end of adding class name noise
        //  if we get here, no class name noise was added, so add spelling noise
        diceRoll = Math.random();
        if (diceRoll <= spellNoiseProbabiliity) {
            String noises = "xz";
            char xChar = noises.charAt(0), zChar = noises.charAt(1);
            char[] letters = kinTerm.toCharArray();
            int which = (int) Math.floor((Math.random() * letters.length));
            char victim = letters[which];
            if (victim != xChar) {
                letters[which] = xChar;
            } else {
                letters[which] = zChar;
            }
            String newTerm = new String(letters);
            if (orca != null) {
                Oracle.NoiseRecord noiseRec = new Oracle.NoiseRecord("spell", kinTerm, newTerm);
                orca.holder.add(noiseRec);
            }
            kinTerm = newTerm;
        }  // end of spelling noise
        return kinTerm;
    }  //  end of method addNoise

    public TreeMap makeNEG(String kinTerm, TreeMap pos) {
        //  At this point:
        //		(a) dyads for Defined terms have already been validated & removed from dyadsUndefined
        //		(b) all dyads for KNOWN synonyms have been converted to dyads for the base term
        //		(c) there are no circular references in 'synonyms' or in 'umbrellas'
        //		(d) we know that all overlaping pairs have the lexically-low term as key
        //  POS = the subtree of dyadsUndefined for kinTerm
        //  If kinTerm is not an umbrella term or subTerm, make NEG = to all dyads
        //		for other terms (Defined or Undefined)
        //  If kinTerm is a declared umbrella term, add to POS any dyads for known subTerms
        //		(whether Defined or Undefined), and subtract them from NEG
        //  If kinTerm is a declared subTerm term, subtract from NEG any dyads for the umbrella term
        //		(whether Defined or Undefined)
        //  If kinTerm is an overlapping term, subtract from NEG any dyads for the overlap compainion term
        //		(whether Defined or Undefined)
        //	3/16/07 CHANGE:  Don't add dyads for umbrella's sub-terms to umbrella's POS --  just subtract from NEG
        TreeMap neg = mergeNestedTrees(dyadsUndefined, dyadsDefined);
        neg.remove(kinTerm);
        if (umbrellas != null) {
            Iterator umbIter = umbrellas.entrySet().iterator();
            while (umbIter.hasNext()) {
                Map.Entry entry = (Map.Entry) umbIter.next();
                String umbTerm = (String) entry.getKey();
                ArrayList<Object> subTerms = (ArrayList<Object>) entry.getValue();
                if (subTerms.contains(kinTerm)) //  any umbrella term encompassing kinTerm is deleted from Neg
                {
                    neg.remove(umbTerm);
                } else if (umbTerm.equals(kinTerm)) //  if kinTerm == umbTerm, delete its encompassed terms from Neg
                {
                    for (int i = 0; i < subTerms.size(); i++) {
                        neg.remove(subTerms.get(i));
                    }  //  end of kinTerm==umbTerm
                }
            }  //  end of loop thru umbrella terms
        }  //  end of umbrellas-is-not-null
        if (overlaps != null && overlaps.get(kinTerm) != null) {  //  there are overlapping terms
            ArrayList<Object> oLapList = (ArrayList<Object>) overlaps.get(kinTerm);
            for (int i = 0; i < oLapList.size(); i++) {
                neg.remove(oLapList.get(i));
            }
        }
        return mergeSubTrees(neg);  //  NOTE: pos & neg now are both exactStr -> dyadList.
    }

    public ArrayList<Object> validateNewDyads(String kinTerm, int maxNoise) throws KSBadHornClauseException, KSNoChainOfRelations2Alter,
            KSInternalErrorException, KSConstraintInconsistency, ClassNotFoundException {
        //  Confirm that all the dyads gathered for already-accepted definitions fit those definitions.
        //  Detect Synonyms & Umbrellas if possible.  For system-created auxiliary predicates (e.g. gen<aux>), ANY hits are noise.
        //  If a few oddballs show up, refer them to User via an Anomaly.
//  if (kinTerm.equals("gagi_zhakka") || kinTerm.equals("nauwa_nani")) Context.breakpoint();
        ArrayList<Object> posHits = new ArrayList<Object>(),
                posMisses = new ArrayList<Object>(),
                bogusDyads = new ArrayList<Object>(),
                validationIssues = new ArrayList<Object>();
        if (kinTerm.indexOf("aux>") > -1) {
            return validationIssues;
        }
        KinTermDef ktd = (KinTermDef) theory.get(kinTerm);
        if (dyadsDefined == null) {
            dyadsDefined = new DyadTMap();
        }
        TreeMap defTermTM = (TreeMap) dyadsDefined.remove(kinTerm);  //  PC_Str => ArrayList<Object> of dyads
        TreeMap unDefTM = (TreeMap) dyadsUndefined.remove(kinTerm);  //  ditto
        if (defTermTM == null) {
            defTermTM = new TreeMap();
        }
        Iterator cbIter = ktd.expandedDefs.iterator();
        if (unDefTM != null) {
            while (cbIter.hasNext()) {
                ClauseBody cb = (ClauseBody) cbIter.next();
                ArrayList<Object> dyads = (ArrayList<Object>) unDefTM.get(cb.pcString);
                if (dyads != null) {
                    Iterator dyIter = dyads.iterator();
                    while (dyIter.hasNext()) {
                        Dyad dy = (Dyad) dyIter.next();
                        if (fit(cb, dy)) { //  remove from unDefTM; add to defTermTM
                            dyIter.remove();
                            if (defTermTM.get(cb.pcString) == null) {
                                defTermTM.put(cb.pcString, new ArrayList<Object>());
                            }
                            ((ArrayList<Object>) defTermTM.get(cb.pcString)).add(dy);
                            posHits.add(dy);
                        }
                    }  //  end of while loop
                    if (dyads.isEmpty()) {
                        unDefTM.remove(cb.pcString); // don't leave empties behind
                    }
                }  //  end of dyads != null
            }  //  end of loop thru CBs
        }
        if (!defTermTM.isEmpty()) {
            dyadsDefined.put(kinTerm, defTermTM);  //  put 'em back, unless empty
        }
        if (unDefTM != null && !unDefTM.isEmpty()) {
            dyadsUndefined.put(kinTerm, unDefTM);
        }
        posMisses.addAll(harvestLeaves(unDefTM));
        bogusDyads = findImposters(kinTerm, ktd.expandedDefs);
        if (posMisses.isEmpty() && bogusDyads.isEmpty()) {
            return validationIssues;  //  All is Well.  We're done.
        }
        if (posMisses.size() > 0) {  // Some "pos" dyads did not match current definition
            Iterator dyIter = posMisses.iterator();
            while (dyIter.hasNext()) {
                Dyad dy = (Dyad) dyIter.next();
                if (dy.confirmed || dy.kinTermType == 7) {
                    dyIter.remove();
                } else {
                    dy.challenged = true;
                }
            }
            if (posMisses.size() > 0) {
                String defArt = (posMisses.size() == 1 ? "This " : "These "),
                        pl = (posMisses.size() == 1 ? "" : "s"),
                        vb = (posMisses.size() == 1 ? " does" : " do"),
                        phr = (posMisses.size() == 1 ? "Is this " : "Are these ");
                String question = defArt + posMisses.size() + " dyad" + pl + vb + " not match the accepted definition of "
                        + kinTerm + ".\n\t\t" + phr
                        + "dyad" + pl + " wrongly labeled, or is the accepted definition wrong?";
                Anomaly oops = new Anomaly(ktd, kinTerm, question, "falseNeg", posHits, posMisses, null, null);
                validationIssues.add(oops);
            }
        }  //  end of making Anomaly for posMisses
        if (bogusDyads.size() > 0) {  // Some dyads for OTHER terms match current definition
            //  Maybe they're errors.  Or maybe they are a synonym or umbrella term.
            //  See if there a lot or just a few per kinTerm
            TreeMap bogusTM = new TreeMap();
            for (int i = 0; i < bogusDyads.size(); i++) {  // Sort 'em by kinTerm
                Dyad dy = (Dyad) bogusDyads.get(i);
                String kterm = dy.kinTerm;
                if (bogusTM.get(kterm) == null) {
                    bogusTM.put(kterm, new ArrayList<Object>());
                }
                ArrayList<Object> termList = (ArrayList<Object>) bogusTM.get(kterm);
                termList.add(dy);
            }  //  end of loop thru dyads
            int limit = new Double(Math.ceil(posHits.size() * maxNoise / 100d)).intValue();
            Iterator iter = bogusTM.values().iterator();
            limit = Math.max(limit, MainPane.NUMBER_OF_EGOS);  //  NUMBER_OF_EGOS is the smallest limit allowed
            while (iter.hasNext()) {  //  more than 'limit' implies this is NOT noise, it's a term
                ArrayList<Object> dyLst = (ArrayList<Object>) iter.next();
                String kterm = ((Dyad) dyLst.get(0)).kinTerm;
                if (dyLst.size() > limit && !kterm.equals("no__term")) {
                    bogusDyads.removeAll(dyLst);
                }
            }  //  end of loop thru bogusTM = dyads sorted by kinTerm
            iter = bogusDyads.iterator();
            ArrayList<Object> confirmedBogies = new ArrayList<Object>();
            while (iter.hasNext()) {
                Dyad dy = (Dyad) iter.next();
                if (dy.confirmed || dy.kinTermType == 7) {
                    confirmedBogies.add(dy);
                    iter.remove();
                } else {
                    dy.challenged = true;
                }
            }
            //  Now bogusDyads contains only a few oddball terms, not comfirmed dyads, synonyms or umbrellas (hopefully)
            if (bogusDyads.size() > 0) {  //  i.e. we haven't emptied it.
                for (int i = 0; i < bogusDyads.size(); i++) {
                    ((Dyad) bogusDyads.get(i)).challenged = true;
                }
                String defArt = (bogusDyads.size() == 1 ? "This " : "These "),
                        pl = (bogusDyads.size() == 1 ? "" : "s"),
                        vb = (bogusDyads.size() == 1 ? " does" : " do"),
                        ha = (bogusDyads.size() == 1 ? " has" : " have"),
                        phr = (bogusDyads.size() == 1 ? "Is this " : "Are these "),
                        confirmed = (confirmedBogies.isEmpty() ? "" : "\nNOTE: You previously confirmed "
                        + confirmedBogies.size() + " such.");
                String question = defArt + bogusDyads.size() + " dyad" + pl + vb + " match the accepted definition of "
                        + kinTerm + " but " + ha + " been given other kin term" + pl + ".\n\t\t" + phr
                        + "dyad" + pl + " wrongly labeled, or should the accepted definition be revised?" + confirmed;
                Anomaly oops = new Anomaly(ktd, kinTerm, question, "falsePos", bogusDyads, posHits, null, null);
                validationIssues.add(oops);
            }  //  end of we-didn't-empty-it
        }  //  end of making Anomaly for imposters
        ctxt.featuresHaveChanged = true;
        return validationIssues;
    }  //  end of method validateNewDyads

    public ArrayList<Object> findImposters(String kinTerm, ArrayList<Object> componentCBs) throws KSBadHornClauseException, KSNoChainOfRelations2Alter,
            KSInternalErrorException, KSConstraintInconsistency, ClassNotFoundException {
        //  We're looking for anything in dyadsUndefined that meets the definition of
        //  a clause of kinTerm's definition, but represents some other term.
        //  We know that will be the case for umbrella terms and their subterms.
        //  those are OK -- Exclude those.
        ArrayList<Object> imposters = new ArrayList<Object>(),
                subTermsOfKinTerm = (umbrellas == null ? null : (ArrayList<Object>) umbrellas.get(kinTerm)),
                overlapsOfKinTerm = (overlaps == null ? null : (ArrayList<Object>) overlaps.get(kinTerm));
        if (kinTerm.indexOf("<aux>") > -1) {
            return imposters;  //  auxiliaries can't have imposters
        }
        Iterator iter = dyadsUndefined.entrySet().iterator(), cbIter;
        while (iter.hasNext()) {
            Map.Entry entry = (Map.Entry) iter.next();
            String term = (String) entry.getKey();
            TreeMap termMap = (TreeMap) entry.getValue();
            if (termMap == null || termMap.isEmpty()) {
                iter.remove();  // Don't leave empties lying around!
            } else {
                ArrayList<Object> subTermsOfTerm = (umbrellas == null ? null : (ArrayList<Object>) umbrellas.get(term)),
                        overlapsOfTerm = (overlaps == null ? null : (ArrayList<Object>) overlaps.get(term));
                boolean doIt = (!kinTerm.equals(term)
                        && (subTermsOfKinTerm == null || !subTermsOfKinTerm.contains(term))
                        && (subTermsOfTerm == null || !subTermsOfTerm.contains(kinTerm))
                        && (overlapsOfKinTerm == null || !overlapsOfKinTerm.contains(term))
                        && (overlapsOfTerm == null || !overlapsOfTerm.contains(kinTerm)));
                if (doIt) {  //  doIt = neither term is a subterm or overlap of the other
                    cbIter = componentCBs.iterator();  //  (no umbrella or overlaps relationship)
                    while (cbIter.hasNext()) {
                        ClauseBody cb = (ClauseBody) cbIter.next();
                        ArrayList<Object> potentialImposters = (ArrayList<Object>) termMap.get(cb.pcString);
                        if (potentialImposters != null) {  //  found some
                            //  Now verify that these really do fit the definition of kinTerm
                            for (int i = 0; i < potentialImposters.size(); i++) {
                                Dyad dy = (Dyad) potentialImposters.get(i);
                                if (fit(cb, dy)) {
                                    imposters.add(dy);
                                }
                            }  //  end of loop thru potentialImposters
                        }  //  end of potentialImposters not null
                    }  //  end of loop thru CBs for this kinTerm
                }  //  end of doIt
            }  //  end of term Map not null
        }  //  end of loop thru all dyadsUndefined
        return imposters;
    }  //  end of method findImposters

    public void removeChallengedDyads(ArrayList<Object> dyads) {
        //  Remove from this list all dyads where challenged = true;
        Iterator iter = dyads.iterator();
        while (iter.hasNext()) {
            Dyad dyad = (Dyad) iter.next();
            if (dyad.challenged) {
                iter.remove();
            }
        }  //  end of loop thru dydas
    }  //  end of method removeChallengedDyads

    /*
    public void removeSynUmbDyads(String kinTerm, ArrayList<Object> listOfDyads)  {
    //  Remove from this list all dyads that are part of a proposed
    //  synonym or umbrella relationship
    ArrayList<Object> seen = new ArrayList<Object>(), removem = new ArrayList<Object>();
    Iterator iter = listOfDyads.iterator();
    while (iter.hasNext())  {
    Dyad dy = (Dyad)iter.next();
    String kterm = dy.kinTerm;
    if (removem.contains(kterm)) iter.remove();
    else if (! seen.contains(kterm))  {
    seen.add(kterm);
    if (umbAlreadyPosted(kinTerm, kterm) || umbAlreadyPosted(kterm, kinTerm))  {
    removem.add(kterm);
    iter.remove();
    }else {
    int order = kinTerm.compareTo(kterm);
    String word_pair = ((order < 0) ? kinTerm + "/" + kterm : kterm + "/" + kinTerm),
    keyWord = ((order < 0) ? kinTerm : kterm);
    if (synonymAlreadyProposed(keyWord, word_pair))  {
    removem.add(kterm);
    iter.remove();
    }
    }  //  end of no-umbrella-so-check-for-synonyms
    }  //  end of not-seen-before
    }  //  end of loop thru dyads
    }  //  end of method removeSynUmbDyads
     */

    public void postAnomaliesForUser(String kinTerm, ArrayList<Object> anomalies) {
        //  First merge any duplicate anomalies
        ArrayList<Issue> compactedAnomalies = new ArrayList<Issue>();
        while (anomalies.size() > 0) {
            Anomaly baseCase = (Anomaly) anomalies.remove(0);
            Iterator iter = anomalies.iterator();
            while (iter.hasNext()) {
                Anomaly nextCase = (Anomaly) iter.next();
                if (baseCase.isEquivalentTo(nextCase)) {
                    baseCase.absorb(nextCase);
                    iter.remove();
                }
            }  //  end of loop thru remaining anomalies
            compactedAnomalies.add(baseCase);
        }  //  end of while anomalies.size() > 0
        //  Now post the compacted anomalies
        if (compactedAnomalies.size() > 0) {
            if (issuesForUser.get(kinTerm) == null) {
                issuesForUser.put(kinTerm, new ArrayList<Issue>());
            }
            issuesForUser.get(kinTerm).addAll(compactedAnomalies);
        }
    }  //  end of method postAnomaliesForUser

    public void detectSynonymsAndUmbrellas(String kinTerm, TreeMap prePos, TreeMap preNeg, int maxNoise)
            throws KSInternalErrorException {
        //  First, exclude any pcString supported only by challenged dyads
//        if (kinTerm.equals("daddy") || kinTerm.equals("dad")) {
//            Context.breakpoint();
//        }
        TreeMap pos = new TreeMap(prePos),
                neg = new TreeMap(preNeg);
        ArrayList<Object> filteredKTermDys = new ArrayList<Object>(),
                filtered2KTermDys = new ArrayList<Object>();
        //  Threshhold2 = maxNoise% * avgNmbrOfDyadsPerKinType
        int threshhold1 = Math.max(2, MainPane.NUMBER_OF_EGOS - 1),
                threshhold2 = (int) Math.floor(countLeaves(pos) * maxNoise / (100d * pos.size()));
        Iterator posIter = pos.entrySet().iterator();
        while (posIter.hasNext()) {
            ArrayList<Object> dyadList = (ArrayList<Object>) ((Map.Entry) posIter.next()).getValue(),
                    tempLst = new ArrayList<Object>();
            Iterator listIter = dyadList.iterator();
            boolean killIt = true;
            int cntr = 0;
            while (listIter.hasNext()) {
                Dyad dy = (Dyad) listIter.next();
                if (!dy.challenged) {
                    killIt = false;
                    cntr++;
                    tempLst.add(dy);
                }
            }  //  end of loop thru dyadList
            if (killIt) {
                posIter.remove();
            } else {
                if (cntr >= threshhold1) {
                    filteredKTermDys.addAll(tempLst);
                }
                if (cntr >= threshhold2) {
                    filtered2KTermDys.addAll(tempLst);
                }
            }
        }  //  end of loop thru pos
        Iterator negIter = neg.entrySet().iterator();
        while (negIter.hasNext()) {
            ArrayList<Object> dyadList = (ArrayList<Object>) ((Map.Entry) negIter.next()).getValue();
            Iterator listIter = dyadList.iterator();
            boolean killIt = true;
            while (listIter.hasNext() && killIt) {
                if (!((Dyad) listIter.next()).challenged) {
                    killIt = false;
                }
            }
            if (killIt) {
                negIter.remove();
            }
        }
        //  Let otherSet = the set of all terms in NEG having pcStrings that appear in POS
        //  otherSet structure: kinTerm => List of pcStrings seen for that kinTerm
        ArrayList<Object> filteredKTermPCStr = new ArrayList<Object>(),
                filtered2KTermPCStr = new ArrayList<Object>();
        posIter = pos.entrySet().iterator();
        while (posIter.hasNext()) {
            Map.Entry entry = (Map.Entry) posIter.next();
            String pcStr = (String) entry.getKey();
            ArrayList<Object> dyadList = (ArrayList<Object>) entry.getValue();
            if (dyadList.size() >= threshhold1) {
                filteredKTermPCStr.add(pcStr);
            }
            if (dyadList.size() >= threshhold2) {
                filtered2KTermPCStr.add(pcStr);
            }
        }  //  end of loop thru pos for filtering
        posIter = filteredKTermPCStr.iterator();
        TreeMap filteredOtherSet = new TreeMap();
        while (posIter.hasNext()) {
            String pcStr = (String) posIter.next();
            ArrayList<Object> negDyads = (ArrayList<Object>) neg.get(pcStr);
            if (negDyads != null && negDyads.size() >= threshhold1) {
                for (int i = 0; i < negDyads.size(); i++) {
                    Dyad dy = (Dyad) negDyads.get(i);
                    String kterm = dy.kinTerm;
                    if (!dy.challenged && filteredOtherSet.get(kterm) == null) {
                        filteredOtherSet.put(kterm, new ArrayList<Object>());
                    }
                }  //  end of loop thru negDyads
            }
        }  //  end of loop thru pcStrings in filteredKTermPCStr
        posIter = filtered2KTermPCStr.iterator();
        TreeMap filtered2OtherSet = new TreeMap();
        while (posIter.hasNext()) {
            String pcStr = (String) posIter.next();
            ArrayList<Object> negDyads = (ArrayList<Object>) neg.get(pcStr);
            if (negDyads != null && negDyads.size() >= threshhold2) {
                for (int i = 0; i < negDyads.size(); i++) {
                    Dyad dy = (Dyad) negDyads.get(i);
                    String kterm = dy.kinTerm;
                    if (!dy.challenged && filtered2OtherSet.get(kterm) == null) {
                        filtered2OtherSet.put(kterm, new ArrayList<Object>());
                    }
                }  //  end of loop thru negDyads
            }
        }  //  end of loop thru pcStrings in filtered2KTermPCStr
        //  Now analyze each term in filteredOtherSet & filtered2OtherSet.
        //  Propose all synonyms, umbrellas, and overlaps.
        identifySynsEtc(filteredOtherSet, kinTerm, filteredKTermPCStr, filteredKTermDys, threshhold1, 1);
        if (threshhold2 > threshhold1) {
            identifySynsEtc(filtered2OtherSet, kinTerm, filtered2KTermPCStr, filtered2KTermDys, threshhold2, 2);
        }
    }  //  end of method detectSynonymsAndUmbrellas

    public void identifySynsEtc(TreeMap otherSet, String kinTerm, ArrayList<Object> kinTermPCStrings,
            ArrayList<Object> ktermDys, int threshhold, int typ)
            throws KSInternalErrorException {
        //  otherSet structure: kinTerm => List of pcStrings seen for that kinTerm
        Iterator otherIter = otherSet.entrySet().iterator();
        while (otherIter.hasNext()) {
            Map.Entry otherEntry = (Map.Entry) otherIter.next();
            String term = (String) otherEntry.getKey();
            ArrayList<Object> otherTermPCStrings = (ArrayList<Object>) otherEntry.getValue(),
                    otherTermDys = new ArrayList<Object>();
            if (dyadsUndefined != null && dyadsUndefined.get(term) != null) {
                TreeMap tMap = (TreeMap) dyadsUndefined.get(term);
                Iterator tMapIter = tMap.entrySet().iterator();
                while (tMapIter.hasNext()) {
                    Map.Entry entry = (Map.Entry) tMapIter.next();
                    String kType = (String) entry.getKey();
                    ArrayList<Object> dys = (ArrayList<Object>) entry.getValue();
                    if (dys.size() >= threshhold) {
                        otherTermPCStrings.add(kType);
                        otherTermDys.addAll(dys);
                    }
                }  //  end of loop thru tMap
            }  //  end of loop thru dyadsUndefined
            if (dyadsDefined != null && dyadsDefined.get(term) != null) {
                TreeMap tMap = (TreeMap) dyadsDefined.get(term);
                Iterator tMapIter = tMap.entrySet().iterator();
                while (tMapIter.hasNext()) {
                    Map.Entry entry = (Map.Entry) tMapIter.next();
                    String kType = (String) entry.getKey();
                    ArrayList<Object> dys = (ArrayList<Object>) entry.getValue();
                    if (dys.size() >= threshhold) {
                        otherTermPCStrings.add(kType);
                        otherTermDys.addAll(dys);
                    }
                }  //  end of loop thru tMap
            }  //  end of loop thru dyadsDefined
            if (equivalentLists(kinTermPCStrings, otherTermPCStrings)
                    && !synAlreadyPosted(kinTerm, term)
                    && !synRejected(kinTerm, term)) {
                proposeSynonymToUser(kinTerm, term, kinTermPCStrings, ktermDys, otherTermDys, typ);
            } else if (equivalentLists(kinTermPCStrings, otherTermPCStrings)
                    && synAlreadyPosted(kinTerm, term)) {
                return;
            } else if (!(nonUmbrellas.get(kinTerm) != null && ((ArrayList<Object>) nonUmbrellas.get(kinTerm)).contains(term))
                    && !umbAlreadyPosted(kinTerm, term)
                    && isSupersetOf(kinTermPCStrings, otherTermPCStrings)) {
                postPotUmbrellas(kinTerm, kinTermPCStrings, term, otherTermPCStrings, otherTermDys, typ);
            } else if (!isSupersetOf(kinTermPCStrings, otherTermPCStrings)
                    && !isSupersetOf(otherTermPCStrings, kinTermPCStrings)
                    && !overlapProposed(kinTerm, term)) {
                ArrayList<Object> interSect = new ArrayList<Object>();
                for (int k = 0; k < otherTermPCStrings.size(); k++) {
                    if (kinTermPCStrings.contains(otherTermPCStrings.get(k))) {
                        interSect.add(otherTermPCStrings.get(k));
                    }
                }
                if (interSect.size() > 0) {
                    proposeOverlapToUser(kinTerm, term, interSect, ktermDys, otherTermDys, typ);
                }
            }  //  end of found-an-overlap
        }  //  end of loop thru otherSet
    }  //  end of method identifySynsEtc

    public boolean umbAlreadyPosted(String umb, String sub) {
        if (umbrellas != null && umbrellas.get(umb) != null
                && ((ArrayList<Object>) umbrellas.get(umb)).contains(sub)) {
            return true;
        }
        if (potUmbrellas == null) {
            return false;
        }
        if (potUmbrellas.get(umb) == null) {
            return false;
        }
        ArrayList<Object> umbList = (ArrayList<Object>) potUmbrellas.get(umb);
        //	structure of potUmbrellas is:  umbTerm -> {list of pcStrings, Quad, ... Quad }
        //	where Quad = {subTerm, list of its pcStrings, list of Dyads, filterType}
        for (int i = 1; i < umbList.size(); i++) {
            ArrayList<Object> quad = (ArrayList<Object>) umbList.get(i);
            if (quad.contains(sub)) {
                return true;
            }
        }
        return false;
    }  //  end of method umbAlreadyPosted

    public void postPotUmbrellas(String umb, ArrayList<Object> umbStrings, String sub,
            ArrayList<Object> subStrings, ArrayList<Object> dyads, int typ) {
        if (umb.equals("no__term") || sub.equals("no__term")) {
            return;
        }
        if (potUmbrellas == null) {
            potUmbrellas = new TreeMap();
        }
        //	structure of potUmbrellas is:  umbTerm -> {list of pcStrings, Quad, ... Quad }
        //	where Quad = {subTerm, list of its pcStrings, list of Dyads, filterType}
//  if (umb.equals("ancestor")) Context.breakpoint();
        if (potUmbrellas.get(umb) == null) {
            potUmbrellas.put(umb, new ArrayList<Object>());
        }
        ArrayList<Object> umbQuads = (ArrayList<Object>) potUmbrellas.get(umb);
        if (umbQuads.isEmpty()) {
            umbQuads.add(umbStrings);
        }
        ArrayList<Object> quad = new ArrayList<Object>();
        quad.add(sub);
        quad.add(subStrings);
        quad.add(dyads);
        quad.add(new Integer(typ));
        umbQuads.add(quad);
    }  //  end of method postPotUmbrellas

    public void proposeUmbrellas() {
        //  Post all the proposals to issuesForUser
        Iterator umbIter = potUmbrellas.entrySet().iterator();
        while (umbIter.hasNext()) {
            Map.Entry entry = (Map.Entry) umbIter.next();
            String umbTerm = (String) entry.getKey();
            ArrayList<Object> quads = (ArrayList<Object>) entry.getValue(),
                    subTerms = extractTerms(quads);
            if (!umbrellaAlreadyProposed(umbTerm) && !umbrellaAlreadyKnown(umbTerm, quads)
                    && !allTermsDefined(umbTerm, subTerms)) {
                ArrayList<Object> umbPCStrings = (ArrayList<Object>) quads.remove(0),
                        questions = new ArrayList<Object>();
                questions.add("The term '" + umbTerm + "' seems to be an umbrella term that covers other terms.\n"
                        + "Is this correct?");
                if (issuesForUser.get(umbTerm) == null) {
                    issuesForUser.put(umbTerm, new ArrayList<Issue>());
                }
                ArrayList<Issue> theIssues = issuesForUser.get(umbTerm);
                theIssues.add(new UmbrellaCandidate(umbTerm, questions, umbPCStrings, quads));
            }
            umbIter.remove();
        }
    }  //  end of method proposeUmbrellas

    public ArrayList<Object> extractTerms(ArrayList<Object> triples) {
        ArrayList<Object> terms = new ArrayList<Object>();
        //  Element 0 of triples is not a triple
        for (int i = 1; i < triples.size(); i++) {
            terms.add(((ArrayList<Object>) triples.get(i)).get(0));
        }
        return terms;
    }  //   end of method extractTerms

    public boolean umbrellaAlreadyKnown(String umbTerm, ArrayList<Object> triples) {
        if (umbrellas == null || umbrellas.get(umbTerm) == null) {
            return false;
        }
        ArrayList<Object> subTerms = (ArrayList<Object>) umbrellas.get(umbTerm), propSubs = new ArrayList<Object>();
        //  Element 0 of triples is not a triple
        for (int i = 1; i < triples.size(); i++) {
            propSubs.add(((ArrayList<Object>) triples.get(i)).get(0));
        }
        if (equivalentLists(subTerms, propSubs)) {
            return true;
        }
        return false;
    }  //  end of method umbrellaAlreadyKnown

    public boolean umbrellaAlreadyProposed(String umbTerm) {
        if (issuesForUser == null) {
            return false;
        }
        ArrayList<Issue> issues = issuesForUser.get(umbTerm);
        if (issues == null) {
            return false;
        }
        for (int i = 0; i < issues.size(); i++) {
            Issue issue = (Issue) issues.get(i);
            if (issue instanceof UmbrellaCandidate) {
                return true;
            }
        }
        return false;
    }  //  end of method umbrellaAlreadyProposed

    public boolean overlapProposed(String kinTerm, String term) {
        if (issuesForUser.get(term) == null) {
            return false;
        }
        Iterator iter = issuesForUser.get(term).iterator();
        while (iter.hasNext()) {
            Issue issue = (Issue) iter.next();
            if (issue instanceof OverlapCandidate) {
                OverlapCandidate cand = (OverlapCandidate) issue;
                if (cand.otherTerm.equals(kinTerm)) {
                    return true;
                }
            }
        }  //  end of loop thru issues for 'term'
        return false;
    }  //  end of method overlapProposed

    public void dataSelection(String kinTerm, ArrayList<Object> ktMatches, TreeMap pos, TreeMap neg, TreeMap dataReqCounter)
            throws KSInternalErrorException, FileNotFoundException, JavaSystemException, IOException, KSNoChainOfRelations2Alter,
            KSBadHornClauseException, KSConstraintInconsistency, ClassNotFoundException, KSParsingErrorException {

//  if (kinTerm.equals("father_in_law")) Context.breakpoint();

        //  Reduce the list of KTDs to a set of KT_EQCs which group the KTDs (perhaps singletons) via the Library.ktSigTree.
        TreeMap ktdToKTD_EQC = new TreeMap();
        ArrayList<Object> solidKTD_EQCmatches = makeKTD_EQCs(ktMatches, ktdToKTD_EQC),
                perfectFits = new ArrayList<Object>();
        //  Analyze each KTD_EQC's hits & misses, stored on the EQC, and make a global list of CB_EQC non-Hits.
        //  Also check for any perfect fits, and make list of PC_String non-Hits
        TreeMap pcStrNonHits = new TreeMap();
        ArrayList<Object> cbNonHits = analyzeKTD_EQC_HitsAndMisses(solidKTD_EQCmatches, perfectFits, neg, pcStrNonHits);
        if (solidKTD_EQCmatches.size() == 1) { //  Only 1 good choice; propose it.
            proposeDefinition(kinTerm, (Library.KTD_EQC) solidKTD_EQCmatches.get(0));
            return;
        }
        //  If we get here, there are multiple solidMatches (enclosers).  Check for a perfect fit.
        if (perfectFits.size() > 0) {
            Library.KTD_EQC eqc = (Library.KTD_EQC) perfectFits.get(0),
                    otherEQC;
            if (perfectFits.size() > 1) {
                int totalCBCount = eqc.countClauses(), otherCount;
                for (int i = 1; i < perfectFits.size(); i++) {
                    otherEQC = (Library.KTD_EQC) perfectFits.get(i);
                    otherCount = otherEQC.countClauses();
                    if (otherCount < totalCBCount) {
                        totalCBCount = otherCount;
                        eqc = otherEQC;
                    }  //  end of found-smaller-one
                }  //  end of loop thru eqcs
                System.out.println("\n\n\t\t***** NOTICE:  More than 1 perfect fit for " + kinTerm + ".  Chose smallest.");
                System.out.println("\t\t" + perfectFits);
            }  //  end of more-than-one-perfect-fit
            proposeDefinition(kinTerm, eqc);
            solidKTD_EQCmatches.remove(eqc);
            return;
        }
        if (dataReqCounter.get(kinTerm) != null
                && ((Counter) dataReqCounter.get(kinTerm)).total() >= Library.MAX_DRS_BEFORE_GUESS) {
            ((Counter) dataReqCounter.get(kinTerm)).zero();
            proposeDefinition(kinTerm, (Library.KTD_EQC) solidKTD_EQCmatches.get(0));
            System.out.println("\n\n\t\t***** Exceeded Data Req limit for " + kinTerm + ".  Taking a Guess.");
            return;
        }  //  end of Data-Reqs-Aren't-Working-So-Guess
        //  Compute Similarity scores for all languages in the KTD_EQCs & store in Library.  Compute sum of weights.
        double wtSum = (SIMILARITY_ON ? sumSimScores(solidKTD_EQCmatches) : sumSimScoresALT(solidKTD_EQCmatches));
        TreeMap stringMisses = rankStrNonHits(pcStrNonHits, wtSum);
        if (stringMisses.size() > 0) {  //  found PC_Strings that can separate candidates
//  testOutFile.println("\t" + kinTerm + "\t" + countLeaves(pcStrNonHits));
            askUserForData(kinTerm, stringMisses, pos, neg);
        } else if (cbNonHits.size() > 0) {
            //  Group all equivalent CBs from cbNonHits into CB_EQCs
            TreeMap unMatchedCB_EQCs = groupIntoCB_EQCs(cbNonHits, ktdToKTD_EQC, wtSum);
            //  Now assign a score to each CB_EQC in unMatchedCB_EQCs and choose lowest scoring CB_EQC.
            TreeMap rankedEQCs = lowToHi(unMatchedCB_EQCs);
            if (dataReqCounter.get(kinTerm) == null) {
                dataReqCounter.put(kinTerm, new Counter());
            }
            ((Counter) dataReqCounter.get(kinTerm)).incr();
//  testOutFile.println("\t" + kinTerm + "\t" + cbNonHits.size());
            askUserForData(kinTerm, rankedEQCs, pos, neg);
        }
    }  //  end of method dataSelection

    public ArrayList<Object> makeKTD_EQCs(ArrayList<Object> matches, TreeMap ktdToKTD_EQC)
            throws FileNotFoundException, JavaSystemException, IOException {
        //  Reduce the list of KTDs to a set of KT_EQCs which group the KTDs
        //  (perhaps singletons) via the Library.ktSigTree.
        ArrayList<Object> solidKTD_EQCmatches = new ArrayList<Object>(), triple,
                noisyPos = null, noisyNeg = null;
        if (Library.ktSigCompressed == null) {
            String fileName = Library.libraryDirectory + "KTSigCompressed";
            BufferedReader file = new BufferedReader(new FileReader(fileName));
            Library.ktSigCompressed = Library.readKTSig(file);
        }
        KinTermDef ktd;
        Library.KTD_EQC eqc = null;
        Iterator iter = matches.iterator();

        while (iter.hasNext()) {
            Object obj = iter.next();
            //  matches may contain KTDs (if it's solidKTMatches)
            //  or it may contain triples (if it's noisyKTMatches)
            if (obj instanceof KinTermDef) {
                ktd = (KinTermDef) obj;
            } else {
                triple = (ArrayList<Object>) obj;
                ktd = (KinTermDef) triple.get(0);
                noisyPos = (ArrayList<Object>) triple.get(1);
                noisyNeg = (ArrayList<Object>) triple.get(2);
            }
            if (ktd == null || ktd.eqcSigExact == null) {
                Context.breakpoint();
            }
            ArrayList<Object> eqcList = (ArrayList<Object>) Library.ktSigCompressed.get(ktd.eqcSigExact);
            if (eqcList == null) {  //  null means only 1 KTD in Library has this eqcSigExact
                eqc = new Library.KTD_EQC(ktd.eqcSigExact, ktd);
                // Ck for prior rejection of this KTD_EQC
                if (ctxt.notRejected(eqc, addressTerms)) {
                    solidKTD_EQCmatches.add(eqc);
                    ktdToKTD_EQC.put(ktd, eqc);
                }
            } else {
                for (int i = 0; i < eqcList.size(); i++) {
                    eqc = (Library.KTD_EQC) eqcList.get(i);
                    if (eqc.hasMember(ktd)) {
                        eqc.swapPrototype(new Library.KTD_Ptr(ktd));
                        // Ck for prior rejection of this KTD_EQC
                        if (ctxt.notRejected(eqc, addressTerms)) {
                            if (!solidKTD_EQCmatches.contains(eqc)) {
                                solidKTD_EQCmatches.add(eqc);
                            }
                            ktdToKTD_EQC.put(ktd, eqc);
                        }
                        break;  //  end the loop
                    }
                } //  end of loop thru eqcs in eqcList
            }
            if (noisyPos != null) {
                eqc.noisyPosDyads = noisyPos;
            }
            if (noisyNeg != null) {
                eqc.noisyNegDyads = noisyNeg;
            }
        }  //  end of loop thru ktds in matches
        return solidKTD_EQCmatches;
    }  //  end of method makeKTD_EQCs

    public ArrayList<Object> analyzeKTD_EQC_HitsAndMisses(ArrayList<Object> solidKTD_EQCmatches, ArrayList<Object> perfectFits,
            TreeMap neg, TreeMap pcStrNonHits)
            throws KSParsingErrorException, JavaSystemException, KSInternalErrorException, ClassNotFoundException,
            KSConstraintInconsistency, KSBadHornClauseException, KSNoChainOfRelations2Alter {
        ArrayList<Object> allNonHits = new ArrayList<Object>();  // set of all CBs in any eqc that didn't match POS or NEG
        Iterator iter = solidKTD_EQCmatches.iterator();
        while (iter.hasNext()) {
            Library.KTD_EQC eqc = (Library.KTD_EQC) iter.next();
            TreeMap eqcStringMisses = new TreeMap();
            pcStrNonHits.put(eqc, eqcStringMisses);
            //  pcStrNonHits is eqc => PC_String => (typical) CB
            KinTermDef ktd = eqc.prototype.getKTD();
            eqc.misFits = new ArrayList<Object>();  //  misFits = all expDef CBs that did not match POS
            eqc.baseMisFits = new ArrayList<Object>(); //  baseMisFits = all un-expanded CBs with 1+ expansion missing POS
            eqc.baseFits = new ArrayList<Object>();  //  baseFits = all base CBs that had at least 1 expansion hit POS
            for (int i = 0; i < ktd.expandedDefs.size(); i++) {
                ClauseBody cb = (ClauseBody) ktd.expandedDefs.get(i);
                String firstExpansion = (String) cb.expansionPath.get(0);
                int where = firstExpansion.indexOf(":") + 1;
                Integer baseCB = new Integer(firstExpansion.substring(where));
                if (cb.posHit) {
                    if (!eqc.baseFits.contains(baseCB)) {
                        eqc.baseFits.add(baseCB);
                    }
                } else {
                    eqc.misFits.add(new Integer(cb.seqNmbr));
                    if (!eqc.baseMisFits.contains(baseCB)) {
                        eqc.baseMisFits.add(baseCB);
                    }
                    ArrayList<Object> negDyads = (ArrayList<Object>) neg.get(cb.pcString);
                    //  cb wasn't a posHit.  If it's not a negHit either, put into allNonHits
                    if (negDyads == null) {
                        allNonHits.add(cb);
                        eqcStringMisses.put(cb.pcString, cb);
                    } else {
                        boolean hitOne = false;
                        for (int j = 0; j < negDyads.size(); j++) {
                            Dyad dy = (Dyad) negDyads.get(j);
                            if (fit(cb, dy)) {
                                hitOne = true;
                                j = negDyads.size();
                            }
                        }  //  end of loop thru dyads
                        if (!hitOne) {
                            allNonHits.add(cb);
                            eqcStringMisses.put(cb.pcString, cb);
                        }  //  end of didn't-hit-one
                    }  //  end of else negDyads != null
                }
            }  //  end of loop thru CBs in a KTD
            if (eqc.misFits.isEmpty()) {
                perfectFits.add(eqc);
            }
        }  //  end of loop thru KTD_EQCs
        return allNonHits;
    }  //  end of method analyzeKTD_EQC_Hits

    public void proposeOverlapToUser(String kinTerm, String term, ArrayList<Object> overlappingPCStrings,
            ArrayList<Object> ktermDys, ArrayList<Object> otherTermDys, int typ) throws KSInternalErrorException {
        if (kinTerm.compareTo(term) == 0) {
            throw new KSInternalErrorException("ERROR: 2 instances of same kinTerm proposed as overlaps.");
        }
        if (overlappingPCStrings.isEmpty()) {
            throw new KSInternalErrorException("ERROR: empty set of kinTypes for overlaps proposed.");
        }
        if (nonOverlaps != null) {
            ArrayList<Object> otherTerms = (ArrayList<Object>) nonOverlaps.get(kinTerm);   //  = ArrayList<Object> of rejected terms
            if (otherTerms != null && otherTerms.contains(term)) {
                return;
            }
        }
        if (distinctDefsProposed(kinTerm, term)) {
            return;
        }
        //  OK, User has never rejected this pair as overlaps, and terms not yet learned.  Continue.
        if (issuesForUser.get(kinTerm) == null) {
            issuesForUser.put(kinTerm, new ArrayList<Issue>());
        }
        ArrayList<Object> questions = new ArrayList<Object>();
        questions.add("Could these be overlapping kinTerms?");
        OverlapCandidate cand = new OverlapCandidate(kinTerm, questions, term,
                overlappingPCStrings, ktermDys, otherTermDys);
        issuesForUser.get(kinTerm).add(cand);
    }  //  end of method proposeOverlapToUser

    public void proposeSynonymToUser(String kinTerm, String term, ArrayList<Object> kinTermPCStrings,
            ArrayList<Object> ktermDys, ArrayList<Object> otherTermDys, int typ) throws KSInternalErrorException {
        int order = kinTerm.compareTo(term);
        String word_pair, baseWord = kinTerm, synWord = term;
        if (order < 0) {
            word_pair = kinTerm + "/" + term;
        } else if (order > 0) {
            word_pair = term + "/" + kinTerm;
            baseWord = term;
            synWord = kinTerm;
        } else {
            throw new KSInternalErrorException("ERROR: 2 instances of same kinTerm considered as synonyms.");
        }
        if (nonSynonyms.contains(word_pair)) {
            return;
        }
        if (synonyms.get(synWord) != null && ((String) synonyms.get(synWord)).equals(baseWord)) {
            return;
        }
        if (synonymAlreadyProposed(baseWord, word_pair)) {
            return;
        }
        ArrayList<Object> oddList = new ArrayList<Object>();
        oddList.add(synWord);  //  a list of 1 word -- to match arg list of allTermsDefined
        if (allTermsDefined(baseWord, oddList)) {
            return;  // distinct definitions implies non-synonymous meaning
        }		//  OK, User has never rejected this pair as synonyms, and this is first proposal.  Continue.
        if (issuesForUser.get(baseWord) == null) {
            issuesForUser.put(baseWord, new ArrayList<Issue>());
        }
        ArrayList<Object> questions = new ArrayList<Object>();
        questions.add("Could these 2 kinTerms be synonyms?");
        questions.add("Can you provide any dyads that fit one term, but not the other?");
        SynonymCandidate cand = new SynonymCandidate(kinTerm, questions, word_pair,
                kinTermPCStrings, ktermDys, otherTermDys);
        issuesForUser.get(baseWord).add(cand);
    }  //  end of method proposeSynonymToUser

    public boolean synonymAlreadyProposed(String keyWord, String word_pair) {
        //  Eventually, I'll check for previously-proposed (deferred) synonyms
        //  in addition to checking other proposals in this session.
        if (issuesForUser.get(keyWord) == null) {
            return false;
        }
        ArrayList<Issue> issueList = issuesForUser.get(keyWord);
        for (int i = 0; i < issueList.size(); i++) {
            if (issueList.get(i) instanceof SynonymCandidate
                    && ((SynonymCandidate) issueList.get(i)).pairOfTerms.equals(word_pair)) {
                return true;
            }
        }
        return false;
    }  //  end of method synonymAlreadyProposed

    public boolean synAlreadyPosted(String kinTerm, String term) {
        String word_pair;
        if (kinTerm.compareTo(term) > 0) {
            word_pair = term + "/" + kinTerm;
        } else {
            word_pair = kinTerm + "/" + term;
        }
        return synonymAlreadyProposed(term, word_pair);
    }  //  end of method synAlreadyPosted

    public boolean synRejected(String kinTerm, String term) {
        if (kinTerm.equals(term)) {
            return true;
        }
        if (nonSynonyms == null || nonSynonyms.isEmpty()) {
            return false;
        }
        String word_pair;
        if (kinTerm.compareTo(term) > 0) {
            word_pair = term + "/" + kinTerm;
        } else {
            word_pair = kinTerm + "/" + term;
        }
        if (nonSynonyms.contains(word_pair)) {
            return true;
        } else {
            return false;
        }
    }  //  end of method synRejected

    public void proposeDefinition(String kinTerm, ArrayList<Object> octuple)
            throws KSParsingErrorException, JavaSystemException, KSInternalErrorException, KSConstraintInconsistency {
        ArrayList<Object> questions = new ArrayList<Object>(),
                languagesUsed = (ArrayList<Object>) octuple.get(1),
                cbsUsed = (ArrayList<Object>) octuple.get(2),
                posUncovered = (ArrayList<Object>) octuple.get(3),
                negsCovered = (ArrayList<Object>) octuple.get(4),
                auxiliaries = (ArrayList<Object>) octuple.get(5),
                origBCBs = (ArrayList<Object>) octuple.get(6),
                origXCBs = (ArrayList<Object>) octuple.get(7);
        KinTermDef composedKTD = (KinTermDef) octuple.get(0);
        int nPosSize = (posUncovered == null ? 0 : posUncovered.size()),
                nNegSize = (negsCovered == null ? 0 : negsCovered.size());
        if (nPosSize + nNegSize == 0) {
            questions.add("This definition seems a perfect fit.  Is it correct for '" + kinTerm + "'?");
        } else {
            questions.add("This definition is a good fit, except for a few 'noise' dyads that could be"
                    + "\n errors or exceptions to the rule.  Is it correct for '" + kinTerm + "'?");
        }
        questions.add("Is there anyone else who is called '" + kinTerm + "' that does not fit this definition?");
        ComposedDef suggestion = new ComposedDef(kinTerm, questions, octuple);
        if (issuesForUser.get(kinTerm) == null) {
            issuesForUser.put(kinTerm, new ArrayList<Issue>());
        }
        ArrayList<Issue> suggestions = issuesForUser.get(kinTerm);
        suggestions.add(suggestion);
        return;
    }  //  end of method proposeDefinition(ArrayList<Object>)

    public void proposeDefinition(String kinTerm, Library.KTD_EQC eqc)
            throws KSParsingErrorException, JavaSystemException, KSInternalErrorException, KSConstraintInconsistency {
        ArrayList<Object> questions = new ArrayList<Object>();
        int nPosSize = (eqc.noisyPosDyads == null ? 0 : eqc.noisyPosDyads.size()),
                nNegSize = (eqc.noisyNegDyads == null ? 0 : eqc.noisyNegDyads.size());
        if (eqc.misFits.size() + nPosSize + nNegSize == 0) {	//	Bingo!
            questions.add("This definition seems a perfect fit.  Is it correct for '" + kinTerm + "'?");
            questions.add("Is there anyone else who is called '" + kinTerm + "' that does not fit this definition?");
            ProposedDef suggestion = new ProposedDef(kinTerm, "proposedDef", questions, eqc);
            if (issuesForUser.get(kinTerm) == null) {
                issuesForUser.put(kinTerm, new ArrayList<Issue>());
            }
            ArrayList<Issue> suggestions = issuesForUser.get(kinTerm);
            suggestions.add(suggestion);
            return;
        }  //  end of Bingo
        if (eqc.misFits.isEmpty()) {	//	Nearly Bingo!
            questions.add("This definition is a good fit, except for a few 'noise' dyads that could be"
                    + "\n exceptions to the rule.  Is it correct for '" + kinTerm + "'?");
            questions.add("Is there any other relative called '" + kinTerm
                    + "'\nwho does not fit this definition?");
            ProposedDef suggestion = new ProposedDef(kinTerm, "noisyDef", questions, eqc);
            if (issuesForUser.get(kinTerm) == null) {
                issuesForUser.put(kinTerm, new ArrayList<Issue>());
            }
            ArrayList<Issue> suggestions = issuesForUser.get(kinTerm);
            suggestions.add(suggestion);
            return;
        }  //  end of Nearly Bingo
        ArrayList<Object> cleanMisses = new ArrayList<Object>(eqc.baseMisFits);
        cleanMisses.removeAll(eqc.baseFits);
        int exceptions = nPosSize + nNegSize;
        String pl = (exceptions == 1 ? "" : "s");
        if (cleanMisses.isEmpty()) {
            questions.add("This definition covers every example of '" + kinTerm + "' we've seen, plus some "
                    + "of their logical extensions.  Would these extensions be called '" + kinTerm + "' too?");
            if (exceptions > 0) {
                questions.add("It does not fit " + exceptions + " dyad" + pl + ", which might be exceptional.");
            }
            questions.add("Is there anyone else who is called '" + kinTerm + "' that does not fit this definition?");
            ProposedDef suggestion = new ProposedDef(kinTerm, "extension", questions, eqc);
            if (issuesForUser.get(kinTerm) == null) {
                issuesForUser.put(kinTerm, new ArrayList<Issue>());
            }
            ArrayList<Issue> suggestions = issuesForUser.get(kinTerm);
            suggestions.add(suggestion);
            return;
        } else {
            questions.add("This definition covers every example of '" + kinTerm + "' we've seen, plus some "
                    + "other Kin Types we haven't seen.  Would these others be called '" + kinTerm + "' too?");
            if (exceptions > 0) {
                questions.add("It does not fit " + exceptions + " dyad" + pl + ", which might be exceptional.");
            }
            questions.add("Is there anyone else who is called '" + kinTerm + "' that does not fit this definition?");
            ProposedDef suggestion = new ProposedDef(kinTerm, "encloser", questions, eqc);
            if (issuesForUser.get(kinTerm) == null) {
                issuesForUser.put(kinTerm, new ArrayList<Issue>());
            }
            ArrayList<Issue> suggestions = issuesForUser.get(kinTerm);
            suggestions.add(suggestion);
            return;
        }
    }  //  end of method proposeDefinition(String kinTerm, Library.KTD_EQC eqc)
    
    public boolean previouslyRejected(String kinTerm, Library.KTD_EQC eqc) {
        TreeMap<String, ArrayList<Context.HistoryItem>> history = null;
        history = (addressTerms ? ctxt.learningHistoryAdr : ctxt.learningHistoryRef);
        
        return false;
    }
    

    public double sumSimScoresALT(ArrayList<Object> solidKTD_EQCmatches) {
        //  TEST version of this method, which eliminates all influence of similarity
        double wtSum = (double) solidKTD_EQCmatches.size();
        for (int i = 0; i < solidKTD_EQCmatches.size(); i++) {
            Library.KTD_EQC ktdEQC = (Library.KTD_EQC) solidKTD_EQCmatches.get(i);
            ktdEQC.score = 1.0d;
        }
        return wtSum;
    }  //  end of test method sumSimScoresALT

    public double sumSimScores(ArrayList<Object> solidKTD_EQCmatches)
            throws KSInternalErrorException, KSConstraintInconsistency, JavaSystemException, FileNotFoundException,
            KSBadHornClauseException, IOException, ClassNotFoundException {
        //  Compute Similarity scores for all languages in the KTD_EQCs & store in Library.  Return sum of weights.
        if (Library.clSt == null) {
            new Library.ClusterState(!ctxt.featuresHaveChanged);  //  => Library.clSt
        }
        FeatureVectorObj currFV = (FeatureVectorObj) Library.clSt.fvMap.get(current.languageName);
        if (currFV == null) {
            currFV = current.computeFeatureVector(new ArrayList<Object>());
            currFV.fvID = Library.clSt.allFVs.size();
            Library.clSt.allFVs.add(currFV);
            Library.clSt.fvMap.put(current.languageName, currFV);
        }
        if (Library.clSt.simScoresForCUC == null) {
            Library.clSt.simScoresForCUC = new TreeMap();
        }
        TreeMap simScores = Library.clSt.simScoresForCUC;  //  LangName => Double
        double[] weightVector = Library.clSt.getWtVect();
        double wtSum = 0d;
        for (int i = 0; i < solidKTD_EQCmatches.size(); i++) {
            Library.KTD_EQC ktdEQC = (Library.KTD_EQC) solidKTD_EQCmatches.get(i);
            ktdEQC.score = -999999999d;
            for (int j = 0; j < ktdEQC.members.size(); j++) {
                Library.KTD_Ptr mbr = (Library.KTD_Ptr) ktdEQC.members.get(j);
                Double simScore = (Double) simScores.get(mbr.languageName);
                if (simScore == null) {
                    FeatureVectorObj mbrFV = (FeatureVectorObj) Library.clSt.fvMap.get(mbr.languageName);
                    if (mbrFV == null) {
                        String fileName = Library.libraryDirectory + "Feature Vectors/" + mbr.languageName + ".fvect";
                        BufferedReader inFile = new BufferedReader(new FileReader(fileName));
                        mbrFV = new FeatureVectorObj(inFile);
                        Library.clSt.fvMap.put(mbr.languageName, mbrFV);
                    }  //  end of it wasn't already on fvMap
                    float[] simVector = currFV.computeSimilarity(mbrFV);
                    double simSc = 0d;
                    for (int n = 0; n < Library.clSt.numberOfFeatures; n++) {  //  simSqrd = simVector[n]^2;
                        float simSqrd = (float) Math.pow((double) simVector[n], 2d);
                        simSc += simSqrd * weightVector[n + 2];
                    }
                    simScore = new Double(simSc);
                    simScores.put(mbr.languageName, simScore);
                }  //  end of simScore was not already cached
                if (simScore.doubleValue() > ktdEQC.score) {
                    ktdEQC.score = simScore.doubleValue();  //  higher score is better
                }
            }  //  end of loop thru members
        }  //  end of first loop thru KTD_EQCs
        for (int i = 0; i < solidKTD_EQCmatches.size(); i++) {
            Library.KTD_EQC ktdEQC = (Library.KTD_EQC) solidKTD_EQCmatches.get(i);
            wtSum += ktdEQC.score;
        }  //  end of second loop thru KTD_EQCs
        return wtSum;
    }  //  end of method sumSimScores

    public TreeMap rankStrNonHits(TreeMap pcStrNonHits, double wtSum) throws KSInternalErrorException {
        //  pcStrNonHits is eqc => PC_String => (typical) CB
        if (pcStrNonHits == null || pcStrNonHits.size() < 2) {
            throw new KSInternalErrorException("DT:rankStrNonHits given less than 2 KTD_EQCs to disambiguate.");
        }
        double[] weights = new double[pcStrNonHits.size()];  //  array of weights for these KTD_EQCs
        double halfWt = wtSum / 2d;
        int ndx = 0;
        Iterator iter = pcStrNonHits.keySet().iterator();
        while (iter.hasNext()) {
            weights[ndx++] = ((Library.KTD_EQC) iter.next()).score;
        }
        ArrayList<Object> treeArray = new ArrayList<Object>(pcStrNonHits.values());
        TreeMap ranked = new TreeMap(), base, other;
        //  STRATEGY:  Find pcStrings that will hit less than all the candidate KTD_EQCs.
        //			   Score them the usual way: absolute(total of hittees - halfWt).
        for (int i = 0; i < treeArray.size() - 1; i++) {
            base = (TreeMap) treeArray.get(i);
            iter = base.entrySet().iterator();  //  base is PC_String => CB
            while (iter.hasNext()) {
                Map.Entry entry = (Map.Entry) iter.next();
                String pcStr = (String) entry.getKey();
                ClauseBody cb = (ClauseBody) entry.getValue();
                double thisWt = weights[i];
                for (int j = i + 1; j < treeArray.size(); j++) {
                    other = (TreeMap) treeArray.get(j);
                    if (other.containsKey(pcStr)) {
                        thisWt += weights[j];
                        other.remove(pcStr);
                    }
                }  //  end of loop thru others
                //  Now thisWt = total weights of KTD_EQCs hit by pcStr
                thisWt = Math.abs(thisWt - halfWt);
                if (thisWt < halfWt) {  //  found one
                    ScoreObj scr = new ScoreObj(pcStr, thisWt);
                    ranked.put(scr, cb);  // only need 1 per score; overwrite is OK.
                }
            }  //  end of loop thru base's enties
        }  //  end of top loop
        //  Now there's only 1 (maybe empty) TMap left
        base = (TreeMap) treeArray.get(treeArray.size() - 1);
        double thisWt = weights[treeArray.size() - 1];
        thisWt = Math.abs(thisWt - halfWt);
        iter = base.entrySet().iterator();
        while (iter.hasNext()) {  //  all remaining pcStrings hit just this KTD_EQC
            Map.Entry entry = (Map.Entry) iter.next();
            String pcStr = (String) entry.getKey();
            ClauseBody cb = (ClauseBody) entry.getValue();
            ScoreObj scr = new ScoreObj(pcStr, thisWt);
            ranked.put(scr, cb);
        }
        return ranked;  //  ranked is ScoreObj => CB
    }  //  end of method rankStrNonHits

    public TreeMap groupIntoCB_EQCs(ArrayList<Object> allMisFits, TreeMap ktdToKTD_EQC, double wtSum)
            throws KSInternalErrorException, JavaSystemException, FileNotFoundException {
        TreeMap unMatchedCB_EQCs = new TreeMap();  //  also PC_Str => List of CB_EQCs
        Library.ClauseIndex cbIndex = Library.cbIndex;  //  PC_Str => List of CB_EQCs
        for (int i = 0; i < allMisFits.size(); i++) {  //  make a new entry for this PC_Str
            ClauseBody cb = (ClauseBody) allMisFits.get(i);
            if (!unMatchedCB_EQCs.containsKey(cb.pcString)) {
                ArrayList<Object> eqcsForThisPC_Str = new ArrayList<Object>();
                eqcsForThisPC_Str.add(new Library.CB_EQC(cb));
                unMatchedCB_EQCs.put(cb.pcString, eqcsForThisPC_Str);
            } else {  //  add to existing entry for this PC_Str
                ArrayList<Object> eqcs = (ArrayList<Object>) cbIndex.get(cb.pcString);
                Library.CB_EQC bigEQC = null, existingEQC;
                for (int j = 0; j < eqcs.size(); j++) {
                    try {
                        bigEQC = (Library.CB_EQC) eqcs.get(j);
                        if (bigEQC.hasMember(cb)) {
                            j = eqcs.size();  //  found it -- end loop
                        }
                    } //  end of search for cb's CB_EQC in ClauseIndex
                    catch (NullPointerException npe) {
                        System.out.println("Ooooops!");
                    }
                }
                ArrayList<Object> eqcsForThisPC_Str = (ArrayList<Object>) unMatchedCB_EQCs.get(cb.pcString);
                boolean joinedExisting = false;
                for (int j = 0; j < eqcsForThisPC_Str.size(); j++) {
                    existingEQC = (Library.CB_EQC) eqcsForThisPC_Str.get(j);
                    if (bigEQC.hasMember(existingEQC.prototype.clause)) {
                        existingEQC.members.add(new Library.CB_Ptr(cb));
                        joinedExisting = true;
                        j = eqcsForThisPC_Str.size();  //  found it -- end loop
                    }
                }  //  end of loop thru eqcsForThisPC_Str
                if (!joinedExisting) {
                    eqcsForThisPC_Str.add(new Library.CB_EQC(cb));
                }
            }  //  end of there was already an entry for this PC_Str
        }  //  end of loop thru allMisFits
        //  Now compute the similarity score of each CB_EQC
        Iterator iter = unMatchedCB_EQCs.values().iterator();
        while (iter.hasNext()) {
            ArrayList<Object> eqcList = (ArrayList<Object>) iter.next();
            for (int i = 0; i < eqcList.size(); i++) {
                Library.CB_EQC thisCB_EQC = (Library.CB_EQC) eqcList.get(i);
                thisCB_EQC.score = 0d;
                for (int j = 0; j < thisCB_EQC.members.size(); j++) {
                    Library.CB_Ptr ptr = (Library.CB_Ptr) thisCB_EQC.members.get(j);
                    Library.KTD_EQC ktdEQC = (Library.KTD_EQC) ktdToKTD_EQC.get(ptr.clause.ktd);
                    thisCB_EQC.score += ktdEQC.score;
                }  //  end of loop thru members
                thisCB_EQC.score = Math.abs(thisCB_EQC.score - (wtSum / 2));
            }  //  end of loop thru CB_EQCs
        }  //  end of loop thru lists of CB_EQCs
        return unMatchedCB_EQCs;
    }  //  end of method groupIntoCB_EQCs()

    public TreeMap lowToHi(TreeMap unMatchedCB_EQCs) throws JavaSystemException {
        Iterator iter = unMatchedCB_EQCs.values().iterator();
        ArrayList<Object> eqcs = (ArrayList<Object>) iter.next();
        Library.CB_EQC comparator = (Library.CB_EQC) eqcs.get(0);  //  sample CB_EQC
        TreeMap ranked = new TreeMap(comparator);  //  CB_EQC is a comparator: on score, then by PC_String size.
        for (int i = 0; i < eqcs.size(); i++) {
            Library.CB_EQC cbEQC = (Library.CB_EQC) eqcs.get(i);
            if (ranked.get(cbEQC) == null) {
                ranked.put(cbEQC, new ArrayList<Object>());
            }
            ArrayList<Object> tieScores = (ArrayList<Object>) ranked.get(cbEQC);
            tieScores.add(cbEQC);
        }
        while (iter.hasNext()) {
            eqcs = (ArrayList<Object>) iter.next();
            for (int i = 0; i < eqcs.size(); i++) {
                Library.CB_EQC cbEQC = (Library.CB_EQC) eqcs.get(i);
                if (ranked.get(cbEQC) == null) {
                    ranked.put(cbEQC, new ArrayList<Object>());
                }
                ArrayList<Object> tieScores = (ArrayList<Object>) ranked.get(cbEQC);
                tieScores.add(cbEQC);
            }
        }
        return ranked;
    }  //  end of method lowToHi

    public void askUserForData(String kinTerm, TreeMap rankedEQCs, TreeMap pos, TreeMap neg)
            throws KSBadHornClauseException, KSInternalErrorException, KSConstraintInconsistency,
            ClassNotFoundException, JavaSystemException {
        boolean holder = Context.simulation;
        Context.simulation = false;
        ArrayList<Object> questions = new ArrayList<Object>();
        ArrayList<Library.CB_Ptr> cbPtrs = new ArrayList<Library.CB_Ptr>();
        int count = 0;
        Iterator iter = rankedEQCs.values().iterator();
        while (count < 3 && iter.hasNext()) {
            Object obj = iter.next();
            if (obj instanceof ArrayList) {
                ArrayList<Object> eqcList = (ArrayList<Object>) obj;
                for (int i = 0; i < eqcList.size(); i++) {
                    Library.CB_EQC cbEQC = (Library.CB_EQC) eqcList.get(i);
                    if (pos.get(cbEQC.pcString) == null && neg.get(cbEQC.pcString) == null) {
                        cbPtrs.add(cbEQC.prototype);
                        if (count++ >= 3) {
                            break;
                        }
                    }  //  end of not-in-POS-or-NEG
                }  //  end of loop thru eqcList
            } else {  //  must be a CB
                ClauseBody cb = (ClauseBody) obj;
                if (pos.get(cb.pcString) == null && neg.get(cb.pcString) == null) {
                    cbPtrs.add(new Library.CB_Ptr(cb));
                    count++;
                }  //  end of not-in-POS-or-NEG
            }  //  end of must be a CB
        }  //  end of loop thru rankedEQCs
        if (cbPtrs.isEmpty()) {
            return;
        }
        questions.add("This hypothetical dyad has not yet been seen. Please find a real example"
                + " of this and assign it the proper kin term.");
        DataRequest disc = new DataRequest(kinTerm, questions, cbPtrs);
        if (issuesForUser.get(kinTerm) == null) {
            issuesForUser.put(kinTerm, new ArrayList<Issue>());
        }
        ArrayList<Issue> issues = issuesForUser.get(kinTerm);
        issues.add(disc);
        Context.simulation = holder;  //  restore the previous value
    }  //  end of method askUserForData()

    /*	For any particular KTD, if the set of POS dyads matched by its CBs in solidCBMatches equals the set in POS,
    and none of its CBs match any dyads in NEG, then that KTD contains kinTerm.  Record it in solidKTMatches.
    If the number of misFits < IGNORABLE, put it in noisyKTMatches.

    For any particular KTD, if the set of POS dyads matched by its CBs in solidCBMatches plus the set matched
    by its CBs in potFalseNeg equals the set in POS, then that KTD contains kinTerm with some noise.  Record this
    in noisyKTMatches.

    If the number of NEG dyads matched by its CBs in potFalseNeg is < IGNORABLE_NOISE, this is a noisy match.
    Record it in noisyKTMatches.

    If the number of NEG dyads matched by its CBs in potFalseNeg is < MAX_NOISE, record an Anomaly.

    Likewise, make Anomalies for any potFalsePos situation.
     */
    public void findKTMatches(String kinTerm, ArrayList<Object> solidCBMatches, ArrayList<Object> potFalseNeg, ArrayList<Object> potFalsePos, TreeMap pos,
            TreeMap neg, int maxNoise, int ignorable, ArrayList<Object> solidKTMatches, ArrayList<Object> noisyKTMatches,
            ArrayList<Object> anomalies, TreeMap rejectedDefs)
            throws KSParsingErrorException, KSConstraintInconsistency, KSInternalErrorException, JavaSystemException,
            KSBadHornClauseException, ClassNotFoundException, FileNotFoundException {

        int posSize = countLeaves(pos),
            maxHits = (int) Math.floor(posSize * maxNoise / 100d),
            ignorableHits = (int) Math.floor(posSize * ignorable / 100d);
        KinTermDef ktd;
        TreeMap cbLists = new TreeMap();
        TreeMap ktdTreeSolid = makeTreeSets(solidCBMatches, false, cbLists); // For each KTD_Ptr the set of dyads that its CBs matched solidly
        Iterator kTreeIter = ktdTreeSolid.entrySet().iterator();
        while (kTreeIter.hasNext()) {
            Map.Entry entry = (Map.Entry) kTreeIter.next();
            Library.KTD_Ptr ktdPtr = (Library.KTD_Ptr) entry.getKey();
            ktd = null;   //  only read it from disk if required
            ArrayList<Object> rejects = (ArrayList<Object>) rejectedDefs.get(kinTerm);
            boolean neverRejected = true;
            if (rejects != null) {
                for (int i = 0; i < rejects.size(); i++) {
                    ProposedDef reject = (ProposedDef) rejects.get(i);
                    if (reject.ktd.kinTerm.equals(ktdPtr.kinTerm)
                            && reject.ktd.domTh.languageName.equals(ktdPtr.languageName)) {
                        neverRejected = false;
                        break;
                    }  //  end of this ktd-was-previously-rejected
                }  //  end of search through rejects
            }
            if (neverRejected) {  //  Ignore any seeming matches that User has rejected.
                ArrayList<Object> listSetSolid = (ArrayList<Object>) entry.getValue();
                ArrayList<Object> negHits = new ArrayList<Object>(), tracer = new ArrayList<Object>();
                if (listSetSolid.size() == posSize) {   //  solidSize = nmbr of dyads matched solidly
                    ArrayList<Object> ptrList = (ArrayList<Object>) cbLists.get(ktdPtr);
                    ktd = ktdPtr.getKTD(ptrList);
                    if (noFits(ktd, ktdPtr, pos, neg, cbLists, listSetSolid, posSize, negHits, maxHits, tracer)) {
                        solidKTMatches.add(ktd); //  Perfect encloser.  Done for now.
                    }
                } else {
                    if (tracer.isEmpty() && posSize - listSetSolid.size() <= maxHits) {  //  it's worth running noFits, & we haven't
                        ArrayList<Object> ptrList = (ArrayList<Object>) cbLists.get(ktdPtr);
                        ktd = ktdPtr.getKTD(ptrList);
                        noFits(ktd, ktdPtr, pos, neg, cbLists, listSetSolid, posSize, negHits, maxHits, tracer);
                    }
                    int nmbr = posSize - listSetSolid.size() + negHits.size();  //  how many misfits there were
                    if (nmbr <= ignorableHits) {  //  ALMOST!
                        ArrayList<Object> posMisses = harvestLeaves(pos),
                                          triple = new ArrayList<Object>(), confirmedProblems;
                        posMisses.removeAll(listSetSolid);  //  posMisses = POS minus the Solid hits
                        if (ktd == null) {
                            ktd = ktdPtr.getKTD();
                        }
                        triple.add(ktd);
                        triple.add(posMisses);
                        triple.add(negHits);
                        noisyKTMatches.add(triple);
                        confirmedProblems = confirmedScan(posMisses, negHits);
                        if (nmbr - confirmedProblems.size() > 0) {
                            String art = (nmbr == 1 ? "This " : "These "),
                                    pl = (nmbr == 1 ? "" : "s"),
                                    lp = (nmbr == 1 ? "s" : ""),
                                    confirmed = (confirmedProblems.isEmpty() ? "" : "\nNOTE: You previously confirmed "
                                    + confirmedProblems.size() + " such."),
                                    question = art + nmbr + " dyad" + pl + " seem" + lp
                                    + " to break a pattern.  Could the dyad" + pl + " be wrong?" + confirmed;
                            anomalies.add(new Anomaly(ktdPtr, kinTerm, question, "nearMiss", posMisses, negHits, pos, neg));
                        }  //  end of actually have challengable dyads
                    } else if (nmbr <= maxHits) {  //  A few more dyads spoiled the match
                        ArrayList<Object> posMisses = harvestLeaves(pos), confirmedProblems;
                        posMisses.removeAll(listSetSolid);  //  posMisses = POS minus the Solid hits
                        confirmedProblems = confirmedScan(posMisses, negHits);
                        nmbr -= confirmedProblems.size();
                        if (nmbr > 0) {
                            String art = (nmbr == 1 ? "This " : "These "),
                                    pl = (nmbr == 1 ? "" : "s"),
                                    lp = (nmbr == 1 ? "s" : ""),
                                    confirmed = (confirmedProblems.isEmpty() ? "" : "\nNOTE: You previously confirmed "
                                    + confirmedProblems.size() + " such."),
                                    question = art + nmbr + " dyad" + pl + " seem" + lp
                                    + " to break a pattern.  Could the dyad" + pl + " be wrong?" + confirmed;
                            anomalies.add(new Anomaly(ktdPtr, kinTerm, question, "nearMiss", posMisses, negHits, pos, neg));
                        }
                    }
                }
            }  //  end of never-Rejected
        }  //  end of loop thru entries
        //  Identify any Potential falseNeg anomalies based on clauses
        cbLists = new TreeMap();
        TreeMap kTreeFalseNeg = makeTreeSets(potFalseNeg, true, cbLists); // Noisy matches.
        kTreeIter = kTreeFalseNeg.entrySet().iterator();
        while (kTreeIter.hasNext()) {
            Map.Entry entry = (Map.Entry) kTreeIter.next();
            Library.KTD_Ptr ktdPtr = (Library.KTD_Ptr) entry.getKey();
            ktd = ktdPtr.getKTD();
            ArrayList<Object> data = (ArrayList<Object>) entry.getValue();
            ArrayList<Object> nPosHits = (ArrayList<Object>) data.get(0),
                    nNegHits = (ArrayList<Object>) data.get(1);
            removeChallengedDyads(nNegHits);
            int noisyPos = nPosHits.size(),
                    noisyNeg = nNegHits.size();
            ArrayList<Object> listSetSolid = (ArrayList<Object>) ktdTreeSolid.get(ktdPtr);
            int solidSetSize = ((listSetSolid == null) ? 0 : listSetSolid.size());
            if (noisyNeg > 0 //  Potential falseNeg Anomaly found
                    && ((noisyNeg * 1.0f) / (posSize + noisyNeg)) < (maxNoise / 100f)
                    && noisyNeg < maxHits
                    && (!scanForConfirmed(nNegHits))) {
                ArrayList<Object> cbList = (ArrayList<Object>) cbLists.get(ktdPtr);
                expDefLoop:
                for (int i = 0; i < ktd.expandedDefs.size(); i++) {
                    ClauseBody cb = (ClauseBody) ktd.expandedDefs.get(i);
                    ArrayList<Object> dyads = (ArrayList<Object>) neg.get(cb.pcString);  //  find ALL negHits
                    if (dyads != null && notFound(cb.seqNmbr, cbList)  // but don't double count neg hits already found (cbList)
                            && cb.pcString.indexOf("*") == -1) { //  Can't match UDPs.
                        for (int j = 0; j < dyads.size(); j++) {
                            Dyad dyad = (Dyad) dyads.get(j);
                            if (fit(cb, dyad) && !dyad.challenged) {
                                nNegHits.add(dyad);
                                if (nNegHits.size() >= maxHits) {
                                    break expDefLoop;
                                }
                            }  //  end of if fit(cb, dyad)
                        }  //  end of loop thru dyads
                    }  //  end of if-this-CB-not-tested-yet
                    dyads = (ArrayList<Object>) pos.get(cb.pcString);  //  find ALL posHits, no double counting
                    if (dyads != null && notFound(cb.seqNmbr, cbList)
                            && cb.pcString.indexOf("*") == -1) //  Can't match UDPs.
                    {
                        for (int j = 0; j < dyads.size(); j++) {
                            Dyad dyad = (Dyad) dyads.get(j);
                            if (fit(cb, dyad) && !dyad.challenged) {
                                nPosHits.add(dyad);
                            }
                        }  //  end of loop thru dyads
                    }
                }  //  end of loop thru all expandedDefs
                // We now have all the pos & neg hits for ALL CBs in this KTD
                noisyPos = nPosHits.size();
                noisyNeg = nNegHits.size();
                if (noisyPos + solidSetSize >= posSize
                        && noisyNeg < maxHits
                        && ((noisyNeg * 1.0f) / (noisyPos + noisyNeg)) < (maxNoise / 100f)) {
                    ArrayList<Object> confirmedProblems = confirmedScan(null, nNegHits);
                    noisyNeg -= confirmedProblems.size();
                    if (noisyNeg > 0) {
                        String art = (noisyNeg == 1 ? "This " : "These "),
                                pl = (noisyNeg == 1 ? "" : "s"),
                                lp = (noisyNeg == 1 ? "s" : ""),
                                confirmed = (confirmedProblems.isEmpty() ? "" : "\nNOTE: You previously confirmed "
                                + confirmedProblems.size() + " such."),
                                question = art + noisyNeg + " dyad" + pl + " seem" + lp
                                + " to break a pattern.  Could the dyad" + pl + " be wrong?" + confirmed;
                        anomalies.add(new Anomaly(ktdPtr, kinTerm, question, "falseNeg", nPosHits, nNegHits, pos, neg));
                    }
                }
            }
        }
        //  Identify any Potential falsePos anomalies based on clauses
        cbLists = new TreeMap();
        TreeMap kTreeFalsePos = makeTreeSets(potFalsePos, true, cbLists);
        kTreeIter = kTreeFalsePos.entrySet().iterator();
        while (kTreeIter.hasNext()) {
            Map.Entry entry = (Map.Entry) kTreeIter.next();
            Library.KTD_Ptr ktdPtr = (Library.KTD_Ptr) entry.getKey();
            ktd = ktdPtr.getKTD();
            ArrayList<Object> data = (ArrayList<Object>) entry.getValue();
            ArrayList<Object> nPosHits = (ArrayList<Object>) data.get(0),
                    nNegHits = (ArrayList<Object>) data.get(1);
            removeChallengedDyads(nPosHits);
            int noisyPos = nPosHits.size(),
                    noisyNeg = nNegHits.size();
            if (noisyPos > 0 && noisyPos < maxHits
                    && ((noisyPos * 1.0f) / (noisyPos + noisyNeg)) < (maxNoise / 100f)
                    && (!scanForConfirmed(nNegHits))) {  //  still some potential here
                ArrayList<Object> cbList = (ArrayList<Object>) cbLists.get(ktdPtr);
                expDefLoop2:
                for (int i = 0; i < ktd.expandedDefs.size(); i++) {
                    ClauseBody cb = (ClauseBody) ktd.expandedDefs.get(i);
                    ArrayList<Object> dyads = (ArrayList<Object>) pos.get(cb.pcString);  //  find ALL posHits
                    if (dyads != null && notFound(cb.seqNmbr, cbList)
                            && cb.pcString.indexOf("*") == -1) { //  Can't match UDPs.
                        for (int j = 0; j < dyads.size(); j++) {
                            Dyad dyad = (Dyad) dyads.get(j);
                            if (fit(cb, dyad) && !dyad.challenged) {
                                nPosHits.add(dyad);
                                if (nPosHits.size() >= maxHits) {
                                    break expDefLoop2;
                                }
                            }  //  end of if fit(cb, dyad)
                        }  //  end of loop thru dyads
                    }  //  end of if-this-CB-not-tested-yet
                    dyads = (ArrayList<Object>) neg.get(cb.pcString);  //  find ALL negHits
                    if (dyads != null && notFound(cb.seqNmbr, cbList)
                            && cb.pcString.indexOf("*") == -1) //  Can't match UDPs.
                    {
                        for (int j = 0; j < dyads.size(); j++) {
                            Dyad dyad = (Dyad) dyads.get(j);
                            if (fit(cb, dyad) && !dyad.challenged) {
                                nNegHits.add(dyad);
                            }
                        }  //  end of loop thru dyads
                    }
                }  //  end of loop thru all expandedDefs
                noisyPos = nPosHits.size();
                noisyNeg = nNegHits.size();
                if (noisyPos < maxHits && ((noisyPos * 1.0f) / (noisyPos + noisyNeg)) <= (maxNoise / 100f)) {
                    ArrayList<Object> confirmedProblems = confirmedScan(nPosHits, null);
                    noisyPos -= confirmedProblems.size();
                    if (noisyPos > 0) {
                        String art = (noisyPos == 1 ? "This " : "These "),
                                pl = (noisyPos == 1 ? "" : "s"),
                                lp = (noisyPos == 1 ? "s" : ""),
                                confirmed = (confirmedProblems.isEmpty() ? "" : "\nNOTE: You previously confirmed "
                                + confirmedProblems.size() + " such."),
                                question = art + noisyPos + " dyad" + pl + " seem" + lp
                                + " to break a pattern.  Could the dyad" + pl + " be wrong?" + confirmed;
                        anomalies.add(new Anomaly(ktdPtr, kinTerm, question, "falsePos", nPosHits, nNegHits, pos, neg));
                    }
                }  //  end of still-meet-the-criteria
            }  //  end of there-was-some-potential-here
        }  //  end of loop thru the KTDs
    }  //  end of method findKTMatches

    public ArrayList<Object> confirmedScan(ArrayList<Object> posMisses, ArrayList<Object> negHits) {
        //  The 2 input lists may contain Dyads or DyadTokens
        ArrayList<Object> confirmedProblems = new ArrayList<Object>();
        Iterator dyIter;
        Dyad dy;
        if (posMisses != null) {
            dyIter = posMisses.iterator();
            while (dyIter.hasNext()) {
                dy = (Dyad) dyIter.next();
                if (dy.confirmed || dy.kinTermType == 7) {
                    confirmedProblems.add(dy);
                    dyIter.remove();
                } else {
                    dy.challenged = true;
                }
            }
        }  //  end of posMisses != null
        if (negHits != null) {
            dyIter = negHits.iterator();
            while (dyIter.hasNext()) {
                dy = (Dyad) dyIter.next();
                if (dy.confirmed || dy.kinTermType == 7) {
                    confirmedProblems.add(dy);
                    dyIter.remove();
                } else {
                    dy.challenged = true;
                }
            }
        }  //  end of negHits != null
        return confirmedProblems;
    }  //  end of method confirmedScan

    /*	Takes a list of lists like [CB_EQC, hitList, maybeSomethingElse]; hitList is a list of dyads that matched CB.
    If secondSet == false, returns a TreeMap of KTDs mapped to ALists of the dyads in their CBs' hitLists.
    Else, returns a TreeMap of KTDs mapped to lists of ALists.  First ArrayList<Object> is of posHitList.
    Second ArrayList<Object> is of negHitList
    In either case, build cbLists: a TreeMap of (ktd_Ptr -> List of CB_Ptrs)		*/
    public TreeMap makeTreeSets(ArrayList<Object> matches, boolean secondSet, TreeMap cbLists)
            throws KSParsingErrorException, KSConstraintInconsistency, KSInternalErrorException {
        TreeMap tree = new TreeMap();
        Library.KTD_Ptr ktdPtr;
        if (!secondSet) {
            for (int i = 0; i < matches.size(); i++) {
                ArrayList<Object> pair = (ArrayList<Object>) matches.get(i);
                Library.CB_EQC eqc = (Library.CB_EQC) pair.get(0);
                ArrayList<Object> dyads = (ArrayList<Object>) pair.get(1);
                ArrayList<Object> mbrs = eqc.members;
                for (int j = 0; j < mbrs.size(); j++) {
                    Library.CB_Ptr cbPtr = (Library.CB_Ptr) mbrs.get(j);
                    ktdPtr = (Library.KTD_Ptr) Library.CB_Ptr.cacheGet(cbPtr);
                    cbPtr.setPosHit(true);
                    //  Make/addTo ArrayList<Object> of CB_Ptrs for ktdPtr that matched
                    if (cbLists.get(ktdPtr) == null) {
                        cbLists.put(ktdPtr, new ArrayList<Object>());
                    }
                    ((ArrayList<Object>) cbLists.get(ktdPtr)).add(cbPtr);
                    //  Make/AddTo ArrayList<Object> of dyads matched
                    if (!tree.containsKey(ktdPtr)) {
                        tree.put(ktdPtr, new ArrayList<Object>());
                    }
                    ArrayList<Object> listSet = (ArrayList<Object>) tree.get(ktdPtr);
                    for (int k = 0; k < dyads.size(); k++) {
                        Dyad dy = (Dyad) dyads.get(k);
                        if (!listSet.contains(dy)) {
                            listSet.add(dy);
                        }
                    }//  posHitList
                }
            }
        } else {
            for (int i = 0; i < matches.size(); i++) {
                ArrayList<Object> triple = (ArrayList<Object>) matches.get(i);
                Library.CB_EQC eqc = (Library.CB_EQC) triple.get(0);
                ArrayList<Object> posHits = (ArrayList<Object>) triple.get(1);
                ArrayList<Object> negHits = (ArrayList<Object>) triple.get(2);
                ArrayList<Object> mbrs = (ArrayList<Object>) eqc.members;
                for (int j = 0; j < mbrs.size(); j++) {
                    Library.CB_Ptr cbPtr = (Library.CB_Ptr) mbrs.get(j);
                    ktdPtr = (Library.KTD_Ptr) Library.CB_Ptr.cacheGet(cbPtr);
                    //  Make/addTo ArrayList<Object> of CB_Ptrs for ktd that matched
                    if (cbLists.get(ktdPtr) == null) {
                        cbLists.put(ktdPtr, new ArrayList<Object>());
                    }
                    ((ArrayList<Object>) cbLists.get(ktdPtr)).add(cbPtr);
                    //  Make/AddTo TreeSets of pos/neg dyads matched
                    if (!tree.containsKey(ktdPtr)) {
                        ArrayList<Object> newList = new ArrayList<Object>();
                        tree.put(ktdPtr, newList);
                        newList.add(new ArrayList<Object>());  //  posHitList
                        newList.add(new ArrayList<Object>());  //  negHitList
                    }
                    ArrayList<Object> listSets = (ArrayList<Object>) tree.get(ktdPtr);
                    ArrayList<Object> posDyads = (ArrayList<Object>) listSets.get(0);
                    for (int k = 0; k < posHits.size(); k++) {
                        Dyad dy = (Dyad) posHits.get(k);
                        if (!posDyads.contains(dy)) {
                            posDyads.add(dy);
                        }
                    }
                    ArrayList<Object> negDyads = (ArrayList<Object>) listSets.get(1);
                    for (int k = 0; k < negHits.size(); k++) {
                        Dyad dy = (Dyad) negHits.get(k);
                        if (!negDyads.contains(dy)) {
                            negDyads.add(dy);
                        }
                    }
                }
            }
        }
        return tree;
    }  //  end of method makeTreeSets

    public boolean scanForConfirmed(ArrayList<Object> listSet) {
        //  listSet is a set of dyadsUndefined.  If any of them are confirmed, return true; else return false.
        Iterator tIter = listSet.iterator();
        while (tIter.hasNext()) {
            Dyad dy = (Dyad) tIter.next();
            if (dy.confirmed) {
                return true;
            }
        }
        return false;
    }  //  end of method scanForConfirmed

    /*	If all the CBs of a KTD are in solidCBMatches, then kt contains that KTD.  solidCBMatches is a list
    of pairs (lists) like [CB, hitList]; hitList is a list of dyadsUndefined that matched this CB.	*/
    public ArrayList<Object> containees(ArrayList<Object> solidCBMatches) {
        ArrayList<Object> result = new ArrayList<Object>();
        TreeMap sorter = new TreeMap();
        for (int i = 0; i < solidCBMatches.size(); i++) {
            ArrayList<Object> pair = (ArrayList<Object>) solidCBMatches.get(i);
            KinTermDef ktd = ((ClauseBody) pair.get(0)).ktd;
            if (sorter.get(ktd) == null) {
                sorter.put(ktd, new Counter());
            }
            ((Counter) sorter.get(ktd)).incr();
        }  //  end of loop thru solid matches
        Iterator ktIter = sorter.entrySet().iterator();
        while (ktIter.hasNext()) {
            Map.Entry entry = (Map.Entry) ktIter.next();
            KinTermDef ktCand = (KinTermDef) entry.getKey();
            Counter ctr = (Counter) entry.getValue();
            if (ktCand.expandedDefs.size() == ctr.total()) {
                result.add(ktCand);
            }
        }  //  end of loop thru sorter
        return result;
    }  //  end of method containees

    public ArrayList<Object> findBaseCBMatches(String kinTerm, ArrayList<Object> solidCBMatches, ArrayList<Object> potFalseNeg, TreeMap pos, TreeMap neg,
            ArrayList<Object> anomalies, int tolerance, int maxConf, Counter maxDist, DomainTheory sourceDT,
            boolean doInduction, Learned_DT learner)
            throws KSInternalErrorException, JavaSystemException, KSParsingErrorException, KSConstraintInconsistency,
            KSBadHornClauseException, KSNoChainOfRelations2Alter, ClassNotFoundException, KSBadHornClauseException {
        //  1)  Find all BaseCBs which expand into the CBs of solidCBMatches or potFalseNeg.
        //  2)  Sort these into baseCB_Matches (an ArrayList of ArrayLists) as follows:
        //		a)  Discard any BaseCB_Ptr whose KT-count (for the current MaxDist) is MUCH higher than # of KTs covered.
        //		b)  Using it's constituent expandedCBs, test against the dyads in POS & NEG, using fit().
        //		c)  Assign posScore = # of POS dyads covered; ditto for negScore.  Score = posScore - negScore.
        //		d)  If negScore > tolerance, discard this BaseCB_Ptr.  Otherwise, put it into baseCB_Matches[score].
        //	3)	Make Pos2Cover = all pos dyads; make NegTokensCovered empty
        //	4)	For P = Nmbr-of-dyads-in-POS down to 1:
        //		a)	In BaseCBMatches[P] pick the BaseCB_EQC with lowest negScore & put it into solution.
        //		b)	Remove all pos dysads covered from Pos2Cover.  Add all neg dyads covered to negTokensCovered.
        //		c)	If negTokensCovered has more than tolerance dyads, FAILURE.  No solution possible.
        //		d)	If pos2Cover is empty and negTokensCovered has less than tolerance, SUCCESS.  End loop.
        //	5)	If success, compose a KinTermDef which contains all the BaseCBs in Solution and return a Triple:
        //		-  the composed KTD, list of languageNames used, & list of lang:kTerm:cbSeqNmbr of components.
        //		If failure, return null.
//  Context.breakFlag = true; 
//  else Context.breakFlag = false; 
//  if (kinTerm.equals("mereh")) Context.breakpoint();
        ArrayList<Object> pos2Cover = harvestLeaves(pos),
                negTokensCovered = new ArrayList<Object>(),
                basEQCsTried = new ArrayList<Object>(),
                candidateCBs = new ArrayList<Object>(solidCBMatches);
        int posSize = pos2Cover.size(), //  = countLeaves(POS)
                maxMisses = (int) Math.floor(posSize * tolerance / 100d);
        maxConf = (int) Math.floor(posSize * maxConf / 100d);  //  Convert from percentage-as-int to nmbr of confirmed negs allowed
        Counter coverCount = new Counter(0);
        ArrayList<ArrayList<Object>> baseCB_Matches = new ArrayList<ArrayList<Object>>();
        for (int i = 0; i <= posSize; i++) {
            baseCB_Matches.add(new ArrayList<Object>());
        }
        KinTermDef composedKTD = new KinTermDef();
        composedKTD.kinTerm = kinTerm;
        composedKTD.domTh = this;
        composedKTD.composed = true;
        Iterator iter = pos.keySet().iterator();
        while (iter.hasNext()) {
            ArrayList<Object> someNegs = (ArrayList<Object>) neg.get(iter.next());
            if (someNegs != null) {
                for (int i = 0; i < someNegs.size(); i++) {
                    ((Dyad) someNegs.get(i)).token = null;
                }
            }
        }  //  end of loop thru kinTypes of POS
        eraseTracks(pos, null);  //  Clean up from any prior learning
        //  Steps 1 & 2
        candidateCBs.addAll(potFalseNeg);
        //  candidateCBs is list of pairs or triples: CB_EQC = element 0 of pair/triple
        for (int i = 0; i < candidateCBs.size(); i++) {
            Library.CB_EQC eqc = (Library.CB_EQC) ((ArrayList<Object>) candidateCBs.get(i)).get(0);
            for (int j = 0; j < eqc.members.size(); j++) {
                Library.CB_Ptr cbPtr = (Library.CB_Ptr) eqc.members.get(j);
                Library.CB_EQC baseEQC = cbPtr.getBaseEQC();
                if (!basEQCsTried.contains(baseEQC) //  Don't repeat baseCBs already tried
                        && !baseEQC.prototype.getClause().containsUDPs()) {  //  baseCBs with UDPs won't work
                    basEQCsTried.add(baseEQC);
                    ArrayList<Object> kinTypesCovered = composedKTD.decodeString(baseEQC.pcString),
                            nearbyKTsCovered = kinTypesWithinDist(maxDist, kinTypesCovered);
                    int hits = 0;
                    for (int k = 0; k < nearbyKTsCovered.size(); k++) {
                        String kinType = (String) nearbyKTsCovered.get(k);
                        if (pos.containsKey(kinType)) {
                            hits++;
                        }
                    }  //  end of loop thru KT hits
                    //  Filter out the too-big CBs
                    float hitPercent = (1f * hits) / nearbyKTsCovered.size();
                    if (hitPercent >= Library.minHitPerCent) {  //  include it
                        BaseCB_Cover cover = makeCover(baseEQC, pos, neg, coverCount, maxMisses, maxConf, sourceDT);
                        if (cover != null) {
                            baseCB_Matches.get(cover.score).add(cover);
                            negTokensCovered.addAll(cover.negDyadsCvrd);
                        }
                    }  //  end of include-it
                }  //  end of baseEQC was not already tried
            }  //  end of loop thru eqc.members
        }  //  end of loop thru candidateCBs
        if (coverCount.total() + maxMisses < posSize && !doInduction) {
            eraseTracks(pos, negTokensCovered);
            return null;  //  Impossible to compose a solution
        }
        //  Step 3: Greedy Set-Covering
        ArrayList<ArrayList<Object>> currentCBM = baseCB_Matches;
        negTokensCovered.clear();
        int scor = posSize;
        ArrayList<Object> solution = greedySetCover(composedKTD, scor, pos2Cover, negTokensCovered, pos, neg, anomalies,
                currentCBM, maxMisses, tolerance, maxConf, doInduction);
        if (solution == null) {
            eraseTracks(pos, negTokensCovered);
            return null;
        }
        //  Success!  Create the composed solution
        ArrayList<Object> octuple = tidyUpSolution(kinTerm, solution, composedKTD, pos2Cover, negTokensCovered, learner);
        eraseTracks(pos, negTokensCovered);
        return octuple;
    }  //  end of method findBaseCBMatches

    public ArrayList<Object> kinTypesWithinDist(Counter maxDistSeen, ArrayList<Object> kinTypesCovered) {
        ArrayList<Object> result = new ArrayList<Object>();
        for (int i = 0; i < kinTypesCovered.size(); i++) {
            String kType = (String) kinTypesCovered.get(i);
            int dist = Math.min(Math.max((kType.length() / 2) - 1, 0), Library.ClauseCounts.maxDist);
            if (dist <= maxDistSeen.total()) {
                result.add(kType);
            }
        }
        return result;
    }  //  end of method kinTypesWithinDist

    public BaseCB_Cover makeCover(Library.CB_EQC baseEQC, TreeMap pos, TreeMap neg, Counter coverCount,
            int maxMisses, int maxConfNegs, DomainTheory sourceDT)
            throws KSParsingErrorException, JavaSystemException, KSInternalErrorException, KSConstraintInconsistency,
            KSBadHornClauseException, KSNoChainOfRelations2Alter, ClassNotFoundException {
        BaseCB_Cover cover = new BaseCB_Cover(baseEQC);
        Library.BaseCB_Ptr ptr = null;
        //  We may have legitimately found an EQC that contains baseCBs from the sourceDT and other DTs
        //  It looks bad to cite one from the sourceDT, so pick another prototype
        for (int i = 0; i < baseEQC.members.size() && ptr == null; i++) {
            Library.BaseCB_Ptr ptrCand = (Library.BaseCB_Ptr) baseEQC.members.get(i);
            if (!ptrCand.languageName.equals(sourceDT.languageName)) {
                ptr = ptrCand;
            }
        }
        if (ptr != baseEQC.prototype) {
            baseEQC.prototype = ptr;
        }
        TreeMap expCBs = ptr.getClause().getExpCBs();
        //  First, verify that < maxMisses of NEG are covered
        boolean fewNegHits = true;
        ArrayList<Object> tempNegHolder = new ArrayList<Object>();
        Iterator iter = expCBs.entrySet().iterator();
        while (iter.hasNext() && fewNegHits) {
            Map.Entry entry = (Map.Entry) iter.next();
            String kinType = (String) entry.getKey();
            ClauseBody expCB = (ClauseBody) entry.getValue();
            ArrayList<Object> negDyads = (ArrayList<Object>) neg.get(kinType);
            if (negDyads != null && kinType.indexOf("*") == -1) //  UDPs won't match
            {
                for (int i = 0; i < negDyads.size(); i++) {
                    Dyad negDy = (Dyad) negDyads.get(i);
                    if (fit(expCB, negDy)) {
                        tempNegHolder.add(negDy);
                    }
                }  //  end of loop thru neg Dyads
            }
            if (tempNegHolder.size() > maxMisses) {
                fewNegHits = false;  //  end loop
            }
        }  //  end of 1st loop thru expCBs
        if (fewNegHits) {
            for (int i = 0; i < tempNegHolder.size(); i++) {
                Dyad negDy = (Dyad) tempNegHolder.get(i);
                DyadToken tok = (negDy.token != null ? negDy.token : new DyadToken(negDy));
                tok.hitters.add(cover);
                cover.negDyadsCvrd.add(tok);
                if (negDy.confirmed) {
                    cover.confirmedNegsCvrd.add(negDy);
                }
            }  //  end of neg processing
            if (cover.confirmedNegsCvrd.size() > maxConfNegs) {
                return null;
            }
        } else {
            return null;  //  too many NEG hits
        }		//  OK, acceptable # of NEG hits & confirmed NEG hits.  Now find POS hits in 2nd loop
        iter = expCBs.entrySet().iterator();
        while (iter.hasNext()) {
            Map.Entry entry = (Map.Entry) iter.next();
            String kinType = (String) entry.getKey();
            ClauseBody expCB = (ClauseBody) entry.getValue();
            ArrayList<Object> posDyads = (ArrayList<Object>) pos.get(kinType);
            if (posDyads != null && kinType.indexOf("*") == -1) {
                for (int i = 0; i < posDyads.size(); i++) {
                    Dyad posDy = (Dyad) posDyads.get(i);
                    if (fit(expCB, posDy)) {
                        DyadToken tok = (posDy.token != null ? posDy.token : new DyadToken(posDy));
                        if (tok.hitters.isEmpty()) {
                            coverCount.incr();
                        }
                        tok.hitters.add(cover);
                        cover.posDyadsCvrd.add(tok);
                    }
                }  //  end of loop thru pos Dyads
            }
        }  //  end of 2nd loop thru expCBs
        cover.setScore();
        return cover;
    }  //  end of method makeCover

    public BaseCB_Cover pickBestCover(ArrayList<Object> candidates, int limit, int confLimit) throws KSParsingErrorException,
            JavaSystemException, KSInternalErrorException, KSConstraintInconsistency, KSBadHornClauseException {
        //  All candidates are tied on net score.  If 2+ meet the confLimit, lowest negScore is first tie-breaker.
        //  Second tie-breaker is shortest pcString (but 0 doesn't count).
        //  Third tie-breaker is shortest body (fewest literals, but anything which is not a
        //		Primitive or Std Macro counts as 5 literals).
        if (candidates == null || candidates.isEmpty()) {
            return null;
        }
        BaseCB_Cover winner = null;
        int first, lowNeg = 999;
        for (first = 0; first < candidates.size() && winner == null; first++) {
            BaseCB_Cover cand = (BaseCB_Cover) candidates.get(first);
            if (cand.confirmedNegsCvrd.size() < confLimit) {
                winner = cand;
            }
        }
        if (winner != null) {
            lowNeg = winner.negScore;
            int shortString = (winner.basePtrEQC.prototype.getClause().pcString == null ? 99 : winner.basePtrEQC.prototype.getClause().pcString.length()),
                    lowSize = bodyLengthScore(winner.basePtrEQC.prototype.getClause().body);
            for (int i = first; i < candidates.size(); i++) {
                BaseCB_Cover cand = (BaseCB_Cover) candidates.get(i);
                ArrayList<Object> candBody = cand.basePtrEQC.prototype.getClause().body;
                int candString = (cand.basePtrEQC.prototype.getClause().pcString == null
                        ? 99 : cand.basePtrEQC.prototype.getClause().pcString.length()),
                        candSiz = bodyLengthScore(candBody);
                if (cand.confirmedNegsCvrd.size() < confLimit
                        && (cand.negScore < lowNeg
                        || (cand.negScore == lowNeg && candString < shortString)
                        || (cand.negScore == lowNeg && candString == shortString && candSiz < lowSize))) {
                    lowNeg = cand.negScore;
                    lowSize = candSiz;
                    shortString = candString;
                    winner = cand;
                }
            }  //  end of loop thru candidates
        }  //  end of winner != null
        if (lowNeg <= limit) {
            return winner;
        } else {
            return null;
        }
    }  //  end of method pickBestCover

    public int bodyLengthScore(ArrayList<Object> body) {
        //  Count each primitive or StdMacro as 1.  Count each other literal as 5.
        int score = 0;
        for (int i = 0; i < body.size(); i++) {
            Literal lit = (Literal) body.get(i);
            if (isPrimOrMacro(lit.predicate.name)) {
                score++;
            } else {
                score += 5;
            }
        }
        return score;
    }  //  end of method bodyLengthScore

    public void addNewCoverage(BaseCB_Cover cand, ArrayList<Object> pos2Cover, ArrayList<Object> negTokensCovered, ArrayList<Object> confNegsCvrd) {
        //  pos2Cover contains Dyads to be covered.  negTokensCovered has tokens for all neg dyads covered.
        //  confNegsCvrd has all the confirmed Neg Dyads covered so far.
        for (int i = 0; i < cand.negDyadsCvrd.size(); i++) {
            DyadToken tok = (DyadToken) cand.negDyadsCvrd.get(i);
            if (!negTokensCovered.contains(tok)) {
                negTokensCovered.add(tok);
                if (tok.myDy.confirmed) {
                    confNegsCvrd.add(tok.myDy);
                }
                for (int j = 0; j < tok.hitters.size(); j++) {
                    BaseCB_Cover hitter = (BaseCB_Cover) tok.hitters.get(j);
                    if (hitter != cand) {
                        hitter.negScore--;
                        hitter.score++;
                        if (tok.myDy.confirmed) {
                            hitter.confirmedNegsCvrd.remove(tok.myDy);
                        }
                    }
                }  //  end of loop thru tok's hitters
            }  //  end of added a NEG dyad
        }  //  end of loop thru negDyadsCvrd
        for (int i = 0; i < cand.posDyadsCvrd.size(); i++) {
            DyadToken tok = (DyadToken) cand.posDyadsCvrd.get(i);
            if (pos2Cover.contains(tok.myDy)) {
                pos2Cover.remove(tok.myDy);
                for (int j = 0; j < tok.hitters.size(); j++) {
                    BaseCB_Cover hitter = (BaseCB_Cover) tok.hitters.get(j);
                    if (hitter != cand) {
                        hitter.posScore--;
                        if (hitter.score > 0) {
                            hitter.score--;  //  minimum score = 0.
                        }
                    }
                }  //  end of loop thru tok's hitters
            }  //  end of we covered a POS dydad
        }  //  end of loop thru posDyadsCvrd
    }  //  end of method addNewCoverage

    /*	SCOPING NOTE:  In a sense, there is a 'variable scoping issue' with Clauses that are part of a solution.
    It is necessary to expand a base CB (or a newly-created CB) so that the expanded Defs can be used to
    test for fit, create pcStrings, etc.  Expansion happens in an environment that includes the enclosing
    KinTermDef, DomainTheory, and Context.  Via the back-pointers on each class, this is usually automatic.
    However, when we create a new ComposedDef, we must pick an enclosing KTD carefully.  It must lead to a
    DT where any recursive predicates and auxiliaries are defined (on DT.theory).  If that DT is the current
    Learner (Learned_DT), then we must be careful to define all those things (maybe temporarily) before we
    try to expand the ComposedDef.

    RULE:  The enclosing DT for any CB must be where all relevant non-primitive, non-macro predicates are defined.
     */
    public ArrayList<Object> tidyUpSolution(String kinTerm, ArrayList<Object> solution, KinTermDef composedKTD, ArrayList<Object> pos2Cover,
            ArrayList<Object> negTokensCovered, Learned_DT learner)
            throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException, KSParsingErrorException,
            KSConstraintInconsistency, KSInternalErrorException, ClassNotFoundException {
        ArrayList<Object> octuple = new ArrayList<Object>(),
                langsUsed = new ArrayList<Object>(),
                cbsUsed = new ArrayList<Object>(),
                auxiliaries = new ArrayList<Object>(),
                origBCBs = new ArrayList<Object>(),
                origXCBs = new ArrayList<Object>();
        Counter cntr = new Counter();
        boolean oldSimVal = Context.simulation;
        Context.simulation = false;  //  To prevent adding noise when making examples of composed CBs
        for (int i = 0; i < solution.size(); i++) {
            Object obj = solution.get(i);
            if (obj instanceof BaseCB_Cover) {
                ClauseBody newCB = tidyUpBaseCB_Cover((BaseCB_Cover) obj, kinTerm, i, langsUsed, cbsUsed, auxiliaries,
                        origXCBs, composedKTD, learner, cntr);
                origBCBs.add(newCB);
                composedKTD.addClause(newCB.deepCopy());
            } else if (obj instanceof ClauseBody) {  //  from LGG Induction
                ClauseBody newCB = tidyUpCB((ClauseBody) obj, kinTerm, i, langsUsed, cbsUsed, auxiliaries, origXCBs, composedKTD);
                composedKTD.addClause(newCB);
            } else if (obj instanceof ArrayList) {  //  generalization of CBs, BaseCB_Covers, or other generalizations
                ClauseBody newCB = tidyUpAList((ArrayList<Object>) obj, kinTerm, i, langsUsed, cbsUsed, auxiliaries, origXCBs,
                        composedKTD, learner, cntr);
                composedKTD.addClause(newCB);
            } else {
                throw new KSInternalErrorException("DT.tidyUpSolution seeks BaseCB_Cover, CB, or ArrayList<Object>.  Finds " + obj.getClass());
            }
        }  //  end of loop thru solution
        learner.renameAuxPreds(auxiliaries, composedKTD, kinTerm, "temp_aux", cntr);
        composedKTD.kinTerm = "proposed_" + kinTerm;
        for (int i = 0; i < composedKTD.definitions.size(); i++) {
            ((ClauseBody) composedKTD.definitions.get(i)).seqNmbr = i;
        }
        for (int i = 0; i < composedKTD.expandedDefs.size(); i++) {
            ((ClauseBody) composedKTD.expandedDefs.get(i)).seqNmbr = i;
        }
        composedKTD.makeSigStrings();
        octuple.add(composedKTD);
        octuple.add(langsUsed);
        octuple.add(cbsUsed);
        octuple.add(pos2Cover);
        octuple.add(subDyads(negTokensCovered));
        octuple.add(auxiliaries);
        octuple.add(origBCBs);
        octuple.add(origXCBs);
        Context.simulation = oldSimVal;
        return octuple;
    }  //  end of method tidyUpSolution

    ClauseBody tidyUpBaseCB_Cover(BaseCB_Cover cover, String kinTerm, int i, ArrayList<Object> langsUsed, ArrayList<Object> cbsUsed, ArrayList<Object> auxiliaries,
            ArrayList<Object> origXCBs, KinTermDef composedKTD, Learned_DT learner, Counter cntr)
            throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException, KSParsingErrorException,
            KSConstraintInconsistency, KSInternalErrorException, ClassNotFoundException {
        Library.BaseCB_Ptr ptr = (Library.BaseCB_Ptr) cover.basePtrEQC.prototype;
        if (!langsUsed.contains(ptr.languageName)) {
            langsUsed.add(ptr.languageName);
        }
        cbsUsed.add(ptr.languageName + ":" + ptr.kinTerm + ":" + ptr.cbSeqNmbr);
        ClauseBody newCB = ptr.getClause();
        newCB.findAuxPreds(auxiliaries);
        Iterator iter = newCB.getExpCBs().values().iterator();
        while (iter.hasNext()) {
            ClauseBody orig = (ClauseBody) iter.next(),
                    expCB = orig.deepCopy();
            expCB.expansionPath.set(0, kinTerm + ":" + i);
            origXCBs.add(orig);
            composedKTD.addExpClause(expCB);
            composedKTD.addToEQCs(expCB);
        }
        return newCB;
    }  //  end of method tidyUpBaseCB_Cover

    ClauseBody tidyUpCB(ClauseBody newCB, String kinTerm, int i, ArrayList<Object> langsUsed, ArrayList<Object> cbsUsed, ArrayList<Object> auxiliaries,
            ArrayList<Object> origXCBs, KinTermDef composedKTD)
            throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException, KSParsingErrorException,
            KSConstraintInconsistency, KSInternalErrorException, ClassNotFoundException {
        if (!langsUsed.contains("LGG_Induction")) {
            langsUsed.add("LGG_Induction");
        }
        //  expand newCB and add expanded CBs to expandedDefs & EQCs
        ArrayList<Object> expandedDefs = new ArrayList<Object>();
        newCB.expand(ctxt, expandedDefs, kinTerm, i);	//  By definition, newCB has a single kinType
        for (int j = 0; j < expandedDefs.size(); j++) {  //  and all its expDefs have the same pcString
            ClauseBody expCB = (ClauseBody) expandedDefs.get(j);
            expCB.pcString = newCB.pcString;
            composedKTD.addExpClause(expCB);
            composedKTD.addToEQCs(expCB);
        }  //  end of loop thru Expanded Defs
        return newCB;
    }  //  end of method tidyUpCB

    ClauseBody tidyUpAList(ArrayList<Object> items, String kinTerm, int nmbr, ArrayList<Object> langsUsed, ArrayList<Object> cbsUsed, ArrayList<Object> auxiliaries,
            ArrayList<Object> origXCBs, KinTermDef composedKTD, Learned_DT learner, Counter cntr)
            throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException, KSParsingErrorException,
            KSConstraintInconsistency, KSInternalErrorException, ClassNotFoundException {
        ClauseBody newCB = (ClauseBody) items.get(0);
        //  expand newCB and add expanded CBs to expandedDefs & EQCs
        if (composedKTD != null) {
            ArrayList<Object> newAuxes = new ArrayList<Object>();
            newCB.findAuxPreds(newAuxes);
            uniquelyNameAuxes(newAuxes, newCB);  // prevent any name collisions
            auxiliaries.addAll(newAuxes);
            //  Any auxilaries of newCB are temporarily posted to this DT for CB expansion purposes.
            for (int i = 0; i < newAuxes.size(); i++) {
                KinTermDef aux = (KinTermDef) newAuxes.get(i);
                theory.put(aux.kinTerm, aux);  //  Note that we aren't changing the enclosing DT of aux.
            }
            ctxt.simDataGen = false;
            ArrayList<Object> expandedDefs = new ArrayList<Object>();
            Context.current = ctxt;
//			int oldLimit = levelsOfRecursion;
//			levelsOfRecursion = 1;
            DomainTheory.current = this;
            newCB.expand(ctxt, expandedDefs, kinTerm, nmbr);
//			levelsOfRecursion = oldLimit;
            for (int i = 0; i < newAuxes.size(); i++) {
                KinTermDef aux = (KinTermDef) newAuxes.get(i);
                theory.remove(aux.kinTerm);  //  Clean up.  Soon the auxes will be posted under new names.
            }
            for (int j = 0; j < expandedDefs.size(); j++) {
                ClauseBody expCB = (ClauseBody) expandedDefs.get(j);
                ArrayList<Object> egoBag = ctxt.getPair();
                expCB.generateExamples(ctxt, egoBag, null, null);
                composedKTD.addExpClause(expCB);
                composedKTD.addToEQCs(expCB);
            }  //  end of loop thru Expanded Defs
        }
        for (int j = 1; j < items.size(); j++) {
            Object item = items.get(j);
            if (item instanceof ClauseBody) {
                if (!langsUsed.contains("LGG_Induction")) {
                    langsUsed.add("LGG_Induction");
                }
            } else if (item instanceof BaseCB_Cover) {
                Library.BaseCB_Ptr ptr = (Library.BaseCB_Ptr) ((BaseCB_Cover) item).basePtrEQC.prototype;
                if (!langsUsed.contains(ptr.languageName)) {
                    langsUsed.add(ptr.languageName);
                }
                cbsUsed.add(ptr.languageName + ":" + ptr.kinTerm + ":" + ptr.cbSeqNmbr);
            } else if (item instanceof ArrayList) {  //  a previous generalization
                //  for sub-generalizations, we need only the langsUsed & cbsUsed.  All others are throw-aways
                tidyUpAList((ArrayList<Object>) item, kinTerm, nmbr, langsUsed, cbsUsed, null, null, null, learner, cntr);
            } else {
                throw new KSInternalErrorException("DT.tidyUpAList seeks BaseCB_Cover, CB, or ArrayList<Object>.  Finds " + item.getClass());
            }
        }  //  end of loop thru rest of items
        return newCB;
    }  //  end of method tidyUpAList

    public void uniquelyNameAuxes(ArrayList<Object> auxes, ClauseBody newCB) {
        //  It is possible for an auxiliary predicate from some other language to have the same name
        //  as a term in the langauge being learned.  We must prevent name collisions.
        //  Names that already have 'aux' tags in them can't collide.
        if (auxes.isEmpty()) {
            return;
        }
        ArrayList<Object> oldNames = new ArrayList<Object>(),
                newNames = new ArrayList<Object>();
        for (int i = 0; i < auxes.size(); i++) {
            KinTermDef aux = (KinTermDef) auxes.get(i);
            if (aux.kinTerm.indexOf("aux>") == -1) {
                oldNames.add(aux.kinTerm);
                aux.kinTerm += "<F_aux>";  // mark this as foreign
                newNames.add(aux.kinTerm);
            }
        }  //  end of loop thru auxes
        if (newNames.size() > 0) {  //  must propagate changes
            for (int i = 0; i < auxes.size(); i++) {
                KinTermDef aux = (KinTermDef) auxes.get(i);
                for (int j = 0; j < aux.definitions.size(); j++) {
                    ClauseBody auxCB = (ClauseBody) aux.definitions.get(j);
                    for (int k = 0; k < auxCB.body.size(); k++) {
                        Literal lit = (Literal) auxCB.body.get(k);
                        int where = oldNames.indexOf(lit.predicate.name);
                        if (where > -1) {
                            lit.predicate.name = (String) newNames.get(where);
                        }
                    }  //  end of k-loop thru literals
                }  //  end of j-loop thru defs
            }  //  end of loop thru auxes
            for (int k = 0; k < newCB.body.size(); k++) {
                Literal lit = (Literal) newCB.body.get(k);
                int where = oldNames.indexOf(lit.predicate.name);
                if (where > -1) {
                    lit.predicate.name = (String) newNames.get(where);
                }
            }  //  end of k-loop thru newCB's literals
        }  //  end of propagation
    }  //  end of method uniquelyNameAuxes

    public void eraseTracks(TreeMap pos, ArrayList<Object> negTokensCovered) {
        //  Erase all objects made in a failed attempt to compose a definition
        if (negTokensCovered != null) {
            for (int i = 0; i < negTokensCovered.size(); i++) {
                if (negTokensCovered.get(i) instanceof DyadToken) {
                    DyadToken tok = (DyadToken) negTokensCovered.get(i);
                    tok.myDy.token = null;
                    tok.hitters.clear();
                }  //  end of loop thru negTokensCovered
            }
        }
        Iterator iter = pos.values().iterator();
        while (iter.hasNext()) {
            ArrayList<Object> batch = (ArrayList<Object>) iter.next();
            for (int i = 0; i < batch.size(); i++) {
                Dyad dy = (Dyad) batch.get(i);
                if (dy.token != null) {
                    dy.token.hitters.clear();
                    dy.token = null;
                }
            }  //  end of loop thru negTokensCovered
        }  //  end of loop thru pos
    }  //  end of method eraseTracks

    public ArrayList<ArrayList<Object>> rescoreCBM(ArrayList<ArrayList<Object>> currentCBM, int size, int maxMisses, BaseCB_Cover cand) {
        ArrayList<ArrayList<Object>> newCBM = new ArrayList<ArrayList<Object>>();
        for (int i = 0; i < currentCBM.size(); i++) {
            newCBM.add(new ArrayList<Object>());
        }
        try {
            for (int i = size; i >= 0; i--) {
                ArrayList<Object> covers = currentCBM.get(i);
                if (covers != null && covers.size() > 0) {
                    for (int j = 0; j < covers.size(); j++) {
                        BaseCB_Cover cover = (BaseCB_Cover) covers.get(j);
                        if (cover != cand) {
                            newCBM.get(cover.score).add(cover);
                        }
                    }  // end of loop thru covers
                }
            }  // end of loop thru currentCBM
        } catch (ArrayIndexOutOfBoundsException aiobe) {
            throw new ArrayIndexOutOfBoundsException("In rescoreCBM:" + aiobe);
        }
        return newCBM;
    }  //  end of method rescoreCBM

    public ArrayList<Object> greedySetCover(KinTermDef composedKTD, int scor, ArrayList<Object> pos2Cover, ArrayList<Object> negTokensCovered, TreeMap pos,
            TreeMap neg, ArrayList<Object> anomalies, ArrayList<ArrayList<Object>> currentCBM, int maxMisses, int tolerance, int maxConf, boolean doInduction)
            throws KSParsingErrorException, JavaSystemException, KSInternalErrorException, KSConstraintInconsistency,
            KSParsingErrorException, KSBadHornClauseException, KSNoChainOfRelations2Alter, ClassNotFoundException {
        ArrayList<Object> solution = new ArrayList<Object>(),
                confNegsCvrd = new ArrayList<Object>();
        while (pos2Cover.size() > 0 && scor > 0) {
            BaseCB_Cover cand = pickBestCover(currentCBM.get(scor), maxMisses - negTokensCovered.size(), maxConf - confNegsCvrd.size());
            if (cand != null) {
                solution.add(cand);
                addNewCoverage(cand, pos2Cover, negTokensCovered, confNegsCvrd);
                scor++;
                if (negTokensCovered.size() > maxMisses || confNegsCvrd.size() > maxConf) {
                    scor = 0;
                } else if (pos2Cover.size() > 0) {
                    int size = Math.min(scor + maxMisses, currentCBM.size() - 1);
                    currentCBM = rescoreCBM(currentCBM, size, maxMisses, cand);
                }
            }  //  end of got a non-null candidate
            scor--;
        }  //  end of greedy loop
        makeDeepCopies(solution);
        if (pos2Cover.size() + negTokensCovered.size() <= maxMisses) {
            simplifyCBs(solution, composedKTD);
            return solution;
        }
        if (!doInduction) {
            return null;
        }
        //  Do induction on unsolved portion of the problem.
        TreeMap subPOS = new TreeMap(),
                subNEG = new TreeMap();
        for (int i = 0; i < pos2Cover.size(); i++) {
            Dyad dy = (Dyad) pos2Cover.get(i);
            if (subPOS.get(dy.pcString) == null) {  //  first look at this KType
                subPOS.put(dy.pcString, new ArrayList<Object>());
                ArrayList<Object> negSet = (ArrayList<Object>) neg.get(dy.pcString);
                if (negSet != null) {
                    subNEG.put(dy.pcString, negSet);  //  include this portion of NEG
                }
            }
            ((ArrayList<Object>) subPOS.get(dy.pcString)).add(dy);
        }
        ArrayList<Object> barriers = new ArrayList<Object>();
        if (induceSolution(solution, subPOS, subNEG, pos2Cover, negTokensCovered, barriers,
                maxMisses - negTokensCovered.size(), composedKTD)) {
            simplifyCBs(solution, composedKTD);
            return solution;
        }
        Anomaly oops = makeLGGAnomaly(composedKTD, barriers, tolerance, pos);
        if (oops != null) {
            anomalies.add(oops);
        }
        return null;
    }  //  end of method greedySetCover

    public boolean induceSolution(ArrayList<Object> solution, TreeMap pos, TreeMap neg, ArrayList<Object> pos2Cover,
            ArrayList<Object> negsCovered, ArrayList<Object> barriers, int maxMisses, KinTermDef composedKTD)
            throws KSBadHornClauseException, KSNoChainOfRelations2Alter, KSInternalErrorException, KSParsingErrorException,
            JavaSystemException, KSConstraintInconsistency, ClassNotFoundException {
        //  This method is used both as the "clean-up" method for greedySetCover and as the baseline
        //  "pure induction" method against which my approach is measured.
        //  Try to add to solution ClauseBodies that cover all the dyads in pos and less than maxMisses of neg
        //  (any negs covered by prior activity are in negsCovered).  Subtract from pos2Cover all pos dyads covered.
        //  Add to negsCovered any new neg dyads covered.  If a complete solution becomes impossible because of identical
        //  dyads in both pos & neg, post the offending groups of dyads to barriers.
        Iterator posIter = pos.entrySet().iterator();
        Counter limit = new Counter(maxMisses);
        while (posIter.hasNext()) {
            Map.Entry entry = (Map.Entry) posIter.next();
            String kinType = (String) entry.getKey();
            ArrayList<Object> posDyads = (ArrayList<Object>) entry.getValue(),
                    negDyads = (neg.get(kinType) == null ? new ArrayList<Object>() : (ArrayList<Object>) neg.get(kinType)),
                    newCBs = doLGG(posDyads, negDyads, pos2Cover, negsCovered, barriers, limit, composedKTD);
            if (newCBs == null) {
                return false;
            }
            solution.addAll(newCBs);
        }  //  end of loop thru pos
        return true;
    }  //  end of method induceSolution

    public ArrayList<Object> filterNonContradictions(String kinTerm, ArrayList<Object> oddBalls, TreeMap pos, TreeMap neg)
            throws KSBadHornClauseException, KSNoChainOfRelations2Alter, KSBadHornClauseException,
            KSInternalErrorException, KSConstraintInconsistency, ClassNotFoundException {
        //  Remove from oddBalls any dyads which are not contradictions, (i.e. identical attributes, different labels)
        TreeMap suspectPosDyads = new TreeMap(),
                suspectNegDyads = new TreeMap();
        //  First sort 'em out
        for (int i = 0; i < oddBalls.size(); i++) {
            Dyad dy = (Dyad) oddBalls.get(i);
            String kinType = dy.pcString;
            if (dy.kinTerm.equals(kinTerm)) {
                if (suspectPosDyads.get(kinType) == null) {
                    suspectPosDyads.put(kinType, new ArrayList<Object>());
                }
                ((ArrayList<Object>) suspectPosDyads.get(kinType)).add(dy);
            } else {
                if (suspectNegDyads.get(kinType) == null) {
                    suspectNegDyads.put(kinType, new ArrayList<Object>());
                }
                ((ArrayList<Object>) suspectNegDyads.get(kinType)).add(dy);
            }
        } //  end of loop thru oddBalls
        try {
            ArrayList<Object> barriers = new ArrayList<Object>(),
                    filteredOddBalls = new ArrayList<Object>();
            Iterator iter = suspectPosDyads.entrySet().iterator();
            Counter limit = new Counter(10000);  //  i.e. no limit
            while (iter.hasNext()) {
                Map.Entry entry = (Map.Entry) iter.next();
                String kinType = (String) entry.getKey();
                ArrayList<Object> posDyads = (ArrayList<Object>) entry.getValue(),
                        negDyads = (neg.get(kinType) == null ? new ArrayList<Object>() : (ArrayList<Object>) neg.get(kinType));
                doLGG(posDyads, negDyads, posDyads, new ArrayList<Object>(), barriers, limit, null);
            }  //  end of loop thru suspectPosDyads
            iter = suspectNegDyads.entrySet().iterator();
            while (iter.hasNext()) {
                Map.Entry entry = (Map.Entry) iter.next();
                String kinType = (String) entry.getKey();
                ArrayList<Object> negDyads = (ArrayList<Object>) entry.getValue(),
                        posDyads = (pos.get(kinType) == null ? new ArrayList<Object>() : (ArrayList<Object>) pos.get(kinType));
                if (posDyads.isEmpty()) { //  Negs with NO pos? Challenge. Only Confirmed can repudiate.
                    ArrayList<Object> barrier = new ArrayList<Object>();
                    barrier.add(negDyads);
                    barrier.add(posDyads);
                    barriers.add(barrier);
                } else {
                    doLGG(posDyads, negDyads, new ArrayList<Object>(), new ArrayList<Object>(), barriers, limit, null);
                }
            }  //  end of loop thru suspectPosDyads
            //  barriers = { (list-of-suspect-dyads, list-of-good-dyads), ... }
            for (int i = 0; i < barriers.size(); i++) {
                ArrayList<Object> pair = (ArrayList<Object>) barriers.get(i),
                        suspects = (ArrayList<Object>) pair.get(0);
                filteredOddBalls.addAll(suspects);
            }
            return filteredOddBalls;
        } catch (Exception exc) {	//	Graceful Failure:  If we can't filter the list, just return it.
            String warning = "\n*********************************************************************";
            warning += "\n*\tWhile Filtering Non-Contradictions, hit fatal error.  Did not filter.";
            warning += "\n*\t" + exc;
            warning += "\n*\tKinTerm = " + kinTerm + ".  POS size = " + pos.size() + ".  NEG size = " + neg.size();
            warning += "\n*********************************************************************";
            System.out.println(warning);
            return oddBalls;
        }
    }  //  end of method filterNonContradictions

    public ArrayList<Object> doLGG(ArrayList<Object> posDyads, ArrayList<Object> negDyads, ArrayList<Object> pos2Cover, ArrayList<Object> negsCovered,
            ArrayList<Object> barriers, Counter limit, KinTermDef composedKTD)
            throws KSBadHornClauseException, KSNoChainOfRelations2Alter, KSBadHornClauseException,
            KSInternalErrorException, KSConstraintInconsistency, ClassNotFoundException {
        ArrayList<Object> clauses = new ArrayList<Object>();
        if (posDyads == null || posDyads.isEmpty()) {
            throw new KSInternalErrorException("No pos Dyads found in DT.doLGG.");
        }
        String kinType = ((Dyad) posDyads.get(0)).pcString,
                kinTerm = ((Dyad) posDyads.get(0)).kinTerm;
        if (kinType.indexOf("*") > -1) {
            return null;
        }
        ClauseBody cb = makeCBfromKinType(kinType);
        cb.ktd = composedKTD;
        cb.pcString = kinType;
        cb.pcStringStructural = ClauseBody.structStr(kinType);
        clauses.add(cb);
        if (composedKTD != null) {  //  null signals that we're only seeking contradictions
            if (perfectFit(cb, posDyads, negDyads)) {
                pos2Cover.removeAll(posDyads);
                return clauses;
            }
            //  "Pure" clause doesn't work -- try adding constraints.
            if (addEgoGenderPred(cb, posDyads, negDyads)) {
                if (perfectFit(cb, posDyads, negDyads)) {
                    pos2Cover.removeAll(posDyads);
                    return clauses;
                } else {
                    cb.body.remove(0);  // remove the genderPred for Ego we just prepended
                }
            }  // end of adding Ego Gender Constraint
            if (addEgoAlterSeniority(cb, posDyads, negDyads)) {
                if (perfectFit(cb, posDyads, negDyads)) {
                    pos2Cover.removeAll(posDyads);
                    return clauses;
                } else {
                    cb.body.remove(cb.body.size() - 1);  // remove the genderPred for Ego we just appended
                }
            }  // end of adding Ego/Alter Seniority Constraint
        }
        //  OK, do the general LGG algorithm.  Start by making static objects that apply to all dyads
        Literal firstLit = (Literal) cb.body.get(0);  //  Either 'genderPred(Ego)' or 'relPred(A,Ego)'
        Variable egoVar = (firstLit.args.size() == 1 ? (Variable) firstLit.args.get(0) : (Variable) firstLit.args.get(1));
        TreeMap lvl2Var = new TreeMap(),
                var2Lvl = new TreeMap(egoVar),
                namedVars = new TreeMap();
        ArrayList<Object> lst = new ArrayList<Object>();
        lst.add(egoVar);
        lvl2Var.put(new Integer(0), lst);
        var2Lvl.put(egoVar, new Integer(0));
        createStaticInfo(cb, lvl2Var, var2Lvl, namedVars);
        TreeMap posLitLists = new TreeMap(),
                negLitLists = new TreeMap();
        try {
            for (int i = 0; i < posDyads.size(); i++) {
                Dyad dy = (Dyad) posDyads.get(i);
                ArrayList<Object> litList = allLGGLits(dy, cb, lvl2Var, namedVars);
                addIfNotDupl(dy, litList, posLitLists);
            }  //  end of loop thru posDyads
            for (int i = 0; i < negDyads.size(); i++) {
                Dyad dy = (Dyad) negDyads.get(i);
                ArrayList<Object> litList = allLGGLits(dy, cb, lvl2Var, namedVars);
                addIfNotDupl(dy, litList, negLitLists);
            }  //  end of loop thru negDyads
        } catch (KSInternalErrorException iee) {
            return null;
        }
        //  If any posLitList duplicates a negLitList, we have mis-fits, an irreconcilable conflict.
        //  Put 'em in barriers; return null if their number exceeds 'limit'.
        ArrayList<Object> tempPos2Cover = new ArrayList<Object>(pos2Cover),
                tempNegsCovered = new ArrayList<Object>();
        Counter tempLimit = new Counter(limit.total());
        boolean skipThisKT = false;
        Iterator posLiter = posLitLists.entrySet().iterator();
        while (posLiter.hasNext()) {
            Map.Entry entry = (Map.Entry) posLiter.next();
            Integer size = (Integer) entry.getKey();
            ArrayList<Object> posBag = (ArrayList<Object>) entry.getValue(),
                    negBag = (ArrayList<Object>) negLitLists.get(size);
            if (negBag != null) {
                Iterator itemIter = posBag.iterator();
                while (itemIter.hasNext()) {
                    ArrayList<Object> posItem = (ArrayList<Object>) itemIter.next(),
                            posLitList = (ArrayList<Object>) posItem.get(1),
                            posDyList = (ArrayList<Object>) posItem.get(0);
                    boolean gottaHit = false;
                    for (int j = 0; j < negBag.size(); j++) {
                        ArrayList<Object> negItem = (ArrayList<Object>) negBag.get(j),
                                negLitList = (ArrayList<Object>) negItem.get(1);
                        if (equivalentLists(posLitList, negLitList)) {
                            gottaHit = true;
                            ArrayList<Object> negDyList = (ArrayList<Object>) negItem.get(0);
                            if (negDyList.size() >= posDyList.size()) {
                                tempLimit.decr(posDyList.size());
                                ArrayList<Object> barrier = new ArrayList<Object>();
                                barrier.add(posDyList);
                                barrier.add(negDyList);
                                barriers.add(barrier);
                                itemIter.remove();
                                skipThisKT = true;
                                if (tempLimit.total() < 0) {
                                    return null;
                                }
                            } //  end of the-barrier-is-the-posItems
                            else {
                                tempLimit.decr(negDyList.size());
                                ArrayList<Object> barrier = new ArrayList<Object>();
                                barrier.add(negDyList);
                                barrier.add(posDyList);
                                barriers.add(barrier);
                                tempPos2Cover.removeAll(posDyList);
                                tempNegsCovered.addAll(negDyList);
                                if (tempLimit.total() < 0) {
                                    return null;
                                }
                            }  //  end of the-barrier-is-the-negItems
                            break;
                        }  //  end of got a hit
                    }  //  end of j-loop thru all negItems
                    if (!gottaHit) {
                        tempPos2Cover.removeAll(posDyList);
                    }
                    //  end of loop thru posBag of posItems 'cuz there were negs to check
                }
            } else //  no negs to check
            {
                for (int i = 0; i < posBag.size(); i++) {
                    ArrayList<Object> posItem = (ArrayList<Object>) posBag.get(i),
                            posDyList = (ArrayList<Object>) posItem.get(0);
                    tempPos2Cover.removeAll(posDyList);
                }
            }
            if (posBag.isEmpty()) {
                posLiter.remove();  //  no empty bags left lying around
            }
        }  //  end of loop thru posLitLists
        //  If we get to here, we had less than 'limit' mis-fits.  We're OK.
        if (composedKTD != null) {  //  null signals that we're only seeking contradictions
            limit.resetTo(tempLimit.total());
            ArrayList<Object> pos2BeUncovered = tempPos2Cover, //  new names for new roles
                    negs2BeCovered = tempNegsCovered,
                    expandedDefs = new ArrayList<Object>();
            Library.maxLevelForExpansion *= 2;	//  Temporarily incr the limits, to allow full expansion
            Library.maxExpansionStringDist *= 2;
            cb.expand(ctxt, expandedDefs, kinTerm, 0);
            Library.maxLevelForExpansion /= 2;	//  Revert to former limits.
            Library.maxExpansionStringDist /= 2;
            ClauseBody expCB = (ClauseBody) expandedDefs.get(0);
            test4Useless(expCB, posLitLists, pos2BeUncovered, negDyads, negs2BeCovered);  //  Remove redundant lits
            //  Originally thot I needed to generalize lit lists.  But test4Useless essentially does that.  Skip generalization
            //  at this level -- save it for generalizing whole CBs.
            //  ArrayList<Object> allLitLists = pairWiseGeneralize(posLitLists, pos2BeUncovered, negs2BeCovered, negDyads);  //  Generalize & merge
            clauses.clear();
            pos2Cover.clear();  //  Make the temp actions permanent
            pos2Cover.addAll(tempPos2Cover);
            negsCovered.addAll(tempNegsCovered);
            if (!posLitLists.isEmpty()) {
                posLiter = posLitLists.values().iterator();  //  each value is a bag of items
                ArrayList<Object> allLitLists = new ArrayList<Object>((ArrayList<Object>) posLiter.next());
                while (posLiter.hasNext()) {
                    allLitLists.addAll((ArrayList<Object>) posLiter.next());
                }
                for (int i = 0; i < allLitLists.size(); i++) {
                    ArrayList<Object> litList = (ArrayList<Object>) ((ArrayList<Object>) allLitLists.get(i)).get(1);
                    ClauseBody newCB = cb.copy();
                    for (int j = 0; j < litList.size(); j++) {
                        Literal lit = (Literal) litList.get(j);
                        if (lit.predicate.name.equals("male") || lit.predicate.name.equals("female")) {
                            newCB.body.add(0, lit);
                        } else {
                            newCB.body.add(lit);
                        }
                    }
                    clauses.add(newCB);
                }  //  end of loop thru allLitLists re-building clauses
            }  //  end of posLitLists is not Empty
            if (clauses.isEmpty() && !skipThisKT) {
                clauses.add(cb);  //  if no additional lits are useful, just return the basic cb
            }
        }
        return clauses;
    }  //  end of method doLGG

    public ClauseBody makeCBfromKinType(String kinType) throws KSInternalErrorException, KSConstraintInconsistency {
        ClauseBody cb = new ClauseBody();
        cb.level = 0;
        //  1st, make a ClauseBody from the predicate symbols in kinType
        char ch = kinType.charAt(0);
        if (!Character.isUpperCase(ch) && ch != '*') //  All symbols begin with cap or asterisk.
        {
            throw new KSInternalErrorException("In DT.makeCBfromKinType: KinType symbol started with non-capital letter");
        }
        ArrayList<Object> predSymbols = new ArrayList<Object>();
        int cap = 0;
        for (int i = 1; i < kinType.length(); i++) {
            ch = kinType.charAt(i);
            if (ch == '_') {
                throw new KSInternalErrorException("In DT.makeCBfromKinType: encountered '_' in kinType.");
            }
            if (Character.isUpperCase(ch) || ch == '*') {
                String predSymbol = symbolToPred(kinType.substring(cap, i));
                cb.body.add(new Literal(new Predicate(predSymbol, determineCategory(predSymbol))));
                updateLevel(cb, predSymbol);
                cap = i;
            }  //  end of processing completed symbol
        }  //  end of loop thru the symbols
        String predSymbol = symbolToPred(kinType.substring(cap));
        cb.body.add(new Literal(new Predicate(predSymbol, determineCategory(predSymbol))));
        updateLevel(cb, predSymbol);
        cb.assignArgNames(ctxt);
        return cb;
    }  //  end of method makeCBfromKinType

    void updateLevel(ClauseBody cb, String predSymbol) {
        if (kinTypePreds.indexOf(predSymbol) < 5) {
            cb.level--;
        } else if (kinTypePreds.indexOf(predSymbol) > 4 && kinTypePreds.indexOf(predSymbol) < 10) {
            cb.level++;
        }
    }  //  end of method updateLevel

    public boolean perfectFit(ClauseBody cb0, ArrayList<Object> posDyads, ArrayList<Object> negDyads) throws KSBadHornClauseException,
            KSNoChainOfRelations2Alter, KSInternalErrorException, KSConstraintInconsistency, ClassNotFoundException {
        //  For testing, must expand to 1 or more all-primitive expDefs
        ArrayList<Object> expDefs = new ArrayList<Object>();
        Library.maxExpansionStringDist *= 2;  //  To make sure we expand this single CB
        Library.maxLevelForExpansion *= 2;
        cb0.expand(cb0.ktd.domTh.ctxt, expDefs, cb0.ktd.kinTerm, cb0.seqNmbr);
        Library.maxExpansionStringDist /= 2;  //  Return to original values
        Library.maxLevelForExpansion /= 2;
        if (expDefs.isEmpty()) {
            throw new KSInternalErrorException("CB with no expansions in perfectFit:\n" + cb0);
        }
        for (int i = 0; i < posDyads.size(); i++) {
            boolean fitWell = false;
            for (int j = 0; j < expDefs.size() && !fitWell; j++) {
                ClauseBody cb = (ClauseBody) expDefs.get(j);
                if (fit(cb, (Dyad) posDyads.get(i))) {
                    fitWell = true;
                }
            }
            if (!fitWell) {
                return false;
            }
        }  //  end of i-loop
        if (negDyads != null) {
            for (int i = 0; i < negDyads.size(); i++) {
                for (int j = 0; j < expDefs.size(); j++) {
                    ClauseBody cb = (ClauseBody) expDefs.get(j);
                    if (fit(cb, (Dyad) negDyads.get(i))) {
                        return false;
                    }
                }
            }  //  end of i-loop
        }
        return true;
    }  //  end of method perfectFit

    public void createStaticInfo(ClauseBody cb, TreeMap lvl2Var, TreeMap var2Lvl, TreeMap namedVars) {
        for (int i = 0; i < cb.body.size(); i++) {
            Literal lit = (Literal) cb.body.get(i);
            if (!lit.predicate.name.equals("elder") && !lit.predicate.name.equals("younger")
                    && !lit.predicate.name.equals("male") && !lit.predicate.name.equals("female")) {
                //  must be part of the logical chain from Ego to Alter
                Variable var0 = (Variable) lit.args.get(0),
                        var1 = (Variable) lit.args.get(1);
                namedVars.put(var0.argName, var0);
                namedVars.put(var1.argName, var1);
                if (lit.predicate.name.equals("husband") || lit.predicate.name.equals("wife")) {
                    Integer lvl = (Integer) var2Lvl.get(var1);
                    var2Lvl.put(var0, lvl);
                    ((ArrayList<Object>) lvl2Var.get(lvl)).add(var0);
                } else if (lit.predicate.name.equals("father") || lit.predicate.name.equals("mother")
                        || lit.predicate.name.equals("step_father") || lit.predicate.name.equals("step_mother")) {
                    Integer nextLvl = new Integer(((Integer) var2Lvl.get(var1)).intValue() + 1);
                    var2Lvl.put(var0, nextLvl);
                    if (lvl2Var.get(nextLvl) == null) {
                        lvl2Var.put(nextLvl, new ArrayList<Object>());
                    }
                    ((ArrayList<Object>) lvl2Var.get(nextLvl)).add(var0);
                } else if (lit.predicate.name.equals("son") || lit.predicate.name.equals("daughter")
                        || lit.predicate.name.equals("step_son") || lit.predicate.name.equals("step_daughter")) {
                    Integer nextLvl = new Integer(((Integer) var2Lvl.get(var1)).intValue() - 1);
                    var2Lvl.put(var0, nextLvl);
                    if (lvl2Var.get(nextLvl) == null) {
                        lvl2Var.put(nextLvl, new ArrayList<Object>());
                    }
                    ((ArrayList<Object>) lvl2Var.get(nextLvl)).add(var0);
                } else if (lit.predicate.name.equals("brother") || lit.predicate.name.equals("sister")
                        || lit.predicate.name.equals("half_brother") || lit.predicate.name.equals("half_sister")
                        || lit.predicate.name.equals("step_brother") || lit.predicate.name.equals("step_sister")) {
                    Integer lvl = (Integer) var2Lvl.get(var1);
                    var2Lvl.put(var0, lvl);
                    ((ArrayList<Object>) lvl2Var.get(lvl)).add(var0);
                }
            }  //  end of must-be-part-of-logical-chain
        }  //  end of loop thru body
    }  //  end of method createStaticInfo

    public ArrayList<Object> allLGGLits(Dyad dy, ClauseBody cb, TreeMap lvl2Var, TreeMap namedVars)
            throws KSInternalErrorException {
        ArrayList<Object> theLits = new ArrayList<Object>(),
                bodyCopy = new ArrayList<Object>(cb.body);
        TreeMap bindings = new TreeMap();   //  var.argName-to-Indiv
        bindings.put("Ego", dy.ego);
        bindings.put("Alter", dy.alter);
        if (!makeDyadVarBindings(dy, bodyCopy, bindings)) {
            throw new KSInternalErrorException("DT.allLGGLits cannot follow path to alter:\nPath = "
                    + dy.path + "\npcString = " + dy.pcString);
        }
        Literal lit;
        if (!egoGenderImplied(cb)) {  //  make Ego gender lit
            String egoGender = (dy.ego.gender.equals("M") ? "male" : "female");
            lit = new Literal(new Predicate(egoGender, new PrimitiveCategory()));
            lit.args.add(namedVars.get("Ego"));
            theLits.add(lit);
        }
        Iterator iter = lvl2Var.values().iterator();
        while (iter.hasNext()) {  //  make seniority preds for all people at same level
            ArrayList<Object> lvlList = (ArrayList<Object>) iter.next();
            if (lvlList.size() > 1) {
                for (int i = 0; i < lvlList.size() - 1; i++) {
                    Individual peer0 = (Individual) bindings.get(((Variable) lvlList.get(i)).argName);
                    try {
                        Date DOB0 = UDate.parse(peer0.getDateOfBirth()), DOB1;
                        String zeroSeniority;
                        for (int j = i + 1; j < lvlList.size(); j++) {
                            Individual peer1 = (Individual) bindings.get(((Variable) lvlList.get(j)).argName);
                            DOB1 = UDate.parse(peer1.getDateOfBirth());
                            if (DOB0 == null || DOB1 == null) continue;
                            zeroSeniority = (DOB0.before(DOB1) ? "elder" : "younger");
                            lit = new Literal(new Predicate(zeroSeniority, new PrimitiveCategory()));
                            lit.args.add(lvlList.get(i));  //  Var for peer0
                            lit.args.add(lvlList.get(j));  //  Var for peer1
                            theLits.add(lit);
                        }  //  end of j-loop
                    } catch (KSDateParseException e) {
                        throw new KSInternalErrorException("in allLGGLits:\n" + e);
                    }
                }  //  end of i-loop
            }
        }  //  end of loop thru lvl2Var
        iter = bindings.entrySet().iterator();
        while (iter.hasNext()) {  //  make death, divorce & UDP preds
            Map.Entry entry = (Map.Entry) iter.next();
            String argName = (String) entry.getKey();
            Individual person = (Individual) entry.getValue();
            Variable vari = (Variable) namedVars.get(argName);
            if (person.hasDoD() && person.getDateOfDeath().length() > 1) {  //  make death pred
                lit = new Literal(new Predicate("dead", new PrimitiveCategory()));
                lit.args.add(vari);
                theLits.add(lit);
            }  //  end of death pred
            for (int i = 0; i < person.marriages.size(); i++) {
                Family fam = (Family) person.marriages.get(i);
                if (fam.hasDivorceDate()) {  //  make divorce pred
                    lit = new Literal(new Predicate("divorced", new PrimitiveCategory()));
                    lit.args.add(vari);
                    theLits.add(lit);
                    break;  //  it only takes 1
                }  //  end of make divorce pred
            }  //  end of loop thru marriages
/*			if (person.userDefinedProperties != null && ! person.userDefinedProperties.isEmpty())  {  // make UDPs
            //  Temporarily removed until all UDP processing is in place  12/15/07
            Iterator udpIter = person.userDefinedProperties.values().iterator();
            while (udpIter.hasNext())  {  //  make UDPs
            UserDefinedProperty udp = (UserDefinedProperty)udpIter.next();
            for (int i=0; i < udp.value.size(); i++)  {
            Object obj = udp.value.get(i);
            lit = new Literal(new Predicate(udp.starName, determineCategory(udp.starName)));
            lit.args.add(obj);
            lit.args.add(vari);
            theLits.add(lit);
            }  //  end of loop thru possible multiple values of this udp
            }  //  end of make UDPs
            }  // end of make UDPs		*/
        }  //  end of loop thru vars
        return theLits;
    }  //  end of method allLGGLits

    public boolean makeDyadVarBindings(Dyad dy, ArrayList<Object> lits, TreeMap bindings) throws KSInternalErrorException {
        //  This method asumes that the list of lits contains a chain-of-relations a la pcString.
        //  It is written as a recursive descent with back-tracking.  99% of the time this is overkill, as most
        //  pcStrings can only point to a single individual.  But sometimes we need to try each child (or sibling)
        //  in the family; we find the right one by trial-and-activity.  We backtrack (return false) when we fail.
        //  But some correct assignment of bindings should be possible.  If we return FALSE to the top-level caller,
        //  that is a sign of serious structural problems.
        if (lits.isEmpty()) {
            return true;
        }
        Literal lit = (Literal) lits.remove(0);  //  pop the next lit
        ArrayList<Object> remLits = new ArrayList<Object>(lits);
        String arg0Name = ((Argument) lit.args.get(0)).argName,
                arg1Name = (lit.args.size() > 1 ? ((Argument) lit.args.get(1)).argName : null);
        if (lit.predicate.name.equals("father") || lit.predicate.name.equals("mother")) {
            Individual kid = (Individual) bindings.get(arg1Name);
            if (kid == null) {
                return false;  //  FAIL
            }
            if (kid.birthFamily == null) {
                System.out.println("oooo");
            }
            Individual par = (lit.predicate.name.equals("father") ? kid.birthFamily.husband : kid.birthFamily.wife);
            if (par == null) {
                return false;  //  FAIL
            }
            bindings.put(arg0Name, par);
            return makeDyadVarBindings(dy, remLits, bindings);  //  no alternative to the parents
        } else if (lit.predicate.name.equals("son") || lit.predicate.name.equals("daughter")) {
            String targetSex = (lit.predicate.name.equals("son") ? "M" : "F");
            Individual par = (Individual) bindings.get(arg1Name);
            if (par == null) {
                return false;  //  FAIL
            }
            for (int j = 0; j < par.marriages.size(); j++) {
                Family fam = (Family) par.marriages.get(j);
                for (int k = 0; k < fam.children.size(); k++) {
                    Individual kid = (Individual) fam.children.get(k);
                    if (kid.gender.equals(targetSex)
                            && (dy.path.contains(kid) || dy.alter == kid)) {  //  found-a-candidate
                        bindings.put(arg0Name, kid);
                        if (makeDyadVarBindings(dy, remLits, bindings)) {
                            return true;  //  Success!
                        } else {
                            remLits = new ArrayList<Object>(lits);  //  remLits was modified in recursive call
                            bindings.remove(arg0Name);
                        }
                    }  //  end of found-a-candidate
                }  //  end of loop thru kids
            }  //  end of loop thru marriages
            return false;  //  Finished loops without finding right kid.  FAIL
        } else if (lit.predicate.name.equals("husband") || lit.predicate.name.equals("wife")) {
            Individual spouse1 = (Individual) bindings.get(arg1Name);
            if (spouse1 == null) {
                return false;  //  FAIL
            }
            for (int j = 0; j < spouse1.marriages.size(); j++) {
                Family fam = (Family) spouse1.marriages.get(j);
                Individual spouse2 = (spouse1 == fam.wife ? fam.husband : fam.wife);
                if (dy.path.contains(spouse2) || dy.alter == spouse2) {  //  found-a-candidate
                    bindings.put(arg0Name, spouse2);
                    if (makeDyadVarBindings(dy, remLits, bindings)) {
                        return true;  //  Success!
                    } else {
                        remLits = new ArrayList<Object>(lits);  //  remLits was modified in recursive call
                        bindings.remove(arg0Name);
                    }
                }  //  end of found-a-candidate
            }  //  end of loop thru marriages
            return false;  //  Finished loop without finding right spouse.  FAIL
        } else if (lit.predicate.name.equals("brother") || lit.predicate.name.equals("sister")) {
            String targetSex = (lit.predicate.name.equals("brother") ? "M" : "F");
            Individual self = (Individual) bindings.get(arg1Name);
            if (self == null) {
                return false;  //  FAIL
            }
            for (int j = 0; j < self.birthFamily.children.size(); j++) {
                Individual kid = (Individual) self.birthFamily.children.get(j);
                if (kid.gender.equals(targetSex) && kid != self
                        && (dy.path.contains(kid) || dy.alter == kid)) {  //  found-a-candidate
                    bindings.put(arg0Name, kid);
                    if (makeDyadVarBindings(dy, remLits, bindings)) {
                        return true;  //  Success!
                    } else {
                        remLits = new ArrayList<Object>(lits);  //  remLits was modified in recursive call
                        bindings.remove(arg0Name);
                    }
                }  //  end of found-a-candidate
            }  //  end of loop thru kids
            return false;  //  Finished loop without finding right sibling.  FAIL
        } else if (lit.predicate.name.equals("half_brother") || lit.predicate.name.equals("half_sister")) {
            String targetSex = (lit.predicate.name.equals("half_brother") ? "M" : "F");
            Individual self = (Individual) bindings.get(arg1Name);
            if (self == null) {
                return false;
            }
            Individual kid,
                    dad = self.birthFamily.husband,
                    mom = self.birthFamily.wife;
            for (int j = 0; j < dad.marriages.size(); j++) {
                Family fam = (Family) dad.marriages.get(j);
                if (fam.wife != mom) {  //  found an ex-spouse
                    for (int k = 0; k < fam.children.size(); k++) {
                        kid = (Individual) fam.children.get(k);
                        if (kid.gender.equals(targetSex)
                                && (dy.path.contains(kid) || dy.alter == kid)) {  //  found-a-candidate
                            bindings.put(arg0Name, kid);
                            if (makeDyadVarBindings(dy, remLits, bindings)) {
                                return true;  //  Success!
                            } else {
                                remLits = new ArrayList<Object>(lits);  //  remLits was modified in recursive call
                                bindings.remove(arg0Name);
                            }
                        }  //  end of found-a-candidate
                    }  //  end of loop thru half-siblings by dad
                }  //  end of found-an-ex-spouse
            }  //  end of loop thru dad's marriages
            for (int j = 0; j < mom.marriages.size(); j++) {
                Family fam = (Family) mom.marriages.get(j);
                if (fam.husband != dad) {  //  found an ex-spouse
                    for (int k = 0; k < fam.children.size(); k++) {
                        kid = (Individual) fam.children.get(k);
                        if (kid.gender.equals(targetSex)
                                && (dy.path.contains(kid) || dy.alter == kid)) {  //  found-a-candidate
                            bindings.put(arg0Name, kid);
                            if (makeDyadVarBindings(dy, remLits, bindings)) {
                                return true;  //  Success!
                            } else {
                                remLits = new ArrayList<Object>(lits);  //  remLits was modified in recursive call
                                bindings.remove(arg0Name);
                            }
                        }  //  end of found-a-candidate
                    }  //  end of loop thru half-siblings by mom
                }  //  end of found-an-ex-spouse
            }   //  end of loop thru mom's marriages
            return false;  //  Finished loop without finding right half_sibling.  FAIL
        } else if (lit.predicate.name.equals("step_brother") || lit.predicate.name.equals("step_sister")) {
            String targetSex = (lit.predicate.name.equals("step_brother") ? "M" : "F");
            Individual self = (Individual) bindings.get(arg1Name);
            if (self == null) {
                return false;
            }
            Individual kid,
                    dad = self.birthFamily.husband,
                    mom = self.birthFamily.wife;
            for (int j = 0; j < dad.marriages.size(); j++) {
                Family fam = (Family) dad.marriages.get(j);
                if (fam.wife != mom) {  //  found stepMom
                    for (int j2 = 0; j2 < fam.wife.marriages.size(); j2++) {
                        Family fam2 = (Family) fam.wife.marriages.get(j2);
                        if (fam2.husband != dad) {
                            for (int k = 0; k < fam2.children.size(); k++) {
                                kid = (Individual) fam2.children.get(k);
                                if (kid.gender.equals(targetSex)
                                        && (dy.path.contains(kid) || dy.alter == kid)) {  //  found-a-candidate
                                    bindings.put(arg0Name, kid);
                                    if (makeDyadVarBindings(dy, remLits, bindings)) {
                                        return true;  //  Success!
                                    } else {
                                        remLits = new ArrayList<Object>(lits);  //  remLits was modified in recursive call
                                        bindings.remove(arg0Name);
                                    }
                                }  //  end of found-a-candidate
                            }  //  end of loop thru fam2 children
                        }
                    }  //  end of j2 loop thu stepMom marriages
                }  //  end of found-a-stepMom
            }  //  end of loop thru dad's marriages
            for (int j = 0; j < mom.marriages.size(); j++) {
                Family fam = (Family) mom.marriages.get(j);
                if (fam.husband != dad) {  //  found stepDad
                    for (int j2 = 0; j2 < fam.husband.marriages.size(); j2++) {
                        Family fam2 = (Family) fam.husband.marriages.get(j2);
                        if (fam2.wife != mom) {
                            for (int k = 0; k < fam2.children.size(); k++) {
                                kid = (Individual) fam2.children.get(k);
                                if (kid.gender.equals(targetSex)
                                        && (dy.path.contains(kid) || dy.alter == kid)) {  //  found-a-candidate
                                    bindings.put(arg0Name, kid);
                                    if (makeDyadVarBindings(dy, remLits, bindings)) {
                                        return true;  //  Success!
                                    } else {
                                        remLits = new ArrayList<Object>(lits);  //  remLits was modified in recursive call
                                        bindings.remove(arg0Name);
                                    }
                                }  //  end of found-a-candidate
                            }  //  end of loop thru fam2 children
                        }
                    }  //  end of j2 loop thu stepDad marriages
                }  //  end of found-a-stepDad
            }  //  end of loop thru mom's marriages
            return false;  //  Finished loop without finding right step_sibling.  FAIL
        } else if (lit.predicate.name.equals("step_father") || lit.predicate.name.equals("step_mother")) {
            Individual self = (Individual) bindings.get(arg1Name);
            if (self == null) {
                return false;
            }
            Individual deadPar = (lit.predicate.name.equals("step_father") ? self.birthFamily.husband
                    : self.birthFamily.wife),
                    livePar = (lit.predicate.name.equals("step_father") ? self.birthFamily.wife
                    : self.birthFamily.husband),
                    stepPar;
            for (int j = 0; j < livePar.marriages.size(); j++) {
                Family fam = (Family) livePar.marriages.get(j);
                if (fam != self.birthFamily) {
                    stepPar = (livePar == fam.wife ? fam.husband : fam.wife);
                    if (dy.path.contains(stepPar) || dy.alter == stepPar) {  //  found-a-candidate
                        bindings.put(arg0Name, stepPar);
                        if (makeDyadVarBindings(dy, remLits, bindings)) {
                            return true;  //  Success!
                        } else {
                            remLits = new ArrayList<Object>(lits);  //  remLits was modified in recursive call
                            bindings.remove(arg0Name);
                        }
                    }  //  end of found-a-candidate
                }  //  end of fam is not self's birth family
            }  //  end of loop thru live Parent's marriages
            return false;  //  Finished loop without finding right step_parent.  FAIL
        } else if (lit.predicate.name.equals("step_son") || lit.predicate.name.equals("step_daughter")) {
            String targetSex = (lit.predicate.name.equals("step_son") ? "M" : "F");
            Individual self = (Individual) bindings.get(arg1Name);
            if (self == null) {
                return false;
            }
            for (int j = 0; j < self.marriages.size(); j++) {
                Family fam = (Family) self.marriages.get(j);
                Individual spouse = (self.gender.equals("M") ? fam.wife : fam.husband);
                for (int j2 = 0; j2 < spouse.marriages.size(); j2++) {
                    Family fam2 = (Family) spouse.marriages.get(j2);
                    if (fam2.husband != self && fam2.wife != self) // found spouse's prior marriage
                    {
                        for (int k = 0; k < fam2.children.size(); k++) {
                            Individual kid = (Individual) fam2.children.get(k);
                            if (kid.gender.equals(targetSex)
                                    && (dy.path.contains(kid) || dy.alter == kid)) {  //  found-a-candidate
                                bindings.put(arg0Name, kid);
                                if (makeDyadVarBindings(dy, remLits, bindings)) {
                                    return true;  //  Success!
                                } else {
                                    remLits = new ArrayList<Object>(lits);  //  remLits was modified in recursive call
                                    bindings.remove(arg0Name);
                                }
                            }  //  end of found-a-candidate
                        }  //  end of loop thru kids
                    }
                }  //  end of loop thru spouse's j2 marriages
            }  //  end of loop thru self's j marriages
            return false;  //  Finished loop without finding right step_child.  FAIL
        }
        throw new KSInternalErrorException("Failed to find a " + lit.predicate.name + " in dyadVarBindings.");
    }  //  end of method makeDyadVarBindings

    public void addIfNotDupl(Dyad dy, ArrayList<Object> litList, TreeMap listTMap) {
        // listTMap is size => {{dyList, litList}, {dyList, litList}...}
        Integer size = new Integer(litList.size());
        boolean success = false;
        if (listTMap.get(size) == null) {  // it's empty.  Initialize.
            ArrayList<Object> bag = new ArrayList<Object>(),
                    item = new ArrayList<Object>(),
                    dyList = new ArrayList<Object>();
            dyList.add(dy);
            item.add(dyList);
            item.add(litList);
            bag.add(item);
            listTMap.put(size, bag);
        } else {  //  check  existing bag
            ArrayList<Object> bag = (ArrayList<Object>) listTMap.get(size);
            for (int i = 0; i < bag.size(); i++) {
                ArrayList<Object> item = (ArrayList<Object>) bag.get(i),
                        otherList = (ArrayList<Object>) item.get(1);
                success = true;
                for (int j = 0; j < litList.size() && success; j++) {
                    success = otherList.contains(litList.get(j));
                }
                if (success) {  //  lists are identical
                    ((ArrayList<Object>) item.get(0)).add(dy);
                    break;
                }
            }  //  end of loop thru items in bag
            if (!success) {
                ArrayList<Object> item = new ArrayList<Object>(),
                        dyList = new ArrayList<Object>();
                dyList.add(dy);
                item.add(dyList);
                item.add(litList);
                bag.add(item);
            }
        }  //  end of else-check-existing-bag
    }  //  end of mehtod addIfNotDupl

    public boolean addEgoGenderPred(ClauseBody cb, ArrayList<Object> posDyads, ArrayList<Object> negDyads) {
        //  If PosDyads holds less than 3 dyads, it is dangerous to generalize -- return false.
        //  If all the pos dyads have Egos of same sex, and adding that requirement eliminates
        //  1 or more neg dyads, then add the requirement to CB and return true.  Else return false.
        if (posDyads.size() < 3) {
            return false;
        }
        if (egoGenderImplied(cb)) {
            return false;	//  It would be redundant.
        }
        String egoGender = ((Dyad) posDyads.get(0)).ego.gender;
        for (int i = 1; i < posDyads.size(); i++) {
            if (!((Dyad) posDyads.get(i)).ego.gender.equals(egoGender)) {
                return false;
            }
        }
        boolean didNotHelp = true;
        for (int i = 0; i < negDyads.size() && didNotHelp; i++) {
            if (!((Dyad) negDyads.get(i)).ego.gender.equals(egoGender)) {
                didNotHelp = false;
            }
        }
        if (didNotHelp) {
            return false;
        }
        //  OK.  All pos genders are the same and some negs are not.
        String genderPred = (egoGender.equals("M") ? "male" : "female");
        Literal lit = new Literal(new Predicate(genderPred, determineCategory(genderPred)));
        lit.args.add(((Literal) cb.body.get(0)).args.get(1));
        cb.body.add(0, lit);  //  Normally, a gender constraint on Ego is stated first.
        return true;
    }  //  end of method addEgoGenderPred

    public boolean egoGenderImplied(ClauseBody cb) {
        for (int i = 0; i < cb.body.size(); i++) {
            Literal lit = (Literal) cb.body.get(i);
            if (((Variable) lit.args.get(0)).argName.equals("Ego") && lit.predicate.name.indexOf("*") == -1
                    && !(lit.predicate.name.equals("elder") || lit.predicate.name.equals("younger"))) {
                return true;
            } else if (lit.args.size() > 1 && ((Variable) lit.args.get(1)).argName.equals("Ego")) {
                if (lit.predicate.name.equals("husband") || lit.predicate.name.equals("wife")) {
                    return true;
                }
            }
        }
        return false;
    }  //  end of method egoGenderImplied

    public boolean addEgoAlterSeniority(ClauseBody cb, ArrayList<Object> posDyads, ArrayList<Object> negDyads)
            throws KSInternalErrorException {
        //  If PosDyads holds less than 3 dyads, it is dangerous to generalize -- return false.
        //  If all the pos dyads have Egos younger (older) than Alter, and adding that requirement eliminates
        //  1 or more neg dyads, then add the requirement to CB and return true.  Else return false.
        if (cb.level != 0) {
            return false;  //  Seniority only makes sense for peers of Ego
        }
        if (posDyads.size() < 3) {
            return false;
        }
        Individual ego = ((Dyad) posDyads.get(0)).ego,
                alter = ((Dyad) posDyads.get(0)).alter;
        Date egoDOB, alterDOB;
        String egoSeniority;
        try {
            egoDOB = UDate.parse(ego.getDateOfBirth());
            alterDOB = UDate.parse(alter.getDateOfBirth());
            if (egoDOB == null || alterDOB == null) {
                return false;  //  unknown birth dates defeat this effort
            }
            egoSeniority = (egoDOB.before(alterDOB) ? "elder" : "younger");
            //  Check whether this relationship holds for all ego/alter pairs
            for (int i = 1; i < posDyads.size(); i++) {
                ego = ((Dyad) posDyads.get(i)).ego;
                alter = ((Dyad) posDyads.get(i)).alter;
                if (ego.hasNoDoB() || alter.hasNoDoB()
                        || ego.getDateOfBirth().length() < 4 || alter.getDateOfBirth().length() < 4) {
                    return false;
                }
                egoDOB = UDate.parse(ego.getDateOfBirth());
                alterDOB = UDate.parse(alter.getDateOfBirth());
                if ((egoSeniority.equals("elder") && !egoDOB.before(alterDOB))
                        || (egoSeniority.equals("younger") && !egoDOB.after(alterDOB))) {
                    return false;  //  All pos aren't the same.  Fuggetabouddit.
                }
            }  //  end of loop thru posDyads
            boolean didNotHelp = true;
            for (int i = 0; i < negDyads.size() && didNotHelp; i++) {
                ego = ((Dyad) negDyads.get(i)).ego;
                alter = ((Dyad) negDyads.get(i)).alter;
                egoDOB = UDate.parse(ego.getDateOfBirth());
                alterDOB = UDate.parse(alter.getDateOfBirth());
                if (egoDOB == null || alterDOB == null) continue;
                if ((egoSeniority.equals("elder") && !egoDOB.before(alterDOB))
                        || (egoSeniority.equals("younger") && !egoDOB.after(alterDOB))) {
                    didNotHelp = false;  //  At least 1 neg is eliminated.
                }
            }
            if (didNotHelp) {
                return false;
            }
        } catch (KSDateParseException e) {
            throw new KSInternalErrorException("in addEgoAlterSeniority:\n" + e);
        }
        //  OK.  All pos genders are the same and some negs are not.
        Literal lit = new Literal(new Predicate(egoSeniority, determineCategory(egoSeniority)));
        Variable egoVar = (Variable) ((Literal) cb.body.get(0)).args.get(1),
                alterVar = (Variable) ((Literal) cb.body.get(cb.body.size() - 1)).args.get(0);
        lit.args.add(egoVar);
        lit.args.add(alterVar);
        cb.body.add(lit);  //  Normally, an age constraint on Alter is stated last.
        return true;
    }  //  end of method addEgoAlterSeniority

    public void test4Useless(ClauseBody cb, TreeMap posLitLists, ArrayList<Object> pos2BeUncovered, ArrayList<Object> negDyads, ArrayList<Object> negs2BeCovered)
            throws KSBadHornClauseException, KSNoChainOfRelations2Alter, KSInternalErrorException,
            KSConstraintInconsistency, ClassNotFoundException {
        //  For each litList that covers pos Lits, remove any component lit that doesn't prevent neg coverage
        Iterator posLiter = posLitLists.values().iterator();  //  each value is a bag of items
        while (posLiter.hasNext()) {
            ArrayList<Object> bag = (ArrayList<Object>) posLiter.next();
            Iterator bagIter = bag.iterator();
            while (bagIter.hasNext()) {
                ArrayList<Object> item = (ArrayList<Object>) bagIter.next(),
                        litList = (ArrayList<Object>) item.get(1),
                        dyList = (ArrayList<Object>) item.get(0),
                        usefulLits = new ArrayList<Object>();
                int origSize = litList.size();
                if (!pos2BeUncovered.contains(dyList.get(0))) {  // item covers pos dyads
                    while (litList.size() > 0) {
                        Literal lit = (Literal) litList.remove(0);  //  Try excluding this lit
                        ClauseBody testCB = cb.copy();  //  cb is an expanded cb
                        testCB.body.addAll(usefulLits);
                        testCB.body.addAll(litList);
                        for (int k = 0; k < negDyads.size(); k++) {
                            Dyad negDy = (Dyad) negDyads.get(k);
                            if (!negs2BeCovered.contains(negDy) && fit(testCB, negDy)) {
                                usefulLits.add(lit);
                                break;
                            }
                        }  //  end of loop thru negDyads
                    }  //  end of while-loop excluding lits in litList
                    if (usefulLits.isEmpty()) {
                        bagIter.remove();  //  all lits were useless
                    } else {  //  keep only lits that were useful
                        item.remove(1);
                        item.add(usefulLits);
                    }  //  end of some lits were useless
                }  //  end of item covers pos dyads
            }  //  end of loop thru items in bag
            if (bag.isEmpty()) {
                posLiter.remove();  //  ??  Does it remove the whole Map.Entry?
            }
        }  //  end of loop thru bags
    }  //  end of method test4Useless

    public void makeDeepCopies(ArrayList<Object> solution) throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException,
            KSConstraintInconsistency, KSInternalErrorException {
        for (int i = 0; i < solution.size(); i++) {
            Object obj = solution.get(i);
            if (obj instanceof BaseCB_Cover) {
                BaseCB_Cover cover = (BaseCB_Cover) obj;
                cover.basePtrEQC = cover.basePtrEQC.deepCopy();
            }  //  end of obj-is-BaseCB_Cover
        }  //  end of i-loop
    }  //  end of method makeDeepCopies

    public void simplifyCBs(ArrayList<Object> solution, KinTermDef composedKTD) throws KSConstraintInconsistency, KSParsingErrorException,
            JavaSystemException, KSInternalErrorException, KSBadHornClauseException, ClassNotFoundException {
        //  solution = ArrayList<Object> of (CBs containing primitives and macros) OR BaseCB_Covers
        ArrayList<Object> cbList = new ArrayList<Object>();
        for (int i = 0; i < solution.size(); i++) {
            Object obj = solution.get(i);
            if (obj instanceof ClauseBody) {
                cbList.add(obj);
            } else if (obj instanceof BaseCB_Cover) {
                Library.CB_EQC eqc = ((BaseCB_Cover) obj).basePtrEQC;
                cbList.add(eqc.prototype.getClause());
            } else {
                throw new KSInternalErrorException("DT.SimplifyCBs looking for CB or BaseCB_Cover, but finds " + obj.getClass());
            }
        }  //  end of i-loop
        boolean progress = true;
        while (progress) {
            progress = false;
            iLoop:	//  Pair-wise generalization
            for (int i = 0; i < cbList.size() - 1; i++) {
                ClauseBody cb1 = (ClauseBody) cbList.get(i);
                for (int j = i + 1; j < cbList.size(); j++) {
                    ClauseBody cb2 = (ClauseBody) cbList.get(j),
                            moreGeneral = generalize(cb1, cb2);
                    if (moreGeneral != null) {  //  bingo
                        ArrayList<Object> item = new ArrayList<Object>();
                        item.add(moreGeneral);  //  in solution, replace i * j with item
                        item.add(solution.remove(j));
                        item.add(solution.remove(i));
                        solution.add(i, item);
                        cbList.remove(j);  //  in cbList, replace i & j with moreGeneral
                        cbList.remove(i);
                        cbList.add(i, moreGeneral);
                        progress = true;
                        break iLoop;
                    }  //  end of bingo
                }  //  end of j-loop
            }  //  end of i-loop
        }  //  end of while-progress
        //  Now look for groups of CBs that constitute implicit recursion -- repeating patterns
        //  like (aPz, aPPz, aPPPz, ...) where a = any (empty?) prefix, z = any(empty?)  postfix,
        //  P = any non-empty set of symbols
        if (cbList.size() < 3) {
            return;  //  minimum 3 CBs needed for the pattern.
        }
        progress = true;
        while (progress) {  //  continue until no more recursive patterns are found
            progress = false;
            //  Assign unique sequence numbers to CBs so 'equals' will distinguish them.  Same sequence as solution.
            for (int i = 0; i < cbList.size(); i++) {
                ((ClauseBody) cbList.get(i)).seqNmbr = i;
            }
            TreeMap sorter = new TreeMap();
            for (int i = 0; i < cbList.size(); i++) {
                ClauseBody cb = (ClauseBody) cbList.get(i);
                if (sorter.get(cb.body.size()) == null) {
                    sorter.put(cb.body.size(), new ArrayList<Object>());
                }
                ((ArrayList<Object>) sorter.get(cb.body.size())).add(cb);
            }  //  CBs are now sorted by body size.
            Iterator treeIter = sorter.values().iterator();
            ArrayList<Object> orderedCBs = new ArrayList<Object>((ArrayList<Object>) treeIter.next()),
                    members = new ArrayList<Object>();
            while (treeIter.hasNext()) {
                orderedCBs.addAll((ArrayList<Object>) treeIter.next());
            }
            int seqNmbr = 1,
                    loc = 0,
                    solSize = solution.size(),
                    comboNum = 0;
            ClauseBody cb0 = null;
            ArrayList<Object> prefixes = null,
                    patterns = null,
                    postfixes = null;
            jLoop:
            for (int j = 0; j < orderedCBs.size() - 2; j++) {
                cb0 = (ClauseBody) orderedCBs.get(j);
                prefixes = new ArrayList<Object>();
                patterns = new ArrayList<Object>();
                postfixes = new ArrayList<Object>();
                generateAllCombos(cb0, prefixes, patterns, postfixes);
                for (comboNum = 0; comboNum < prefixes.size(); comboNum++) {
                    members = new ArrayList<Object>();
                    members.add(cb0);
                    for (int k = j + 1; k < orderedCBs.size(); k++) {
                        ClauseBody cb = (ClauseBody) orderedCBs.get(k);
                        if (patternFits(cb, comboNum, prefixes, patterns, postfixes)) {
                            addIfNotDuplicative(cb, members);
                        }
                    }  //  end of k-loop
                    if (members.size() > 2) {
                        break jLoop;
                    }
                }  //  end of comboNum-loop
            }  //  end of j-loop
            if (members.size() > 2) {  //  found one
                KinTermDef recursKTD = makeRecursiveKTD((ArrayList<Object>) patterns.get(comboNum), composedKTD, seqNmbr++);
                ClauseBody newCB = insertRecursKTD(cb0, comboNum, prefixes, recursKTD, postfixes);
                //  post recursKTD to newCB's DT for expansion purposes (it will also get posted to this, later.)
                newCB.ktd.domTh.theory.put(recursKTD.kinTerm, recursKTD);
                ArrayList<Object> item = new ArrayList<Object>();
                item.add(newCB);
                boolean[] killer = new boolean[solSize];	//  Shouldn't need to be so indirect, but the 'correct' way
                for (int i = 0; i < solSize; i++) {
                    killer[i] = false;	//  does not work reliably.  Weird!!
                }
                for (int i = 0; i < members.size(); i++) {
                    ClauseBody mem = (ClauseBody) members.get(i);
                    int ndx = cbList.indexOf(mem);
                    killer[ndx] = true;
                }
                for (int i = solSize - 1; i >= 0; i--) {
                    if (killer[i]) {
                        item.add(solution.remove(i));
                        cbList.remove(i);
                    }
                }
                cbList.add(newCB);
                solution.add(item);
                progress = true;
            }  //  end of found-one
        }  //  end of while-progress
    }  //  end of method simplifyCBs

    public void addIfNotDuplicative(ClauseBody cb, ArrayList<Object> members) {
        //  members is supposed to hold CBs that fit a recursive pattern.  We do not want the trivial recursive pattern
        //  of same-length bodies.  I.E.  FaSo  &  FaSo.  An addition to members must have a different body length from every
        //  curent member.
        int newGuySize = cb.body.size();
        for (int i = 0; i < members.size(); i++) {
            if (newGuySize == ((ClauseBody) members.get(i)).body.size()) {
                return;
            }
        }
        members.add(cb);
    }  //  end of method addIfNotDuplicative

    public ClauseBody generalize(ClauseBody cb1, ClauseBody cb2) {
        ClauseBody result = null;
        //  Try to merge 2 nearly-identical, complementary, sets of lits.
        //  If they're identical, 'merge' them by killing 1 of them.
        if (cb1.body.size() == cb2.body.size()) {
            int unequalPair = -1;
            boolean exactlyOne = true;
            for (int i = 0; i < cb1.body.size() && exactlyOne; i++) {
                Literal lit1 = (Literal) cb1.body.get(i),
                        lit2 = (Literal) cb2.body.get(i);
                if (!lit1.equals(lit2)) {
                    if (unequalPair == -1) {
                        unequalPair = i;
                    } else {
                        exactlyOne = false;  //  this is 2nd unequal pair
                    }
                }
            }  //  end of loop thru pairs of lits
            if (exactlyOne && unequalPair > -1) {  //  Found nearly-identical pair
                Literal lit1 = (Literal) cb1.body.get(unequalPair),
                        lit2 = (Literal) cb2.body.get(unequalPair),
                        merged = lit1.mergeWith(lit2);
                if (merged != null) {
                    result = cb1.copy();
                    result.body.remove(unequalPair);
                    if (!merged.predicate.name.equals("omit")) {
                        result.body.add(unequalPair, merged);
                    }
                    if (!result.pcString.equals(cb2.pcString)) {
                        result.pcString += "_" + cb2.pcString;
                    }
                    return result;
                }
            } else if (unequalPair == -1) {  //  found identical pair
                result = cb1.copy();  //  Kill 2nd one & we're done.
                return result;
            }
        }  //  end of same-size pair
        return null;  //  Returning null signals failure to generalize.
    }  //  end of method generalize

    void generateAllCombos(ClauseBody cb, ArrayList<Object> prefixes, ArrayList<Object> patterns, ArrayList<Object> suffixes) {
        //  Prefixes etc. are ALists of predicate.names
        for (int left = 0; left < cb.body.size(); left++) {
            for (int right = cb.body.size(); right > left; right--) {
                ArrayList<Object> prefix = new ArrayList<Object>(),
                        pattern = new ArrayList<Object>(),
                        suffix = new ArrayList<Object>();
                for (int i = 0; i < left; i++) {
                    prefix.add(cb.body.get(i));
                }
                for (int i = left; i < right; i++) {
                    pattern.add(cb.body.get(i));
                }
                for (int i = right; i < cb.body.size(); i++) {
                    suffix.add(cb.body.get(i));
                }
                prefixes.add(prefix);
                patterns.add(pattern);
                suffixes.add(suffix);
            }
        }
    }  //  end of method generateAllCombos

    boolean patternFits(ClauseBody cb, int ndx, ArrayList<Object> prefixes, ArrayList<Object> patterns, ArrayList<Object> suffixes) {
        //  Because this method is called on CBs in ascending body.size, left & right will never cross.
        //  We only check the predicate names.  Arg names may differ for legitimate reasons.
        ArrayList<Object> lits = new ArrayList<Object>(cb.body),
                prefix = (ArrayList<Object>) prefixes.get(ndx),
                pattern = (ArrayList<Object>) patterns.get(ndx),
                suffix = (ArrayList<Object>) suffixes.get(ndx);
        int left = prefix.size(),
                patternSize = pattern.size(),
                right = lits.size() - suffix.size();
        //  Pattern can't fit unless lits has a suitable number of literals
        if ((right - left) % patternSize != 0) {
            return false;
        }
        for (int i = 0; i < left; i++) {
            Literal prefixLit = (Literal) prefix.get(i),
                    bodyLit = (Literal) lits.get(i);
            if (!prefixLit.predicate.name.equals(bodyLit.predicate.name)) {
                return false;
            }
        }
        for (int i = 0; i < suffix.size(); i++) {
            Literal suffixLit = (Literal) suffix.get(i),
                    bodyLit = (Literal) lits.get(i + right);
            if (!suffixLit.predicate.name.equals(bodyLit.predicate.name)) {
                return false;
            }
        }
        //  We have verified that prefix & suffix are on the ends.  Now see if pattern+ is in middle
        for (int i = 0; i < right - left; i++) {
            Literal patternLit = (Literal) pattern.get(i % patternSize),
                    bodyLit = (Literal) lits.get(i + left);
            if (!patternLit.predicate.name.equals(bodyLit.predicate.name)) {
                return false;
            }
        }
        return true;
    }  //  end of method patternFits

    KinTermDef makeRecursiveKTD(ArrayList<Object> pattern, KinTermDef composedKTD, int seq)
            throws KSBadHornClauseException, KSInternalErrorException, KSConstraintInconsistency,
            ClassNotFoundException {
        //  composedKTD has a kinTerm and a DT -- otherwise empty.
        String auxName = composedKTD.kinTerm + "<aux>R" + seq;
        KinTermDef ktd = new KinTermDef(auxName);
        ktd.domTh = this;
        //  Make base case of the recursive ktd
        Literal lit = (Literal) ((Literal) pattern.get(0)).copy();
        lit.args = new ArrayList<Object>();
        ClauseBody baseCB = new ClauseBody(lit);
        ktd.addClause(baseCB);
        for (int i = 1; i < pattern.size(); i++) {
            baseCB.addLiteral((Literal) ((Literal) pattern.get(i)).copy());
        }
        baseCB.reassignArgNames_NewFront(ctxt);
        ClauseBody recursCB = baseCB.deepCopy();
        lit = new Literal(new Predicate(auxName, new CulturalCategory()));
        recursCB.body.add(0, lit);
        recursCB.reassignArgNames_NewFront(ctxt);
        ktd.addClause(recursCB);
        theory.put(ktd.kinTerm, ktd);  //  recursive ktd must be in theory for expansion of itself & its users
        Context.current = ctxt;
        boolean oldSDG = ctxt.simDataGen;
        ctxt.simDataGen = true;	
        ktd.assureExamplesGenerated(ctxt.getPair());
        ktd.makeSigStrings();
        ctxt.simDataGen = oldSDG;
        return ktd;
    }  //  end of method makeRecursiveKTD

    ClauseBody insertRecursKTD(ClauseBody cb0, int ndx, ArrayList<Object> prefixes, KinTermDef recursKTD,
            ArrayList<Object> suffixes) throws KSConstraintInconsistency, KSInternalErrorException {
        ClauseBody newCB = cb0.deepCopy();
        ArrayList<Object> prefix = (ArrayList<Object>) prefixes.get(ndx),
                newBody = new ArrayList<Object>(),
                suffix = (ArrayList<Object>) suffixes.get(ndx);
        int spot = prefix.size();
        for (int i = 0; i < spot; i++) {
            newBody.add(newCB.body.get(i));
        }
        newBody.add(new Literal(new Predicate(recursKTD.kinTerm, new CulturalCategory())));
        spot = newCB.body.size() - suffix.size();
        for (int i = spot; i < newCB.body.size(); i++) {
            newBody.add(newCB.body.get(i));
        }
        newCB.body = newBody;
        newCB.reassignArgNames(ctxt);
        newCB.pcString = makePC_String(prefix, recursKTD, suffix);
        newCB.pcStringStructural = newCB.structStr(newCB.pcString);
        return newCB;
    }  //  end of method insertRecursKTD

    String makePC_String(ArrayList<Object> prefix, KinTermDef recursKTD, ArrayList<Object> suffix)
            throws KSInternalErrorException {
        ArrayList<Object> prefixStrings = lits2PCs(prefix, new ArrayList<Object>()), //  { FaFa, FaMo, MoFa... }
                ktdStrings = recursKTD.decodeString(recursKTD.eqcSigExact),
                suffixStrings = lits2PCs(suffix, new ArrayList<Object>()),
                finalStrings = prefixStrings,
                temp;
        if (finalStrings.isEmpty()) {
            finalStrings.addAll(ktdStrings);
        } else {
            temp = new ArrayList<Object>();
            for (int i = 0; i < finalStrings.size(); i++) {
                String front = (String) finalStrings.get(i);
                for (int j = 0; j < ktdStrings.size(); j++) {
                    String back = (String) ktdStrings.get(j);
                    temp.add(front + back);
                }  //  end of j-loop
            }  //  end of i-loop
            finalStrings = temp;
        }
        if (!suffixStrings.isEmpty()) {
            temp = new ArrayList<Object>();
            for (int i = 0; i < finalStrings.size(); i++) {
                String front = (String) finalStrings.get(i);
                for (int j = 0; j < suffixStrings.size(); j++) {
                    String back = (String) suffixStrings.get(j);
                    temp.add(front + back);
                }  //  end of j-loop
            }  //  end of i-loop
            finalStrings = temp;
        }
        Iterator iter = finalStrings.iterator();
        TreeMap sorter = new TreeMap();
        while (iter.hasNext()) {
            String str = (String) iter.next();
            sorter.put(str, str);
        }
        iter = sorter.values().iterator();
        String result = (String) iter.next();
        while (iter.hasNext()) {
            result += "_" + (String) iter.next();
        }
        return result;
    }  //  end of method makePC_String

    ArrayList<Object> lits2PCs(ArrayList<Object> lits, ArrayList<Object> pcStrings) throws KSInternalErrorException {
        if (lits.isEmpty()) {
            return pcStrings;
        }
        Object obj = lits.remove(0);
        String predName;
        if (obj instanceof Literal) {
            predName = ((Literal) obj).predicate.name;
        } else if (obj instanceof String) {
            predName = (String) obj;
        } else {
            throw new KSInternalErrorException("DT.lits2PCs encountered a " + obj.getClass().getName());
        }
        int ndx = kinTypePreds.indexOf(predName);
        if (ndx > -1) {
            String predSymbol = (String) kinTypeSymbols.get(ndx);
            ArrayList<Object> newPCStrings = new ArrayList<Object>();
            if (pcStrings.isEmpty()) {
                newPCStrings.add(predSymbol);
            } else {
                for (int i = 0; i < pcStrings.size(); i++) {
                    newPCStrings.add((String) pcStrings.get(i) + predSymbol);
                }
            }
            return lits2PCs(lits, newPCStrings);
        } else {
            ndx = pluralKTPreds.indexOf(predName);
            if (ndx > -1) {
                ArrayList<Object> symbols = (ArrayList<Object>) pluralKTSymbols.get(ndx),
                        newPCStrings = new ArrayList<Object>();
                for (int i = 0; i < symbols.size(); i++) {
                    ArrayList<Object> tempPCStrings = new ArrayList<Object>();
                    for (int j = 0; j < pcStrings.size(); j++) {
                        tempPCStrings.add(new String((String) pcStrings.get(j)));
                    }
                    String predSymbol = (String) symbols.get(i);
                    if (tempPCStrings.isEmpty()) {
                        tempPCStrings.add(predSymbol);
                    } else {
                        for (int j = 0; j < tempPCStrings.size(); j++) {
                            String pcs = (String) tempPCStrings.remove(j) + predSymbol;
                            tempPCStrings.add(j, pcs);
                        }
                    }
                    newPCStrings.addAll(lits2PCs(lits, tempPCStrings));
                }  //  end of i-loop thru symbols
                return newPCStrings;
            }  //  end of ndx > -1
        }
        if (predName.equals("male") || predName.equals("female") || predName.equals("elder")
                || predName.equals("younger") || predName.equals("dead") || predName.equals("divorced")) {
            return lits2PCs(lits, pcStrings);  //  ignore these
        }
        throw new KSInternalErrorException("DT.lits2PCs found illegal predicate named = " + predName);
    }  //  end of method lits2PCs

    public ArrayList<Object> subDyads(ArrayList<Object> dyTokens) {
        ArrayList<Object> dyads = new ArrayList<Object>();  //  DyTokens may contain Dyads or Tokens
        for (int i = 0; i < dyTokens.size(); i++) {
            Object obj = dyTokens.get(i);
            if (obj instanceof Dyad) {
                dyads.add(obj);
            } else {
                DyadToken dyToken = (DyadToken) obj;
                dyads.add(dyToken.myDy);
            }
        }
        return dyads;
    }  //  end of method subDyads

    public void simplifyAuxs(KinTermDef composedKTD, ArrayList<Object> auxiliaries) throws KSConstraintInconsistency {
        //  Look for any auxiliary predicates that are (or could be) defined as a single primitive
        //  or single Std Macro.  Replace those in other auxs and in the base CBs of composedKTD
        //  with the single primitive/macro.
        if (auxiliaries == null || auxiliaries.isEmpty()) {
            return;
        }
        Iterator iter = auxiliaries.iterator();
        while (iter.hasNext()) {
            KinTermDef auxDef = (KinTermDef) iter.next();
            if (auxDef.definitions.size() == 1) {  //  only a single-base-clause def will work
                ClauseBody cb = (ClauseBody) auxDef.definitions.get(0);
                Predicate newPred = null;
                if (cb.body.size() == 1) {
                    Literal lit = (Literal) cb.body.get(0);
                    if (isPrimOrMacro(lit.predicate.name)) {
                        newPred = lit.predicate;
                    }
                } else if (cb.body.size() == 2) {
                    Literal lit0 = (Literal) cb.body.get(0),
                            lit1 = (Literal) cb.body.get(1);
                    newPred = makeMacro(lit0, lit1, true);
                }
                if (newPred != null) {
                    iter.remove();
                    replaceAuxPred(auxDef, newPred, auxiliaries, composedKTD);
                }  //  end of found-one
            }  //  end of its-a-single-clause-def
        }  //  end of first loop thru auxiliaries
        for (int i = 0; i < auxiliaries.size(); i++) {
            KinTermDef auxDef = (KinTermDef) auxiliaries.get(i);
            for (int j = 0; j < auxDef.expandedDefs.size(); j++) {
                ((ClauseBody) auxDef.expandedDefs.get(j)).unifyVariables();
            }  //  end of loop thru expanded Defs
        }  //  end of second loop thru auxiliaries
    }  //  end of method simplifyAuxs

    public Predicate makeMacro(Literal lit0, Literal lit1, boolean recurse) {
        //  if these literals are equivalent to a primitive or macro, return it.
        Predicate newPred = null;
        int cell = neuterPreds.indexOf(lit0.predicate.name);
        if (cell > -1 && lit1.predicate.name.equals("male")) {
            newPred = new Predicate((String) malePreds.get(cell));
            if (cell == 3) {
                newPred.category = new CulturalCategory();
            } else {
                newPred.category = new PrimitiveCategory();
            }
        } else if (cell > -1 && lit1.predicate.name.equals("female")) {
            newPred = new Predicate((String) femalePreds.get(cell));
            if (cell == 3) {
                newPred.category = new CulturalCategory();
            } else {
                newPred.category = new PrimitiveCategory();
            }
        }
        if (newPred == null && recurse) {
            return makeMacro(lit1, lit0, false);
        } else {
            return newPred;
        }
    }  //  end of method makeMacro

    public void replaceAuxPred(KinTermDef auxDef, Predicate newPred, ArrayList<Object> auxiliaries,
            KinTermDef composedKTD) {
        //  Find every reference to auxDef in the definitions of composedKTD and replace it with
        //  newPred.  Likewise in the bodies of each auxiliary KTD in auxiliaries.
        String oldPred = auxDef.kinTerm;
        for (int i = 0; i < auxiliaries.size(); i++) {
            KinTermDef aux = (KinTermDef) auxiliaries.get(i);
            for (int j = 0; j < aux.definitions.size(); j++) {
                ClauseBody auxCB = (ClauseBody) aux.definitions.get(j);
                for (int k = 0; k < auxCB.body.size(); k++) {
                    Literal auxLit = (Literal) auxCB.body.get(k);
                    if (auxLit.predicate.name.equals(oldPred)) {
                        auxLit.predicate = newPred;
                    }  //  end of found-one
                }  //  end of loop thru lits in auxCB.body
            }  //  end of loop thru definitions of aux
        }  //  end of loop thru auxiliaries
        for (int i = 0; i < composedKTD.definitions.size(); i++) {
            ClauseBody def = (ClauseBody) composedKTD.definitions.get(i);
            for (int j = 0; j < def.body.size(); j++) {
                Literal lit = (Literal) def.body.get(j);
                if (lit.predicate.name.equals(oldPred)) {
                    lit.predicate = newPred;
                }
            }  //  end of loop thru lits in def
        }  //  end of loop thru definitions
    }  //  end of method replaceAuxPred

    public Anomaly makeAnomaly(String kinTerm, ArrayList<Object> octuple, int tolerance, TreeMap pos, TreeMap neg)
            throws KSInternalErrorException {
        KinTermDef composedKTD = (KinTermDef) octuple.get(0);
        ArrayList<Object> posUncovered = (ArrayList<Object>) octuple.get(3),
                negsCovered = (ArrayList<Object>) octuple.get(4),
                confirmedProblems = confirmedScan(posUncovered, negsCovered);
        int nmbr = posUncovered.size() + negsCovered.size(),
                limit = (int) Math.floor(countLeaves(pos) * tolerance / 100d);
        if (confirmedProblems.size() > limit) {
            return null;
        }
        nmbr -= confirmedProblems.size();
        if (nmbr < 1) {
            return null;
        }
        String art = (nmbr == 1 ? "This " : "These "),
                pl = (nmbr == 1 ? "" : "s"),
                lp = (nmbr == 1 ? "s" : ""),
                confirmed = (confirmedProblems.isEmpty() ? "" : "\nNOTE: You previously confirmed "
                + confirmedProblems.size() + " such."),
                question = art + nmbr + " dyad" + pl + " seem" + lp
                + " to break a (composed) pattern.  Could the dyad" + pl + " be wrong?" + confirmed;
        Library.KTD_Ptr ktdPtr = new Library.KTD_Ptr(composedKTD, "composed");
        return new Anomaly(ktdPtr, kinTerm, question, "nearMiss", posUncovered, negsCovered, pos, neg);
    }  //  end of method makeAnomaly

    public Anomaly makeLGGAnomaly(KinTermDef composedKTD, ArrayList<Object> barriers, int tolerance, TreeMap pos)
            throws KSInternalErrorException {
        //  NOTE:  barriers = List of Items.  Item = { SuspectList, GoodyList }.  SuspectList contains suspected noise.
        String kinTerm = composedKTD.kinTerm;
//  if (kinTerm.equals("nauwa_nani")) Context.breakpoint();
        ArrayList<Object> posUncovered = new ArrayList<Object>(),
                negsCovered = new ArrayList<Object>(),
                confirmedProblems;
        for (int i = 0; i < barriers.size(); i++) {
            ArrayList<Object> item = (ArrayList<Object>) barriers.get(i),
                    suspectList = (ArrayList<Object>) item.get(0);
            for (int j = 0; j < suspectList.size(); j++) {
                Dyad suspect = (Dyad) suspectList.get(j);
                if (suspect.kinTerm.equals(kinTerm)) {
                    posUncovered.add(suspect);
                } else {
                    negsCovered.add(suspect);
                }
            }  //  end of j-loop
        }  //  end of i-loop
        confirmedProblems = confirmedScan(posUncovered, negsCovered);
        int nmbr = posUncovered.size() + negsCovered.size(),
                limit = (int) Math.floor(countLeaves(pos) * tolerance / 100d);
        if (confirmedProblems.size() > limit) {
            return null;
        }
        nmbr -= confirmedProblems.size();
        if (nmbr < 1) {
            return null;
        }
        String art = (nmbr == 1 ? "This " : "These "),
                pl = (nmbr == 1 ? "" : "s"),
                lp = (nmbr == 1 ? "s" : ""),
                confirmed = (confirmedProblems.isEmpty() ? "" : "\nNOTE: You previously confirmed "
                + confirmedProblems.size() + " such."),
                question = art + nmbr + " dyad" + pl + " seem" + lp
                + " to be part of a contradiction: other identical dyads had different kin terms."
                + "\nCould the dyad" + pl + " be wrong?" + confirmed;
        return new Anomaly(barriers, kinTerm, question, "contradictions", posUncovered, negsCovered, null, null);
    }  //  end of method makeLGGAnomaly

    /*	Strategy:  Start fillInNames_bool from ego (with alter as goalPerson) and see if
    it can reach alter using the definition contained in cb.  Success = true.		*/
    public boolean fit(ClauseBody cb, Dyad dad) throws KSBadHornClauseException, KSNoChainOfRelations2Alter,
            KSInternalErrorException, KSConstraintInconsistency, ClassNotFoundException {
        int size = cb.body.size();
        cb.clearPriorValues();
        ConstraintObj constraints = new ConstraintObj();
        ArrayList<Object> genderStuff = new ArrayList<Object>(), starStuff = new ArrayList<Object>(), starBindings = new ArrayList<Object>();
        for (int i = 0; i < size; i++) {  // if any literal specifies an ego gender other than ego.gender, we fail.
            if (!(((Literal) cb.body.get(i)).constraintCheck(dad.ego.gender, constraints, genderStuff, starStuff))) {
                return false;
            }
        }
        //  constraintCheck, by side-effect, builds all constraints
        TreeMap bindings = new TreeMap();
        bindings.put("Ego", dad.ego);
        if (!LiteralAbstract1.finalConstraintCheck(dad.ego.gender, bindings, constraints, cb.body, genderStuff, starStuff)) {
            return false;
        }
        // finalConstraintCheck does post-processing & a final conflict-check. It adds UDP constraints.
        ArrayList<Object> bodyCopy = new ArrayList<Object>(cb.body), starStuffCopy = new ArrayList<Object>(starStuff);
        String kinTerm = cb.ktd.kinTerm;
        Literal next = null;
        while (bodyCopy.size() > 0 && next == null) {
            next = cb.pop(bodyCopy, starStuffCopy, bindings, kinTerm);  //  next = first non-constraint literal in body
        }
        if (next == null) {
            return false;
        } else {  // start the process with next.  First, find any star-props for Ego
            Variable egoVar = null;
            for (int i = 0; i < next.args.size(); i++) {
                if (((Argument) next.args.get(i)).argName.equals("Ego")) {
                    egoVar = (Variable) next.args.get(i);
                }
            }
            if (!next.meetsStarSpecs(dad.ego, egoVar, constraints, starBindings, 
                    bindings, "query", cb, null)) {
                return false;
            }
            return next.fillInNames_bool(kinTerm, bodyCopy, starStuffCopy, cb, bindings, constraints, dad.alter, new ArrayList<Object>());
        }  //  end of next-isn't-null
    }  //  end of method fit

    public boolean noFits(KinTermDef ktd, Library.KTD_Ptr ktdPtr, TreeMap pos, TreeMap neg, TreeMap cbLists,
            ArrayList<Object> listSetSolid, int posSize, ArrayList<Object> nNegHits, int maxHits, ArrayList<Object> tracer)
            throws KSParsingErrorException, KSBadHornClauseException, KSConstraintInconsistency,
            KSInternalErrorException, ClassNotFoundException {
        //  Scan all CBs in this ktd that weren't scanned in findKTMatches:
        //		If they fit no dyads in neg, return true;  By side-effect, fill in KTD.ExpandedDefs
        //		If they collectively fit less than (posSize * maxNoise%) dyads in neg, then update
        //			ktd's listSetSolid to include any dyads CB might have matched that weren't in solidCBMatches
        //		If they fit any dyads in neg, return false.
        tracer.add("trace");
        ArrayList<Object> cbList = (ArrayList<Object>) cbLists.get(ktdPtr), nPosHits;
        expDefLoop:
        for (int i = 0; i < ktd.expandedDefs.size(); i++) {
            ClauseBody cb = (ClauseBody) ktd.expandedDefs.get(i);
            ArrayList<Object> dyads = (ArrayList<Object>) neg.get(cb.pcString);
            if (found(cb.seqNmbr, cbList)) {
                cb.posHit = true;
            } else if (dyads != null) {
                for (int j = 0; j < dyads.size(); j++) {
                    Dyad dyad = (Dyad) dyads.get(j);
                    if (fit(cb, dyad)) {
                        nNegHits.add(dyad);
                        if (nNegHits.size() > maxHits) {
                            break expDefLoop;
                        }
                    }
                }  //  end of loop thru dyads
                if (listSetSolid.size() < posSize && nNegHits.size() < maxHits) {
                    //  This CB might have not been included in solidCBMatches because of a noise neg dyad
                    ArrayList<Object> posDyads = new ArrayList<Object>();
                    if (pos.get(cb.pcString) != null) {
                        posDyads.addAll((ArrayList<Object>) pos.get(cb.pcString));
                    }
                    posDyads.removeAll(listSetSolid);  //  residue = pos dyads CB might not have matched
                    for (int j = 0; j < posDyads.size(); j++) {
                        Dyad dyad = (Dyad) posDyads.get(j);
                        if (fit(cb, dyad)) {
                            listSetSolid.add(dyad);
                        }
                    }
                }  //  end of maybe the victim of a noise neg
            }  //  end of if-(dyads != null && notFound(cb.seqNmbr, cbList))
        }  //  end of loop thru CBs
        if (nNegHits.size() > 0) {
            return false;
        }
        //  Bingo.
        return true;
    }  //  end of method noFits

    /*	Any candidate that fits one or more dyads in POS, and no dyads in NEG, is a clause-level match.
    Record it in solidCBMatches.

    Any candidate that fits some dyads in POS, and far fewer dyads (no more than MAX_NOISE % of all hits)
    in NEG, is a noisy-match.  Record it in potFalseNeg linked to lists of the POS and NEG dyads it fit.

    Any candidate that fits some dyads in NEG, and far fewer dyads (no more than MAX_NOISE % of all hits) in POS,
    is a noisy-match.  Record it in potFalsePos linked to lists of the POS and NEG dyads it fit. */
    public void evalCandidates(TreeMap candidates, ArrayList<Object> solidCBMatches, ArrayList<Object> potFalseNeg,
            ArrayList<Object> potFalsePos, TreeMap pos, TreeMap neg, int maxNoise)
            throws KSParsingErrorException, KSBadHornClauseException, KSNoChainOfRelations2Alter,
            KSInternalErrorException, KSConstraintInconsistency, ClassNotFoundException, JavaSystemException {
        float maxN = maxNoise / 100f;
        Context.current = ctxt;
        Iterator candIter = candidates.entrySet().iterator();
        while (candIter.hasNext()) {
            Map.Entry entry = (Map.Entry) candIter.next();
            String exactStr = (String) entry.getKey();
            ArrayList<Object> cands = (ArrayList<Object>) entry.getValue(),
                    posList = (ArrayList<Object>) pos.get(exactStr),
                    negList = (ArrayList<Object>) neg.get(exactStr);  // Lists of dyads
            int posLstSiz = (posList == null ? 0 : posList.size()),
                negLstSiz = (negList == null ? 0 : negList.size());
            for (int i = 0; i < cands.size(); i++) {  //  loop thru candidates
                Library.CB_Ptr cbPtr = (Library.CB_Ptr) ((Library.CB_EQC) cands.get(i)).prototype;
                ClauseBody candidate = cbPtr.getClause();
                ArrayList<Object> posHitList = new ArrayList<Object>(), negHitList = new ArrayList<Object>();
                int posHits = 0, negHits = 0;
                for (int j = 0; j < posLstSiz; j++) {
                    Dyad dy = (Dyad) posList.get(j);
                    if (fit(candidate, dy)) {
                        posHits++;
                        posHitList.add(dy);
                    }
                }  //  end of loop thru POS                
                for (int j = 0; j < negLstSiz; j++) {
                        Dyad dy = (Dyad) negList.get(j);
                        if (fit(candidate, dy)) {
                            negHits++;
                            negHitList.add(dy);
                        }
                    }  //  end of loop thru NEG
//                int posMisses = posLstSiz - posHits,
//                        negMisses = negLstSiz - negHits;
//  System.out.println("\t" + cbPtr.languageName + ":" + cbPtr.kinTerm + ":" + cbPtr.cbSeqNmbr + " has " + posHits + " posHits, " + negHits + " negHits " 
//  					+ posMisses + " posMisses, " + negMisses + " negMisses.");
                float posRatio = (posHits * 1.0f) / (negHits + posHits),
                        negRatio = (negHits * 1.0f) / (negHits + posHits);
                if (posHits >= 1 && negHits == 0) {
                    ArrayList<Object> data = new ArrayList<Object>();
                    data.add(cands.get(i));
                    data.add(posHitList);
                    solidCBMatches.add(data);
                } else if (posHits > negHits && negHits > 0 && negRatio < maxN) {
//  System.out.println("### Found PotFalseNeg with " + negHits + " negHits and " + posHits + " posHits.");
                    ArrayList<Object> data = new ArrayList<Object>();
                    data.add(cands.get(i));
                    data.add(posHitList);
                    data.add(negHitList);
                    potFalseNeg.add(data);
                } else if (negHits > posHits && posHits > 0 && posRatio < maxN) {
//  System.out.println("### Found PotFalsePos with " + negHits + " negHits and " + posHits + " posHits.");
                    ArrayList<Object> data = new ArrayList<Object>();
                    data.add(cands.get(i));
                    data.add(posHitList);
                    data.add(negHitList);
                    potFalsePos.add(data);
                }
            }  //  end of loop thru these CB_Ptrs
        }  //  end of loop thru candidates entries (exact EQCs)
    }  //  end of method evalCandidates
    

    /*	For all the exact signatures of positive examples, extract the
    corresponding lists of all known CB_EQCs = potential matches. Filter out the huge ones unlikely to be matches.*/
    public TreeMap findCandidates(Library.ClauseIndex cbEQCs, TreeMap pos, Library.ClauseCounts cbCounts,
            DomainTheory sourceDT, Counter maxDist)
            throws KSInternalErrorException, FileNotFoundException, JavaSystemException {
        TreeMap candidates = new TreeMap(), hitCounter = new TreeMap();
        int maxStringDist = 0;
        float minPerCent = Library.minHitPerCent;
        Iterator posIter = pos.entrySet().iterator();
        while (posIter.hasNext()) {
            Map.Entry entry = (Map.Entry) posIter.next();
            String exactStr = (String) entry.getKey();
            ArrayList<Object> posDyads = (ArrayList<Object>) entry.getValue(),
                    exactEQCs = (ArrayList<Object>) cbEQCs.get(exactStr);
            if (exactEQCs != null && !exactStr.contains("*")) {
                ArrayList<Object> candEQCs = new ArrayList<Object>();
                for (int i = 0; i < exactEQCs.size(); i++) {
                    Library.CB_EQC eqc = (Library.CB_EQC) exactEQCs.get(i);
                    if (Library.includeSourceDT //  include all, or solo eqc not = sourceDT
                            || (eqc.members.size() == 1
                            && !sourceDT.languageName.equals(eqc.prototype.languageName))) {
                        candEQCs.add(eqc.copy());
                    } else if (eqc.members.size() > 1) {  //  remove sourceDT before including
                        Library.CB_EQC eqCopy = eqc.copy();
                        Iterator eqcIter = eqCopy.members.iterator();
                        while (eqcIter.hasNext()) {
                            Library.CB_Ptr mbr = (Library.CB_Ptr) eqcIter.next();
                            if (sourceDT.languageName.equals(mbr.languageName)) {
                                eqcIter.remove();
                            }
                        }
                        //  Conceivably could have emptied the membership
                        if (eqCopy.members.size() > 0) {
                            if (sourceDT.languageName.equals(eqCopy.prototype.languageName)) {
                                eqCopy.prototype = (Library.CB_Ptr) eqCopy.members.get(0);
                            }
                            candEQCs.add(eqCopy);
                        }
                    }
                }
                candidates.put(exactStr, candEQCs);
                //  Ck for greatest String Length (distance) seen to date
                //  Don't count this string if posDyads contains only discriminator dyads (requested from User)
                boolean normalDyads = false;
                for (int i = 0; i < posDyads.size(); i++) {
                    Dyad dy = (Dyad) posDyads.get(i);
                    if (dy.kinTermType != 7) {
                        normalDyads = true;	  //  found a normal dyad
                        break;
                    }
                }  //  end of loop thru posDyads
                int stringDist = Math.min(Math.max((exactStr.length() / 2) - 1, 0), Library.ClauseCounts.maxDist);
                if (normalDyads && stringDist > maxStringDist) {
                    maxStringDist = stringDist;
                }
                //  Now post to counters of CB hits per KTD
                for (int i = 0; i < candEQCs.size(); i++) {
                    for (int j = 0; j < ((Library.CB_EQC) candEQCs.get(i)).members.size(); j++) {
                        Library.CB_Ptr ptr = (Library.CB_Ptr) ((Library.CB_EQC) candEQCs.get(i)).members.get(j);
                        String langTerm = ptr.languageName + ":" + ptr.kinTerm;
                        if (hitCounter.get(langTerm) == null) {
                            hitCounter.put(langTerm, new Counter());
                        }
                        ((Counter) hitCounter.get(langTerm)).incr();
                    }  //  end ofloop thru members
                }  //  end of loop thru CB_EQCs
            }  //  end of exactEQCs is not empty
        }  //  end of loop thru entries in POS
        //  Now candidates contains deep copies of the CB_EQCs that match pcStrings in POS
        //  Filter out any CB_Ptrs that belong to KTDs that have LOTS more CBs than we hit in POS
        maxDist.incr(maxStringDist);
        Iterator candIter = candidates.entrySet().iterator();
        while (candIter.hasNext()) {
            Map.Entry entry = (Map.Entry) candIter.next();
            ArrayList<Object> candEQCs = (ArrayList<Object>) entry.getValue();
            Iterator eqcIter = candEQCs.iterator();
            while (eqcIter.hasNext()) {
                Library.CB_EQC eqc = (Library.CB_EQC) eqcIter.next();
                Iterator mbrIter = eqc.members.iterator();
                while (mbrIter.hasNext()) {
                    Library.CB_Ptr ptr = (Library.CB_Ptr) mbrIter.next();
                    String langTerm = ptr.languageName + ":" + ptr.kinTerm;
                    int cbCnt = cbCounts.getCount(langTerm, maxStringDist),
                        hits = ((Counter) hitCounter.get(langTerm)).total();
                    float perCent = 1f * hits / cbCnt;
                    if (perCent < minPerCent) {
                        mbrIter.remove();
                    }
                }  //  end of loop thru members of this eqc
                if (!eqc.members.isEmpty()) {
                    eqc.prototype = (Library.CB_Ptr) eqc.members.get(0);
                } else {
                    eqcIter.remove();
                }
            }  //  end of loop thru eqcs in this subtree
            //  if (candEQCs.isEmpty()) System.out.println("WARNING: Removed all candidate CB_EQCs for " + exactString);
        }  //  end of loop thru exactString subtrees
        return candidates;
    }  //  end of method findCandidates

    public TreeMap mergeSubTrees(TreeMap neg) {
        //  merge the sub_trees in a DyadTMap: kinTerm -> exactStr -> dyadList.
        TreeMap merg = new TreeMap();
        Iterator iter = neg.values().iterator();
        while (iter.hasNext()) {
            TreeMap subtree = (TreeMap) iter.next();
            Iterator trIter = subtree.entrySet().iterator();
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
            }  //  end of loop thru subtree entries
        }  //  end of loop thru subtrees
        return merg;
    }  //  end of method mergeSubTrees

    public class BaseCB_Cover implements Serializable {

        Library.CB_EQC basePtrEQC;
        int score, posScore, negScore;
        ArrayList<Object> posDyadsCvrd = new ArrayList<Object>(),
                negDyadsCvrd = new ArrayList<Object>(),
                confirmedNegsCvrd = new ArrayList<Object>();

        BaseCB_Cover() {
        }  //  Constructor for Serialization

        public BaseCB_Cover(Library.CB_EQC basePtr) {
            basePtrEQC = basePtr;
        }

        public void setScore() {
            posScore = posDyadsCvrd.size();
            negScore = negDyadsCvrd.size();
            score = Math.max(0, posScore - negScore - 2 * confirmedNegsCvrd.size());
        }
    }  //  end of inner class BaseCB_Cover

    public class DyadToken implements Serializable {

        Dyad myDy;
        ArrayList<Object> hitters = new ArrayList<Object>();

        DyadToken() {
        }  //  Constructor for Serialization

        public DyadToken(Dyad dy) {
            myDy = dy;
            dy.token = this;
        }
    }  //  end of inner class DyadToken
}	// end of class DomainTheory

