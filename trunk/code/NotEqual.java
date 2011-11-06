/**  This class defines the math operator <code>NotEqual</code>.  It's an instantiated subclass
	 of the abstract class {@link MathOperator}.  
	   
  @author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
*/


import java.util.*;

	public class NotEqual extends MathOperator {
		
		public NotEqual() { opName = "notEqual";  }
		
	//  NOTE:  List1 & list2 are lists with 0 or more values.
	//		   If they are the same size & have the same elements (including the same duplications), they are equal => FALSE
	//		   Otherwise, they are unequal => TRUE.
	//		   This means that ORDER DOES NOT MATTER.  So 
	//		   But the number of duplicate Values DOES MATTER.  So: 
	//				{} == {}
	//				{} != {<anything>}
	//				{A,C,B}  ==  {A,B,C}
	//				{A,A,A,B,C} != {A,A,B,B,C}
	//				{A,A,A,B,C} == {A,B,A,C,A}
	//		  If you don't like my definition, write your own method

		public boolean compare(ArrayList<Object> list1, ArrayList<Object> list2) 
			throws KSInternalErrorException  {
			if ((list1 == null) && (list2 == null)) return false;
			if ((list1 == null) || (list2 == null)) return true;
			if (list1.size() != list2.size()) return true;
			//  Both lists non-null, and same size
			ArrayList<Object> list2Copy = new ArrayList<Object>(list2);
			Object obj1, obj2;
			Iterator list2iter;
			boolean keepGoing;
			for (int i=0; i < list1.size(); i++)  {
				obj1 = list1.get(i);
				keepGoing = true;
				list2iter = list2Copy.iterator();
				while(keepGoing && list2iter.hasNext())  {
					obj2 = list2iter.next();
					if (obj1 == obj2)  {
						keepGoing = false;
						list2iter.remove();  //  so we won't match it against anything else
						}  //  end of found the match
					}  //  end of loop thru members of list2Copy
				if (keepGoing) return true;  // Never found a match for obj1.  Lists are unequal => TRUE.
				}  //  end of loop thru members of list1
			return false;  //  All elements matched 1-for-1.  Lists are equal => FALSE
			}  //  end of method compare
		}  //  end of class NotEqual

