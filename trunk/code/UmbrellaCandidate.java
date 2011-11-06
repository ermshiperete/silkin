/**
 *
 * @author 	Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
 */

import java.util.*;
import java.io.*;

public class UmbrellaCandidate extends Issue {

        ArrayList<Object> pcStringsCovered = new ArrayList<Object>();
        // subTerms is a TreeMap: key = (String) subTerm,
        //                        value = (ArrayList<Object>) supportList
        // supportList has 3 elements:
        // 0: ArrayList<Object> of pcStringscovered by this sub term
        // 1: ArrayList<Object> of dyadscovered by this sub term
        // 2: (optional) int: 1 or 2 (which of 2 thresholds were used)
        TreeMap subTerms = new TreeMap();

        public UmbrellaCandidate() {
        }  //  0-arg constructor for Serialization

        public UmbrellaCandidate(String kterm, ArrayList<Object> qns, ArrayList<Object> pcStrings, ArrayList<Object> quads) {
            kinTerm = kterm;
            questions = qns;
            pcStringsCovered.addAll(pcStrings);
            for (int i = 0; i < quads.size(); i++) {
                ArrayList<Object> quad = (ArrayList<Object>) quads.get(i),
                                  supportList = new ArrayList<Object>();
                subTerms.put(quad.get(0), supportList);
                supportList.add(quad.get(1));
                supportList.add(quad.get(2));
                supportList.add(quad.get(3));
            }
        }  //  normal constructor

        public String typeString() { return "Umbrella Candidate"; }

        public void removeChallengedDyads() {
            //  delete any dyad with challenged = true
            Iterator subIter = subTerms.entrySet().iterator();
            while (subIter.hasNext()) {
                ArrayList<Object> supportList = (ArrayList<Object>) ((Map.Entry) subIter.next()).getValue(),
                        dyads = (ArrayList<Object>) supportList.get(1);
                TreeSet covered = new TreeSet();
                Iterator dyIter = dyads.iterator();
                while (dyIter.hasNext()) {
                    Dyad dy = (Dyad) dyIter.next();
                    if (dy.challenged) {
                        dyIter.remove();
                    } else {
                        covered.add(dy.pcString);
                    }
                }
                if (dyads.isEmpty()) {
                    subIter.remove();
                } else {
                    supportList.set(0, new ArrayList<Object>(covered));
                }
            }  //  end of loop thru subTerms
            if (subTerms.isEmpty()) {
                stillViable = false;
            }
        }  //  end of method removeChallengedDyads

        public String toThyString() {
            String s = "(";
            // insert guts of method here
            return s + ")";
        }

        public void toSILKFile(PrintWriter pw) {
            String spacer = "\t", dblSpacer = "\t\t";
            pw.println(spacer + "<umbrella kinTerm=\"" + kinTerm + "\">");
            if (processed) {
                pw.println(dblSpacer + "<processed>true</processed>");
            }
            pw.println(dblSpacer + "<sub-terms>");
            Iterator subTmIter = subTerms.entrySet().iterator();
            while (subTmIter.hasNext()) {
                Map.Entry entry = (Map.Entry)subTmIter.next();
                String subKinTm = (String)entry.getKey();
                ArrayList<Object> supportList = (ArrayList<Object>)entry.getValue();
                pw.println(dblSpacer + spacer + "<sub-term> ");
                pw.println(dblSpacer + dblSpacer + "<sub-kin-term>" + subKinTm + "</sub-kin-term>");
                pw.print(dblSpacer + dblSpacer + "<pc-strings-covered> ");
                ArrayList<Object> stringsCovered = (ArrayList<Object>)supportList.get(0);
                pw.print(stringsCovered.get(0));
                for (int i=1; i < stringsCovered.size(); i++) {
                    pw.print(", " + stringsCovered.get(i));
                }
                pw.println(" </pc-strings-covered>");
                pw.println(dblSpacer + dblSpacer + "<dyads-covered>");
                ArrayList<Object> dyadsCovered = (ArrayList<Object>)supportList.get(1);
                for (int i=0; i < dyadsCovered.size(); i++) {
                    Dyad d = (Dyad)dyadsCovered.get(i);
                    pw.println(d.toXML(dblSpacer + dblSpacer +  spacer));
                }
                pw.println(dblSpacer + dblSpacer +  "</dyads-covered>");
                if (supportList.size() == 3) {
                    pw.println(dblSpacer + dblSpacer + "<type>" + supportList.get(2) + "</type>");
                }
                pw.println(dblSpacer + spacer + "</sub-term>");
            }
            pw.println(dblSpacer + "</sub-terms>");
            pw.println(spacer + "</umbrella>");
        }

