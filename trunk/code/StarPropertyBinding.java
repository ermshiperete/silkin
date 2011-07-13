

import java.util.*; 
import java.io.*;

/** The StarPropertyBinding class exists only to record a binding that is made during Example Generation
between a particular value and an Individual or a MathVariable.  The primary purpose of a StarPropertyBinding is 
to keep track of the bindings made at a particular level of the call stack when generating.  If a failure occurs 
at this or a lower level, it will be necessary to un-do these bindings as part of the back-tracking process.
*/
public class StarPropertyBinding implements Serializable  {
    public Individual personBound;
    public MathVariable mathVarBound;
	public Variable variableBound;
    public String starPropName;
    public ArrayList<Object> valsAssigned = new ArrayList<Object>();
    
	
/** Add yourself to the starBindings if you do not duplicate any SPB already there.
	Duplication means each of your fields is null or identically-valued.
*/
	public void addTo(ArrayList<Object> starBindings)  {
		if (starBindings == null) return;
		if (starBindings.isEmpty()) starBindings.add(this);
		else {
			StarPropertyBinding otherSPB;
			Literal lit = new Literal(new Predicate("Dummy Predicate"));
			boolean duplication = false;
			for (int i=0; i < starBindings.size(); i++)  {
				otherSPB = (StarPropertyBinding)starBindings.get(i);
				if (   (otherSPB.personBound == personBound) 
					&& (otherSPB.mathVarBound == mathVarBound)
					&& (otherSPB.variableBound == variableBound)
					&& (otherSPB.starPropName == starPropName)
					&& lit.listEqual(otherSPB.valsAssigned, valsAssigned) )  {
					duplication = true;
					i = starBindings.size();
					}  //  end of found a duplicate
				}  //  end of loop thru starBindings
			if (! duplication) starBindings.add(this);
			}  //  end of starBindings is not empty
		}  //  end of method addTo
    
	
	public boolean equals(Object obj)  {
		if (! (obj instanceof StarPropertyBinding)) return false;
		StarPropertyBinding spb = (StarPropertyBinding)obj;
		if (spb.personBound != personBound) return false;
		else if (spb.starPropName != starPropName) return false;
		else if (spb.mathVarBound != mathVarBound) return false;
		else if (spb.variableBound != variableBound) return false;
		else if (spb.valsAssigned != valsAssigned) return false;
		else return true;
		}
	
}  //  end of class StarPropertyBinding


