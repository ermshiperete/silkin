
public class KSDateParseException extends KinshipSystemException {

    /** Construct an Exception which passes <code>msg</code> up the call stack.
    This class handles Kinship System internal Exceptions which arise during
    parsing.

    @param	msg	a String describing the exact error found.
     */
    KSDateParseException(String msg) {
        super(msg);
    }  //  end of constructor
}
