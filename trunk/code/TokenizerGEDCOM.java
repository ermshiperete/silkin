
import java.util.ListIterator;

/**This class provides a tokenizer that uses the GEDCOM DFA.
 * It will serve only 4 kinds of tokens for GEDCOM file parsing:
 * level, tag, ref, and text.
 * All GEDCOM lines must begin with an integer level, followed by an optional ref
 * and a mandatory tag. The remainder of the line may be a ref, text, or a ref + text.
 *
 * @author gary
 */
public class TokenizerGEDCOM {
    
    Linus lineServer;
    DFA theDFA;
    String currentLine, filePath;
    int charNum = 0, startState = 0;
    TokenScanned currentToken;

    /** Construct a Tokenizer for GEDCOM files.

    @param	myDFA	a <code>DFA</code> containing a parse table suitable for the file served by <code>lineSvr</code>.
    @param	lineSvr	serves contents of the file to be parsed one line at a time.
     */
    public TokenizerGEDCOM(DFA myDFA, Linus lineSvr) throws KSParsingErrorException {
        lineServer = lineSvr;
        theDFA = myDFA;
        this.filePath = lineSvr.filePath;
        currentLine = lineServer.makeLine();
        currentToken = please();	// load up the first token
    }
    
        /** Returns the current token without consuming it.
     */
    public TokenScanned lookAhead() {
        return currentToken;
    }	// Give caller the token, & don't replace it.  They should all be this easy.

    /** Returns the current token and reads a new one to take its place.
     */
    public TokenScanned readToken() throws KSParsingErrorException {
        TokenScanned peek = currentToken;
        currentToken = please();
        return peek;
    }	// Give caller the token, and replace it.

    /** Internal method for reading tokens.
     */
    private TokenScanned please() throws KSParsingErrorException {
        TokenScanned tokenFound = new TokenScanned();
        int currState = startState, nextState;
        DFA_Row currentRow;
        DFA_Cell currentCell;
        ListIterator cellStepper;
        boolean match;
        if (charNum >= currentLine.length()) {	// if we've used up all of the line, get a new one
            currentLine = lineServer.makeLine();
            charNum = 0;
            if (currentLine == null) {
                tokenFound.token = "$";
                return tokenFound;
            }
        }  // end of if-charNum >= currentLine.length()
        tokenFound.lineNum = lineServer.lineNumber;
        tokenFound.charPos = charNum;
        try {
            currentRow = (DFA_Row) theDFA.table.get(currState);
            cellStepper = currentRow.cells.listIterator();
            while (cellStepper.hasNext()) {
                currentCell = (DFA_Cell) cellStepper.next();
                match = JavaLex.check(currentLine.charAt(charNum), currentCell.alphabit);
                if (match) {
                    nextState = currentCell.newState;
                    if (nextState == -99) {	// Signal for Acceptance
                        tokenFound.token = currentRow.tokenAccepted;
                        // Don't increment charNum -- may have to process that character on its own
                        // UNLESS this is a 'ref' token; that is uniquely recognized by it's last character
                        if (tokenFound.token.equals("ref")) {
                            charNum++;
                        }
                        String temp = currentLine.substring(tokenFound.charPos, charNum).trim();  //  drop surrounding blanks
                        tokenFound.lexeme = temp;
                        if (tokenFound.token.equals("level")) {
                            tokenFound.intVal = Integer.parseInt(tokenFound.lexeme);
                        } else if (tokenFound.token.equals("tag")) {
                            startState = 4;
                        }
                        return tokenFound;
                    } else {
                        try {	// no token is accepted yet.  Keep on processing.
                            currState = nextState;
                            currentRow = (DFA_Row) theDFA.table.get(currState);
                            cellStepper = currentRow.cells.listIterator();
                            charNum++;
                        } catch (RuntimeException rte) {
                            Context.breakpoint();
                        }
                    }
                    // check to see if we've used up all of this line.
                    if (charNum >= currentLine.length()) {
                        currentLine = lineServer.makeLine();
                        charNum = 0;
                        startState = 0;
                        if (currentLine == null) {
                            tokenFound.token = "$";
                            return tokenFound;
                        }  // end if null
                        tokenFound.lineNum = lineServer.lineNumber;
                        tokenFound.charPos = charNum;
                        // blanks at end of prior line could leave charPos higher than charNum.  Bad!
                    }  // end of if charNum >= ...
                }  // end if match
            }  // end of while cellStepper
            tokenFound.token = "ERROR";
            tokenFound.lexeme = currentLine.substring(tokenFound.charPos, charNum).trim();
            charNum++;
            throw new KSParsingErrorException("ERROR: Found '" + currentLine.substring(charNum - 1, charNum)
                    + "' (an illegal character).  State = " + currState + "\n" + tokenFound.lineNum
                    + ":\t" + currentLine);
        } catch (StringIndexOutOfBoundsException e) {
            System.err.println("Tokenizer.please() says: " + e);
        }
        return tokenFound;
    }	// end of please method.  As in "a Token, please."
}
