//
//  FeatureVectorObj.java
//  SILKin
//
//  Created by Gary Morris on Sun Jul 25 2004.
//

import java.util.*;
import java.io.*;
import java.text.*;

/** 
A FeatureVectorObj implements a mixed-type vector of integers, reals, and lists.  Collectively,
these vector elements define the high-level characteristics of a {@link DomainTheory}. This vector will be used to
compare any two <code>DomainTheories</code> and compute their similarity.

@author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
 */
public class FeatureVectorObj implements Serializable {

    //  These 4 arrays tabulate the distributions of the 2 integer-valued features --
    //	and float- and symbol-valued features -- over all DomainTheories.
    //  These are filled by DomainTheory.computeFeatureVector().
    //  The float arrays are initialized in Library.generateSimMatrix().
    public static SymbolDistributionObj el_3_distn, el_4_distn, el_8_distn, el_9_distn;
    public static FloatDistributionObj el_1_distn, el_2_distn, el_5_distn;
    public static final double[] zTable = {0.500d, 0.5040d, 0.5080d, 0.5120d, 0.5160d, 0.5199d, 0.5239d, 0.5279d, 0.5319d, 0.5359d,
        0.5398d, 0.5438d, 0.5478d, 0.5517d, 0.5557d, 0.5596d, 0.5636d, 0.5675d, 0.5714d, 0.5753d,
        0.5793d, 0.5832d, 0.5871d, 0.5910d, 0.5948d, 0.5987d, 0.6026d, 0.6064d, 0.6103d, 0.6141d,
        0.6179d, 0.6217d, 0.6255d, 0.6293d, 0.6331d, 0.6368d, 0.6406d, 0.6443d, 0.6480d, 0.6517d,
        0.6554d, 0.6591d, 0.6628d, 0.6664d, 0.6700d, 0.6736d, 0.6772d, 0.6808d, 0.6844d, 0.6879d,
        0.6915d, 0.6950d, 0.6985d, 0.7019d, 0.7054d, 0.7088d, 0.7123d, 0.7157d, 0.7190d, 0.7224d,
        0.7257d, 0.7291d, 0.7324d, 0.7357d, 0.7389d, 0.7422d, 0.7454d, 0.7486d, 0.7517d, 0.7549d,
        0.7580d, 0.7611d, 0.7642d, 0.7673d, 0.7704d, 0.7734d, 0.7764d, 0.7794d, 0.7823d, 0.7852d,
        0.7881d, 0.7910d, 0.7939d, 0.7967d, 0.7995d, 0.8023d, 0.8051d, 0.8078d, 0.8106d, 0.8133d,
        0.8159d, 0.8186d, 0.8212d, 0.8238d, 0.8264d, 0.8289d, 0.8315d, 0.8340d, 0.8365d, 0.8389d,
        0.8413d, 0.8438d, 0.8461d, 0.8485d, 0.8508d, 0.8531d, 0.8554d, 0.8577d, 0.8599d, 0.8621d,
        0.8643d, 0.8665d, 0.8686d, 0.8708d, 0.8729d, 0.8749d, 0.8770d, 0.8790d, 0.8810d, 0.8830d,
        0.8840d, 0.8869d, 0.8888d, 0.8907d, 0.8925d, 0.8944d, 0.8962d, 0.8980d, 0.8997d, 0.9015d,
        0.9032d, 0.9049d, 0.9066d, 0.9082d, 0.9099d, 0.9115d, 0.9131d, 0.9147d, 0.9162d, 0.9177d,
        0.9192d, 0.9207d, 0.9222d, 0.9236d, 0.9251d, 0.9265d, 0.9278d, 0.9292d, 0.9306d, 0.9319d,
        0.9332d, 0.9345d, 0.9357d, 0.9370d, 0.9382d, 0.9394d, 0.9406d, 0.9418d, 0.9429d, 0.9441d,
        0.9452d, 0.9463d, 0.9474d, 0.9484d, 0.9485d, 0.9505d, 0.9515d, 0.9525d, 0.9535d, 0.9545d,
        0.9554d, 0.9564d, 0.9573d, 0.9582d, 0.9591d, 0.9599d, 0.9608d, 0.9616d, 0.9625d, 0.9633d,
        0.9641d, 0.9649d, 0.9656d, 0.9664d, 0.9671d, 0.9678d, 0.9686d, 0.9693d, 0.9699d, 0.9706d,
        0.9713d, 0.9719d, 0.9726d, 0.9732d, 0.9738d, 0.9744d, 0.9750d, 0.9756d, 0.9761d, 0.9767d,
        0.9772d, 0.9778d, 0.9783d, 0.9788d, 0.9793d, 0.9798d, 0.9803d, 0.9808d, 0.9812d, 0.9817d,
        0.9821d, 0.9826d, 0.9830d, 0.9834d, 0.9838d, 0.9842d, 0.9846d, 0.9850d, 0.9854d, 0.9857d,
        0.9861d, 0.9864d, 0.9868d, 0.9871d, 0.9875d, 0.9878d, 0.9881d, 0.9884d, 0.9887d, 0.9890d,
        0.9893d, 0.9896d, 0.9898d, 0.9901d, 0.9904d, 0.9906d, 0.9909d, 0.9911d, 0.9913d, 0.9916d,
        0.9918d, 0.9920d, 0.9922d, 0.9925d, 0.9927d, 0.9929d, 0.9931d, 0.9932d, 0.9934d, 0.9936d,
        0.9938d, 0.9940d, 0.9941d, 0.9943d, 0.9945d, 0.9946d, 0.9948d, 0.9949d, 0.9951d, 0.9952d,
        0.9953d, 0.9955d, 0.9956d, 0.9957d, 0.9959d, 0.9960d, 0.9961d, 0.9962d, 0.9963d, 0.9964d,
        0.9965d, 0.9966d, 0.9967d, 0.9968d, 0.9969d, 0.9970d, 0.9971d, 0.9972d, 0.9973d, 0.9974d,
        0.9974d, 0.9975d, 0.9976d, 0.9977d, 0.9977d, 0.9978d, 0.9979d, 0.9979d, 0.9980d, 0.9981d,
        0.9981d, 0.9982d, 0.9982d, 0.9983d, 0.9984d, 0.9984d, 0.9985d, 0.9985d, 0.9986d, 0.9986d,
        0.9987d, 0.9987d, 0.9987d, 0.9988d, 0.9988d, 0.9989d, 0.9989d, 0.9989d, 0.9990d, 0.9990d,
        0.9990d, 0.9991d, 0.9991d, 0.9991d, 0.9992d, 0.9992d, 0.9992d, 0.9992d, 0.9993d, 0.9993d,
        0.9993d, 0.9993d, 0.9994d, 0.9994d, 0.9994d, 0.9994d, 0.9994d, 0.9995d, 0.9995d, 0.9995d,
        0.9995d, 0.9995d, 0.9995d, 0.9996d, 0.9996d, 0.9996d, 0.9996d, 0.9996d, 0.9996d, 0.9997d,
        0.9997d, 0.9997d, 0.9997d, 0.9997d, 0.9997d, 0.9997d, 0.9997d, 0.9997d, 0.9997d, 0.9998d};
    public String languageName;			// of the DomainTheory this FeatureVector represents
    public boolean addressTerms;		// is this a FV for Terms of Address?
    public int fvID;
    public boolean genSkewing = false;				// element 0
    public float percentRecip = 0;					// element 1
    public float percentMultiGen = 0;				// element 2
    public ArrayList<Object> ivcList = new ArrayList<Object>();		// element 3 
    public ArrayList<Object> hcvcList = new ArrayList<Object>();    // element 4
    public float avgLateralCount;					// element 5
    public boolean stepTerms;						// element 6
    public boolean udps;							// element 7
    public TreeSet exactSigSet;						// element 8
    public TreeSet structSigSet;					// element 9

