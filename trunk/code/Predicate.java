

import java.io.*;
import java.util.*;

/** A Predicate is a symbol that stands for a relation in a Horn Clause; it takes 
	zero or more {@link Argument}s.  For example, in the Horn Clause
	<p>
	<code>grandfather(Alter,Ego) :- parent(F,Ego), father(Alter,F).</code>
	<p>
	the three predicates are <code>grandfather, parent,</code> and <code>father.</code>
  
  @author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
*/
public class Predicate	implements Symbol, Serializable  {
	private static final TreeMap primitiveNames = new TreeMap();
	
	//  A single instance of each of the 24 primitive predicate names; to be re-used in 'name' fields
	public static void loadPrimitiveNames()  {
		String[] nams = { "father", "mother", "parent", "child", "husband", "wife", "spouse", "son", 
				"daughter", "male", "female", "elder", "younger", "equal", "not", "siblings", "parents",
				"gender", "lessThan", "greaterThan", "lessOrEql ", "greaterOrEql", "contains", "allowCreation",
				"sibling", "brother", "sister", "half_brother", "half_sister", "step_brother", "divorced", "dead", 
				"step_sister", "step_father", "step_mother", "children", "step_son", "step_daughter" };
		for (int i=0; i < 38; i++) primitiveNames.put(nams[i], nams[i].intern());
		}  //  end of static method loadPrimitiveNames
	
	
	String name;
	PredCategory category;
	
/*  This zero-arg constructor is for use ONLY by Serialization  */
     public Predicate()  {	name = "default".intern();	}   

	/** Construct a Predicate with the symbol <code>name</code>.
	  
	  @param	nam	a String = the name of the Predicate.  */
	public Predicate(String nam)  {	
		String stdNam = (String)primitiveNames.get(nam);
		if (stdNam != null) name = stdNam;
		else this.name = nam;	
		}
	

	/** Construct a Predicate of category <code>cat</code> with the symbol <code>name</code> 
		of arity <code>airTee</code>.
	  
	  @param	name	a String = the name of the Predicate.
	  @param	cat		the {@link PredCategory} of this predicate.
	*/
	public Predicate(String nam, PredCategory cat)  {
		String stdNam = (String)primitiveNames.get(nam);
		if (stdNam != null) name = stdNam;
		else this.name = nam;	
		category = cat;
		}  // end of constructor
	
	
	/** Return a String with an English interpretation of this predicate's meaning.
	  
	  @param	alter	an Individual, the first argument.
	  @param	ego		an Individual, the second argument.
	  
	  @return	the interpretative String.
	*/
	public String semanticString(Argument alter, Argument ego)	{
		return alter.toString() + " is the " + name + " of " + ego.toString() + ".  ";
		}	// end of semanticString method
		
	/** Return a clone of this Predicate.
	
	@return		a new Predicate with identical field contents.
	*/
	public Predicate copy()  {	return new Predicate(name, category);	}  // end of method copy
		
	/** Return the name of this Predicate.
	
	@return		the name.
	*/
	public String printName()	{ return name; } 	
		
	/** Return the name of this Predicate.
	
	@return		the name.
	*/
	public String toString()	{ return name; } 	
	}	// end of class Predicate
