/**
 *
 * @author 	Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
 */
import java.util.*;
import java.io.*;


public class Anomaly extends Issue {
        //  Known anomalyTypes = falsePos, falseNeg, contradictions, & nearMiss

        String anomalyType, basisType;
        ArrayList<Object> basis = new ArrayList<Object>(), posHits, negHits;  //  lists of Dyads
        TreeMap pos, neg;

        public Anomaly() {
        }  //  0-arg constructor for Serialization

        public Anomaly(Object base, String localKinTerm, String question, String anomalyType,
                ArrayList<Object> posHits, ArrayList<Object> negHits, TreeMap posTree, TreeMap negTree)
                throws KSInternalErrorException {
            basis.add(base);
            if (base instanceof KinTermDef) {
                basisType = "definition";
            } else if (base instanceof Library.KTD_Ptr) {
                basisType = "definition";
            } else if (base instanceof ClauseBody) {
                basisType = "clause";
            } else if (base instanceof ArrayList) {
                basisType = "contradictions";  //  List = { suspects, goodDyads }
            } else {
                throw new KSInternalErrorException("Anomaly basis is not KTD, ArrayList<Object>, or CB.");
            }
            kinTerm = localKinTerm;
            questions.add(question);
            this.anomalyType = anomalyType;
            this.posHits = posHits;
            this.negHits = negHits;
            pos = posTree;
            neg = negTree;
        }  //  normal constructor

        public String typeString() { return "Anomaly"; }

        ArrayList<Object> findOddballs() {
            ArrayList<Object> oddBalls;
            if (anomalyType.equals("falsePos")) {
                oddBalls = posHits;
            } else if (anomalyType.equals("falseNeg")) {
                oddBalls = negHits;
            } else {  //  Must be a nearMiss
                oddBalls = posHits;
                oddBalls.addAll(negHits);
            }
            return oddBalls;
        }

        public String toString() {
            String rep = "Anomaly for: " + kinTerm;
            rep += "\n\tType: " + anomalyType + "\n\tBased on: " + basisType;
            for (int i = 0; i < questions.size(); i++) {
                rep += "\n\tQn: " + questions.get(i);
            }
            rep += "\n\tPos Hits: " + posHits.size();
            rep += "\t\tNeg Hits: " + negHits.size();
            ArrayList<Object> oddBalls = findOddballs();
            if (oddBalls.size() > 20) {
                rep += "\n\t\t" + oddBalls.size() + " suspicious dyads were noted.";
            } else {
                for (int i = 0; i < oddBalls.size(); i++) {
                    rep += "\n\t\t" + oddBalls.get(i);
                }
            }
            rep += "\n\tDue to " + basis.size()
                    + (basisType.equals("definition") ? " KTD" : " CB") + (basis.size() == 1 ? "" : "s");
            String ktdDescription = "", eg = (basis.size() == 1 ? "  i.e. " : "  e.g. ");
            if (basisType.equals("definition")) {
                Object obj = basis.get(0);
                if (obj instanceof KinTermDef) {
                    KinTermDef ktd = (KinTermDef) obj;
                    ktdDescription = ktd.domTh.languageName + ":" + ktd.kinTerm;
                } else if (obj instanceof Library.KTD_Ptr) {
                    Library.KTD_Ptr ktdPtr = (Library.KTD_Ptr) obj;
                    ktdDescription = ktdPtr.languageName + ":" + ktdPtr.kinTerm;
                }
                rep += eg + ktdDescription + "\n";
            } else if (basisType.equals("clause")) {
                ClauseBody cb = (ClauseBody) basis.get(0);
                rep += eg + cb.ktd.domTh.languageName + ":" + cb.ktd.kinTerm + ":" + cb.seqNmbr + "\n";
            }
            return rep + "\n";
        }  // end of over-riding toString

        public String toThyString() {
            String s = "(";
            // insert guts of method here
            return s + ")";
        }

