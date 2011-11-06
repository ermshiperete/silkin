
import java.util.*;
import javax.swing.JOptionPane;
import java.io.*;
import java.text.*;

/** 
A Learned_DT is just a special kind of DomainTheory -- one that is learned, like a ConstextUnderConstruction. 
It holds records of test results for Leave-One-Out testing.

@author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
 */
public class Learned_DT extends DomainTheory implements Serializable {

    static boolean doBaseCBs = false,
            doInduction = false,
            tempFlag = false;
    TreeMap learningHistory = new TreeMap(), //  (Integer)RoundNmbr => (Integer) SubRnd => ArrayList<Object> of things_learned (also ALists)
            rejectedDefs = new TreeMap(), //  (String)kinTerm => list of DT.ProposedDef's
            dataReqCounter = new TreeMap();
    Oracle wiseGuy = new Oracle();
    AuxPredRegistry auxPreds = new AuxPredRegistry();

    public Learned_DT(DomainTheory papa) {
        languageName = papa.languageName;
        ctxt = papa.ctxt;
        author = papa.author;
        createDate = UDate.today();  //  really holds the test date = today.
        nonTerms = papa.nonTerms;
        nonTermFlags = papa.nonTermFlags;
        polygamyOK = papa.polygamyOK;
        addressTerms = papa.addressTerms;
        levelsOfRecursion = papa.levelsOfRecursion;
        theory = new TreeMap(papa.theory);
        synonyms = papa.synonyms;
        if (synonyms == null) synonyms = new TreeMap();
        umbrellas = papa.umbrellas;
        if (umbrellas == null) umbrellas = new TreeMap();
        potUmbrellas = new TreeMap();
        nonSynonyms = papa.nonSynonyms;
        if (nonSynonyms == null) nonSynonyms = new ArrayList();        
        nonUmbrellas = papa.nonUmbrellas;
        if (nonUmbrellas == null) nonUmbrellas = new TreeMap();
        overlaps = papa.overlaps;        
        if (overlaps == null) overlaps = new TreeMap();
        nonOverlaps = papa.nonOverlaps;
        if (nonOverlaps == null) nonOverlaps = new TreeMap();
        if (!nonTerms.contains("no__term")) {
            nonTerms.add("no__term");
        }
        userDefinedProperties = papa.ctxt.userDefinedProperties;
        dyadsUndefined = (DyadTMap)papa.dyadsUndefined.clone();
        dyadsDefined = (DyadTMap)papa.dyadsDefined.clone();
        wiseGuy.synonyms = papa.synonyms;
        wiseGuy.umbrellas = papa.umbrellas;
        wiseGuy.overlaps = papa.overlaps;
        // Loop thru Context.LearningHistory. Post all rejected-prop-defs to rejectedDefs
        TreeMap<String, ArrayList<Context.HistoryItem>> history;
        history = (addressTerms ? ctxt.learningHistoryAdr : ctxt.learningHistoryRef);
        if (history != null) {
            Iterator hIter = history.entrySet().iterator();
            while (hIter.hasNext()) {
                Map.Entry<String, ArrayList<Context.HistoryItem>> entry = 
                        (Map.Entry<String, ArrayList<Context.HistoryItem>>)hIter.next();
                String kinTerm = entry.getKey();
                ArrayList<Context.HistoryItem> items = entry.getValue();
                for (Context.HistoryItem hi : items) {
                    if (hi instanceof Context.RejectedPropDefPtr && ! hi.rescinded) {
                        Context.RejectedPropDefPtr reject = (Context.RejectedPropDefPtr)hi;
                        ProposedDef propDef = new ProposedDef();
                        // Give this PropDef only enough data to create a match in DT.findKTMatches
                        propDef.ktd = new KinTermDef(reject.eqcProtoKinTerm);
                        propDef.ktd.domTh = new DomainTheory(reject.eqcProtoLangName);
                        if (rejectedDefs.get(kinTerm) == null) {
                            rejectedDefs.put(kinTerm, new ArrayList<Object>());
                        }
                        ((ArrayList<Object>)rejectedDefs.get(kinTerm)).add(propDef);
                    }  //  end of we-got-a-hit
                }  //  end of for-loop thru History Items
            }  //  end of iteration
        }
    }  //  end of principle constructor

    public boolean allDone(int minDyadsPerPCStr, DomainTheory sourceDT) {
        Iterator iter = sourceDT.theory.values().iterator();
        while (iter.hasNext()) {
            KinTermDef ktd = (KinTermDef) iter.next();
            if (printableTerm(ktd) && theory.get(ktd.kinTerm) == null) {
                return false;
            }
        }
        return true;
    }  //  end of method allDone

    public void learnKinTermLGG(String kinTerm, int maxNoise, int ignorable)
            throws KSInternalErrorException, KSParsingErrorException, KSBadHornClauseException, KSNoChainOfRelations2Alter,
            KSConstraintInconsistency, ClassNotFoundException, JavaSystemException, FileNotFoundException, IOException {
        if (kinTerm.equals("no__term")) {
            return;  //  Don't consider dyads that define 'out-of-bounds' for all kinTerms
        }
        if (theory.containsKey(kinTerm)) {
            return;  //  Don't consider already-defined terms -- wait until accepted def is rescinded.
        }
        Library.CB_Ptr.clearCache();
        Library.KTD_Ptr.clearCacheDTs();
        TreeMap pos = MainPane.treeMapDeepCopy((TreeMap) dyadsUndefined.get(kinTerm)),
                neg = makeNEG(kinTerm, pos);
        if (countLeaves(neg) < 12) {
            return;  //  there aren't enough terms to make negative examples.
        }
        ArrayList<Object> solution = new ArrayList<Object>(),
                pos2Cover = harvestLeaves(pos),
                negTokensCovered = new ArrayList<Object>(),
                anomalies = new ArrayList<Object>(),
                barriers = new ArrayList<Object>(),
                octuple = null;
        int maxMisses = (int) Math.floor(countLeaves(pos) * ignorable / 100d);
        System.out.println("Inducing " + kinTerm);
        KinTermDef composedKTD = new KinTermDef();
        composedKTD.kinTerm = kinTerm;
        composedKTD.domTh = this;
        composedKTD.composed = true;
        try {  //  if induction bombs out, just fail on this try.  Don't halt entire test.
            tempFlag = true;
            if (induceSolution(solution, pos, neg, pos2Cover, negTokensCovered, barriers, maxMisses, composedKTD)) {
                simplifyCBs(solution, composedKTD);
                octuple = tidyUpSolution(kinTerm, solution, composedKTD, pos2Cover, negTokensCovered, this);
                proposeDefinition(kinTerm, octuple);
            }
            tempFlag = false;
//  if (kinTerm.equals("ancestor")) Context.breakpoint();
            if (octuple == null && Library.errorCorrectionOn) {  //  EC is on.  Try to identify noise.
                maxMisses = (int) Math.floor(countLeaves(pos) * maxNoise / 100d);
                if (induceSolution(solution, pos, neg, pos2Cover, negTokensCovered, barriers, maxMisses, composedKTD)) {
                    octuple = tidyUpSolution(kinTerm, solution, composedKTD, pos2Cover, negTokensCovered, this);
                    Anomaly anomaly = makeAnomaly(kinTerm, octuple, ignorable, pos, neg);
                    if (anomaly != null) {
                        anomalies.add(anomaly);
                    }
                }
            }
        } catch (Exception exc) {
            String warning = "\n*********************************************************************";
            warning += "\n*\tWhile Inducing " + kinTerm + ", hit fatal error.";
            warning += "\n*\t" + exc;
            warning += "\n*\tOctuple = " + octuple + ".  solution = " + solution;
            warning += "\n*********************************************************************";
            System.out.println(warning);
        }
        if (anomalies.size() > 0) {
            postAnomaliesForUser(kinTerm, anomalies);  //  improve next round
        }
        if (Library.synUmbDetectOn) {
            detectSynonymsAndUmbrellas(kinTerm, pos, neg, maxNoise);
        }
        Context.current = ctxt;
    }  //  end of method learnKinTermLGG

