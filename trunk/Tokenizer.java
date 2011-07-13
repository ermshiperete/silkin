
import java.util.*;

/**  A Tokenizer consumes input from a {@link Linus} 1 character at a time, building parse tokens
as they are defined in a {@link DFA}.  
Beginning in <code>currState</code> = 0, it consumes 1 character of input and consults the DFA table.  
For each non-empty cell in the row for currState, it reads the character_class being 
sought and asks {@link JavaLex} if the current character belongs to that class.
The first "true" ends the search.  The next state is read from that cell -> <code>currState</code>.
If the state = -99, then a completed token is accepted (type is read from the state's (row's)
<code>tokenAccepted</code> field).  Otherwise, go to the next state and repeat.
If the search of all cells in a row fails to get a "true" -- that signals an ERROR.

@author		Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
 */
public class Tokenizer {

    Linus lineServer;
    DFA theDFA;
    String currentLine, filePath;
    int charNum = 0;
    TokenScanned currentToken;

    /** Construct a Tokenizer.

    @param	myDFA	a <code>DFA</code> containing a parse table suitable for the file served by <code>lineSvr</code>.
    @param	lineSvr	serves contents of the file to be parsed one line at a time.
     */
    public Tokenizer(DFA myDFA, Linus lineSvr) throws KSParsingErrorException {
        lineServer = lineSvr;
        theDFA = myDFA;
        this.filePath = lineSvr.filePath;
        currentLine = lineServer.makeLine();
        currentToken = please();	// load up the first token
        // must filter out comments -- Syntactic Parser doesn't want 'em
        while (currentToken.token.equals("comment")) {
            currentToken = please();
        }
    }

    /** Spin thru lines until this symbol is found at the head of a clause.  Then
    spin down to the n-th expanded clause (n = cbSeqNmbr)
     */
    public void spinTo(String kinTerm, int cbSeqNmbr) throws KSParsingErrorException {
//if (kinTerm.equals("juai_yo") && cbSeqNmbr == 179) 
//	Context.breakFlag == true;
//	else Context.breakFlag == false;

        boolean bingo = (currentToken.token.equals("symbol") && currentToken.lexeme.equals(kinTerm));
        while (!bingo) {
            currentLine = lineServer.makeLine();
            charNum = 0;
            if (currentLine == null) {
                throw new KSParsingErrorException("Specified kinTerm '" + kinTerm + "' not found.");
            }
            currentToken = please();
            bingo = (currentToken.token.equals("symbol") && currentToken.lexeme.equals(kinTerm));
        }  //  end of not-there-yet
        //  Now we're at the beginning of the definition of kinTerm
        for (int seqNmbr = -1; seqNmbr < cbSeqNmbr; seqNmbr++) {
            bingo = false;
            while (!bingo) {
                currentLine = lineServer.makeLine();
                charNum = 0;
                if (currentLine == null) {
                    throw new KSParsingErrorException("Specified kinTerm '" + kinTerm + ":" + cbSeqNmbr + "' not found.");
                }
                currentToken = please();
                bingo = currentToken.token.equals("percent");
            }
        }
        //  Theoretically, we're now staring at the requested kinTerm:cbSeqNmbr
    }	//  end of method spinTo

    /** Spin thru lines until this symbol is found at the head of a clause.
     */
    public void spinTo(String kinTerm) throws KSParsingErrorException {
        boolean bingo = (currentToken.token.equals("symbol") && currentToken.lexeme.equals(kinTerm));
        while (!bingo) {
            currentLine = lineServer.makeLine();
            charNum = 0;
            if (currentLine == null) {
                throw new KSParsingErrorException("Specified kinTerm '" + kinTerm + "' not found.");
            }
            currentToken = please();
            bingo = (currentToken.token.equals("symbol") && currentToken.lexeme.equals(kinTerm));
        }  //  end of not-there-yet
    }	//  end of method spinTo

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
        // must filter out comments -- Syntactic Parser doesn't want 'em
        while (currentToken.token.equals("comment")) {
            currentToken = please();
        }
        return peek;
    }	// Give caller the token, and replace it with next non-comment.

    /** Internal method for reading tokens.
     */
    private TokenScanned please() throws KSParsingErrorException {
        TokenScanned tokenFound = new TokenScanned();
        int currState = 0, nextState;
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
                        // UNLESS this is a token that is uniquely recognized by it's last character
                        if (tokenFound.token.equals("comment") || tokenFound.token.equals("string")
                                || tokenFound.token.equals("flag") || tokenFound.token.equals("tag")
                                || tokenFound.token.equals("onePcTag") || tokenFound.token.equals("tagWithAttributes")) {
                            charNum++;
                        }
                        String temp = currentLine.substring(tokenFound.charPos, charNum).trim();  //  drop surrounding blanks
                        if (tokenFound.token.equals("string")) {
                            tokenFound.lexeme = temp.substring(1, temp.length() - 1).trim();            //  drop quote marks
                        } else {
                            tokenFound.lexeme = temp;
                        }
                        if (tokenFound.token.equals("integer")) {
                            tokenFound.intVal = Integer.parseInt(tokenFound.lexeme);
                        } else if (tokenFound.token.equals("float")) {
                            tokenFound.floatVal = Float.parseFloat(tokenFound.lexeme);
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
    }	// end of please method.  As in "oneToken, please."
}	// end of Class Tokenizer