        public void toSILKFile(PrintWriter pw) {
            String spacer = "\t", dblSpacer = "\t\t";
            String s = spacer + "<anomaly kinTerm=\"" + kinTerm + "\">\n";
            if (processed) {
                s += dblSpacer + "<processed>true</processed>\n";
            }
            s += dblSpacer + "<basis-type>" + basisType + "</basis-type>\n";
            s += dblSpacer + "<anomaly-type>" + anomalyType + "</anomaly-type>\n";
            s += questionsToSILKString(dblSpacer);
            s += dblSpacer + "<basis>\n";
            try {
                if (basisType.equals("contradictions")) {
                    s += dblSpacer + spacer + "<barriers />\n";
                } else if (basisType.equals("definition")) {
                    Object obj = basis.get(0);
                    if (obj instanceof KinTermDef) {
                        KinTermDef ktd = (KinTermDef) obj;
                        s += ktd.toSILKString(dblSpacer + spacer);
                    } else if (obj instanceof Library.KTD_Ptr) {
                        Library.KTD_Ptr ktdPtr = (Library.KTD_Ptr) obj;
                        KinTermDef ktd = ktdPtr.getKTD();
                        s += ktd.toSILKString(dblSpacer + spacer);
                    }
                } else {
                    ClauseBody cb = (ClauseBody) basis.get(0);
                    s += cb.toSILKString(dblSpacer + spacer);
                }
            } catch (Exception exc) { return; }
            s += "\n" + dblSpacer + "</basis>\n" + dblSpacer + "<misfits>\n";
            ArrayList<Object> oddBalls = findOddballs();
            for (int i=0; i < oddBalls.size(); i++) {
                Dyad dy = (Dyad)oddBalls.get(i);
                s += dy.toXML(dblSpacer + spacer);
            }
            s += "\n" + dblSpacer + "</misfits>\n";
            s += spacer + "</anomaly>\n";
            pw.println(s);
        }

        public void removeChallengedDyads() {
//		OF COURSE these dyads are challenged -- it's an Anomaly!!
            return;
        }  //  end of method removeChallengedDyads

        public boolean isEquivalentTo(Anomaly other) {
            //  2 Anomalies are equivalent if they have the same type, basis, & list of suspect dyads
            if (!anomalyType.equals(other.anomalyType)) {
                return false;
            }
            if (!basisType.equals(other.basisType)) {
                return false;
            }
            if (!anomalyType.equals("falseNeg")) {
                if (posHits != null && other.posHits == null) {
                    return false;
                }
                if (posHits == null && other.posHits != null) {
                    return false;
                }
                if (posHits != null) {
                    if (posHits.size() != other.posHits.size()) {
                        return false;
                    }
                    for (int i = 0; i < posHits.size(); i++) {
                        if (!other.posHits.contains(posHits.get(i))) {
                            return false;
                        }
                    }
                }  //  end of posHits not null
            }
            if (!anomalyType.equals("falsePos")) {
                if (negHits != null && other.negHits == null) {
                    return false;
                }
                if (negHits == null && other.negHits != null) {
                    return false;
                }
                if (negHits != null) {
                    if (negHits.size() != other.negHits.size()) {
                        return false;
                    }
                    for (int i = 0; i < negHits.size(); i++) {
                        if (!other.negHits.contains(negHits.get(i))) {
                            return false;
                        }
                    }
                }  //  end of negHits not null
            }
            return true;
        }  //  end of method isEquivalentTo

        public void absorb(Anomaly other) {
            basis.addAll(other.basis);
        }  //  end of method absorb