    public void learnKinTerm(String kinTerm, int maxNoise, int ignorable, int maxConf, DomainTheory sourceDT)
            throws KSInternalErrorException, KSParsingErrorException, KSBadHornClauseException, KSNoChainOfRelations2Alter,
            KSConstraintInconsistency, ClassNotFoundException, JavaSystemException, FileNotFoundException, IOException {
        //	NOTE:  Before this method is called on a Context Under Construction, dt.resolveSynonymsInDyads MUST be called.
        if (kinTerm.equals("no__term")) {
            return;  //  Don't consider dyads that define 'out-of-bounds' for all kinTerms
        }
//        if (kinTerm.equals("uncle")) {
//            Context.breakpoint();
//        }
        if (theory.containsKey(kinTerm)) {
            return;  //  Don't consider already-defined terms -- wait until accepted def is rescinded.
        }
        if (Library.cbIndex == null) {
            BufferedReader file = new BufferedReader(new FileReader(Library.libraryDirectory + "ClauseIndex"));
            Library.cbIndex = new Library.ClauseIndex(file);
        }
        if (Library.baseCBIndex == null && doBaseCBs) {
            BufferedReader file = new BufferedReader(new FileReader(Library.libraryDirectory + "BaseCBIndex"));
            Library.baseCBIndex = new Library.ClauseIndex(file);
        }
        if (Library.cbCounts == null) {
            Library.ClauseCounts.loadFromDisk();
        }
        Library.CB_Ptr.clearCache();
        Library.KTD_Ptr.clearCacheDTs();
        ArrayList<Object> solidCBMatches = new ArrayList<Object>(), potFalseNeg = new ArrayList<Object>(), potFalsePos = new ArrayList<Object>(),
                solidKTMatches = new ArrayList<Object>(), anomalies = new ArrayList<Object>(), noisyKTMatches = new ArrayList<Object>();
        //	POS & NEG = the positive and negative examples of this kinship concept
        TreeMap pos = MainPane.treeMapDeepCopy((TreeMap) dyadsUndefined.get(kinTerm)),
                neg = makeNEG(kinTerm, pos);
        if (countLeaves(neg) < 12) {
            String msg = "SILKin aborted learning " + kinTerm + " because there are\n";
            msg += "not enough negative examples (dyads for OTHER kin terms).";
            JOptionPane.showMessageDialog(null, msg,
                "SILKin learning module failure", JOptionPane.ERROR_MESSAGE);
            MainPane.activity.log.append(msg);
            return;  //  there aren't enough terms to make negative examples.
        }
        Library.ClauseIndex cbEQCs = Library.cbIndex;
        Counter maxDist = new Counter();
        TreeMap candidates = findCandidates(cbEQCs, pos, Library.cbCounts, sourceDT, maxDist);  //  candidates is exactStr -> List of CB_EQCs
        evalCandidates(candidates, solidCBMatches, potFalseNeg, potFalsePos, pos, neg, maxNoise);
        findKTMatches(kinTerm, solidCBMatches, potFalseNeg, potFalsePos, pos, neg, maxNoise, ignorable,
                solidKTMatches, noisyKTMatches, anomalies, rejectedDefs);
        if (solidKTMatches.size() > 0) {
            dataSelection(kinTerm, solidKTMatches, pos, neg, dataReqCounter);  //  best result
        } else {  //  if we have a solid match, then anomalies & noise may not be real.  Else, both are.
            if (noisyKTMatches.size() > 0) {
                dataSelection(kinTerm, noisyKTMatches, pos, neg, dataReqCounter);  //  2nd best
            } else if (doBaseCBs) {  //  try to compose a KTD from BaseCBs
                ArrayList<Object> baseCB_Matches = findBaseCBMatches(kinTerm, solidCBMatches, potFalseNeg, pos, neg, anomalies,
                        ignorable, maxConf, maxDist, sourceDT, doInduction, this);
                if (baseCB_Matches != null) {
                    proposeDefinition(kinTerm, baseCB_Matches);  //  3rd best
                } else if (Library.errorCorrectionOn) {
                    baseCB_Matches = findBaseCBMatches(kinTerm, solidCBMatches, potFalseNeg, pos, neg, anomalies,
                            maxNoise, ignorable, maxDist, sourceDT, doInduction, this);
                    if (baseCB_Matches != null) {
                        Anomaly anomaly = makeAnomaly(kinTerm, baseCB_Matches, ignorable, pos, neg);
                        if (anomaly != null) {
                            anomalies.add(anomaly);						//  4th best
                        }
                    }
                }
            }  //  end of doBaseCBs
            if (anomalies.size() > 0) {
                postAnomaliesForUser(kinTerm, anomalies);  //  improve next round
            }
        }
        detectSynonymsAndUmbrellas(kinTerm, pos, neg, maxNoise);  //  always
        Context.current = ctxt;
    }  //  end of method learnKinTerm

