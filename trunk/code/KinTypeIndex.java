import java.util.*;
import java.io.*;
import javax.swing.JOptionPane;

/**
 * A KinTypeIndex is CONCEPTUALLY a TreeMap with key = a kin type (aka PC-String) and value = an ArrayList of pairs.
 * A pair is a 2-element array of Integers = the serial numbers of Ego & Alter.
 * This index is maintained to allow quickly finding a pair of persons who exemplify a particular
 * structural relationship in Ego's family tree.
<br />
 * This index is used to create 'named-data-requests' for the user. If the Learning module needs some dyads
 * for a particular kin type to prove or disprove that a Library definition fits the user's data so far, it
 * will ask the User to produce 1-2 dyads for that kin type. If a pair of persons already exist in the
 * IndividualCensus who could be used, we generate a named-data-request.
<br />
 * In a future version, this index might be implemented as a database call.
 * For now, to make additions efficient, we implement this as a nested TreeMap:
 * kinType => egoSerial# => AList of AlterSerial#s
@author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
 */
public class KinTypeIndex implements Serializable {

    private TreeMap<String, TreeMap<Integer, ArrayList<Integer>>> tmap =
            new TreeMap<String, TreeMap<Integer, ArrayList<Integer>>>();
    
    /**  The highest serial number of a person when the index was last updated. */
    public int lastSerial = -1;

    public static ArrayList<String> predsInPriorityOrder = makePredList();

    public static ArrayList<String> makePredList() {
        ArrayList<String> preds = new ArrayList<String>();
        preds.add("Hu");
        preds.add("Wi");
        preds.add("Mo");
        preds.add("Fa");
        preds.add("So");
        preds.add("Da");
        preds.add("Bro");
        preds.add("Sis");
        preds.add("Hbro");
        preds.add("Hsis");
        preds.add("Stfa");
        preds.add("Stmo");
        preds.add("Stso");
        preds.add("Stda");
        preds.add("Stbro");
        preds.add("Stsis");
        preds.add("**");
        return preds;
    }

    /**
     * Add pointers to a pair of Integers, to be indexed on its kin type.
     * Screen for duplicates (i.e. make this a set).
     * @param kTyp  the kinType of this pair.
     * @param pair  a 2-element array of Integers: the serial numbers of Ego/Alter
     */
    public void addPair(String kTyp, Integer[] pair) {
        if (tmap.get(kTyp) == null) {
            tmap.put(kTyp, new TreeMap<Integer, ArrayList<Integer>>());
        }
        Integer ego = pair[0], alter = pair[1];
        TreeMap<Integer, ArrayList<Integer>> kinTypMap = tmap.get(kTyp);
        if (kinTypMap.get(ego) == null) kinTypMap.put(ego, new ArrayList<Integer>());
        ArrayList<Integer> alterList = kinTypMap.get(ego);
        if (! alterList.contains(alter)) alterList.add(alter);
    }

    /**
     * Put this list in the index.
     * @param kTyp  the key (kin type)
     * @param list  the list of pairs for this kin type
     */
    public void addList(String kTyp, ArrayList<Integer[]> list) {
        TreeMap<Integer, ArrayList<Integer>> egoMap =
                new TreeMap<Integer, ArrayList<Integer>>();
        for (Integer[] pair : list) {
            Integer ego = pair[0], alter = pair[1];
            if (egoMap.get(ego) == null) egoMap.put(ego, new ArrayList<Integer>());
            ArrayList<Integer> alterList = egoMap.get(ego);
            alterList.add(alter);
        }
        tmap.put(kTyp, egoMap);
    }

    /**
     * Returns the list of pairs indexed under this kin type (PC-String).
     * @param kinType   the kin type of a relationship
     * @return          a list of all pairs with that kin type.
     */
    public ArrayList<Integer[]> getList(String kinType) {
        ArrayList<Integer[]> result = new ArrayList<Integer[]>();
        TreeMap<Integer, ArrayList<Integer>> egoMap = tmap.get(kinType);
        if (egoMap == null) return result;
        Iterator iter = egoMap.entrySet().iterator();
        while (iter.hasNext()) {
            Map.Entry<Integer, ArrayList<Integer>> entry = 
                    (Map.Entry<Integer, ArrayList<Integer>>)iter.next();
            Integer ego = entry.getKey();
            ArrayList<Integer> alterList = entry.getValue();
            for (Integer integ : alterList) {
                Integer[] pair = { ego, integ };
                result.add(pair);
            } // end of loop thru list of alters
        } // end of loop thru kinTypMap
        return result;
    }

