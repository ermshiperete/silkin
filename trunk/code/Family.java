
import java.util.*;
import java.text.*;
import java.io.*;
import java.awt.Point;

/** 
Represents a male and a female who either:
(1)  are recognized as married in the local culture, or
(2)  have produced at least one child.
Each Family is either an actual Family in the culture under study, or is
a hypothetical Family created to illustrate the kinship terms of a particular domain theory. 
In the Kinship system, societies are composed only of Families and {@link Individual}s.

@author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
 */
public class Family extends Marriage implements Serializable {

    /**	A unique, system-assigned ID for this family unit. May not be changed once assigned. */
    public int serialNmbr;
    boolean deleted = false;
    boolean divorceStatusUnknown = true;
    /**
    By convention, divorceDate = <code>null</code> means we have no information.
    But divorceDate = "" means they are known to be (or required to be) not divorced.
    And divorceDate = "yyyy-mm-dd" means we know (require) that they are divorced.
     *
    By convention, <code>marriageDate</code> = null means we have no information,
    and "yyyy-mm-dd" is an actual or estimated date the union commenced.	*/
    private String marriageMM, marriageDD, divorceMM, divorceDD;
    int nmbrOfKids = 0;

    public String getMarriageYr() {
        if (marriageYr == null) {
            return "";
        } else {
            return marriageYr;
        }
    }

    public String getMarriageMM() {
        if (marriageMM == null) {
            return "";
        } else {
            return marriageMM;
        }
    }

    public String getMarriageDD() {
        if (marriageDD == null) {
            return "";
        } else {
            return marriageDD;
        }
    }

    public String getMarriageDate() {
        try {
        return UDate.formatAsXSD(marriageYr, marriageMM, marriageDD);
        }catch(Exception exc) {
            return "";
        }
    }

    public boolean hasMarriageDate() {
        return ! getMarriageDate().equals("");
    }

    public boolean hasNoMarriageDate() {
        return getMarriageDate().equals("");
    }

    public String getDivorceYr() {
        if (divorceYr == null) {
            return "";
        } else {
            return divorceYr;
        }
    }

    public String getDivorceMM() {
        if (divorceMM == null) {
            return "";
        } else {
            return divorceMM;
        }
    }

    public String getDivorceDD() {
        if (divorceDD == null) {
            return "";
        } else {
            return divorceDD;
        }
    }

    public String getDivorceDate() {
        try {
            return UDate.formatAsXSD(divorceYr, divorceMM, divorceDD);
        } catch (Exception exc) {
            return "";  // exceptions should never happen
        }
    }

    public boolean hasDivorceDate() {
        return ! getDivorceDate().equals("");
    }

    public boolean hasNoDivorceDate() {
        return getDivorceDate().equals("");
    }


    /** Make the <code>marriageDate</code> of this family <code>date</code>.
     *
    @param	date	Example:  '2003-06-10'
     */
    public void setMarriageDate(String date) {
        if (date == null) date = "";
        String[] components = UDate.readXSDComponents(date);
        marriageYr = components[0];
        marriageMM = components[1];
        marriageDD = components[2];
        dataChangeDate = UDate.today();
    }

    public void setDivorceDate(String date) {
        if (date == null) { // null = Unknown
            date = "";
        } else divorceStatusUnknown = false; // non-null = known
        String[] components = UDate.readXSDComponents(date);
        divorceYr = components[0];
        divorceMM = components[1];
        divorceDD = components[2];
        dataChangeDate = UDate.today();
    }

