/**
 *
 * @author 	Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
 */

import java.util.*;
import java.io.*;

public class SynonymCandidate extends Issue {

        String pairOfTerms;
        ArrayList<Object> pcStringsCovered, ktermDyads, otherTermDyads;

        public SynonymCandidate() {
        }  //  0-arg constructor for Serialization

        public SynonymCandidate(String kterm, ArrayList<Object> qns, String termPair, ArrayList<Object> pcStrings,
                ArrayList<Object> ktermDys, ArrayList<Object> otherTermDys) {
            kinTerm = kterm;
            questions = qns;
            pairOfTerms = termPair;
            pcStringsCovered = new ArrayList<Object>(pcStrings);
            ktermDyads = new ArrayList<Object>(ktermDys);
            otherTermDyads = new ArrayList<Object>(otherTermDys);
        }  //  normal constructor

        public String typeString() { return "Synonym Candidate"; }

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
            }
            DomainTheory dt = new DomainTheory();
            ArrayList<Object> ktSt = new ArrayList<Object>(ktermStr), otSt = new ArrayList<Object>(otherTermStr);
            if (! dt.equivalentLists(ktSt, otSt)) {
                stillViable = false;
            }
            if (stillViable) {
                pcStringsCovered = ktSt;
            }
        }  //  end of method removeChallengedDyads

        public String toThyString() {
            String s = "(";
            // insert guts of method here
            return s + ")";
        }

        public void toSILKFile(PrintWriter pw) {
            String spacer = "\t", dblSpacer = "\t\t";
            pw.println(spacer + "<synonym kinTerm=\"" + kinTerm + "\">");
            if (processed) {
                pw.println(dblSpacer + "<processed>true</processed>");
            }
            pw.println(dblSpacer + "<other-term>" + otherTerm() + "</other-term>");
            pw.print(dblSpacer + "<pc-strings-covered>");
            pw.print(pcStringsCovered.get(0));
            for (int i=1; i <  pcStringsCovered.size(); i++) {
                pw.print(", " + pcStringsCovered.get(i));
            }
            pw.println(" </pc-strings-covered>");
            pw.println(dblSpacer + "<kin-term-dyads>");
            for (int i=0; i < ktermDyads.size(); i++) {
                Dyad d = (Dyad)ktermDyads.get(i);
                pw.println(d.toXML(dblSpacer + spacer));
            }
            pw.println(dblSpacer + "</kin-term-dyads>");
            pw.println(dblSpacer + "<other-term-dyads>");
            for (int i=0; i < otherTermDyads.size(); i++) {
                Dyad d = (Dyad)otherTermDyads.get(i);
                pw.println(d.toXML(dblSpacer + spacer));
            }
            pw.println(dblSpacer + "</other-term-dyads>");
            pw.println(spacer + "</synonym>\n");
        }

        public String otherTerm() {
            int split = pairOfTerms.indexOf("/");
            String term1 = pairOfTerms.substring(0, split),
                   term2 = pairOfTerms.substring(split +1);
            return (term1.equals(kinTerm) ? term2 : term1);
        }


        public String toString() {
            String rep = "Proposal that " + pairOfTerms + " is a synonym pair.\n";
            rep += "Both terms cover the following kinship types:";
            for (int i = 0; i < pcStringsCovered.size(); i++) {
                rep += "\n\t" + pcStringsCovered.get(i);
            }
            rep += "\n" + questions.get(0) + "\n";
            return rep;
        }  // end of over-riding toString
        

        public boolean correctOrValidate(Learned_DT lrnDT, DomainTheory sourceDT, String roundLearned)
                throws KSInternalErrorException {
            TreeMap answers = lrnDT.wiseGuy.synonyms;
            int where = pairOfTerms.indexOf("/");
            String term1 = pairOfTerms.substring(0, where),
                    term2 = pairOfTerms.substring(where + 1),
                    baseWord = null, synWord = null;
            boolean valid = false,
                    answer = false,
                    oldSimVal = Context.simulation;
            Context.simulation = true;
            if (answers != null && (answers.get(term1) != null && ((String) answers.get(term1)).equals(term2))) {
                baseWord = term2;
                synWord = term1;
                valid = true;
            } else if (answers != null && (answers.get(term2) != null && ((String) answers.get(term2)).equals(term1))) {
                baseWord = term1;
                synWord = term2;
                valid = true;
            }
            if (valid) {
                if (lrnDT.synonyms == null) {
                    lrnDT.synonyms = new TreeMap();
                }
                lrnDT.synonyms.put(synWord, baseWord);
                ArrayList<Object> learningRecord = new ArrayList<Object>();
                learningRecord.add("synonym: ");
                learningRecord.add(pairOfTerms);
                lrnDT.postLrnHist(roundLearned, learningRecord);
                return true;
            }  //  end of Valid!
            //  Not valid.  Post this as a bad pair, then correct any bad dyads
            if (lrnDT.nonSynonyms == null) {
                lrnDT.nonSynonyms = new ArrayList<Object>();
            }
            lrnDT.nonSynonyms.add(pairOfTerms);
            for (int i = 0; i < ktermDyads.size(); i++) {
                Dyad badDy = (Dyad) ktermDyads.get(i);
                if (!badDy.confirmed) {
                    Dyad goodDy = lrnDT.wiseGuy.correction(badDy, lrnDT, sourceDT, roundLearned);
                    if (goodDy != null) {
                        answer = true;
                    } else {  //  it must be a good one
                        badDy.challenged = false;
                        badDy.confirmed = true;
                    }
                }  //  end of not-confirmed
            }  //  end of loop thru ktermDyads
            for (int i = 0; i < otherTermDyads.size(); i++) {
                Dyad badDy = (Dyad) otherTermDyads.get(i);
                if (!badDy.confirmed) {
                    Dyad goodDy = lrnDT.wiseGuy.correction(badDy, lrnDT, sourceDT, roundLearned);
                    if (goodDy != null) {
                        answer = true;
                    } else {  //  it must be a good one
                        badDy.challenged = false;
                        badDy.confirmed = true;
                    }
                }  //  end of not-confirmed
            }  //  end of loop thru otherTermDyads
            Context.simulation = oldSimVal;
            return answer;
        }  //  end of method correctOrValidate

        public void presentToUser() {
            System.out.println(toString());
        }  //  end of method presentToUser
    }  //  end of inner class SynonymCandidate