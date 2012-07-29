

import java.util.*;
import java.io.*;

/** A <code>DyadTMap</code> contains a normal TreeMap and has 1 convenience method, <code>dyAdd</code>, which type-checks
items added to the TreeMap (only {@link Dyad}s allowed) and stores them indexed by kin term & PCString.
 *
 * The DyadTMap itself is a 2-level TMap: kinTerm -> pcString -> AList of Dyads
 * It is where we store all the Dyads gathered for an entire context (language).
 * So all dyads for 'uncle' are stored under the index term 'uncle.'
 * Within the group of 'uncle' dyads, we further index them on kinType
 * (specifically on pcString). So all the 'uncle' dyads are indexed under
 * 'FaBro' or 'MoBro'. Etc.

@author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
 */
public class DyadTMap extends TreeMap implements Serializable {

    /**  The total number of dyads in this TreeMap.  */
    public int total = 0;

//    public DyadTMap() {  }
//
//    public DyadTMap(DyadTMap model) {
//        return model.clone();
//    }

    public int total() {
        return DT_Abstract1.countLeaves(this);
    }

    /**  Add this Dyad to the TreeMap.
    @param  item  the Dyad to be added.  */
    public void dyAdd(Dyad item) {
        if (item.kinTerm.equals("Ego")) {
            return;	//	'Ego' is not a kin term -- it just marks ego
        }
        if (get(item.kinTerm) == null) {
            put(item.kinTerm, new TreeMap());
            if (EditTheoryFrame.current != null) {
                EditTheoryFrame.current.dirty = true;
            }
        }
        TreeMap termTM = (TreeMap) get(item.kinTerm);
        if (termTM.get(item.pcString) == null) {
            termTM.put(item.pcString, new ArrayList<Object>());
        }
        ArrayList<Object> dyList = (ArrayList<Object>)termTM.get(item.pcString);
        if (nonDuplicate(item, dyList)) dyList.add(item);
    }  //  end of method dyAdd


    static boolean nonDuplicate(Dyad item, ArrayList<Object> dyList) {
        for (Object o : dyList) {
            Dyad dy = (Dyad)o;
            if (dy.ego == item.ego && dy.alter == item.alter) {
                return false;
            }
        }
        return true;
    }

    /**  If this dyad is already present, replace with this one.
     *   Otherwise, add this dyad to the DyadTMap.
    @param  item  the Dyad to be inserted.  */
    public void dyAddOrUpdate(Dyad item) {
        if (item.kinTerm.equals("Ego")) {
            return;	//	'Ego' is not a kin term -- it just marks ego
        }
        if (get(item.kinTerm) == null) {
            put(item.kinTerm, new TreeMap());
            if (EditTheoryFrame.current != null) {
                EditTheoryFrame.current.dirty = true;
            }
        }
        TreeMap termTM = (TreeMap) get(item.kinTerm);
        if (termTM.get(item.pcString) == null) {
            termTM.put(item.pcString, new ArrayList<Object>());
        }
        ArrayList<Object> dyadList = (ArrayList<Object>)termTM.get(item.pcString);
        int ndx = findExistingDyad(dyadList, item);
        if (ndx == -1) {
            dyadList.add(item);
        }
        else dyadList.set(ndx, item);
    }  //  end of method dyAddOrUpdate

    
    public ArrayList<Dyad> findDyadList(Dyad dy) {
        TreeMap subTree = (TreeMap)get(dy.kinTerm);
        ArrayList<Dyad> dyList = new ArrayList<Dyad>();
        if (subTree == null) {
            return dyList;
        }
        ArrayList<Object> list = (ArrayList<Object>)subTree.get(dy.pcString);
        if (list == null) {
            return dyList;
        }
        for (Object o : list) {
            dyList.add((Dyad)o);
        }
        return dyList;
    }
    
    int findExistingDyad(ArrayList<Object> dyadList, Dyad item) {
        for (int ndx = 0; ndx < dyadList.size(); ndx++) {
            Dyad cand = (Dyad)dyadList.get(ndx);
            if (cand.ego.serialNmbr == item.ego.serialNmbr &&
                cand.alter.serialNmbr == item.alter.serialNmbr &&
                cand.kinTerm.equals(item.kinTerm)) {
                return ndx;
            }
        }
        return -1;
    }