    /**	For use in constructing hypotheticals: return a date-of-birth (yyyy-mm-dd) for <code>recipient</code>.
    Starting year is father's birth year plus 20 years plus <code>offset</code>.
    However, yyyy is increased by <code>offset</code> (age is reduced)
    if that birth year will collide with the birth year of a sibling of <code>recipient</code>; adjust by as
    many years as it takes to avoid collisions, in the direction of <code>offset</code>.

    @param	dadDOB		date of birth of father of <code>recipient</code>
    @param	offset		number of years to add to a birthyear to avoid collisions with sibling birth years
    @param	recipient	person whose birth year is being constructed

    @return	a String in yyyy-mm-dd format.  Example:  '2003-01-15'
     */
    public static String newDOB(String dadDOB, int offset, Individual recipient) {

        String mmdd;
        int dash1 = dadDOB.indexOf("-");
        if (dash1 == -1) {
            dash1 = dadDOB.length();
            mmdd = "01-22";
        }else mmdd = dadDOB.substring(dash1+1);
        int year, max = 0, min = 99999, kidYOB, momYOD;

        String yyyy = dadDOB.substring(0, dash1);
        year = Integer.parseInt(yyyy) + offset;  //  year is now the target year of birth for recipient
        boolean collision = false;
        Family fam = recipient.birthFamily;
        if (fam != null) {  // if recipient doesn't have a birthFamily yet, skip this
            Individual kid;
            Iterator kidIter = fam.children.iterator();
            while (kidIter.hasNext()) {
                kid = (Individual) kidIter.next();
                if (kid.hasDoB()) {
                    kidYOB = Integer.parseInt(kid.getBirthYr());
                    if (kidYOB == year) {
                        collision = true;
                    }
                    if (kidYOB > max) {
                        max = kidYOB;
                    }
                    if (kidYOB < min) {
                        min = kidYOB;
                    }
                }  //  end of if-DOB-non-null
            }  //  end of for-each-kid-in-recipient's-birthFamily
            if (collision) {
                if (offset < 0) {
                    year = min - 1;
                } else if (offset > 0) {
                    year = max + 1;
                }
            }
            //	Finally, make sure DOB isn't after death of mother
            if ((fam.wife != null) && (fam.wife.hasDoD())) {
                momYOD = Integer.parseInt(fam.wife.getDeathYr());
                year = Math.min(year, momYOD);
            }  //  end of check-for-mom's-death
        }  //  end of if-recipient-has-a-birthFamily
        return year + "-" + mmdd;
    }  //  end of method newDOB

    /**
    Return an ArrayList<Object> containing everything in <code>list</code> except <code>element</code>.
     */
    public static ArrayList<Object> listMinus(ArrayList<Object> list, Object element) {
        //
        ArrayList<Object> newList = new ArrayList<Object>(list);
        int where = newList.indexOf(element);
        if (where >= 0) {
            newList.remove(where);
        }
        return newList;
    }  //  end of public class method listMinus

    /**
    Constructor with 0 arguments: for use ONLY by Serialization.  */
    public Family() {
    }

    public Family(Point loc) {
        location = loc;
        serialNmbr = Context.current.famSerNumGen++;
        Context.current.addFamily(this);
    }  //  end of constructor for Marriage-oriented family

    /**
    Constructor with a context and a boolean: for use by birth-family-creation screen.  */
    public Family(Context ctxt, boolean newFam) {
        if (newFam) {
            serialNmbr = ctxt.famSerNumGen++;
            ctxt.addFamily(this);
        }
    }

    /**
    Constructor with a context & the 2 persons who are married.  For use by the PersonEditor.

    @param	ctxt		the context (society) in which the marriage is to be placed
    @param	person1		one person in the marriage
    @param	person2		the other one
     */
    public Family(Context ctxt, Individual person1, Individual person2) {
        serialNmbr = ctxt.famSerNumGen++;
        ctxt.addFamily(this);
        if ((person1.gender.equals("M")) || (person2.gender.equals("F"))) {
            husband = person1;			// we assume 1 male, 1 female
            wife = person2;
        } else {
            husband = person2;
            wife = person1;
        }  // end else-clause
        person1.addMarriage(this);
        person2.addMarriage(this);
    }  // end of constructor with context and 2 Individuals

    /**
    Constructor with 2 arguments: the persons who are married.

    @param	person1
    @param	person2
     */
    public Family(Individual person1, Individual person2) {
        serialNmbr = Context.current.famSerNumGen++;
        Context.current.addFamily(this);
        if ((person1.gender.equals("M")) || (person2.gender.equals("F"))) {
            husband = person1;			// we assume 1 male, 1 female
            wife = person2;
        } // end of if-person1=male
        else if ((person2.gender.equals("M")) || (person1.gender.equals("F"))) {
            husband = person2;			// we assume 1 male, 1 female
            wife = person1;
        } // end of if-person2=male
        else {  //  must be both are "?"
            husband = person2;
            wife = person1;
        }  // end else-clause
        person1.addMarriage(this);
        person2.addMarriage(this);
        if ((person1.hasNoDoB()) && (person2.hasDoB())) {
            person1.setDateOfBirth(person2.getDateOfBirth());
        } else if ((person2.hasNoDoB()) && (person1.hasDoB())) {
            person2.setDateOfBirth(person1.getDateOfBirth());
        }
        //  Having set ages if possible, now set marriage date
        generateMarriageDate();
    }  // end of constructor with 2 Individuals