    static abstract class DistributionObj {

        ArrayList<Object> values = new ArrayList<Object>();

        public abstract float mean();

        public abstract void writeToFile(PrintWriter outFile);
    }  //  end of abstract class DisributionObj

    static class FloatDistributionObj extends DistributionObj implements Serializable {

        float sumOfVals = 0f, sumOfSquares = 0f;
        private double variance;
        int n = 0;

        public FloatDistributionObj() {
        }  //  0-arg constructor

        public FloatDistributionObj(BufferedReader file) throws JavaSystemException {
            String line;
            try {
                line = file.readLine();
            } catch (IOException ioe) {
                throw new JavaSystemException("Error while reading distribution files:\n" + ioe);
            }
            int start = line.indexOf("[") + 1, middle,
                listEnd = line.indexOf("]\t"),
                item = line.indexOf(",");
            if (item == -1) {
                item = listEnd;
            }
            if (start == 0 || listEnd == -1) {
                throw new JavaSystemException("Corrupted format for FloatDistribution file: " + file);
            }
            while (start < listEnd) {
                values.add(new Float(line.substring(start, item)));
                start = item + 1;
                item = line.indexOf(",", start);
                if (item == -1 || item > listEnd) {
                    item = listEnd;
                }
            }  //  end of loop reading values
            start = listEnd + 2;
            listEnd = line.indexOf("\t", start);
            sumOfVals = Float.parseFloat(line.substring(start, listEnd));
            start = listEnd + 1;
            listEnd = line.indexOf("\t", start);
            sumOfSquares = Float.parseFloat(line.substring(start, listEnd));
            start = listEnd + 1;
            listEnd = line.indexOf("\t", start);
            variance = Double.parseDouble(line.substring(start, listEnd));
            start = listEnd + 1;
            n = Integer.parseInt(line.substring(start).trim());
        }  //  end of constructor from file

