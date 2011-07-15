/**
 *
 * @author 	Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
 */
import java.util.*;
import java.io.*;

 public class ComposedDef extends Issue {

        KinTermDef ktd;
        ArrayList<Object> refutation, //  A pair = {type, CB}
                languagesUsed, cbsUsed, posUncovered,
                negsCovered, auxiliaries, origBCBs, origXCBs;

        public ComposedDef() {
        }  //  0-arg constructor for Serialization

        public String typeString() { return "Proposed Deinition"; }

        public ComposedDef(String localKinTerm, ArrayList<Object> questns, ArrayList<Object> octuple) {
            kinTerm = localKinTerm;
            questions = questns;
            ktd = (KinTermDef) octuple.get(0);
            languagesUsed = (ArrayList<Object>) octuple.get(1);
            cbsUsed = (ArrayList<Object>) octuple.get(2);
            posUncovered = (ArrayList<Object>) octuple.get(3);
            negsCovered = (ArrayList<Object>) octuple.get(4);
            auxiliaries = (ArrayList<Object>) octuple.get(5);
            origBCBs = (ArrayList<Object>) octuple.get(6);
            origXCBs = (ArrayList<Object>) octuple.get(7);
        }  //  end of normal constructor

        public boolean sameAs(KinTermDef realDef, int ignorable, Learned_DT lrnDT, DomainTheory sourceDT, String roundLearned)
                throws KSParsingErrorException, JavaSystemException, KSInternalErrorException, KSConstraintInconsistency,
                KSBadHornClauseException, KSNoChainOfRelations2Alter, ClassNotFoundException, FileNotFoundException,
                KinshipSystemException, ClassNotFoundException {

            boolean oldFlag = Context.simulation;
            ArrayList<Object> correctKinTypes = realDef.decodeString(realDef.eqcSigExact),
                    coveredKinTypes = ktd.decodeString(ktd.eqcSigExact);
            String kinTm = ktd.kinTerm.substring(9);
            //  The Kin Type coverage of this CompDef may not cover all the extended meanings of the
            //  realDef.  But it should not cover any extraneous KTs with dyads (probably noise).
            ArrayList<Object> extraKTs = LiteralAbstract2.setDifference(coveredKinTypes, correctKinTypes),
                    suspectDyads = new ArrayList<Object>();
            TreeMap pos = (TreeMap) lrnDT.dyadsUndefined.get(kinTm);
            for (int i = 0; i < extraKTs.size(); i++) {
                String kType = (String) extraKTs.get(i);
                ArrayList<Object> dyads = (ArrayList<Object>) pos.get(kType);
                if (dyads != null) {
                    suspectDyads.addAll(dyads);
                }
            }
            if (Library.errorCorrectionOn && !suspectDyads.isEmpty()) {
                Context.simulation = true;
            }
            for (int i = 0; i < suspectDyads.size(); i++) {  //  scan for noise dyads
                Dyad badDy = (Dyad) suspectDyads.get(i);
                if (!badDy.confirmed) {
                    Dyad goodDy = lrnDT.wiseGuy.correction(badDy, lrnDT, sourceDT, roundLearned);
                    if (goodDy == null) {  //  it must be a good one
                        badDy.challenged = false;
                        badDy.confirmed = true;
                    }
                }  //  end of not-confirmed
            }  //  end of loop thru suspectDyads
            if (!suspectDyads.isEmpty()) {
                return false;
            }
            //  OK.  KinType coverage looks good.
            KinTermDef subRealDef = new KinTermDef(realDef);  //  A shallow copy
            subRealDef.eqcSigExact = ktd.eqcSigExact;
            subRealDef.eqcSigStruct = ktd.eqcSigStruct;
            Iterator iter = subRealDef.expandedDefs.iterator();
            ArrayList<Object> ktsInPOS = new ArrayList<Object>(pos.keySet());
            while (iter.hasNext()) {
                ClauseBody expCB = (ClauseBody) iter.next();
                if (!ktsInPOS.contains(expCB.pcString)) {
                    iter.remove();
                }
            }
            //  Now subRealDef has the portion of realDef applicable to the KinTypes seen so far
            ktd.headPred = new Predicate(ktd.kinTerm, new CulturalCategory());
            Variable arg0 = new Variable("Alter"),
                    arg1 = new Variable("Ego");
            ktd.clauseHead = new Literal(ktd.headPred, arg0, arg1);
            Context.simulation = false;
            TreeMap neg = lrnDT.makeNEG(kinTm, pos);
            //  The 3 tests - subRealDef cannot:  1) cover any of PosUncovered
            //  2)  fail to cover any NegsCovered, or 3) cover any dyad in NEG that's not in NegsCovered
            if (threeTests(subRealDef, neg)) {	//  This CompDef must be functionally correct -- ACCEPT
                ktd.kinTerm = kinTm;
                Context.simulation = oldFlag;
                return true;
            }
            //  Ooops.  CompDef is not correct

            String alert = "\n\tWhile testing CompDef for " + kinTerm + " covering " + ktd.eqcSigExact;
//  alert +=		 "\n\tCompDef = " + ktd;
//  alert +=		 "\n\tSubRealDef = " + subRealDef;
            alert += "\n***************************************************************************";
            System.out.println(alert);

            if (Library.errorCorrectionOn) {
                scanMisfitsForNoise(pos, neg, ignorable, coveredKinTypes, lrnDT, sourceDT, roundLearned);
            }
            Context.simulation = oldFlag;
            return false;
        }  //  end of method sameAs()


        public void refute(ClauseBody cb, ArrayList<Object> egoBag, DomainTheory sourceDT, Learned_DT lrnDT)
                throws KSBadHornClauseException, KSInternalErrorException, KSConstraintInconsistency,
                ClassNotFoundException, KinshipSystemException, KSNoChainOfRelations2Alter,
                KSParsingErrorException, JavaSystemException, ClassNotFoundException {
            //  Using the people in egoBag, create dyads from CB in refutation.
            //  CB is a 'surplus CB' (beyond the correct definition).  Find out if it has a defined
            //  term in this language.  If so, assign it to the dyads; if not, assign "no__term"
            if (lrnDT.dyadsDefined == null) {
                lrnDT.dyadsDefined = new DyadTMap();
            }
            boolean oldVal = Context.simulation;
            Context.simulation = false;
            String refuKinTerm = "no__term";  //  default if this language has no term for this kin type
            boolean foundIt = false;
            Iterator ktIter = sourceDT.theory.entrySet().iterator();
            while (ktIter.hasNext() && !foundIt) {  // search for KTD containing this kin type
                Map.Entry entry = (Map.Entry) ktIter.next();
                KinTermDef ktd = (KinTermDef) entry.getValue();
                ArrayList<Object> kinTypes = null;
                if (lrnDT.printableTerm(ktd)) {
                    kinTypes = ktd.decodeString(ktd.eqcSigExact);
                }
                if (kinTypes != null && kinTypes.contains(cb.pcString)) {
                    if (kinTerm.equals("aiya")) {
                        Context.breakpoint();
                    }
                    for (int i = 0; i < ktd.expandedDefs.size(); i++) {
                        ClauseBody claws = (ClauseBody) ktd.expandedDefs.get(i);
                        if (cb.isEquivalent(claws)) {
                            i = ktd.expandedDefs.size();
                            foundIt = true;
                            refuKinTerm = (String) entry.getKey();
                        }  //  end of they're equivalent
                    }  //  end of loop thru expDefs
                }  //  end of kin types contains pcString
            }  //  end of search for KTD containing this kin type
            Individual ego = (Individual) egoBag.remove(0);
            for (int j = 0; j < MainPane.NUMBER_OF_EGOS; j++) {
                lrnDT.ctxt.changeEgoTo(ego);
                egoBag.add(0, ego);
                Dyad dyad = lrnDT.makeExampleDyad(cb, lrnDT.ctxt, egoBag);
                dyad.kinTerm = refuKinTerm;
                lrnDT.dyadsDefined.dyAdd(dyad);
                ego = MainPane.topPane.randomEgo(lrnDT.ctxt, egoBag, ego.gender);
            }  //  end of loop thru egos
            Context.simulation = oldVal;
        }  //  end of method refute

        public boolean threeTests(KinTermDef subRealDef, TreeMap neg)
                throws KSBadHornClauseException, KSNoChainOfRelations2Alter, KSInternalErrorException,
                KSConstraintInconsistency, ClassNotFoundException {
            boolean acceptance = true;
            DomainTheory dt = new DomainTheory();
            //  If subRealDef covers any of PosUncovered, REJECT
            for (int i = 0; i < subRealDef.expandedDefs.size(); i++) {
                ClauseBody expCB = (ClauseBody) subRealDef.expandedDefs.get(i);
                for (int j = 0; j < posUncovered.size(); j++) {
                    Dyad dy = (Dyad) posUncovered.get(j);
                    if (dy.pcString.equals(expCB.pcString) && dt.fit(expCB, dy)) {
                        String alert = "\n*******************************REJECT**************************************";
                        alert += "\n\tReal Def covers this dyad, which was in posUncovered:\n";
                        alert += dy;
                        alert += "\ncovering expCB was " + expCB;
                        System.out.println(alert);
                        return false;
                    }
                }  //  end of j-loop
            }  //  end of i-loop
            //  If subRealDef does not cover all of NegsCovered, REJECT
            ArrayList<Object> negsCover2 = new ArrayList<Object>(negsCovered);
            for (int i = 0; i < subRealDef.expandedDefs.size() && !negsCover2.isEmpty(); i++) {
                ClauseBody expCB = (ClauseBody) subRealDef.expandedDefs.get(i);
                Iterator iter = negsCover2.iterator();
                while (iter.hasNext()) {
                    Dyad dy = (Dyad) iter.next();
                    if (dy.pcString.equals(expCB.pcString) && dt.fit(expCB, dy)) {
                        iter.remove();  //  it's covered
                    }
                }  //  end of loop thru negsCover2
            }  //  end of i-loop
            if (negsCover2.size() > 0) {
                String alert = "\n*******************************REJECT**************************************";
                alert += "\n\tReal Def fails to cover dyads in negsCovered:\n";
                alert += negsCover2;
                System.out.println(alert);
                return false;
            }
            //  If subRealDef covers any dyad in NEG that is not in NegsCovered, REJECT
            for (int i = 0; i < subRealDef.expandedDefs.size(); i++) {
                ClauseBody expCB = (ClauseBody) subRealDef.expandedDefs.get(i);
                ArrayList<Object> negs = (ArrayList<Object>) neg.get(expCB.pcString);
                if (negs != null) {
                    for (int j = 0; j < negs.size(); j++) {
                        Dyad dy = (Dyad) negs.get(j);
                        if (!negsCovered.contains(dy) && dt.fit(expCB, dy)) {
                            String alert = "\n*******************************REJECT**************************************";
                            alert += "\n\tReal Def covers a dyad in NEG that is not in negsCovered:\n";
                            alert += dy;
                            System.out.println(alert);
                            return false;
                        }
                    }  //  end of j-loop
                }  //  end of negs != null
            }  //  end of i-loop
            return true;
        }  //  end of method threeTests

        public void scanMisfitsForNoise(TreeMap pos, TreeMap neg, int ignorable, ArrayList<Object> coveredKinTypes,
                Learned_DT lrnDT, DomainTheory sourceDT, String roundLearned) {
            ArrayList<Object> oddBalls = new ArrayList<Object>(negsCovered);
            oddBalls.addAll(posUncovered);
            int posSize = lrnDT.countLeaves(pos),
                    limit = (int) Math.floor(posSize * ignorable / 100d);
            for (int i = 0; i < coveredKinTypes.size(); i++) {
                String kType = (String) coveredKinTypes.get(i);
                ArrayList<Object> negDys = (ArrayList<Object>) neg.get(kType);
                if (negDys != null && negDys.size() < limit + 4) {
                    oddBalls.addAll(negDys);
                }
            }  //  end of loop thru all KTs this def tried to cover that had negs
            Context.simulation = true;
            for (int i = 0; i < oddBalls.size(); i++) {  //  scan for noise dyads
                Dyad badDy = (Dyad) oddBalls.get(i);
                if (!badDy.confirmed) {
                    Dyad goodDy = lrnDT.wiseGuy.correction(badDy, lrnDT, sourceDT, roundLearned);
                    if (goodDy != null) {
                        int where = negsCovered.indexOf(badDy);
                        if (where > -1) {
                            negsCovered.remove(where);
                        } else {
                            where = posUncovered.indexOf(badDy);
                            if (where > -1) {
                                posUncovered.remove(where);
                            }
                        }
                    } else {  //  it must be a good one
                        badDy.challenged = false;
                        badDy.confirmed = true;
                    }
                }  //  end of not-confirmed
            }  //  end of loop thru oddBalls
        }  //  end of method scanMisfitsForNoise

        public boolean sameAsOLD(KinTermDef realDef, int ignorable, Learned_DT lrnDT,
                DomainTheory sourceDT, String roundLearned) throws KSParsingErrorException {

            ArrayList<Object> correctKinTypes = realDef.decodeString(realDef.eqcSigExact),
                    coveredKinTypes = ktd.decodeString(ktd.eqcSigExact);
            if (coveredKinTypes.isEmpty() || correctKinTypes.isEmpty()) {
                System.out.println();  //  FYI only.  If either is empty, superSet will return false.
            }
            if (! lrnDT.isSupersetOf(correctKinTypes, coveredKinTypes)) {
                return false;
            }
            //  The Kin Type coverage of this CompDef may not cover all the extended meanings of the
            //  realDef.  But it should not cover any extraneous ones.
            TreeMap allDyads = (TreeMap) lrnDT.dyadsUndefined.get(realDef.kinTerm);
            int posSize = lrnDT.countLeaves(allDyads),
                    limit = (int) Math.floor(posSize * ignorable / 100d),
                    misses = posUncovered.size() + negsCovered.size(), where;
            if (misses > 0 && Library.errorCorrectionOn) {
                ArrayList<Object> oddBalls = new ArrayList<Object>(negsCovered);
                oddBalls.addAll(posUncovered);
                boolean oldSimVal = Context.simulation;
                Context.simulation = true;
                for (int i = 0; i < oddBalls.size(); i++) {  //  scan for noise dyads
                    Dyad badDy = (Dyad) oddBalls.get(i);
                    if (!badDy.confirmed) {
                        Dyad goodDy = lrnDT.wiseGuy.correction(badDy, lrnDT, sourceDT, roundLearned);
                        if (goodDy != null) {
                            misses--;
                            where = negsCovered.indexOf(badDy);
                            if (where > -1) {
                                negsCovered.remove(where);
                            }
                        } else {  //  it must be a good one
                            badDy.challenged = false;
                            badDy.confirmed = true;
                        }
                    }  //  end of not-confirmed
                }  //  end of loop thru oddBalls
                Context.simulation = oldSimVal;
            }  //  end of misses > 0
            if (misses > limit) {
                return false;
            } else if (misses > 0) {
                System.out.println("Accepting composed definition of " + realDef.kinTerm + " as a working hypothesis.\n"
                        + misses + " problem dyads will be studied further.");
            }
            ktd.kinTerm = ktd.kinTerm.substring(9);
            Predicate headPred = new Predicate(ktd.kinTerm, new CulturalCategory());
            Variable arg0 = new Variable("Alter"),
                    arg1 = new Variable("Ego");
            ktd.clauseHead = new Literal(headPred, arg0, arg1);
            return true;
        }  //  end of method sameAsOLD()

        public String toThyString() {
            String s = "(";
            // insert guts of method here
            return s + ")";
        }

        public void toSILKFile(PrintWriter pw) {
            String spacer = "\t", dblSpacer = "\t\t";
            pw.println(spacer + "<proposed-def kinTerm=\"" + kinTerm + "\"> ");
            pw.println(ktd.toXML(dblSpacer));
            pw.println(questionsToSILKString(dblSpacer));
            pw.println(dblSpacer + "<pos-dyads-uncovered> \n");
            for (int i = 0; i < posUncovered.size(); i++) {
                Dyad dy = (Dyad) posUncovered.get(i);
                pw.println(dy.toXML(dblSpacer + spacer));
            }
            pw.println(dblSpacer + " </pos-dyads-uncovered>");
            pw.println(dblSpacer + "<neg-dyads-covered> ");
            for (int i = 0; i < negsCovered.size(); i++) {
                Dyad dy = (Dyad) negsCovered.get(i);
                pw.println(dy.toXML(dblSpacer + spacer));
            }
            pw.println(dblSpacer + " </neg-dyads-covered>\n");
            pw.println(spacer + " </proposed-def>");
        }

        public String toString() {
            int problems = posUncovered.size() + negsCovered.size();
            String rep = "ComposedDef for: " + kinTerm;
            String pl1 = (cbsUsed.size() > 1 ? "s" : ""),
                    pl2 = (languagesUsed.size() > 1 ? "s" : ""),
                    pl3 = (problems > 1 ? "s" : "");
            if (cbsUsed.size() > 0) {
                rep += "\n\tBased on a definition composed from " + cbsUsed.size() + " base clause" + pl1 + " in ";
                rep += languagesUsed.size() + " language" + pl2 + ".\n";
            } else {
                rep += "\n\tBased on induction.\n";
            }
            if (problems == 0) {
                rep += "\tA perfect fit.";
            } else {
                rep += "\n\tHas " + problems + " problem dyads (errors?):";
                for (int i = 0; i < posUncovered.size(); i++) {
                    rep += "\n\t\t" + posUncovered.get(i);
                }
                for (int i = 0; i < negsCovered.size(); i++) {
                    rep += "\n\t\t" + negsCovered.get(i);
                }
            }
            return rep + "\n";
        }  // end of over-riding toString

        public void removeChallengedDyads() {
            return;
        }

        public void presentToUser() {
            System.out.println(toString());  //  for now, until GUI completed.
        }  //  end of method presentToUser
    }  //  end of class ComposedDef