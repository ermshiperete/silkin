

import java.util.ArrayList;

/** 
  This class uses an {@link ArrayList<Object>} to implement a standard queue.
  
   @author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
*/
public class KSQ  {
    private ArrayList<Object> queue = new ArrayList<Object>();
    
    
    /** This implements the standard queue operator de-queue.  It returns the first element in the queue
        and removes it.
        
        @return     first element of the queue, or null.
    */
    public Object deQ()  {
        if (queue.isEmpty()) return null;
        Object obj = queue.get(0);
        queue.remove(0);
        return obj;
    }  //  end of method deQ
    
        
    /** This implements the standard queue operator en-queue.  It adds obj to the queue's end.
        
        @param obj     the object to be added
    */
    public void enQ(Object obj)  {  queue.add(obj); } 
    
   
   /** This implements the standard test for membership.
        
        @param      obj  the object we're checking on
        
        @return     true if the queue contains obj.
    */
    public boolean contains(Object obj)  {
        return queue.contains(obj);
    }  //  end of method isEmpty
    
      
    /** This implements the standard test for emptiness.
        
        @return     true if the queue is empty.
    */
    public boolean isEmpty()  {
        return (queue.isEmpty());
    }  //  end of method isEmpty
    
    
}  //  end of class KSQ  (big deal!)