    public void processSuggestions(int round, int subRound, DomainTheory sourceDT, int maxNoise,
            int ignorable, int minDyadsPerPCStr)
            throws KSBadHornClauseException, KSInternalErrorException, KSConstraintInconsistency, ClassNotFoundException, KinshipSystemException,
            KSParsingErrorException, JavaSystemException, KSInternalErrorException, FileNotFoundException, IOException {
        //  issuesForUser = a TreeMap: kinTerm => List of Issues
        //	1.	If any Issues are generated:
        //		a.	Test suggested definitions against the real answer.  Accept if 100% right.  If the proposed def is
        //			a sub-set of the right answer, generate NUMBER_OF_EGOS dyads from outside the subset.  If accepted, post records to
        //			the Learned_DT showing the number of dyads used, amount of noise, round#, etc.
        //		b.	Challenged dyads will be corrected if the Oracle's records show them to be noise.  Else, they're validated.
        //		c.	Proposals of synonyms and umbrellas will be evaluated piece-wise:  e.g. if "grandparent" is proposed as an
        //			umbrella term encompassing "grandfather" and "granxfathar" confirm the relationship for
        //			"grandfather" but correct the dyads which led to the incorrect suggestion that "granxfathar" is a valid
        //			kinTerm.  (Assumption: User will recognize a bogus dyad when it is highlighted in any context.)  In other words,
        //			give partial credit for proposing partly-correct relationships.
        //		d.	Data Requests will trigger creation of a single validated dyad for the kin type requested.  It will provide
        //			the correct kinTerm if one exists.  Otherwise it will assign the special kinTerm "no__term" to indicate that
        //			the target language does not have any term for that kin type.
        //	2.	If any Issues were generated besides Data Requests, launch a sub-round with just the responses to these
        //		suggestions (no new interview dyads).  i.e. go back to Step 1 with just the dyads generated by the suggestions.
        boolean anotherRound = false, result;
        String roundLearned = "" + round + "." + subRound;
        Iterator issuIter = issuesForUser.entrySet().iterator();
        ArrayList<Object> lrndCompDefs = new ArrayList<Object>();
        while (issuIter.hasNext()) {
            Map.Entry entry = (Map.Entry) issuIter.next();
            String kinTerm = (String) entry.getKey();
            ArrayList<Object> issueList = (ArrayList<Object>) entry.getValue();
//    if (kinTerm.equals("aiya")) Context.breakpoint();			
            while (issueList.size() > 0) {
                Issue issue = (Issue) issueList.remove(0);
                issue.removeChallengedDyads();
                //  2 next lines caused umbrella for single-kintype to be missed.  7/5/07
                //  SynonymCandidate syn = swapSingleUmbrella(issue);
                //  if (syn != null) issue = syn;
                if (issue.stillViable) {
                    if (issue instanceof ProposedDef) {
                        ProposedDef propDef = (ProposedDef) issue;
                        KinTermDef realDef = (KinTermDef) sourceDT.theory.get(kinTerm);
                        if (propDef.sameAs(realDef)) {  //  BINGO
                            theory.put(kinTerm, realDef);
                            clearAllButDiscriminators(issueList);  //  All others are unnecessary now.
                            //  validateNewDyads checks for noise, moves dyads to DyadsDefined, & returns any Anomalies
                            ArrayList<Object> validationIssues = validateNewDyads(kinTerm, 100);
                            issueList.addAll(validationIssues);
                            ArrayList<Object> lrnRec = new ArrayList<Object>();
                            lrnRec.add("Def: " + kinTerm + " = ");
                            lrnRec.add(propDef.ktd.domTh.languageName + ":" + propDef.ktd.kinTerm);
                            postLrnHist(roundLearned, lrnRec);
                            ctxt.featuresHaveChanged = true;
                            anotherRound = true;
                        } else if (realDef == null) {  //  this 'kinTerm' is just noise
                            if (Library.errorCorrectionOn) {
                                TreeMap bogusPOS = (TreeMap) dyadsUndefined.get(kinTerm);
                                Iterator bogusIter = bogusPOS.values().iterator();
                                while (bogusIter.hasNext()) {
                                    ArrayList<Object> badDys = (ArrayList<Object>) bogusIter.next();
                                    for (int i = 0; i < badDys.size(); i++) {  //  scan for noise dyads
                                        Dyad badDy = (Dyad) badDys.get(i),
                                                goodDy = wiseGuy.correction(badDy, this, sourceDT, roundLearned);
                                        if (goodDy == null) {
                                            throw new KSInternalErrorException("A dyad for a 'noise-term' was not corrected.");
                                        }
                                    }  //  end of loop thru badDys
                                }  //  end of loop thru kinTypes of this noise term
                            }
                            issueList.clear();  //  case closed.
                        } else {
                            ArrayList<Object> egoBag = ctxt.getPair();  //  1 male + 1 female ego
                            propDef.refute(egoBag, sourceDT, this);  // makes dyads to refute
                            System.out.println("\n\n**** REJECTED " + propDef);
                            ArrayList<Object> lrnRec = new ArrayList<Object>();
                            lrnRec.add("Data Request - Refutation for : " + kinTerm + ".  Up to ");
                            lrnRec.add(MainPane.NUMBER_OF_EGOS);
                            lrnRec.add(" dyads.");
                            postLrnHist(roundLearned, lrnRec);
                            if (rejectedDefs.get(kinTerm) == null) {
                                rejectedDefs.put(kinTerm, new ArrayList<Object>());
                            }
                            ArrayList<Object> rejects = (ArrayList<Object>) rejectedDefs.get(kinTerm);
                            rejects.add(propDef);
                            anotherRound = true;
                        }
                    } else if (issue instanceof ComposedDef) {
                        ComposedDef compDef = (ComposedDef) issue;
                        KinTermDef realDef = (KinTermDef) sourceDT.theory.get(kinTerm);
                        if (realDef != null && compDef.sameAs(realDef, ignorable, this, sourceDT, roundLearned)) {  //  BINGO
                            makeCompDefDiscriminators(compDef, realDef, issueList);
                            clearAllButDiscriminators(issueList);  //  All others are unnecessary now.
                            acceptCompDef(compDef);
                            String defType = (compDef.languagesUsed.contains("LGG_Induction") ? "CompDef-Induced: " : "CompDef-Pure: ");
                            ArrayList<Object> lrnRec = new ArrayList<Object>();
                            lrnRec.add(defType + kinTerm);
                            int numCBs = compDef.cbsUsed.size(),
                                    numLangs = compDef.languagesUsed.size();
                            String pl1 = (numCBs > 1 ? "s" : ""),
                                    pl2 = (numLangs > 1 ? "s" : "");
                            lrnRec.add(" = " + numCBs + " clause" + pl1 + " from " + numLangs + " language" + pl2);
                            postLrnHist(roundLearned, lrnRec);
                            lrndCompDefs.add(compDef);
                            ctxt.featuresHaveChanged = true;
                            anotherRound = true;
                        }
                    } else if (issue instanceof Anomaly) {
                        result = ((Anomaly) issue).correctOrValidate(this, sourceDT, roundLearned, ignorable);
                        if (result) {
                            anotherRound = true;
                        }
                    } else if (issue instanceof DataRequest) {
                        DataRequest disc = (DataRequest) issue;
                        int num = Math.min(3, disc.relatedCB_Ptrs.size());
                        num *= MainPane.NUMBER_OF_EGOS;
                        disc.buildDiscrimDyads(this, sourceDT);
                        ArrayList<Object> lrnRec = new ArrayList<Object>();
                        lrnRec.add("Data Request - Discriminators for : " + kinTerm + ".  Up to ");
                        lrnRec.add(num);
                        lrnRec.add(" dyads.");
                        anotherRound = true;
                        postLrnHist(roundLearned, lrnRec);
                    } else if (issue instanceof SynonymCandidate) {
                        result = ((SynonymCandidate) issue).correctOrValidate(this, sourceDT, roundLearned);
                        if (result) {
                            anotherRound = true;
                        }
                    } else if (issue instanceof OverlapCandidate) {
                        result = ((OverlapCandidate) issue).correctOrValidate(this, sourceDT, roundLearned);
                        if (result) {
                            anotherRound = true;
                        }
                    } else if (issue instanceof UmbrellaCandidate) {
                        result = (((UmbrellaCandidate) issue).correctOrValidate(this, sourceDT, roundLearned));
                        if (result) {
                            anotherRound = true;
                        }
                    }  //  end of brilliant processing of issues
                }  //  end of still-viable
            }  //  end of while-issueList.size() > 0
            issuIter.remove();
        }  //  end of issue-iterator
        validateSynonymsAndUmbrellas();

        if (lrndCompDefs.size() > 0) {
            System.out.println("\n\t\t********  Composed Definitions  *********");
        }
        for (int i = 0; i < lrndCompDefs.size(); i++) {
            ComposedDef compDef = (ComposedDef) lrndCompDefs.get(i);

            if (!theory.containsKey(compDef.ktd.kinTerm)) {
                Context.breakpoint();
            }

            System.out.println(compDef.ktd.eqcSigExact);
            System.out.println(compDef.toString() + "\nBase Clauses:");
            for (int j = 0; j < compDef.ktd.definitions.size(); j++) {
                System.out.println(((ClauseBody) compDef.ktd.definitions.get(j)).toThyString());
            }
            if (compDef.auxiliaries.size() > 0) {
                System.out.println("\nAuxiliaries:");
            }
            for (int j = 0; j < compDef.auxiliaries.size(); j++) {
                System.out.println(((KinTermDef) compDef.auxiliaries.get(j)).toString(3));
            }
            System.out.println("\n");
        }  //  end of loop thru compDefs

        if (anotherRound) {
            int subRdNext = subRound + 1;
            if (subRdNext >= 12) {
                return;
            }
            System.out.println("*** Round " + round + "." + subRdNext);
            int maxConf = (subRdNext < 5 ? 99 : MainPane.NUMBER_OF_EGOS);
            MainPane.topPane.doLv1ActiveLearning(this, maxNoise, ignorable, maxConf, minDyadsPerPCStr, sourceDT);
            printSuggestions("" + round + "." + subRdNext);
            processSuggestions(round, subRdNext, sourceDT, maxNoise, ignorable, minDyadsPerPCStr);
        }

    }  //  end of method processSuggestions

