
import java.io.*;
import java.util.*;
import java.text.*;
import java.awt.*;
import javax.swing.*;

/** This SILKFileParserPreXML is an extension of the basic {@link Parser} class which reads in Domain Theories expressed in
Horn Clauses.  This one reads in a SILK file which has been saved to disk in a *.silk format.
The Context-Free Grammar defining a *.silk file format is documented in {@link SILKFileGrammar}.
<p>
When constructed with a {@link Tokenizer}, this SILKFileParserPreXML will construct a {@link Context}
from the tokens found in the <code>Tokenizer's</code> input file.
</p>

@author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
 */
public class SILKFileParserPreXML extends Parser {

    Context newCtxt = new Context();
    int origIndCount, origFamCount, currentEgoSerialNmbr, lastPersonIndexed = -99;
    boolean udp2ndPassReqd = false;
    boolean orphanDyadFlag = false;
    /*  These 2 tables will hold the relationships between Individuals & Families.
     *  IndivTable records which family serial# is the birth family of an individual
     *  and a list of his marriages (all expressed as Integers).
     *  The family table records serial#s of Husband, Wife, & kids.
     *  After all families and individuals have been re-created from the SILKFile,
     *  we will use the tables to insert pointers to the proper Individual and Family
     *  objects into each Individual and Family.
     *
     *  TABLE STRUCTURE: each row in indivTable = 1 person. Normally, row# = serial#.
     *  Each row contains individual serial#, birthFam serial# (or -1 if we don't
     *  know the birth family) and zero or more serial#s of families representing
     *  this person's marriages.
     *
     *  Each row in famTable is a family. Normally, row# = serial#.
     *  Each row contains family serial#, husband serial# (or -1 if unknown),
     *  wife serial# (or -1 if unknown), and zero or more serial#s of children.
     */
    ArrayList<ArrayList<Integer>> indivTable;
    ArrayList<ArrayList<Integer>> famTable;
    TreeMap starTable = new TreeMap();
    ArrayList<DyadTemp> tempDyadsDefinedRef, tempDyadsUndefinedRef,
            tempDyadsDefinedAddr, tempDyadsUndefinedAddr;
    String validCodes = "<PR><PA><ER><EA><XR><XA>";  //  for KinTermMAtrix
    String issuesFor = "REF";

    /** Construct a SILKFileParserPreXML.

    @param	tok	a <code>Tokenizer</code> which parses tokens from an input file on demand.
     */
    public SILKFileParserPreXML(Tokenizer tok) {
        super(tok);
    }

    /*
    SILKFile -> Header, Body, "</SIL_KinData >".
     */
    public Context parseSILKFile() throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException,
            KSInternalErrorException, KSConstraintInconsistency, KSDateParseException {
        parseHeader();
        parseBody();
        DomainTheory dt;
        if (!newCtxt.domTheoryRefExists()) {
            dt = new DomainTheory(newCtxt, false, "");
            newCtxt.addDomainTheory(dt);
        }
        if (newCtxt.indSerNumGen != origIndCount) //  verify number of individuals loaded
        {
            error("ERROR: Number of individuals created does not equal parameter <indSerNum>.");
        }
        if (newCtxt.famSerNumGen != origFamCount) //  verify number of families loaded
        {
            error("ERROR: Number of families created does not equal parameter <famSerNum>.");
        }
        if (udp2ndPassReqd) {
            doUDPSerialSwaps();
        }
        doIndFamSerialSwaps();
        doDyadSwaps();
        newCtxt.currentEgo = (Individual) newCtxt.individualCensus.get(currentEgoSerialNmbr);
        if (!starTable.isEmpty()) {
            doStarSwaps();
        }
        parseIssueLists();
        current = scanner.readToken();  // read token, which must be the flag '/SIL_KinData'
        if (!current.lexeme.equals("</SIL_KinData>")) {
            error("parseSILKFile seeking the tag '</SIL_KinData>'. ");
        }
        if (orphanDyadFlag) {
            String msg = "While re-loading the Suggestions from prior learning sessions,\n"
                    + "we encountered references to a person or relationship that is\n"
                    + " no longer valid. Those references were ignored, but this may\n"
                    + "make some Suggestions seem illogical. If so, Get New Suggestions.\n";
            MainPane.displayError(msg, "Internal Problem", JOptionPane.WARNING_MESSAGE);
        }
        return newCtxt;
    }


    /*
    Header -> ""<?xml version=\"1.0\" encoding=\"UTF-8\" ?>"", "<!DOCTYPE SIL_KinData>", "<SIL_KinData>".
    First: [""<?xml version=\"1.0\" encoding=\"UTF-8\" ?>""]
    Follow: [tags: "<parameters>", "<editorSettings>", "<individualCensus>", "<familyCensus>", "<matrix>",
    "<dyadsUndefinedRef>", "<dyadsDefinedRef>", "<dyadsUndefinedAddr>", "<dyadsDefinedAddr>"]
     */
    void parseHeader() throws KSParsingErrorException {
        current = scanner.readToken();  // read token, which must be the tag '"<?xml version=\"1.0\" encoding=\"UTF-8\" ?>"'
        if (current.lexeme.indexOf("<?xml version=\"1.0\"") == -1) {
            error("parseHeader seeking a tag beginning with '<?xml version=\"1.0\"'. ");
        }
        current = scanner.readToken();  // read token, which must be the tag '<!DOCTYPE SIL_KinData>'
        if (!current.lexeme.equals("<!DOCTYPE SIL_KinData>")) {
            error("parseHeader seeking the tag '<!DOCTYPE SIL_KinData>'. ");
        }
        current = scanner.readToken();  // read token, which must be the flag '<SIL_KinData>'
        if (!current.lexeme.equals("<SIL_KinData>")) {
            error("parseHeader seeking the flag '<SIL_KinData>'. ");
        }
        return;
    }


    /*
    Body ->     "<parameters>", Parameters, "</parameters>", Body.
    |  "<editorSettings>", EditorSettings, "</editorSettings>", Body.
    |  "<individualCensus>", Individuals, "</individualCensus>", Body.
    |  "<familyCensus>", Families, "</familyCensus>", Body.
    |  "<matrix>", Matrix, "</matrix>", Body.
    |  "<dyadsUndefinedRef>", DyadKinTerms, "</dyadsUndefinedRef>", Body.
    |  "<dyadsDefinedRef>", DyadKinTerms, "</dyadsDefinedRef>", Body.
    |  "<dyadsUndefinedAddr>", DyadKinTerms, "</dyadsUndefinedAddr>", Body.
    |  "<dyadsDefinedAddr>", DyadKinTerms, "</dyadsDefinedAddr>", Body.
    |  "<kinTypeIndex>", KinTypeIndex, "</kinTypeIndex>", Body.
    |  \empty.

    First: ["parameters", "editorSettings", "individualCensus", "familyCensus",
    "matrix", "dyadsUndefinedRef", "dyadsDefinedRef", "dyadsUndefinedAddr",
    "<silkin-issues>", "dyadsDefinedAddr"]
    Follow: [flags: "<silkin-issues type="Reference">", "<silkin-issues type="Address">",
    "</SIL_KinData >"]
     */
    void parseBody() throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException,
            KSInternalErrorException, KSConstraintInconsistency, KSDateParseException {
        current = scanner.lookAhead();  // peek at token, which must be a flag or a tag.
        if (!(current.token.equals("tag") || current.token.equals("tagWithAttributes"))) {
            error("parseBody looking for a tag (e.g. '<parameters>').");
        }
        if (current.lexeme.equals("<parameters>")) {
            scanner.readToken();  //  consume the start flag
            parseParameters();
            current = scanner.readToken();  // read token, which must be the flag '</parameters>'
            if (!current.lexeme.equals("</parameters>")) {
                error("parseBody seeking the end flag '</parameters>'. ");
            }
            parseBody();
        } else if (current.lexeme.equals("<editorSettings>")) {
            scanner.readToken();  //  consume the start flag
            parseEditorSettings();
            current = scanner.readToken();  // read token, which must be the flag '</editorSettings>'
            if (!current.lexeme.equals("</editorSettings>")) {
                error("parseBody seeking the end flag '</editorSettings>'. ");
            }
            parseBody();
        } else if (current.lexeme.equals("<individualCensus>")) {
            scanner.readToken();  //  consume the start flag
            parseIndividuals();
            current = scanner.readToken();  // read token, which must be the flag '</individualCensus>'
            if (!current.lexeme.equals("</individualCensus>")) {
                error("parseBody seeking the end flag '</individualCensus>'. ");
            }
            parseBody();
        } else if (current.lexeme.equals("<familyCensus>")) {
            parseFamilyCensus();
            parseBody();
        } else if (current.lexeme.equals("<matrix>")) {
            parseMatrix();
            parseBody();
        } else if (current.lexeme.equals("<dyadsUndefinedRef>")) {
            scanner.readToken();  //  consume the start flag
            DomainTheory dt = newCtxt.domTheoryRef();
            dt.dyadsUndefined = new DyadTMap();
            tempDyadsUndefinedRef = new ArrayList<DyadTemp>();
            parseDyadKinTerms(tempDyadsUndefinedRef);
            current = scanner.readToken();  // read token, which must be the flag '</dyadsUndefinedRef>'
            if (!current.lexeme.equals("</dyadsUndefinedRef>")) {
                error("parseBody seeking the end flag '</dyadsUndefinedRef>'. ");
            }
            parseBody();
        } else if (current.lexeme.equals("<dyadsDefinedRef>")) {
            scanner.readToken();  //  consume the start flag
            DomainTheory dt = newCtxt.domTheoryRef();
            dt.dyadsDefined = new DyadTMap();
            tempDyadsDefinedRef = new ArrayList<DyadTemp>();
            parseDyadKinTerms(tempDyadsDefinedRef);
            current = scanner.readToken();  // read token, which must be the flag '</dyadsDefinedRef>'
            if (!current.lexeme.equals("</dyadsDefinedRef>")) {
                error("parseBody seeking the end flag '</dyadsDefinedRef>'. ");
            }
            parseBody();
        } else if (current.lexeme.equals("<dyadsUndefinedAddr>")) {
            scanner.readToken();  //  consume the start flag
            DomainTheory dt = newCtxt.domTheoryAdr();
            dt.dyadsUndefined = new DyadTMap();
            tempDyadsUndefinedAddr = new ArrayList<DyadTemp>();
            parseDyadKinTerms(tempDyadsUndefinedAddr);
            current = scanner.readToken();  // read token, which must be the flag '</dyadsUndefinedAddr>'
            if (!current.lexeme.equals("</dyadsUndefinedAddr>")) {
                error("parseBody seeking the end flag '</dyadsUndefinedAddr>'. ");
            }
            parseBody();
        } else if (current.lexeme.equals("<dyadsDefinedAddr>")) {
            scanner.readToken();  //  consume the start flag
            DomainTheory dt = newCtxt.domTheoryAdr();
            dt.dyadsDefined = new DyadTMap();
            tempDyadsDefinedAddr = new ArrayList<DyadTemp>();
            parseDyadKinTerms(tempDyadsDefinedAddr);
            current = scanner.readToken();  // read token, which must be the flag '</dyadsDefinedAddr>'
            if (!current.lexeme.equals("</dyadsDefinedAddr>")) {
                error("parseBody seeking the end flag '</dyadsDefinedAddr>'. ");
            }
            parseBody();
        } else if (current.lexeme.equals("<kinTypeIndex>")) {
            scanner.readToken();  //  consume the start flag
            parseKinTypeIndex(newCtxt.kti);
            current = scanner.readToken();  // read token, which must be the flag '</kinTypeIndex>'
            if (!current.lexeme.equals("</kinTypeIndex>")) {
                error("parseBody seeking the end flag '</kinTypeIndex>'. ");
            }
            parseBody();
        } else if (current.lexeme.substring(0, 14).equals("<accepted-defs")) { //
            scanner.readToken();  //  consume the start flag
            boolean ref = current.lexeme.substring(20, 23).equals("Ref");
            if (!ref && newCtxt.learningHistoryAdr == null) {
                newCtxt.learningHistoryAdr = new TreeMap<String, ArrayList<Context.HistoryItem>>();
            }
            TreeMap<String, ArrayList<Context.HistoryItem>> learningHistory = 
                    (ref ? newCtxt.learningHistoryRef : newCtxt.learningHistoryAdr);
            parseAccDefs(learningHistory);
            current = scanner.readToken();  // read token, which must be the flag '</accepted-defs'...
            if (!current.lexeme.equals("</accepted-defs>")) {
                error("parseBody seeking the end flag '</accepted-defs>'. ");
            }
            parseBody();
        } else if (current.lexeme.equals("</SIL_KinData>")
                || current.lexeme.substring(0, 14).equals("<silkin-issues")) {
            return;
        } else {
            error("parseBody found unknown flag '" + current.lexeme + "'. ");
        }
    }  //  end of method parseBody

    /*
    Parameters ->  LangName, Theory1, Theory2, Comments, CreateDate, DataAuthor,
    IndSerial, FamSerial, Poly, UDPs.
    First: ["<languageName>"]   Follow: [flag: "</parameters>"]
     */
    void parseParameters() throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException,
            KSInternalErrorException, KSConstraintInconsistency {
//  grab the lang name for the ctxt
        newCtxt.languageName = parseLangName();
        Library.activeContexts.put(newCtxt.languageName, newCtxt);
        parseTheory1();
        parseTheory2();
        newCtxt.comments = parseComments();
        parseCreateDate();
        parseDataAuthor();
        parseIndSerial();
        parseFamSerial();
        parsePoly();
        parseUDPList(newCtxt);
    }  //  end of method parseParameters


