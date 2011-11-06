

import java.util.* ;

/**  This class defines a variable in Prolog syntax.  Its name (by convention) must
	begin with a capitol letter; that convention is NOT enforced.  In Example-Generation,
	information is stored on each variable that constrains the kind of Individual who 
	could be bound to this Variable.
  
  @author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
*/
public class Variable extends Argument {  
	public static final String stdVarType = "Variable";
	
    /** This flag records whether it is permissible to bind this Variable to an Individual
        who is a neuter (gender == "?").  */
	boolean neuterOK = true;
	public ArrayList<Object> priorValues, containedBy;  //  priorValues = values that didn't work out.
    
    /** This String records which gender was tried last.  If the Kinship system must backtrack
	during Example-Generation, this prevents it from trying the same gender twice in a row.  */
	String lastGenderTried = "F";

    /** This integer represent's this variable's level in Ego's family tree.  Ego is at level 0.  
        Her parents are at level +1.  Her kids are at level -1.  Etc.     */
        int treeLevel;
	
	/*  This zero-arg constructor is for use ONLY by Serialization  */
	public Variable()  {
		argName = "default".intern();
		argType = stdVarType;
		valueType = "default".intern();
		}  // end of zero-arg constructor
	
	/** Standard constructor.
	
	@param	name	the name of this Variable.
	*/
	public Variable(String name)  {
		if (name.equals("Ego")) argName = LiteralAbstract1.stdEgo;
		else if (name.equals("Alter")) argName = LiteralAbstract1.stdAlter;
		else if (name.length() == 1 && Character.isUpperCase(name.charAt(0)))  
			argName = name.intern();  //  CAPITOL.LETTER.intern() is a pointer to a single internal char
		else argName = name;
		argType = stdVarType;
		valueType = "default".intern();
        }  // end of Variable constructor
	
	/** Special constructor for cloning.
	
	@param	name	the name of this Variable.
	@param  flag	signals that distinct components are needed (not Interns)
	*/
	public Variable(String name, boolean flag)  {
		argName = new String(name);
		argType = stdVarType;
		valueType = "default".intern();
        }  // end of Variable special constructor
	
	/** Return a clone of this Variable.
	
	@return		a clone with the type {@link Argument}.  (But distinct components.)
	*/
	public Argument copy() {
		Variable vari = new Variable(argName, true);
		vari.addVal(getVal());
        vari.valueType = valueType;
		vari.neuterOK = neuterOK;
		vari.lastGenderTried = lastGenderTried;
		return vari;
		}  // end of method copy
	
	public String toString()  { return argName; }

        String toXML(String spacer) {
            return spacer + "<var>" + argName + "</var>\n";
        }
	
	String toSILKString(String spacer) {
            return spacer + "<var>" + argName + "</var>\n";
        }

	public Object bindingVal()  {
		if (getVal() != null) return getVal().get(0);  
		else return null;
		}
	
	public void updatePriorVals(ArrayList<Object> items)  {
		if (priorValues == null) priorValues = new ArrayList<Object>();
		for (int i=0; i < items.size(); i++)  {
			Object item = items.get(i);
			if (! priorValues.contains(item)) priorValues.add(item);
			}
		}  //  end of method updatePriorVals
                                                                
	public void updatePriorVals(Object obj)  {
		if (priorValues == null) priorValues = new ArrayList<Object>();
		if (! priorValues.contains(obj)) priorValues.add(obj);
		}  //  end of method updatePriorVals
                                                                
   }  // end of class Variable