    /**
    Constructor with 3 arguments: the persons who are married & date of marriage.

    @param	person1
    @param	person2
    @param	date		String: the date as we want it to appear in <code>marriageDate</code>
     */
    public Family(Individual person1, Individual person2, String date) {
        serialNmbr = Context.current.famSerNumGen++;
        Context.current.addFamily(this);
        if (person1.gender.equals("M")) {
            husband = person1;			// we assume 1 male, 1 female
            wife = person2;
        } // end of if-person1=male
        else {
            husband = person2;
            wife = person1;
        }  // end else-clause
        setMarriageDate(date);
        person1.addMarriage(this);
        person2.addMarriage(this);
        if ((person1.hasNoDoB()) && (person2.hasDoB())) {
            person1.setDateOfBirth(person2.getDateOfBirth());
        } else if ((person2.hasNoDoB()) && (person1.hasDoB())) {
            person2.setDateOfBirth(person1.getDateOfBirth());
        }
        dataChangeDate = UDate.today();
    }  // end of constructor with 2 Individuals & marriage-date

    /**
    Constructor provided for un-remembered, long-ago partners OR generic parents.
    A 'Presumed Spouse' will be automatically generated.

    @param	person1
     */
    public Family(Individual person1) {
        serialNmbr = Context.current.famSerNumGen++;
        Context.current.addFamily(this);
        if (person1.gender.equals("F")) {
            wife = person1;
            wife.addMarriage(this);
            husband = new Individual("Presumed Spouse", "M", this);
        } // end person1=female
        else if (person1.gender.equals("M")) {
            husband = person1;
            husband.addMarriage(this);
            wife = new Individual("Presumed Spouse", "F", this);
        } // end person1=male
        else {  // neuter person
            husband = person1;
            husband.addMarriage(this);
            wife = new Individual("Presumed Spouse", "?", this);
        }  //  end of person1 = neuter
        if ((husband.hasNoDoB()) && (wife.hasDoB())) {
            husband.setDateOfBirth(wife.getDateOfBirth());
        } else if ((wife.hasNoDoB()) && (husband.hasDoB())) {
            wife.setDateOfBirth(husband.getDateOfBirth());
        }
        //  Having set ages if possible, now set marriage date
        generateMarriageDate();
        dataChangeDate = UDate.today();
    }  // end of constructor with 1 Individual & a presumed partner

    /**
    Constructor provided for one parent with a divorce requirement found in <code>divSpecs</code>.
    A 'Presumed Spouse' will be automatically generated. This constructor is used only in Example Generation.

    @param	person1		the known parent
    @param	argname		the name of the variable which this person satisfies in a Horn Clause
     */
    Family(Individual person1, String argName, TreeMap divSpecs) {
        serialNmbr = Context.current.famSerNumGen++;
        Context.current.addFamily(this);
        if (person1.gender.equals("F")) {
            wife = person1;
            wife.addMarriage(this);
            husband = new Individual("Presumed Spouse", "M", this);
        } // end person1=female
        else if (person1.gender.equals("M")) {
            husband = person1;
            husband.addMarriage(this);
            wife = new Individual("Presumed Spouse", "F", this);
        } // end person1=male
        else {  // neuter person
            husband = person1;
            husband.addMarriage(this);
            wife = new Individual("Presumed Spouse", "?", this);
        }  //  end of person1 = neuter
        if ((husband.hasNoDoB()) && (wife.hasDoB())) {
            husband.setDateOfBirth(wife.getDateOfBirth());
        } else if ((wife.hasNoDoB()) && (husband.hasDoB())) {
            wife.setDateOfBirth(husband.getDateOfBirth());
        }
        //  Having set ages if possible, now set marriage date
        generateMarriageDate();
        //  Set divorce date (or positive lack of one)
        String divSpec = (String) divSpecs.get(argName);
        if (divSpec != null) {
            Literal lit = new Literal(new Predicate("dummy"));
            lit.assignDivDate(this, divSpec);
        }  //  end of if-divSpec-non-null
        dataChangeDate = UDate.today();
    }  // end of constructor with 1 Individual & divorce specs