    /*
    LangName -> "<languageName>",  symbol  "</languageName>".
    First: ["<languageName>"]	 Follow: [flag: "<theory>"]
     */
    String parseLangName() throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the start flag, which must be "<languageName>"
        if (!current.lexeme.equals("<languageName>")) {
            error("parseLangName seeking the flag '<languageName>'. ");
        }
        current = scanner.readToken();  //  consume next, which must be a string
        if (!current.token.equals("string")) {
            error("parseLangName seeking a <languageName> symbol. ");
        }
        String name = current.lexeme;
        current = scanner.readToken();  //  consume the divorceYr flag, which must be "</languageName>"
        if (!current.lexeme.equals("</languageName>")) {
            error("parseLangName seeking the flag '</languageName>'. ");
        }
        return name;
    }  //  end of method parseLangName

    /*
    Theory1 -> "<theory>", string, "</theory>".
    First: ["<theory>"]	 Follow: [tags: "<theory>", "<comments>", "<createDate>", "<indSerialNum"]
     */
    void parseTheory1() throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException,
            KSInternalErrorException, KSConstraintInconsistency {
        current = scanner.readToken();  //  consume the start flag, which must be "<theory>"
        if (!current.lexeme.equals("<theory>")) {
            error("parseTheory1 seeking the flag '<theory>'. ");
        }
        current = scanner.readToken();  //  consume next, which must be a string
        if (!current.token.equals("string")) {
            error("parseTheory1 seeking a pathname. ");
        }
        File currFile = new File(filePath);     //  current token is relative pathname to .thy file
        String theoryFile = currFile.getParent() + "/" + current.lexeme;
        current = scanner.readToken();  //  consume the divorceYr flag, which must be "</theory>"
        if (!current.lexeme.equals("</theory>")) {
            error("parseTheory1 seeking the flag '</theory>'. ");
        }
        DomainTheory dt = Library.readThyFile(theoryFile);
        //  newCtxt.addDomainTheory(dt); //  automatically added by readThyFile
    }

    /*
    Theory2 -> "<theory>", string, "</theory>".
    | \empty.
    First: ["<theory>"]	 Follow: [tags: "<comments>", "<createDate>", "<indSerialNum>"]
     */
    void parseTheory2() throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException,
            KSInternalErrorException, KSConstraintInconsistency {
        current = scanner.lookAhead();  //  inspect the next flag.
        if (current.lexeme.equals("<theory>")) {
            scanner.readToken();  //  consume the <theory> flag
            current = scanner.readToken();  //  consume next, which must be a string
            if (!current.token.equals("string")) {
                error("parseTheory2 seeking a pathname. ");
            }
            File currFile = new File(filePath);     //  current token is relative pathname to .thy file
            String theoryFile = currFile.getParent() + "/" + current.lexeme;
            current = scanner.readToken();  //  consume the divorceYr flag, which must be "</theory>"
            if (!current.lexeme.equals("</theory>")) {
                error("parseTheory2 seeking the flag '</theory>'. ");
            }
            DomainTheory dt = Library.readThyFile(theoryFile);
            //  newCtxt.addDomainTheory(dt); //  automatically added by readThyFile
        } else if (current.lexeme.equals("<comments>") || current.lexeme.equals("<createDate>")
                || current.lexeme.equals("<indSerialNum>")) {
            return;
        } else {
            error("parseTheory2 seeking a flag: '<theory>', '<comments>, '<createDate>' or '<indSerialNum>. ");
        }
    }

    /*
    Comments -> "<comments>", string, "</comments>".
    |  \empty.
    First: ["<comments>"]	 Follow: [tags: "<createDate>", "<indSerialNum>", "<getDateOfBirth>", "</family>"]
     */
    String parseComments() throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.lexeme.equals("<comments>")) {
            scanner.readToken();  //  consume the start flag.
            current = scanner.readToken();  //  consume next, which must be a string
            if (!current.token.equals("string")) {
                error("parseComments seeking a <comments> string. ");
            }
            String comment = current.lexeme;
            current = scanner.readToken();  //  consume the divorceYr flag, which must be "</comments>"
            if (!current.lexeme.equals("</comments>")) {
                error("parseComments seeking the flag '</comments>'. ");
            }
            return comment;
        } else if (current.lexeme.equals("<createDate>") || current.lexeme.equals("<indSerialNum>")
                || current.lexeme.equals("<dateOfBirth>") || current.lexeme.equals("</family>")) {
            return null;
        }
        error("parseComments seeking a flag: '<comments>, '<createDate>',"
                + "\n'<indSerialNum>', '<dateOfBirth>' or '</family>'.");
        return null;
    }


    /*
    CreateDate -> "<createDate>", string, "</createDate>".
    |  \empty.
    First: ["<createDate>"]	 Follow: ["<indSerNum>"]
     */
    void parseCreateDate() throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.lexeme.equals("<createDate>")) {
            scanner.readToken();  //  consume the start flag.
            current = scanner.readToken();  //  consume next, which must be a string
            if (!current.token.equals("string")) {
                error("parseCreateDate seeking a <createDate> string. ");
            }
            String createDate = current.lexeme;
            current = scanner.readToken();  //  consume the divorceYr flag, which must be "</comments>"
            if (!current.lexeme.equals("</createDate>")) {
                error("parseCreateDate seeking the flag '</createDate>'. ");
            }
            Date cDate = null;
            try {
                cDate = UDate.parse(createDate);
            } catch (KSDateParseException pex) {
                error("Trying to parseCreateDate: " + pex);
            }
            newCtxt.createDate = UDate.dfMedium.format(cDate);
        } else if (current.lexeme.equals("<indSerNum>") || current.lexeme.equals("<dataAuthor>")) {
            return;
        } else {
            error("parseCreateDate seeking a flag: '<createDate>', '<dataAuthor>',  or '<indSerNum>'.");
        }
    }

    /*
    DataAuthor -> "<dataAuthor>", string, "</dataAuthor>".
    |  \empty.
    First: ["<dataAuthor>"]	 Follow: ["<indSerNum>"]
     */
    void parseDataAuthor() throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.lexeme.equals("<dataAuthor>")) {
            String author = readTaggedString("dataAuthor", "parseDataAuthor");
            newCtxt.dataAuthors.add(author);
        } else if (current.lexeme.equals("<indSerNum>")) {
            return;
        } else {
            error("parseDataAuthor seeking a flag: '<dataAuthor>' or '<indSerNum>'.");
        }
    }

    /*
    IndSerial -> "<indSerNum>", integer, "</indSerNum>".
    First: ["<indSerNum>"]	 Follow: ["<famSerNum>"]
     */
    void parseIndSerial() throws KSParsingErrorException, NumberFormatException {
        current = scanner.readToken();  //  consume the start flag, which must be "<indSerNum>"
        if (!current.lexeme.equals("<indSerNum>")) {
            error("parseIndSerial seeking the flag '<indSerNum>'. ");
        }
        current = scanner.readToken();  //  consume next, which must be an integer
        if (!current.token.equals("integer")) {
            error("parseIndSerial seeking a <indSerNum> integer. ");
        }
        int nmbrOfPersons = current.intVal;
        origIndCount = nmbrOfPersons;  //  will use it as a check-sum after individuals loaded
        indivTable = new ArrayList<ArrayList<Integer>>(nmbrOfPersons);
        current = scanner.readToken();  //  consume the divorceYr flag, which must be "</indSerNum>"
        if (!current.lexeme.equals("</indSerNum>")) {
            error("parseIndSerial seeking the flag '</indSerNum>'. ");
        }
    }

    /*
    FamSerial -> "<famSerNum>", integer,"</famSerNum>".
    First: ["<famSerNum>"]	 Follow: ["<polygamyPermit>"]
     */
    void parseFamSerial() throws KSParsingErrorException, NumberFormatException {
        current = scanner.readToken();  //  consume the start flag, which must be "<famSerNum>"
        if (!current.lexeme.equals("<famSerNum>")) {
            error("parseFamSerial seeking the flag '<famSerNum>'. ");
        }
        current = scanner.readToken();  //  consume next, which must be an integer
        if (!current.token.equals("integer")) {
            error("parseFamSerial seeking a <famSerNum> integer. ");
        }
        int nmbrOfFams = Integer.parseInt(current.lexeme);
        origFamCount = nmbrOfFams;
        famTable = new ArrayList<ArrayList<Integer>>(nmbrOfFams);
        current = scanner.readToken();  //  consume the divorceYr flag, which must be "</famSerNum>"
        if (!current.lexeme.equals("</famSerNum>")) {
            error("parseFamSerial seeking the flag '</famSerNum>'. ");
        }
    }

    /*
    Poly -> "<polygamyPermit>", boolean, "</polygamyPermit>".
    First: ["<polygamyPermit>"]	 Follow: [tags: "<UDP>", "</parameters>"]
     */
    void parsePoly() throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the start flag, which must be "<polygamyPermit>"
        if (!current.lexeme.equals("<polygamyPermit>")) {
            error("parsePoly seeking the flag '<polygamyPermit>'. ");
        }
        current = scanner.readToken();  //  consume next, which must be a string
        if (!current.token.equals("string")) {
            error("parsePoly seeking a <polygamyPermit> boolean. ");
        }
        newCtxt.polygamyPermit = Boolean.parseBoolean(current.lexeme);
        current = scanner.readToken();  //  consume the divorceYr flag, which must be "</polygamyPermit>"
        if (!current.lexeme.equals("</polygamyPermit>")) {
            error("parsePoly seeking the flag '</polygamyPermit>'. ");
        }
    }

    /*	UDPList -> "<userDefinedProperties>", UDPs, "</userDefinedProperties>".
    First: ["<userDefinedProperties>"]	 Follow: [flag: "<starLinks>"]
     */
    void parseUDPList(Individual ind) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the flag, which must be "<userDefinedProperties>"
        if (!current.lexeme.equals("<userDefinedProperties>")) {
            error("parseUDPList seeking flag '<userDefinedProperties>', but found " + current.lexeme);
        }
        TreeMap tMap = new TreeMap();
        parseUDPs(tMap, false);
        scanner.readToken();  //  consume the flag, which must be "</userDefinedProperties>"
        if (!current.lexeme.equals("</userDefinedProperties>")) {
            error("parseUDPList seeking flag '</userDefinedProperties>', but found " + current.lexeme);
        }
        if (!tMap.isEmpty()) {
            ind.userDefinedProperties = tMap;
        }
    }

    /*	UDPList -> "<userDefinedProperties>", UDPs, "</userDefinedProperties>".
    | \empty.
    First: ["<userDefinedProperties>"]	 Follow: [flag: "</parameters>"]
     */
    void parseUDPList(Context newCtxt) throws KSParsingErrorException {
        current = scanner.lookAhead();  //  inspect the flag, which must be "<userDefinedProperties>" or "</parameters>"
        if (current.lexeme.equals("</parameters>")) {
            return;
        }
        if (!current.lexeme.equals("<userDefinedProperties>")) {
            error("parseUDPList seeking flag '<userDefinedProperties>', but found " + current.lexeme);
        }
        scanner.readToken();  //  consume the flag "<userDefinedProperties>"
        TreeMap tMap = new TreeMap();
        parseUDPs(tMap, true);
        scanner.readToken();  //  consume the flag, which must be "</userDefinedProperties>"
        if (!current.lexeme.equals("</userDefinedProperties>")) {
            error("parseUDPList seeking flag '</userDefinedProperties>', but found " + current.lexeme);
        }
        if (!tMap.isEmpty()) {
            newCtxt.userDefinedProperties = tMap;
        }
    }

    /*
    UDPs -> "<UDP>", UDP, "</UDP>", UDPs.
    |  \empty.
    First: ["<UDP>"]	 Follow: [flag: "</parameters>"]
     */
    void parseUDPs(TreeMap tMap, boolean full) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.lexeme.equals("<UDP>")) {
            scanner.readToken();  //  consume the start flag.
            UserDefinedProperty newProp = parseUDP(full);
            current = scanner.readToken();  //  consume the divorceYr flag, which must be "</UDP>"
            if (!current.lexeme.equals("</UDP>")) {
                error("parseUDPs seeking the flag '</UDP>'. ");
            }
            String propName = newProp.starName;
            tMap.put(propName, newProp);
            parseUDPs(tMap, full);
        } else if (current.lexeme.equals("</parameters>") || current.lexeme.equals("</userDefinedProperties>")) {
            return;
        } else {
            error("parseUDPs seeking a flag: '</UDP>' or '</parameters>'. ");
        }
    }

    /*
    UDP -> PropName, Type, ValueList, SingleVal, ValidEntries, DefVal, MinVal, MaxVal.
    First: [flag: "<propertyName>"]	 Follow: [flag: "</UDP>"]

     * This method relies on the fact that the Context's UDP templates are parsed in first.
     * they are parsed with full = true. Later, we parse the UDP's for individuals with
     * full = false. We copy all the fields from the Context's model, then add the particular
     * value for this individual.
     */
    UserDefinedProperty parseUDP(boolean full) throws KSParsingErrorException, NumberFormatException {
        UserDefinedProperty udp, model;
        if (full) {
            udp = new UserDefinedProperty(parsePropName());
            parseType(udp);
            parseValueList(udp);
            parseSingleVal(udp);
            parseValidEntries(udp);
            parseDefVal(udp);
            parseMinVal(udp);
            parseMaxVal(udp);
        } else {
            model = (UserDefinedProperty) newCtxt.userDefinedProperties.get(parsePropName());
            udp = new UserDefinedProperty(model, false);
            parseValueList(udp);
        }
        return udp;
    }

    /*
    PropName -> "<propertyName>", starName, "</propertyName>".
    First: [flag: "<propertyName>"]	 Follow: [flag: "<typ>"]
     */
    String parsePropName() throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the start flag, which must be "<propertyName>"
        if (!current.lexeme.equals("<propertyName>")) {
            error("parsePropName seeking the flag '<propertyName>'. ");
        }
        current = scanner.readToken();  //  consume next, which must be a string
        if (!current.token.equals("string")) {
            error("parsePropName seeking a <propertyName> string. ");
        }
        String theName = current.lexeme;
        current = scanner.readToken();  //  consume the divorceYr flag, which must be "</propertyName>"
        if (!current.lexeme.equals("</propertyName>")) {
            error("parsePropName seeking the flag '</propertyName>'. ");
        }
        return theName;
    }

    /*
    Type -> "<typ>", TypeSpec, "</typ>".
    First: [flag: "<typ>"]	 Follow: [flag: "<singleValue>"]
     */
    void parseType(UserDefinedProperty udp) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the start flag, which must be "<typ>"
        if (!current.lexeme.equals("<typ>")) {
            error("parsePropName seeking the flag '<typ>'. ");
        }
        parseTypeSpec(udp);
        current = scanner.readToken();  //  consume the divorceYr flag, which must be "</typ>"
        if (!current.lexeme.equals("</typ>")) {
            error("parsePropName seeking the flag '</typ>'. ");
        }
    }

    /*
    TypeSpec -> "integer".
    |  "float".
    |  "string".
    |  "boolean".
    |  "individual".
    First: [one of those]	 Follow: [flag: "</typ>"]
     */
    void parseTypeSpec(UserDefinedProperty udp) throws KSParsingErrorException {
        current = scanner.readToken();  // read the symbol
        if (current.lexeme.equals("integer") || current.lexeme.equals("float")
                || current.lexeme.equals("string") || current.lexeme.equals("boolean")
                || current.lexeme.equals("individual")) {
            udp.typ = current.lexeme;
        } else {
            error("parseTypeSpec found invalid UDP type: " + current.lexeme);
        }
    }

    /*
    ValueList -> "<value>", Values, "</value>".
    First: [flag: "<value>"]	 Follow: [flag: "<singleValue>"]
     */
    void parseValueList(UserDefinedProperty udp) throws KSParsingErrorException, NumberFormatException {
        current = scanner.readToken();  //  consume the start flag, which must be "<value>"
        if (!current.lexeme.equals("<value>")) {
            error("parseValueList seeking the flag '<value>'. ");
        }
        udp.value = new ArrayList<Object>();
        parseValues(udp);
        current = scanner.readToken();  //  consume the divorceYr flag, which must be "</value>"
        if (!current.lexeme.equals("</value>")) {
            error("parsePropName seeking the flag '</value>'. ");
        }
    }

    /*
    Values -> Value, MoreValues.
    |  \empty.
    First: [integer, float, string, boolean, Individual]
    Follow: [flag: "</value>"]
     */
    void parseValues(UserDefinedProperty udp) throws KSParsingErrorException, NumberFormatException {
        current = scanner.lookAhead();
        if (current.lexeme.equals("</value>")) //  empty
        {
            return;
        }
        Object newVal = parseValue(udp);
        if (newVal != null) {
            udp.value.add(newVal);
        }
        parseMoreValues(udp);
    }

    /*
    MoreValues -> comma, Value, MoreValues.
    |  \empty.
    First: [comma]
    Follow: [flag: "</value>"]
     */
    void parseMoreValues(UserDefinedProperty udp) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.lexeme.equals("</value>")) //  empty
        {
            return;
        }
        scanner.readToken();  //  consume a comma
        if (!current.token.equals("comma")) {
            error("parseMoreValues seeking a comma, found " + current.lexeme);
        }
        Object newVal = parseValue(udp);
        if (newVal != null) {
            udp.value.add(newVal);
        }
        parseMoreValues(udp);
    }

    /*
    SingleVal -> "<singleValue>", boolean,"</singleValue>".
    First: [flag: "<singleValue>"]	 Follow: [see note 1]
     */
    void parseSingleVal(UserDefinedProperty udp) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the start flag, which must be "<singleValue>"
        if (!current.lexeme.equals("<singleValue>")) {
            error("parseSingleVal seeking the flag '<singleValue>'. ");
        }
        current = scanner.readToken();  //  consume next, which must be a string
        if (!current.token.equals("string")) {
            error("parseSingleVal seeking a boolean string, found " + current.token);
        }
        boolean yesno = Boolean.parseBoolean(current.lexeme);
        current = scanner.readToken();  //  consume the divorceYr flag, which must be "</languageName>"
        if (!current.lexeme.equals("</singleValue>")) {
            error("parseSingleVal seeking the flag '</singleValue>'. ");
        }
        udp.singleValue = yesno;
    }

    /*
    ValidEntries -> "<validEntries>", ValEntries, MoreValEntries, "</validEntries>".
    First: [flag: "<validEntries>"]	 Follow: [flag: "<defaultValue>"]
     */
    void parseValidEntries(UserDefinedProperty udp) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the start flag, which must be "<validEntries>"
        if (!current.lexeme.equals("<validEntries>")) {
            error("parseValidEntries seeking the flag '<validEntries>'. ");
        }
        udp.validEntries = new ArrayList<Object>();
        parseValEntries(udp);
        parseMoreValEntries(udp);
        current = scanner.readToken();  //  consume the divorceYr flag, which must be "</validEntries>"
        if (!current.lexeme.equals("</validEntries>")) {
            error("parseValidEntries seeking the flag '</validEntries>'. ");
        }
    }


    /*
    ValEntries -> integer.
    |  float.
    |  string.
    |  \empty.
    First: [one of these]	 Follow: [comma, flag: "</validEntries>"]
     */
    void parseValEntries(UserDefinedProperty udp)
            throws KSParsingErrorException, NumberFormatException {
        current = scanner.lookAhead();
        if (current.lexeme.equals("</validEntries>")) //  empty
        {
            return;
        }
        //  if current = a comma, this is not legal
        scanner.readToken();  //  consume the token
        if (udp.typ.equals("integer")) {
            udp.validEntries.add(new Integer(current.lexeme));
        } else if (udp.typ.equals("string")) {
            udp.validEntries.add(current.lexeme);
        } else if (udp.typ.equals("float")) {
            udp.validEntries.add(new Float(current.lexeme));
        } else {
            error("parseValEntries found illegal valid-entry type (" + current.token + ") = " + current.lexeme);
        }
    }

    /*
    MoreValEntries -> comma, integer, MoreValEntries.
    |  comma, float, MoreValEntries.
    |  comma, string, MoreValEntries.
    |  \empty.
    First: [comma]	 Follow: [flag: "</validEntries>"]
     */
    void parseMoreValEntries(UserDefinedProperty udp)
            throws KSParsingErrorException, NumberFormatException {
        current = scanner.lookAhead();
        if (current.lexeme.equals("</validEntries>")) //  empty
        {
            return;
        }
        if (current.token.equals("comma")) {
            scanner.readToken();  //  consume the comma
            current = scanner.readToken();
            if (udp.typ.equals("integer")) {
                udp.validEntries.add(new Integer(current.lexeme));
            } else if (udp.typ.equals("string")) {
                udp.validEntries.add(current.lexeme);
            } else if (udp.typ.equals("float")) {
                udp.validEntries.add(new Float(current.lexeme));
            }
            parseMoreValEntries(udp);
        } else {
            error("parseMoreValEntries found illegal valid-entry type (" + current.token + ") = " + current.lexeme);
        }
    }

    /*
    DefVal -> "<defaultValue>", Value, "</defaultValue>".
    First: [flag: "<defaultValue>"]	 Follow: [flag: "<minVal>"]
     */
    void parseDefVal(UserDefinedProperty udp)
            throws KSParsingErrorException, NumberFormatException {
        current = scanner.readToken();  //  consume the start flag, which must be "<defaultValue>"
        if (!current.lexeme.equals("<defaultValue>")) {
            error("parseDefVal seeking the flag '<defaultValue>'. ");
        }
        udp.defaultValue = parseValue(udp);
        current = scanner.readToken();  //  consume the divorceYr flag, which must be "</defaultValue>"
        if (!current.lexeme.equals("</defaultValue>")) {
            error("parseDefVal seeking the flag '</defaultValue>'. ");
        }
    }

    /*
    Value -> integer.  // NOTE: Must agree with 'typ' for this UDP.
    |  float.
    |  string.
    |  boolean.
    |  Individual.
    |  \empty.
    First: [integer, float, string, boolean, Individual]
    Follow: [comma, tags: "</defaultValue>", "</value>"]
     */
    Object parseValue(UserDefinedProperty udp) throws KSParsingErrorException, NumberFormatException {
        current = scanner.lookAhead();
        if (current.lexeme.equals("</value>") || current.lexeme.equals("</defaultValue>")
                || current.token.equals("comma")) {
            return null;
        }
        scanner.readToken();  //  consume the token
        if (udp.typ.equals("integer")) {
            return new Integer(current.lexeme);
        } else if (udp.typ.equals("float")) {
            return new Float(current.lexeme);
        } else if (udp.typ.equals("string")) {
            return current.lexeme;
        } else if (udp.typ.equals("boolean")) {
            return new Boolean(current.lexeme);  // if not true or false, run-time exception will be thrown
        } else if (udp.typ.equals("individual")) {
            udp2ndPassReqd = true;
            if (current.lexeme.indexOf("#") != 0) {
                error("parseValue found invalid representation of an individual: " + current.lexeme);
            }
            return current.lexeme;
        } else {
            error("parseValue found invalid value type (" + current.token + ") = " + current.lexeme);
        }
        return null;
    }

    /*
    MinVal -> "<minVal>", MinValue, "</minVal>".
    First: ["flag: <minVal>"]	 Follow: [flag: "<maxVal>"]
     */
    void parseMinVal(UserDefinedProperty udp)
            throws KSParsingErrorException, NumberFormatException {
        current = scanner.readToken();  //  consume the start flag, which must be "<minVal>"
        if (!current.lexeme.equals("<minVal>")) {
            error("parseMinVal seeking the flag '<minVal>'. ");
        }
        parseMinValue(udp);
        current = scanner.readToken();  //  consume the divorceYr flag, which must be "</minVal>"
        if (!current.lexeme.equals("</minVal>")) {
            error("parseMinVal seeking the flag '</minVal>'. ");
        }
    }

    /*
    MinValue -> integer.
    |  float.
    |  \empty.
    First: [integer, float]	 Follow: [flag: "</minVal>"]
     */
    void parseMinValue(UserDefinedProperty udp)
            throws KSParsingErrorException, NumberFormatException {
        current = scanner.lookAhead();  // must be a number or divorceYr flag
        if (current.lexeme.equals("</minVal>")) {
            return;
        }
        if (current.token.equals("integer")) {
            udp.minVal = new Integer(current.lexeme);
        } else if (current.token.equals("float")) {
            udp.minVal = new Float(current.lexeme);
        } else {
            error("parseMinValue seeking a number or the flag '</minVal>'. Found " + current.lexeme);
        }
        current = scanner.readToken(); //  consume the value
    }

    /*
    MaxVal -> "<maxVal>", MaxValue,"</maxVal>".
    First: [flag: "<maxVal>"]	 Follow: [see note 1]
     */
    void parseMaxVal(UserDefinedProperty udp)
            throws KSParsingErrorException, NumberFormatException {
        current = scanner.readToken();  //  consume the start flag, which must be "<maxVal>"
        if (!current.lexeme.equals("<maxVal>")) {
            error("parseMaxVal seeking the flag '<maxVal>'. ");
        }
        parseMaxValue(udp);
        current = scanner.readToken();  //  consume the divorceYr flag, which must be "</maxVal>"
        if (!current.lexeme.equals("</maxVal>")) {
            error("parseMaxVal seeking the flag '</maxVal>'. ");
        }
    }

    /*
    MaxValue -> integer.
    |  float.
    |  \empty.
    First: [integer, float]	 Follow: [flag: "</maxVal>"]
     */
    void parseMaxValue(UserDefinedProperty udp)
            throws KSParsingErrorException, NumberFormatException {
        current = scanner.lookAhead();  // consume symbol, which must be a number or divorceYr flag
        if (current.lexeme.equals("</maxVal>")) {
            return;
        }
        if (current.token.equals("integer")) {
            udp.maxVal = new Integer(current.lexeme);
        } else if (current.token.equals("float")) {
            udp.maxVal = new Float(current.lexeme);
        } else {
            error("parseMaxValue seeking a number or the flag '</maxVal>'. Found " + current.lexeme);
        }
        current = scanner.readToken(); //  consume the value
    }

    /*
    EditorSettings -> CurrentEgo, EditDir, KAESParameters, LastPersonIndexed.
    First: [flag: <currentEgo>, <editDirectory>, <origin>]
    Follow: ["</editorSettings>"]
     */
    void parseEditorSettings() throws KSParsingErrorException {
        current = scanner.lookAhead();  // peek at token, which must be a flag.
        if (current.lexeme.equals("<currentEgo>")) {
            parseCurrEgo();  // always first, if present
        }
        if (current.lexeme.equals("<editDirectory>")) {
            parseEditDir(); // always 2nd, if present
        }
        parseKAESParameters(); // always present
        parseLastPersonIndexed();
    }

    /*
    CurrentEgo -> "<currentEgo>", integer, "</currentEgo>".    				| 
    First: [flag: <currentEgo>]	 Follow: [flag: <editDirectory>, <origin>]
     */
    void parseCurrEgo() throws KSParsingErrorException {
        scanner.readToken(); //  consume the <currentEgo> flag
        current = scanner.readToken(); //  consume next, which must be an integer
        if (!current.token.equals("integer")) {
            error("parseCurrEgo seeking ego serial number -- an integer. ");
        }
        currentEgoSerialNmbr = current.intVal;
        current = scanner.readToken();  //  consume the divorceYr flag, which must be "</currentEgo>"
        if (!current.lexeme.equals("</currentEgo>")) {
            error("parseCurrEgo seeking the flag '</currentEgo>'. ");
        }
        current = scanner.lookAhead();  // peek at token, which must be a flag.
    }

    /*
    EditDirectory -> "<editDirectory>", string, "</editDirectory>".    				| 
    First: [flag: <editDirectory>]	 Follow: [flag: <origin>]
     */
    void parseEditDir() throws KSParsingErrorException {
        scanner.readToken(); //  consume the <editDirectory> flag
        current = scanner.readToken(); //  consume next, which must be a string
        if (!current.token.equals("string")) {
            error("parseEditDir seeking a string. ");
        }
        newCtxt.editDirectory = current.lexeme;
        current = scanner.readToken();  //  consume the divorceYr flag, which must be "</editDirectory>"
        if (!current.lexeme.equals("</editDirectory>")) {
            error("parseEditDir seeking the flag '</editDirectory>'. ");
        }
        current = scanner.lookAhead();  // peek at token, which must be a flag.
    }

    void parseLastPersonIndexed() throws KSParsingErrorException {
        if (current.lexeme.equals("<lastPersonIndexed>")) { // temp storage
            lastPersonIndexed = readTaggedInteger("lastPersonIndexed", "parseLastPersonIndexed");
        } else if (!current.lexeme.equals("</editorSettings>")) {
            error("parseLastPersonIndexed seeking the flags '<lastPersonIndexed>' or </editorSettings>'. ");
        }
    }

    /*
    KAESParameters -> "<origin>", "<x>", integer, "</x>",
    "<y>", integer, "</y>", "</origin>",
    "<area> <W>", integer, "</W>", "<H>", integer, "</H>", "</area>",
    "<infoPerson>", integer, "</infoPerson>",
    "<infoMarriage>", integer, "</infoMarriage>",
    "<label>", integer, "</label>",
    "<ktlabel>", integer, "</ktlabel>",
    "<editable>", boolean, "</editable>",
    "<distinctAdrTerms>", boolean, "</distinctAdrTerms>",
    "<maxNoise>", integer, "</maxNoise>",
    "<ignorable>", integer, "</ignorable>".
    First: [flag: <origin>]	 Follow: [flag: </editorSettings>]
     */
    void parseKAESParameters() throws KSParsingErrorException {
        scanner.readToken(); //  consume the <origin> flag
        if (!current.lexeme.equals("<origin>")) {
            error("parseKAESParameters seeking the flag '<origin>'. ");
        }
        if (newCtxt.origin == null) {
            newCtxt.origin = new Point();
        }
        newCtxt.origin.x = readTaggedInteger("x", "parseKAESParameters");
        newCtxt.origin.y = readTaggedInteger("y", "parseKAESParameters");
        current = scanner.readToken(); //  consume next, which must be </origin> flag
        if (!current.lexeme.equals("</origin>")) {
            error("parseKAESParameters seeking the flag '</origin>'. ");
        }
        current = scanner.readToken(); //  consume next, which must be <area> flag
        if (!current.lexeme.equals("<area>")) {
            error("parseKAESParameters seeking the flag '<area>'. ");
        }
        int areaW = readTaggedInteger("W", "parseKAESParameters");
        int areaH = readTaggedInteger("H", "parseKAESParameters");
        newCtxt.area = new Dimension(areaW, areaH);
        current = scanner.readToken(); //  consume next, which must be </area> flag
        if (!current.lexeme.equals("</area>")) {
            error("parseKAESParameters seeking the flag '</area>'. ");
        }
        newCtxt.infoPerson = readTaggedInteger("infoPerson", "parseKAESParameters");
        newCtxt.infoMarriage = readTaggedInteger("infoMarriage", "parseKAESParameters");
        newCtxt.labelChoice = readTaggedInteger("label", "parseKAESParameters");
        newCtxt.ktLabelChoice = readTaggedInteger("ktlabel", "parseKAESParameters");
        String b = readTaggedString("editable", "parseKAESParameters");
        if (!b.equals("true") && !b.equals("false")) {
            error("parseKAESParameters seeking a boolean. ");
        }
        newCtxt.editable = new Boolean(b);
        b = readTaggedString("distinctAdrTerms", "parseKAESParameters");
        if (!b.equals("true") && !b.equals("false")) {
            error("parseKAESParameters seeking a boolean. ");
        }
        newCtxt.distinctAdrTerms = new Boolean(b);
        newCtxt.maxNoiseP = readTaggedInteger("maxNoise", "parseKAESParameters");
        newCtxt.ignorableP = readTaggedInteger("ignorable", "parseKAESParameters");
        current = scanner.lookAhead();  // peek at token, which must be a flag.
    }

    int readTaggedInteger(String tag, String caller) throws KSParsingErrorException {
        int theVal = 0;
        current = scanner.readToken(); //  consume next, which must match tag
        if (!current.lexeme.equals("<" + tag + ">")) {
            error(caller + " seeking the flag " + "<" + tag + ">");
        }
        current = scanner.readToken(); //  consume next, which must be integer
        if (!current.token.equals("integer")) {
            error(caller + " seeking an integer. ");
        }
        theVal = current.intVal;
        current = scanner.readToken(); //  consume next, which must be end tag
        if (!current.lexeme.equals("</" + tag + ">")) {
            error(caller + " seeking the flag " + "</" + tag + ">");
        }
        return theVal;
    }

    /*
    Individuals -> "<individual>", Individual, "</individual>", Individuals.
    |  \empty.
    First: [flag: "<individual>"]	 Follow: [flag: "</individualCensus>"]
    NOTE: Iterative style used here to avoid stack overflows for very large populations.
     */
    void parseIndividuals() throws KSParsingErrorException {
        current = scanner.lookAhead();	//  inspect the flag
        while (current.lexeme.equals("<individual>")) {
            scanner.readToken();  //  consume the flag
            parseIndividual(newCtxt);
            current = scanner.readToken();  //  consume the flag, which must be "</individual>"
            if (!current.lexeme.equals("</individual>")) {
                error("parseIndividuals seeking flag '</individual>', but found " + current.lexeme);
            }
            current = scanner.lookAhead();
        }
        if (current.lexeme.equals("</individualCensus>")) //  empty or divorceYr of Individual Census
        {
            return;
        } else {
            error("parseIndividuals seeking tags '<individual>' or '</individualCensus>',\nbut found " + current.lexeme);
        }
    }

    /*
    Individual -> ID, Sex, Stats, Location, Comment, Surname, FirstNames, Birth,
    Death, DataChg, Author, Deleted, BirthFam, Marriages, UDPs, StarLinks.
    First: [flag: "<serialNmbr>"]	 Follow: [flag: "</individual>"]
     */
    void parseIndividual(Context ctxt) throws KSParsingErrorException {
        Individual ind = new Individual(ctxt, "?");
        int serial = parseSerial();
        if (serial != ind.serialNmbr) {
            error("parseIndividual creating an individual with out-of-sequence serial number: " + serial);
        }
        ind.myId = serial + 1;
        parseGender(ind);
        parseStats(ind);
        ind.location = parseLocation();
        String note = parseComments();
        ind.comment = (note == null ? "" : note);
        parseSurname(ind);
        parseFirstNames(ind);
        ind.name = (ind.firstNames == null ? "" : ind.firstNames)
                + (ind.surname == null ? "" : " " + ind.surname);
        ind.name = ind.name.trim();
        parseBirth(ind);
        parseDeath(ind);
        ind.dataChangeDate = parseDataChg();
        parseAuthor(ind);
        ind.deleted = parseDeleted();
        ArrayList<Integer> row = new ArrayList<Integer>(3);
        indivTable.add(row);
        row.add(ind.serialNmbr);
        parseBirthFam(row);
        parseMarriages(row);
        parseUDPList(ind);
        parseStarLinks(ind);
    }

    /*
    Serial -> "<serial>", integer, "</serial>".
    First: [flag: "<serial>"]	 Follow: [flag: "<sex>"]
     */
    int parseSerial() throws KSParsingErrorException {
        int serial = -1;
        current = scanner.readToken();  //  consume the flag, which must be "<id>"
        if (!current.lexeme.equals("<serial>")) {
            error("parseSerial seeking flag '<serial>', but found " + current.lexeme);
        }
        current = scanner.readToken();
        if (!current.token.equals("integer")) {
            error("parseSerial seeking an integer', but found " + current.lexeme);
        } else {
            serial = current.intVal;
        }
        current = scanner.readToken();  //  consume the flag, which must be "</serial>"
        if (!current.lexeme.equals("</serial>")) {
            error("parseSerial seeking flag '</serial>'.");
        }
        return serial;
    }


    /*
    Gender -> "<sex>", symbol, "</sex>".  [must be ?, M or F]
    First: [flag: "<sex>"]	 Follow: [flag: "<stats>"]
     */
    void parseGender(Individual ind) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the flag, which must be "<sex>"
        if (!current.lexeme.equals("<sex>")) {
            error("parseGender seeking flag '<sex>', but found " + current.lexeme);
        }
        current = scanner.readToken();
        if (!current.lexeme.equals("Male") && !current.lexeme.equals("Female")
                &&!current.lexeme.equals("M") && !current.lexeme.equals("F")
                && !current.lexeme.equals("Neuter")) {
            error("parseGender seeking a gender, but found " + current.lexeme);
        }
        String sex = current.lexeme;
        current = scanner.readToken();  //  consume the flag, which must be "</sex>"
        if (!current.lexeme.equals("</sex>")) {
            error("parseGender seeking flag '</sex>'.");
        }
        ind.gender = sex.substring(0, 1);
        if (ind.gender.equals("N")) {
            ind.gender = "?";
        }
        if (sex.equals("Male")) {
            ind.sex = Person.mal;
        } else if (sex.equals("Female")) {
            ind.sex = Person.fem;
        } else {
            ind.sex = new Neuter();
        }
    }

    /*
    Stats -> "<stats>", "<born>", string, "</born>",
    "<died>", string, "</died>", "</stats>".
    First: [flag: "<stats>"]	 Follow: [flag: "<location>"]
     */
    void parseStats(Individual ind) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the flag, which must be "<stats>"
        if (!current.lexeme.equals("<stats>")) {
            error("parseStats seeking flag '<stats>', but found " + current.lexeme);
        }
        ind.birthYr = readTaggedString("born", "parseStats");
        ind.yobq = "9";  //  I don't use these
        ind.deathYr = readTaggedString("died", "parseStats");
        ind.yodq = "9";  //  I don't use these
        current = scanner.readToken();  //  consume the flag, which must be "</stats>"
        if (!current.lexeme.equals("</stats>")) {
            error("parseStats seeking flag '</stats>', but found " + current.lexeme);
        }
    }

    boolean readTaggedBoolean(String tag, String caller) throws KSParsingErrorException {
        boolean theVal = false;
        current = scanner.readToken(); //  consume next, which must match tag
        if (!current.lexeme.equals("<" + tag + ">")) {
            error(caller + " seeking the flag " + "<" + tag + ">");
        }
        current = scanner.readToken(); //  consume next, which must be a boolean
        if (!current.lexeme.equals("true") && !current.lexeme.equals("false")) {
            error(caller + " seeking a boolean. ");
        }
        theVal = (current.lexeme.equals("true") ? true : false);
        current = scanner.readToken(); //  consume next, which must be end tag
        if (!current.lexeme.equals("</" + tag + ">")) {
            error(caller + " seeking the flag " + "</" + tag + ">");
        }
        return theVal;
    }

    String readTaggedString(String tag, String caller) throws KSParsingErrorException {
        String theVal = "";
        current = scanner.readToken(); //  consume next, which must match tag
        if (!current.lexeme.equals("<" + tag + ">")) {
            error(caller + " seeking the flag " + "<" + tag + ">");
        }
        current = scanner.readToken(); //  consume next, which must be a string
        if (!current.token.equals("string")) {
            error(caller + " seeking an string. ");
        }
        theVal = current.lexeme;
        current = scanner.readToken(); //  consume next, which must be end tag
        if (!current.lexeme.equals("</" + tag + ">")) {
            error(caller + " seeking the flag " + "</" + tag + ">");
        }
        return theVal;
    }

    String readTagEnclosedText(String tag, String caller) throws KSParsingErrorException {
        String theVal = "";
        current = scanner.readToken(); //  consume next, which must match tag
        if (!current.lexeme.equals("<" + tag + ">")) {
            error(caller + " seeking the flag " + "<" + tag + ">");
        }
        current = scanner.readToken(); //  consume next, first of the enclosed string
        while (!current.lexeme.equals("</" + tag + ">")) {
            theVal += current.lexeme + " ";
            current = scanner.readToken();
        }
        return theVal.trim();
    }

    /*
    Location -> "<location>", "<x>", integer, "</x>",
    "<y>", integer, "</y>", "</location>".
    First: [flag: "<location>"]	 Follow: [flag: "<comment>"]
     */
    Point parseLocation() throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the flag, which must be "<location>"
        if (!current.lexeme.equals("<location>")) {
            error("parseSurname seeking flag '<location>', but found " + current.lexeme);
        }
        Point loc = new Point();
        loc.x = readTaggedInteger("x", "parseLocation");
        loc.y = readTaggedInteger("y", "parseLocation");
        current = scanner.readToken();  //  consume the flag, which must be "</location>"
        if (!current.lexeme.equals("</location>")) {
            error("parseSurname seeking flag '</location>', but found " + current.lexeme);
        }
        return loc;
    }

    /*
    Surname -> "<surname>", string, "</surname>".   [string could be empty]
    First: [flag: "<serialNmbr>"]	 Follow: [flag: "<firstNames>"]
     */
    void parseSurname(Individual ind) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the flag, which must be "<surname>"
        if (!current.lexeme.equals("<surname>")) {
            error("parseSurname seeking flag '<surname>', but found " + current.lexeme);
        }
        current = scanner.readToken();
        if (current.lexeme.equals("</surname>")) {
            return;  //  string was empty
        }
        if (current.token.equals("string")) {
            ind.surname = current.lexeme;
        } else {
            error("parseSurname seeking flag '</surname>' or a string.");
        }
        current = scanner.readToken();  //  consume the flag, which must be "</surname>"
        if (!current.lexeme.equals("</surname>")) {
            error("parseSurname seeking flag '</surname>'.");
        }
    }

    /*
    FirstNames -> "<firstNames>", string, "</firstNames>".
    First: [flag: "<firstNames>"]	 Follow: [flag: "<getDateOfBirth>"]
     */
    void parseFirstNames(Individual ind) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the flag, which must be "<firstNames>"
        if (!current.lexeme.equals("<firstNames>")) {
            error("parseFirstNames seeking flag '<firstNames>', but found " + current.lexeme);
        }
        current = scanner.readToken();
        if (current.lexeme.equals("</firstNames>")) {
            return;  //  string was empty
        }
        if (current.token.equals("string")) {
            ind.firstNames = current.lexeme;
        } else {
            error("parseFirstNames seeking flag '</firstNames>' or a string.");
        }
        current = scanner.readToken();  //  consume the flag, which must be "</firstNames>"
        if (!current.lexeme.equals("</firstNames>")) {
            error("parseFirstNames seeking flag '</firstNames>'.");
        }
    }

    /*
    Birth -> "<dateOfBirth>", string, "</dateOfBirth>".  //  must be parsable as a date, or blank.
    First: [flag: "<dateOfBirth>"]	 Follow: [flag: "<dateOfDeath>"]
     */
    void parseBirth(Individual ind) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the flag, which must be "<getDateOfBirth>"
        if (!current.lexeme.equals("<dateOfBirth>")) {
            error("parseBirth seeking flag '<dateOfBirth>', but found " + current.lexeme);
        }
        current = scanner.readToken();
        if (current.lexeme.equals("</dateOfBirth>")) {
            return;  //  string was empty
        }
        if (current.token.equals("string")) {
            if (current.lexeme.length() > 0) {
                Date bDay = null;
                try {
                    bDay = UDate.parse(current.lexeme);
                } catch (KSDateParseException pe) {
                    error("parseBirth unable to parse " + current.lexeme + " as a date.");
                }
                ind.setDateOfBirth(UDate.formatAsXSD(bDay));
            }  //  end of found-a-string
        } else {
            error("parseBirth seeking flag '</dateOfBirth>' or a string.");
        }
        current = scanner.readToken();  //  consume the flag, which must be "</getDateOfBirth>"
        if (!current.lexeme.equals("</dateOfBirth>")) {
            error("parseBirth seeking flag '</dateOfBirth>'.");
        }
    }

    /*
    Death -> "<dateOfDeath>", string, "</dateOfDeath>".  //  must be parsable as a date, or blank.
    First: [flag: "<dateOfDeath>"]	 Follow: [flag: "<dataChangeDate>"]
     */
    void parseDeath(Individual ind) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the flag, which must be "<dateOfDeath>"
        if (!current.lexeme.equals("<dateOfDeath>")) {
            error("parseDeath seeking flag '<dateOfDeath>', but found " + current.lexeme);
        }
        current = scanner.readToken();
        if (current.lexeme.equals("</dateOfDeath>")) {
            return;  //  string was empty
        }
        if (current.token.equals("string")) {
            if (current.lexeme.length() > 0 && !current.lexeme.equals("null")) {
                Date dDay = null;
                try {
                    dDay = UDate.parse(current.lexeme);
                } catch (KSDateParseException pe) {
                    error("parseDeath unable to parse " + current.lexeme + " as a date.");
                }
                ind.setDateOfDeath(UDate.formatAsXSD(dDay));
            }  //  end of found-a-string
        } else {
            error("parseDeath seeking flag '</dateOfDeath>' or a string.");
        }
        current = scanner.readToken();  //  consume the flag, which must be "</dateOfDeath>"
        if (!current.lexeme.equals("</dateOfDeath>")) {
            error("parseDeath seeking flag '</dateOfDeath>'.");
        }
    }

    /*
    DataChg -> "<dataChangeDate>", string, "</dataChangeDate>".  //  must be parsable as a date, or blank.
    First: [flag: "<dataChangeDate>"]	 Follow: [flags: "<dataAuthor>",  "<comments>"]
     */
    String parseDataChg() throws KSParsingErrorException {
        String dcDate = "";
        current = scanner.readToken();  //  consume the flag, which must be "<dataChangeDate>"
        if (!current.lexeme.equals("<dataChangeDate>")) {
            error("parseDataChg seeking flag '<dataChangeDate>', but found " + current.lexeme);
        }
        current = scanner.readToken();
        if (current.lexeme.equals("</dataChangeDate>")) {
            return dcDate;  //  string was empty
        }
        if (current.token.equals("string")) {
            if (current.lexeme.length() > 0) {
                Date bDay = null;
                try {
                    bDay = UDate.parse(current.lexeme);
                } catch (KSDateParseException pe) {
                    error("parseDataChg unable to parse " + current.lexeme + " as a date.");
                }
                dcDate = UDate.formatAsXSD(bDay);
            }  //  end of found-a-string
        } else {
            error("parseDataChg seeking flag '</dataChangeDate>' or a string.");
        }
        current = scanner.readToken();  //  consume the flag, which must be "</dataChangeDate>"
        if (!current.lexeme.equals("</dataChangeDate>")) {
            error("parseDataChg seeking flag '</dataChangeDate>'.");
        }
        return dcDate;
    }

    /*
    Author -> "<dataAuthor>", string, "</dataAuthor>".
    First: [flag: "<dataAuthor>"]	 Follow: [flag: "<deleted>"]
     */
    void parseAuthor(Individual ind) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the flag, which must be "<dataAuthor>"
        if (!current.lexeme.equals("<dataAuthor>")) {
            error("parseAuthor seeking flag '<dataAuthor>', but found " + current.lexeme);
        }
        current = scanner.readToken();
        if (current.lexeme.equals("</dataAuthor>")) {
            return;  //  string was empty
        }
        if (current.token.equals("string")) {
            ind.dataAuthor = current.lexeme;
        } else {
            error("parseAuthor seeking flag '</dataAuthor>' or a string.");
        }
        current = scanner.readToken();  //  consume the flag, which must be "</dataAuthor>"
        if (!current.lexeme.equals("</dataAuthor>")) {
            error("parseAuthor seeking flag '</dataAuthor>'.");
        }
    }

    /*
    Deleted -> "<deleted>", boolean, "</deleted>".
    First: [flag: "<deleted>"]	 Follow: [flag: "<birthFamily>"]
     */
    boolean parseDeleted() throws KSParsingErrorException {
        boolean answer = false;
        current = scanner.readToken();  //  consume the flag, which must be "<deleted>"
        if (!current.lexeme.equals("<deleted>")) {
            error("parseDeleted seeking flag '<deleted>', but found " + current.lexeme);
        }
        current = scanner.readToken();
        if (current.token.equals("string")) {
            answer = Boolean.parseBoolean(current.lexeme);
        } else {
            error("parseDeleted seeking a boolean-string.");
        }
        current = scanner.readToken();  //  consume the flag, which must be "</deleted>"
        if (!current.lexeme.equals("</deleted>")) {
            error("parseDeleted seeking flag '</deleted>'.");
        }
        return answer;
    }

    /*
    BirthFam -> "<birthFamily>", IntOrBlank, "</birthFamily>".
    First: [flag: "<birthFamily>"]	 Follow: [flag: "<marriages>"]
     */
    void parseBirthFam(ArrayList<Integer> row) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the flag, which must be "<birthFamily>"
        if (!current.lexeme.equals("<birthFamily>")) {
            error("parseBirthFam seeking flag '<birthFamily>', but found " + current.lexeme);
        }
        parseIntOrBlank(row);
        current = scanner.readToken();  //  consume the flag, which must be "</birthFamily>"
        if (!current.lexeme.equals("</birthFamily>")) {
            error("parseBirthFam seeking flag '</birthFamily>'.");
        }
    }

    /*
    IntOrBlank -> integer.
    |  \empty.
    First: [integer]	 Follow: [flag: "</birthFamily>"]
     */
    void parseIntOrBlank(ArrayList<Integer> row) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("integer")) {
            scanner.readToken();  //  consume the integer
            row.add(new Integer(current.lexeme));
        } else if (current.lexeme.equals("</birthFamily>")) {
            row.add(new Integer(-1));
        } else {
            error("parseIntOrBlank seeking integer or flag '</birthFamily>'.");
        }
    }

    /*
    Marriages -> "<marriages>", Weddings, "</marriages>".
    First: [flag: "<marriages>"]	 Follow: [flag: "<userDefinedProperties>"]
     */
    void parseMarriages(ArrayList<Integer> row) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the flag, which must be "<marriages>"
        if (!current.lexeme.equals("<marriages>")) {
            error("parseMarriages seeking flag '<marriages>', but found " + current.lexeme);
        }
        parseWeddings(row);
        current = scanner.readToken();  //  consume the flag, which must be "</marriages>"
        if (!current.lexeme.equals("</marriages>")) {
            error("parseMarriages seeking flag '</marriages>'.");
        }
    }

    /*
    Weddings -> integer, MoreWeds.
    |  \empty.
    First: [integer]	 Follow: [flag: "</marriages>"]
     */
    void parseWeddings(ArrayList<Integer> row) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("integer")) {
            scanner.readToken();  //  consume the integer
            row.add(new Integer(current.lexeme));
            parseMoreWeds(row);
        } else if (current.lexeme.equals("</marriages>")) {
            return;
        } else {
            error("parseWeddings seeking integer or flag '</marriages>'.");
        }
    }

    /*
    MoreWeds -> comma, integer, MoreWeds.
    |  \empty.
    First: [comma]	 Follow: [flag: "</marriages>"]
     */
    void parseMoreWeds(ArrayList<Integer> row) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("comma")) {
            scanner.readToken();  //  consume the comma
            current = scanner.readToken();  //  consume next, which must be an integer
            if (!current.token.equals("integer")) {
                error("parseMoreWeds seeking an integer.");
            } else {
                row.add(new Integer(current.lexeme));
                parseMoreWeds(row);
            }
        } else if (current.lexeme.equals("</marriages>")) {
            return;
        } else {
            error("parseMoreWeds seeking comma or flag '</marriages>'.");
        }
    }

    /*
    StarLinks -> "<starLinks>", Starz, "</starLinks>".
    First: [flag: "<starLinks>"]	 Follow: [flag: "</individual>"]
     */
    void parseStarLinks(Individual ind) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the flag, which must be "<starLinks>"
        if (!current.lexeme.equals("<starLinks>")) {
            error("parseStarLinks seeking flag '<starLinks>', but found " + current.lexeme);
        }
        parseStarz(ind);
        current = scanner.readToken();  //  consume the flag, which must be "</starLinks>"
        if (!current.lexeme.equals("</starLinks>")) {
            error("parseStarLinks seeking flag '</starLinks>'.");
        }
    }

    /*
    Starz -> "#", integer, MoreStarz.
    |  \empty.
    First: [integer]	 Follow: [flag: "</starLinks>"]
     */
    void parseStarz(Individual ind) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("pound")) {
            scanner.readToken();  //  consume the pound sign
            current = scanner.readToken();  //  consume next, which must be an integer
            if (!current.token.equals("integer")) {
                error("parseStarz looking for an integer, found " + current.token);
            }
            Integer star = new Integer(current.lexeme),
                    personNmbr = new Integer(ind.serialNmbr);
            ArrayList<Integer> starz = new ArrayList<Integer>();
            starz.add(star);
            starTable.put(personNmbr, starz);
            parseMoreStarz(starz);
        } else if (current.lexeme.equals("</starLinks>")) {
            return;
        } else {
            error("parseStarz seeking '#' or flag '</starLinks>'.");
        }
    }

    /*
    MoreStarz -> comma, "#", integer, MoreStarz.
    |  \empty.
    First: [comma]	 Follow: [flag: "</starLinks>"]
     */
    void parseMoreStarz(ArrayList<Integer> starList) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("comma")) {
            scanner.readToken();  //  consume the comma
            current = scanner.readToken();  //  consume next, which must be a pound sign
            if (!current.token.equals("pound")) {
                error("parseMoreStarz seeking a pound sign.");
            } else {
                current = scanner.readToken();  //  consume next, which must be an integer
                if (!current.token.equals("integer")) {
                    error("parseMoreStarz looking for an integer, found " + current.token);
                }
                starList.add(new Integer(current.lexeme));
                parseMoreStarz(starList);
            }
        } else if (current.lexeme.equals("</starLinks>")) {
            return;
        } else {
            error("parseMoreStarz seeking comma or flag '</starLinks>'.");
        }
    }

    /*
    FamilyCensus -> "<familyCensus>", Families, "</familyCensus>".
    First:  [flag: "<familyCensus>"]		Follow: [flag: "<matrix>"]
     */
    void parseFamilyCensus() throws KSParsingErrorException {
        scanner.readToken();  //  consume the start flag (already verified)
        parseFamilies(newCtxt);
        current = scanner.readToken();  // consume next, which must be </familyCensus>
        if (!current.lexeme.equals("</familyCensus>")) //  empty
        {
            error("parseFamilyCensus seeking flag '</familyCensus>'.");
        }

    }

    /*
    Families -> Family, Families.
    |  \empty.
    First: [flag: "<family>"]	 Follow: [flag: "</familyCensus>"]
    NOTE: Iterative style used here to avoid stack overflows for very large populations.
     */
    void parseFamilies(Context newCtxt) throws KSParsingErrorException {
        current = scanner.lookAhead();  //  inspect the flag
        while (current.lexeme.equals("<family>")) {
            parseFamily(newCtxt);
            current = scanner.lookAhead();  //  inspect the flag
        }
        if (current.lexeme.equals("</familyCensus>")) {
            return;
        } else {
            error("parseFamilies seeking tags '<family>' or '</familyCensus>'.");
        }
    }


    /* Old version
    void parseFamilies(Context newCtxt)  throws KSParsingErrorException  {
    current = scanner.lookAhead();
    if (current.lexeme.equals("<family>")) {
    parseFamily(newCtxt);
    parseFamilies(newCtxt);
    }else if (current.lexeme.equals("</familyCensus>"))
    return;
    else error("parseFamilies seeking tags '<family>' or '</familyCensus>'.");
    }
     */
    /*
    Family -> "<family>", Serial, Location, FamStats, Comments, Deleted,
    Husband, Wife, Children, MarDate, EndDate, DataChg, "</family>".
    First: [flag: "<family>"]	 Follow: [tags: "<family>", "</familyCensus>"]
     */
    void parseFamily(Context newCtxt) throws KSParsingErrorException {
        scanner.readToken();  // consume start flag, already verified
        Family fam = new Family(newCtxt, true);  // constructor adds family to context's family census
        int serial = parseSerial();
        if (serial != fam.serialNmbr) {
            error("parseFamily trying to create a aFamily with out-of-sequence serial nmuber.");
        }
        fam.mid = serial + 1;
        fam.location = parseLocation();
        parseFamStats(fam);
        String note = parseComments();
        fam.comment = (note == null ? "" : note);
        fam.deleted = parseDeleted();
        ArrayList<Integer> row = new ArrayList<Integer>(4);
        famTable.add(row);
        row.add(serial);
        parseHusband(row);
        parseWife(row);
        parseChildren(row);
        parseMarDate(fam);
        parseDivDate(fam);
        parseFamDataAuthor(fam);
        fam.dataChangeDate = parseDataChg();
        current = scanner.readToken(); //  consume next, which must be divorceYr flag
        if (!current.lexeme.equals("</family>")) {
            error("parseFamily seeking flag '</family>'.");
        }
    }

    /*
    FamStats -> "<stats>", "<type>", string, "</type>", "<marriageYr>", string, "</marriageYr>",
    "<divorceYr>", string, "</divorceYr>", "<reason>", string, "</reason>", "</stats>".
    First: [flag: "<stats>"]	 Follow: [tags: "<partners>"]
     */
    void parseFamStats(Family fam) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the flag, which must be "<stats>"
        if (!current.lexeme.equals("<stats>")) {
            error("parseFamStats seeking flag '<stats>', but found " + current.lexeme);
        }
        fam.type = readTaggedString("type", "parseFamStats");
        fam.marriageYr = readTaggedString("begin", "parseFamStats");
        fam.beginq = "9";  //  SILKin does not se these
        fam.divorceYr = readTaggedString("end", "parseFamStats");
        fam.endq = "9";  //  SILKin does not se these
        fam.reason = readTaggedString("reason", "parseFamStats");
        current = scanner.readToken();  //  consume the flag, which must be "</stats>"
        if (!current.lexeme.equals("</stats>")) {
            error("parseFamStats seeking flag '</stats>', but found " + current.lexeme);
        }
    }

    /*
    Husband -> "<husband>", integer, "</husband>".
    First: [flag: "<husband>"]		Follow: [flag: "<wife>"]
     */
    void parseHusband(ArrayList<Integer> row) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the flag, which must be "<husband>"
        if (!current.lexeme.equals("<husband>")) {
            error("parseHusband seeking flag '<husband>', but found " + current.lexeme);
        }
        current = scanner.readToken();  //  consume the flag, which must be an integer
        if (!current.token.equals("integer")) {
            error("parseHusband seeking an integer.");
        }
        row.add(new Integer(current.lexeme));
        current = scanner.readToken();  //  consume the flag, which must be "</husband>"
        if (!current.lexeme.equals("</husband>")) {
            error("parseHusband seeking flag '</husband>'.");
        }
    }

    /*
    Wife -> "<wife>", integer, "</wife>".
    First: [flag: "<wife>"]		Follow: [flag: "<children>"]
     */
    void parseWife(ArrayList<Integer> row) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the flag, which must be "<wife>"
        if (!current.lexeme.equals("<wife>")) {
            error("parseWife seeking flag '<wife>', but found " + current.lexeme);
        }
        current = scanner.readToken();  //  consume the flag, which must be an integer
        if (!current.token.equals("integer")) {
            error("parseWife seeking an integer.");
        }
        row.add(new Integer(current.lexeme));
        current = scanner.readToken();  //  consume the flag, which must be "</wife>"
        if (!current.lexeme.equals("</wife>")) {
            error("parseWife seeking flag '</wife>'.");
        }
    }

    /*
    Children -> "<children>", Kids, "</children>".
    First: [flag: "<children>"]	 Follow: [flag: "<marriageDate>"]
     */
    void parseChildren(ArrayList<Integer> row) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the flag, which must be "<children>"
        if (!current.lexeme.equals("<children>")) {
            error("parseChildren seeking flag '<children>', but found " + current.lexeme);
        }
        parseKids(row);
        current = scanner.readToken();  //  consume the flag, which must be "</children>"
        if (!current.lexeme.equals("</children>")) {
            error("parseChildren seeking flag '</children>'.");
        }
    }


    /*
    Kids -> integer, MoreKids.
    |  \empty.
    First: [integer]	 Follow: [flag: "</children>"]
     */
    void parseKids(ArrayList<Integer> row) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("integer")) {
            scanner.readToken();  //  consume the integer
            row.add(current.intVal);
            parseMoreKids(row);
        } else if (current.lexeme.equals("</children>")) {
            return;
        } else {
            error("parseKids seeking integer or flag '</children>'.");
        }
    }

    /*
    MoreKids -> comma, integer, MoreKids.
    |  \empty.
    First: [comma]	 Follow: [flag: "</children>"]
     */
    void parseMoreKids(ArrayList<Integer> row) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("comma")) {
            scanner.readToken();  //  consume the comma
            current = scanner.readToken();  //  consume next, which must be an integer
            if (!current.token.equals("integer")) {
                error("parseMoreKids seeking an integer.");
            } else {
                row.add(current.intVal);
                parseMoreKids(row);
            }
        } else if (current.lexeme.equals("</children>")) {
            return;
        } else {
            error("parseMoreKids seeking comma or flag '</children>'.");
        }
    }

    /*
    MarDate -> "<marriageDate>", string, "</marriageDate>".  //  must be parsable as a date, or blank.
    First: [flag: "<marriageDate>"]	 Follow: [flag: "<endDate>"]
     */
    void parseMarDate(Family fam) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the flag, which must be "<marriageDate>"
        if (!current.lexeme.equals("<marriageDate>")) {
            error("parseMarDate seeking flag '<marriageDate>', but found " + current.lexeme);
        }
        current = scanner.readToken();  //  consume next, which must be a string
        if (!current.token.equals("string")) {
            error("parseMarDate seeking a date string.");
        } else if (current.lexeme.length() == 0) {
            fam.setMarriageDate("");
        } else {
            Date day = null;
            try {
                day = UDate.parse(current.lexeme);
            } catch (KSDateParseException pe) {
                error("parseBirth unable to parse " + current.lexeme + " as a date.");
            }
            fam.setMarriageDate(UDate.formatAsXSD(day));
        }  //  date successfully found
        current = scanner.readToken();  //  consume the flag, which must be "</marriageDate>"
        if (!current.lexeme.equals("</marriageDate>")) {
            error("parseMarDate seeking flag '</marriageDate>'.");
        }
    }

    /*
    EndDate -> "<endDate>", NullOrString, "</endDate>".
    First: [flag: "<endDate>"]	 Follow: [flag: "<dataChangeDate>", "<dataAuthor>"]
     */
    void parseDivDate(Family fam) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the flag, which must be "<endDate>"
        if (!current.lexeme.equals("<endDate>")) {
            error("parseDivDate seeking flag '<endDate>', but found " + current.lexeme);
        }
        parseNullOrString(fam);
        current = scanner.readToken();  //  consume the flag, which must be "</endDate>"
        if (!current.lexeme.equals("</endDate>")) {
            error("parseDivDate seeking flag '</endDate>'.");
        }
    }

    /*
    NullOrString -> string.  //  must be parsable as a date, or empty.
    |  symbol.  //  must be 'null'
    First: [string, symbol]	 Follow: [flag: "<dataChangeDate>"]
     */
    void parseNullOrString(Family fam) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume next
        if (current.token.equals("string") && current.lexeme.length() > 4) {
            Date day = null;
            try {
                day = UDate.parse(current.lexeme);
            } catch (KSDateParseException pe) {
                error("parseNullOrString unable to parse " + current.lexeme + " as a date.");
            }
            fam.setDivorceDate(UDate.formatAsXSD(day));
        } else if (current.token.equals("symbol") && current.lexeme.equals("null")) {
            fam.setDivorceDate(null);
        } else if (current.token.equals("string") && current.lexeme.equals("")) {
            fam.setDivorceDate("");
        } else {
            error("parseNullOrString looking for null, empty string, or a parseable date string.");
        }
    }

    /*
    DataAuthror -> "<dataAuthor>", string, "</dataAuthor>".
     *          | \empty.
    First: [flag: "<dataAuthor>"]	 Follow: [flag: "<dataChangeDate>"]
     */
    void parseFamDataAuthor(Family fam) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.lexeme.equals("<dataChangeDate>")) {
            return;
        }
        if (current.lexeme.equals("<dataAuthor>")) {
            scanner.readToken();  //  consume the start flag (already verified)
            current = scanner.readToken();  // read token, which must be a string
            if (!current.token.equals("string")) {
                error("parseFamDataAuthor found invalid value for author: " + current.lexeme);
            }
            fam.dataAuthor = current.lexeme;
            current = scanner.readToken();  // read token, which must be flag </dataAuthor>
            if (!current.lexeme.equals("</dataAuthor>")) {
                error("parseFamDataAuthor seeking the end flag '</dataAuthor>'. ");
            }
        } else {
            error("parseFamDataAuthor seeking flags '<dataAuthor>' or '<dataChangeDate>'.");
        }
    }

    /*
    Matrix -> "<matrix>", "<numberOfKinTerms>", integer, "</numberOfKinTerms>", Rows, "</matrix>".
    First: [flag: "<matrix>"]		Follow: [flag: "<dyadsUndefinedRef>"]
     */
    void parseMatrix() throws KSParsingErrorException, KSInternalErrorException {
        scanner.readToken();  //  consume the start flag (already verified)
        newCtxt.ktm = new KinTermMatrix();
        parseRows();
        current = scanner.readToken();  // read token, which must be the flag '</matrix>'
        if (!current.lexeme.equals("</matrix>")) {
            error("parseMatrix seeking the end flag '</matrix>'. ");
        }
    }

    /*
    Rows -> Row, Rows.
    |  \empty.
    First: [flag: "<row>"]	 Follow: [flag: "</matrix>"]
    NOTE: Iterative style used here to avoid stack overflows for very large matrices.
     */
    void parseRows()
            throws KSParsingErrorException, KSInternalErrorException {
        current = scanner.lookAhead();  //  inspect the flag
        while (current.lexeme.equals("<row>")) {
            parseRow();
            current = scanner.lookAhead();  //  inspect the flag
        }
        if (current.lexeme.equals("</matrix>")) {
            return;
        } else {
            error("parseRows seeking tags '<row>' or '</matrix>'.");
        }
    }

    /*
    Row -> "<row>", integer, Cells, "</row>".
    First: [flag: "<row>"]	 Follow: [tags: "<row>", "</matrix>"]
     */
    void parseRow()
            throws KSParsingErrorException, KSInternalErrorException {
        /* STRATEGY:  I must gather the parameters for a call to the 'addNode'
         * method of KinTermMatrix. Create an empty ArgList and send it down the
         * call stack. Each method will add its parameter in order. When the argList
         * gets to parseNodeComponents, create a Node, then pass it to
         * parseTermGroups for adding in the kinTerms.
         *
         * ASSUMPTION: This method relies on the IndividualCensus and FamilyCensus
         * being completely processed before the KTM is built. That is the order of
         * the elements in a SILK file. Any hand-editing of a SILK file that violates
         * this assumption will cause an error.
         */
        scanner.readToken();  //  consume the start flag (already verified)
        current = scanner.readToken();  //  consume next, which must be an integer
        if (!current.token.equals("integer")) {
            error("parseRow seeking an integer.");
        }
        Integer egoInt = new Integer(current.intVal);
        ArrayList<Object> argList = new ArrayList<Object>();
        argList.add(egoInt);
        parseCells(argList);
        current = scanner.readToken();  // read token, which must be the flag '</row>'
        if (!current.lexeme.equals("</row>")) {
            error("parseRow seeking the end flag '</row>'. ");
        }
    }

    /*
    Cells -> Cell, Cells.
    |  \empty.
    First: [flag: "<cell>"]	 Follow: [flag: "</row>"]
     */
    void parseCells(ArrayList<Object> argList)
            throws KSParsingErrorException, KSInternalErrorException {
        current = scanner.lookAhead();
        if (current.lexeme.equals("<cell>")) {
            ArrayList<Object> argListCopy = new ArrayList<Object>(argList);
            parseCell(argListCopy);
            parseCells(argList);
        } else if (current.lexeme.equals("</row>")) {
            return;
        } else {
            error("parseCells seeking tags '</row>' or '<cell>'.");
        }
    }

    /*
    Cell -> "<cell>", integer, NodeComponents, TermGroups, "</cell>".
    First: [flag: "<cell>"]	 Follow: [tags: "</row>", "<cell>"]
     */
    void parseCell(ArrayList<Object> argList)
            throws KSParsingErrorException, KSInternalErrorException {
        //  At this point, argList contains only ego's serial#
        scanner.readToken();  //  consume the start flag (already verified)
        current = scanner.readToken();  //  consume next, which must be an integer
        if (!current.token.equals("integer")) {
            error("parseCell seeking an integer.");
        }
        Integer alterInt = new Integer(current.intVal),
                egoInt = (Integer) argList.get(0);
        argList.add(alterInt);
        Node newNode = parseNodeComponents(argList);
        parseTermGroups(newNode, argList);
        current = scanner.readToken();  // read token, which must be the flag '</cell>'
        if (!current.lexeme.equals("</cell>")) {
            error("parseCell seeking the end flag '</cell>'. ");
        }
        newCtxt.ktm.addNode(egoInt, alterInt, newNode);
    }

    /*
    NodeComponents ->  "<pcString>", string, "</pcString>", "<level>", integer, "</level>", MiniPreds.
    First: [tag: "<pcString>"]	 Follow: [tags:  "<PR>","<ER>","<XR>","<PA>","<EA>","<XA>","</cell>"]
     */
    Node parseNodeComponents(ArrayList<Object> argList)
            throws KSParsingErrorException, KSInternalErrorException {
        //  At this point, argList contains ego's & alter's serial#s
        Node newNode = new Node();
        newNode.indiv = newCtxt.individualCensus.get(((Integer) argList.get(1)).intValue());
        current = scanner.readToken();  //  consume next, which must be "<pcString>"
        if (!current.lexeme.equals("<pcString>")) {
            error("parseNodeComponents seeking the tag <pcString>.");
        }
        current = scanner.readToken();  //  consume next, which must be a string
        if (!current.token.equals("string")) {
            error("parseNodeComponents seeking a string.");
        }
        newNode.pcString = current.lexeme;
        current = scanner.readToken();  //  consume next, which must be "</pcString>"
        if (!current.lexeme.equals("</pcString>")) {
            error("parseNodeComponents seeking the tag </pcString>.");
        }
        current = scanner.readToken();  //  consume next, which must be "<level>"
        if (!current.lexeme.equals("<level>")) {
            error("parseNodeComponents seeking the tag <level>.");
        }
        current = scanner.readToken();  //  consume next, which must be an integer
        if (!current.token.equals("integer")) {
            error("parseNodeComponents seeking an integer.");
        }
        newNode.setLevel(current.intVal);
        current = scanner.readToken();  //  consume next, which must be "</level>"
        if (!current.lexeme.equals("</level>")) {
            error("parseNodeComponents seeking the tag </level>.");
        }
        current = scanner.lookAhead();  // check for miniPreds
        if (current.lexeme.equals("<miniPreds>")) {
            current = scanner.readToken();  //  consume "<miniPreds>"
            current = scanner.lookAhead();  // peek at tag
            parseMiniPreds(newNode);
            current = scanner.readToken();  //  consume "</miniPreds>"
            current = scanner.lookAhead();  // peek at next tag
        }
        if (validCodes.contains(current.lexeme)) {
            return newNode;
        } else if (current.lexeme.equals("</cell>")) {
            return newNode;
        } else {
            error("parseNodeComponents seeking kin terms or </cell>.");
        }
        return newNode;
    }

    /*
    MiniPreds ->  "<pred>", string, "</pred> ", MiniPreds.
     *         |  \empty.
    First: [tag: "<pred>"]	 Follow: [tags:  "<pred>", "</miniPreds>"]
     */
    void parseMiniPreds(Node tNode)
            throws KSParsingErrorException, KSInternalErrorException {
        //  At this point, tNode contains all but kinTerms
        if (current.lexeme.equals("<pred>")) {
            current = scanner.readToken();  //  consume "<pred>"
            current = scanner.readToken();  //  consume next, which must be a string
            if (!current.token.equals("string")) {
                error("parseMiniPreds seeking a string.");
            }
            tNode.miniPreds.add(current.lexeme);
            current = scanner.readToken();  //  consume next, which must be "</pred>"
            if (!current.lexeme.equals("</pred>")) {
                error("parseMiniPreds seeking the tag </pred>.");
            }
            current = scanner.lookAhead();  // check next tag
        } else if (current.lexeme.equals("</miniPreds>")) {
            return;
        } else {
            error("parseMiniPreds seeking tags <pred> or </miniPreds>.");
        }
        parseMiniPreds(tNode);
    }


    /*
    TermGroups -> TermGroup, TermGroups.
    |  \empty.
    First: [tags: "<PR>","<ER>","<XR>","<PA>","<EA>","<XA>"]
    Follow: [flag: "</cell>"]
     */
    void parseTermGroups(Node tNode, ArrayList<Object> argList)
            throws KSParsingErrorException, KSInternalErrorException {
        current = scanner.lookAhead();
        if (validCodes.contains(current.lexeme)) {
            ArrayList<Object> argListCopy = new ArrayList<Object>(argList);
            parseTermGroup(tNode, argListCopy);
            parseTermGroups(tNode, argList);
        } else if (current.lexeme.equals("</cell>")) {
            return;
        } else {
            error("parseTermGroups seeking tags for valid kinTerm types\n(e.g. '</row>') or the flag '</cell>'.");
        }
    }

    /*
    TermGroup -> TGStartTag, TermStrings, TGEndTag.
    First: [tags: "<PR>","<ER>","<XR>","<PA>","<EA>","<XA>"]
    Follow: [tags: "</cell>","<PR>","<ER>","<XR>","<PA>","<EA>","<XA>"]
     */
    void parseTermGroup(Node tNode, ArrayList<Object> argList)
            throws KSParsingErrorException, KSInternalErrorException {
        //  At this point, argList contains ego and alter's serial #s
        current = scanner.readToken();  //  consume startTag, already validated
        String startTag = current.lexeme, type = null, clas = null;
        if (startTag.substring(0, 2).equals("<P")) {
            type = "primary";
        } else if (startTag.substring(0, 2).equals("<E")) {
            type = "extended";
        } else if (startTag.substring(0, 2).equals("<X")) {
            type = "exception";
        } else {
            error("parseTermGroup found invalid start flag: " + startTag);
        }
        if (startTag.substring(2, 4).equals("R>")) {
            clas = "reference";
        } else if (startTag.substring(2, 4).equals("A>")) {
            clas = "address";
        } else {
            error("parseTermGroup found invalid start flag: " + startTag);
        }
        argList.add(type);
        argList.add(clas);
        parseTermStrings(tNode, argList);
        current = scanner.readToken();  //  consume endTag, which must match startTag
        String endTag = "</" + startTag.substring(1);
        if (!endTag.equals(current.lexeme)) {
            error("parseTermGroup seeking '" + endTag + "' found: " + current.lexeme);
        }
    }

    /*
    TermStrings -> string, MoreTerms.
    First: [string]	 Follow: [tags: "</PR>","</ER>","</XR>","</PA>","</EA>","</XA>"]
     */
    void parseTermStrings(Node tNode, ArrayList<Object> argList)
            throws KSParsingErrorException, KSInternalErrorException {
        current = scanner.readToken();  // consume next, which must be a string
        if (!current.token.equals("string")) {
            error("parseTermStrings seeking a kinTerm string.");
        }
        String kinTerm = current.lexeme,
                type = (String) argList.get(2),
                addr = ((String) argList.get(3));
        tNode.addTerm(kinTerm, type, addr);
        parseMoreTerms(tNode, argList);
    }

    /*
    MoreTerms -> comma, string, MoreTerms.
    |  \empty.
    First: [comma]	 Follow: [tags: "</PR>","</ER>","</XR>","</PA>","</EA>","</XA>"]
     */
    void parseMoreTerms(Node tNode, ArrayList<Object> argList)
            throws KSParsingErrorException, KSInternalErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("comma")) {
            scanner.readToken();  //  consume the comma
            current = scanner.readToken();  //  consume next, which must be a string
            if (!current.token.equals("string")) {
                error("parseMoreTerms seeking a string.");
            }
            String kinTerm = current.lexeme,
                    type = (String) argList.get(2),
                    addr = ((String) argList.get(3));
            tNode.addTerm(kinTerm, type, addr);
            parseMoreTerms(tNode, argList);
        } else if (current.lexeme.substring(0, 2).equals("</")) {
            return;
        } else {
            error("parseMoreTerms seeking comma or end flag (e.g. '</PR>').");
        }
    }

    /* AccDedfs -> "<accepted-def kinTerm=", string, date=, string,
     *                  notes=, string "/>".
     *          |  \empty.
     * First: [tag: <accepted-def...]
     * Follow: [tags: <accepted-def..., </accepted-defs> ]
    */void parseAccDefs(TreeMap<String, ArrayList<Context.HistoryItem>> learningHistory)
                throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<accepted-def kinTerm=") == 0) {
            String[] vals, attributes = {"kinTerm", "date", "notes" };
            vals = readAttributes("accepted-def", attributes, "");
            Context.AcceptedDefPtr ptr = new Context.AcceptedDefPtr(
                    vals[0], vals[1], "false", vals[2]);
            ptr.postToHistory(learningHistory);
            parseAccDefs(learningHistory);
        }else if (current.lexeme.equals("</accepted-defs>")) {
            return;
        }else {
            error("parseAccDefs seeking tags <accepted-def...> or </accepted-defs>.");
        }
    }

    /*
    KinTypeIndex -> Entries, KinTypeIndex.
    |  \empty.
    First:  [flag: "<entry ....."]
    Follow: [flag: "</kinTypeIndex>"]
     */
    void parseKinTypeIndex(KinTypeIndex kti) throws KSParsingErrorException {
        if (lastPersonIndexed != -99) {
            kti.lastSerial = lastPersonIndexed;
        }
        current = scanner.lookAhead();  //  load the flag
        if (current.lexeme.substring(0, 6).equals("<entry")) {
            parseEntries(kti);
        } else if (current.lexeme.equals("</kinTypeIndex>")) {
            return;
        } else {
            error("parseKinTypeIndex seeking entry or flag </kinTypeIndex>.");
        }
    }

    /*
    Entries -> "<entry kt=", string, ">", Pairs, "</entry>", Entries.
    |  \empty.
    First:  [flag: "<entry ....."]
    Follow: [flags: "<entry .....", "</kinTypeIndex>"]
     */
    void parseEntries(KinTypeIndex kti) throws KSParsingErrorException {
        scanner.readToken();  //  consume the entry start tag
        int from = current.lexeme.indexOf("kt=\"") + 4,
                to = current.lexeme.length() - 2;
        String kt = current.lexeme.substring(from, to);
        current = scanner.lookAhead();  //  load the first pair
        if (current.lexeme.substring(0, 5).equals("<pair")) {
            ArrayList<Integer[]> pairs = new ArrayList<Integer[]>();
            parsePairs(pairs);
            kti.addList(kt, pairs);
        } else {
            error("parseEntries found kin type with no entries.");
        }
        scanner.readToken();  //  consume the entry end tag
        current = scanner.lookAhead();  //  load the next tag
        if (current.lexeme.substring(0, 6).equals("<entry")) {
            parseEntries(kti);
        } else if (current.lexeme.equals("</kinTypeIndex>")) {
            return;
        } else {
            error("parseEntries seeking entry or flag </kinTypeIndex>.");
        }
    }

    /*
    Pairs -> "<pair ", integer, ", ", integer, "/>", Pairs.
    |  \empty.
    First:  [flag: "<pair ....."]
    Follow: [flags: "<pair .....", "</entry>"]
     */
    void parsePairs(ArrayList<Integer[]> list) throws KSParsingErrorException {
        Integer[] pair = new Integer[2];
        scanner.readToken();  //  consume the pair tag
        int from = 6,
                to = current.lexeme.indexOf(",", from);
        pair[0] = new Integer(current.lexeme.substring(from, to));
        from = to + 1;
        to = current.lexeme.indexOf(" />");
        pair[1] = new Integer(current.lexeme.substring(from, to));
        list.add(pair);
        current = scanner.lookAhead();  //  load the next pair or divorceYr-tag
        if (current.lexeme.substring(0, 5).equals("<pair")) {
            parsePairs(list);
        } else if (current.lexeme.equals("</entry>")) {
            return;
        } else {
            error("parsePairs seeking pair or </entry> but found "
                    + current.lexeme);
        }
    }


    /*
    DyadKinTerms -> DyadKinTerm, DyadKinTerms.
    |  \empty.
    First:  [flag: "<dyadKinTerm>"]
    Follow: [flags: "</dyadsDefinedRef>", "</dyadsUndefinedRef>", "</dyadsDefinedAddr>", "</dyadsDefinedAddr>"]
    
     * STRATEGY:  Capture each kinTerm and kinType and pass them down to the parseDyads method,
     *            which will build the actual dyads and add them to the DyadTMap

    NOTE: Iterative style used here to avoid stack overflows for very large populations.
     */
    void parseDyadKinTerms(ArrayList<DyadTemp> dList) throws KSParsingErrorException {
        current = scanner.lookAhead();  //  load the flag
        while (current.lexeme.equals("<dyadKinTerm>")) {
            parseDyadKinTerm(dList);
            current = scanner.lookAhead();  //  reload the flag
        }
        return;  // calling method will check the divorceYr flag.
    }


    /*
    DyadKinTerm -> "<dyadKinTerm>", string, KinType, MoreTypes, "</dyadKinTerm>".
    First:  [flag: "<dyadKinTerm>"]
    Follow: [flags: "<dyadKinTerm>", "</dyadsDefinedRef>", "</dyadsUndefinedRef>", "</dyadsDefinedAddr>", "</dyadsDefinedAddr>"]
     */
    void parseDyadKinTerm(ArrayList<DyadTemp> dList) throws KSParsingErrorException {
        scanner.readToken();  //  consume the start flag (already verified)
        current = scanner.readToken();  //  consume next, which must be a string
        if (!current.token.equals("string")) {
            error("parseDyadKinTerm seeking a string (kinTerm).");
        }
        String kinTerm = current.lexeme;
        current = scanner.lookAhead();
        if (current.lexeme.equals("<kinType>")) {
            parseKinType(dList, kinTerm);
            parseMoreTypes(dList, kinTerm);
        } else {
            error("parseDyadKinTerm seeking a <kinType> after kinTerm; found "
                    + current.lexeme);
        }
        current = scanner.readToken();  // read token, which must be the flag '</dyadKinTerm>'
        if (!current.lexeme.equals("</dyadKinTerm>")) {
            error("parseDyadKinTerm seeking the end flag '</dyadKinTerm>'. ");
        }
    }

    /*
    MoreTypes -> KinType, MoreTypes.
    |  \empty.
    First: [flag: "<kinType>"]	 Follow: [flag: "</dyadKinTerm>"]
     */
    void parseMoreTypes(ArrayList<DyadTemp> dList, String kinTerm) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.lexeme.equals("<kinType>")) {
            parseKinType(dList, kinTerm);
            parseMoreTypes(dList, kinTerm);
        } else if (current.lexeme.equals("</dyadKinTerm>")) {
            return;
        } else {
            error("parseMoreTypes seeking tags '<kinType>' or '</dyadKinTerm>'.");
        }
    }

    /*
    KinType -> "<kinType>", string, Dyad, MoreDyads, "</kinType>".
    First: [flag: "<kinType>"]	 Follow: [tags: "<kinType>", "</dyadKinTerm>"]
     */
    void parseKinType(ArrayList<DyadTemp> dList, String kinTerm) throws KSParsingErrorException {
        scanner.readToken();  //  consume the start flag (already verified)
        current = scanner.readToken();  //  consume next, which must be a string
        if (!current.token.equals("string")) {
            error("parseKinType seeking a string (kinType).");
        }
        String kinType = current.lexeme;
        current = scanner.lookAhead();
        if (current.token.equals("onePcTag")) {
            parseDyad(dList, kinTerm, kinType);
            parseMoreDyads(dList, kinTerm, kinType);
        } else {
            error("parseKinType seeking onePcTag (dyad); found " + current.lexeme);
        }
        current = scanner.readToken();  // consume token, which must be the flag '</kinType>'
        if (!current.lexeme.equals("</kinType>")) {
            error("parseKinType seeking the end flag '</kinType>'. ");
        }
    }

    /*
    MoreDyads -> Dyad, MoreDyads.
    |  \empty.
    First: [onePcTag]	 Follow: [flag: "</kinType>"]
     */
    void parseMoreDyads(ArrayList<DyadTemp> dList, String kinTerm, String kinType) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("onePcTag")) {
            parseDyad(dList, kinTerm, kinType);
            parseMoreDyads(dList, kinTerm, kinType);
        } else if (current.lexeme.equals("</kinType>")) {
            return;
        } else {
            error("parseMoreDyads seeking onePcTag or tag '</dyadKinTerm>'.");
        }
    }

    /*	Dyad -> onePcTag.
    First: [onePcTag]	 Follow: [onePcTag, tag: "</kinType>"]
    </p>   <p>

    NOTE:  a onePcTag consists of: "<dyad", DyadComponents, "/>".
    First: [tag: "<dyad"]	 Follow: [onePcTag, "</kinType>"]
     */
    void parseDyad(ArrayList<DyadTemp> dList, String kinTerm, String pcStr) throws KSParsingErrorException {
        scanner.readToken();  //  consume the onePcTag
        String innards = current.lexeme;
        if (!innards.substring(0, 5).equals("<dyad")) {
            error("parseDyad found onePcTag not starting with '<dyad'.");
        } else {
            innards = innards.substring(6);  // trim off the '<dyad '
        }
        DyadTemp newDyad = new DyadTemp();
        newDyad.pcString = pcStr;
        newDyad.kinTerm = kinTerm;
        parseDyadComponents(newDyad, innards);
        dList.add(newDyad);
    }

    /*DyadComponents -> "level=", int, DyadComponents.
    | "counters=", int, int, int, DyadComponents.
    | "kinTermType=", IntString, DyadComponents.
    | "addOrRef=", IntString, DyadComponents.
    | "ego=", IntString, DyadComponents.
    | "alter=", IntString, DyadComponents.
    | "path=", MultiIntString, DyadComponents.
    | "confirmed=", string, DyadComponents.
    | "challenged=", string, DyadComponents.
    | \empty.
    First: [attributes: "level=", "counters=", "kinTerm=", "kinTermType=",  "addOrRef=", "ego=", "alter=", "path=", "confirmed=", "challenged="]
    Follow: [" />"]
     */
    void parseDyadComponents(DyadTemp dy, String comps) throws KSParsingErrorException {
        String attr, val, rest;
        String[] pair = nextPair(comps);
        attr = pair[0];
        val = pair[1];
        rest = (pair[2] == null ? null : pair[2].trim());
        if (attr.equals("level=")) {
            dy.level = Integer.parseInt(val);
        } else if (attr.equals("counters=")) {
            ArrayList<Object> ctrs = parseMultiIntString(val);
            if (ctrs.size() != 3) {
                error("parseDyadComponents did not find 3 counters.");
            }
            // The 3 counters were deleted from Dyads 2011-09-12.
//            dy.pcCounter = (Integer) ctrs.get(0);
//            dy.sCounter = (Integer) ctrs.get(1);
//            dy.starCounter = (Integer) ctrs.get(2);
        } else if (attr.equals("kinTerm=")) {
            dy.kinTerm = val;
        } else if (attr.equals("kinTermType=")) {
            dy.kinTermType = Integer.parseInt(val);
        } else if (attr.equals("addrOrRef=")) {
            dy.addrOrRef = Integer.parseInt(val);
        } else if (attr.equals("ego=")) {
            dy.egoInt = Integer.parseInt(val);
        } else if (attr.equals("alter=")) {
            dy.alterInt = Integer.parseInt(val);
        } else if (attr.equals("path=")) {
            dy.path = parseMultiIntString(val);
        } else if (attr.equals("confirmed=")) {
            if (val.equals("false")) {
                dy.confirmed = false;
            } else if (val.equals("true")) {
                dy.confirmed = true;
            } else {
                error("parseDyadComponents found invalid boolean for 'confirmed'.");
            }
        } else if (attr.equals("challenged=")) {
            if (val.equals("false")) {
                dy.challenged = false;
            } else if (val.equals("true")) {
                dy.challenged = true;
            } else {
                error("parseDyadComponents found invalid boolean for 'challenged'.");
            }
        } else if (attr.equals("/>")) {
            return;
        } else {
            error("parseDyadComponents found invalid symbol '" + attr + "'.");
        }
        parseDyadComponents(dy, rest);
    }

    /*	Return an array of 2 Strings. The first will have the form 'attr=' where 'attr' is
    some symbol. The second will be the contents found between double-quotes immediately
    following the equal sign. For example: path="2, 56, 32"
     */
    String[] nextPair(String str) throws KSParsingErrorException {
        String[] thePair = new String[3];
        int eql = str.indexOf("=");
        if (eql > 0) {
            thePair[0] = str.substring(0, eql + 1);
            str = str.substring(eql + 1);
        } else if (str.equals("/>") || str.equals(" />")) {
            thePair[0] = str.trim();
            return thePair;
        } else {
            error("nextPair did not find an attribute/value pair in " + str);
        }
        int quot1 = str.indexOf("\""),
                quot2 = str.indexOf("\"", quot1 + 1);
        if (quot2 < 1) {
            error("nextPair did not find a valid value-string in " + str);
        }
        thePair[1] = str.substring(quot1 + 1, quot2);
        thePair[2] = str.substring(quot2 + 1);
        return thePair;
    }  //  end of method nextPair

    /* Parse a string containing 0 or more integers separated by commas. Return an ArrayList of Integers.
     */
    ArrayList<Object> parseMultiIntString(String numList) throws KSParsingErrorException {
        ArrayList<Object> theList = new ArrayList<Object>();
        try {
            while (numList.length() > 0) {
                int comma = numList.indexOf(",");
                if (comma > 0) {
                    theList.add(new Integer(numList.substring(0, comma)));
                    numList = numList.substring(comma + 1).trim();
                } else {
                    theList.add(new Integer(numList));
                    numList = "";
                }
            }
        } catch (NumberFormatException nfe) {
            error("parseMultiIntString encountered invalid multi-integer string: " + numList);
        }
        return theList;
    }

    /* IssueLists -> "<silkin-issues type="Reference">", IssuesRef, "</silkin-issues>", Body.
    |  "<silkin-issues type="Address">", IssuesAdr, "</silkin-issues>", Body.
    } \empty.
     *
     */
    void parseIssueLists() throws KSParsingErrorException, JavaSystemException,
            KSBadHornClauseException, KSInternalErrorException,
            KSConstraintInconsistency, KSDateParseException {
        if (current.lexeme.equals("<silkin-issues type=\"Reference\">")) {
            scanner.readToken();  //  consume the start flag
            DomainTheory dt = newCtxt.domTheoryRef();
            dt.issuesForUser = new TreeMap<String, ArrayList<Issue>>();
            issuesFor = "REF";
            parseIssues(dt.issuesForUser);
            current = scanner.readToken();  // read token, which must be the flag '</silkin-issues>'
            if (!current.lexeme.equals("</silkin-issues>")) {
                error("parseIssueLists seeking the end flag '</silkin-issues>'. ");
            }
            current = scanner.lookAhead();
            parseIssueLists();
        } else if (current.lexeme.equals("<silkin-issues type=\"Address\">")) {
            scanner.readToken();  //  consume the start flag
            DomainTheory dt = newCtxt.domTheoryAdr();
            dt.issuesForUser = new TreeMap<String, ArrayList<Issue>>();
            issuesFor = "ADR";
            parseIssues(dt.issuesForUser);
            current = scanner.readToken();  // read token, which must be the flag '</silkin-issues>'
            if (!current.lexeme.equals("</silkin-issues>")) {
                error("parseIssueLists seeking the end flag '</silkin-issues>'. ");
            }
            current = scanner.lookAhead();
            parseIssueLists();
        } else if (current.lexeme.equals("</SIL_KinData>")) {
            return;
        } else {
            error("parseIssueLists seeking tag </SIL_KinData > or a <silkin-issues> tag.");
        }
    }

    /*Issues -> "<proposed-def kinTerm=", string. ">", PropDef, "</proposed-def>", Issues.
    | "<anomaly kinTerm=", string. ">", Anomaly, "</anomaly>", Issues.
    | "<data-request kinTerm=", string. ">", DataRequest, "</data-request>", Issues.
    | "<overlap kinTerm=", string. ">", Overlap, "</overlap>", Issues.
    | "<synonym kinTerm=", string. ">", Synonym, "</synonym>", Issues.
    | "<umbrella kinTerm=", string. ">", Umbrella, "</umbrella>", Issues.
    | \empty.
    First: [<proposed-def, <anomaly, <data-request, <overlap, <synonym, <umbrella]
    Follow: [<proposed-def, <anomaly, <data-request, <overlap, <synonym, <umbrella, </silkin-issues>]
     */
    void parseIssues(TreeMap<String, ArrayList<Issue>> issues)
            throws KSParsingErrorException, KSDateParseException {
        current = scanner.lookAhead();  // peek at token, which must be a tag
        if (current.lexeme.substring(0, 13).equals("<proposed-def")) {
            ProposedDef def = parsePropDef();
            addToIssues(issues, def);
            parseIssues(issues);
        } else if (current.lexeme.substring(0, 8).equals("<anomaly")) {
            parseAnomaly(issues);
            parseIssues(issues);
        } else if (current.lexeme.substring(0, 13).equals("<data-request")) {
            parseDataRequest(issues);
            parseIssues(issues);
        } else if (current.lexeme.substring(0, 8).equals("<overlap")) {
            parseOverlap(issues);
            parseIssues(issues);
        } else if (current.lexeme.substring(0, 8).equals("<synonym")) {
            parseSynonym(issues);
            parseIssues(issues);
        } else if (current.lexeme.substring(0, 9).equals("<umbrella")) {
            parseUmbrella(issues);
            parseIssues(issues);
        } else if (current.lexeme.equals("</silkin-issues>")) {
            return;
        } else {
            error("parseIssues seeking valid issue tag or '</silkin-issues>'. ");
        }
    }

    /* PropDefs -> PropDef, PropDefs.
     *          | \empty.
     *
    First: [<proposed-def...]
    Follow: [<proposed-def, </accepted-defs>]
     */
    void parsePropDefs(ArrayList<ProposedDef> propDefs)
            throws KSParsingErrorException, KSDateParseException {
        current = scanner.lookAhead();
        if (current.lexeme.equals("</accepted-defs>")) {
            return;
        } else if (current.lexeme.substring(0, 13).equals("<proposed-def")) {
            ProposedDef def = parsePropDef();
            propDefs.add(def);
            parsePropDefs(propDefs);
        } else {
            error("parsePropDefs seeking a PropDef, or tag '</accepted-defs>'.");
        }
    }


    /*PropDef -> "<proposed-def kinTerm=", string, ">", KinTermDef, Questions,
    OptionalElements, "<request-date>", DateString + "</request-date>",
    </proposed-def>".
    First: [<proposed-def]
    Follow: [<proposed-def, <anomaly, <data-request, <overlap, <synonym, <umbrella, </silkin-issues>]
     */
    ProposedDef parsePropDef() throws KSParsingErrorException, KSDateParseException {
        scanner.readToken(); // consume the start tag
        int start = current.lexeme.indexOf("\"") + 1,
                stop = current.lexeme.lastIndexOf("\"");
        String kinTerm = current.lexeme.substring(start, stop);
        ProposedDef propDef = new ProposedDef();
        propDef.kinTerm = kinTerm;
        current = scanner.lookAhead(); // may be start tag of optional <processed> block
        if (current.lexeme.equals("<processed>")) {
            propDef.processed = readTaggedBoolean("processed", "parsePropDef");
        }
        current = scanner.readToken(); // must be start tag of KinTermDef
        if (!current.lexeme.equals("<kin-term-def>")) {
            error("parsePropDef seeking tag '<kin-term-def>'. ");
        }
        propDef.ktd = parseKinTermDef();
        current = scanner.lookAhead(); // must be start tag of optional elements
        if (current.lexeme.equals("<questions>")) {
            scanner.readToken(); // consume start tag of Questions
            parseQuestions(propDef);
            scanner.readToken(); // consume the </questions> tag
            current = scanner.lookAhead();
        }
        ComposedDef compDef = null;
        Issue theIssue;
        if (current.lexeme.equals("<pos-dyads-uncovered>")) {
            scanner.readToken(); // consume the start tag
            compDef = new ComposedDef();
            compDef.kinTerm = propDef.kinTerm;
            compDef.ktd = propDef.ktd;
            compDef.questions = propDef.questions;
            compDef.posUncovered = parseDyadAList();
            current = scanner.readToken();
            if (!current.lexeme.equals("</pos-dyads-uncovered>")) {
                error("parsePropDef seeking tag '</pos-dyads-uncovered>'.");
            }
            current = scanner.lookAhead(); // must be start tag of next element
        }
        if (current.lexeme.equals("<neg-dyads-covered>")) {
            scanner.readToken(); // consume the start tag
            if (compDef == null) { // in case there were no pos-dyads-uncovered
                compDef = new ComposedDef();
                compDef.kinTerm = propDef.kinTerm;
                compDef.ktd = propDef.ktd;
                compDef.questions = propDef.questions;
            }
            compDef.negsCovered = parseDyadAList();
            current = scanner.readToken();
            if (!current.lexeme.equals("</neg-dyads-covered>")) {
                error("parsePropDef seeking tag '</neg-dyads-covered>'.");
            }
            current = scanner.lookAhead(); // must be start tag of next element
        }
        if (current.lexeme.equals("<kin-term-eqc>")) {
            scanner.readToken(); // consume the start tag
            propDef.eqc = parseKTD_EQC();
            current = scanner.lookAhead(); // must be start tag of next element
        }
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<request-date") == 0) {
            scanner.readToken();
        }
        current = scanner.readToken();
        if (!current.lexeme.equals("</proposed-def>")) {
            error("parsePropDef seeking tag '</proposed-def>'. ");
        }
        return propDef;
    }

    void addToIssues(TreeMap<String, ArrayList<Issue>> issues, Issue issue) {
        String kinTerm = issue.kinTerm;
        if (issues.get(kinTerm) == null) {
            issues.put(kinTerm, new ArrayList<Issue>());
        }
        ArrayList<Issue> theList = issues.get(kinTerm);
        theList.add(issue);
    }

    /* KinTermDef -> "<kin-term-def>", "<head>", symbol, "</head>", EqcSigExact,
    EqcSigStruct, Definitions, ExpandedDefs, "</kin-term-def>".
    First: [<kin-term-def>]
    Follow: [<questions>]
     */
    KinTermDef parseKinTermDef() throws KSParsingErrorException {
        // the start tag has already been consumed
        String term = readTaggedString("head", "parseKinTermDef");
        KinTermDef ktd = new KinTermDef(term);
        current = scanner.lookAhead();
        if (current.lexeme.equals("<eqcSigExact>")) {
            ktd.eqcSigExact = readTaggedString("eqcSigExact", "parseKinTermDef");
            current = scanner.lookAhead();
        }
        if (current.lexeme.equals("<eqcSigStruct>")) {
            ktd.eqcSigStruct = readTaggedString("eqcSigStruct", "parseKinTermDef");
            current = scanner.lookAhead();
        }
        current = scanner.readToken(); // must be <domain-theory> tag
        if (!current.lexeme.equals("<domain-theory>")) {
            error("parseKinTermDef seeking tag '<domain-theory>'. ");
        }
        ktd.domTh = parseDT_Highlights();
        current = scanner.readToken(); // must be <domain-theory> tag
        if (!current.lexeme.equals("</domain-theory>")) {
            error("parseKinTermDef seeking tag '</domain-theory>'. ");
        }
        ktd.domTh.addTerm(ktd);
        parseDefinitions(ktd); // min 1 def'n required
        current = scanner.lookAhead();
        if (current.lexeme.equals("<expandedDefs>")) {
            parseExpandedDefs(ktd);
        }
        current = scanner.readToken(); // must be end tag
        if (!current.lexeme.equals("</kin-term-def>")) {
            error("parseKinTermDef seeking tag '</kin-term-def>'. ");
        }
        return ktd;
    }

    /* Definitions -> "<definitions>", ClauseBody, ClauseBodies, "</definitions>".
    First: [<definitions>]
    Follow: [<expandedDefs>, </kin-term-def>]
     */
    void parseDefinitions(KinTermDef ktd) throws KSParsingErrorException {
        current = scanner.readToken(); // must be start tag
        if (!current.lexeme.equals("<definitions>")) {
            error("parseDefinitions seeking tag '<definitions>'. ");
        }
        ClauseBody cb = parseClauseBody();
        cb.ktd = ktd;
        ktd.definitions.add(cb);
        parseClauseBodies(ktd, ktd.definitions);
        current = scanner.readToken(); // must be end tag
        if (!current.lexeme.equals("</definitions>")) {
            error("parseDefinitions seeking tag '</definitions>'. ");
        }
    }

    /* ExpandedDefs -> "<expandedDefs>", ClauseBody, ClauseBodies, "</expandedDefs>".
    First: [<expandedDefs>]
    Follow: [</kin-term-def>]
     */
    void parseExpandedDefs(KinTermDef ktd) throws KSParsingErrorException {
        current = scanner.readToken(); // must be start tag
        if (!current.lexeme.equals("<expandedDefs>")) {
            error("parseExpandedDefs seeking tag '<expandedDefs>'. ");
        }
        ClauseBody cb = parseClauseBody();
        cb.ktd = ktd;
        ktd.expandedDefs.add(cb);
        parseClauseBodies(ktd, ktd.expandedDefs);
        current = scanner.readToken(); // must be end tag
        if (!current.lexeme.equals("</expandedDefs>")) {
            error("parseExpandedDefs seeking tag '</expandedDefs>'. ");
        }
    }

    /* ClauseBody -> "<clause>", PCString, PCStringStruct,
    Literal, Literals, "</clause>".
    First: [<clause>]
    Follow: [<clause>, </definitions>, </expandedDefs>, </kin-term-def>]
     */
    ClauseBody parseClauseBody() throws KSParsingErrorException {
        current = scanner.readToken(); // must be start tag of clause
        if (!current.lexeme.equals("<clause>")) {
            error("parseClauseBody seeking tag '<clause>'. ");
        }
        ClauseBody cb = new ClauseBody();
        current = scanner.lookAhead();
        if (current.lexeme.equals("<pc-string>")) {
            cb.pcString = readTaggedString("pc-string", "parseClauseBody");
            current = scanner.lookAhead();
        }
        if (current.lexeme.equals("<pc-string-structural>")) {
            cb.pcStringStructural = readTaggedString("pc-string-structural", "parseClauseBody");
        }
        Literal lit = parseLiteral(cb);
        cb.body.add(lit);
        parseLiterals(cb);
        current = scanner.readToken(); // must be end tag of clause
        if (!current.lexeme.equals("</clause>")) {
            error("parseClauseBody seeking tag '</clause>'. ");
        }
        return cb;
    }

    /* ClauseBodies -> ClauseBody, ClauseBodies.
    |  \empty.
    First: [<clause>]
    Follow: [<clause>, </definitions>, </expandedDefs>, </kin-term-def>]
     */
    void parseClauseBodies(KinTermDef ktd, ArrayList<Object> list)
            throws KSParsingErrorException {
        current = scanner.lookAhead(); // must be tag
        if (current.lexeme.equals("<clause>")) {
            ClauseBody cb = parseClauseBody();
            list.add(cb);
            cb.ktd = ktd;
            parseClauseBodies(ktd, list);
        } else if (current.lexeme.equals("</kin-term-def>")
                || current.lexeme.equals("</expandedDefs>")
                || current.lexeme.equals("</definitions>")) {
            return;
        } else {
            error("parseClauseBodies seeking tags <clause>, </definitions>, </expandedDefs>, or </kin-term-def>.");
        }
    }

    /* Literal -> <literal>, <predicate>, symbol, </predicate>,
    <arg-list>, Arg, Args, </arg-list>, </literal>.
    First: [<literal>]
    Follow: [<literal>, </clause>]
     */
    Literal parseLiteral(ClauseBody cb) throws KSParsingErrorException {
        current = scanner.readToken(); // must be start tag of lit
        if (!current.lexeme.equals("<literal>")) {
            error("parseLiteral seeking tag '<literal>'. ");
        }
        String predName = readTaggedString("predicate", "parseLiteral");
        PredCategory cat = determinePrimitive(predName, dTheory);
        Predicate pred = new Predicate(predName, cat);
        Literal lit = new Literal(pred);
        current = scanner.readToken(); // must be start tag of arg-list
        if (!current.lexeme.equals("<arg-list>")) {
            error("parseLiteral seeking tag '<arg-list>'. ");
        }
        parseArg(lit, cb);
        parseArgs(lit, cb);
        current = scanner.readToken(); // must be end tag of arg-list
        if (!current.lexeme.equals("</arg-list>")) {
            error("parseLiteral seeking tag '</arg-list>'. ");
        }
        current = scanner.readToken(); // must be end tag of literal
        if (!current.lexeme.equals("</literal>")) {
            error("parseLiteral seeking tag '</literal>'. ");
        }
        return lit;
    }

    /* Literals -> Literal, Literals.
    |  \empty.
    First: [<literal>]
    Follow: [<literal>, </clause>]
     */
    void parseLiterals(ClauseBody cb) throws KSParsingErrorException {
        current = scanner.lookAhead(); // must be tag
        if (current.lexeme.equals("<literal>")) {
            Literal lit = parseLiteral(cb);
            cb.body.add(lit);
            parseLiterals(cb);
        } else if (current.lexeme.equals("</clause>")) {
            return;
        } else {
            error("parseLiterals seeking tags '</clause>' or '<literal>'.");
        }
    }

    /* Arg -> <constant>, symbol, </constant>.
    | Literal.
    | Clause.
    | <argString>, symbol, </argString>.
    | <var>, symbol, </var>.
    | <mathVar>, symbol, </mathVar>.
    First: [<literal>, <clause>, <constant>, <argString>, <var>, <mathVar>]
    Follow: [<literal>, <clause>, <constant>, <argString>, <var>,
    <mathVar>, </arg-list>]
     */
    void parseArg(Literal lit, ClauseBody cb) throws KSParsingErrorException {
        current = scanner.lookAhead(); // must be tag
        if (current.lexeme.equals("<literal>")) {
            Literal litArg = parseLiteral(cb);
            lit.args.add(litArg);
        } else if (current.lexeme.equals("<clause>")) {
            ClauseBody cbLit = parseClauseBody();
            cbLit.ktd = cb.ktd;
            lit.args.add(cbLit);
        } else if (current.lexeme.equals("<constant>")) {
            String argSymbol = readTaggedString("constant", "parseArg");
            Constant connie = new Constant(argSymbol);
            lit.args.add(connie);
        } else if (current.lexeme.equals("<argString>")) {
            String argSymbol = readTaggedString("argString", "parseArg");
            ArgString arnie = new ArgString(argSymbol);
            lit.args.add(arnie);
        } else if (current.lexeme.equals("<var>")) {
            String argSymbol = readTaggedString("var", "parseArg");
            Variable v = new Variable(argSymbol);
            lit.args.add(v);
        } else if (current.lexeme.equals("<mathVar>")) {
            String argSymbol = readTaggedString("mathVar", "parseArg");
            Variable v = new Variable(argSymbol);
            MathVariable mv = new MathVariable(v);
            lit.args.add(mv);
        } else {
            error("parseArg seeking <clause>, <literal>, <constant>, <argString>, <var>, or <mathVar>.");
        }
    }

    /* Args -> Arg, Args.
    | \empty.
    First: [<literal>, <clause>, <constant>, <argString>, <var>, <mathVar>]
    Follow: [<literal>, <clause>, <constant>, <argString>, <var>,
    <mathVar>, </arg-list>]
     */
    void parseArgs(Literal lit, ClauseBody cb) throws KSParsingErrorException {
        current = scanner.lookAhead(); // must be tag
        if (current.lexeme.equals("<literal>") || current.lexeme.equals("<clause>")
                || current.lexeme.equals("<constant>") || current.lexeme.equals("<argString>")
                || current.lexeme.equals("<var>") || current.lexeme.equals("<mathVar>")) {
            parseArg(lit, cb);
            parseArgs(lit, cb);
        } else if (current.lexeme.equals("</arg-list>")) {
            return;
        } else {
            error("parseArg seeking <clause>, <literal>, <constant>, <argString>, <var>, <mathVar>, or </arg-list>.");
        }
    }

    /*Questions -> "<questions>", Qn, MoreQns, "</questions>".
    |  \empty.
    First: [<questions>]
    Follow: [<kin-term-eqc>, <pos-dyads-uncovered>, <neg-dyads-covered>]
     */
    void parseQuestions(Issue issue) throws KSParsingErrorException {
        // start tag <questions> has already been consumed
        current = scanner.lookAhead(); // must be start tag <qn>
        String qn = readTaggedString("qn", "parseQuestions");
        issue.questions.add(qn);
        current = scanner.lookAhead(); // must be start tag <qn>
        // There may be zero or more other questions
        while (current.lexeme.equals("<qn>")) {
            qn = readTaggedString("qn", "parseQuestions");
            issue.questions.add(qn);
            current = scanner.lookAhead();
        }
        if (!current.lexeme.equals("</questions>")) {
            error("parseQuestions seeking tag '</questions>'.");
        }
    }

    ArrayList<Object> parseDyadAList() throws KSParsingErrorException {
        ArrayList<Object> dyads = new ArrayList<Object>();
        current = scanner.lookAhead();
        while (current.lexeme.substring(0, 5).equals("<dyad")) {
            scanner.readToken(); // consume the dyad one-piece tag
            String innards = current.lexeme.substring(6);  // trim off the '<dyad '
            DyadTemp newDyad = new DyadTemp();
            try {
                parseDyadComponents(newDyad, innards);
                Node nod = newCtxt.ktm.getCell(newDyad.egoInt, newDyad.alterInt);
                newDyad.pcString = nod.pcString;
                newDyad.ego = newCtxt.individualCensus.get(newDyad.egoInt);
                newDyad.alter = newCtxt.individualCensus.get(newDyad.alterInt);
                if (issuesFor.equals("REF")) {
                    newDyad.kinTerm = (String) nod.kinTermsRef.get(0);
                } else {
                    newDyad.kinTerm = (String) nod.kinTermsAddr.get(0);
                }
                dyads.add(new Dyad(newDyad));
            } catch (Exception ex) {
                //  Some chart editing actions can remove people or links that were
                //  part of a prior Learning session. That leaves 'orphan dyads' in the
                //  Suggestions. Perhaps we just hit an orphan. Ignore, warn, & proceed.
                orphanDyadFlag = true;
            }
            current = scanner.lookAhead();
        }
        return dyads;
    }


    /* KTD_EQC -> <kin-term-eqc>, <signature-string>, String, </signature-string>,
    <prototype>, KTD_Ptr, </prototype>, <members>, MemberList, </members>,
    OptionalUnusedClauses, </kin-term-eqc>.
    First: [<kin-term-eqc>]
    Follow: [<request-date>]
     */
    Library.KTD_EQC parseKTD_EQC() throws KSParsingErrorException {
        // start tag has already been consumed
        Library.KTD_EQC eqc = new Library.KTD_EQC();
        eqc.sigString = readTaggedString("signature-string", "parseKTD_EQC");
        current = scanner.readToken();
        if (current.lexeme.equals("<prototype>")) {
            eqc.prototype = parseKTD_Ptr();
        } else {
            error("parseKTD_EQC seeking tag '<prototype>'.");
        }
        current = scanner.readToken();
        if (!current.lexeme.equals("</prototype>")) {
            error("parseKTD_EQC seeking tag '</prototype>'.");
        }
        current = scanner.readToken();
        if (current.lexeme.equals("<members>")) {
            eqc.members = new ArrayList<Object>();
            parseMemberList(eqc.members);
        } else {
            error("parseKTD_EQC seeking tag '<members>'.");
        }
        current = scanner.readToken();
        if (!current.lexeme.equals("</members>")) {
            error("parseKTD_EQC seeking tag '</members>'.");
        }
        current = scanner.readToken();
        if (current.lexeme.equals("<unused-clauses>")) {
            eqc.misFits = parseCBList();
            current = scanner.readToken();
            if (!current.lexeme.equals("</unused-clauses>")) {
                error("parseKTD_EQC seeking tag '</unused-clauses>'.");
            }
            current = scanner.readToken();
        }
        if (!current.lexeme.equals("</kin-term-eqc>")) {
            error("parseKTD_EQC seeking tag '</kin-term-eqc>'.");
        }
        return eqc;
    }

    /* KTD_Ptr -> "<kin-term-context>", KinTermDef, "</kin-term-context>".
    First: [<kin-term-context>]
    Follow: [</prototype>]
     */
    Library.KTD_Ptr parseKTD_Ptr() throws KSParsingErrorException {
        Library.KTD_Ptr ptr = new Library.KTD_Ptr();
        current = scanner.readToken();
        if (!current.lexeme.equals("<kin-term-context>")) {
            error("parseKTD_Ptr seeking tag '<kin-term-context>'.");
        }
        current = scanner.readToken(); // consume the <kin-term-def> tag
        ptr.setKTD(parseKinTermDef());
        ptr.getLangFromKTD();
        current = scanner.readToken();
        if (!current.lexeme.equals("</kin-term-context>")) {
            error("parseKTD_Ptr seeking tag '</kin-term-context>'.");
        }
        return ptr;
    }

    /* DT_Highlights -> "<languageName>", string + "</languageName>",
    OptionalPolygamyFlag, "<author>", string, "</author>",
    "<create-date>", string "</create-date>", "<citation>",
    string, "</citation>".
    First: [<languageName>]
    Follow: [</domain-theory>]
     */
    DomainTheory parseDT_Highlights() throws KSParsingErrorException {
        DomainTheory dt = new DomainTheory();
        dt.languageName = readTaggedString("languageName", "parseDT_Highlights");
        current = scanner.lookAhead();
        dt.polygamyOK = false;
        if (current.lexeme.equals("<polygamyOK />")) {
            dt.polygamyOK = true;
            scanner.readToken(); // consume this optional tag
            current = scanner.lookAhead();
        }
        if (current.lexeme.equals("<author>")) {
            dt.author = readTaggedString("author", "parseDT_Highlights");
            current = scanner.lookAhead();
        }
        dt.createDate = readTaggedString("create-date", "parseDT_Highlights");
        current = scanner.lookAhead();
        if (current.lexeme.equals("<citation>")) {
            dt.citation = readTaggedString("citation", "parseDT_Highlights");
        }
        return dt;
    }

    /* MemberList -> KTD_Ptr, MemberList.
    |  \empty.
    First: [<kin-term-context>]
    Follow: [</members>]
     */
    void parseMemberList(ArrayList<Object> list) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.lexeme.equals("<kin-term-context>")) {
            list.add(parseKTD_Ptr());
            parseMemberList(list);
        } else if (!current.lexeme.equals("</members>")) {
            error("parseMemberList seeking '<kin-term-context>' or '</members>'.");
        }
        return;
    }

    ArrayList<Object> parseCBList() throws KSParsingErrorException {
        ArrayList<Object> list = new ArrayList<Object>();
        current = scanner.lookAhead();
        while (current.lexeme.equals("<clause>")) {
            ClauseBody cb = parseClauseBody();
            list.add(cb);
            current = scanner.lookAhead();
        }
        return list;
    }

    /* Anomaly -> "<anomaly kinTerm=", string. ">", Anomaly, "</anomaly>", Issues.
    First: [<anomaly]
    Follow: [<proposed-def, <anomaly, <data-request, <overlap, <synonym, <umbrella, </silkin-issues>]
     */
    void parseAnomaly(TreeMap<String, ArrayList<Issue>> issues)
            throws KSParsingErrorException, KSDateParseException {
        scanner.readToken(); // consume the start tag
        int start = current.lexeme.indexOf("\"") + 1,
                stop = current.lexeme.indexOf("\"", start);
        Anomaly anna = new Anomaly();
        anna.kinTerm = current.lexeme.substring(start, stop);
        current = scanner.lookAhead(); // may be start tag of optional <processed> block
        if (current.lexeme.equals("<processed>")) {
            anna.processed = readTaggedBoolean("processed", "parseAnomaly");
        }
        anna.basisType = readTaggedString("basis-type", "parseAnomaly");
        anna.anomalyType = readTaggedString("anomaly-type", "parseAnomaly");
        current = scanner.readToken();
        if (current.lexeme.equals("<questions>")) {
            parseQuestions(anna);
            scanner.readToken(); // consume the </questions> tag
            current = scanner.readToken();
        }
        if (!current.lexeme.equals("<basis>")) {
            error("parseAnomaly seeking tag '<basis>'");
        }
        current = scanner.lookAhead();
        if (current.lexeme.equals("<barriers />")) {
            scanner.readToken(); // consume token, but do nothing
        } else if (current.lexeme.equals("<kin-term-def>")) {
            scanner.readToken();
            anna.basis.add(parseKinTermDef());
        } else if (current.lexeme.equals("<kin-term-def>")) {
            anna.basis.add(parseClauseBody());
        } else {
            error("parseAnomaly seeking tag '<barriers />', a ClauseBody, or a KinTermDef.");
        }
        current = scanner.readToken();
        if (!current.lexeme.equals("</basis>")) {
            error("parseAnomaly seeking tag '</basis>'");
        }
        current = scanner.readToken();
        if (!current.lexeme.equals("<misfits>")) {
            error("parseAnomaly seeking tag '<misfits>'");
        }
        ArrayList<Object> misfits = parseDyadAList();
        if (anna.anomalyType.equals("falsePos")) {
            anna.posHits = misfits;
        } else if (anna.anomalyType.equals("falseNeg")) {
            anna.negHits = misfits;
        } else {  //  Must be a nearMiss; doesn't matter where I store them.
            anna.posHits = misfits;
        }
        current = scanner.readToken();
        if (!current.lexeme.equals("</misfits>")) {
            error("parseAnomaly seeking tag '</misfits>'");
        }
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<request-date") == 0) {
            scanner.readToken();
        }
        current = scanner.readToken();
        if (!current.lexeme.equals("</anomaly>")) {
            error("parseAnomaly seeking tag '</anomaly>'");
        }
        addToIssues(issues, anna);
    }

    /*DataRequest ->  "<data-request kinTerm=", string. ">", DataRequest, "</data-request>", Issues.
    First: [<data-request]
    Follow: [<proposed-def, <anomaly, <data-request, <overlap, <synonym, <umbrella, </silkin-issues>]
     */
    void parseDataRequest(TreeMap<String, ArrayList<Issue>> issues)
            throws KSParsingErrorException, KSDateParseException {
        scanner.readToken(); // consume the start tag
        int start = current.lexeme.indexOf("\"") + 1,
                stop = current.lexeme.indexOf("\"", start);
        DataRequest dis = new DataRequest();
        dis.kinTerm = current.lexeme.substring(start, stop);
        current = scanner.lookAhead(); // may be start tag of optional <processed> block
        if (current.lexeme.equals("<processed>")) {
            dis.processed = readTaggedBoolean("processed", "parseDataRequest");
        }
        current = scanner.lookAhead();
        if (current.lexeme.equals("<questions>")) {
            current = scanner.readToken(); // consume the start tag
            parseQuestions(dis);
            scanner.readToken(); // consume the </questions> tag
        }
        dis.relatedCB_Ptrs = parseCB_Ptrs();
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<request-date") == 0) {
            scanner.readToken();
        }
        addToIssues(issues, dis);
    }

    ArrayList<Library.CB_Ptr> parseCB_Ptrs() throws KSParsingErrorException {
        ArrayList<Library.CB_Ptr> theList = new ArrayList<Library.CB_Ptr>();
        current = scanner.lookAhead();
        if (current.lexeme.equals("<error>")) {
            String errMsg = readTaggedString("error", "parseCB_Ptrs");
            errMsg += "\nSkipping this damaged Data Request.";
            MainPane.displayError(errMsg, "SILKin Internal Error", JOptionPane.ERROR_MESSAGE);
            theList.addAll(parseCB_Ptrs());
        } else if (current.lexeme.equals("<kin-type-dyad>")) {
            scanner.readToken(); // consume the start tag
            Library.CB_Ptr ptr = new Library.CB_Ptr();
            ptr.cbEQC = new Library.CB_EQC();
            ptr.cbEQC.pcString = readTaggedString("pc-string", "parseCB_Ptrs");
            ptr.clause = parseClauseBody();
            current = scanner.readToken();
            if (!current.lexeme.equals("</kin-type-dyad>")) {
                error("parseCB_Ptrs seeking tag '</kin-type-dyad>'");
            }
            theList.add(ptr);
            theList.addAll(parseCB_Ptrs());
        } else if (current.lexeme.equals("<named-dyad>")) {
            scanner.readToken(); // consume the start tag
            // ignore the next 2 blocks
            readTaggedInteger("ego-serial", "parseCB_Ptrs");
            readTaggedInteger("alter-serial", "parseCB_Ptrs");
            Library.CB_Ptr ptr = new Library.CB_Ptr();
            ptr.cbEQC = new Library.CB_EQC();
            ptr.cbEQC.pcString = readTaggedString("pc-string", "parseCB_Ptrs");
            ptr.clause = parseClauseBody();
            current = scanner.readToken();
            if (!current.lexeme.equals("</named-dyad>")) {
                error("parseCB_Ptrs seeking tag '</named-dyad>'");
            }
            theList.add(ptr);
            theList.addAll(parseCB_Ptrs());
        } else if (current.lexeme.equals("<request-date>")) {
            return theList;
        } else {
            error("parseCB_Ptrs seeking tags: <named-dyad>, <request-date>, <error>, or <kin-type-dyad>.");
        }
        return theList;
    }


    /*Overlap -> "<overlap kinTerm=", string. ">", Overlap, "</overlap>", Issues.
    First: [<overlap]
    Follow: [<proposed-def, <anomaly, <data-request, <overlap, <synonym, <umbrella, </silkin-issues>]
     */
    void parseOverlap(TreeMap<String, ArrayList<Issue>> issues)
            throws KSParsingErrorException, KSDateParseException {
        scanner.readToken(); // consume the start tag
        int start = current.lexeme.indexOf("\"") + 1,
                stop = current.lexeme.indexOf("\"", start);
        OverlapCandidate oc = new OverlapCandidate();
        oc.kinTerm = current.lexeme.substring(start, stop);
        current = scanner.lookAhead(); // may be start tag of optional <processed> block
        if (current.lexeme.equals("<processed>")) {
            oc.processed = readTaggedBoolean("processed", "parseOverlap");
        }
        oc.otherTerm = readTaggedString("other-term", "parseOverlap");
        oc.ktermDyads = new ArrayList<Object>();
        readStringSet(oc.ktermDyads, "pc-strings-covered-1", "parseOverlap");
        oc.otherTermDyads = new ArrayList<Object>();
        readStringSet(oc.otherTermDyads, "pc-strings-covered-2", "parseOverlap");
        oc.intersection = new ArrayList<Object>();
        readStringSet(oc.intersection, "pc-strings-overlap", "parseOverlap");
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<request-date") == 0) {
            scanner.readToken();
        }
        current = scanner.readToken();
        if (!current.lexeme.equals("</overlap>")) {
            error("parseOverlap seeking tag '</overlap>'");
        }
        addToIssues(issues, oc);
    }

    void readStringSet(ArrayList<Object> theList, String tag, String caller)
            throws KSParsingErrorException {
        current = scanner.readToken();
        if (!current.lexeme.equals("<" + tag + ">")) {
            error(caller + " seeking tag '" + tag + "'.");
        }
        current = scanner.lookAhead();
        while (!current.lexeme.equals("</" + tag + ">")) {
            scanner.readToken(); // consume the symbol
            if (!current.token.equals("string")) {
                error(caller + " seeking a string in " + tag + ".");
            }
            theList.add(current.lexeme);
            current = scanner.readToken();
            if (current.lexeme.equals("</" + tag + ">")) {
                //do nothing; loop will divorceYr
            } else if (current.token.equals("comma")) {
                current = scanner.lookAhead(); // peek at next symbol
            } else {
                error(caller + " seeking comma or '</" + tag + ">'.");
            }
        } // end tag is already consumed
    }


    /*Synonym -> "<synonym kinTerm=", string. ">", Synonym, "</synonym>", Issues.
    First: [<synonym]
    Follow: [<proposed-def, <anomaly, <data-request, <overlap, <synonym, <umbrella, </silkin-issues>]
     */
    void parseSynonym(TreeMap<String, ArrayList<Issue>> issues)
            throws KSParsingErrorException, KSDateParseException {
        scanner.readToken(); // consume the start tag
        int start = current.lexeme.indexOf("\"") + 1,
                stop = current.lexeme.indexOf("\"", start);
        SynonymCandidate sc = new SynonymCandidate();
        sc.kinTerm = current.lexeme.substring(start, stop);
        current = scanner.lookAhead(); // may be start tag of optional <processed> block
        if (current.lexeme.equals("<processed>")) {
            sc.processed = readTaggedBoolean("processed", "parseSynonym");
        }
        String otherTerm = readTaggedString("other-term", "parseSynonym");
        if (sc.kinTerm.compareTo(otherTerm) < 0) {
            sc.pairOfTerms = sc.kinTerm + "/" + otherTerm;
        } else {
            sc.pairOfTerms = otherTerm + "/" + sc.kinTerm;
        } // always in lexicographic order
        sc.pcStringsCovered = new ArrayList<Object>();
        readStringSet(sc.pcStringsCovered, "pc-strings-covered", "parseSynonym");
        current = scanner.readToken();
        if (!current.lexeme.equals("<kin-term-dyads>")) {
            error("parseSynonym seeking tag '<kin-term-dyads>'");
        }
        sc.ktermDyads = parseDyadAList();
        current = scanner.readToken();
        if (!current.lexeme.equals("</kin-term-dyads>")) {
            error("parseSynonym seeking tag '</kin-term-dyads>'");
        }
        current = scanner.readToken();
        if (!current.lexeme.equals("<other-term-dyads>")) {
            error("parseSynonym seeking tag '<other-term-dyads>'");
        }
        sc.otherTermDyads = parseDyadAList();
        current = scanner.readToken();
        if (!current.lexeme.equals("</other-term-dyads>")) {
            error("parseSynonym seeking tag '</other-term-dyads>'");
        }
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<request-date") == 0) {
            scanner.readToken();
        }
        current = scanner.readToken();
        if (!current.lexeme.equals("</synonym>")) {
            error("parseSynonym seeking tag '</synonym>'");
        }
        addToIssues(issues, sc);
    }

    /*Umbrella -> "<umbrella kinTerm=", string. ">", Umbrella, "</umbrella>", Issues.
    First: [<umbrella]
    Follow: [<proposed-def, <anomaly, <data-request, <overlap, <synonym, <umbrella, </silkin-issues>]
     */
    void parseUmbrella(TreeMap<String, ArrayList<Issue>> issues)
            throws KSParsingErrorException, KSDateParseException {
        scanner.readToken(); // consume the start tag
        int start = current.lexeme.indexOf("\"") + 1,
                stop = current.lexeme.indexOf("\"", start);
        UmbrellaCandidate uc = new UmbrellaCandidate();
        uc.kinTerm = current.lexeme.substring(start, stop);
        current = scanner.lookAhead(); // may be start tag of optional <processed> block
        if (current.lexeme.equals("<processed>")) {
            uc.processed = readTaggedBoolean("processed", "parseUmbrella");
        }
        current = scanner.readToken();
        if (!current.lexeme.equals("<sub-terms>")) {
            error("parseUmbrella seeking tag '<sub-terms>'");
        }
        current = scanner.readToken();
        if (!current.lexeme.equals("<sub-term>")) {
            error("parseUmbrella seeking tag '<sub-term>'");
        }

        while (current.lexeme.equals("<sub-term>")) {
            parseSubTerm(uc.subTerms);
        }
        current = scanner.readToken();
        if (!current.lexeme.equals("</sub-terms>")) {
            error("parseUmbrella seeking tag '</sub-terms>'");
        }
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<request-date") == 0) {
            scanner.readToken();
        }
        current = scanner.readToken();
        if (!current.lexeme.equals("</umbrella>")) {
            error("parseUmbrella seeking tag '</umbrella>'");
        }
        addToIssues(issues, uc);
    }

    void parseSubTerm(TreeMap tmap) throws KSParsingErrorException {
        String subterm = readTaggedString("sub-kin-term", "parseSubTerm");
        ArrayList<Object> supportList = new ArrayList<Object>();
        ArrayList<Object> stringsCovered = new ArrayList<Object>();
        supportList.add(stringsCovered);
        readStringSet(stringsCovered, "pc-strings-covered", "parseSubTerm");
        current = scanner.readToken();
        if (!current.lexeme.equals("<dyads-covered>")) {
            error("parseSubTerm seeking tag '<dyads-covered>'");
        }
        ArrayList<Object> dyadsCovered = parseDyadAList();
        supportList.add(dyadsCovered);
        current = scanner.readToken();
        if (!current.lexeme.equals("</dyads-covered>")) {
            error("parseSubTerm seeking tag '</dyads-covered>'");
        }
        current = scanner.lookAhead();
        if (current.lexeme.equals("<type>")) {
            Integer typ = readTaggedInteger("type", "parseSubTerm");
            supportList.add(typ);
        }
        current = scanner.readToken();
        if (!current.lexeme.equals("</sub-term>")) {
            error("parseSubTerm seeking tag '</sub-term>'");
        }
        tmap.put(subterm, supportList);
        current = scanner.lookAhead();
        if (current.lexeme.equals("<sub-term>")) {
            scanner.readToken();  // Repeat loop assumes token already consumed
        }
    }

    String[] readAttributes(String tag, String[] attributes, String caller)
            throws KSParsingErrorException {
        String[] results = new String[attributes.length];
        current = scanner.readToken(); //  consume next, which must match tag
        if (current.lexeme.indexOf("<" + tag) != 0) {
            error(caller + " seeking a tag " + "<" + tag + " ...");
        }
        int attrStart, quote1, quote2, ndx = 0;
        for (String attr : attributes) {
            attrStart = current.lexeme.indexOf(attr + "=");
            quote1 = current.lexeme.indexOf("\"", attrStart);
            quote2 = current.lexeme.indexOf("\"", quote1 +1);
            results[ndx++] = current.lexeme.substring(quote1 +1, quote2);
        }
        return results;
    }


    void doUDPSerialSwaps() throws KSParsingErrorException {
        //  Iterate thru all UDP templates in the context and all UDPs on
        //  Individuals. Swap the indSerial tokens (e.g. '#2') for pointers
        //  to the actual Individual objects in the IndividualCensus (e.g. the
        //  person with serial #2).
        //  NOTE: the UDP.toSILKString() method writes tokens (e.g. '#34') for individuals
        Iterator udpIter = newCtxt.userDefinedProperties.values().iterator();
        while (udpIter.hasNext()) {
            UserDefinedProperty udp = (UserDefinedProperty) udpIter.next();
            if (udp.typ.equals("individual")) {
                if (udp.defaultValue != null) {
                    int defaultPersonNmbr = Integer.parseInt(((String) udp.defaultValue).substring(1));
                    udp.defaultValue = newCtxt.individualCensus.get(defaultPersonNmbr);
                }  //  end of swap token in default-value
                if (udp.validEntries != null && !udp.validEntries.isEmpty()) {
                    ArrayList<Object> newValidEntries = new ArrayList<Object>();
                    for (Object obj : udp.validEntries) {
                        String personStr = (String) obj;
                        int personNmbr = Integer.parseInt(personStr.substring(1));
                        newValidEntries.add(newCtxt.individualCensus.get(personNmbr));
                    }  //  end of loop thru valid entries
                    udp.validEntries = newValidEntries;
                }  //  end of if-valid-entries non-null
            }  //  end of this-UDP-holds-individuals
        }  //  end of loop thru the Context's UDP templates

        for (Object indObj : newCtxt.individualCensus) {
            Individual ind = (Individual) indObj;
            Iterator iter = ind.userDefinedProperties.values().iterator();
            while (iter.hasNext()) {
                UserDefinedProperty udp = (UserDefinedProperty) iter.next();
                if (udp.typ.equals("individual")) {
                    ArrayList<Object> newValue = new ArrayList<Object>();
                    for (Object indNmbr : udp.value) {
                        String indNmbrStr = (String) indNmbr;
                        if (!indNmbrStr.substring(0, 1).equals("#")) {
                            error("doUDPSerialSwaps encountered a UDP of typ 'individual' with a value not "
                                    + "beginning with '#'");
                        }
                        int indSerial = Integer.parseInt(indNmbrStr.substring(1));
                        newValue.add(newCtxt.individualCensus.get(indSerial));
                    }  //  end of loop through value list
                    udp.value = newValue;
                    if (udp.defaultValue != null) {
                        int defaultPersonNmbr = Integer.parseInt(((String) udp.defaultValue).substring(1));
                        udp.defaultValue = newCtxt.individualCensus.get(defaultPersonNmbr);
                    }  //  end of if-default-value-non-null
                    ArrayList<Object> newValidEntries = new ArrayList<Object>();
                    for (Object obj : udp.validEntries) {
                        String personStr = (String) obj;
                        int personNmbr = Integer.parseInt(personStr.substring(1));
                        newValidEntries.add(newCtxt.individualCensus.get(personNmbr));
                    }  //  end of loop thru valid entries
                    udp.validEntries = newValidEntries;
                }  //  end of udp-with-individuals
            }  //  end of loop thru UDPs
        }  //  end of loop thru people & UDPs
    }  //  end of method UDPSerialSwaps

    void doIndFamSerialSwaps() {
        //  STRATEGY: use indivTable and famTable as guides for inserting pointers to
        //  the actual birth family object, etc. into the Individuals and Families we
        //  created during the parse of the SILK file
        for (Object indObj : newCtxt.individualCensus) {
            Individual ind = (Individual) indObj;
            ArrayList<Integer> tempInd = indivTable.get(ind.serialNmbr);
            int bfamNmbr = tempInd.get(1);
            if (bfamNmbr > -1) {
                ind.birthFamily = (Family) newCtxt.familyCensus.get(bfamNmbr);
            }
            for (int m = 2; m < tempInd.size(); m++) {
                ind.marriages.add(newCtxt.familyCensus.get(tempInd.get(m)));
            }
        }  //  end of loop thru individual census
        for (Object famObj : newCtxt.familyCensus) {
            Family fam = (Family) famObj;
            ArrayList<Integer> tempFam = famTable.get(fam.serialNmbr);
            int ndx = tempFam.get(1);
            Individual spouse = (ndx == -1 ? null
                    : (Individual) newCtxt.individualCensus.get(ndx));
            fam.husband = spouse;
            ndx = tempFam.get(2);
            spouse = (ndx == -1 ? null
                    : (Individual) newCtxt.individualCensus.get(ndx));
            fam.wife = spouse;
            if (fam.husband != null) {
                fam.addSpouse((Person) fam.husband);
            }
            if (fam.wife != null) {
                fam.addSpouse((Person) fam.wife);
            }
            for (int k = 3; k < tempFam.size(); k++) {
                Individual child = newCtxt.individualCensus.get(tempFam.get(k));
                fam.children.add(child);
                fam.addSib((Person) child);
            }
        }  //  end of loop thru family census
    }  //  end of method doIndFamSerialSwaps

    void doDyadSwaps() throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException,
            KSInternalErrorException, KSConstraintInconsistency {
        //  STRATEGY: the lists tempDyadsDefinedRef, tempDyadsUndefinedRef, tempDyadsDefinedAddr, 
        //  and tempDyadsUndefinedAddr (when non-null) are filled with DyadTemp objects.
        //  After the entire file has been parsed, call the DyadTemp method postDyad. It will
        //  use the serialNmbrs in the DyadTemp objects to get the actual Individual or Family
        //  objects to be used in the real Dyads. It will post them to the DyadTMaps.
        if (tempDyadsDefinedRef != null && !tempDyadsDefinedRef.isEmpty()) {
            for (DyadTemp temp : tempDyadsDefinedRef) {
                temp.postDyad(newCtxt, newCtxt.domTheoryRef().dyadsDefined);
            }
        }
        if (tempDyadsUndefinedRef != null && !tempDyadsUndefinedRef.isEmpty()) {
            for (DyadTemp temp : tempDyadsUndefinedRef) {
                temp.postDyad(newCtxt, newCtxt.domTheoryRef().dyadsUndefined);
            }
        }
        if (tempDyadsDefinedAddr != null && !tempDyadsDefinedAddr.isEmpty()) {
            for (DyadTemp temp : tempDyadsDefinedAddr) {
                temp.postDyad(newCtxt, newCtxt.domTheoryAdr().dyadsDefined);
            }
        }
        if (tempDyadsUndefinedAddr != null && !tempDyadsUndefinedAddr.isEmpty()) {
            for (DyadTemp temp : tempDyadsUndefinedAddr) {
                temp.postDyad(newCtxt, newCtxt.domTheoryAdr().dyadsUndefined);
            }
        }
    }  //  end of method doDyadSwaps

    void doStarSwaps() {
        //  The starTable is a TMap: Integer -> ArrayList<Integer>.  
        //  Each key field (Integer) is the serial# of an Individual.
        //  The list of Integers is a list of serial#s of the persons who
        //  should be in the starLinks list for that person. Iterate thru
        //  the starTable, swapping individual-pointers for integers.
        Iterator iter = starTable.entrySet().iterator();
        while (iter.hasNext()) {
            Map.Entry entry = (Map.Entry) iter.next();
            Integer egoNmbr = (Integer) entry.getKey();
            ArrayList<Integer> starLinx = (ArrayList<Integer>) entry.getValue();
            Individual link, ego = (Individual) newCtxt.individualCensus.get(egoNmbr);
            ego.starLinks = new ArrayList<Object>(starLinx.size());
            for (Integer linkNmbr : starLinx) {
                link = (Individual) newCtxt.individualCensus.get(linkNmbr);
                ego.starLinks.add(link);
            }  //  end of loop thru star links for this person
        }  //  end of loop thru starTable
    }  //  end of method doStarSwaps
}  //  end of class SILKFilePArser

