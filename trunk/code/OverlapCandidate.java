/**
 *
 * @author 	Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
 */

import java.util.*;
import java.io.*;


   public class OverlapCandidate extends Issue {

        String otherTerm;
        ArrayList<Object> intersection, ktermDyads, otherTermDyads;

        public OverlapCandidate() {
        }  //  0-arg constructor for Serialization

        public OverlapCandidate(String kterm, ArrayList<Object> qns, String trm, ArrayList<Object> pcStrings,
                ArrayList<Object> ktermDys, ArrayList<Object> otherTermDys) {
            //  kinTerm must be earlier (lexicographically) than otherTerm
            kinTerm = kterm;
            questions = qns;
            otherTerm = trm;
            intersection = new ArrayList<Object>(pcStrings);
            ktermDyads = new ArrayList<Object>(ktermDys);
            otherTermDyads = new ArrayList<Object>(otherTermDys);
        }  //  normal constructor

        public String typeString() { return "Overlap Candidate"; }

        public void removeChallengedDyads() {
            TreeSet ktermStr = new TreeSet(), otherTermStr = new TreeSet();
            Iterator dyIter = ktermDyads.iterator();
            while (dyIter.hasNext()) {
                Dyad dy = (Dyad) dyIter.next();
                if (dy.challenged) {
                    dyIter.remove();
                } else {
                    ktermStr.add(dy.pcString);
                }
            }
            dyIter = otherTermDyads.iterator();
            while (dyIter.hasNext()) {
                Dyad dy = (Dyad) dyIter.next();
                if (dy.challenged) {
                    dyIter.remove();
                } else {
                    otherTermStr.add(dy.pcString);
                }
            }
            if (ktermDyads.isEmpty() || otherTermDyads.isEmpty()) {
                stillViable = false;
            } else {
                Iterator iter = intersection.iterator();
                while (iter.hasNext()) {
                    String olapStr = (String) iter.next();
                    if (!ktermStr.contains(olapStr)
                            || !otherTermStr.contains(olapStr)) {
                        iter.remove();
                    }
                }
                if (intersection.isEmpty()) {
                    stillViable = false;
                }
            }
        }  //  end of method removeChallengedDyads

        public String toThyString() {
            String s = "(";
            // insert guts of method here
            return s + ")";
        }


        public void toSILKFile(PrintWriter pw) {
            String spacer = "\t", dblSpacer = "\t\t";
            pw.println(spacer + "<overlap kinTerm=\"" + kinTerm + "\">");
            if (processed) {
                pw.println(dblSpacer + "<processed>true</processed>");
            }
            pw.println(dblSpacer + "<other-term>" + otherTerm + "</other-term>");
            pw.println(dblSpacer + " <kinTerm-dyads>");
            for (int i=0; i < ktermDyads.size(); i++) {
                Dyad d = (Dyad)ktermDyads.get(i);
                pw.println(d.toXML(dblSpacer + spacer));
            }
            pw.println("\n" + dblSpacer + "</kinTerm-dyads>");
            pw.println(dblSpacer + "<other-term-dyads>");
            for (int i=0; i < otherTermDyads.size(); i++) {
                Dyad d = (Dyad)otherTermDyads.get(i);
                pw.println(d.toXML(dblSpacer + spacer));
            }
            pw.println(dblSpacer + "</other-term-dyads>");
            pw.print(dblSpacer + "<pc-strings-overlap>");
            Iterator strIter = intersection.iterator();
            pw.print(strIter.next());
            while (strIter.hasNext()) {
                pw.print(", " + strIter.next());
            }
            pw.println(dblSpacer + "</pc-strings-overlap>");
            pw.println(spacer + "</overlap>");
        }


        public String toString() {
            String rep = "Proposal that " + kinTerm + " & " + otherTerm + " are overlapping terms.\n";
            rep += "In addition to other types, both terms cover the following kin types:";
            for (int i = 0; i < intersection.size(); i++) {
                rep += "\n\t" + intersection.get(i);
            }
            rep += "\n" + questions.get(0) + "\n";
            return rep;
        }  // end of over-riding toString

        public boolean correctOrValidate(Learned_DT lrnDT, DomainTheory sourceDT, String roundLearned)
                throws KSInternalErrorException {
            TreeMap answers = lrnDT.wiseGuy.overlaps;
            boolean valid = false,
                    answer = false,
                    kinTermDone = false,
                    otherTermDone = false,
                    oldSimVal = Context.simulation;
            Context.simulation = true;
            if (answers != null && answers.get(kinTerm) != null
                    && ((ArrayList<Object>) answers.get(kinTerm)).contains(otherTerm)) {
                if (lrnDT.overlaps == null) {
                    lrnDT.overlaps = new TreeMap();
                }
                if (lrnDT.overlaps.get(kinTerm) == null) {
                    lrnDT.overlaps.put(kinTerm, new ArrayList<Object>());
                }
                ArrayList<Object> olaps = (ArrayList<Object>) lrnDT.overlaps.get(kinTerm);
                if (!olaps.contains(otherTerm)) {
                    olaps.add(otherTerm);
                    if (olaps.size() == ((ArrayList<Object>) answers.get(kinTerm)).size()) {
                        kinTermDone = true;
                    }
                }
                if (lrnDT.overlaps.get(otherTerm) == null) {
                    lrnDT.overlaps.put(otherTerm, new ArrayList<Object>());
                }
                olaps = (ArrayList<Object>) lrnDT.overlaps.get(otherTerm);
                if (!olaps.contains(kinTerm)) {
                    olaps.add(kinTerm);
                    if (olaps.size() == ((ArrayList<Object>) answers.get(otherTerm)).size()) {
                        otherTermDone = true;
                    }
                }
                if (kinTermDone) {
                    ArrayList<Object> learningRecord = new ArrayList<Object>();
                    learningRecord.add("overlapping terms: ");
                    learningRecord.add(kinTerm);
                    learningRecord.add(answers.get(kinTerm));
                    lrnDT.postLrnHist(roundLearned, learningRecord);
                }
                if (otherTermDone) {
                    ArrayList<Object> learningRecord = new ArrayList<Object>();
                    learningRecord.add("overlapping terms: ");
                    learningRecord.add(otherTerm);
                    learningRecord.add(answers.get(otherTerm));
                    lrnDT.postLrnHist(roundLearned, learningRecord);
                }
                return true;
            }  //  end of Valid-Overlaps
            //  Not valid.  Post this as a bad pair.
            if (lrnDT.nonOverlaps == null) {
                lrnDT.nonOverlaps = new TreeMap();
            }
            if (lrnDT.nonOverlaps.get(kinTerm) == null) {
                lrnDT.nonOverlaps.put(kinTerm, new ArrayList<Object>());
            }
            ((ArrayList<Object>) lrnDT.nonOverlaps.get(kinTerm)).add(otherTerm);
            if (lrnDT.nonOverlaps.get(otherTerm) == null) {
                lrnDT.nonOverlaps.put(otherTerm, new ArrayList<Object>());
            }
            ((ArrayList<Object>) lrnDT.nonOverlaps.get(otherTerm)).add(kinTerm);
            //  Now, correct any bad dyads.
            for (int i = 0; i < ktermDyads.size(); i++) {
                Dyad badDy = (Dyad) ktermDyads.get(i);
                if (intersection.contains(badDy.pcString) && !badDy.confirmed) {
                    Dyad goodDy = lrnDT.wiseGuy.correction(badDy, lrnDT, sourceDT, roundLearned);
                    if (goodDy != null) {
                        answer = true;
                    } else {  //  it must be a good one
                        badDy.challenged = false;
                        badDy.confirmed = true;
                    }  //  end of it-must-be-good
                }  //  end of its-part-of-the-alledged-intersection
            }  //  end of loop thru ktermDyads
            for (int i = 0; i < otherTermDyads.size(); i++) {
                Dyad badDy = (Dyad) otherTermDyads.get(i);
                if (intersection.contains(badDy.pcString) && !badDy.confirmed) {
                    Dyad goodDy = lrnDT.wiseGuy.correction(badDy, lrnDT, sourceDT, roundLearned);
                    if (goodDy != null) {
                        answer = true;
                    } else {  //  it must be a good one
                        badDy.challenged = false;
                        badDy.confirmed = true;
                    }
                }  //  end of its-part-of-the-alledged-intersection
            }  //  end of loop thru otherTermDyads
            Context.simulation = oldSimVal;
            return answer;
        }  //  end of method correctOrValidate

        public void presentToUser() {
            System.out.println(toString());
        }  //  end of method presentToUser
    }  //  end of class OverlapCandidate