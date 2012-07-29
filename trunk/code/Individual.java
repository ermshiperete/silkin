

import java.util.* ;
import java.io.* ;
import java.awt.Point;

/** 
  Each Individual is either an actual person in the culture under study, or is
  a hypothetical person created to illustrate the kinship terms in a particular domain theory. 
  Individuals are born into {@link Family}s and participate in them via marriages.
  In the Kinship system, societies are composed only of Families and Individuals.
  
   @author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
*/
public class Individual extends Person implements Serializable  {
    /**	A unique, system-assigned ID for this individual. May not be changed once assigned. */
    public int serialNmbr,
            tempTreeLevel;
    String surname, firstNames, gender, dataChangeDate, dataAuthor;
    
    ArrayList<Object> nameHistory = new ArrayList<Object>();
    boolean deleted = false;
    Node node = null;
    Dyad dyad;

    /** 
    By convention, dateOfDeath = null means we have no information and don't care whether he's dead,
    "" means he is known to be (or required to be) alive, and "mm/dd/yy" means we know (require) he is dead.
    */
    private String birthMM, birthDD, deathMM, deathDD;
    
    /**  The Family containing this Individual's biological mother/father pair. */
    public Family birthFamily;	//  
    
    /**  This field is used only by Example-Generation. */
    boolean hasGenderNeutralKinTerm = false;
    
    /**  A list of all Families created by former & current marriages (& child births). */
    public ArrayList<Object> marriages = new ArrayList<Object>();  
	
    /**  A TreeMap of all the User-Defined Properties (aka *properties) for this Individual.  */
    public TreeMap userDefinedProperties;

    /**  A TreeMap of all non-genealogical relationships for this Individual, i.e. a bond defined
		 by some shared UDP (*-property).  */
    public ArrayList<Object> starLinks;

    public String getBirthMM() { 
        if (birthMM == null) {
            return "";
        }else {
        return birthMM;
        }
    }

    public String getBirthDD() {
        if (birthDD == null) {
            return "";
        }else {
        return birthDD;
        }
    }

    public String getBirthYr() {
        if (birthYr == null) {
            return "";
        }else {
        return birthYr;
        }
    }

    public String getDeathMM() {
        if (deathMM == null) {
            return "";
        }else {
        return deathMM;
        }
    }

    public String getDeathDD() {
        if (deathDD == null) {
            return "";
        }else {
        return deathDD;
        }
    }

    public String getDeathYr() {
        if (deathYr == null) {
            return "";
        }else {
        return deathYr;
        }
    }

    public String getDateOfBirth() {
        try {
        return UDate.formatAsXSD(birthYr, birthMM, birthDD);
        }catch(Exception ex) {
            return "";
        }
    }

    public String getDateOfDeath() { 
        try {
        return UDate.formatAsXSD(deathYr, deathMM, deathDD);
        }catch(Exception ex) {
            return "";
        }
    }

    public void setDateOfBirth(String dob) {
        if (dob == null) dob = "";
        String[] components = UDate.readXSDComponents(dob);
        birthYr = components[0];
        birthMM = components[1];
        birthDD = components[2];
    }

    public void setDateOfDeath(String dod) { 
        if (dod == null) dod = "";
        String[] components = UDate.readXSDComponents(dod);
        deathYr = components[0];
        deathMM = components[1];
        deathDD = components[2];
    }

    public boolean hasDoB() {
        String dob = "";
        try {
            dob = UDate.formatAsXSD(birthYr, birthMM, birthDD);
        }catch(Exception ex) {
            return false;
        }
        return (! dob.equals(""));
    }

    public boolean hasNoDoB() {
        return ! hasDoB();
    }


public boolean hasDoD() {
        String dod = "";
        try {
            dod = UDate.formatAsXSD(deathYr, deathMM, deathDD);
        }catch(Exception ex) {
            return false;
        }
        return (! dod.equals(""));
    }

    public boolean hasNoDoD() {
        return ! hasDoD();
    }




    /** Constructor with w/ name, sex, birth-family & birth date.
     *  NOTE:  As of 10/26/2010 this constructor has never been used.
    
    @param	name		String to go in the FullName field
    @param	sex			'M'  or 'F'  or '?' (neuter: doesn't matter or don't know)
    @param	ofOrigin	Family where this Individual is a child.
    @param	birthdate	Example:  'Jan 1, 1970'
    */
    public Individual(String name, String sex, Family ofOrigin, String birthdate)  {
        serialNmbr = Context.current.indSerNumGen++;
        this.name = name;
        processNames(name);
        setDateOfBirth(birthdate);
        gender = parseGender(sex);
        Context.current.addIndividual(this);
        if (Context.current.userDefinedProperties != null)
            userDefinedProperties = makeNewUDPTreeMap(Context.current.userDefinedProperties);
        ofOrigin.addChild(this);
        dataChangeDate = UDate.today();
    }  // end of constructor 
            
    /**
    Constructor with w/ name, sex, & birthdate.
    
    @param	name		String to go in the FullName field
    @param	sex			'M'  or 'F'  or '?' (neuter: doesn't matter or don't know)
    @param	birthdate	Example:  'Jan 1, 1970'
    */
    public Individual(String name, String sex, String birthdate)  {
        serialNmbr = Context.current.indSerNumGen++;
        this.name = name;
        node = new Node();
        processNames(name);
        setDateOfBirth(birthdate);
        gender = parseGender(sex);
        Context.current.addIndividual(this);
        if (Context.current.userDefinedProperties != null)
            userDefinedProperties = makeNewUDPTreeMap(Context.current.userDefinedProperties);
        dataChangeDate = UDate.today();
    }  // end of constructor w/ name, sex, & birthdate
                                                            
    /**
    Constructor with w/ sex & location.
    
    @param	gend		one of the 2 basic kinds: Male and Female
    @param	loc			A point with x- and y-coordinates
     */
    public Individual(Kind gend, Point loc) {
        sex = gend;
        gender = parseGender(sex.name);
        setLocation(loc);
        serialNmbr = Context.current.indSerNumGen++;
        myId = serialNmbr + 1;
        name = "Person " + serialNmbr;
        Context.current.addIndividual(this);
        if (Context.current.userDefinedProperties != null) {
            userDefinedProperties = makeNewUDPTreeMap(Context.current.userDefinedProperties);
        }
        dataChangeDate = UDate.today();
    }  // end of constructor w/ name, sex only.

                                                            
    /**
    Constructor with w/ name & sex.
    
    @param	name		String to go in the FullName field
    @param	sex			'M'  or 'F'  or '?' (neuter: doesn't matter or don't know)
    */
    public Individual(String name, String sex)  {
        serialNmbr = Context.current.indSerNumGen++;
        this.name = name;
        node = new Node();
        processNames(name);
        gender = parseGender(sex);
        Context.current.addIndividual(this);
        if (Context.current.userDefinedProperties != null)
            userDefinedProperties = makeNewUDPTreeMap(Context.current.userDefinedProperties);
        dataChangeDate = UDate.today();
    }  // end of constructor w/ name, sex only.

                                                            
    /**
    Constructor with w/ a single string == "root".  This constructor is intended for use ONLY by graphical
    routines; they must sometimes create an invisible node as the root of the tree they're drawing.  The person
    created by this constructor always has a serial number of -1 and a name of "/".
    
    @param	name	String which must = "root"
    */
    public Individual(String root)  {
        if (! root.equals("root"))  {
            System.out.println("\n\nERROR:  called Individual's root-constructor with argument not = 'root'");
            System.exit(9);
            }
        serialNmbr = -1;
        name = "/";
        gender = "?";
    }  // end of constructor for "root".

    /**
    Constructor with w/ context & sex.  Intended for use by PersonEditor
    
    @param  context		Specific context in which this person must be created.
	@param	sex			'M'  or 'F'  or '?' (neuter: doesn't matter or don't know)
    */
    public Individual(Context context, String sex)  {
		serialNmbr = context.indSerNumGen++;
        gender = parseGender(sex);
        context.addIndividual(this);
        if (context.userDefinedProperties != null)
            userDefinedProperties = makeNewUDPTreeMap(context.userDefinedProperties);
        dataChangeDate = UDate.today();
    }  // end of constructor w/ context, name, sex, & marriage-family.
	
    /**
    Constructor with w/ context, sex, & marriage.
    
    @param  context		Specific context in which this person must be created.
	@param	sex			'M'  or 'F'  or '?' (neuter: doesn't matter or don't know)
    @param	marriage	Family where this Individual is a spouse.
    */
    public Individual(Context context, String sex, Family marriage)  {
		serialNmbr = context.indSerNumGen++;
        marriages.add(marriage);
        gender = parseGender(sex);
                context.addIndividual(this);
        if (context.userDefinedProperties != null)
            userDefinedProperties = makeNewUDPTreeMap(context.userDefinedProperties);
        dataChangeDate = UDate.today();
    }  // end of constructor w/ context, name, sex, & marriage-family.
	
                                                            

    /**
    Constructor with w/ context, name, sex, & birthFamily.
    
    @param  context		Specific context in which this person must be created.
	@param	name		String to go in the FullName field
    @param	sex			'M'  or 'F'  or '?' (neuter: doesn't matter or don't know)
    @param	birthFam	Family where this Individual is a child.
    */
    public Individual(Context context, String name, String sex, Family birthFam)  {
		serialNmbr = context.indSerNumGen++;
        this.name = name;
        processNames(name);
        birthFamily = birthFam;
		birthFamily.children.add(this);
        gender = parseGender(sex);
                context.addIndividual(this);
        if (context.userDefinedProperties != null)
            userDefinedProperties = makeNewUDPTreeMap(context.userDefinedProperties);
        dataChangeDate = UDate.today();
    }  // end of constructor w/ context, name, sex, & marriage-family.
	
                                                            
    /**
    Constructor with w/ name, sex, & marriage-family.
    
    @param	name		String to go in the FullName field
    @param	sex			'M'  or 'F'  or '?' (neuter: doesn't matter or don't know)
    @param	marriage	Family where this Individual is a parent.
    */
    public Individual(String name, String sex, Family marriage)  {
        serialNmbr = Context.current.indSerNumGen++;
        this.name = name;
        node = new Node();
        processNames(name);
        marriages.add(marriage);
        gender = parseGender(sex);
                Context.current.addIndividual(this);
        if (Context.current.userDefinedProperties != null)
            userDefinedProperties = makeNewUDPTreeMap(Context.current.userDefinedProperties);
        dataChangeDate = UDate.today();
    }  // end of constructor w/ name, sex only.
    