        public void add(float num) {
            values.add(new Float(num));
            n++;
            sumOfVals += num;
            sumOfSquares += (num * num);
        }  //  end of method add()

        public float mean() {
            return ((float) sumOfVals / values.size());
        }

        public void writeToFile(PrintWriter file) {
            file.print("[");
            file.print(values.get(0));
            for (int i = 1; i < values.size(); i++) {
                file.print("," + values.get(i));
            }
            file.print("]\t");
            file.print(sumOfVals + "\t");
            file.print(sumOfSquares + "\t");
            file.print(variance() + "\t");
            file.print(n + "\t");
            file.flush();
            file.close();
        }  //  end of method writeToFile

        public double variance() {
            variance = (double) (sumOfVals * sumOfVals) / n;
            variance = sumOfSquares - variance;
            return variance;
        }  //  end of method variance

        public double stdDev() {
            variance = (double) (sumOfVals * sumOfVals) / n;
            variance = sumOfSquares - variance;
            return Math.sqrt(variance);
        }  // end of method stdDev
    }  //  end of inner class FloatDistributionObj

    static class IntDistributionObj extends DistributionObj implements Serializable {

        TreeMap intCounts = new TreeMap();  //  Integer => Counter
        int sumOfVals = 0, n = 0;

        public IntDistributionObj() {
        }  //  0-arg constructor