    public void clearAllButDiscriminators(ArrayList<Object> issueList) {
        //  Remove all issues except Discriminators (right after accepting a definition)
        Iterator iter = issueList.iterator();
        while (iter.hasNext()) {
            Issue issue = (Issue) iter.next();
            if (!(issue instanceof DataRequest)) {
                iter.remove();
            }
        }
    }  //  end of method clearAllButDiscriminators

    public void makeCompDefDiscriminators(ComposedDef compDef, KinTermDef realDef, 
            ArrayList<Object> issueList) throws KSInternalErrorException, JavaSystemException {
        //  A composed Def may cover more kinTypes than have been seen yet -- or more than necessary.
        //  Build Discriminators for up to 3 'nearby' kinTypes not yet seen that are within the approximate
        //  string distance found on covered dyads seen so far.
        //  If the realDef covers some KTs that the CompDef doesn't, build Discriminators for up to 6 of those
        //  if they are no longer than Library.maxExpansionStringDist.
// if (compDef.kinTerm.equals("mavsa")) Context.breakpoint();
        TreeMap dyUndefTM = (TreeMap) dyadsUndefined.get(compDef.ktd.kinTerm);  //  PC_Str => ArrayList<Object> of dyads
        ArrayList<Object> seenSoFar = new ArrayList<Object>(dyUndefTM.keySet()),
                questions = new ArrayList<Object>();
        ArrayList<Library.CB_Ptr> cbPtrs = new ArrayList<Library.CB_Ptr>();
        for (int i = 0; i < compDef.negsCovered.size(); i++) {
            String kType = (String) ((Dyad) compDef.negsCovered.get(i)).kinTerm;
            if (!seenSoFar.contains(kType)) {
                seenSoFar.add(kType);
            }
        }
        int longestSeen = 0;
        for (int i = 0; i < seenSoFar.size(); i++) {
            String kType = (String) seenSoFar.get(i);
            if (kType.length() > longestSeen) {
                longestSeen = kType.length();
            }
        }
        //  Look for KTs covered by CompDef's CBs but not yet seen
        TreeMap proposedCoverageSorter = new TreeMap();	//	length => ArrayList<Object> of CBs
        for (int i = 0; i < compDef.origXCBs.size(); i++) {
            ClauseBody expCB = (ClauseBody) compDef.origXCBs.get(i);
            if (!seenSoFar.contains(expCB.pcString)
                    && expCB.pcString.length() <= longestSeen + 2) {
                Integer len = new Integer(expCB.pcString.length());
                if (proposedCoverageSorter.get(len) == null) {
                    proposedCoverageSorter.put(len, new ArrayList<Object>());
                }
                ArrayList<Object> lst = (ArrayList<Object>) proposedCoverageSorter.get(len);
                lst.add(expCB);
            }  //  found a kin type not yet seen about same length as those seen
        }  //  end of loop thru original Expanded Defs
        if (proposedCoverageSorter.size() > 0) {
            Iterator iter = proposedCoverageSorter.values().iterator();
            int count = 0;
            while (iter.hasNext() && count < 3) {
                ArrayList<Object> lst = (ArrayList<Object>) iter.next();
                for (int i = 0; i < lst.size() && count < 3; i++) {
                    //  Require that discriminator dyads are within Library.maxExpansionStringDist
                    ClauseBody disCB = (ClauseBody) lst.get(i);
                    int stringDist = Math.min(Math.max((disCB.pcString.length() / 2) - 1, 0), Library.ClauseCounts.maxDist);
                    if (stringDist < Library.maxExpansionStringDist && disCB.level < Library.maxLevelForExpansion) {
                        count++;
                        cbPtrs.add(new Library.CB_Ptr(disCB));
                    }
                }
            }  //  end of loop thru proposedCoverageSorter.values
        }  //  end of proposedCoverageSorter.size > 0
        //  Look for KTs covered by actual def'n but not covered by the CompDef.  I.E. answer the
        //  standard confirmation question:
        //  "Are there any other people called by this kinTerm that do not fit this definition?"
        TreeMap actualCoverageSorter = new TreeMap();	//	length => ArrayList<Object> of CBs
        for (int i = 0; i < realDef.expandedDefs.size(); i++) {
            ClauseBody expCB = (ClauseBody) realDef.expandedDefs.get(i);
            String kinType = expCB.pcString;
            Integer len = new Integer(kinType.length());
            ArrayList<Object> propCovers = (ArrayList<Object>) proposedCoverageSorter.get(len);
            if (!seenSoFar.contains(expCB.pcString)
                    && (propCovers == null || !propCovers.contains(kinType))) {
                if (actualCoverageSorter.get(len) == null) {
                    actualCoverageSorter.put(len, new ArrayList<Object>());
                }
                ArrayList<Object> lst = (ArrayList<Object>) actualCoverageSorter.get(len);
                lst.add(expCB);
            }  //  found a kin type not covered by proposed definition
        }  //  end of loop thru realDef's Expanded Defs
        if (actualCoverageSorter.size() > 0) {
            Iterator iter = actualCoverageSorter.values().iterator();
            int count = 0;
            while (iter.hasNext() && count < 6) {
                ArrayList<Object> lst = (ArrayList<Object>) iter.next();
                for (int i = 0; i < lst.size() && count < 6; i++) {
                    ClauseBody disCB = (ClauseBody) lst.get(i);
                    int stringDist = Math.min(Math.max((disCB.pcString.length() / 2) - 1, 0), Library.ClauseCounts.maxDist);
                    if (stringDist < Library.maxExpansionStringDist && disCB.level < Library.maxLevelForExpansion) {
                        count++;
                        cbPtrs.add(new Library.CB_Ptr(disCB));
                    }
                }
            }  //  end of loop thru actualCoverageSorter.values
        }  //  end of actualCoverageSorter.size > 0
        if (cbPtrs.size() > 0) {
            questions.add("These kin types, not yet seen in your data, may or may not belong in this definition. "
                    + "Please gather some data about these.");
            DataRequest disc = new DataRequest(compDef.kinTerm, questions, cbPtrs);
            issueList.add(disc);
        }
    }  // end of method makeCompDefDiscriminators

