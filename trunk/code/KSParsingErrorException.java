 public class KSParsingErrorException extends KinshipSystemException {    /** Construct an Exception which passes <code>msg</code> up the call stack.    This class handles Kinship System internal Exceptions which arise during    parsing.        @param	msg	a String describing the exact error found.     */    KSParsingErrorException(String msg) {         super(msg);    }  //  end of constructor}  //  end of public class KSParsingErrorException 