    /**
     * Removes this pair from the index if it is present.
     * @param kTyp the kinType of this pair.
     * @param pair a 2-element array of Integers: the serial numbers of Ego/Alter
     * @return  true if the node was present, or false if it was not.
     */
    public boolean removePair(String kTyp, Integer[] pair) {
        TreeMap<Integer, ArrayList<Integer>> egoMap = tmap.get(kTyp);
        if (egoMap == null) return false;
        Integer ego = pair[0], alter = pair[1];
        ArrayList<Integer> alterList = egoMap.get(ego);
        if (alterList == null) return false;
        boolean reply = alterList.remove(alter);
        if (alterList.isEmpty()) egoMap.remove(ego);
        if (egoMap.isEmpty()) tmap.remove(kTyp);
        return reply;
    }

    public boolean isEmpty() {
        return tmap.isEmpty();
    }

    /** Picking up where we left off last time, update the KinTypeIndex for this
     *  context by computing a PC String (kin type) for every pair of people
     *  in this population.
     *
     * @param ctxt  the Context containing the population to be updated.
     * @return      true if no anomalies encountered, or false if any kin types
     *              changed since the last calculation.
     */
    public boolean updateIndex(Context ctxt) {
        boolean oKay = true, hold, noSkips = true;
        SIL_Edit edwin = SIL_Edit.editWindow;
        int formerEgo = edwin.getCurrentEgo();
        KinTermMatrix ktm = ctxt.ktm;
        for (int i = lastSerial + 1; i < ctxt.individualCensus.size(); i++) {
            if (ctxt.individualCensus.get(i).deleted) {
                continue;
            }
            hold = edwin.changeEgo(i);
            TreeMap<Integer, Node> egoRow = ktm.getRow(i);
            if (egoRow != null && !egoRow.isEmpty()) {
                Iterator altIter = egoRow.entrySet().iterator();
                while (altIter.hasNext()) {
                    Map.Entry<Integer, Node> entry =
                            (Map.Entry<Integer, Node>) altIter.next();
                    Integer alter = entry.getKey();
                    Node nod = entry.getValue();
                    String kinTyp = (nod.pcString == null ? "" : nod.pcString);
                    if (kinTyp.length() > 0) {
                        Integer[] pair = {i, alter};
                        addPair(kinTyp, pair);
                        if (i > alter) { // we won't encounter alter's row later
                            Node recipNode = new Node();
                            nod.invertMiniPredsAndPCStringFor(recipNode);
                            pair[0] = alter;
                            pair[1] = i;
                            addPair(recipNode.pcString, pair);
                        }
                    }
                }
                if (noSkips) lastSerial = i;
                if (!hold) {
                    oKay = false;
                }
            }else {
                noSkips = false;
            }
        }
        removeDuplicates();
        edwin.changeEgo(formerEgo);
        return oKay;
    }
    
    /**For each Ego/Alter pair represented in the Row, make a KTI entry
     * 
     * @param egoInt    Serial number of the Ego in the row
     * @param row       Ego's row from the KinTermMAtrix
     */
    public void updateFromRow(Integer egoInt, TreeMap row) {
        Iterator altIter = row.entrySet().iterator();
        while(altIter.hasNext()) {
            Map.Entry entry = (Map.Entry)altIter.next();
            Integer altInt = (Integer)entry.getKey();
            if (egoInt == altInt) {
                continue;  // no entry to self-nodes
            }
            Node n = (Node)entry.getValue();
            String kinType = n.pcString;
            if (tmap.get(kinType) == null) {
                tmap.put(kinType, new TreeMap<Integer, ArrayList<Integer>>());
            }
            TreeMap<Integer, ArrayList<Integer>> typeTree = tmap.get(kinType);
            if (typeTree.get(egoInt) == null) {
                typeTree.put(egoInt, new ArrayList<Integer>());
            }
            ArrayList<Integer> altList = typeTree.get(egoInt);
            if (altList != null && !altList.contains(altInt)) {
                altList.add(altInt);
            }
        }
    }
    

