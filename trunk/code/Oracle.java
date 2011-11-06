
import java.util.*;
import java.io.*;
import java.text.*;

/** 
The Oracle class is strictly for testing; it is not part of the deliverable system.
<p>
This class's static variables hold information about the Leave-One-Out test.  Its instance variables 
have some of the 'answers' for the test of any one language.

@author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
 */
public class Oracle implements Serializable {

    public static float spellingNoise;	//  Percent of spelling noise allowed in simulated User's answers to Suggestions.
    public static float classNoise;		//  Percent of class noise allowed in simulated User's answers to Suggestions.
    TreeMap noiseFacts = new TreeMap();  //  EgoSerial# => ArrayList<Object> of NoiseRecords
    TreeMap synonyms, umbrellas, overlaps;
//  NOTE:  structure of umbrellas is:  umbTerm -> list-of-subsumed-terms
//		   structure of synonyms is:  synonym -> baseTerm
//		   structure of overlaps is:  term => ArrayList<Object> of overlapping terms.
    ArrayList<Object> holder = new ArrayList<Object>();

    public Dyad correction(Dyad badDy, Learned_DT lrnDT, DomainTheory sourceDT, String roundLearned) {
        if (!Library.errorCorrectionOn) {
            return null;
        }
        Dyad correctDyad = null;
        Integer key = new Integer(badDy.ego.serialNmbr);
//  if (badDy.ego.serialNmbr == 800 && badDy.alter.serialNmbr == 1369) Context.breakpoint();
        ArrayList<Object> noisies = (ArrayList<Object>) noiseFacts.get(key);
        if (noisies != null) {
            for (int i = 0; i < noisies.size(); i++) {
                NoiseRecord rec = (NoiseRecord) noisies.get(i);
                if (badDy.kinTerm.equals(rec.badKTerm)
                        && badDy.ego.serialNmbr == rec.egoSerial
                        && badDy.alter.serialNmbr == rec.alterSerial) {  //  Bingo
                    correctDyad = new Dyad(badDy);
                    correctDyad.kinTerm = rec.goodKTerm;
                    if (rec.corrected
                            && lrnDT.dyadsUndefined.get(rec.badKTerm) != null
                            && ((TreeMap) lrnDT.dyadsUndefined.get(rec.badKTerm)).get(badDy.pcString) != null
                            && (lrnDT.dyadsUndefined.removeDyad(badDy, lrnDT)
                            || lrnDT.dyadsDefined.removeDyad(badDy, lrnDT))) {
                        System.out.println("\t\t\t**\tDouble correction needed for " + badDy);
                    }
                    if (!rec.corrected && (lrnDT.dyadsUndefined.removeDyad(badDy, lrnDT)
                            || lrnDT.dyadsDefined.removeDyad(badDy, lrnDT))) {
                        //  First discovery of this noise rec:  Fix it.  Count it.
                        rec.corrected = true;
                        if (lrnDT.dyadsDefined.containsKey(correctDyad.kinTerm)) {
                            lrnDT.dyadsDefined.dyAdd(correctDyad);
                        } else {
                            lrnDT.dyadsUndefined.dyAdd(correctDyad);
                        }
                        if (lrnDT.wiseGuy.spellingNoise + lrnDT.wiseGuy.classNoise > 0.0) //  noise is possible
                        {
                            correctDyad.kinTerm = sourceDT.addNoise(correctDyad.kinTerm, lrnDT.wiseGuy,
                                    lrnDT.wiseGuy.classNoise, lrnDT.wiseGuy.spellingNoise);
                        }
                        ArrayList<Object> lrngRec = new ArrayList<Object>();
                        lrngRec.add("\tnoise correction: ");
                        lrngRec.add(badDy);
                        lrngRec.add(" => ");
                        lrngRec.add(correctDyad);
                        lrnDT.postLrnHist(roundLearned, lrngRec);
                    }  //  end of fix-it
                    return correctDyad;
                }
            }  //  end of loop thru holder of NoiseRecords
        }		//  If we get here, the 'badDy' did not match any known noise record; it was good.
        ArrayList<Object> lrngRec = new ArrayList<Object>();
        lrngRec.add("\tfalse noise check: ");
        lrngRec.add(badDy);
        lrnDT.postLrnHist(roundLearned, lrngRec);
        return null;  //  return a null to signal 'no correction needed'
    }  //  end of method correction

    public static class NoiseRecord implements Serializable {

        String noiseType, goodKTerm, badKTerm;
        int egoSerial, alterSerial;
        boolean corrected = false;

        NoiseRecord(String typ, String good, String bad) {
            noiseType = typ;
            goodKTerm = good;
            badKTerm = bad;
        }  //  end of constructor

        public String toString() {
            String status = (corrected ? "" : "Uncorrected "),
                    line1 = "<" + status + noiseType + "_noise: " + badKTerm + " for " + goodKTerm;
            return line1 + ".  Ego: " + egoSerial + "\tAlter: " + alterSerial + ">";
        }
    }  //  end of inner class NoiseRecord
}
