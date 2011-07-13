

import java.util.*;

/**  This abstract class defines math operators.  Its instantiated subclasses 
	 contain a single method 'compare' which performs their operation.
  
  @author		Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
*/
public abstract class MathOperator {
	String opName;
	
	public abstract boolean compare(ArrayList<Object> list1, ArrayList<Object> list2) 
		throws KSInternalErrorException ;

	}  //  end of class MathOperator