    /**  A special remove method that overrides <code>TreeMap</code>'s method; it adjusts <code>total</code>.
    
    @param  key  the key for the sub-tree to be removed.  */
    public Object remove(String key) {
        TreeMap subTree = (TreeMap) super.remove(key);
        return subTree;
    }  //  end of overriding method remove

    /**  A special put method that overrides <code>TreeMap</code>'s method; it adjusts <code>total</code>.
    If there is a prior sub-tree associated with <code>key</code>, it is replaced with the new one.
    The number of dyads in the prior sub-tree is subtracted from <code>total</code> before the
    number in the new one is added.
    
    @param  key		the key for the sub-tree to be put into this TreeMap.
    @param  subTree	the sub-tree to be inserted.	*/
    public Object put(String key, TreeMap subTree) {
        Object oldVal = super.put(key, subTree);
        return oldVal;
    }  //  end of overriding method put
    

    void removeDyad(String kinTerm, String pcString, Individual ego,
                        Individual alter, DomainTheory dt) {
        TreeMap termTM = (TreeMap) get(kinTerm);
        if (termTM == null && dt.synonyms != null && dt.synonyms.get(kinTerm) != null) {
            //  If it's a synonym, all dyads may have already been moved to base term
            String synTerm = (String) dt.synonyms.get(kinTerm);
            termTM = (TreeMap) get(synTerm);
        }
        if (termTM == null) {
            return;
        }
        ArrayList<Object> dyList = (ArrayList<Object>) termTM.get(pcString);
        if (dyList == null) {
            return;
        }
        Iterator dyIter = dyList.iterator();
        while (dyIter.hasNext()) {
            Dyad dy = (Dyad)dyIter.next();
            if (dy.ego == ego && dy.alter == alter) {
                dyIter.remove();
                break;
            }
        }
        if (dyList.isEmpty()) {
            termTM.remove(pcString);
        }
        if (termTM.isEmpty()) {
            remove(kinTerm);
            if (EditTheoryFrame.current != null) {
                EditTheoryFrame.current.dirty = true;
            }
        }
    }  //  end of method removeDyad


    boolean removeDyad(Dyad dy, DomainTheory lrnDT) {
        TreeMap termTM = (TreeMap) get(dy.kinTerm);
        if (termTM == null && lrnDT.synonyms != null && lrnDT.synonyms.get(dy.kinTerm) != null) {
            //  If it's a synonym, all dyads may have already been moved to base term
            String synTerm = (String) lrnDT.synonyms.get(dy.kinTerm);
            termTM = (TreeMap) get(synTerm);
        }
        if (termTM == null) {
            return false;
        }
        ArrayList<Object> dyList = (ArrayList<Object>) termTM.get(dy.pcString);
        if (dyList == null) {
            return false;
        }
        int where = dyList.indexOf(dy);
        if (where == -1) {
            return false;
        }
        dyList.remove(where);
        if (dyList.isEmpty()) {
            termTM.remove(dy.pcString);
        }
        System.out.println("\t\t***********   Removed a bad Dyad: " + dy);
        return true;
    }  //  end of method removeDyad
    
    
    public void removeDyad(DomainTheory dt, int egoInt, int alterInt, String term, String pcString) {
        TreeMap termTM = (TreeMap) get(term);
        if (termTM == null && dt.synonyms != null && dt.synonyms.get(term) != null) {
            //  If it's a synonym, all dyads may have already been moved to base term
            String synTerm = (String) dt.synonyms.get(term);
            termTM = (TreeMap) get(synTerm);
        }
        if (termTM == null) {
            return;
        }
        ArrayList<Object> dyList = (ArrayList<Object>) termTM.get(pcString);
        if (dyList == null) {
            return;
        }
        Individual ego = Context.current.individualCensus.get(egoInt),
                   alter = Context.current.individualCensus.get(alterInt);
        Dyad target = null;
        for (Object o : dyList) {
            Dyad dy = (Dyad)o;
            if (dy.ego == ego && dy.alter == alter) {
                target = dy;
                break;
            }
        }
        if (target != null) {
            dyList.remove(target);
        }
    }
    
