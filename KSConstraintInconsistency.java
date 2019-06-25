/**This class represents exceptions that are thrown when SILKin is processing * the constraints in a HJorn Clause, and finds an inconsistency. For example, if * a particular variable is required to be both male and female. *  *  @author		Gary Morris, Northern Virginia Community College *                              garymorris2245@verizon.net */public class KSConstraintInconsistency extends KinshipSystemException {    /** Construct an Exception which passes <code>msg</code> up the call stack.    This class handles Kinship System internal Exceptions which have detected    conflicting constraints for one or more variables in a clause.        @param	msg	a String describing the exact error found.     */    KSConstraintInconsistency(String msg) {          super(msg);    }  //  end of constructor }  //  end of public class KSConstraintInconsistency