      /**
    Monster constructor which handles all constraints from example generation.
    Used only by Example-Generation.  Does NOT assign default values to UDPs.
    
    @param	name		String to go in the FullName field
    @param	sex             'M'  or 'F'  or '?' (neuter: doesn't matter or don't know)
    @param	ofOrigin	Family where this Individual is a child.
    @param	birthdate	Example:  'Jan 1, 1970'
    @param	argName		name of the variable (in a Horn Clause) to be bound to this Individual.
    @param	spouseInd	spouse, if known.
    @param	bindings	TreeMap of all bindings (of variables to Individuals)
    @param	constraints	TreeMap of all known constraints on attributes of this Individual.
    @param	vari		The {@link Variable} we propose to bind to.
    @param  failFlag    used to signal back to the calling method when we cannot satisfy a constraint
    or requirement (e.g. no conforming value can be found for a UDP).
    
    @throws KSConstraintInconsistency 	if any conflicting constraints are encountered.
     */
    Individual(String name, String sex, Family ofOrigin, String birthdate, String argName, Individual spouseInd,
            TreeMap bindings, ArrayList<Object> starBindings, ConstraintObj constraints, Variable vari, BoolFlag failFlag, ClauseBody cb)
            throws KSConstraintInconsistency, KSBadHornClauseException, ClassNotFoundException, KSInternalErrorException {
        serialNmbr = Context.current.indSerNumGen++;
        Context.current.addIndividual(this);
//  Set any UserDefinedProperties (UDPs) that may apply
        if (Context.current.userDefinedProperties != null) {
            userDefinedProperties = makeNewUDPTreeMap(Context.current.userDefinedProperties, false);
            TreeMap thisVarsUDPs = (TreeMap) constraints.userDefined.get(vari);
            if (thisVarsUDPs != null) { // thisVarsUDPs = a TreeMap with Keys = starPropertyNames and Values = MathVars, Constants, or Variables
                Iterator iter = thisVarsUDPs.entrySet().iterator();
                Map.Entry entry;
                String starPropName;
                Argument arg;
                while (iter.hasNext()) {  //  provide value(s) for this property as needed
                    entry = (Map.Entry) iter.next();
                    starPropName = (String) entry.getKey();
                    arg = (Argument) entry.getValue();
                    if (!findConformingValue(starPropName, arg, starBindings, bindings, constraints, "commit", cb)) {
                        failFlag.value = true;
                        failFlag.reason = starPropName;
                    }  //  end of failed to find a conforming value.
                }  //  end of loop thru star-properties
            }  //  end of thisVarsUDPs-is-not-null
        }  //  end of UDP processing
        this.name = name;
        processNames(name);
        gender = parseGender(sex);
        node = new Node();
//	  node.setGender((gender.equals("M") ? 1 : 2));
        Literal lit = new Literal(new Predicate("dummy"));
        if (gender.equals("?")) { // neuter
            ArrayList<Object> genderList = lit.resolveOppo(bindings, constraints, vari);
            if (genderList == null) {
                gender = "?";
            } else if (genderList.contains("F")) {
                gender = "F";
            } else if (genderList.contains("M")) {
                gender = "M";
            }
            //  if no clues in the gender constraints - check variable for clues
            if ((gender.equals("?")) && (vari != null) && (!vari.neuterOK)) {
                if (vari.lastGenderTried.equals("F")) {
                    gender = "M";
                } else {
                    gender = "F";
                }
                vari.lastGenderTried = gender;
            }  //  end of still-neuter-so-check-variable
        }  //  end of if-gender-is-neuter
        if (ofOrigin != null) {
            ofOrigin.addChild(this);
        }
//  Set DateOfBirth
        ArrayList<Object> ageSpecList = (ArrayList<Object>) constraints.age.get(argName);
        if (ageSpecList == null) {
            ageSpecList = new ArrayList<Object>();
        }
// 1st choice: direct assignment (manual override)
        if (birthdate != null && !birthdate.equals("")) {
            setDateOfBirth(birthdate);
        }
// 2nd choice: base age on parent's ages & number of siblings, but constrained by AgeSpecList
        else {
            if ((ofOrigin != null) && (ofOrigin.husband != null) && (ofOrigin.husband.hasDoB())) {
                setDateOfBirth(Family.newDOB(ofOrigin.husband.getDateOfBirth(), (ofOrigin.nmbrOfKids + 20), this));
            } else if ((ofOrigin != null) && (ofOrigin.wife != null) && (ofOrigin.wife.hasDoB())) {
                setDateOfBirth(Family.newDOB(ofOrigin.wife.getDateOfBirth(), (ofOrigin.nmbrOfKids + 20), this));
            }
            if (lit.meetsAgeSpec(this, ageSpecList, bindings, "commit") && hasDoB()) {
                //  OK!!  That birthdate fits the ageSpecs (if any)
//  3rd choice: ageSpec dictates
            } else {
                if ((ageSpecList.size() > 0) && (lit.meetsAgeSpec(this, ageSpecList, bindings, "commit"))
                        && hasDoB()) {   //  end of 3rd-choice:
//  4th choice: base age on spouse's age
                } else if ((spouseInd != null) && (spouseInd.hasDoB())) {
                    setDateOfBirth(spouseInd.getDateOfBirth());
                }
            }
//  5th choice: leave blank for later synchronization.  Do nothing.
        }
//  Now check DivSpec, & generate a divorce if necessary
        String divSpec = (String) constraints.divorce.get(argName);
        Family marriage;
        if ((divSpec != null) && (divSpec.equals("divorced"))) //  if it doesn't, we need not do anything
        {
            marriage = new Family(this, argName, constraints.divorce);
        }
//  Now set dateOfDeath, if necessary
        String dthSpec = (String) constraints.death.get(argName);
        if (dthSpec != null) {
            lit.assignDeathDate(this, dthSpec);
        }
        dataChangeDate = UDate.today();
    }  // end of Monster constructor with all args

    /**
    Constructor with 0 arguments: for use ONLY by Serialization.  */
    public Individual() {
    }

    void updateNames() {  //  invoked when firstNames or surname is edited.
        name = firstNames + " " + surname;
    }

    /**  Update data for this Individual from later information.
    @param		an individual with later data.
     */
    public void updateFrom(Individual newRec) {
        name = newRec.name;
        surname = newRec.surname;
        firstNames = newRec.firstNames;
        gender = newRec.gender;
        comment = newRec.comment;
        setDateOfBirth(newRec.getDateOfBirth());
        setDateOfDeath(newRec.getDateOfDeath());
        dataChangeDate = newRec.dataChangeDate;
        dataAuthor = newRec.dataAuthor;
        deleted = newRec.deleted;
        birthFamily = newRec.birthFamily;
        marriages = newRec.marriages;
        userDefinedProperties = newRec.userDefinedProperties;
        starLinks = newRec.starLinks;
    }  //  end of method updateFrom

 /**
    Create a String with summary information about this Individual.
    
    @return		the String, suitable for display or printing.
    */
    public String toString()  {
        String image = "#" + serialNmbr + ": "+ name + "  (" + gender + ")";
        if (hasDoB()) image += ", born " + getDateOfBirth();
        if ((hasDoD()) && (getDateOfDeath().length() > 2))
                image += " & died " + getDateOfDeath();
        if (dyad != null && dyad.pcString.length() > 0) 
			image += "\n   PC_String = " + dyad.pcString;
		image += ".\n";
//        image += "First name = " + firstNames + ".  Surname = " + surname + ".\n";
        if (node != null) {
            if (node.kinTermsRef.size() > 0) {
                image += "Kin Terms: " + (String) node.kinTermsRef.get(0) + node.ktSuffix;
                for (int i = 1; i < node.kinTermsRef.size(); i++) {
                    image += ", " + (String) node.kinTermsRef.get(i) + node.ktSuffix;
                }
                image += ".\n";
            }  //  end of if-node.kinTermsRef-has-any.
            if (node.extKinTermsRef.size() > 0) {
                image += "Extended Kin Terms: " + (String) node.extKinTermsRef.get(0) + node.ktSuffix;
                for (int i = 1; i < node.extKinTermsRef.size(); i++) {
                    image += ", " + (String) node.extKinTermsRef.get(i) + node.ktSuffix;
                }
                image += ".\n";
            }  //  end of if-node.extKinTermsRef-has-any.
            if (node.kinTermsAddr.size() > 0) {
                image += "*Kin Terms: " + (String) node.kinTermsAddr.get(0) + node.ktSuffix;
                for (int i = 1; i < node.kinTermsAddr.size(); i++) {
                    image += ", " + (String) node.kinTermsAddr.get(i) + node.ktSuffix;
                }
                image += ".\n";
            }  //  end of if-node.kinTermsAddr-has-any.
            if (node.extKinTermsAddr.size() > 0) {
                image += "*Extended Kin Terms: " + (String) node.extKinTermsAddr.get(0) + node.ktSuffix;
                for (int i = 1; i < node.extKinTermsAddr.size(); i++) {
                    image += ", " + (String) node.extKinTermsAddr.get(i) + node.ktSuffix;
                }
                image += ".\n";
            }  //  end of if-node.extKinTermsAddr-has-any.
        }
        if (nameHistory.size() > 0) {
                image += "Kin Term Name History: ";
                for (int j=0; j < nameHistory.size(); j++)
                        image += nameHistory.get(j) + " ";
                image += ".\n";
                }  //  end of if-nameHistory-not-empty
        if (comment.length() > 7) image += comment + "\n";
        if (birthFamily != null) image += "     BirthFamily: " + birthFamily.serialNmbr + "\n";
        if (marriages.size() > 0)  {
                image += "     Marriages:\n";
                for (int i=0; i < marriages.size(); i++)  {
                        Family fam = (Family)marriages.get(i);
                        image += "          Family#" + fam.serialNmbr + 
                                (fam.husband == null ? "none" : ": I-" + fam.husband.serialNmbr) + 
                                (fam.wife == null ? "none" : ",  I-" + fam.wife.serialNmbr) +  "\n";
                        }  // end of for-each-marriage
                }  // end of if-marriages
        if (userDefinedProperties != null) {
            Iterator iter = userDefinedProperties.entrySet().iterator();
            image += "User Defined Properties:\n";
            while (iter.hasNext())  {
                Map.Entry entry = (Map.Entry)iter.next();
                image += "   " + entry.getValue().toString() + "\n";
            }  //  end of iteration thru userDefinedProperties
        }  //  end of if-userDefinedProperties-are-present
        if (starLinks != null) {
            image += "Star Links: ";
            for (int i=0; i < starLinks.size(); i++)  {
                Individual linkee = (Individual)starLinks.get(i);
				image += "I-" + linkee.serialNmbr + ((i < starLinks.size() - 1) ? ", " : "\n");
				}  //  end of loop thru starLinks
		}  //  end of if-starLinks-are-present
        return image;
    }  // end of method toString()
    
    
    /**  This method builds a string that represents an Individual in a SILKin data (_.silk) file.   */
    public String toSILKString() throws KSDateParseException {
        String result = "<individual n=\"" + serialNmbr + "\">";
        result += "<sex>" + (sex instanceof Female ? "F" : "M") + "</sex>\n";
        result += "  <location x=\"" + location.x + "\" y=\"" + location.y + "\"/>\n";
        if (comment != null && comment.length() > 0) {
            result += "  <comments txt=\"" + comment + "\"/>\n";
        }
        result += "  <surname value=\"" + (surname == null ? "" : surname) + "\"/>\n";
        result += "  <firstNames value=\"" + (firstNames == null ? "" : firstNames) + "\"/>\n";
        String dob = getDateOfBirth(), dod = getDateOfDeath();
        if (hasDoB()) {
            if (!UDate.validXSD(dob)) {
                setDateOfBirth(UDate.convertToXSD(dob));
            }
            result += "  <dateOfBirth value=\"" + getDateOfBirth() + "\"/>\n";
        }
        if (hasDoD()) {
            if (!UDate.validXSD(dod)) {
                setDateOfDeath(UDate.convertToXSD(dod));
            }
            result += "  <dateOfDeath value=\"" + getDateOfDeath() + "\"/>\n";
        }
        if (!UDate.validXSD(dataChangeDate)) {
            dataChangeDate = UDate.convertToXSD(dataChangeDate);
        }
        result += "  <dataChangeDate value=\"" + dataChangeDate + "\"/>\n";
        if (dataAuthor != null) {
            result += "  <dataAuthor name=\"" + dataAuthor + "\"/>\n";
        }
        result += "  <deleted>" + deleted + "</deleted>\n";
        result += "  <birthFamily>";
        result += (birthFamily == null ? " " : birthFamily.serialNmbr) + "</birthFamily>\n";
        result += "  <marriages>";
        if (marriages.size() > 0) {
            result += "\n";
            for (int i = 0; i < marriages.size(); i++) {
                result += "    <mar n=\"" + ((Family) marriages.get(i)).serialNmbr + "\"/>\n";
            }
        }  //  end of loop thru marriages
        result += "  </marriages>\n";
        if (userDefinedProperties != null) {
            result += "  <userDefinedProperties>\n";
            Iterator iter = userDefinedProperties.entrySet().iterator();
            Map.Entry entry;
            while (iter.hasNext()) {
                result += "<UDP>\n";
                entry = (Map.Entry) iter.next();
                String propName = (String) entry.getKey();
                UserDefinedProperty udp = (UserDefinedProperty) entry.getValue();
                result += "<propertyName>" + propName + "</propertyName>\n";
                result += udp.toSILKString("short");
                result += "\n</UDP>\n";
            }  //  end of loop thru UDPs
            result += "  </userDefinedProperties>\n";
        }  //  end of optional UDPs               
        if (starLinks != null && starLinks.size() > 0) {
            result += "  <starLinks>";
            result += "\"#" + ((Individual) starLinks.get(0)).serialNmbr + "\"";
            for (int i = 1; i < starLinks.size(); i++) {
                result += "\", #" + ((Individual) starLinks.get(i)).serialNmbr + "\"";
            }  //  end of loop thru starLinks
            result += "</starLinks>\n";
        }        
        result += "</individual>\n";
        return result;
    }  //  end of method toSILKString
    