    /**Iterate thru all dyads, removing any that refer to a person with
     * this serial number or higher.
     * 
     * @param personNmbr        the lowest serial number to be purged
     */
    public void purgeDyads(int personNmbr) {
        Iterator termIter = values().iterator();
        while (termIter.hasNext()) {
            TreeMap tm = (TreeMap) termIter.next();
            Iterator pcStrIter = tm.values().iterator();
            while (pcStrIter.hasNext()) {
                ArrayList alist = (ArrayList) pcStrIter.next();
                Iterator dyIter = alist.iterator();
                while (dyIter.hasNext()) {
                    Dyad dy = (Dyad) dyIter.next();
                    if (dy.ego.serialNmbr >= personNmbr
                            || dy.alter.serialNmbr >= personNmbr) {
                        dyIter.remove();
                    }
                }
                if (alist.isEmpty()) {
                    pcStrIter.remove();
                }
            }
            if (tm.isEmpty()) {
                termIter.remove();
            }
        }
    }  //  end of method purgeDyads

    /**  Integrate all the dyads in <code>otherMap</code> into this one.    
        @param  otherMap   the DyadTMap to be assimilated. */
    public void assimlate(DyadTMap otherMap) {
        Iterator termIter = otherMap.entrySet().iterator();
        while (termIter.hasNext()) {
            Map.Entry entry = (Map.Entry) termIter.next();
            String otherKinterm = (String) entry.getKey();
            TreeMap otherTerMap = (TreeMap) entry.getValue();
            if (!this.containsKey(otherKinterm)) {
                put(otherKinterm, otherTerMap);
            } else {  //  must merge the 2 entries
                TreeMap thisTerMap = (TreeMap) remove(otherKinterm);
                put(otherKinterm, DomainTheory.mergeTrees(thisTerMap, otherTerMap));
            }
        }  //  end of loop thru otherMap's keys
    }  //  end of method assimlate

    public DyadTMap convertToAdr() {
        DyadTMap newMap = new DyadTMap();
        Iterator kinTermIter = entrySet().iterator();
        while (kinTermIter.hasNext()) {
            Map.Entry entry = (Map.Entry) kinTermIter.next();
            String kinTerm = (String) entry.getKey();
            TreeMap subTree = (TreeMap) entry.getValue();
            TreeMap newSubTree = new TreeMap();
            newMap.put(kinTerm, newSubTree);
            Iterator kinTypeIter = subTree.entrySet().iterator();
            while (kinTypeIter.hasNext()) {
                Map.Entry subEntry = (Map.Entry) kinTypeIter.next();
                String kinType = (String) subEntry.getKey();
                ArrayList dyads = (ArrayList) subEntry.getValue();
                ArrayList adrDyads = new ArrayList();
                newSubTree.put(kinType, adrDyads);
                for (Object o : dyads) {
                    Dyad dy = (Dyad) o;
                    Dyad newDy = new Dyad(dy);
                    newDy.addrOrRef = Dyad.ADDR;
                    adrDyads.add(newDy);
                }
            }
        }
        return newMap;
    }

    /**  This method builds a string that represents a DyadTMap in a SILKin data (_.silk) file.   */
    public String toSILKString() {
        String result = "";
        Iterator termIter = entrySet().iterator();
        while (termIter.hasNext()) {
            Map.Entry entry = (Map.Entry) termIter.next();
            String kinterm = (String) entry.getKey();
            TreeMap kinTypeMap = (TreeMap) entry.getValue();
            result += "<dyadKinTerm kinTerm=\"" + kinterm + "\">\n";
            Iterator typIter = kinTypeMap.entrySet().iterator();
            while (typIter.hasNext()) {
                Map.Entry typEntry = (Map.Entry) typIter.next();
                String kinType = (String) typEntry.getKey();
                result += "\t<kinType type=\"" + kinType + "\">\n";
                ArrayList<Object> dyList = (ArrayList<Object>) typEntry.getValue();
                for (int d = 0; d < dyList.size(); d++) {
                    result += ((Dyad) dyList.get(d)).toSILKString();
                }
                result += "\t</kinType>\n";
            }  //  end of loop thru kin types
            result += "</dyadKinTerm>\n";
        }  //  end of loop thru kin terms
        return result;
    }  //  end of method toSILKString

