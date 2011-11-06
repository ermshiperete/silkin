
import java.io.*;

/** Each instance of Linus is initialized with the name of a file; it will 
create a data stream to be read, 1 line at a time, when <code>makeLine</code> is called.  
Linus tracks the file's current line number in a member variable.	

@author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
 */
public class Linus {

    int lineNumber = 0;
    String lineImage, filePath;
    BufferedReader fileToParse;

    public Linus() {
    }  //  0-arg constructor for LinusFromString

    /** Create a data stream to be read from the file named <code>fileName</code>.

    @param	fileName	String: pathname for the file to be read.
     */
    public Linus(String fileName) {
        filePath = fileName;
        try {
            fileToParse = new BufferedReader(new FileReader(fileName));
        } catch (FileNotFoundException e) {
            System.err.println("Linus says: " + e);
        }
    }	// end of constructor

    public Linus(File file, String utf) {
        if (!utf.equals("UTF8")) {
            System.err.println("Linus says: Bad UTF arg in constructor call.");
            System.exit(9);
        }
        filePath = file.getAbsolutePath();
        try {
            FileInputStream fis = new FileInputStream(file);
            InputStreamReader isr = new InputStreamReader(fis, "UTF8");
            fileToParse = new BufferedReader(isr);
        } catch (Exception ex) {
            System.err.println("Linus says: " + ex);
        }
    }

    /** Create a data stream to be read from the File.

    @param	file	The file to be read.
     */
    public Linus(File file) {
        filePath = file.getAbsolutePath();
        try {
            fileToParse = new BufferedReader(new FileReader(file));
        } catch (FileNotFoundException e) {
            System.err.println("Linus says: " + e);
        }
    }	// end of constructor

    /** Return a String with the image of one line of the file, followed by a newLine (ASCII 10). */
    public String makeLine() {
        Character newLine = new Character((char) 10);
        lineNumber++;
        try {
            if (fileToParse == null) {
                Context.breakpoint();
            }
            lineImage = fileToParse.readLine();
        } catch (IOException e) {
            System.err.println("Linus makeLine says: " + e);
        }
        if (lineImage != null) {
            return lineImage + newLine;
        } else {
            return null;
        }
    }  // end of makeLine method

    /** Return a String with the image of one line of the file, WITHOUT a newLine. */
    public String makeLineWithoutNewLine() {
        StringBuffer thisLine = new StringBuffer(120);
        lineNumber++;

        try {
            thisLine.append(fileToParse.readLine());
        } catch (IOException e) {
            System.err.println("Linus makeLineWithoutNewLine says: " + e);
        }
        lineImage = thisLine.toString();	// capture line image
        return thisLine.toString();
    }	// end of makeLineWithoutNewLine method
}  //  end of class Linus

