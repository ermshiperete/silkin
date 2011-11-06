

import java.util.* ;


/** An instance of the DFA class is a Parsing Table: an ArrayList<Object> of {@link DFA_Row}s.
	Each DFA_Row contains one or more {@link DFA_Cell}s.  Each DFA_Cell 
	contains an 'alphabit' or component of the Alphabet (e.g. LineTerm, WhiteSpace, LtrOrDig) 
	and a newState which is the state you shift to if you consume that 'alphabit.'  
	DFA_Row #1 has cells for state #1, etc. -- one row in the table for each state in a DFA chart.
	<p>
	Whenever the table contains a cell which marks successful identification of a lexeme, 
	that cell has a 'newState' of -99, which serves as the flag for acceptance. The name of the 
	lexeme accepted (if any) is stored in the row's 'tokenAccepted' field.
	</p> <p>
	The table is loaded from a file, using the DFA's loadFromFile(FileName) method.  The format of
	that file MUST be:
	<ul>
	<li>  one line in the file for each row in the table. </li>
	<li>  each row begins with its row number (0-based), a space, a string = "None" or the name 
	   	  of the token accepted in this state, a space, followed by (string int) pairs which are
	   	  interpreted as (alphabit newState). </li>
	<li>  there must be exactly one space to separate the (string, int) pairs. </li>
	<li>  there MUST be a final space at end of each line.	 </li>
	</ul> </p>
  
  @author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
*/
public class DFA	{
	ArrayList<Object> table;
	
	public DFA()	{
		table = new ArrayList<Object>();
		}
		
  /**  For testing purposes only.  */
	public static void main(String[] args) throws KSParsingErrorException {	
		if (args.length != 1) {
			System.out.println("Dork!  Must give Lexical-Spec filename as only argument, ");
		} else {
			DFA myDFA = new DFA();
			myDFA.loadFromFile(args[0]);
			myDFA.printYourself();
			}
		}

	/** Load this DFA from a file containing a table of the Lexical Specifications
		for the language to be recognized.
		
		@param	fileName	a String containing the pathname to the Lex Spec file.
		@throws	KSParsingErrorException  if the DFA Table doesn't confrom to conventions
	*/		
	public void loadFromFile(String fileName) throws KSParsingErrorException {
		String thisLine, substr;
		int start, stop, rowNum = 0, fileLineNum, cellNum;
		Linus lineServer = new Linus(fileName);
		DFA_Row currentRow;
		DFA_Cell currentCell;
	/* I make simplifying assumptions (conventions) here -- that my file will start each line with
	   an integer (the state) and a string (the tokenAccepted or "none") and use exactly one 
	   space to separate the (string, int) pairs that follow.  There MUST be a final space at end of line.	*/
		thisLine = lineServer.makeLine();
		while (thisLine != null)	{
			currentRow = new DFA_Row();
			start = 0;
			stop = thisLine.substring(start).indexOf(" ");
			fileLineNum = Integer.parseInt(thisLine.substring(start, stop));
			start = stop + 1;  // Skipping over the space we found.
			stop = start + thisLine.substring(start).indexOf(" ");
			currentRow.tokenAccepted = thisLine.substring(start, stop);
			start = stop + 1; 
			cellNum = 0;
			if (fileLineNum != rowNum) {
				throw new KSParsingErrorException("Yikes!  Line numbered: " + fileLineNum + 
                                    " of DFA Table load file appears to be out of order.\n"
                                     + "I figure it should have been " + rowNum);	
                                }  // end of if
			stop = thisLine.substring(start).indexOf(" ");
			rowNum++;
			while (stop != -1)	{
				stop = stop + start;  // because the index of the blank is relative to start.
				currentCell = new DFA_Cell();
				currentCell.alphabit = thisLine.substring(start, stop);
				start = stop + 1; 
				stop = start + thisLine.substring(start).indexOf(" ");
				currentCell.newState = Integer.parseInt(thisLine.substring(start, stop));
				start = stop + 1;
				if (start >= thisLine.length()) stop = -1;
				else stop = thisLine.substring(start).indexOf(" ");
				currentRow.cells.add(cellNum++, currentCell);
			}	//  done procesing these (string, int) pairs => cells.
			table.add(currentRow);
			thisLine = lineServer.makeLine();
		}	// done processing all the lines of the load file into table rows.
	}  //  end of method loadFromFile
	
	
	
/** Generate a proof listing of the table.  For testing & validation only.
*/	
	public void printYourself()	{ 
		int row = 0;
		DFA_Row currentRow;
		DFA_Cell currentCell;
		ListIterator rowStepper, cellStepper;
                
		System.out.println(" ");
		System.out.println("\t\t DFA Table");
		System.out.println(" ");
		rowStepper = table.listIterator();
		while (rowStepper.hasNext())	{
			currentRow = (DFA_Row)rowStepper.next();
			System.out.print("State: " + row++ + "\t Accepts: " 
							+ currentRow.tokenAccepted + "\t");
			cellStepper = currentRow.cells.listIterator();
			while (cellStepper.hasNext())	{
				currentCell = (DFA_Cell)cellStepper.next();
				System.out.print("(" + currentCell.alphabit + " -> " +
                                                currentCell.newState + ")  ");
				}  // end of while loop printing cells
			System.out.println(" ");
			}  // end of while loop printing rows
		}	// end of method printYourself
		
}	// end of class DFA
	