    /**  <code>summaryString</code> builds a printable table of the contents .  
    
    @return     the string. */
    public String summaryString() throws KSInternalErrorException {
        String image = "", header = "";
        int size,
                totals = 0;
        String kinTerm, spacer = "                            ";
        if (size() > 0) {
            header += "\n\n* * * * * * * * * *   Dyads by KinTerm & PCString   * * * * * * * * * *\n";
            header += "KinTerm                     PCString                Nmbr of Dyads\n";
            header += "=================================================================\n";
            Iterator iter = entrySet().iterator();
            while (iter.hasNext()) {
                Map.Entry termEntry = (Map.Entry) iter.next();
                kinTerm = (String) termEntry.getKey();
                TreeMap termTM = (TreeMap) termEntry.getValue();  //  the values are TreeMaps
                if (termTM.isEmpty()) {
                    iter.remove();
                } else {
                    Iterator pcStrIter = termTM.entrySet().iterator();
                    Map.Entry pcStrEntry = (Map.Entry) pcStrIter.next();  //  first entry in the PCStr TMap
                    String pcStr = (String) pcStrEntry.getKey();
                    ArrayList<Object> dyList = (ArrayList<Object>) pcStrEntry.getValue();
                    size = dyList.size();
                    totals += size;
                    image += kinTerm + space(kinTerm) + pcStr + space(pcStr) + size + "  "
                            + sexCount(dyList, "M") + "M  " + sexCount(dyList, "F") + "F\n";
                    while (pcStrIter.hasNext()) {
                        pcStrEntry = (Map.Entry) pcStrIter.next();
                        pcStr = (String) pcStrEntry.getKey();
                        dyList = (ArrayList<Object>) pcStrEntry.getValue();
                        size = dyList.size();
                        totals += size;
                        image += spacer + pcStr + space(pcStr) + size + "  "
                                + sexCount(dyList, "M") + "M  " + sexCount(dyList, "F") + "F\n";
                    }  //  end of loop thru remaining PCStrs
                    image += "\n";
                }
            }  //  end of loop thru kinTerms map
        }  // end of there is something to display
        return header + image + spacer + spacer + "---\n" + spacer + spacer + totals;
    }  // end of method summaryString

    String space(String item) {
        String spacer = "";
        for (int i = 0; i < (28 - item.length()); i++) {
            spacer += " ";
        }
        return spacer;
    }  //  end of method space

    int sexCount(ArrayList<Object> dyList, String typ) {
        int count = 0;
        for (int i = 0; i < dyList.size(); i++) {
            if (((Dyad) dyList.get(i)).ego.gender.equals(typ)) {
                count++;
            }
        }
        return count;
    }  //  end of method sexCount

    public int nmbrOfDyads(String kTerm) {
        int total = 0;
        TreeMap termTM = (TreeMap) get(kTerm);
        Iterator listIter = termTM.values().iterator();
        while (listIter.hasNext()) {
            total += ((ArrayList<Object>) listIter.next()).size();
        }
        return total;
    }  //  end of method nmbrOfDyads

    public int avgDyadsPerPCStr(String kTerm) {
        //  Return the avg nmbr of dyads per PC_String, rounded
        //  to nearest int.
        TreeMap termTM = (TreeMap) get(kTerm);
        int total = 0,
                lists = termTM.size();
        if (lists == 0) {
            return 0;
        }
        Iterator listIter = termTM.values().iterator();
        while (listIter.hasNext()) {
            total += ((ArrayList<Object>) listIter.next()).size();
        }
        double avg = 0.5d + (total / lists);
        return (new Double(Math.floor(avg))).intValue();
    }
}  //  end of class DyadTMap