    /**
    Write out one Individual record in GEDCOM 5.5 format.
    <p>
    Record will contain: 
    <ul>
    <li>		Individual Serial Number as an "I-" personal ID number. 
    <li>		Fullname
    <li>		BirthDate and DeathDate (if any)
    <li>		Marriages:  Family Serial Numbers of each one
    <li>		BirthFamily:  Family Serial Number
    <li>		Notes, if any
    <li>		Data Change date.
    </ul>
    <p>
    The purpose of a GEDCOM export is to display a chart of Example Individuals who illustrate the
    kinship terms from a particular domain theory.  Therefore, the FullName field is filled with a
    list of all primary kinTerms and a list (in square brackets) of extended kinTerms that this
    Individual exemplifies.
    
    @param	out		a PrintWriter to write to.
    @param	today	String: today's date as it should appear in the DataChange field of GEDCOM record.
    */
    public void exportGEDCOM(PrintWriter out, String today, String choice, ArrayList<Object> nonTerms) {
        // Write out one Individual record in GEDCOM format
        out.println("0 @I-" + serialNmbr + "@ INDI");
        String outText = "#" + serialNmbr + ": ";
        int startLength = outText.length();
        if (node != null) {
            if (node.extKinTermsAddr.size() > 0) {
                //  if a kinTerm appears as both primary & extended, remove it from extendedKinTermsAddr
                int where;
                for (int i = 0; i < node.kinTermsAddr.size(); i++) {
                    where = node.extKinTermsAddr.indexOf(node.kinTermsAddr.get(i));
                    if (where != -1) {
                        node.extKinTermsAddr.remove(where);
                    }
                }  //  end of loop thru primary kinTerms
            }  //  end of extended-node.kinTermsAddr-is-not-empty
            if (node.extKinTermsRef.size() > 0) {
                //  if a kinTerm appears as both primary & extended, remove it from extendedKinTermsRef
                int where;
                for (int i = 0; i < node.kinTermsRef.size(); i++) {
                    where = node.extKinTermsRef.indexOf(node.kinTermsRef.get(i));
                    if (where != -1) {
                        node.extKinTermsRef.remove(where);
                    }
                }  //  end of loop thru primary kinTerms
            }  //  end of extended-node.kinTermsRef-is-not-empty
            boolean showFlags = true;
            if (choice.equals("Don't Include")) {
                showFlags = false;
            }
            String term = "";
            for (int i = 0; i < node.kinTermsRef.size(); i++) {
                term = (String) node.kinTermsRef.get(i) + node.ktSuffix;
                if ((showFlags || (term.indexOf("<[") == -1))
                        && (!nonTerms.contains(term))) {
                    outText += term;
                    if (i < (node.kinTermsRef.size() - 1)) {
                        outText += ", ";
                    }
                }
            }  //  end of loop thru primary node.kinTermsRef
            if (node.extKinTermsRef.size() > 0) {
                outText += "  [";
                for (int i = 0; i < node.extKinTermsRef.size(); i++) {
                    term = (String) node.extKinTermsRef.get(i) + node.ktSuffix;
                    if ((showFlags || (term.indexOf("[") == -1))
                            && (!nonTerms.contains(term))) {
                        outText += term;
                        if (i < (node.extKinTermsRef.size() - 1)) {
                            outText += ", ";
                        }
                    }
                }  //  end of loop thru primary node.extKinTermsRef
                outText += "]";
            }  //  end of if-extended-KinTermsRef-isn't-empty
            for (int i = 0; i < node.kinTermsAddr.size(); i++) {
                term = (String) node.kinTermsAddr.get(i) + node.ktSuffix;
                if ((showFlags || (term.indexOf("[") == -1))
                        && (!nonTerms.contains(term))) {
                    outText += "*" + term;
                    if (i < (node.kinTermsAddr.size() - 1)) {
                        outText += ", ";
                    }
                }
            }  //  end of loop thru primary node.kinTermsAddr
            if (node.extKinTermsAddr.size() > 0) {
                outText += "  [";
                for (int i = 0; i < node.extKinTermsAddr.size(); i++) {
                    term = (String) node.extKinTermsAddr.get(i) + node.ktSuffix;
                    if ((showFlags || (term.indexOf("[") == -1))
                            && (!nonTerms.contains(term))) {
                        outText += "*" + term;
                        if (i < (node.extKinTermsAddr.size() - 1)) {
                            outText += ", ";
                        }
                    }
                }  //  end of loop thru primary node.extKinTermsAddr
                outText += "]";
            }  //  end of if-extended-KinTermsAddr-isn't-empty
        }
        if (outText.length() == startLength) {
            outText += "No Term";
        }
        if (!(gender.equals("?"))) {
            outText += " (" + gender + ")";
        }
        out.println("1 NAME " + outText);
        name = outText;
        if (birthYr != null) {
            out.println("1 BIRT");
            out.println("2 DATE " + getDateOfBirth());
        }  //  end of birthdate output
        if (deathYr != null) {
            out.println("1 DEAT");
            out.println("2 DATE " + getDateOfDeath());
        }  //  end of death_date output
        if ((gender.equals("M")) || (gender.equals("F"))) {
            out.println("1 SEX " + gender);
        }
        if (marriages.size() > 0) {
            for (int i = 0; i < marriages.size(); i++) {
                Family fam = (Family) marriages.get(i);
                out.println("1 FAMS @F-" + fam.serialNmbr + "@");
            }  // end of for-each-marriage
        }  // end of if-marriages
        if (birthFamily != null) {
            out.println("1 FAMC @F-" + birthFamily.serialNmbr + "@");
        }
        if (comment.length() > 7) {
            out.println("1 NOTE " + comment.substring(7));
        }
        out.println("1 CHAN");
        out.println("2 DATE " + today);
        return;
    }  //  end of method exportGEDCOM
    
    
    /**
    Convert various forms of gender designation into 'M' or 'F'.
    
    @param	sex		'Male'  or 'male'  or'M'  or 'm'  etc.
    
    @return		a String with 'M'  or 'F'.  Return '?' if the string cannot be understood, and complain.
    */
    String parseGender(String sex)	{
            if  (sex.equalsIgnoreCase("M") || sex.equalsIgnoreCase("Male")) return "M";
            else if (sex.equalsIgnoreCase("F") || sex.equalsIgnoreCase("Female")) return "F";
            else if (sex.equals("?")) return "?";  
            else {
                if (MainPane.activity == null) MainPane.createActivityLog(MainPane.desktop, MainPane.menuView);
                MainPane.activity.log.append("\nCAUTION:  Default gender of '?' was assigned to Person #" + serialNmbr);
                MainPane.activity.log.append("Name:  " + name + ".  Neutral gender should be chosen by 'sex = ?'");
                return "?"; 
                    }  // default = "?" but complain that it wasn't chosen properly
            // end of else-clause
            }  // end of method parseGender
    
    void processNames()  { processNames(name); }
    