        public String toString() {
            String rep = "\nProposal that " + kinTerm + " is an umbrella term encompassing:\n";
            Iterator iter = subTerms.entrySet().iterator();
            while (iter.hasNext()) {
                Map.Entry entry = (Map.Entry) iter.next();
                String subTerm = (String) entry.getKey();
                ArrayList<Object> supportList = (ArrayList<Object>) entry.getValue(),
                        pcStringsCovered = (ArrayList<Object>) supportList.get(0);
                rep += "\t" + subTerm + " = " + pcStringsCovered + "   Type = " + supportList.get(2) + ".\n";
            }  //  end of loop thru subTerms
            return rep + "\n";
        }  // end of over-riding toString

        public boolean correctOrValidate(Learned_DT lrnDT, DomainTheory sourceDT, String roundLearned)
                throws KSInternalErrorException {
            boolean result = false,
                    oldSimVal = Context.simulation;
            Context.simulation = true;
            TreeMap answers = lrnDT.wiseGuy.umbrellas;
            ArrayList<Object> badProposals = new ArrayList<Object>();
            if (answers != null && answers.get(kinTerm) != null) {  // kinTerm IS an umbrella
                ArrayList<Object> realSubTerms = (ArrayList<Object>) answers.get(kinTerm);
                if (lrnDT.umbrellas == null) {
                    lrnDT.umbrellas = new TreeMap();
                }
                if (lrnDT.umbrellas.get(kinTerm) == null) {
                    lrnDT.umbrellas.put(kinTerm, new ArrayList<Object>());
                }
                ArrayList<Object> learnedSoFar = (ArrayList<Object>) lrnDT.umbrellas.get(kinTerm),
                        propSubTerms = new ArrayList<Object>(subTerms.keySet());
                for (int i = 0; i < propSubTerms.size(); i++) {
                    String propSubTerm = (String) propSubTerms.get(i);
                    if (realSubTerms.contains(propSubTerm)) {
                        if (!learnedSoFar.contains(propSubTerm)) {
                            learnedSoFar.add(propSubTerm);
                            result = true;  //  made a contribution
                        }
                    } else {
                        badProposals.add(propSubTerm);
                    }
                }  //  end of loop thru propSubTerms
                if (result && learnedSoFar.size() == realSubTerms.size()) {  //  HURRAY.  Record this learning.
                    ArrayList<Object> learningRecord = new ArrayList<Object>();
                    learningRecord.add("umbrella: ");
                    learningRecord.add(kinTerm);
                    learningRecord.add(realSubTerms);
                    lrnDT.postLrnHist(roundLearned, learningRecord);
                }
            } else {
                badProposals.addAll(subTerms.keySet());
            }
            //Check for erroneous (portions of the) proposed Umbrella relationship:
            if (badProposals.size() > 0) {  //  There are some errors in the proposal.
                if (lrnDT.nonUmbrellas == null) {
                    lrnDT.nonUmbrellas = new TreeMap();
                }
                if (lrnDT.nonUmbrellas.get(kinTerm) == null) {
                    lrnDT.nonUmbrellas.put(kinTerm, new ArrayList<Object>());
                }
                ArrayList<Object> baddies = (ArrayList<Object>) lrnDT.nonUmbrellas.get(kinTerm);
                baddies.addAll(badProposals);
            }
            for (int i = 0; i < badProposals.size(); i++) {
                ArrayList<Object> supportList = (ArrayList<Object>) subTerms.get(badProposals.get(i)),
                        dyList = (ArrayList<Object>) supportList.get(1);
                for (int j = 0; j < dyList.size(); j++) {
                    Dyad badDy = (Dyad) dyList.get(j);
                    if (!badDy.confirmed) {
                        Dyad goodDy = lrnDT.wiseGuy.correction(badDy, lrnDT, sourceDT, roundLearned);
                        if (goodDy != null) {
                            result = true;
                        } else {  //  it must be a good one
                            badDy.challenged = false;
                            badDy.confirmed = true;
                        }
                    }
                }  //  end of loop thru suspect dyads
            }  //  end of loop thru badProposals
            Context.simulation = oldSimVal;
            return result;
        }  //  end of method correctOrValidate

        public void presentToUser() {
            System.out.println(toString());
        }  //  end of method presentToUser
    }  //  end of inner class UmbrellaCandidate