    public void acceptCompDef(ComposedDef compDef) throws KSParsingErrorException, ClassNotFoundException,
            KSInternalErrorException, KSConstraintInconsistency, KSBadHornClauseException {
        if (compDef.auxiliaries.size() > 0) {
            if (!nonTermFlags.contains("aux")) {
                nonTermFlags.add("aux");
            }
            if (!nonTermFlags.contains("temp_aux")) {
                nonTermFlags.add("temp_aux");
            }
        }
        String kinTerm = compDef.ktd.kinTerm;
        Counter cntr = new Counter();
        //  We previously posted aux's (under "temp_aux" names) to theory for expansion purposes
        Iterator iter = compDef.auxiliaries.iterator();
        while (iter.hasNext()) {
            KinTermDef auxKTD = (KinTermDef) iter.next();
            theory.remove(auxKTD.kinTerm);
        }
        //  There could be some auxes left over from prior attempts
        iter = theory.keySet().iterator();
        while (iter.hasNext()) {
            String predName = (String) iter.next();
            if (predName.indexOf(kinTerm + "<aux>") > -1 || predName.indexOf(kinTerm + "<temp_aux>") > -1) {
                iter.remove();
            }
        }
        simplifyAuxs(compDef.ktd, compDef.auxiliaries);
        renameAuxPreds(compDef.auxiliaries, compDef.ktd, kinTerm, "aux", cntr);
        compDef.ktd.simplifyClauses();
        TreeMap unDefTM = (TreeMap) dyadsUndefined.remove(compDef.ktd.kinTerm);  //  PC_Str => ArrayList<Object> of dyads
        if (dyadsDefined == null) {
            dyadsDefined = new DyadTMap();
        }
        dyadsDefined.put(compDef.ktd.kinTerm, unDefTM);
        //  Unify Variables on all these freshly-minted definitions
        for (int i = 0; i < compDef.ktd.expandedDefs.size(); i++) {
            ((ClauseBody) compDef.ktd.expandedDefs.get(i)).unifyVariables();
        }
        for (int i = 0; i < compDef.auxiliaries.size(); i++) {
            KinTermDef auxKTD = (KinTermDef) compDef.auxiliaries.get(i);
            for (int j = 0; j < auxKTD.expandedDefs.size(); j++) {
                ((ClauseBody) auxKTD.expandedDefs.get(j)).unifyVariables();
            }  //  end of loop thru expanded Defs
        }  //  end of loop theu auxiliary KTDs
        if (theory.containsKey(compDef.ktd.kinTerm)) {
            Context.breakpoint();
        }
        addTerm(compDef.ktd);
        compDef.ktd.composed = true;
    }  //  end of method  acceptCompDef

    public void renameAuxPreds(ArrayList<Object> auxiliaries, KinTermDef compKTD, String kinTerm, String tag, Counter cntr)
            throws KSParsingErrorException, ClassNotFoundException, KSInternalErrorException,
            KSConstraintInconsistency, KSBadHornClauseException {
        if (auxiliaries.isEmpty()) {
            return;
        }
        String[] oldNames = new String[auxiliaries.size()],
                newNames = new String[auxiliaries.size()];
        int colon, auxNmbr = 0;
        Iterator iter = auxiliaries.iterator();
        while (iter.hasNext()) {
            KinTermDef aux = (KinTermDef) iter.next();
            String oldPredName = (String) ((ClauseBody) aux.expandedDefs.get(0)).expansionPath.get(0);
            colon = oldPredName.indexOf(":");
            oldPredName = oldPredName.substring(0, colon);
            oldNames[auxNmbr] = oldPredName;
            //  Temporarily stop checking for duplication of auxiliaries.  Let each CompDef have its
            //  own complete set.
            //		String existingAuxName = auxPreds.newNameOf(aux);
            //		if (existingAuxName != null) {
            //			iter.remove();  //  duplicates an existing auxiliary
            //			newNames[auxNmbr] = existingAuxName;
            //		}else {
            cntr.incr();  //  cntr = serial number of this auxiliary
            aux.kinTerm = kinTerm + "[" + tag + "]" + (cntr.total());
            newNames[auxNmbr] = aux.kinTerm;
            Predicate headPred = new Predicate(aux.kinTerm);
            headPred.category = new CulturalCategory();
            aux.clauseHead = new Literal(headPred, new Variable("Alter"), new Variable("Ego"));
            if (aux.flags == null) {
                aux.flags = new ArrayList<Object>();
            }
            if (!aux.flags.contains(tag)) {
                aux.flags.add(tag);
            }
            addTerm(aux);
            //			}  //  end of else-not-duplicate
            auxNmbr++;
        }
        for (int i = 0; i < auxNmbr; i++) {
            auxPreds.addAux(kinTerm, oldNames[i], newNames[i]);
        }
        for (int i = 0; i < compKTD.definitions.size(); i++) {
            ClauseBody bcb = (ClauseBody) compKTD.definitions.get(i);
            for (int j = 0; j < bcb.body.size(); j++) {
                Literal lit = (Literal) bcb.body.get(j);
                for (int k = 0; k < auxNmbr; k++) {
                    if (lit.predicate.name.equals(oldNames[k])) {
                        lit.predicate.name = newNames[k];
                        k = oldNames.length;  //  end the loop
                    }
                }
            }  //  end of loop thru literals in base clause
        }  //  end of loop thru base clauses
        for (int i = 0; i < compKTD.expandedDefs.size(); i++) {
            ClauseBody xcb = (ClauseBody) compKTD.expandedDefs.get(i);
            for (int j = 0; j < xcb.expansionPath.size(); j++) {
                String expansion = (String) xcb.expansionPath.get(j);
                colon = expansion.indexOf(":");
                if (expansion.length() > 5 && expansion.substring(0, 4).equals("(not")) {
                    Context.breakpoint();
                }
                if (colon > 0) {
                    for (int k = 0; k < auxNmbr; k++) {
                        if (expansion.substring(0, colon).equals(oldNames[k])) {
                            xcb.expansionPath.set(j, newNames[k] + expansion.substring(colon));
                            k = auxNmbr;
                        }
                    }
                }
            }    //  end of loop thru expansionPath
        }  //  end of loop thru Expanded Def clauses
        for (int i = 0; i < auxiliaries.size(); i++) {
            KinTermDef aux = (KinTermDef) auxiliaries.get(i);
            for (int j = 0; j < aux.expandedDefs.size(); j++) {
                ClauseBody cb = (ClauseBody) aux.expandedDefs.get(j);
                for (int k = 0; k < cb.expansionPath.size(); k++) {
                    String expansion = (String) cb.expansionPath.get(k);
                    colon = expansion.indexOf(":");
                    for (int nam = 0; nam < auxNmbr; nam++) {
                        if (expansion.substring(0, colon).equals(oldNames[nam])) {
                            cb.expansionPath.set(k, newNames[nam] + expansion.substring(colon));
                            nam = auxNmbr;
                        }
                    }  //  end of loop thru old & new names
                }  //  end of loop thru expansionPath
            }  //  end of loop thru expandedDefs
            for (int auxBCB = 0; auxBCB < aux.definitions.size(); auxBCB++) {
                ClauseBody bcb = (ClauseBody) aux.definitions.get(auxBCB);
                for (int j = 0; j < bcb.body.size(); j++) {
                    Literal lit = (Literal) bcb.body.get(j);
                    for (int k = 0; k < auxNmbr; k++) {
                        if (lit.predicate.name.equals(oldNames[k])) {
                            lit.predicate.name = newNames[k];
                            k = auxNmbr;  //  end the loop
                        }
                    }
                }  //  end of loop thru literals in base clause
            }  //  end of loop thru aux's base clauses
        }  //  end of auxiliary processing
    }  //  end of method renameAuxPreds
    