    /**
    Constructor provided for 2 parents with a divorce requirement found in <code>divSpecs</code>.
    This constructor is used only in Example Generation.

    @param	person1
    @param	person2
    @param	argname1	the name of the variable which person1 satisfies in a Horn Clause
    @param	argname2	the name of the variable which person2 satisfies in a Horn Clause
    @param	divReq		should this marriage have a definite divorce date?
     */
    Family(Individual person1, Individual person2, String argName1, String argName2, boolean divReq, TreeMap divSpecs)
            throws KSConstraintInconsistency {
        // provided for 2 parents w/ divSpecs and a divReq
        serialNmbr = Context.current.famSerNumGen++;
        Context.current.addFamily(this);
        if ((person1.gender.equals("M")) || (person2.gender.equals("F"))) {
            husband = person1;			// we assume 1 male, 1 female
            wife = person2;
        } // end of if-person1=male
        else if ((person2.gender.equals("M")) || (person1.gender.equals("F"))) {
            husband = person2;			// we assume 1 male, 1 female
            wife = person1;
        } // end of if-person2=male
        else {  //  must be both are "?"
            husband = person2;
            wife = person1;
        }  // end else-clause
        person1.addMarriage(this);
        person2.addMarriage(this);
        if ((husband.hasNoDoB()) && (wife.hasDoB())) {
            husband.setDateOfBirth(wife.getDateOfBirth());
        } else if ((wife.hasNoDoB()) && (husband.hasDoB())) {
            wife.setDateOfBirth(husband.getDateOfBirth());
        }
        //  Having set ages if possible, now set marriage date
        generateMarriageDate();
        //  Set divorce date (or positive lack of one)
        String divSpec1 = (String) divSpecs.get(argName1), divSpec2 = (String) divSpecs.get(argName2);
        //  if either spec = undivorced, then THIS marriage can't have a divorce
        //  but if one is divorced and the other isn't, div'd one maybe needs a prior marriage.
        Literal lit = new Literal(new Predicate("dummy"));
        Family fam2;
        if ((divSpec1 != null) && (divSpec2 != null) && (!(divSpec1.equals(divSpec2)))) {
            //  if divReq==true, we're inconsistent -- one spouse is 'undivorced' but this is a divorce
            if (divReq) {
                if (MainPane.activity == null) {
                    MainPane.createActivityLog(MainPane.desktop, MainPane.menuView);
                }
                String msg = "ERROR: Divorce is required by divorce predicate for " + argName1 + " and "
                        + argName2 + ",";
                msg += "but " + argName1 + "'s divorce constraint is <" + divSpec1 + "> and "
                        + argName2 + "'s is <" + divSpec2 + ">.\n\n";
                MainPane.activity.log.append(msg);
                throw new KSConstraintInconsistency(msg);
            }  //  end of inconsistency-halt
            setDivorceDate("");
            Individual divorcee;
            if (divSpec1.equals("divorced")) {
                divorcee = person1;
            } else {
                divorcee = person2;
            }
            if (!(lit.meetsDivSpec(divorcee, "divorced", "commit"))) {
                // meetsDivSpec finds a prior divorce or makes a prior marriage fail, if possible.
                fam2 = new Family(divorcee);
                lit.assignDivDate(fam2, "divorced");
            }  //  end of didn't have a divorce yet
        } //  end of differing-divSpecs
        else if (((divSpec1 != null) && (divSpec2 != null) && (divSpec1.equals("undivorced")))
                || ((divSpec1 != null) && (divSpec2 == null) && (divSpec1.equals("undivorced")))
                || ((divSpec1 == null) && (divSpec2 != null) && (divSpec2.equals("undivorced")))) {
            if (!(divReq)) {
                setDivorceDate("");
            } else {
                if (MainPane.activity == null) {
                    MainPane.createActivityLog(MainPane.desktop, MainPane.menuView);
                }
                String msg = "ERROR: Divorce is required by divorce predicate for " + argName1 + " and " + argName2 + ",";
                msg += "but " + argName1 + "'s divorce constraint is <" + divSpec1 + "> and "
                        + argName2 + "'s is <" + divSpec2 + ">.\n\n";
                MainPane.activity.log.append(msg);
                throw new KSConstraintInconsistency(msg);
            }  //  end of inconsistency-halt
        } //  end of both-specs-are-undivorced
        else if (((divSpec1 != null) && (divSpec2 != null) && (divSpec1.equals("divorced")))
                || ((divSpec1 != null) && (divSpec2 == null) && (divSpec1.equals("divorced")))
                || ((divSpec1 == null) && (divSpec2 != null) && (divSpec2.equals("divorced")))) {
            if (divReq) {
                lit.assignDivDate(this, "divorced");
            } else {  // both-need-divorces-but-it-can't-be-this-marriage
                fam2 = new Family(person1);
                lit.assignDivDate(fam2, "divorced");
                fam2 = new Family(person2);
                lit.assignDivDate(fam2, "divorced");
            }  //  end of both-need-divorces-but-it-can't-be-this-marriage
        } //  end of if-divSpec-consistent-with-divorce
        //  if we get here, both divSpecs are null, so let divReq call the shot
        else if (!(divReq)) {
            setDivorceDate("");
        } else {
            lit.assignDivDate(this, "divorced");
        }
        dataChangeDate = UDate.today();
    }  // end of constructor with 2 Individuals, a divorce req, & divorce specs