    /**
    Break a FullName into firstNames & surname.
    
    @param	nam		Example: Gary Dean /Morris/ Jr. -- a GEDCOM standard format
    */
    void processNames(String nam)  {
        int comma = nam.indexOf(","), slash = nam.indexOf("/"), start, stop;
        String hold;
        if (comma != -1)  {  // name's presumed format:  Morris, Gary D.
            surname = nam.substring(0, comma);
            firstNames = nam.substring(++comma);
        }  // end of if-comma-present
        else if (slash != -1)  {  // name's presumed format:  Gary Dean /Morris/ Jr.
            start = slash + 1;
            if (start == nam.length()) {
                if (MainPane.activity == null) MainPane.createActivityLog(MainPane.desktop, MainPane.menuView);
                MainPane.activity.log.append("Name '" + nam + "' is improper format.  0 or 2 slashes allowed.");
            }else { // first slash wasn't last character of the string
                stop = nam.indexOf("/", start);
                if (stop == -1) {
                    if (MainPane.activity == null) MainPane.createActivityLog(MainPane.desktop, MainPane.menuView);
                    MainPane.activity.log.append("Name '" + nam + "' is improper format.  0 or 2 slashes allowed.");
                }else {  // 2 slashes are present
                    surname = nam.substring(start, stop);
                    firstNames = nam.substring(0, slash);
                    if (stop < (nam.length() - 1)) 
                        firstNames += nam.substring(stop);
                }  // end of else-2-slashes-are-present
            }
        }  // end of else-if-slash-present
        else if (nam.indexOf(" ") == -1)  { // name is 1-word
            surname = nam;
				firstNames = "";
        }  //  end of 1-word-name
        else  {  // name's presumed format: Gary D. Morris
            stop = nam.length() - 2;  // don't want a trailing blank
            start = 1 + nam.substring(0, stop).lastIndexOf(" ");  // blank before last word, or 0
            surname = nam.substring(start, nam.length());
            if (start >= 2) firstNames = nam.substring(0, start).trim();
        }  // end of default processing
    }  // end of method processNames
            
    /**
    Append the String <code>not</code> to the 'comment' field for this Individual.
    
    @param	not		the String to be added.
    */
    public void addNote(String not)  { 
            comment += not;
            dataChangeDate = UDate.today();
            }
    
    /**
    Append <code>newfam</code> to the 'marriages' field for this Individual.
    
    @param	newfam		the marriage to be added.
    */
    public void addMarriage(Family newfam)  { 
            marriages.add(newfam);
            dataChangeDate = UDate.today();
            }  // for type-checking purposes.
    
	
    /**
    Delete this Individual. Do not remove from the individualCensus, but mark as deleted and
    remove from any marriages and birth family.
     */
    public void delete() throws KSInternalErrorException {
        deleted = true;
        if (birthFamily != null) {
            birthFamily.deleteChild(this);
        }
        for (Object f : marriages) {
            ((Family) f).deleteSpouse(this);
        }
        dataChangeDate = UDate.today();
    }  // end of method delete

    public Individual oppSexKin() {
        //  Find a relative of the opposite sex & return them.  Or null if none found.
        Iterator iter = marriages.iterator();
        while (iter.hasNext()) {
            Family fam = (Family) iter.next();
            if (fam.husband == this && fam.wife.hasNoDoD()) {
                return fam.wife;
            } else if (fam.husband.hasNoDoD()) {
                return fam.husband;
            }
        }
        if (birthFamily != null) {
            if (gender.equals("M")) {
                return birthFamily.wife;
            } else {
                return birthFamily.husband;
            }
        }
        return null;
    }  //  end of method oppSexKin()

    /**
    Return serial# of Family for marriage of this Individual with <code>partner</code>, or -1 if none found.
    
    @param	partner		Individual alleged to be this person's spouse.
    */
    public int marriageWith(Individual partner)  {
            
        ListIterator iter = marriages.listIterator();
        Family candidate;
        if (gender.equals("M"))  {  // if male
            while (iter.hasNext())  {
                candidate = (Family)iter.next();
                if (candidate.wife == partner) return candidate.serialNmbr;  
            }  // end of while-there-are-marriages-to-search
        }  // end of if-male
        else {	// must be female
            while (iter.hasNext())  {
                candidate = (Family)iter.next();
                if (candidate.husband == partner) return candidate.serialNmbr;  
             }  // end of while-there-are-marriages-to-search
        }  // end of else-must-be-female
        return -1;  // only get here if none found
    }  // end of method to find a particular marriage of this person
		
    /**
      By "find a conforming value" we mean choose or accept a value of the correct type (or from among the permissible values)
      which does not violate any of the constraints contained on the {@link Argument} or duplicate a (failed) priorValue.  
      For example, if a property takes a single int value, and a MathVariable has the constraint that its value must be lessThan {3, 6} 
      and also that its value must be greaterThan {0, 1} then only 2 is a "conforming value."  If some other constraint prohibits 2, then 
      no conforming value will ever be possible and a KSBadHornClauseException is thrown (constraint conflict).  
      This is different from a situation where there are possible values, but candidate's value is not one of them 
      (candidate is not a good match).
      <p>
      If <code>queryOrCommit</code> is "query" then we do not change any values on MathVariable or this Individual; we merely
      return true if a conforming value is possible.  If <code>queryOrCommit</code> is "commit" then we make the changes.
      
      @param    starPropName    the name of a user defined property (which must start with '*')
      @param    arg             the Argument whose constraints we must honor and whose value we may bind
      @param    starBindings    the list (possibly empty) of bindings made to date.  Add to it if we bind anything.
      @param    queryOrCommit   the string "query" or "commit" to signify whether we should change values or
                                just report on the feasibility of doing so.
                                
      @throws   KSBadHornClauseException    if the constraints on mathVar make it impossible for any value to be accepted
      @throws   ClassNotFoundException      if there are errors in the type information on a constraint
      
      @return   true only if the proposed Values, if any, are conforming, or a conforming value has been generated.
    */       
    public boolean findConformingValue(String starPropName, Argument arg, ArrayList<Object> starBindings, TreeMap bindings, 
										ConstraintObj constraints, String queryOrCommit, ClauseBody cb) 
            throws KSBadHornClauseException, ClassNotFoundException, KSConstraintInconsistency, KSInternalErrorException {
        UserDefinedProperty udp = (UserDefinedProperty)userDefinedProperties.get(starPropName);
        Class requiredClass = getUDPClass(udp.typ);
        ArrayList<Object> proposedVals = udp.value;
        StarPropertyBinding spb;
        if ((proposedVals != null) && (proposedVals.size() > 0))  {  
    //  Values have been proposed.  Test whether they're all acceptable.  Return true only if ALL are OK.
            if ((proposedVals.size() > 1) && udp.singleValue) 
                throw new KSBadHornClauseException("Multiple values proposed for single-valued property " + starPropName);
            for (int i=0; i < proposedVals.size(); i++)  {  //  check each proposed value for conformity to the variable's constraints
                if (requiredClass != proposedVals.get(i).getClass())
                    throw new KSBadHornClauseException("A value of type " + proposedVals.get(i).getClass().getName() + 
                                    " was proposed for a property of type " + requiredClass.getName());
                if (! checkProposedVal(requiredClass, proposedVals.get(i), arg, bindings, starBindings, constraints)) 
					return false;
            }  //  end of loop thru all proposed values.  Now check the "contains" constraint if a MathVariable
            if ((arg instanceof MathVariable) && (queryOrCommit.equals("commit")) 
                 && (! udp.singleValue) && (((MathVariable)arg).contains != null))
                assureContains((MathVariable)arg, proposedVals, ((MathVariable)arg).contains, starPropName, starBindings, 
								bindings, requiredClass, constraints, cb);
            if ((arg instanceof Variable) && (queryOrCommit.equals("commit")) 
                 && (! udp.singleValue) && (((Variable)arg).containedBy != null))
                assureContainedBy(arg, proposedVals, ((Variable)arg).containedBy, starPropName, starBindings, 
									bindings, requiredClass, constraints, cb);
            //  if we get this far, all proposed values have type-checked OK and are conforming
            if ((queryOrCommit.equals("commit")) && (arg instanceof MathVariable)) 
                yoke((MathVariable)arg, null, null, null, udp, arg.argName, bindings, starBindings);
            else if ((queryOrCommit.equals("commit")) && (arg instanceof Variable))  
				yoke(null, (Variable)arg, null, null, udp, arg.argName, bindings, starBindings);
			return true;
        }  //  end of if-proposedVals!=null

    //  No values are proposed.  See if arg already has a conforming value
        else if ((arg instanceof MathVariable) && (arg.getVal() != null) && (arg.getVal().size() > 0))  {
            //   Assumption: if arg has a value already, it is conforming.
            if (queryOrCommit.equals("commit"))
                yoke((MathVariable)arg, null, null, null, udp, arg.argName, bindings, starBindings);
            return true;
        }  //  end of its-a-mathVar-and-it-has-a-value
        else if ((arg instanceof Variable) && (arg.getVal() != null) && (arg.getVal().size() > 0)) {  
            if (! udp.singleValue)
					throw new KSBadHornClauseException("Personal variable '" + arg.argName + "' set equal to value of a multi-valued UDP.");
			if (udp.typeCheck(arg.getVal().get(0)) && 
				((udp.validEntries == null) || (udp.validEntries.isEmpty()) || (udp.validEntries.contains(arg.getVal().get(0)))))  {
				if (queryOrCommit.equals("commit")) {
					udp.value.add(arg.bindingVal()); 
					yoke(null, (Variable)arg, null, null, udp, arg.argName, bindings, starBindings);
				}
				return true;
			} else return false;
        }  //  end of its-a-Variable-with-value
        else if (arg instanceof Constant)  {  //  Constants by definition always have a value
            if (udp.typeCheck(arg.getVal().get(0)) && 
				((udp.validEntries == null) || (udp.validEntries.isEmpty()) || (udp.validEntries.contains(arg.getVal().get(0)))))  {
				if (queryOrCommit.equals("commit")) {
					udp.value.add(arg.getVal().get(0)); 
					yoke(null, null, (Constant)arg, null, udp, arg.argName, bindings, starBindings);
				}
				return true;
			} else return false;
        }  //  end of its-a-Constant

    //  No values are proposed.  See if the udp has a default value
        else if ((udp.defaultValue != null) && (checkProposedVal(requiredClass, udp.defaultValue, arg, bindings, starBindings, constraints)))  {
            //   Default value is conforming.  Yay!
			if (queryOrCommit.equals("commit")) {
				udp.value.add(udp.defaultValue); 
				if (arg instanceof MathVariable)  //  it can't be a Constant, 'cuz it has no value
					yoke((MathVariable)arg, null, null, null, udp, arg.argName, bindings, starBindings);
				else yoke(null, (Variable)arg, null, null, udp, arg.argName, bindings, starBindings);
			}
            return true;
        }  //  end of check-the-udp's-default-value

    //  No values are proposed; arg does not have one.  See if a conforming value can be found in the valid entries
        else if ((udp.validEntries != null) && (udp.validEntries.size() > 0))  {
            for (int j=0; j < udp.validEntries.size(); j++)  {
                if (checkProposedVal(requiredClass, udp.validEntries.get(j), arg, bindings, starBindings, constraints))  {
                    if (queryOrCommit.equals("commit")) {  //  found-one!
                        MathVariable mathVar = (MathVariable)arg;  //  since Constants always have a value, and ValidEntries not legal for type Person
                        udp.value.add(udp.validEntries.get(j));
                        if ((! udp.singleValue) && (mathVar.contains != null))
                            assureContains(mathVar, udp.value, mathVar.contains, starPropName, starBindings, bindings,
											requiredClass, constraints, cb);
                        if ((! udp.singleValue) && (mathVar.containedBy != null))
							assureContainedBy(arg, udp.value, ((Variable)mathVar).containedBy, starPropName, starBindings, 
									bindings, requiredClass, constraints, cb);
						yoke(mathVar, null, null, null, udp, mathVar.argName, bindings, starBindings);
                    }  //  end of commit
                    return true;
                }  //  end of found-one!
            }  //  end of search thru valid entries
            return false;  //  We'll never find one -- all valid entries are non-conforming to the arg's constraints
        }  //  end of validEntries-exist

    //  OK. All easy routes failed; generate a conforming value if possible
        ArrayList<Object> genVals = generateCandidateValues(requiredClass, arg, bindings, starBindings, constraints, udp); 
        for (int i=0; i < genVals.size(); i++)
            if (checkProposedVal(requiredClass, genVals.get(i), arg, bindings, starBindings, constraints))  {
                if (queryOrCommit.equals("commit")) {			//  since Constants always have a value, and
                    if (arg instanceof MathVariable)  {			//  arg doesn't, it must be a MathVar or Variable
						MathVariable mathVar = (MathVariable)arg;   
						udp.value.add(genVals.get(i));
						if ((! udp.singleValue) && (mathVar.contains != null))
							assureContains(mathVar, udp.value, mathVar.contains, starPropName, starBindings, 
											bindings, requiredClass, constraints, cb);
						if ((! udp.singleValue) && (mathVar.containedBy != null))
							assureContainedBy(arg, udp.value, ((Variable)mathVar).containedBy, starPropName, starBindings, 
									bindings, requiredClass, constraints, cb);
						yoke(mathVar, null, null, null, udp, mathVar.argName, bindings, starBindings);
					}else  {		//  it is a Variable
						udp.value.add(genVals.get(i));
						yoke(null, (Variable)arg, null, null, udp, arg.argName, bindings, starBindings);
					}
				}  //  end of commit
                return true;
            }  //  end of search thru generated values
        return false;  //  last hope is dashed.  report failure (and hang head)
    }  //  end of method findConformingValue
    
	
	public void yoke(MathVariable mathVar, Variable vari, Constant konstant, Argument personArg, 
					UserDefinedProperty udp, String bindingMade, TreeMap bindings, ArrayList<Object> starBindings) 
					throws KSInternalErrorException	{
		
		Object boundVal = null;
		if (mathVar != null)  {
			mathVar.link(udp); 
			mathVar.updatePriorVals(udp.value);
			boundVal = mathVar.bindingVal();
		}else if (vari != null)  {
			vari.addVal(udp.value);
			boundVal = vari.bindingVal();
		}else {  //  must be konstant != null
			Object obj = konstant.getVal().get(0);
			if (! udp.value.contains(obj)) 
				udp.value.add(obj);
			boundVal = konstant.bindingVal();
			}
		if ((personArg != null) && (bindingMade.equals(personArg.argName)))
			bindings.put(bindingMade, this); 
		else bindings.put(bindingMade, boundVal);
		StarPropertyBinding spb = new StarPropertyBinding();
		spb.mathVarBound = mathVar;
		spb.variableBound = vari;
		spb.personBound = this;
		spb.valsAssigned = new ArrayList<Object>(udp.value);
		spb.starPropName = udp.starName;
		spb.addTo(starBindings);
		}  //  end of method yoke
	
    
    /**  This method merely dispatches calls to the other, type-specific, forms of this method.  */
    public boolean checkProposedVal(Class clazz, Object obj, Argument arg, TreeMap bindings, ArrayList<Object> starBindings, ConstraintObj constraints)
				throws KSConstraintInconsistency, KSInternalErrorException, ClassNotFoundException {
        if (clazz.getName().equals("java.lang.Float"))  {
            Float fltObj = (Float)obj;
            return checkProposedVal(fltObj, arg);
        }  //  end of class=Float
        if (clazz.getName().equals("java.lang.Integer"))  {
            Integer intObj = (Integer)obj;
            return checkProposedVal(intObj, arg);
        }  //  end of class=Integer
        if (clazz.getName().equals("java.lang.String"))  {
            String strObj = (String)obj;
            return checkProposedVal(strObj, arg);
        }  //  end of class=String
        if (clazz.getName().equals("java.lang.Boolean"))  {
            Boolean boolObj = (Boolean)obj;
            return checkProposedVal(boolObj, arg);
        }  //  end of class=Boolean
        if (clazz.getName().equals("Individual"))  {
            Individual indObj = (Individual)obj;
            return checkProposedVal(indObj, arg, bindings, starBindings, constraints);
        }  //  end of class=Individual
        return false;
    }  //  end of dispatching method checkProposedVal