    void removeDuplicates() {
        // Create a TMap for sorting all entries in the KTI
        TreeMap<Integer, TreeMap<Integer, ArrayList<String>>> sorTree
                = new TreeMap<Integer, TreeMap<Integer, ArrayList<String>>>();
        // Iterator through all KTI entries, posting them to the sort Tree
        Integer egoInt, alterInt;
        String kTyp;
        Iterator ktIter = tmap.entrySet().iterator();
        while (ktIter.hasNext()) {
            Map.Entry entry1 = (Map.Entry)ktIter.next();
            kTyp = (String)entry1.getKey();
            TreeMap<Integer, ArrayList<Integer>> egoMap =
                    (TreeMap<Integer, ArrayList<Integer>>)entry1.getValue();
            Iterator egoIter = egoMap.entrySet().iterator();
            while (egoIter.hasNext()) {
                Map.Entry entry2 = (Map.Entry)egoIter.next();
                egoInt = (Integer)entry2.getKey();
                for (Integer alt : (ArrayList<Integer>)entry2.getValue()) {
                    postToSortTree(sorTree, kTyp, egoInt, alt);
                }
            } // end of loop thru inner TMap
        } // end of loop thru outer TMap
        // Iterate thru Sort Tree in natural order
        Iterator egoIter = sorTree.entrySet().iterator();
        while (egoIter.hasNext()) {
            Map.Entry entry1 = (Map.Entry)egoIter.next();
            egoInt = (Integer)entry1.getKey();
            TreeMap<Integer, ArrayList<String>> altTree =
                    (TreeMap<Integer, ArrayList<String>>) entry1.getValue();
            Iterator altIter = altTree.entrySet().iterator();
            while (altIter.hasNext()) {
                Map.Entry entry2 = (Map.Entry)altIter.next();
                alterInt = (Integer)entry2.getKey();
                ArrayList<String> typs = (ArrayList<String>)entry2.getValue();
                if (typs.size() < 2) continue;
                Integer[] pair = { egoInt, alterInt };
                String besTyp = pickBestKinType(typs);
                for (String typ : typs) {
                    if (! typ.equals(besTyp)) {
                        removePair(typ, pair);
                    }
                } // end of loop thru alternative kin types
            } // end of loop thru alters
        } // end of loop thru egos
    }

    void postToSortTree(TreeMap<Integer, TreeMap<Integer, ArrayList<String>>> sorTree,
            String kTyp, Integer egoInt, Integer altInt) {
        if (sorTree.get(egoInt) == null) 
            sorTree.put(egoInt, new TreeMap<Integer, ArrayList<String>>());
        TreeMap<Integer, ArrayList<String>> egoTree = sorTree.get(egoInt);
        if (egoTree.get(altInt) == null) 
            egoTree.put(altInt, new ArrayList<String>());
        ArrayList<String> altList = egoTree.get(altInt);
        altList.add(kTyp);
    }

    static String pickBestKinType(ArrayList<String> typs) {
        // Sort these by (PC) symbol count; pick the shortest
        String best;
        TreeMap<Integer, ArrayList<String>> sorter =
                new TreeMap<Integer, ArrayList<String>>();
        ArrayList<String> lst, ties = null;
        Integer num, siz;
        for (String typ : typs) {
            num = PersonPanel.symbolCount(typ);
            if (sorter.get(num) == null) sorter.put(num, new ArrayList<String>());
            lst = sorter.get(num);
            lst.add(typ);
        }
        // the first key is the numberOfKinTerms of the shortest kin type
        lst = sorter.get(sorter.firstKey());
        if (lst.size() == 1) return lst.get(0);
        // We have a tie; pick the highest-priority predicate (first symbol)
        // If tie remains, go to 2nd symbol, 3rd, etc.
        siz = PersonPanel.symbolCount(lst.get(0));
        for (int i = 0; i < siz; i++) {
            sorter = new TreeMap<Integer, ArrayList<String>>();
            for (String typ : lst) {
                String symbol = PersonPanel.getSymbolNumber(i, typ);
                num = predicatePriority(symbol);
                if (sorter.get(num) == null) sorter.put(num, new ArrayList<String>());
                sorter.get(num).add(typ);
            } // end of inner loop
            ties = sorter.get(sorter.firstKey());
            if (ties.size() ==1) break;
        } // end of outer loop
        return ties.get(0);
    }

    static Integer predicatePriority(String pred) {
        Integer priority = predsInPriorityOrder.indexOf(pred);
        if (priority < 0) {
            String msg = "Illegal predicate symbol '" + pred
                    + "' encountered in\nKinTypeIndex.predicatePriority().";
            MainPane.displayError(msg, "Report This Bug -- Use Activity Log", JOptionPane.ERROR_MESSAGE);
            return 20;
        }
        return priority;
    }

    public String toSILKString() {
        String img = "";
        Iterator iter1 = tmap.entrySet().iterator();
        while (iter1.hasNext()) {
            Map.Entry<String, TreeMap<Integer, ArrayList<Integer>>> entry =
                    (Map.Entry<String, TreeMap<Integer, ArrayList<Integer>>>)iter1.next();
            String kinType = entry.getKey();
            TreeMap<Integer, ArrayList<Integer>> egoMap = entry.getValue();
            img += "<entry kt=\"" + kinType + "\"> ";
            Iterator iter2 = egoMap.entrySet().iterator();
            while (iter2.hasNext()) {
                Map.Entry<Integer, ArrayList<Integer>> entry2 =
                        (Map.Entry<Integer, ArrayList<Integer>>)iter2.next();
                Integer ego = entry2.getKey();
                ArrayList<Integer> alterList = entry2.getValue();
                for (Integer alter : alterList) {
                    img += "<pair from=\"" + ego + "\" to=\"" + alter + "\" />";
                }
            }
            img += "</entry>\n";
        }
        return img;
    }
}