    /**  Update data for this Family from later information.
    @param		a Family with later data.
     */
    public void updateFrom(Family newRec) {
        deleted = newRec.deleted;
        children = newRec.children;
        setMarriageDate(newRec.getMarriageDate());
        setDivorceDate(newRec.getDivorceDate());
        dataChangeDate = newRec.dataChangeDate;
        comment = newRec.comment;
        husband = newRec.husband;
        wife = newRec.wife;
        nmbrOfKids = newRec.nmbrOfKids;
    }  //  end of method updateFrom

    /**
    Generate a <code>marriageDate</code> for this family based on the ages of the husband and wife
    and the dates of any prior marriages, childbirths, divorces & widowhoods.

     */
    public void generateMarriageDate() {
        int husBirthYr = 18, wifBirthYr = 18, candiDate, candiDate2, candiDate3,
                husbLatestYr, wifLatestYr;
        if (husband.hasDoB()) {
            husBirthYr += Integer.parseInt(husband.getBirthYr());
        } 
        if (wife.hasDoB()) {
            wifBirthYr += Integer.parseInt(wife.getBirthYr());           
        } //  end of if-husb-or-wife-has-non-null-birthdate
        if (!(Context.current.polygamyPermit)) {
            Literal lit = new Literal(new Predicate("dummy"));
            husbLatestYr = 6 + lit.findLatestYear(Family.listMinus(husband.marriages, this));
            wifLatestYr = 6 + lit.findLatestYear(Family.listMinus(wife.marriages, this));
            //  findLatestYear returns the last date of (marriage, parenthood, or divorce) + 5 years
            candiDate2 = Math.max(husBirthYr, wifBirthYr);
            candiDate3 = Math.max(husbLatestYr, wifLatestYr);
            candiDate = Math.max(candiDate2, candiDate3);
        } //  end of if-polygamy-not-permitted
        else //  polygamy-OK
        {
            candiDate = Math.max(husBirthYr, wifBirthYr);
        }

        if (candiDate > 1000) {
            setMarriageDate(candiDate + "-06-10");
        }
    }  //  end of method generateMarriageDate()

    /**
    Create a String with summary information about the Family.

    @return		the String, suitable for display or printing.
     */
    public String toString() {
        String image = serialNmbr + ": " + getMarriageDate();
        if (hasDivorceDate()) {
            image += " to " + getDivorceDate();
        }
        if (comment.length() > 7) {
            image += "\n" + comment;
        }
        String hSerial = (husband == null ? "N/A" : "#" + husband.serialNmbr);
        String wSerial = (wife == null ? "N/A" : "#" + wife.serialNmbr);
        image += "\n     H =  " + hSerial + ", W =";
        image += " " + wSerial + ".\n";
        image += "     " + children.size();
        if (children.size() != 1) {
            image += " children.\n";
        } else {
            image += " child.\n";
        }
        if (children.size() >= 1) {
            for (int i = 0; i < children.size(); i++) {
                image += "        #" + ((Individual) children.get(i)).serialNmbr
                        + " (" + ((Individual) children.get(i)).gender + ").\n";
            }
        }
        return image;
    }  // end of method toString()