   /**  Check all the constraints on MathVariable arg to see if this integer is a conforming value.
        Or, check that this integer is a member of the value field of the Constant arg.
        Type-checking has already been done, so we know that arg takes values of type Integer
        Do not check a MathVar's "contains" constraint -- that is done at higher level.
        
        @param  intObj  the Integer object to be checked against these constraints
        @param  arg     a {@link MathVariable} containing constraints or a {@link Constant}
        
        @return  true   if all constraints are satisfied (except 'contains')
   */
    public boolean checkProposedVal(Integer intObj, Argument arg)  {
        if (arg instanceof MathVariable)  {
            MathVariable mathVar = (MathVariable)arg;
            Integer otherInteger;
            if ((mathVar.getVal() != null) && (mathVar.getVal().contains(intObj))) return true;
            if (mathVar.notEqual != null)  {
                Argument unEqArg;
                for (int i=0; i < mathVar.notEqual.size(); i++)  {
                     unEqArg = (Argument)mathVar.notEqual.get(i);
                     if (unEqArg.getVal() != null && unEqArg.getVal().contains(intObj)) return false;
                }  //  end of loop thru notEqual
            }  //  end of notEqual-constraint-check
            if (mathVar.priorValues != null)  {
                Integer priorFailure;
                for (int i=0; i < mathVar.priorValues.size(); i++)  {
                     priorFailure = (Integer)mathVar.priorValues.get(i);
                     if (priorFailure.equals(intObj)) return false;
                }  //  end of loop thru priorValues
            }  //  end of priorValues-check
            if (mathVar.lessThan != null)  {
                Argument lessArg;
                for (int i=0; i < mathVar.lessThan.size(); i++)  {
                    lessArg = (Argument)mathVar.lessThan.get(i);
                    if (lessArg.getVal() != null) 
						for (int j=0; j < lessArg.getVal().size(); j++)  {
							otherInteger = (Integer)lessArg.getVal().get(j);
							if (intObj.compareTo(otherInteger) >= 0) return false;
						}  //  end of loop thru otherInteger's values
                }  //  end of loop thru lessThan
            }  //  end of lessThan-constraint-check
            if (mathVar.lessOrEql != null)  {
                Argument lessEqArg;
                for (int i=0; i < mathVar.lessOrEql.size(); i++)  {
                    lessEqArg = (Argument)mathVar.lessOrEql.get(i);
                    if (lessEqArg.getVal() != null) 
						for (int j=0; j < lessEqArg.getVal().size(); j++)  {
							otherInteger = (Integer)lessEqArg.getVal().get(j);
							if (intObj.compareTo(otherInteger) > 0) return false;
						}  //  end of loop thru otherInteger's values
                }  //  end of loop thru lessOrEql
            }  //  end of lessOrEql-constraint-check
            if (mathVar.greaterThan != null)  {
                Argument greaterArg;
                for (int i=0; i < mathVar.greaterThan.size(); i++)  {
                    greaterArg = (Argument)mathVar.greaterThan.get(i);
                    if (greaterArg.getVal() != null) 
						for (int j=0; j < greaterArg.getVal().size(); j++)  {
							otherInteger = (Integer)greaterArg.getVal().get(j);
							if (intObj.compareTo(otherInteger) <= 0) return false;
						}  //  end of loop thru otherInteger's values
                }  //  end of loop thru greaterThan
            }  //  end of greaterThan-constraint-check
            if (mathVar.greaterOrEql != null)  {
                Argument grEqArg;
                for (int i=0; i < mathVar.greaterOrEql.size(); i++)  {
					grEqArg = (Argument)mathVar.greaterOrEql.get(i);
					if (grEqArg.getVal() != null) 
						for (int j=0; j < grEqArg.getVal().size(); j++)  {
							otherInteger = (Integer)grEqArg.getVal().get(j);
							if (intObj.compareTo(otherInteger) < 0) return false;
						}  //  end of loop thru otherInteger's values
					}  //  end of loop thru lessThan
            }  //  end of greaterOrEql-constraint-check
            return true;
        }  //  end of its-a-MathVar
        else  {  //  its-a-Constant
            if (((Constant)arg).getVal().contains(intObj)) return true;
            else return false;
        }  //  end of its-a-Constant  
    }  //  end of method checkProposedVal(Integer)
    

    
   /**  Check all the constraints on MathVariable arg to see if this float is a conforming value.
        Or, check that this float is a member of the value field of the Constant arg.
        Type-checking has already been done, so we know that arg takes values of type Float
        Do not check a MathVar's "contains" constraint -- that is done at higher level.
        
        @param  floatObj  the Float object to be checked against these constraints
        @param  arg       a {@link MathVariable} containing constraints or a {@link Constant}
        
        @return  true   if all constraints are satisfied (except 'contains')
   */
    public boolean checkProposedVal(Float floatObj, Argument arg)  {
        if (arg instanceof MathVariable)  {
            MathVariable mathVar = (MathVariable)arg;
            Float otherFloat;
            if ((mathVar.getVal() != null) && (mathVar.getVal().contains(floatObj))) return true;
            if (mathVar.notEqual != null)  {
                Argument unEqArg;
                for (int i=0; i < mathVar.notEqual.size(); i++)  {
                     unEqArg = (Argument)mathVar.notEqual.get(i);
                     if (unEqArg.getVal() != null && unEqArg.getVal().contains(floatObj)) return false;
                }  //  end of loop thru notEqual
            }  //  end of notEqual-constraint-check
            if (mathVar.priorValues != null)  {
                Float priorFailure;
                for (int i=0; i < mathVar.priorValues.size(); i++)  {
                     priorFailure = (Float)mathVar.priorValues.get(i);
                     if (priorFailure.equals(floatObj)) return false;
                }  //  end of loop thru priorValues
            }  //  end of priorValues-check
            if (mathVar.lessThan != null)  {
                Argument lessArg;
                for (int i=0; i < mathVar.lessThan.size(); i++)  {
                    lessArg = (Argument)mathVar.lessThan.get(i);
                    if (lessArg.getVal() != null) 
						for (int j=0; j < lessArg.getVal().size(); j++)  {
							otherFloat = (Float)lessArg.getVal().get(j);
							if (floatObj.compareTo(otherFloat) >= 0) return false;
						}  //  end of loop thru otherFloat's values
                }  //  end of loop thru lessThan
            }  //  end of lessThan-constraint-check
            if (mathVar.lessOrEql != null)  {
                Argument lessEqArg;
                for (int i=0; i < mathVar.lessOrEql.size(); i++)  {
                    lessEqArg = (Argument)mathVar.lessOrEql.get(i);
                    if (lessEqArg.getVal() != null)
						for (int j=0; j < lessEqArg.getVal().size(); j++)  {
							otherFloat = (Float)lessEqArg.getVal().get(j);
							if (floatObj.compareTo(otherFloat) > 0) return false;
						}  //  end of loop thru otherFloat's values
                }  //  end of loop thru lessOrEql
            }  //  end of lessOrEql-constraint-check
            if (mathVar.greaterThan != null)  {
                Argument greaterArg;
                for (int i=0; i < mathVar.greaterThan.size(); i++)  {
                    greaterArg = (Argument)mathVar.greaterThan.get(i);
                    if (greaterArg.getVal() != null)
						for (int j=0; j < greaterArg.getVal().size(); j++)  {
							otherFloat = (Float)greaterArg.getVal().get(j);
							if (floatObj.compareTo(otherFloat) <= 0) return false;
						}  //  end of loop thru otherFloat's values
                }  //  end of loop thru greaterThan
            }  //  end of greaterThan-constraint-check
            if (mathVar.greaterOrEql != null)  {
                Argument grEqArg;
                for (int i=0; i < mathVar.greaterOrEql.size(); i++)  {
                    grEqArg = (Argument)mathVar.greaterOrEql.get(i);
                    if (grEqArg.getVal() != null)
						for (int j=0; j < grEqArg.getVal().size(); j++)  {
							otherFloat = (Float)grEqArg.getVal().get(j);
							if (floatObj.compareTo(otherFloat) < 0) return false;
						}  //  end of loop thru otherFloat's values
                }  //  end of loop thru lessThan
            }  //  end of greaterOrEql-constraint-check
            return true;
        }  //  end of its-a-MathVar
        else  {  //  its-a-Constant
            if (((Constant)arg).getVal().contains(floatObj)) return true;
            else return false;
        }  //  end of its-a-Constant  
    }  //  end of method checkProposedVal(Float)
    

    
   /**  Check all the constraints on MathVariable arg to see if this String is a conforming value.
        Or, check that this String is a member of the value field of the Constant arg.
        Type-checking has already been done, so we know that arg takes values of type String
        Do not check a MathVar's "contains" constraint -- that is done at higher level.
        
        @param  stringObj  the String object to be checked against these constraints
        @param  arg     a {@link MathVariable} containing constraints or a {@link Constant}
        
        @return  true   if all constraints are satisfied (except 'contains')
   */
    public boolean checkProposedVal(String stringObj, Argument arg)  {
        if (arg instanceof MathVariable)  {
            MathVariable mathVar = (MathVariable)arg;
            String otherString;
            if ((mathVar.getVal() != null) && (mathVar.getVal().contains(stringObj))) return true;
            if (mathVar.notEqual != null)  {
                Argument unEqArg;
                for (int i=0; i < mathVar.notEqual.size(); i++)  {
                     unEqArg = (Argument)mathVar.notEqual.get(i);
                     if (unEqArg.getVal() != null && unEqArg.getVal().contains(stringObj)) return false;
                }  //  end of loop thru notEqual
            }  //  end of notEqual-constraint-check
            if (mathVar.priorValues != null)  {
                String priorFailure;
                for (int i=0; i < mathVar.priorValues.size(); i++)  {
                     priorFailure = (String)mathVar.priorValues.get(i);
                     if (priorFailure.equals(stringObj)) return false;
                }  //  end of loop thru priorValues
            }  //  end of priorValues-check
            if (mathVar.lessThan != null)  {
                Argument lessArg;
                for (int i=0; i < mathVar.lessThan.size(); i++)  {
                    lessArg = (Argument)mathVar.lessThan.get(i);
                    if (lessArg.getVal() != null) 
						for (int j=0; j < lessArg.getVal().size(); j++)  {
							otherString = (String)lessArg.getVal().get(j);
							if (stringObj.compareTo(otherString) >= 0) return false;
						}  //  end of loop thru otherString's values
                }  //  end of loop thru lessThan
            }  //  end of lessThan-constraint-check
            if (mathVar.lessOrEql != null)  {
                Argument lessEqArg;
                for (int i=0; i < mathVar.lessOrEql.size(); i++)  {
                    lessEqArg = (Argument)mathVar.lessThan.get(i);
					if (lessEqArg.getVal() != null)
						for (int j=0; j < lessEqArg.getVal().size(); j++)  {
							otherString = (String)lessEqArg.getVal().get(j);
							if (stringObj.compareTo(otherString) > 0) return false;
						}  //  end of loop thru otherString's values
                }  //  end of loop thru lessOrEql
            }  //  end of lessOrEql-constraint-check
            if (mathVar.greaterThan != null)  {
                Argument greaterArg;
                for (int i=0; i < mathVar.greaterThan.size(); i++)  {
                    greaterArg = (Argument)mathVar.greaterThan.get(i);
                    if (greaterArg.getVal() != null)
						for (int j=0; j < greaterArg.getVal().size(); j++)  {
							otherString = (String)greaterArg.getVal().get(j);
							if (stringObj.compareTo(otherString) <= 0) return false;
						}  //  end of loop thru otherString's values
                }  //  end of loop thru greaterThan
            }  //  end of greaterThan-constraint-check
            if (mathVar.greaterOrEql != null)  {
                Argument grEqArg;
                for (int i=0; i < mathVar.greaterOrEql.size(); i++)  {
                    grEqArg = (Argument)mathVar.greaterOrEql.get(i);
                    if (grEqArg.getVal() != null)
						for (int j=0; j < grEqArg.getVal().size(); j++)  {
							otherString = (String)grEqArg.getVal().get(j);
							if (stringObj.compareTo(otherString) < 0) return false;
						}  //  end of loop thru otherString's values
                }  //  end of loop thru lessThan
            }  //  end of greaterOrEql-constraint-check
            return true;
        }  //  end of its-a-MathVar
        else  {  //  its-a-Constant
            if (((Constant)arg).getVal().contains(stringObj)) return true;
            else return false;
        }  //  end of its-a-Constant  
    }  //  end of method checkProposedVal(String)

    
   /**  Check the constraints on mathVar that makes sense for a Boolean 
        to see if this Boolean is a conforming value.
        Or, check that this Boolean is a member of the value field of the Constant arg.
        Type-checking has already been done, so we know that mathVar is of type Boolean.
        
        @param  boolObj  the Boolean object to be checked against these constraints
        @param  arg       a {@link MathVariable} containing constraints or a {@link Constant}
        
        @return  true   if all constraints are satisfied
   */
    public boolean checkProposedVal(Boolean boolObj, Argument arg)  {
        if (arg instanceof MathVariable)  {
            MathVariable mathVar = (MathVariable)arg;
            if ((mathVar.getVal() != null) && (mathVar.getVal().contains(boolObj))) return true;
            if (mathVar.notEqual != null)  {
                Argument unEqArg;
                for (int i=0; i < mathVar.notEqual.size(); i++)  {
                    unEqArg = (Argument)mathVar.notEqual.get(i);
                    if (unEqArg.getVal() != null && unEqArg.getVal().contains(boolObj)) return false;
                }  //  end of loop thru mathVar.notEqual 
            }  //  end of notEqual-constraint-check
            if (mathVar.priorValues != null)  {
                Boolean priorFailure;
                for (int i=0; i < mathVar.priorValues.size(); i++)  {  // there could be 2                     
                priorFailure = (Boolean)mathVar.priorValues.get(i);
                     if (priorFailure.equals(boolObj)) return false;
                }  //  end of loop thru priorValues
            }  //  end of priorValues-check
            return true;
        }  //  end of arg-is-a-MathVar
        else  {  //  arg-is-a-Constant
            if (((Constant)arg).getVal().contains(boolObj)) return true;
            else return false;
        }  //  end of its-a-Constant  
    }  //  end of method checkProposedVal(Boolean)
    
     
   /**  Check both constraints on mathVar that makes sense for an Individual 
        to see if this Individual is a conforming value.
        Or, check that this Individual is a member of the value field of the Variable arg.
        Type-checking has already been done, so we know the mathVar is of type Individual.
        
        @param  indObj  the Individual object to be checked against these constraints
        @param  arg       a {@link MathVariable} containing constraints or a {@link Variable}
        
        @return  true   if all constraints are satisfied
   */
    public boolean checkProposedVal(Individual indObj, Argument arg, TreeMap bindings, ArrayList<Object> starBindings, ConstraintObj constraints)
			throws KSConstraintInconsistency, KSInternalErrorException, ClassNotFoundException {
        if (arg instanceof MathVariable)  {
            MathVariable mathVar = (MathVariable)arg;
            if ((mathVar.getVal() != null) && (mathVar.getVal().contains(indObj))) return true;
            if (mathVar.notEqual != null)  {
                Argument otherArg;
                for (int i=0; i < mathVar.notEqual.size(); i++)  {
                    otherArg = (Argument)mathVar.notEqual.get(i);
                    if ((otherArg.getVal() != null) && (otherArg.getVal().contains(indObj))) return false;
                    else if ((otherArg instanceof Variable) 
                            && (bindings.get(arg.argName) == indObj)) return false;
                }  //  end of loop thru mathVar.notEqual 
            }  //  end of notEqual-constraint-check
            if (mathVar.priorValues != null)  {  //  priorValues contains the current value & all priors.  If indObj matches a current value
                Individual priorFailure;		 //  we don't get this far.  So any match here = a propr value.
                for (int i=0; i < mathVar.priorValues.size(); i++)  {  // there could be 2                     
                priorFailure = (Individual)mathVar.priorValues.get(i);
                     if (priorFailure.equals(indObj)) return false;
                }  //  end of loop thru priorValues
            }  //  end of priorValues-check
            return true;
        }  //  end of its-a-MathVar
        //  Don't need to check for a Constant; you can't reach here if it is.
        else if (arg instanceof Variable)  {
            if (bindings.get(arg.argName) == indObj) return true;
			else if ((bindings.get(arg.argName) == null) &&  // an unbound Variable
					 (indObj.meetsConstraintsStrictly((Variable)arg, constraints, bindings, starBindings)))  return true;
            else return false;
        }  //  end of its-a-Variable
        return false;
    }  //  end of method checkProposedVal(Individual)
    
    
   /**  Generate a list of potential values of the designated type (class).  Since the first "conforming value"
        in this list will be used (& the rest disgarded), a generous-sized list is provided.  If none of them prove to
        be "conforming" then the search will fail.  For the numeric types integer and float, arg must be a MathVariable.
		So we'll conform to any constraints available on the arg (e.g. value must be < 5).
        
        @param  requiredClass  the designated type (class).
        
        @return  the list
   */
    public ArrayList<Object> generateCandidateValues(Class requiredClass, Argument arg, TreeMap bindings, ArrayList<Object> starBindings, 
											ConstraintObj constraints, UserDefinedProperty udp) 
					throws KSBadHornClauseException, ClassNotFoundException, KSConstraintInconsistency, KSInternalErrorException  {
        int nmbrOfSmpls = 5;
        ArrayList<Object> list = new ArrayList<Object>(), unEqLst = new ArrayList<Object>();
        if (requiredClass.getName().equals("java.lang.Integer"))  {
            Integer intObj;
			MathVariable mathVar = (MathVariable)arg;
			float[] limits = {Float.MIN_VALUE, Float.MAX_VALUE};
			if ((udp != null) && (udp.minVal != null)) limits[0] = udp.minVal.floatValue();
			if ((udp != null) && (udp.maxVal != null)) limits[1] = udp.maxVal.floatValue();
			adjustLimitsToMathVarConstraints(limits, mathVar, unEqLst);	
			float hi = limits[1], lo = limits[0], range = hi - lo;	
			if (lo > hi) return list;  //  no range of permissible values; return empty list.
			if (lo == hi)  {
				intObj = new Integer((Math.round(lo)));
				list.add(intObj);
				return list;  //  only 1 number available -- do or die
				}
			for (int j=0; j < nmbrOfSmpls; j++)  {
				Float floatObj = new Float((Math.random() * range) + lo); 
				intObj = new Integer((Math.round(floatObj.floatValue())));
				if ((! list.contains(intObj)) && (! unEqLst.contains(intObj)))
					list.add(intObj);
				}
             //  end of generation loop
        return list;
        }  //  end of Integer section
        if (requiredClass.getName().equals("java.lang.Float"))  {
            Float floatObj;
			MathVariable mathVar = (MathVariable)arg;
			float[] limits = {Float.MIN_VALUE, Float.MAX_VALUE};
			if ((udp != null) && (udp.minVal != null)) limits[0] = udp.minVal.floatValue();
			if ((udp != null) && (udp.maxVal != null)) limits[1] = udp.maxVal.floatValue();
			adjustLimitsToMathVarConstraints(limits, mathVar, unEqLst);	
			float hi = limits[1], lo = limits[0], range = hi - lo;	
			if (lo > hi) return list;  //  no range of permissible values; return empty list.
			if (lo == hi)  {
				floatObj = new Float(lo);
				list.add(floatObj);
				return list;  //  only 1 number available -- do or die
				}
            for (int i=0; i < (3 * nmbrOfSmpls); i++) {
                floatObj = new Float((Math.random() * range) + lo);
			    if ((! list.contains(floatObj)) && (! unEqLst.contains(floatObj)))
						list.add(floatObj);
				}  //  end of generation loop
			return list;
        }  //  end of Float section
        if (requiredClass.getName().equals("java.lang.String"))  {
            list.add("cat");
            list.add("dog");
            list.add("Mary");
            list.add("had");
            list.add("a");
            list.add("little");
            list.add("lamb");
            list.add("with");
            list.add("fleece");
            list.add("as");
            list.add("white");
            list.add("snow");
            list.add("and");
            list.add("everywhere");
            list.add("went");
            list.add("that");
            list.add("was");
            list.add("sure");
            list.add("to");
            list.add("go");
            list.add("Thus");
            list.add("ends");
            list.add("the");
            list.add("list");
        return list;
        }  //  end of String section
       if (requiredClass.getName().equals("java.lang.Boolean"))  {
            list.add(new Boolean(true));
            list.add(new Boolean(false));
        return list;
        }  //  end of Boolean section
        if (requiredClass.getName().equals("Individual"))  {
            int maxNum = Context.current.individualCensus.size(), listSize = Math.min(maxNum, 25),
				num, limit = 3 * listSize;
            Individual ind;
			for (int i=0; i < nmbrOfSmpls; i++) {
                num = (new Double(Math.random() * maxNum)).intValue();
                ind = (Individual)Context.current.individualCensus.get(num);
				limit--;
				if ((! list.contains(ind)) && (! unEqLst.contains(ind)))
						list.add(ind);
				else i--;  //  if we hit a duplicate, don't count that one
				if (limit == 0) i = nmbrOfSmpls;  //  if we've failed that many times, give up!
				//  if (i > ) i = listSize;
                }  //  end of generation loop
			if (list.size() < nmbrOfSmpls)  //  it was slim pickin's; toss in one more
				list.add(new Individual("Extra", "?", null, "", arg.argName, null, bindings, starBindings, 
										constraints, (Variable)arg, new BoolFlag(false), new ClauseBody()));
			return list;
        }  //  end of Individual section
        return list;  //  so if we get an erroneous class name, we return an empty list
    }  //  end of method generateCandidateValues
    
	
	 /**Assure that this person meets all the constraints found on the {@link ConstraintObj} 'constraints'. By 'strictly'
	    we mean that if the constraint is 'dead', it is not sufficient for this person to have a null date of death;
		they must have a specific date (we are sure they're dead).
	
	@param	personVar		the Variable name we are considering binding to this person.
	@param	constraints		the set of constraints this person must satisfy.
	@param	bindings		the list of variables that have already been bound, and their values.
	@param	starBindings	a cumulative list of all the values assigned to UDPs
	
	@throws	KSConstraintInconsistency	if contradictory constraints are encountered.
	@throws KSInternalErrorException	if SILKin chokes on this data.
	@throws ClassNotFoundException		if a class name is misspelled (should never happen).
     */
   public boolean meetsConstraintsStrictly(Variable personVar, ConstraintObj constraints, TreeMap bindings, ArrayList<Object> starBindings) 
			throws KSConstraintInconsistency, KSInternalErrorException, ClassNotFoundException  {
		Literal lit = new Literal();
		String varName = personVar.argName;
		ArrayList<Object> unEqList = lit.makeUnEqList(varName, constraints, bindings);
		ArrayList<Object> ageSpecList = (ArrayList<Object>)constraints.age.get(varName);
		if (ageSpecList == null) ageSpecList = new ArrayList<Object>();
		if ((lit.sexMatch(this, bindings, constraints, personVar, false)) 
			&& (lit.unEqMatch(this, unEqList)) 
			&& (lit.meetsDeathSpecStrictly(this, (String)constraints.death.get(varName)))
			&& (lit.meetsDivSpecStrictly(this, (String)constraints.divorce.get(varName)))
			&& (lit.meetsStarSpecsStrictly(this, personVar, starBindings, bindings, constraints))
			&& (lit.meetsAgeSpecStrictly(this, ageSpecList, bindings)))
			return true;
		else return false;
        }  //end of method meetsConstraintsStrictly
	
	

