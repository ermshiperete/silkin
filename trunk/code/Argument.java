

import java.io.*;
import java.util.*;

/**  This superclass is the parent of all classes that are legal arguments of a predicate
	 in the Kinship system.  
  
  @author		Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
*/
public abstract class Argument  implements Serializable, Comparator    {
	public String argType, valueType, argName = "";
	
	private ArrayList<Object> value;
	
	abstract public Argument copy();
	
	abstract public Object bindingVal();

        abstract String toXML(String spacer);
	
	abstract String toSILKString(String spacer);

	public void setVal(ArrayList<Object> valList)  {
		value = valList;
		}
	
	public ArrayList<Object> getVal()  {  return value;  }
	
	public void addVal(Object obj)  {	
		if (value == null) value  = new ArrayList<Object>();
		value.add(obj);	
		}
	
	public void addVal(ArrayList<Object> valList)  {
		if (valList == null) return;
		if (value == null) value = new ArrayList<Object>();
		for (int i=0; i < valList.size(); i++)
			if (! value.contains(valList.get(i))) value.add(valList.get(i));
		}
	
	public void removeVal(Object obj)  {	
		if (value == null) return;
		int where = value.indexOf(obj);
		if (where == -1) return;
		else value.remove(where);	
		}
	
	public void clearVal()	{	if (value != null) value.clear();	}
	
	public int compare(Object o1, Object o2)  {
        String name1 = ((Argument)o1).argName, 
			   name2 = ((Argument)o2).argName;
        return name1.compareTo(name2);
        }  //  end of method compare() which partially implements Interface Comparator
    
    public boolean equals(Object obj)  {
        String objName = ((Argument)obj).argName;
        if (objName.equals(argName)) return true;
        else return false;
        }  //  end of method equals() which partially implements Interface Comparator
	
	}  // end of abstract class Argument