    /**  This method builds a string that represents a family in a SILKin data (_.silk) file.   */
    public String toSILKString() throws KSDateParseException {
        String result = "<family n=\"" + serialNmbr + "\">";
        result += "  <homeChart n=\"" + homeChart + "\"/>";
        result += "  <location x=\"" + location.x + "\" y=\""
                + location.y + "\"/>" + XFile.Eol;
        result += "  <reason>" + reason + "</reason>" + XFile.Eol;
        if (comment != null && comment.length() > 0) {
            result += "  <comments txt=\"" + comment + "\"/>" + XFile.Eol;
        }
//        result += toXMLString();  //  Inserts all Marriage components - DELETED
        result += "  <deleted>" + deleted + "</deleted>\n";
        int serial = (husband == null ? -1 : husband.serialNmbr);
        result += "  <husband n=\"" + serial + "\"/>\n";
        serial = (wife == null ? -1 : wife.serialNmbr);
        result += "  <wife n=\"" + serial + "\"/>\n";
        result += "  <children>";
        if (children.size() > 0) {
            for (Object o : children) {
                Individual kid = (Individual) o;
                result += "\n    <kid n=\"" + kid.serialNmbr + "\"/>";
            }
            result += "\n";
        }  //  end of printing children
        result += "  </children>\n";
        if (husbandLink != null) {
            result += "  <husbandLink id=\"" + husbandLink.serialNmbr + "\"/>\n";
        }
        if (wifeLink != null) {
            result += "  <wifeLink id=\"" + wifeLink.serialNmbr + "\"/>\n";
        }
        if (!kidLinks.isEmpty()) {
            result += "  <kidLinks>\n";
            for (Link kid : kidLinks) {
                result += "    <kidLink id=\"" + kid.serialNmbr + "\"/>\n";
            }
            result += "  </kidLinks>\n";
        }
        String marrD = getMarriageDate(), enDate = getDivorceDate();
        if (marrD != null && marrD.length() > 0) {
            if (!UDate.validXSD(marrD)) {
                setMarriageDate(UDate.convertToXSD(marrD));
            }
            result += "  <marriageDate value=\"" + getMarriageDate() + "\"/>\n";
        }
        if (enDate != null && enDate.length() > 0) {
            if (!UDate.validXSD(enDate)) {
                setDivorceDate(UDate.convertToXSD(enDate));
            }
            result += "  <endDate value=\"" + getDivorceDate() + "\"/>\n";
        }
        if (dataAuthor != null && dataAuthor.length() > 0) {
            result += "  <dataAuthor name=\"" + dataAuthor + "\"/>\n";
        }
        if (!UDate.validXSD(dataChangeDate)) {
            dataChangeDate = UDate.convertToXSD(dataChangeDate);
        }
        result += "  <dataChangeDate value=\"" + (dataChangeDate == null ? "" : dataChangeDate) + "\"/>\n";
        result += "</family>\n";
        return result;
    }  //  end of method toSILKString

    /**
    Append the String <code>not</code> to the 'comment' field for this Family.

    @param	not		the String to be added.
     */
    public void addNote(String not) {
        comment += not;
        dataChangeDate = UDate.today();
    }

    /**
    Set dates of birth for all family members, if possible, via internal consistency checks.
     */
    public void checkFamDOBs() {
        boolean dadDone = false, momDone = false;
        Individual kid;
        if ((husband.hasNoDoB()) || (husband.getDateOfBirth().length() < 7)) {
            if ((wife.hasDoB()) && (wife.getDateOfBirth().length() >= 7)) {
                husband.setDateOfBirth(wife.getDateOfBirth());
            } else if (children.size() > 0) {
                Iterator kidIter = children.iterator();
                while ((kidIter.hasNext()) && (!(dadDone))) {
                    kid = (Individual) kidIter.next();
                    if ((kid.hasDoB()) && (kid.getDateOfBirth().length() >= 7)) {
                        dadDone = true;
                        husband.setDateOfBirth(Family.newDOB(kid.getDateOfBirth(), (0 - nmbrOfKids - 20), husband));
                    }  //  end of found-one!
                }  //  end of for-each-kid-until-dad-Done
            }  //  end of has-kids-with-DOBs
        }  //  end of set-dad's-DOB
        if (((wife.hasNoDoB()) || (wife.getDateOfBirth().length() < 7))
                && ((husband.hasDoB()) && (husband.getDateOfBirth().length() >= 7))) {
            wife.setDateOfBirth(husband.getDateOfBirth());
        }
        if ((husband.hasDoB()) && (husband.getDateOfBirth().length() >= 7) && (children.size() > 0)) {
            for (int i = 0; i < children.size(); i++) {
                kid = (Individual) children.get(i);
                if ((kid.hasNoDoB()) || (kid.getDateOfBirth().length() < 7)) {
                    kid.setDateOfBirth(Family.newDOB(husband.getDateOfBirth(), (i + 21), kid));
                }
            }  //  end of for-each-kid
        }  //  end of set-each-kid's-DOB-if-possible
    }  //  end of method checkFamDOBs