    /**Assure that all elements of <code>constraintSet</code> are included in <code>superSet</code> without duplication. 
    The elements of constraintSet are either Variables (which bind to Individuals), MathVariables (which bind to
    lists of property values), or Constants.
	
	@param	mathVarOrig		the Variable whose value is being set
	@param	superSet		the set which must contain all elements of constraintSet's members' values
	@param	constraintSet	the list of variables whose members' values are required elements
	@param	starPropName	name of the {@link UserDefinedProperty} (UDP) involved
	@param	starBindings	a cumulative list of all the values assigned to UDPs
	@param	bindings		the list of variable bindings to date
	@param	requiredClass	the mandatory type of any value for mathVarOrig
	@param	constraints		all the constraints for this ClauseBody
	
	@throws	KSConstraintInconsistency  if there is a conflict beween the containment requirement and other constraints.
     */
    public void assureContains(MathVariable mathVarOrig, ArrayList<Object> superSet, ArrayList<Object> constraintSet, String starPropName, 
								ArrayList<Object> starBindings, TreeMap bindings, Class requiredClass, 
								ConstraintObj constraints, ClauseBody cb) 
				throws KSConstraintInconsistency, KSInternalErrorException, ClassNotFoundException {
				
        Argument arg;
        MathVariable mathVar;
        for (int i=0; i < constraintSet.size(); i++)  {
            arg = (Argument)constraintSet.get(i);
            if ((arg instanceof MathVariable) || (arg instanceof Constant))  { 
                for (int j = 0; j < arg.getVal().size(); j++)  {
                    if (! superSet.contains(arg.getVal().get(j))) {
                        if (! checkProposedVal(requiredClass, arg.getVal().get(j), (Argument)mathVarOrig, 
							 bindings, starBindings, constraints))
							throw new KSConstraintInconsistency("Containment requirement conflicts with other constraints" +
										" on the value of " + mathVarOrig.argName + " in\n" + cb);
						else {
							superSet.add(arg.getVal().get(j));  
							mathVarOrig.updatePriorVals(arg.getVal().get(j));
							}
                    }  // end of found-missing-element
                }  //  end of loop thru the values of arg
            }else  {  //  it's a regular Variable
                Individual ind = (Individual)bindings.get(arg.argName);  // if ind == null, this variable is not yet bound
                if ((ind != null) && (! superSet.contains(ind)))  {
					if (! checkProposedVal(requiredClass, (Object)ind, (Argument)mathVarOrig, bindings, starBindings, constraints))
						throw new KSConstraintInconsistency("Containment requirement conflicts with other constraints" +
										" on the value of " + mathVarOrig.argName + " in\n" + cb);
					else {
						superSet.add(ind);
						mathVarOrig.updatePriorVals(ind);
						}
                }  // end of found-missing-element
            }  // end of else-it-is-a-regular-Variable
        }  //  end of loop thru required elements
    }  //  end of method assureContains 
	
	