        public IntDistributionObj(BufferedReader file) throws JavaSystemException {
            String line;
            try {
                line = file.readLine();
            } catch (IOException ioe) {
                throw new JavaSystemException("Error while reading distribution files:\n" + ioe);
            }
            int start = line.indexOf("[") + 1, middle,
                    listEnd = line.indexOf("]\t"),
                    item = line.indexOf(",");
            if (item == -1) {
                item = listEnd;
            }
            if (start == 0 || listEnd == -1) {
                throw new JavaSystemException("Corrupted format for IntDistribution file: " + file);
            }
            while (start < listEnd) {
                values.add(new Integer(line.substring(start, item)));
                start = item + 1;
                item = line.indexOf(",", start);
                if (item == -1 || item > listEnd) {
                    item = listEnd;
                }
            }  //  end of loop reading values
            start = listEnd + 2;
            listEnd = line.indexOf("\t", start);
            sumOfVals = Integer.parseInt(line.substring(start, listEnd));
            start = line.indexOf("((") + 2;
            middle = line.indexOf(" = ", start);
            item = line.indexOf(",", middle);
            listEnd = line.indexOf("))");
            if (start == 1 || listEnd == -1) {
                throw new JavaSystemException("Corrupted format for IntDistribution file: " + file);
            }
            while (start < listEnd) {
                Integer num = new Integer(line.substring(start, middle));
                Counter ctr = new Counter();
                ctr.incr(Integer.parseInt(line.substring(middle + 3, item)));
                intCounts.put(num, ctr);
                start = item + 1;
                middle = line.indexOf(" = ", start);
                item = line.indexOf(",", middle);
            }  //  end of loop reading symbolCounts
            start = listEnd + 3;
            n = Integer.parseInt(line.substring(start).trim());
        }  //  end of constructor from file

        public void add(int num) {
            Integer number = new Integer(num);
            values.add(number); //  for de-bugging purposes, to see sequence of values added
            sumOfVals += num;
            n++;
            if (intCounts.get(number) == null) {
                intCounts.put(number, new Counter());
            }
            ((Counter) intCounts.get(number)).incr();
        }  //  end of method add()

        public float mean() {
            return ((float) sumOfVals / n);
        }

        public void writeToFile(PrintWriter file) {
            file.print("[");
            file.print(values.get(0));
            for (int i = 1; i < values.size(); i++) {
                file.print("," + values.get(i));
            }
            file.print("]\t");
            file.print(sumOfVals + "\t");
            file.print("((");
            Iterator iter = intCounts.entrySet().iterator();
            while (iter.hasNext()) {
                Map.Entry entry = (Map.Entry) iter.next();
                file.print(entry.getKey() + " = " + entry.getValue() + ",");
            }
            file.print("))\t");
            file.print(n + "\t");
            file.flush();
            file.close();
        }  //  end of method writeToFile

        public int freq(int num) { //  how often this int appears in the distribution
            if (intCounts.get(new Integer(num)) == null) {
                return 0;
            } else {
                return ((Counter) intCounts.get(new Integer(num))).total();
            }
        }  // end of method freq

        public float probability(int num) {  //  what percentage of all observations is this num
            return (float) freq(num) / n;
        }  //  end of method probability/1

        public float probability(int num1, int num2) {  //  what percentage of observations are in this range
            int total = 0, lo, hi;
            if (num1 > num2) {
                lo = num2;
                hi = num1;
            } else {
                lo = num1;
                hi = num2;
            }
            for (int i = lo; i <= hi; i++) {
                total += freq(i);
            }
            return (float) total / n;
        }  //  end of method probability/2
    }  //  end of inner class IntDistributionObj

    static class SymbolDistributionObj extends DistributionObj implements Serializable {

        TreeMap symbolCounts = new TreeMap();
        int n = 0;

        public SymbolDistributionObj() {
        }  //  0-arg constructor

        public SymbolDistributionObj(BufferedReader file) throws JavaSystemException {
            String line;
            try {
                line = file.readLine();
            } catch (IOException ioe) {
                throw new JavaSystemException("Error while reading distribution files:\n" + ioe);
            }
            int start = line.indexOf("[") + 1, middle,
                    listEnd = line.indexOf("]\t"),
                    item = line.indexOf("\t");
            if (item == -1 || item > listEnd) {
                item = listEnd;
            }
            if (start == 0 || listEnd == -1) {
                throw new JavaSystemException("Corrupted format for SymbolDistribution file: " + file);
            }
            while (start < listEnd) {
                values.add(line.substring(start, item));
                start = item + 1;
                item = line.indexOf("\t", start);
                if (item == -1 || item > listEnd) {
                    item = listEnd;
                }
            }  //  end of loop reading values
            start = line.indexOf("((") + 2;
            middle = line.indexOf(" = ", start);
            item = line.indexOf(",", middle);
            listEnd = line.indexOf("))");
            if (start == 1 || listEnd == -1) {
                throw new JavaSystemException("Corrupted format for SymbolDistribution file: " + file);
            }
            while (start < listEnd) {
                String symbol = line.substring(start, middle);
                Counter ctr = new Counter();
                ctr.incr(Integer.parseInt(line.substring(middle + 3, item)));
                symbolCounts.put(symbol, ctr);
                start = item + 1;
                middle = line.indexOf(" = ", start);
                item = line.indexOf(",", middle);
            }  //  end of loop reading symbolCounts
            start = listEnd + 3;
            n = Integer.parseInt(line.substring(start).trim());
        }  //  end of constructor from file