        public boolean correctOrValidate(Learned_DT lrnDT, DomainTheory sourceDT, String roundLearned, int ignorable)
                throws KSBadHornClauseException, KSNoChainOfRelations2Alter, KSBadHornClauseException,
                KSInternalErrorException, KSConstraintInconsistency, ClassNotFoundException {
            boolean answer = false,
                    oldSimVal = Context.simulation;
            ArrayList<Object> oddBalls, // to be a list of challenged dyads
                    confirmedDyads = new ArrayList<Object>();
            Context.simulation = true;
            if (anomalyType.equals("falsePos")) {
                oddBalls = posHits;
            } else if (anomalyType.equals("falseNeg")) {
                oddBalls = negHits;
            } else {  //  Must be a nearMiss or contradictions
                oddBalls = posHits;
                for (int i = 0; i < negHits.size(); i++) {
                    Dyad dy = (Dyad) negHits.get(i);
                    if (!oddBalls.contains(dy)) {
                        oddBalls.add(dy);
                    }
                }
            }
            if (pos != null) //  Only true contradictions are potential noise.
            {
                oddBalls = lrnDT.filterNonContradictions(kinTerm, oddBalls, pos, neg);
            }
            int population = Math.max(posHits.size() + negHits.size(),
                    lrnDT.countLeaves((TreeMap) lrnDT.dyadsUndefined.get(kinTerm))
                    + lrnDT.countLeaves((TreeMap) lrnDT.dyadsDefined.get(kinTerm))),
                    limit = ignorable * population / 100;
            //  If the evidence is massive (2 * limit), we don't need to do a noise filter, just repudiate the existing
            //  definition and try again. This avoids large volumes of false accusations of noise.
            if (lrnDT.theory.get(kinTerm) != null && //  Must be discriminator dyads we solicited from User.
                    ((oddBalls.size() >= 2 * MainPane.NUMBER_OF_EGOS && anomalyType.equals("falsePos"))
                    || oddBalls.size() > 2 * limit)) {  //  New data invalidates an accepted definition.
                //  We simulate User's decision to repudiate previous definition and make a new one.
                lrnDT.retractDef(kinTerm);
                ArrayList<Object> lrnRec = new ArrayList<Object>();
                lrnRec.add("Repudiated previously-learned definition for: " + kinTerm + " based on ");
                lrnRec.add(confirmedDyads.size());
                lrnRec.add(" discriminator dyads.");
                lrnDT.postLrnHist(roundLearned, lrnRec);
                answer = true;
            } //  end of need to repudiate
            else {
                for (int i = 0; i < oddBalls.size(); i++) {  //  scan for individual noise dyads
                    Dyad badDy = (Dyad) oddBalls.get(i);
                    if (!badDy.confirmed && badDy.kinTermType != 7) {  //  7 = requested dyad for confirmation
                        Dyad goodDy = lrnDT.wiseGuy.correction(badDy, lrnDT, sourceDT, roundLearned);
                        if (goodDy != null) {
                            answer = true;
                        } else {  //  it must be a good one
                            badDy.challenged = false;
                            badDy.confirmed = true;
                            confirmedDyads.add(badDy);
                        }  //  end of must be a good one
                    } //  end of not-confirmed
                    else {
                        confirmedDyads.add(badDy);
                    }
                }  //  end of loop thru oddBalls
            }			//  Compare confirmedDyads with the 'regular' limit
            if (lrnDT.theory.get(kinTerm) != null && //  Must be discriminator dyads we solicited from User.
                    ((confirmedDyads.size() >= MainPane.NUMBER_OF_EGOS && anomalyType.equals("falsePos"))
                    || confirmedDyads.size() > limit)) {  //  New data invalidates an accepted definition.
                //  We simulate User's decision to repudiate previous definition and make a new one.
                lrnDT.retractDef(kinTerm);
                ArrayList<Object> lrnRec = new ArrayList<Object>();
                lrnRec.add("Repudiated previously-learned definition for: " + kinTerm + " based on ");
                lrnRec.add(confirmedDyads.size());
                lrnRec.add(" discriminator dyads.");
                lrnDT.postLrnHist(roundLearned, lrnRec);
                answer = true;
            }  //  end of need to repudiate
            Context.simulation = oldSimVal;
            return answer;
        }  //  end of method correctOrValidate

        public void presentToUser() {
            System.out.println(toString());
        }  //  end of method presentToUser
    }  //  end of inner class Anomaly