    public void retractDef(String kinTerm) {
        //  Retract this proposed definition; it has been disproved.
        //  Remove it & all its auxilliaries from this LearnedDT
        theory.remove(kinTerm);
        Iterator iter = theory.keySet().iterator();
        while (iter.hasNext()) {
            String kTerm = (String) iter.next();
            if (kTerm.indexOf(kinTerm + "<aux>") > -1) {
                iter.remove();
            }
        }
        TreeMap oldDefDyads = (TreeMap) dyadsDefined.remove(kinTerm),
                oldUnDefDyads = (TreeMap) dyadsUndefined.remove(kinTerm);
        dyadsUndefined.put(kinTerm, mergeTrees(oldDefDyads, oldUnDefDyads));
        auxPreds.retract(kinTerm);
    }  //  end of method retractDef

    public void printSuggestions(String rnd) throws KSParsingErrorException, JavaSystemException,
            KSInternalErrorException, KSConstraintInconsistency {
        Iterator issuIter = issuesForUser.entrySet().iterator();
        if (issuIter.hasNext()) {
            System.out.println("\n\n*** ISSUES IDENTIFIED in Round " + rnd + " ***");
        }
        while (issuIter.hasNext()) {
            Map.Entry entry = (Map.Entry) issuIter.next();
            ArrayList<Object> issueList = (ArrayList<Object>) entry.getValue();
            for (int i = 0; i < issueList.size(); i++) {
                Issue issue = (Issue) issueList.get(i);
                if (issue.stillViable) {
                    issue.presentToUser();
                }
            }
        }
    }  //  end of method printSuggestions

    public int postNoiseCounts(int roundNmbr, int oldTotal) {
        int cumTotalNoise = countLeaves(wiseGuy.noiseFacts);
        ArrayList<Object> noiseRec = new ArrayList<Object>();
        noiseRec.add("Noise created: ");
        noiseRec.add(new Integer(cumTotalNoise - oldTotal));
        noiseRec.add(" dyads.");
        postLrnHist("" + roundNmbr + ".0", noiseRec);
        return cumTotalNoise;
    }  //  end of method postNoiseCounts

    public void postLrnHist(String roundLearned, Object learningRecord) {
        ArrayList<Object> pair = parseRound(roundLearned);  //  { Rnd, SubRnd }
        Integer rnd = (Integer) pair.get(0),
                sub = (Integer) pair.get(1);
        if (learningHistory.get(rnd) == null) {
            learningHistory.put(rnd, new TreeMap());
        }
        TreeMap rndTree = (TreeMap) learningHistory.get(rnd);
        if (rndTree.get(sub) == null) {
            rndTree.put(sub, new ArrayList<Object>());
        }
        ArrayList<Object> thisRound = (ArrayList<Object>) rndTree.get(sub);
        thisRound.add(learningRecord);
    }  //  end of method postLrnHist

    ArrayList<Object> parseRound(String round) {
        int dot = round.indexOf("."),
                rnd = (dot > -1 ? Integer.parseInt(round.substring(0, dot)) : Integer.parseInt(round)),
                subRnd = (dot > -1 ? Integer.parseInt(round.substring(dot + 1)) : 0);
        ArrayList<Object> pair = new ArrayList<Object>();
        pair.add(new Integer(rnd));
        pair.add(new Integer(subRnd));
        return pair;
    }  //  end of method parseRound

    public void printLearningHistory(String round) {
        ArrayList<Object> pair = parseRound(round);  //  { Rnd, SubRnd }
        Integer rnd = (Integer) pair.get(0),
                sub = (Integer) pair.get(1);
        if (learningHistory.get(rnd) == null) {
            return;
        }
        TreeMap rndTree = (TreeMap) learningHistory.get(rnd);
        if (rndTree.get(sub) == null) {
            return;
        }
        ArrayList<Object> thisRound = (ArrayList<Object>) rndTree.get(sub);
        System.out.println("\t\t*** Learned In Round " + round);
        for (int i = 0; i < thisRound.size(); i++) {
            System.out.println("\t\t\t" + thisRound.get(i));
        }
        System.out.println("\t\t# # #");
    }  //  end of method printLearningHistory