        public void addAll(ArrayList<Object> symbols) {
            for (int i = 0; i < symbols.size(); i++) {
                add((String) symbols.get(i));
            }
        }  //  end of method addAll

        public void addAll(TreeSet items) {  //  Assumes set members are Strings.
            Iterator iter = items.iterator();
            while (iter.hasNext()) {
                add((String) iter.next());
            }
        }  //  end of method addAll

        public void add(String symb) {
            values.add(symb); //  for de-bugging purposes, to see sequence of values added
            n++;
            if (symbolCounts.get(symb) == null) {
                symbolCounts.put(symb, new Counter());
            }
            ((Counter) symbolCounts.get(symb)).incr();
        }  //  end of method add()

        public float mean() {
            return 0f;
        }  // a silly answer to a silly question!!

        public void writeToFile(PrintWriter file) {
            file.print("[");
            file.print(values.get(0));
            for (int i = 1; i < values.size(); i++) {
                file.print("\t" + values.get(i));
            }
            file.print("]\t");
            file.print("((");
            Iterator iter = symbolCounts.entrySet().iterator();
            while (iter.hasNext()) {
                Map.Entry entry = (Map.Entry) iter.next();
                file.print(entry.getKey() + " = " + entry.getValue() + ",");
            }
            file.print("))\t");
            file.print(n + "\t");
            file.flush();
            file.close();
        }  //  end of method writeToFile

        public int freq(String symb) { //  how often this symbol appears in the distribution
            if (symbolCounts.get(symb) == null) {
                return 0;
            } else {
                return ((Counter) symbolCounts.get(symb)).total();
            }
        }  // end of method freq

        public float probability(String symb) {  //  what percentage of all observations is this symbol
            return (float) freq(symb) / n;
        }  //  end of method probability
    }  //  end of inner class SymbolDistributionObj

    /*  This zero-arg constructor is for general use and by Serialization.  */
    FeatureVectorObj() {
    }

    FeatureVectorObj(BufferedReader file) throws JavaSystemException {
        int num, comma, start;
        try {
            String line = file.readLine();
            languageName = line.trim();
            line = file.readLine();
            addressTerms = Boolean.valueOf(line).booleanValue();
            line = file.readLine();
            fvID = Integer.parseInt(line);
            line = file.readLine();
            genSkewing = Boolean.valueOf(line).booleanValue();
            line = file.readLine();
            percentRecip = Float.parseFloat(line);
            line = file.readLine();
            percentMultiGen = Float.parseFloat(line);
            line = file.readLine();
            ivcList = parseList(line, true);
            line = file.readLine();
            hcvcList = parseList(line, true);
            line = file.readLine();
            avgLateralCount = Float.parseFloat(line);
            line = file.readLine();
            stepTerms = Boolean.valueOf(line).booleanValue();
            line = file.readLine();
            udps = Boolean.valueOf(line).booleanValue();
            line = file.readLine();
            exactSigSet = new TreeSet(parseList(line, false));
            line = file.readLine();
            structSigSet = new TreeSet(parseList(line, false));
        } catch (NumberFormatException e) {
            throw new JavaSystemException("Can't construct Feature Vector: corrupted File.\n" + e);
        } catch (IOException iox) {
            throw new JavaSystemException("Can't construct Feature Vector: corrupted File.\n" + iox);
        }
    }  //  end of constructor from file

