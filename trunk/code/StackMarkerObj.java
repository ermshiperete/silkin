

import java.util.* ;

/** This class provides a marker that can be inserted into a stack of {@link Argument}s.  It is
	used in the 'expand' methods to keep track of the number of levels of recursion that have
	alreaday been expanded.
  
  @author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
*/
public class StackMarkerObj extends Argument {  
	public static final String stdSMType = "StackMarkerObj";
	
	ArrayList<Object> kinTermLst, recursLvlLst;
	
	/** Standard constructor.
	*/
	public StackMarkerObj()  {
		argType = stdSMType;
		}  //  end of constructor
	
	/** Constructor with marker information provided.
	
	@param	kinTerms	an ArrayList<Object> of kinship terms seen so far
	@param	recursLvls	a matching ArrayList<Object> of the number of levels of recursion expanded for each term.
	*/
	public StackMarkerObj(ArrayList<Object> kinTerms, ArrayList<Object> recursLvls)  {
		argType = stdSMType;
		kinTermLst = kinTerms;
		recursLvlLst = recursLvls;
		}  //  end of constructor

	/** Return a clone of this StackMarkerObj.
	
	@return		send in the clones!
	*/
	public Argument copy() {  //  Returns a copy with fresh copy of Recursive Levels List
		ArrayList<Object> newRecursLvlLst = new ArrayList<Object>();
		for (int k=0; k < recursLvlLst.size(); k++)
			newRecursLvlLst.add(new Integer(((Integer)recursLvlLst.get(k)).intValue()));
		return new StackMarkerObj(kinTermLst, newRecursLvlLst);
		}  // end of method copy
	
	
	public Object bindingVal()  {
		return "WARNING: 'bindingVal()' was called on a StackMarkerObj.  Invalid call -- this String will wreak havoc & trigger Exceptions.";
		}  //  method bindingVal is required for all sub-classes of Argument.  But it should NEVER be called on a StackMarkerObj.
	
	public String toString()  {		
		String str = "<StMrk>";
		for (int i=0; i < kinTermLst.size(); i++)
			str += " (" + kinTermLst.get(i) + " = " + recursLvlLst.get(i) + ")";
		return str;  
		}

        String toXML(String blank) {
            return "";
        }
		
	String toSILKString(String blank) {
            return "";
        }

	}  //  end of class StackMarkerObj
