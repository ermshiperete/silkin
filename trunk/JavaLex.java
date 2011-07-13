
/**  This class encodes an Alphabet to support the DFA used in parsing 
Horn Clauses.  The class-method <code>check</code> recognizes the
following alphabet:
<ul>
<li>	SmLtr		any lower-case letter   </li>
<li>	CapLtr		any upper-case letter   </li>
<li>	LtrOrDig	a-z, A-Z, 0-9, and underscore.   </li>
<li>	LeftParen	'('   </li>
<li>	RightParen	')'   </li>
<li>	LeftAngle	'<'   </li>
<li>	NonLeftAngle	anything but '<'   </li>
<li>	RightAngle	'>'   </li>
<li>	NonRightAngle	anything but '>'   </li>
<li>	LeftSquare	'['   </li>
<li>	RightSquare	']'   </li>
<li>   LeftCurly       '{'   </li>
<li>   RightCurly      '}'   </li>
<li>   EqualSign       '='   </li>
<li>	Dash		'-'   </li>
<li>	Comma		','   </li>
<li>	Period		'.'   </li>
<li>	Colon		':'   </li>
<li>	SemiColon	';'   </li>
<li>	Bar             '|'   </li>
<li>   Slash		'/'   </li>
<li>   NonSlash	anything but '/'   </li>
<li>   Pound		'#'   </li>
<li>   Star		'*'   </li>
<li>	QuestionMark    '?'  </li>
<li>	Exclamation	'!'   </li>
<li>	LineTerm	any character that causes a new line to start (\n, \r, etc.)   </li>
<li>	NonLineTerm	anything other than a LineTerm   </li>
<li>	WhiteSpace	any non-printing character   </li>
<li>	Quote		the quote character   </li>
<li>	NonQuote	anything except the quote character   </li>
<li>	Any		any legal character, but not end-of-file   </li>
<li>	Digit		0-9   </li>
<li>	NonDigit	anything except 0-9   </li>
<li>	Percent		'%'   </li>
</ul>

@author		Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
 */
public class JavaLex {

    public static void main(String[] args) {  // For Testing Purposes Only
        char ch;
        String str, tstr;
        boolean answer;
        int ctr = 0;
        while (ctr < args.length) {
            ch = args[ctr++].charAt(0);
            str = args[ctr++];
            answer = check(ch, str);
            System.out.println(ch + " & " + str + " -> " + answer);
        }

    }

    /** Return true if the character <code>ch</code> is the character described
    by the Alphabet string.  For example: if <code>ch</code> = 'a' and <code>target</code> = 'SmLtr'
    then return true.

    @param	ch        the character to be checked
    @param	target	  a String containing one of the Alphabet terms recognized (see above).
     */
    public static boolean check(char ch, String target) {

        boolean answer;	// grind through the possible matches, hopefully in descending order of likelihood.
        if (target.equals("SmLtr")) {
            answer = (Character.isJavaIdentifierStart(ch)
                    && Character.isLowerCase(ch));
        } else if (target.equals("LtrOrDig")) {
            answer = Character.isJavaIdentifierPart(ch);
        } else if (target.equals("CapLtr")) {
            answer = (Character.isJavaIdentifierStart(ch)
                    && Character.isUpperCase(ch));
        } else if (target.equals("WhiteSpace")) {
            answer = Character.isWhitespace(ch);
        } else if (target.equals("LeftParen")) {
            answer = (ch == '(');
        } else if (target.equals("RightParen")) {
            answer = (ch == ')');
        } else if (target.equals("Comma")) {
            answer = (ch == ',');
        } else if (target.equals("Period")) {
            answer = (ch == '.');
        } else if (target.equals("Any")) {
            answer = Character.isDefined(ch);
        } else if (target.equals("Percent")) {
            answer = (ch == '%');
        } else if (target.equals("SemiColon")) {
            answer = (ch == ';');
        } else if (target.equals("Minus")) {
            answer = (ch == '-');
        } else if (target.equals("Bar")) {
            answer = (ch == '|');
        } else if (target.equals("LeftAngle")) {
            answer = (ch == '<');
        } else if (target.equals("NonLeftAngle")) {
            answer = (ch != '<');
        } else if (target.equals("RightAngle")) {
            answer = (ch == '>');
        } else if (target.equals("NonRightAngle")) {
            answer = (ch != '>');
        } else if (target.equals("LeftSquare")) {
            answer = (ch == '[');
        } else if (target.equals("RightSquare")) {
            answer = (ch == ']');
        } else if (target.equals("LeftCurly")) {
            answer = (ch == '{');
        } else if (target.equals("RightCurly")) {
            answer = (ch == '}');
        } else if (target.equals("Dash")) {
            answer = (ch == '-');
        } else if (target.equals("Colon")) {
            answer = (ch == ':');
        } else if (target.equals("Slash")) {
            answer = (ch == '/');
        } else if (target.equals("NonSlash")) {
            answer = (ch != '/');
        } else if (target.equals("Star")) {
            answer = (ch == '*');
        } else if (target.equals("Pound")) {
            answer = (ch == '#');
        } else if (target.equals("QuestionMark")) {
            answer = (ch == '?');
        } else if (target.equals("Exclamation")) {
            answer = (ch == '!');
        } else if (target.equals("LineTerm")) {
            answer = ((ch == '\n') || (ch == '\r') || (ch == '\f'));
        } else if (target.equals("NonLineTerm")) {
            answer = ((ch != '\n') && (ch != '\r') && (ch != '\f'));
        } else if (target.equals("Quote")) {
            answer = (ch == '"');
        } else if (target.equals("NonQuote")) {
            answer = (Character.isDefined(ch) && (ch != '"'));
        } else if (target.equals("Digit")) {
            answer = Character.isDigit(ch);
        } else if (target.equals("NonDigit")) {
            answer = (!(Character.isDigit(ch)));
        } else if (target.equals("EqualSign")) {
            answer = (ch == '=');
        } else {
            answer = false;
            System.err.println("2nd arg to JavaLex.check() : " + target + " didn't match a defined case.");
        }
        return answer;
    }	// end of check method
}	//end of JavaLex class
