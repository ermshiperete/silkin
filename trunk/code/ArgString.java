

/** An ArgString is a string used as an argument to a predicate.
	UserDefinedProperties use string args; the (@link Parser} can parse them.
  
  @author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
*/
public class ArgString extends Constant  {
	public static final String stdArgStringType = "ArgString";
	
	/*  This zero-arg constructor is for use ONLY by Serialization  */
        ArgString()  {
		super("default");
		argType = stdArgStringType;
		valueType = "string";
		}  // end of constructor
		
	
        ArgString(String name)  {
		super(name);
		argType = stdArgStringType;
		addVal(name);
		valueType = "string";
		}  // end of constructor
		

        public String toSILKString(String bacer) {
            String s = bacer + "<argString>";
            s += getVal().get(0).toString();
            s += "</argString>";
            return s;
        }

        public Argument copy() {
		Argument newArg = new ArgString(argName);
		newArg.addVal(getVal());
		return newArg;
		}  // end of method copy
			
	public String toString()  { 
            return "'" + (String)getVal().get(0) + "'"; }
	}  // end of class ArgString
