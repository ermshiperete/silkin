

import java.io.*;

/** A KinTermExample represents one example of the correct use of a particular kinTerm in a culture.
	A list of these objects is returned by the <code>exampleListOf</code> method of class {@link KinTermMatrix}.
  
  @author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
*/
public class KinTermExample  implements Serializable  {
	/** The serial number of ego. */
	public int ego; 
	/** The serial number of alter. */
	public int alter;
	/** The kinTerm that ego calls alter. */
	public String kinTerm;
	
/** Create a KinTermExample for this ego, alter, and term.
  
  @param	egoNum		serial number of the Individual who is speaking
  @param	alterNum	serial number of the Individual referred to
  @param	term		the kinTerm used
*/
	public KinTermExample(int egoNum, int alterNum, String term) {
		ego = egoNum;
		alter = alterNum;
		kinTerm = term;
		}

/** Create a KinTermExample for this ego, alter, and term.
  
  @param	egoNum		serial number of the Individual who is speaking
  @param	alterNum	serial number of the Individual referred to
  @param	term		the kinTerm used
*/
	public KinTermExample(Integer egoNum, Integer alterNum, String term) {
		ego = egoNum.intValue();
		alter = alterNum.intValue();
		kinTerm = term;
		}


	}  //  end of class KinTermExample