    /**
    Add the Individual <code>mate</code> as a parent in this Family.

    @param	mate		Individual to be added.
     */
    public void addParent(Individual mate) throws KSInternalErrorException {
        if (mate.gender.equals("F")) {
            if (wife == null) {
                wife = mate;
            } else {
                throw new KSInternalErrorException("Family.addSpouse asked to add a 2nd wife.");
            }
        } else {
            if (husband == null) {
                husband = mate;
            } else {
                throw new KSInternalErrorException("Family.addSpouse asked to add a 2nd husband.");
            }
        }
        mate.addMarriage(this);
        dataChangeDate = UDate.today();
    }  // end of method addSpouse

    /**
    Remove the Individual <code>mate</code> as a parent in this Family.

    @param	mate		Individual to be deleted.
     */
    public void deleteSpouse(Individual mate) throws KSInternalErrorException {
        if (mate == husband) {
            husband = null;
        } else if (mate == wife) {
            wife = null;
        } else {
            throw new KSInternalErrorException("Family.deleteSpouse asked to drop spouse who is unknown.");
        }
        mate.marriages.remove(this);
        dataChangeDate = UDate.today();
    }  // end of method deleteSpouse

    /**
    Add the Individual <code>kid</code> as a child of this Family.

    @param	kid		Individual to be added.
     */
    public void addChild(Individual kid) {
        nmbrOfKids++;
        children.add(kid);
        kid.birthFamily = this;
        dataChangeDate = UDate.today();
        computeBirthGrps();
    }  // end of method addChild
    
    public void computeBirthGrps() {
            // To allow for multiple births (whose descent lines should all drop from a common point) we maintain "birth groups."
            //      Single births = a 1-person group.
            //      Multiple births = a single group with multiple members
            // For each group, compute the single point from which the descent line should drop (above middle of the group).
        birthGrps.clear();
        BirthGroup bg;
        TreeMap<String, ArrayList> kidSorter = new TreeMap<String, ArrayList>();  
        ArrayList<Individual> linkees = new ArrayList<Individual>();
        for (Link lk : kidLinks) {
            Individual kid = lk.personPointedTo;
            linkees.add(kid);
            if (kid.birthYr.isEmpty()) {
            // No birth date info. Must be single birth
                bg = new BirthGroup();
                bg.links.add(lk);
                bg.topPtX = lk.location.x;
                birthGrps.add(bg);
            } else {  //  could be single or multiple
                String bDate = kid.getYYYYMMOfBirth();
                if (kidSorter.get(bDate) == null) {
                    kidSorter.put(bDate, new ArrayList());
                }
                kidSorter.get(bDate).add(lk);
            }
        }        
        for (Object k : children) {
            Individual kid = (Individual) k;
            if (!linkees.contains(kid)) {
                if (kid.birthYr.isEmpty()) {
                    // No birth date info. Must be single birth
                    bg = new BirthGroup();
                    bg.members.add(kid);
                    bg.topPtX = kid.location.x;
                    birthGrps.add(bg);
                } else {  //  could be single or multiple
                    String bDate = kid.getYYYYMMOfBirth();
                    if (kidSorter.get(bDate) == null) {
                        kidSorter.put(bDate, new ArrayList<Individual>());
                    }
                    kidSorter.get(bDate).add(kid);
                }
            }
        }
        Iterator bgIter = kidSorter.values().iterator();
        ArrayList kidList;
        while (bgIter.hasNext()) {
            bg = new BirthGroup();
            kidList = (ArrayList)bgIter.next();
            for (Object o : kidList) {
                if (o instanceof Individual) {
                    bg.members.add((Individual)o);
                }else {
                    bg.links.add((Link)o);
                }
            } // end of loop thru kidList in the sorter            
            bg.topPtX = 0;
            for (Individual kid : bg.members) {
                bg.topPtX += kid.location.x;
            }
            for (Link kid : bg.links) {
                bg.topPtX += kid.location.x;
            }
            bg.topPtX /= (bg.members.size() + bg.links.size());
            birthGrps.add(bg);
        }
    }
    