    public void writeTestResults(PrintWriter outFile, PrintWriter tabFile, DomainTheory sourceDT)
            throws KSInternalErrorException {
        if (learningHistory.isEmpty()) {
            return;
        }
        int size = 0,
                line = -1;
        Iterator branchIter = learningHistory.values().iterator();
        while (branchIter.hasNext()) {
            TreeMap branch = (TreeMap) branchIter.next();
            size += branch.size();
        }
        String[] rndNmbr = new String[size];
        int[] defCnt = new int[size + 1], //  last cell holds totals
                compDefIndCnt = new int[size + 1],
                compDefPurCnt = new int[size + 1],
                noiseCnt = new int[size + 1],
                falseNoiseCnt = new int[size + 1],
                noiseCreate = new int[size + 1],
                synCnt = new int[size + 1],
                umbCnt = new int[size + 1],
                olapCnt = new int[size + 1],
                dyadCnt = new int[size + 1],
                dataReqs = new int[size + 1];
        for (int i = 0; i < size + 1; i++) {
            defCnt[i] = 0;
            compDefIndCnt[i] = 0;
            compDefPurCnt[i] = 0;
            noiseCnt[i] = 0;
            falseNoiseCnt[i] = 0;
            noiseCreate[i] = 0;
            synCnt[i] = 0;
            umbCnt[i] = 0;
            olapCnt[i] = 0;
            dyadCnt[i] = 0;
            dataReqs[i] = 0;
        }  //  end of array initialization
        Iterator rndIter = learningHistory.entrySet().iterator();
        String langName = languageName.substring(0, languageName.lastIndexOf("-test"));
        outFile.println("\nFor language " + langName);
        while (rndIter.hasNext()) {
            Map.Entry entry1 = (Map.Entry) rndIter.next();
            Integer rndInteger = (Integer) entry1.getKey();
            String mainRound = rndInteger.toString();
            TreeMap rndTree = (TreeMap) entry1.getValue();
            Iterator subIter = rndTree.entrySet().iterator();
            while (subIter.hasNext()) {
                Map.Entry entry2 = (Map.Entry) subIter.next();
                Integer subRndInteger = (Integer) entry2.getKey();
                String round = mainRound + "." + subRndInteger;
                rndNmbr[++line] = round;
                ArrayList<Object> lessons = (ArrayList<Object>) entry2.getValue();
                outFile.println("Round " + round + ":");
                for (int i = 0; i < lessons.size(); i++) {
                    ArrayList<Object> lesson = (ArrayList<Object>) lessons.get(i);
                    outFile.print("\t");
                    for (int j = 0; j < lesson.size(); j++) {
                        outFile.print(lesson.get(j));
                    }
                    outFile.println();
                    String leader = (String) lesson.get(0);
                    if (leader.indexOf("CompDef-Induced: ") > -1) {
                        compDefIndCnt[line]++;
                    } else if (leader.indexOf("CompDef-Pure: ") > -1) {
                        compDefPurCnt[line]++;
                    } else if (leader.indexOf("Repudiated ") > -1) {
                        int typ = typeDefRepudiated(leader, rndInteger, subRndInteger);
                        if (typ == 0) {
                            compDefIndCnt[line]--;
                        } else if (typ == 1) {
                            compDefPurCnt[line]--;
                        } else {
                            defCnt[line]--;
                        }
                    } else if (leader.indexOf("Def: ") > -1) {
                        defCnt[line]++;
                    } else if (leader.indexOf("noise correction: ") > -1) {
                        noiseCnt[line]++;
                    } else if (leader.indexOf("false noise check:") > -1) {
                        falseNoiseCnt[line]++;
                    } else if (leader.indexOf("Noise created: ") > -1) {
                        noiseCreate[line] += ((Integer) lesson.get(1)).intValue();
                    } else if (leader.indexOf("Data Request") > -1) {
                        dataReqs[line]++;
                    } else if (leader.indexOf("synonym: ") > -1) {
                        synCnt[line]++;
                    } else if (leader.indexOf("umbrella: ") > -1) {
                        umbCnt[line]++;
                    } else if (leader.indexOf("overlapping terms:") > -1) {
                        olapCnt[line]++;
                    } else if (leader.indexOf("Total Dyads thru Round ") > -1) {
                        dyadCnt[line] = ((Integer) lesson.get(3)).intValue();
                    }
                }  //  end of loop thru lessons learned
                outFile.println();
            }  //  end of loop thru sub-rounds
        }  //  end of loop thru rounds
        outFile.flush();
        outFile.close();
        tabFile.println("Language\tRound\tNoise Made\tNoise Fixed\tFalse Noise\tDefs Lrnd"
                + "\tCompDef-I Lrnd\tCompDef-P Lrnd\tSyns Lrnd\tUmbs Lrnd\toLaps Lrnd\tDyad Reqs\tDyad Total");
        String roundNmbr = "" + rndNmbr[0];
        if (roundNmbr.indexOf(".") == -1) {
            roundNmbr += ".0";
        }
        tabFile.println(langName + "\t" + roundNmbr + "\t"
                + (noiseCreate[0] == 0 ? " " : noiseCreate[0]) + "\t"
                + (noiseCnt[0] == 0 ? " " : noiseCnt[0]) + "\t"
                + (falseNoiseCnt[0] == 0 ? "" : falseNoiseCnt[0]) + "\t"
                + (defCnt[0] == 0 ? " " : defCnt[0]) + "\t"
                + (compDefIndCnt[0] == 0 ? " " : compDefIndCnt[0]) + "\t"
                + (compDefPurCnt[0] == 0 ? " " : compDefPurCnt[0]) + "\t"
                + (synCnt[0] == 0 ? " " : synCnt[0]) + "\t"
                + (umbCnt[0] == 0 ? " " : umbCnt[0]) + "\t"
                + (olapCnt[0] == 0 ? " " : olapCnt[0]) + "\t"
                + (dataReqs[0] == 0 ? " " : dataReqs[0]) + "\t"
                + (dyadCnt[0] == 0 ? " " : dyadCnt[0]));
        for (int i = 1; i < size; i++) {
            roundNmbr = "" + rndNmbr[i];
            if (roundNmbr.indexOf(".") == -1) {
                roundNmbr += ".0";
            }
            tabFile.println("\t" + roundNmbr + "\t"
                    + (noiseCreate[i] == 0 ? " " : noiseCreate[i]) + "\t"
                    + (noiseCnt[i] == 0 ? " " : noiseCnt[i]) + "\t"
                    + (falseNoiseCnt[i] == 0 ? "" : falseNoiseCnt[i]) + "\t"
                    + (defCnt[i] == 0 ? " " : defCnt[i]) + "\t"
                    + (compDefIndCnt[i] == 0 ? " " : compDefIndCnt[i]) + "\t"
                    + (compDefPurCnt[i] == 0 ? " " : compDefPurCnt[i]) + "\t"
                    + (synCnt[i] == 0 ? " " : synCnt[i]) + "\t"
                    + (umbCnt[i] == 0 ? " " : umbCnt[i]) + "\t"
                    + (olapCnt[i] == 0 ? " " : olapCnt[i]) + "\t"
                    + (dataReqs[i] == 0 ? " " : dataReqs[i]) + "\t"
                    + (dyadCnt[i] == 0 ? " " : dyadCnt[i]));
        }
        for (int i = 0; i < size; i++) {  // add up totals, place in last cell
            noiseCreate[size] += noiseCreate[i];
            noiseCnt[size] += noiseCnt[i];
            falseNoiseCnt[size] += falseNoiseCnt[i];
            defCnt[size] += defCnt[i];
            compDefIndCnt[size] += compDefIndCnt[i];
            compDefPurCnt[size] += compDefPurCnt[i];
            synCnt[size] += synCnt[i];
            umbCnt[size] += umbCnt[i];
            olapCnt[size] += olapCnt[i];
            dataReqs[size] += dataReqs[i];
            if (dyadCnt[i] > 0) {
                dyadCnt[size] = dyadCnt[i];  //  Dyad counts are cum totals.  Just grab last one.
            }
        }
        int remNoise = noiseCreate[size] - noiseCnt[size],
                unLrndSyns = (wiseGuy.synonyms == null ? 0 : wiseGuy.synonyms.size()) - synCnt[size],
                unLrndUmbs = (wiseGuy.umbrellas == null ? 0 : wiseGuy.umbrellas.size()) - umbCnt[size],
                unLrndOLaps = (wiseGuy.overlaps == null ? 0 : wiseGuy.overlaps.size()) - olapCnt[size],
                lrndDefs = defCnt[size] + compDefIndCnt[size] + compDefPurCnt[size],
                unLrndDefs = sourceDT.theory.size() - lrndDefs;  //  total terms - learned terms
        Iterator iter = sourceDT.theory.values().iterator();
        while (iter.hasNext()) {
            KinTermDef ktd = (KinTermDef) iter.next();
            if (!sourceDT.printableTerm(ktd)) {
                unLrndDefs--;  //  subtract non-terms & synonyms
            }
        }
        tabFile.println("Total Lrnd\t\t"
                + noiseCreate[size] + "\t"
                + noiseCnt[size] + "\t"
                + falseNoiseCnt[size] + "\t"
                + defCnt[size] + "\t"
                + (compDefIndCnt[size] == 0 ? " " : compDefIndCnt[size]) + "\t"
                + (compDefPurCnt[size] == 0 ? " " : compDefPurCnt[size]) + "\t"
                + (synCnt[size] == 0 ? " " : synCnt[size]) + "\t"
                + (umbCnt[size] == 0 ? " " : umbCnt[size]) + "\t"
                + (olapCnt[size] == 0 ? " " : olapCnt[size]) + "\t"
                + (dataReqs[size] == 0 ? " " : dataReqs[size]) + "\t"
                + (dyadCnt[size] == 0 ? " " : dyadCnt[size]) + "\t\t"
                + noiseCreate[size] + "\t"
                + noiseCnt[size] + "\t"
                + falseNoiseCnt[size] + "\t"
                + ((1.0f * noiseCnt[size]) / noiseCreate[size]) + "\t" //		Percent Noise Corrected
                + ((1.0f * falseNoiseCnt[size]) / (falseNoiseCnt[size] + noiseCnt[size])) + "\t\t" //	Percent False Accusations
                + ((1.0f * lrndDefs) / (lrndDefs + unLrndDefs)));		//	Learning Rate
        tabFile.println("Not Lrnd\t\t\t"
                + (remNoise == 0 ? " " : remNoise) + "\t\t"
                + (unLrndDefs == 0 ? " " : unLrndDefs) + "\t\t"
                + (unLrndSyns == 0 ? " " : unLrndSyns) + "\t"
                + (unLrndUmbs == 0 ? " " : unLrndUmbs) + "\t"
                + (unLrndOLaps == 0 ? " " : unLrndOLaps) + "\n");
    }  //  end of method writeTestResults

