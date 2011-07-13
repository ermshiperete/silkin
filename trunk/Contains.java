/**  This class defines the math operator <code>Contains</code>.  It's an instantiated subclass
	 of the abstract class {@link MathOperator}.  
	   
  @author		Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
*/


import java.util.*;

public class Contains extends MathOperator {
	
	public Contains() { opName = "contains";  }
	
	//  NOTE:  In the compare method, list1 is a list with 0 or more values.
	//		   list2 is a list of things to compare with each value of Arg0.
	//		   If any violation of the comparison is encountered, we return false.

	public boolean compare(ArrayList<Object> list1, ArrayList<Object> list2) 
		throws KSInternalErrorException  {
		if ((list1 == null) && (list2 == null)) return true;  //  trivially
		for (int i=0; i < list2.size(); i++)
			if (! list1.contains(list2.get(i))) return false;
		return true;
		}
	}  //  end of class Contains