    /**
    Delete the Individual <code>kid</code> as a child of this Family.

    @param	kid		Individual to be dropped.
     */
    public void deleteChild(Individual kid) throws KSInternalErrorException {
        if (children.contains(kid)) {
            nmbrOfKids--;
            children.remove(kid);
            if (kid.birthFamily == this) {
                kid.birthFamily = null;  // maybe already changed
            }
            dataChangeDate = UDate.today();
            computeBirthGrps();
        } else {
            throw new KSInternalErrorException("Family.deleteChild asked to drop a kid who is unknown.");
        }
    }  // end of method deleteChild

    /**
    Delete this Family. Remove it from the marriages list of any spouses. If there are any
    children, throw an exception. Kids must be removed before deletion.
     */
    public void delete() {
        deleted = true;
        for (Object o : children) {
            ((Individual) o).birthFamily = null;
        }
        if (husband != null) {
            husband.marriages.remove(this);
        }
        if (wife != null) {
            wife.marriages.remove(this);
        }
        comment += "Pointers to this family removed from parents & kids.  ";
        dataChangeDate = UDate.today();
    }  // end of method delete

    /**
    If we can substitute <code>parent</code> for one of the spouses in this family (who
    has no ties to the outside world) then do the switch and return 'true'.
    Used only for Example-Generation.

    @param	parent		Individual we'd like to inject into this family.

    @return		true if successful; else false.
     */
    public boolean subForDummyParent(Individual parent) {
        if ((!(parent.gender.equals("F"))) && (husband.birthFamily == null)
                && (husband.name.equals("*&^%$"))) {  // bingo
            husband.marriages.clear();
            husband = parent;
            parent.addMarriage(this);
            return true;
        } //  end of husband-makes-good-dummy
        else if ((!(parent.gender.equals("M"))) && (wife.birthFamily == null)
                && (wife.name.equals("*&^%$"))) {  //  she'll do
            wife.marriages.clear();
            wife = parent;
            parent.addMarriage(this);
            return true;
        } //  end of wife-makes-good-dummy
        else {
            return false;
        }
    }  //  end of method subForDummyParent

    /**Write out one Family record in GEDCOM 5.5 format.
     *  <p>
     *  Record will contain:
    <ul>
    <li>    Family Serial Number as a "F-" family ID number. </li>
    <li>    Husband's Individual Serial Number </li>
    <li>    Wife's Individual Serial Number </li>
    <li>    MarriageDate, DivorceDate, if any </li>
    <li>    Children:  Individual Serial Numbers of each child </li>
    <li>    Notes, if any </li>
    <li>    Data Change date. </li>
    </ul>

    @param	out		a PrintWriter to write to.
    @param	today	String: today's date as it should appear in the DataChange field of GEDCOM record.
     */
    public void exportGEDCOM(PrintWriter out, String today) {
        out.println("0 @F-" + serialNmbr + "@ FAM");
        out.println("1 HUSB @I-" + husband.serialNmbr + "@");
        out.println("1 WIFE @I-" + wife.serialNmbr + "@");
        if (!(getMarriageDate().equals(""))) {
            out.println("1 MARR ");
            out.println("2 DATE " + getMarriageDate());
        }  //  end of wedding_date output
        if (hasDivorceDate()) {
            out.println("1 DIV");
            out.println("2 DATE " + getDivorceDate());
        }  //  end of divorce_date output
        if (nmbrOfKids > 0) {
            for (int i = 0; i < nmbrOfKids; i++) {
                Individual kid = (Individual) children.get(i);
                out.println("1 CHIL @I-" + kid.serialNmbr + "@");
            }  // end of for-each-kid
        }  // end of if-kids
        if (comment.length() > 7) {
            out.println("1 NOTE " + comment.substring(7));
        }
        out.println("1 CHAN");
        out.println("2 DATE " + today);
        return;
    }  //  end of method exportGEDCOM
}  // end of public class Family