    /**Assure that all members of <code>constraintSet</code> include in their values, without duplication,
	all of the reqElements.  The members of constraintSet are MathVariables.
	
	@param	reqElements		required elements that must be included in values of constraintSet members
	@param	constraintSet	the list of MathVariables whose values must contain the required elements
	@param	starPropName	name of the {@link UserDefinedProperty} (UDP) involved
	@param	starBindings	a cumulative list of all the values assigned to UDPs
	@param	bindings		the list of variable bindings to date
    @param	requiredClass	the mandatory type of any value for mathVarOrig
	@param	constraints		all the constraints for this ClauseBody
	
	@throws	KSConstraintInconsistency  if there is a conflict beween the containment requirement and other constraints.
     */
    public void assureContainedBy(Argument arg, ArrayList<Object> reqElements, ArrayList<Object> constraintSet, String starPropName, ArrayList<Object> starBindings, 
								TreeMap bindings, Class requiredClass, ConstraintObj constraints, ClauseBody cb) 
			throws KSConstraintInconsistency, KSInternalErrorException, ClassNotFoundException  {
			
        MathVariable mathVar;
        for (int i=0; i < constraintSet.size(); i++)  {
            mathVar = (MathVariable)constraintSet.get(i);  //  Only a mathVar can contain multiple values
			for (int j = 0; j < reqElements.size(); j++)  {
				if (! mathVar.getVal().contains(reqElements.get(j))) {
					if (! checkProposedVal(requiredClass, reqElements.get(j), (Argument)mathVar, 
											bindings, starBindings, constraints))
						throw new KSConstraintInconsistency("Containment requirement conflicts with other constraints" +
										" on the value of " + arg.argName + " in\n" + cb);
					else {
	//  NOTE:  This is the only place we create an SPB without naming the PersonBound; indeed, that person may
	//		   be unknown at this point.  This records the addition of a value.
						mathVar.addVal(reqElements.get(j));
						mathVar.updatePriorVals(reqElements.get(j));
						StarPropertyBinding spb = new StarPropertyBinding();
						spb.mathVarBound = mathVar;
						spb.valsAssigned.add(reqElements.get(j));
						spb.starPropName = starPropName;
						spb.addTo(starBindings);
						}
				}  // end of found-missing-element
			}  //  end of loop thru the values of mathVar
        }  //  end of loop thru constraintSet
    }  //  end of method assureContainedBy 
    
    
    /**  Analyze the constraints on this mathVar and determine the correct limits on its value.
         
         @param limits    the starting lower & upper limits for this MathVar's legal value
		 @param mathVar	  the MathVar in question
         @param unEqLst   we generate a list of values that mathVar cannot equal, based on this analysis of 
						  mathVar's notEqual list of other variables it cannot equal.
    */
	public void adjustLimitsToMathVarConstraints(float[] limits, MathVariable mathVar, ArrayList<Object> unEqLst)  {
		Argument otherVar;
		int LO = 0, HI = 1;
		float flor, ceiling;
		if ((mathVar.lessOrEql != null) && (mathVar.lessOrEql.size() > 0))  {
			for (int i=0; i < mathVar.lessOrEql.size(); i++)  {
				otherVar = (Argument)mathVar.lessOrEql.get(i);
				if ((otherVar.getVal() != null) && (otherVar.getVal().size() > 0) && (otherVar.getVal().get(0) instanceof Integer))
					for (int j=0; j < otherVar.getVal().size(); j++)  {
						ceiling = ((Integer)otherVar.getVal().get(j)).floatValue(); 
						limits[HI] = Math.min(limits[HI], ceiling);
						}  //  end of found some integer ceilings
				if ((otherVar.getVal() != null) && (otherVar.getVal().size() > 0) && (otherVar.getVal().get(0) instanceof Float))
					for (int j=0; j < otherVar.getVal().size(); j++)  {
						ceiling = ((Float)otherVar.getVal().get(j)).floatValue();
						limits[HI] = Math.min(limits[HI], ceiling);
						}  //  end of found some float ceilings
				}  //  end of loop thru members of 'lessOrEql'
			} 
		if ((mathVar.lessThan != null) && (mathVar.lessThan.size() > 0))  {
			for (int i=0; i < mathVar.lessThan.size(); i++)  {
				otherVar = (Argument)mathVar.lessThan.get(i);
				if ((otherVar.getVal() != null) && (otherVar.getVal().size() > 0) && (otherVar.getVal().get(0) instanceof Integer))
					for (int j=0; j < otherVar.getVal().size(); j++)  {
						ceiling = ((Integer)otherVar.getVal().get(j)).floatValue();
						limits[HI] = Math.min(limits[HI], ceiling - Float.MIN_VALUE);
						}  //  end of found some integer ceilings
				if ((otherVar.getVal() != null) && (otherVar.getVal().size() > 0) && (otherVar.getVal().get(0) instanceof Float))
					for (int j=0; j < otherVar.getVal().size(); j++)  {
						ceiling = ((Float)otherVar.getVal().get(j)).floatValue();
						limits[HI] = Math.min(limits[HI], ceiling - Float.MIN_VALUE);
						}  //  end of found some float ceilings
				}  //  end of loop thru members of 'lessThan'
			} 
		if ((mathVar.greaterOrEql != null) && (mathVar.greaterOrEql.size() > 0))  {
			for (int i=0; i < mathVar.greaterOrEql.size(); i++)  {
				otherVar = (Argument)mathVar.greaterOrEql.get(i);
				if ((otherVar.getVal() != null) && (otherVar.getVal().size() > 0) && (otherVar.getVal().get(0) instanceof Integer))
					for (int j=0; j < otherVar.getVal().size(); j++)  {
						flor = ((Integer)otherVar.getVal().get(j)).floatValue();
						limits[LO] = Math.max(limits[LO], flor);
						}  //  end of found some integer floors
				if ((otherVar.getVal() != null) && (otherVar.getVal().size() > 0) && (otherVar.getVal().get(0) instanceof Float))
					for (int j=0; j < otherVar.getVal().size(); j++)  {
						flor = ((Float)otherVar.getVal().get(j)).floatValue();
						limits[LO] = Math.max(limits[LO], flor);
						}  //  end of found some float floors
				}  //  end of loop thru members of 'greaterOrEql'
			} 
		if ((mathVar.greaterThan != null) && (mathVar.greaterThan.size() > 0))  {
			for (int i=0; i < mathVar.greaterThan.size(); i++)  {
				otherVar = (Argument)mathVar.greaterThan.get(i);
				if ((otherVar.getVal() != null) && (otherVar.getVal().size() > 0) && (otherVar.getVal().get(0) instanceof Integer))
					for (int j=0; j < otherVar.getVal().size(); j++)  {
						flor = ((Integer)otherVar.getVal().get(j)).floatValue();
						limits[LO] = Math.max(limits[LO], flor + Float.MIN_VALUE);
						}  //  end of found some integer floors
				if ((otherVar.getVal() != null) && (otherVar.getVal().size() > 0) && (otherVar.getVal().get(0) instanceof Float))
					for (int j=0; j < otherVar.getVal().size(); j++)  {
						flor = ((Float)otherVar.getVal().get(j)).floatValue();
						limits[LO] = Math.max(limits[LO], flor + Float.MIN_VALUE);
						}  //  end of found some float floors
				}  //  end of loop thru members of 'greaterThan'
			}  
		if ((mathVar.notEqual != null) && (mathVar.notEqual.size() > 0))  {
			for (int i=0; i < mathVar.notEqual.size(); i++)  {
				otherVar = (Argument)mathVar.notEqual.get(i);
				if ((otherVar.getVal() != null) && (otherVar.getVal().size() > 0) && (otherVar.getVal().get(0) instanceof Integer))
					for (int j=0; j < otherVar.getVal().size(); j++)  
						unEqLst.add(otherVar.getVal().get(j));
				if ((otherVar.getVal() != null) && (otherVar.getVal().size() > 0) && (otherVar.getVal().get(0) instanceof Float))
					for (int j=0; j < otherVar.getVal().size(); j++)  
						unEqLst.add(otherVar.getVal().get(j));
				}  //  end of loop thru members of 'notEqual'
			}  
		}  //  end of method adjustLimitsToMathVarConstraints



