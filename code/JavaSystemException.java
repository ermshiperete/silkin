 public class JavaSystemException extends Exception {    /** Construct an Exception which passes <code>msg</code> up the call stack.    This class handles all normal Java language exceptions, as opposed to the    Kinship System's internal ones.        @param	msg	a String describing the exact error found.      */    public JavaSystemException(String msg) {          super(msg);    }  //  end of constructor  }  //  end of public class JavaSystemException 