    public ArrayList<Object> parseList(String line, boolean parens) {
        //  line will look like '[item1<target><space>item2<target><space>...item99]
        ArrayList<Object> answer = new ArrayList<Object>();
        int comma, start = 1, pad = (parens ? 1 : 0);
        String target = (parens ? ")," : ","), item;
        comma = line.indexOf(target) + pad;
        while (comma > start) {
            item = line.substring(start, comma);
            answer.add(item);
            start = comma + 2;
            comma = line.substring(start).indexOf(target) + start + pad;
        }  //  end of while comma > start
        //  Now capture last item before ']'
        item = line.substring(start, line.length() - 1);
        if (item.length() > 0) {
            answer.add(item);
        }
        return answer;
    }  //  end of method parseList

    public String toString() {
        String str = "Feature Vector for " + languageName;
        str += "\n0: Generational Skewing = ";
        if (genSkewing) {
            str += "Yes";
        } else {
            str += "No";
        }
        str += "\n1: Percent Reciprocal Terms = " + percentRecip + "%";
        str += "\n2: Percent Multi-Generational Terms = " + percentMultiGen + "%";
        str += "\n3: Constraints on Linking Kinsmen = ";
        if (0 < ivcList.size()) {
            str += ivcList;
        } else {
            str += " None ";
        }
        str += "\n4: Constraints on Ego & Alter = ";
        if (0 < hcvcList.size()) {
            str += hcvcList;
        } else {
            str += " None ";
        }
        str += "\n5: Average Lateral Count = " + avgLateralCount;
        str += "\n6: Explicit Terms for Half/Step-Kin = ";
        if (stepTerms) {
            str += "Yes";
        } else {
            str += " None ";
        }
        str += "\n7: User-Defined Properties = ";
        if (udps) {
            str += "Present";
        } else {
            str += " None ";
        }
        str += "\n8: Exact EQCs used: " + exactSigSet.size();
        str += "\n9: Structural EQCs used:";
        Iterator sigIter = structSigSet.iterator();
        while (sigIter.hasNext()) {
            str += "\n\t" + sigIter.next();
        }
        return str + "\n";
    }  //  end of over-riding method toString

    public void toDisk(PrintWriter outFile) throws IOException {
        outFile.println(languageName);
        outFile.println(addressTerms);
        outFile.println(fvID);
        outFile.println(genSkewing);
        outFile.println(percentRecip);
        outFile.println(percentMultiGen);
        outFile.println(ivcList);
        outFile.println(hcvcList);
        outFile.println(avgLateralCount);
        outFile.println(stepTerms);
        outFile.println(udps);
        outFile.println(exactSigSet);
        outFile.println(structSigSet);
        outFile.flush();
        outFile.close();
    }  //  end of method toDisk

    /**
    Compare this feature vector with another one feature-by-feature.  Call a method to compare
    each feature based on the type of that feature.

    @param  fv2		the other feature vector.
    @return    a float array containing all the similarity scores.
     */
    public float[] computeSimilarity(FeatureVectorObj fv2) {
        float[] answer = new float[Library.clSt.numberOfFeatures];
        ArrayList<Object> list1 = new ArrayList<Object>(exactSigSet),
                list2 = new ArrayList<Object>(fv2.exactSigSet);
        answer[0] = (((genSkewing && fv2.genSkewing) || (!genSkewing && !fv2.genSkewing)) ? 1 : 0);
        answer[1] = floatSim(percentRecip, fv2.percentRecip, el_1_distn);
        answer[2] = floatSim(percentMultiGen, fv2.percentMultiGen, el_2_distn);
        answer[3] = litListSim(ivcList, fv2.ivcList, el_3_distn);
        answer[4] = litListSim(hcvcList, fv2.hcvcList, el_4_distn);
        answer[5] = floatSim(avgLateralCount, fv2.avgLateralCount, el_5_distn);
        answer[6] = (((stepTerms && fv2.stepTerms) || (!stepTerms && !fv2.stepTerms)) ? 1 : 0);
        answer[7] = (((udps && fv2.udps) || (!udps && !fv2.udps)) ? 1 : 0);
        answer[8] = litListSim(list1, list2, el_8_distn);
        list1 = new ArrayList<Object>(structSigSet);
        list2 = new ArrayList<Object>(fv2.structSigSet);
        answer[9] = litListSim(list1, list2, el_9_distn);
        /*		//  DeBug code
        String str = "\n" + languageName;
        str += " vs. " + fv2.languageName;
        System.out.println(str);
        str = "[ " + answer[0];
        for (int i=1; i < 10; i++) str += ", " + answer[i];
        System.out.println(str + "]");
         */
        return answer;
    }  //  end of method computeSimilarity