    public int typeDefRepudiated(String msg, Integer finalRnd, Integer finalSubRnd)
            throws KSInternalErrorException {
        int termEnd = msg.indexOf(" based on "),
                termStart = 46,
                typ = 99;
        String kinTerm = msg.substring(termStart, termEnd);
        Iterator rndIter = learningHistory.entrySet().iterator();
        while (rndIter.hasNext()) {
            Map.Entry entry1 = (Map.Entry) rndIter.next();
            Integer currentRnd = (Integer) entry1.getKey();
            TreeMap subTree = (TreeMap) entry1.getValue();
            Iterator subIter = subTree.entrySet().iterator();            
 bigLoop:   while (subIter.hasNext()) {
                Map.Entry entry2 = (Map.Entry) subIter.next();
                Integer curSubRnd = (Integer) entry2.getKey();
                if (currentRnd < finalRnd
                        || (currentRnd == finalRnd && curSubRnd < finalSubRnd)) {
                    ArrayList<Object> lessons = (ArrayList<Object>) entry2.getValue();
                    for (int i = 0; i < lessons.size(); i++) {
                        ArrayList<Object> lesson = (ArrayList<Object>) lessons.get(i);
                        String leader = (String) lesson.get(0);
                        if (leader.equals("CompDef-Induced: " + kinTerm)) {
                            typ = 0;
                        } else if (leader.equals("CompDef-Pure: " + kinTerm)) {
                            typ = 1;
                        } else if (leader.indexOf("Def: " + kinTerm) > -1) {
                            typ = 2;
                        }
                    }  //  end of i-loop thru lessons
                } else {
                    break bigLoop;
                }
            }
        }  //  end of while-loop thru learningHistory
        if (typ == 99) {
            typ = 1;
        }
        //  throw new KSInternalErrorException("Found no definition for repudiation:\n" + msg);
        return typ;
    }  //  end of method pureDefRepudiated()

    public void dumpRemNoise() {
        int cnt = countLeaves(wiseGuy.noiseFacts);
        System.out.println("\n\t** Surviving Noise Records (out of " + cnt + ") **");
        Iterator iter = wiseGuy.noiseFacts.values().iterator();
        while (iter.hasNext()) {
            ArrayList<Object> noiseRecs = (ArrayList<Object>) iter.next();
            for (int i = 0; i < noiseRecs.size(); i++) {
                Oracle.NoiseRecord rec = (Oracle.NoiseRecord) noiseRecs.get(i);
                if (!rec.corrected) {
                    System.out.println(rec);
                }
            }
        }
        System.out.println("\n");
    }  //  end of method dumpRemNoise

    public class AuxPredRegistry implements Serializable {

        ArrayList<Object> oldNames = new ArrayList<Object>(),
                newNames = new ArrayList<Object>(),
                users = new ArrayList<Object>();

        void retract(String kinTerm) {
            //  find all auxilliary definitions used by kinTerm and remove that def as a user
            int i = -1;
            Iterator iter = users.iterator();
            while (iter.hasNext()) {
                ArrayList<Object> userList = (ArrayList<Object>) iter.next();
                i++;
                int cell = userList.indexOf(kinTerm);
                if (cell > -1) {  //  found an auxPred for this definition
                    userList.remove(cell);
                    if (userList.isEmpty()) {
                        oldNames.remove(i);
                        newNames.remove(i);
                        iter.remove();
                        i--;
                    }  //  end of removed-last-user
                } //  end of found-one
            }  //  end of loop thru users
        }  //  end of method retract

        void addAux(String kTerm, String oldNam, String newNam) throws KSInternalErrorException {
            //  Temporarily stop checking for duplication of auxiliaries.  Let each CompDef have its
            //  own complete set.
            //		int cell = oldNames.indexOf(oldNam);
            //		if (cell > -1)  {  //  new user of existing auxPred
            //			if (! ((String)newNames.get(cell)).equals(newNam))
            //				throw new KSInternalErrorException("AuxPredRegistry out of synch on " + oldNam);
            //			ArrayList<Object> userList = (ArrayList<Object>)users.get(cell);
            //			if (! userList.contains(kTerm)) userList.add(kTerm);
            //		}else {  //  new auxPred
            oldNames.add(oldNam);
            newNames.add(newNam);
            ArrayList<Object> userList = new ArrayList<Object>();
            userList.add(kTerm);
            users.add(userList);
            //			}
        }  //  end of method addAux

        String newNameOf(KinTermDef aux) {
            int cell = oldNames.indexOf(aux.kinTerm);
            if (cell < 0) {
                return null;
            }
            return (String) newNames.get(cell);
        }  //  end of method newNameOf
    }  //  end of inner class AuxPredRegistry
}  //  end of class Learned_DT

