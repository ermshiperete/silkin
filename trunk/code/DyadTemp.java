import java.util.ArrayList;


/** This class is a temporary stand-in for a Dyad during parsing of a SILK file.
 *  It adds 2 ints that hold serial numbers of Ego & Alter.  After the SILK file
 *  parser is certain that the IndividualCensus and Family Census are populated,
 *  it can then build real Dyads wherever needed.
 *
 * @author Gary Morris  Northern Virginia Community College
 */
public class DyadTemp extends Dyad {

    int egoInt, alterInt;

    public void postDyad(Context ctxt, DyadTMap tMap) {
        Dyad newGuy = makeDyad(ctxt);
        tMap.dyAdd(newGuy);
    }

    public void postDyad(ArrayList<Object> aList, Context ctxt) {
        Dyad newGuy = makeDyad(ctxt);
        aList.add(newGuy);
    }

    public Dyad makeDyad(Context ctxt) {
        Dyad newGuy = new Dyad();
        newGuy.ego = (Individual) ctxt.individualCensus.get(egoInt);
        newGuy.alter = (Individual) ctxt.individualCensus.get(alterInt);
        newGuy.addrOrRef = addrOrRef;
        newGuy.challenged = challenged;
        newGuy.confirmed = confirmed;
        newGuy.level = level;
        newGuy.kinTerm = kinTerm;
        newGuy.kinTermType = kinTermType;
        for (Object obj : path) {
            int serialNmbr = ((Integer) obj).intValue();
            newGuy.path.add(ctxt.individualCensus.get(serialNmbr));
        }
        newGuy.pcString = pcString;
        newGuy.pcStringStructural = pcStringStructural;
        return newGuy;
    }
}