    /**
    Compare this HeadClauseVariableConstraint list (of {@link Literal}s in standard form)  with another,
    using Lin's similarity metric.

    @param  hcvc1   this hcvc list.
    @param  hcvc2   the other hcvc list.
    @return    a float = the similarity score.
     */
    float litListSim(ArrayList<Object> listA, ArrayList<Object> listB, SymbolDistributionObj distn) {

        //  Similarity(list1, list2) =   (2 * I(set-intersection of list1, list2))
        //								-------------------------------------------
        //											I(list1) + I(list2)
        //
        //  I(a list) = - Sum_for_all_lits of log( This_LitFrequency / TotalLitCount )
        //
        //  note: should be log-base-2, but since the ratio is taken, I can use natural logs.
        if ((listA.isEmpty()) && (listB.isEmpty())) {
            return 1f;
        }
        if ((listA.isEmpty()) || (listB.isEmpty())) {
            return 0f;
        }
        ArrayList<Object> list1, list2;
        if (listA.size() > listB.size()) {
            list1 = listB;
            list2 = listA;
        } //  end of B-is-smaller
        else {
            list1 = listA;
            list2 = listB;
        }  //  end of A-is-smaller
        float answer, intersectVal = 0f, list1Val = 0f, list2Val = 0f;
        ArrayList<Object> intersect = new ArrayList<Object>(), copy2 = new ArrayList<Object>(list2);
        int where;
        String litImage;
        for (int i = 0; i < list1.size(); i++) {
            where = copy2.indexOf(list1.get(i));
            if (where > -1) { // matching canonical String in copy2
                intersect.add(copy2.get(where));
                copy2.remove(where);
            }  //  end of if-a-match-was-found
        }  //  end of loop thru literals in list1
        //  Compute I(set_intersection)
        for (int i = 0; i < intersect.size(); i++) {
            litImage = (String) intersect.get(i);
            intersectVal -= Math.log(distn.probability(litImage));
        }  //  end of summation for all lits in the intersection
        //  Compute I(list1)
        //  If all of list1 is in the intersection (i.e. both lists are same size)
        //  then the total must be the same.
        if (intersect.size() == list1.size()) {
            list1Val = intersectVal;
        } else {
            for (int i = 0; i < list1.size(); i++) {
                litImage = (String) list1.get(i);
                list1Val -= Math.log(distn.probability(litImage));
            }  //  end of summation for all lits in list1
        }		//  Compute I(list2)
        if (intersect.size() == list2.size()) {
            list2Val = intersectVal;
        } else {
            for (int i = 0; i < list2.size(); i++) {
                litImage = (String) list2.get(i);
                list2Val -= Math.log(distn.probability(litImage));
            }  //  end of summation for all lits in list2
        }
        answer = (2 * intersectVal) / (list1Val + list2Val);
        return answer;
    }  //  end of method litListSim

