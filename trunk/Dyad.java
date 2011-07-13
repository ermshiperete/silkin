

import java.util.* ;
import java.io.*;

/** A <code>Dyad</code> is a pair of {@link Individual}s who have a named relationship; this class captures
    all the information we need about any particular dyad in order to compare it with other dyads or with
    library definitions.  
 
  @author		Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
*/
public class Dyad  implements Serializable, Comparable  {
    static final int  PRIMARY = 0, EXTENDED = 1, EXCEPTION = 2, REF = 0, ADDR = 1;  
    

    /**  Level means the generation of Alter in Ego's family tree.  0 = Ego's level; 1 = Ego's parents' level,
        -1 = Ego's kids' level, etc.  This has the same meaning as <code>treelevel</code> in {@link Node}
        and {@link Variable}, or as <code>level</code> in {@link ClauseBody}.  */
    public int level = 0;
    
    /**  <code>pcCounter</code>, <code>starCounter</code> and <code>sCounter</code> have the same meaning as 
        their counterparts in {@link ClauseBody}.  */    
    public int pcCounter = 0, sCounter = 0, starCounter = 0;
    
    /**  <code>kinTerm</code> is the name of the relationship between Ego and Alter.  */    
    public String kinTerm;
    
    /**  <code>kinTermType</code> is PRIMARY (0), EXTENDED(1), or EXCEPTION (2).  
		Code of 7 indicates a dyad created by special request of the Learner.  */    
    public int kinTermType;
    
    /**  <code>addrOrRef</code> is either REF (0) or ADDR (1).  */    
    public int addrOrRef = 0, score;
    
    /**  <code>ego</code> and <code>alter</code> are the 2 people who are related; they are the end-points
        in the graph of this dyad.  */    
    public Individual ego, alter;
    
    /**  <code>path</code> is a list of all the individuals between Ego and Alter.  */    
    public ArrayList<Object> path = new ArrayList<Object>();
    
    /**  <code>pcString</code> is a concatenation of all the link-types followed along the path between Ego and Alter.
        For example:  if Alter is Ego's paternal grandfather, the pcString would be "FaFa".  */    
    public String pcString = "";
  
    /**  <code>pcStringStructural</code> is a concatenation of the gender-neutral link-types followed between Ego and Alter.
        For example:  if Alter is Ego's paternal grandfather, the pcStringStructural would contain 2 "P" links.  
        Valid link-types are "P" (parent), "C" (child), "S" (spouse), and "*" (star-link).  */    
    public String pcStringStructural = "";
  
     /**  <code>confirmed</code> = true means User has confirmed this Dyad is reliable.  Ergo, it should not be treated as
		  an Anomaly.  
		  <code>challenged</code> = true means this dyad has been added to an Anomaly*/    
    public boolean confirmed = false, challenged = false;
    DomainTheory.DyadToken token;
	
	
    /**  The zero-arg constructor initializes the path ArrayList &lt;Object &gt; and leaves all other fields blank.  */
    public Dyad()  {   }
    
    
    /**  The 1-arg constructor initializes the path ArrayList<Object>, level, and Ego; all other fields blank.  */
    public Dyad(Individual person)  { 
		ego = person;  
		level = person.node.getLevel();
		}
    
	    /**  The cloning constructor replicates the input Dyad.  */    
    public Dyad(Dyad model)  { 
        ego = model.ego;  
        alter = model.alter;
        level = model.level;
        pcCounter = model.pcCounter;
        sCounter = model.sCounter;
        starCounter = model.starCounter;
        kinTerm = model.kinTerm;
        addrOrRef = model.addrOrRef;
        path = new ArrayList<Object>(model.path);
        pcString = new String(model.pcString);
        pcStringStructural = new String(model.pcStringStructural);
    }
    
	    /**  This method builds a string that represents a Dyad in a SILKin data (_.silk) file.   */
    public String toSILKString() {
        String result = "<dyad ";
        result += toSILKGuts();
        result += "counters=\"" + pcCounter + ", " + sCounter + ", " + starCounter + "\" ";
        result += "confirmed=\"" + confirmed + "\" ";
        result += "challenged=\"" + challenged + "\" ";
        result += "/>\n";
        return result;
    }  //  end of method toSILKString

    String toSILKGuts() {
        String result = "level=\"" + level + "\" ";
        result += "kinTermType=\"" + kinTermType + "\" ";
        result += "addrOrRef=\"" + addrOrRef + "\" ";
        result += "ego=\"" + ego.serialNmbr + "\" ";
        result += "alter=\"" + alter.serialNmbr + "\" ";
        result += "path=\"";
        for (int i = 0; i < path.size(); i++) {
            Object o = path.get(i);
            if (o instanceof Integer) {
                result += o + ((i < path.size() - 1) ? ", " : "");
            }else if (o instanceof Individual) {
                result += ((Individual) o).serialNmbr + ((i < path.size() - 1) ? ", " : "");
            }
        }
        result += "\" ";
        return result;
    }

    public String toXML(String bacer) {
        String s = bacer + "<dyad ";
        s += "kinTerm=\"" + kinTerm + "\" ";
        s += "pcString=\"" + pcString + "\" ";
        s += toSILKGuts();
        s += " />";
        return s;
    }

    public String toString()  {
		String codes = "";
		if (confirmed && challenged) codes = "ERROR: 2 TRUES";
		else if (confirmed) codes = " !";
		else if (challenged) codes = " ?";
		return "<dyad: #" + alter.serialNmbr + " is " + kinTerm + " of #" + ego.serialNmbr 
				+ " (" + ego.gender + ") - " + pcString + ": lvl " + level + codes + ">";
		}  //  end of overriding method toString
    
	/** Provide a method of comparing 2 Dyads for use in TreeMaps and TreeSets.
	*/
	public int compareTo(Object obj) throws ClassCastException {
		if (obj == null) return -1;
		Dyad other = (Dyad)obj;
		if (ego.serialNmbr < other.ego.serialNmbr) return -1;
		if (ego.serialNmbr > other.ego.serialNmbr) return 1;
		if (alter.serialNmbr < other.alter.serialNmbr) return -1;
		if (alter.serialNmbr > other.alter.serialNmbr) return 1;
		return kinTerm.compareTo(other.kinTerm);
		}  //  end of compareTo method; required for the Comparable interface

        /** Construct a list of Individuals on the path from the serialNmbrs used
         *  as arguments in the mini predicates.
         * 
         * @param predList  a list of strings like 'Fa(#2,#5)'
	*/
   public void makePath(ArrayList<Object> predList, Individual alter) {
        ArrayList<Individual> ppl = Context.current.individualCensus;
        int alterNum = alter.serialNmbr;
        for (Object o : predList) {
           String miniPred = (String) o;
           int left = miniPred.indexOf("("),
               comma = miniPred.indexOf(",");
           int arg0num = Integer.parseInt(miniPred.substring(left + 2, comma));
           if (arg0num != alterNum) {
                path.add(ppl.get(arg0num));
           }
       }
        
    }
	
}  //  end of class Dyad