    /**  Given a string representing the type of a UserDefinedProperty, return a valid Class object.  */
    Class getUDPClass(String type) throws ClassNotFoundException {
        if ((type.equals("integer")) || (type.equals("Integer"))) 
            return Class.forName("java.lang.Integer");
        if ((type.equals("float")) || (type.equals("Float"))) 
            return Class.forName("java.lang.Float");
        if ((type.equals("string")) || (type.equals("String"))) 
            return Class.forName("java.lang.String");
        if ((type.equals("boolean")) || (type.equals("Boolean"))) 
            return Class.forName("java.lang.Boolean");
        if ((type.equals("individual")) || (type.equals("Individual"))) 
            return Class.forName("Individual");
        System.out.println("\n\ngetUDPClass found a type of '" + type + "'.\n\n");
        return null;
    }  //  end of method getUDPClass
    
    
    /**  Make a new TreeMap to serve as the userDefinedProperties (UDP) treemap for a newly-created
         Individual.  The parameter is the UDP 'template' from the DomainTheory.  It has all the type
         information about each UDP.  We want to copy that, but for each {@link UserDefinedProperty} object
         in the treemap we want to put a fresh (empty) ArrayList<Object> in the 'value' field so this Individual can
         have her own value(s) for each property.   If 'useDefaults' is false, we do NOT assign default values here; 
		 the 'Monster Constructor' must check for constraints before assigning a value; that is done in findConformingValue
         
         @param dtUDTTreeMap    the template treemap from the current Context
		 @param useDefaults		true = assign a default value, if one is defined.
         
         @return    a new copy of the template with unique value fields for this Individual
    */
    public TreeMap makeNewUDPTreeMap(TreeMap ctxtUDPTreeMap, boolean useDefaults)  {
        TreeMap newTM = new TreeMap();
        UserDefinedProperty templateUDP, newUDP;
        Map.Entry entry;
        String propName;
        Iterator iter = ctxtUDPTreeMap.entrySet().iterator();
        while (iter.hasNext())  {
            entry = (Map.Entry)iter.next();
            propName = (String)entry.getKey();
            templateUDP = (UserDefinedProperty)entry.getValue();
            newUDP = new UserDefinedProperty(templateUDP, false);  //  copy with a fresh, empty 'value' field
			if (useDefaults && (newUDP.defaultValue != null)) newUDP.value.add(newUDP.defaultValue);
			newTM.put(propName, newUDP);
        }  //  end of loop thru UDP's in the template treemap
        return newTM;
    }  //  end of method makeNewUDPTreeMap
	
    /**  A 'shorthand' version of <code>makeNewUDPTreeMap</code> with useDefaults = true
         
         @param dtUDTTreeMap    the template treemap from the current Context
         
         @return    a new copy of the template with unique value fields for this Individual
    */
    public TreeMap makeNewUDPTreeMap(TreeMap ctxtUDPTreeMap)  {
        return makeNewUDPTreeMap(ctxtUDPTreeMap, true);
    }  //  end of method makeNewUDPTreeMap
	
		
}  // end of public class Individual
