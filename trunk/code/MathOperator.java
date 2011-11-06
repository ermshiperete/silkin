

import java.util.*;

/**  This abstract class defines math operators.  Its instantiated subclasses 
	 contain a single method 'compare' which performs their operation.
  
  @author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
*/
public abstract class MathOperator {
	String opName;
	
	public abstract boolean compare(ArrayList<Object> list1, ArrayList<Object> list2) 
		throws KSInternalErrorException ;

	}  //  end of class MathOperator

