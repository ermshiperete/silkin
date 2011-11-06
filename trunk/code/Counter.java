

import java.io.* ;

/** 
  A Counter is just an int wrapped in an object, with convenience methods for incrementing
  and decrementing. 
  
  @author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
*/
public class Counter implements Serializable  {
	private int total = 0;
	
	public Counter()  {	}
	
	public Counter(int bal)  { total = bal;	}
	
	public static Counter[] makeArray(int size)  {
		Counter[] array = new Counter[size];
		for (int i=0; i < size; i++) array[i] = new Counter();
		return array;
		}
	
	public int total()  {  return total;  }
	
	public int incr()  {  return total++;  }
	
	public void incr(int amount)  {  total += amount;  }
	
	public int decr()  {  return total--;  }
	
	public void decr(int amount)  {  total -= amount;  }
	
	public void resetTo(int amount)  {  total = amount;  }
	
	public void zero()  {  total = 0;  }
	
	public String toString()  { return "" + total;  }
	
}
