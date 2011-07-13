

public class KSBadHornClauseException extends KinshipSystemException  {
	public String kinTerm;
	public ClauseBody badClause;
	
	/** Construct an Exception which passes <code>msg</code> up the call stack.
		This class handles Kinship System internal Exceptions which have detected
		an illegally-constructed Horn Clause.
	
		@param	msg	a String describing the exact error found.
	*/		
	KSBadHornClauseException(String msg)  {
		super(msg);
		}  //  end of constructor
	}  //  end of class KSBadHornClauseException