    /**
    Compare the 2 integer values using Lin's similarity metric.

    @param  num1   this int.
    @param  num2   the other int.
    @param  distribution   an array of ints = the number of occurences of each value.  dist'n[4] = number of 4's seen
    @return    a float = the similarity score.
     */
    float intSim(int num1, int num2, IntDistributionObj distn) {
        //
        //  Similarity(int1, int2) =   (2 * I(range-from-int1-to-int2))
        //								-------------------------------
        //									I(int1) + I(int2)
        //
        //  I(an int range) = - log[ Sum_for_all_ints_in_range of( This_IntFrequency / TotalCount ) ]
        //
        //  Note1: should be log-base-2, but since the ratio is taken, I use natural logs.
        //
        //  Note2:  These may be positive or negative numbers
        //
        double iRange = Math.log(distn.probability(num1, num2));
        double iNum1 = Math.log(distn.probability(num1));
        double iNum2 = Math.log(distn.probability(num2));
        double answer = (2 * iRange) / (iNum1 + iNum2);
        return (float) answer;
    }  //  end of method intSim

    /**
    Compare the 2 float values using Lin's similarity metric.

    @param  flt1   this float.
    @param  flt2   the other float.
    @param  distn  the distribution of floats for this FeatureVector element, from which these 2 numbers came
    @return    a float = the similarity score.
     */
    float floatSim(float flt1, float flt2, FloatDistributionObj distn) {
        double num1, num2, epsilon = (distn.stdDev() / 8), iCommon, iNum1, iNum2, score;
        //
        //  Similarity(num1, num2) =   (2 * I(range:num1-minus-epsilon-to-num2-plus-epsilon))
        //							 ------------------------------------------------------------------------
        //					I(num1-minus-epsilon-to-num1-plus-epsilon) + I(num2-minus-epsilon-to-num2-plus-epsilon)
        //
        //  where:  I(range: R1 to R2) = - log[ phiScore(R2) - phiScore(R1) ]
        //
        //  Note1: phiScore(x) = % of the (presumed normal) distribution curve to left of x.
        //
        //  Note2: Should be using log-base-2, but since it's a ratio, it doesn't matter.
        //
        //  Note3: Epsilon is arbitrarily set at 1/8th of the standard deviation.
        //
        //  Note4: It is possible to get a distribution containing all the same number (e.g. all zeroes).
        //		   Using the normal formula breaks down in that case, but we know that when all the numbers
        //		   are the same, the similarity must = 1.0.  So shortstop that situation.

        if (flt2 == flt1) {
            return 1.0f;
        }
        if (flt2 < flt1) {
            num1 = (double) flt2;
            num2 = (double) flt1;
        } //  end of switch-em
        else {
            num1 = (double) flt1;
            num2 = (double) flt2;
        }  // end of don't-switch-em
        iCommon = Math.log(phiScore((num2 + epsilon), distn) - phiScore((num1 - epsilon), distn));
        iNum1 = Math.log(phiScore((num1 + epsilon), distn) - phiScore((num1 - epsilon), distn));
        iNum2 = Math.log(phiScore((num2 + epsilon), distn) - phiScore((num2 - epsilon), distn));
        score = (2 * iCommon) / (iNum1 + iNum2);
        return (float) score;
    }  //  end of method floatSim

    /**
    Implements a standard look-up table of values for the percent of the distribution area to the left
    of a value.

    @param  num   a real number drawn from the distribution.
    @param  distn  the distribution of floats for this FeatureVector element, including num
    @return    the statistical Phi-score.  Taken from the table in a standard textbook
    (Jay L. Devore, Probability & Statistics 5, Pacific Grove CA, Duxbury)
     */
    public double phiScore(double num, FloatDistributionObj distn) {
        double answer, norm = (num - distn.mean()) / distn.stdDev();
        int cell;
        if (norm >= 0) {
            norm += 0.005;  // for rounding
            cell = (int) Math.floor(norm * 100);
            cell = Math.min(cell, 349);
            answer = zTable[cell];
        } // end of larger-than-zero
        else {
            norm -= 0.005;
            cell = (int) Math.floor(norm * -100);
            cell = Math.min(cell, 349);
            answer = 1.0d - zTable[cell];
        }  //  end of less-than-zero
        return answer;
    }  //  end of method phiScore
}  //  end of class FeatureVectorObj

