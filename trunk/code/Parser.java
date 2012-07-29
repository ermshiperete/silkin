
import java.io.*;
import java.util.*;

/** This Parser is an adaptation of the Mock-a-Java parser built for Nobo 	
Komogata's Compiler class (CIS 341) in Spring 2000 at Penn.  It is NOT an elegant 
or professional-quality parser -- just a utility to allow Domain Theories written in 
Horn Clauses to be read into Kinship programs and converted to the proper Java objects 
for reasoning there.  The Context-Free Grammar defining a Domain Theory is documented
in {@link DomainTheoryGrammar}.
//  
When constructed with a {@link Tokenizer}, a Parser will construct a Kinship domain theory
from the tokens found in the <code>Tokenizer's</code> input file.

@author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
 */
public class Parser {

    public static String errorFound = "";
    public static ArrayList<Object> cachedStdMacros;
    TokenScanned current;
    Linus lineMan, macroLineMan;
    Tokenizer scanner, macroScanner;
    String filePath;
    DomainTheory dTheory;

    /** Construct a Parser from a DomainTheory file.

    @param	tok	a <code>Tokenizer</code> which parses tokens from an input file on demand.
     */
    public Parser(Tokenizer tok) {
        scanner = tok;
        lineMan = scanner.lineServer;
        this.filePath = tok.filePath;
    }

    /** Construct a Parserfrom a DomainTheory file and a Standard_Macros file.

    @param	dtTokens	a <code>Tokenizer</code> which parses tokens from a DomainTheory file on demand.
    @param	macroTokens	a <code>Tokenizer</code> which parses tokens from a Macro file on demand.
     */
    public Parser(Tokenizer dtTokens, Tokenizer macroTokens) {
        scanner = dtTokens;
        lineMan = scanner.lineServer;
        this.filePath = dtTokens.filePath;
        macroScanner = macroTokens;
        macroLineMan = macroScanner.lineServer;
    }

    /** Return the category of the predicate <code>symbol</code>.

    @param	symbol	a String which has been identified as a predicate symbol in a Horn Clause.

    @return		either {@link PrimitiveCategory} (a built-in predicate the Kinship system understands)
    or {@link CulturalCategory} (a kinship term in the language of the target culture).
     */
    public static PredCategory determinePrimitive(String symbol, DomainTheory dt) {
        // Identify the 19 Primitive Predicates as special
        // Also consider userDefinedProperties and Math predicates as primitive predicates
        if ((symbol.equals("father")) || (symbol.equals("mother")) || (symbol.equals("son"))
                || (symbol.equals("daughter")) || (symbol.equals("husband")) || (symbol.equals("wife"))
                || (symbol.equals("male")) || (symbol.equals("female")) || (symbol.equals("elder"))
                || (symbol.equals("younger")) || (symbol.equals("dead")) || (symbol.equals("divorced"))
                || (symbol.equals("not")) || (symbol.equals("equal")) || (symbol.equals("parent"))
                || (symbol.equals("child")) || (symbol.equals("spouse"))
                || (symbol.equals("allowCreation")) || (symbol.equals("gender"))
                || (dt != null && dt.userDefinedProperties != null
                    && dt.userDefinedProperties.containsKey(symbol))) {
            return new PrimitiveCategory();
        } //  Treat the Math predicates as a special kind of Primitive
        else if ((symbol.equals("lessThan")) || (symbol.equals("greaterThan"))
                || (symbol.equals("lessOrEql")) || (symbol.equals("greaterOrEql"))
                || (symbol.equals("contains"))) {
            return new MathCategory();
        } else {
            return new CulturalCategory();
        }
    }  // end of method determinePrimitive

    /** Assemble information about a parsing error encountered, then throw a {@link KSParsingErrorException}.

    @param	msgOut	a String describing the exact error found.

    @throws		a <code>KSParsingErrorException</code>.
     */
    public void error(String msgOut) throws KSParsingErrorException {
        msgOut += "\nCurrent = " + current.token + ": " + current.lexeme;
        msgOut += "\nOn Line # " + current.lineNum + "  Character Position: " + current.charPos
                + " of " + filePath;
        if (Parser.errorFound.length() < 10) {
            msgOut += "\n" + lineMan.lineImage;
        }
        throw new KSParsingErrorException(msgOut);
    }  // end of error method

    /**     Begin the parse of a Domain Theory.
    //
    DomainTheory -> LanguageName, HeaderOpts, StandardMacros, Theory.

    @throws 	<code>KSParsingErrorException</code>
     */
    public DomainTheory parseDomainTheory() throws KSParsingErrorException, KSConstraintInconsistency {
        String languageName = parseLanguageName();
        try {
            dTheory = new DomainTheory(languageName);
        } catch (ExceptionInInitializerError e) {
            System.out.println("Cause is " + e.getCause());
        }
        dTheory.filePath = filePath;
        parseHeaderOpts();
        if (dTheory.addressTerms) {
            int start = languageName.length() - 5;
            if (!languageName.substring(start).equals("(Adr)")) {
                throw new KSParsingErrorException("Language Name '" + languageName
                        + "' violates convention for Terms of Address.\n"
                        + "Should be <langName>(Adr)");
            }
        }  //  end of validity check on languageName
        parseStandardMacros();
        if (current.token.equals("$")) {
            return dTheory;  // There were no definitions
        }
        parseTheory();
        dTheory.validateSynonymsAndUmbrellas();
        return dTheory;
    }  // end of method parseDomainTheory

    /*      LanguageName -> leftParen, "languageName", comma, string, rightParen.
    First: [leftParen]    Follow: [leftParen, symbol]
     */
    private String parseLanguageName() throws KSParsingErrorException {
        String name;
        current = scanner.lookAhead();
        if (current.token.equals("leftParen")) {
            scanner.readToken();  // consume the leftParen
            current = scanner.readToken();  // read next, which must be the string "languageName"
            if (!current.lexeme.equals("languageName")) {
                error("parseLanguageName seeking the string 'languageName'. ");
            }
            current = scanner.readToken();  // read next, which must be a comma
            if (!current.token.equals("comma")) {
                error("parseLanguageName seeking a comma. ");
            }
            current = scanner.readToken();  // read next, which must be a string
            if (!current.token.equals("string")) {
                error("parseLanguageName seeking a string. ");
            }
            name = current.lexeme;
            int where = name.indexOf("(Adr)");  //  where = end of langName without '(Adr)'
            if (where == -1) {
                where = name.length();
            }
            if (name.substring(0, where).indexOf("(") > 0 || name.substring(0, where).indexOf(")") > 0) {
                error("The language name '" + name + "' contains a parenthesis -- Prohibited Character.\n"
                        + "Replace with angle-bracket or square-bracket.");
            }
            current = scanner.readToken();  // read next, which must be a rightParen.
            if (!current.token.equals("rightParen")) {
                error("parseLanguageName seeking a rightParen. ");
            }
            return name;
        } // end of if = leftParen
        else {
            error("First non-comment line of file MUST contain '(languageName, name)'.");
        }
        return "ERROR";
    }  // end of method parseLanguageName()

    /*  HeaderOpts ->  leftParen, HdrOpts2, HeaderOpts.
    |  \empty.
    First: [leftParen]   Follow: [symbol]
     */
    private void parseHeaderOpts() throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("leftParen")) {
            scanner.readToken();  // consume the leftParen
            parseHdrOpts2();
            parseHeaderOpts();
            return;
        }  // end of if = leftParen
        if (current.token.equals("symbol")) {
            return;
        }
        if (current.token.equals("$")) {
            return;
        }
        error("parseHeaderOpts seeking leftParen or symbol.");
        return;
    }  // end of method parseHeaderOpts

    /*
    HdrOpts2 ->  "author", comma, string, rightParen.
    |  "date", comma, string, rightParen.
    |  "partial", comma, Boolean, rightParen.
    |  "address", comma, Boolean, rightParen.
    |  "polygamyOK", comma, Boolean, rightParen.
    |  "citation", comma, string, rightParen.
    |  "non_term", comma, FlagOrKinTerm, OtherFlagOrKinTerm, rightParen.
    |  "recursiveLevels", comma, integer, rightParen.
    |  "userDefinedProperties", UDProps, rightParen.
    |  "synonyms", comma, TermPairs, rightParen.
    |  "umbrellas", comma, TermListPairs, rightParen.
    |  "overlaps", comma, TermListPairs, rightParen.
    First: ["author", "date", "partial", "polygamyOK", "citation", "non_term",
    "recursiveLevels", "userDefinedProperties", "umbrellas", "synonyms", "overlaps"]
    Follow: [leftParen, symbol]
     */
    private void parseHdrOpts2() throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.lexeme.equals("author")) {
            scanner.readToken();  // consume the string 'author'
            current = scanner.readToken();  // read next, which must be a comma
            if (!current.token.equals("comma")) {
                error("parseHdrOpts2 seeking a comma.");
            }
            current = scanner.readToken();  // read next, which must be a string
            if (!current.token.equals("string")) {
                error("parseHdrOpts2 seeking a string.");
            } else {
                dTheory.author = current.lexeme;
            }
            current = scanner.readToken();  // read next, which must be a rightParen
            if (!current.token.equals("rightParen")) {
                error("parseHdrOpts2 seeking a rightParen.");
            }
            return;
        }  // end of if = author
        if (current.lexeme.equals("date")) {
            scanner.readToken();  // consume the string 'date'
            current = scanner.readToken();  // read next, which must be a comma
            if (!current.token.equals("comma")) {
                error("parseHdrOpts2 seeking a comma.");
            }
            current = scanner.readToken();  // read next, which must be a string
            if (!current.token.equals("string")) {
                error("parseHdrOpts2 seeking a string.");
            } else {
                Date cDate = null;
                try {
                    cDate = UDate.parse(current.lexeme);
                }catch(KSDateParseException dpe) {
                    error("While parsing createion date: " + dpe);
                }
                dTheory.createDate = UDate.formatAsXSD(cDate);
            }
            current = scanner.readToken();  // read next, which must be a rightParen
            if (!current.token.equals("rightParen")) {
                error("parseHdrOpts2 seeking a rightParen.");
            }
            return;
        }  // end of if = date
        if (current.lexeme.equals("partial")) {
            scanner.readToken();  // consume the string 'partial'
            current = scanner.readToken();  // read next, which must be a comma
            if (!current.token.equals("comma")) {
                error("parseHdrOpts2 seeking a comma.");
            }
            dTheory.partial = parseBoolean();
            current = scanner.readToken();  // read next, which must be a rightParen
            if (!current.token.equals("rightParen")) {
                error("parseHdrOpts2 seeking a rightParen.");
            }
            return;
        }  // end of if = partial
        if (current.lexeme.equals("address")) {
            scanner.readToken();  // consume the string 'address'
            current = scanner.readToken();  // read next, which must be a comma
            if (!current.token.equals("comma")) {
                error("parseHdrOpts2 seeking a comma.");
            }
            dTheory.addressTerms = parseBoolean();
            current = scanner.readToken();  // read next, which must be a rightParen
            if (!current.token.equals("rightParen")) {
                error("parseHdrOpts2 seeking a rightParen.");
            }
            return;
        }  // end of if = partial
        if (current.lexeme.equals("polygamyOK")) {
            scanner.readToken();  // consume the string 'polygamyOK'
            current = scanner.readToken();  // read next, which must be a comma
            if (!current.token.equals("comma")) {
                error("parseHdrOpts2 seeking a comma.");
            }
            dTheory.polygamyOK = parseBoolean();
            current = scanner.readToken();  // read next, which must be a rightParen
            if (!current.token.equals("rightParen")) {
                error("parseHdrOpts2 seeking a rightParen.");
            }
            return;
        }  // end of if = polygamyOK
        if (current.lexeme.equals("citation")) {
            scanner.readToken();  // consume the string 'citation'
            current = scanner.readToken();  // read next, which must be a comma
            if (!current.token.equals("comma")) {
                error("parseHdrOpts2 seeking a comma.");
            }
            current = scanner.readToken();  // read next, which must be a string
            if (!current.token.equals("string")) {
                error("parseHdrOpts2 seeking a string.");
            } else {
                dTheory.citation = current.lexeme;
            }
            current = scanner.readToken();  // read next, which must be a rightParen
            if (!current.token.equals("rightParen")) {
                error("parseHdrOpts2 seeking a rightParen.");
            }
            return;
        }  // end of if = citation
        if (current.lexeme.equals("non_term")) {
            scanner.readToken();  // consume the string 'non_term'
            current = scanner.readToken();  // read next, which must be a comma
            if (!current.token.equals("comma")) {
                error("parseHdrOpts2 seeking a comma.");
            }
            parseFlagOrKinTerm();
            parseOtherFlagOrKinTerm();
            current = scanner.readToken();  // read next, which must be a rightParen
            if (!current.token.equals("rightParen")) {
                error("parseHdrOpts2 seeking a rightParen.");
            }
            return;
        }  // end of if = non_term
        if (current.lexeme.equals("recursiveLevels")) {
            scanner.readToken();  // consume the string 'recursiveLevels'
            current = scanner.readToken();  // read next, which must be a comma
            if (!current.token.equals("comma")) {
                error("parseHdrOpts2 seeking a comma.");
            }
            current = scanner.readToken();  // read next, which must be an integer
            if (!current.token.equals("integer")) {
                error("parseHdrOpts2 seeking an integer.");
            }
            dTheory.levelsOfRecursion = current.intVal;
            current = scanner.readToken();  // read next, which must be a rightParen
            if (!current.token.equals("rightParen")) {
                error("parseHdrOpts2 seeking a rightParen.");
            }
            return;
        }  // end of if = recursiveLevels
        if (current.lexeme.equals("userDefinedProperties")) {
            scanner.readToken();  // consume the string 'userDefinedProperties'
            dTheory.userDefinedProperties = new TreeMap();
            parseUDProps();
            current = scanner.readToken();  // read next, which must be a rightParen
            if (!current.token.equals("rightParen")) {
                error("parseHdrOpts2 seeking a rightParen.");
            }
            return;
        }  // end of if = userDefinedProperties
        if (current.lexeme.equals("synonyms")) {
            scanner.readToken();  // consume the string 'synonyms'
            if (dTheory.synonyms != null) {
                error("Duplicate synonym declarations.");
            }
            dTheory.synonyms = new TreeMap();
            current = scanner.readToken();  // read next, which must be a comma
            if (!current.token.equals("comma")) {
                error("parseHdrOpts2 seeking a comma.");
            }
            parseTermPairs(dTheory.synonyms, false);
            current = scanner.readToken();  // read next, which must be a rightParen
            if (!current.token.equals("rightParen")) {
                error("parseHdrOpts2 seeking a rightParen.");
            }
            return;
        }  // end of if = synonyms
        if (current.lexeme.equals("umbrellas")) {
            scanner.readToken();  // consume the string 'umbrellas'
            if (dTheory.umbrellas != null) {
                error("Duplicate umbrella declarations.");
            }
            dTheory.umbrellas = new TreeMap();
            current = scanner.readToken();  // read next, which must be a comma
            if (!current.token.equals("comma")) {
                error("parseHdrOpts2 seeking a comma.");
            }
            parseTermListPairs(dTheory.umbrellas, false);
            current = scanner.readToken();  // read next, which must be a rightParen
            if (!current.token.equals("rightParen")) {
                error("parseHdrOpts2 seeking a rightParen.");
            }
            return;
        }  // end of if = userDefinedProperties
        if (current.lexeme.equals("overlaps")) {
            scanner.readToken();  // consume the string 'overlaps'
            if (dTheory.overlaps != null) {
                error("Duplicate overlapping term declarations.");
            }
            dTheory.overlaps = new TreeMap();
            current = scanner.readToken();  // read next, which must be a comma
            if (!current.token.equals("comma")) {
                error("parseHdrOpts2 seeking a comma.");
            }
            parseTermListPairs(dTheory.overlaps, true);
            current = scanner.readToken();  // read next, which must be a rightParen
            if (!current.token.equals("rightParen")) {
                error("parseHdrOpts2 seeking a rightParen.");
            }
            return;
        }  // end of if = synonyms
        error("parseHdrOpts2 seeking 'author' 'date' 'polygamyOK' 'citation' 'non_term' 'recursiveLevels' "
                + "'userDefinedProperties' 'synonyms' 'umbrellas' 'overlaps' or 'partial'.");
    }  // end of method parseHdrOpts

    /* Boolean ->  "true".
    |  "false".
    First: ["true", "false"]	 Follow: [comma, rightParen]
     */
    private boolean parseBoolean() throws KSParsingErrorException {
        current = scanner.readToken();  // consume next, which must be a symbol = "true" or "false"
        if (!current.token.equals("symbol")) {
            error("parseBoolean seeking symbol ('true' or 'false').");
        }
        if (current.lexeme.equals("true")) {
            return true;
        }
        if (current.lexeme.equals("false")) {
            return false;
        }
        error("parseBoolean seeking symbol ('true' or 'false').");
        return false;
    }  // end of method parseBoolean

    /*U_D_Props -> comma, leftParen, starName, comma, "type", comma, Type, comma, "single_value", comma, Boolean, UDP_Opts, rightParen, U_D_Props.
    |  \empty.
    First: [comma]	 Follow: [rightParen]
     */
    private void parseUDProps() throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("comma")) {
            scanner.readToken();  //  consume the comma
            current = scanner.readToken();  // read next, which must be a leftParen
            if (!current.token.equals("leftParen")) {
                error("parseUDProps seeking a leftParen.");
            }
            current = scanner.readToken();  // read next, which must be a starName
            if (!current.token.equals("starName")) {
                error("parseUDProps seeking a starName.");
            }
            String starNam = current.lexeme;  //  this will be the particular *-name user has chosen
            current = scanner.readToken();  // read next, which must be a comma
            if (!current.token.equals("comma")) {
                error("parseUDProps seeking a comma.");
            }
            UserDefinedProperty newProp = new UserDefinedProperty(starNam);
            dTheory.userDefinedProperties.put(starNam, newProp);
            current = scanner.readToken();  // read next, which must be the word "type"
            if ((!current.token.equals("symbol")) || (current.lexeme == null) || (!current.lexeme.equals("type"))) {
                error("parseUDProps seeking keyword 'type'.");
            }
            current = scanner.readToken();  // read next, which must be a comma
            if (!current.token.equals("comma")) {
                error("parseUDProps seeking a comma.");
            }
            parseType(newProp);
            current = scanner.readToken();  // read next, which must be a comma
            if (!current.token.equals("comma")) {
                error("parseUDProps seeking a comma.");
            }
            current = scanner.readToken();  // read next, which must be the word "single_value"
            if ((!current.token.equals("symbol")) || (current.lexeme == null) || (!current.lexeme.equals("single_value"))) {
                error("parseUDProps seeking keyword 'single_value'.");
            }
            current = scanner.readToken();  // read next, which must be a comma
            if (!current.token.equals("comma")) {
                error("parseUDProps seeking a comma.");
            }
            newProp.singleValue = parseBoolean();
            parseUDP_Opts(newProp);
            current = scanner.readToken();  // read next, which must be a rightParen
            if (!current.token.equals("rightParen")) {
                error("parseUDProps seeking a rightParen.");
            }
//	VALIDITY CHECKS
            if ((!newProp.singleValue) && (newProp.typ.equals("boolean"))) {
                error("UserDefinedProperty '" + starNam + "' is boolean with multiple values.  Not allowed.");
            }
            if ((newProp.minVal != null) && (newProp.maxVal != null)
                    && (newProp.maxVal.intValue() < newProp.minVal.intValue())) {
                error("UserDefinedProperty '" + starNam + "' has max value less than its min value.  Does not compute!");
            }
            if ((newProp.defaultValue != null) && (newProp.minVal != null)
                    && (((Number) newProp.minVal).intValue() > ((Number) newProp.defaultValue).intValue())) {
                error("UserDefinedProperty '" + starNam + "' has default value less than its min value.  Does not compute!");
            }
            if ((newProp.defaultValue != null) && (newProp.maxVal != null)
                    && (((Number) newProp.maxVal).intValue() < ((Number) newProp.defaultValue).intValue())) {
                error("UserDefinedProperty '" + starNam + "' has default value greater than its max value.  Does not compute!");
            }
            if ((newProp.validEntries != null) && (newProp.validEntries.size() > 0) && (newProp.maxVal != null)) {
                for (int i = 0; i < newProp.validEntries.size(); i++) {
                    if (((Number) newProp.maxVal).intValue() < ((Number) newProp.validEntries.get(i)).intValue()) {
                        error("UserDefinedProperty '" + starNam + "' has a 'permissible value' greater than its max value.  Does not compute!");
                    }
                }
            }
            if ((newProp.validEntries != null) && (newProp.validEntries.size() > 0) && (newProp.minVal != null)) {
                for (int i = 0; i < newProp.validEntries.size(); i++) {
                    if (((Number) newProp.minVal).intValue() > ((Number) newProp.validEntries.get(i)).intValue()) {
                        error("UserDefinedProperty '" + starNam + "' has a 'permissible value' less than its minimum value.  Does not compute!");
                    }
                }
            }
            parseUDProps();
            return;
        }  //  end of if = comma
        if (current.token.equals("rightParen")) {
            return;  //  we hit the end
        }
        error("parseUDProps seeking comma or rightParen.");
        return;
    }  //  end of method parseUDProps


    /*  Type ->  "integer".
    |   "float".
    |   "string".
    |   "boolean".
    |   "individual".
    |	 "Individual".
    |	 "person".
    |	 "Person".

    First: [<all-the-above>]	 Follow: [comma]
     */
    private void parseType(UserDefinedProperty prop) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume next, which must be a valid type
        if ((!(current.token.equals("symbol") || current.token.equals("var"))) || (current.lexeme == null)) {
            error("parseType seeking a valid data type.");
        }
        if ((current.lexeme.equalsIgnoreCase("integer"))) {
            prop.typ = "integer";
        } else if (current.lexeme.equals("float")) {
            prop.typ = "float";
        } else if (current.lexeme.equals("string")) {
            prop.typ = "string";
        } else if (current.lexeme.equals("boolean")) {
            prop.typ = "boolean";
        } else if ((current.lexeme.equalsIgnoreCase("individual")) || (current.lexeme.equalsIgnoreCase("person"))) {
            prop.typ = "individual";
        } else {
            error("parseType seeking a valid data type.");
        }
        return;
    }  //  end of method parseType

    /* UDP_Opts -> comma, RestrictOrDefault, UDP_Opts.
    |  \empty.
    First:  [comma]		Follow: [rightParen]
     */
    private void parseUDP_Opts(UserDefinedProperty prop) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("comma")) {  //  non-empty
            scanner.readToken();  //  consume the comma
            parseRestrictOrDefault(prop);
            parseUDP_Opts(prop);
        } else if (current.token.equals("rightParen")) {
            return;  //  empty
        } else {
            error("parseUDP_Opts seeking a comma or rightParen.");
        }
    }  //  end of method parseUDP_Opts


    /* RestrictOrDefault -> "restricted_to", comma, leftParen, Ints_Floats_Strings, rightParen.
    |  "default", comma, Int_Float_String.
    |  "max", comma, Int_Float.
    |  "min", comma, Int_Float.
    First: ["restricted_to", "default", "max", "min"]		Follow: [comma, rightParen]
     */
    private void parseRestrictOrDefault(UserDefinedProperty udp) throws KSParsingErrorException {
        current = scanner.readToken(); //  read next, which must be a keyword
        if ((!current.token.equals("symbol")) || (current.lexeme == null)) {
            error("parseRestrictOrDefault seeking keywords: 'default', 'max', min', or 'restricted_to'.");
        }

        if (current.lexeme.equals("restricted_to")) {  //  restricted values declaration
            if ((udp.typ.equals("boolean")) || (udp.typ.equals("individual"))) {
                error("UserDefinedProperty '" + udp.starName + "' is " + udp.typ + " but has restricted values.  Not allowed.");
            }
            current = scanner.readToken();  //  read next, which must be a comma
            if (!current.token.equals("comma")) {
                error("parseRestrictOrDefault seeking a comma.");
            }
            current = scanner.readToken();  //  read next, which must be a leftParen
            if (!current.token.equals("leftParen")) {
                error("parseRestrictOrDefault seeking a leftParen.");
            }
            udp.validEntries = parseInts_Floats_Strings(udp);
            current = scanner.readToken();  //  read next, which must be a rightParen
            if (!current.token.equals("rightParen")) {
                error("parseRestrictOrDefault seeking a rightParen.");
            }

        } else if (current.lexeme.equals("default")) {  //  default value declaration
            current = scanner.readToken();  //  read next, which must be a comma
            if (udp.typ.equals("individual")) {
                error("UserDefinedProperty '" + udp.starName + "' is " + udp.typ + ".  Default value not allowed.");
            }
            if (!current.token.equals("comma")) {
                error("parseRestrictOrDefault seeking a comma.");
            }
            udp.defaultValue = parseInt_Float_String();

        } else if (current.lexeme.equals("max")) {
            current = scanner.readToken();  //  read next, which must be a comma
            if ((udp.typ.equals("string")) || (udp.typ.equals("boolean")) || (udp.typ.equals("individual"))) {
                error("UserDefinedProperty '" + udp.starName + "' is " + udp.typ + ".  Max value not allowed.");
            }
            if (!current.token.equals("comma")) {
                error("parseRestrictOrDefault seeking a comma.");
            }
            udp.maxVal = parseInt_Float();
            if (!current.token.equals(udp.typ)) {
                error("UserDefinedProperty '" + udp.starName + "' has type = " + udp.typ + ", but Max Value is a " + current.token);
            }

        } else if (current.lexeme.equals("min")) {
            current = scanner.readToken();  //  read next, which must be a comma
            if ((udp.typ.equals("string")) || (udp.typ.equals("boolean")) || (udp.typ.equals("individual"))) {
                error("UserDefinedProperty '" + udp.starName + "' is " + udp.typ + ".  Min value not allowed.");
            }
            if (!current.token.equals("comma")) {
                error("parseRestrictOrDefault seeking a comma.");
            }
            udp.minVal = parseInt_Float();
            if (!current.token.equals(udp.typ)) {
                error("UserDefinedProperty '" + udp.starName + "' has type = " + udp.typ + ", but Max Value is a " + current.token);
            }

        } else {
            error("parseRestrictOrDefault seeking keywords: 'default', 'max', min', or 'restricted_to'.");
        }
    }  //  end of method parseRestrictOrDefault

    /* Int_Float -> integer.
    |  float.
    First:  [integer, float]	Follow: [comma, rightParen]
     */
    private Number parseInt_Float() throws KSParsingErrorException {
        current = scanner.readToken();  //  read next, must be int or float.
        if (current.token.equals("integer")) {
            return new Integer(current.intVal);
        }
        if (current.token.equals("float")) {
            return new Float(current.floatVal);
        }
        error("parseInt_Float seeking an integer or a float.");
        return null;
    }  //  end of method parseInt_Float


    /* Int_Float_String -> integer.
    |  float.
    |  string.
    First:  [integer, float, string]	Follow: [comma, rightParen]
     */
    private Object parseInt_Float_String() throws KSParsingErrorException {
        current = scanner.readToken();  //  read next, must be int, float, string
        if (current.token.equals("integer")) {
            return new Integer(current.intVal);
        }
        if (current.token.equals("float")) {
            return new Float(current.floatVal);
        }
        //  Accept symbols as strings -- folks will forget the quotes.
        if ((current.token.equals("string")) || (current.token.equals("symbol"))) {
            return current.lexeme;
        }
        error("parseInt_Float_String seeking an integer, float, or string.");
        return null;
    }  //  end of method parseInt_Float_String


    /* Ints_Floats_Strings -> Ints.
    |  Floats.
    |  Strings.
    First:  [integer, float, string]	Follow: [rightParen]
     */
    private ArrayList<Object> parseInts_Floats_Strings(UserDefinedProperty udp) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (!udp.typ.equals(current.token)) {
            error("UserDefinedProperty '" + udp.starName + "' has type = " + udp.typ + ", but 'legal values' has a " + current.token);
        }
        if (current.token.equals("integer")) {
            return parseInts();
        }
        if (current.token.equals("float")) {
            return parseFloats();
        }
        if (current.token.equals("string")) {
            return parseStrings();
        }
        error("parseInts_Floats_Strings seeking an integer, float, or string.");
        return null;
    }  //  end of method parseInts_Floats_Strings

    /*  Ints ->  integer, MoreInts.
    First: [integer]	 Follow: [rightParen]
     */
    private ArrayList<Object> parseInts() throws KSParsingErrorException {
        ArrayList<Object> list = new ArrayList<Object>();
        current = scanner.readToken();  // read next, which must be an integer
        if (!current.token.equals("integer")) {
            error("parseInts seeking an integer.");
        }
        list.add(new Integer(current.intVal));
        parseMoreInts(list);
        return list;
    } //  end of method parseInts


    /*  MoreInts ->  comma, integer, MoreInts.
    |   \empty
    First: [comma]	 Follow: [rightParen]
     */
    private void parseMoreInts(ArrayList<Object> list) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("comma")) {
            scanner.readToken();  //  consume the comma
            current = scanner.readToken();  //  read next, which must be an integer
            if (!current.token.equals("integer")) {
                error("parseMoreInts seeking an integer.");
            }
            list.add(new Integer(current.intVal));
            parseMoreInts(list);
            return;
        } else if (current.token.equals("rightParen")) {
            return;
        } else {
            error("parseMoreInts seeking a comma or a rightParen.");
        }
    } //  end of method parseMoreInts


    /*  Floats ->  float, MoreFloats.
    First: [float]	 Follow: [rightParen]
     */
    private ArrayList<Object> parseFloats() throws KSParsingErrorException {
        ArrayList<Object> list = new ArrayList<Object>();
        current = scanner.readToken();  // read next, which must be a float
        if (!current.token.equals("float")) {
            error("parseFloats seeking a float.");
        }
        list.add(new Float(current.floatVal));
        parseMoreFloats(list);
        return list;
    }  //  end of method parseFloats


    /*  MoreFloats ->  comma, float, MoreFloats.
    |   \empty.
    First: [comma]	 Follow: [rightParen]
     */
    private void parseMoreFloats(ArrayList<Object> list) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("comma")) {
            scanner.readToken();  //  consume the comma
            current = scanner.readToken();  //  read next, which must be a float
            if (!current.token.equals("float")) {
                error("parseMoreFloats seeking a float.");
            }
            list.add(new Float(current.floatVal));
            parseMoreFloats(list);
            return;
        } else if (current.token.equals("rightParen")) {
            return;
        } else {
            error("parseMoreFloats seeking a comma or a rightParen.");
        }
    } //  end of method parseMoreFloats


    /*  Strings ->  string, MoreStrings.
    First: [string]	 Follow: [rightParen]
     */
    private ArrayList<Object> parseStrings() throws KSParsingErrorException {
        ArrayList<Object> list = new ArrayList<Object>();
        current = scanner.readToken();  // read next, which must be a string
        if (!current.token.equals("string")) {
            error("parseStrings seeking a string.");
        }
        list.add(current.lexeme);
        parseMoreStrings(list);
        return list;
    }  //  end of method parseStrings

    /*  MoreStrings ->  comma, string, MoreStrings.
    |   \empty.
    First: [comma]	 Follow: [rightParen]
     */
    private void parseMoreStrings(ArrayList<Object> list) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("comma")) {
            scanner.readToken();  //  consume the comma
            current = scanner.readToken();  //  read next, which must be a string
            if (!current.token.equals("string")) {
                error("parseMoreStrings seeking a string.");
            }
            list.add(current.lexeme);
            parseMoreStrings(list);
            return;
        } else if (current.token.equals("rightParen")) {
            return;
        } else {
            error("parseMoreStrings seeking a comma or a rightParen.");
        }
    } //  end of method parseMoreStrings


    public DomainTheory parseMacrosOnly() throws KSParsingErrorException {
        dTheory = new DomainTheory();
        current = scanner.lookAhead();
        KinTermDef ktd = parseKinTermDef();
        parseSignatureString(ktd);
        parseExpansion(ktd);
        for (int i = 0; i < ktd.expandedDefs.size(); i++) { //  number the expanded defintions
            ((ClauseBody) ktd.expandedDefs.get(i)).seqNmbr = i;
        }
        parseOtherDefs();
        return dTheory;
    }


// StandardMacros -> KinTermDef, SignatureString, Expansion, OtherDefs.
//				  |	\empty.
    private void parseStandardMacros() throws KSParsingErrorException {
        if (macroScanner == null) {
            return;  //  No Macros were provided
        }
        if (cachedStdMacros != null) {  //  no need to parse again
            for (int i = 0; i < cachedStdMacros.size(); i++) {
                KinTermDef macro = new KinTermDef((KinTermDef) cachedStdMacros.get(i));
                macro.domTh = dTheory;
                dTheory.theory.put(macro.kinTerm, macro);
                dTheory.nonTerms.add(macro.kinTerm);
            }
            return;
        }
        Tokenizer holdScan = scanner;	//  temporarily store the main Tokenizer & Linus
        Linus holdThatLine = lineMan;   //  I couldn't resist!
        TokenScanned priorCurrent = current;
        scanner = macroScanner;			//  Substitute the Macro Tokenizer & Linus
        lineMan = macroLineMan;
        current = scanner.lookAhead();
        KinTermDef ktd = parseKinTermDef();
        parseSignatureString(ktd);
        parseExpansion(ktd);
        for (int i = 0; i < ktd.expandedDefs.size(); i++) //  number the expanded defintions
        {
            ((ClauseBody) ktd.expandedDefs.get(i)).seqNmbr = i;
        }
        parseOtherDefs();
        //  All KTDs in the Macro file have been parsed & added; now put them in nonTerms List.
        Iterator ktdIter = dTheory.theory.values().iterator();
        cachedStdMacros = new ArrayList<Object>();
        while (ktdIter.hasNext()) {
            KinTermDef tempKTD = (KinTermDef) ktdIter.next();
            dTheory.nonTerms.add(tempKTD.kinTerm);
            cachedStdMacros.add(tempKTD);
        }
        scanner = holdScan;			//  Put back original Tokenizer & Linus
        lineMan = holdThatLine;
        current = priorCurrent;
        return;
    }  // end of method parseStandardMacros

    public void parseStandardMacros(DomainTheory dt) throws KSParsingErrorException {
        //  NOTE:   This version of parseStandardMacros is meant to be called with a DomainTheory
        //	    that needs just the Std Macros added to it's theory.
        if (cachedStdMacros != null) {  //  no need to parse again
            for (int i = 0; i < cachedStdMacros.size(); i++) {
                KinTermDef macro = new KinTermDef((KinTermDef) cachedStdMacros.get(i));
                macro.domTh = dt;
                dt.theory.put(macro.kinTerm, macro);
                dt.nonTerms.add(macro.kinTerm);
            }
            return;
        }
        dTheory = dt;
        current = scanner.lookAhead();
        KinTermDef ktd = parseKinTermDef();
        parseSignatureString(ktd);
        parseExpansion(ktd);
        for (int i = 0; i < ktd.expandedDefs.size(); i++) //  number the expanded defintions
        {
            ((ClauseBody) ktd.expandedDefs.get(i)).seqNmbr = i;
        }
        parseOtherDefs();
        //  All KTDs in the Macro file have been parsed & added; now put them in nonTerms List.
        Iterator ktdIter = dTheory.theory.values().iterator();
        cachedStdMacros = new ArrayList<Object>();
        while (ktdIter.hasNext()) {
            KinTermDef tempKTD = (KinTermDef) ktdIter.next();
            dTheory.nonTerms.add(tempKTD.kinTerm);
            cachedStdMacros.add(tempKTD);
        }
        return;
    }  // end of method parseStandardMacros

//  TermPairs -> TermPair, OtherTermPairs.
// 	 First: [leftParen]	 Follow: [rightParen]
    private void parseTermPairs(TreeMap tMap, boolean dblPost) throws KSParsingErrorException {
        parseTermPair(tMap, dblPost);
        parseOtherTermPairs(tMap, dblPost);
    }  //  end of method parseTermPairs

//  TermPair -> leftParen, symbol, comma, symbol, rightParen.
// 	 First: [leftParen]	 Follow: [comma, rightParen]
    private void parseTermPair(TreeMap tMap, boolean dblPost) throws KSParsingErrorException {
        current = scanner.readToken();  // consume next, which must be a leftParen
        if (!current.token.equals("leftParen")) {
            error("parseTermPair seeking a leftParen");
        }
        current = scanner.readToken();  // consume next, which must be a symbol
        if (!current.token.equals("symbol")) {
            error("parseTermPair seeking a symbol");
        }
        String term1 = current.lexeme;
        current = scanner.readToken();  // consume next, which must be a comma
        if (!current.token.equals("comma")) {
            error("parseTermPair seeking a comma");
        }
        current = scanner.readToken();  // consume next, which must be a symbol
        if (!current.token.equals("symbol")) {
            error("parseTermPair seeking a symbol");
        }
        String term2 = current.lexeme;
        current = scanner.readToken();  // consume next, which must be a rightParen
        if (!current.token.equals("rightParen")) {
            error("parseTermPair seeking a rightParen");
        }
        //  all elements of the term pair are now validated.  Post.
        if (dblPost) {  //  Overlaps are double-posted in a different structure
            if (tMap.get(term1) == null) {
                tMap.put(term1, new ArrayList<Object>());
            }
            ArrayList<Object> oLapList = (ArrayList<Object>) tMap.get(term1);
            oLapList.add(term2);
            if (tMap.get(term2) == null) {
                tMap.put(term2, new ArrayList<Object>());
            }
            oLapList = (ArrayList<Object>) tMap.get(term2);
            oLapList.add(term1);
        } else {
            tMap.put(term2, term1);
        }
    }  //  end of method parseTermPairs

//  OtherTermPairs -> comma, TermPair, OtherTermPairs.
//				       |  \empty.
// 	 First: [comma]	 Follow: [rightParen]
    private void parseOtherTermPairs(TreeMap tMap, boolean dblPost) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if ((!current.token.equals("comma"))
                && (!current.token.equals("rightParen"))) {
            error("parseOtherTermPairs seeking a comma or rightParen");
        }
        if (current.token.equals("rightParen")) {
            return;
        }
        scanner.readToken();  //  consume the comma
        parseTermPair(tMap, dblPost);
        parseOtherTermPairs(tMap, dblPost);
    }  //  end of method parseOtherTermPairs

//  TermListPairs -> TermListPair, OtherTermListPairs.
// 	 First: [leftParen]	 Follow: [rightParen]
    private void parseTermListPairs(TreeMap tMap, boolean dblPost) throws KSParsingErrorException {
        parseTermListPair(tMap, dblPost);
        parseOtherTermListPairs(tMap, dblPost);
    }  //  end of method parseTermListPairs

//  OtherTermListPairs -> comma, TermListPair, OtherTermListPairs.
//					   |  \empty.
// 	 First: [comma]	 Follow: [rightParen]
    private void parseOtherTermListPairs(TreeMap tMap, boolean dblPost) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if ((!current.token.equals("comma"))
                && (!current.token.equals("rightParen"))) {
            error("parseOtherTermListPairs seeking a comma or rightParen");
        }
        if (current.token.equals("rightParen")) {
            return;
        }
        scanner.readToken();  //  consume the comma
        parseTermListPair(tMap, dblPost);
        parseOtherTermListPairs(tMap, dblPost);
    }  //  end of method parseOtherTermListPairs

//  TermListPair -> leftParen, symbol, comma, TermList, rightParen.
// 	 First: [leftParen]	 Follow: [rightParen]
    private void parseTermListPair(TreeMap tMap, boolean dblPost) throws KSParsingErrorException {
        current = scanner.readToken();  // consume next, which must be a leftParen
        if (!current.token.equals("leftParen")) {
            error("parseTermListPair seeking a leftParen");
        }
        current = scanner.readToken();  // consume next, which must be a symbol
        if (!current.token.equals("symbol")) {
            error("parseTermListPair seeking a symbol");
        }
        String baseTerm = current.lexeme;
        current = scanner.readToken();  // consume next, which must be a comma
        if (!current.token.equals("comma")) {
            error("parseTermListPair seeking a comma");
        }
        ArrayList<Object> termList = parseTermList();
        current = scanner.readToken();  // consume next, which must be a rightParen
        if (!current.token.equals("rightParen")) {
            error("parseTermListPair seeking a rightParen");
        }
        //  all elements are validated.  Post to tMap.
        if (dblPost) {  //  overlaps require double-posting; umbrellas do not
            if (tMap.get(baseTerm) == null) {
                tMap.put(baseTerm, new ArrayList<Object>());
            }
            ArrayList<Object> baseList = (ArrayList<Object>) tMap.get(baseTerm);
            for (int i = 0; i < termList.size(); i++) {
                String oLapTerm = (String) termList.get(i);
                if (tMap.get(oLapTerm) == null) {
                    tMap.put(oLapTerm, new ArrayList<Object>());
                }
                ArrayList<Object> oLapTermList = (ArrayList<Object>) tMap.get(oLapTerm);
                if (!baseList.contains(oLapTerm)) {
                    baseList.add(oLapTerm);
                }
                if (!oLapTermList.contains(baseTerm)) {
                    oLapTermList.add(baseTerm);
                }
            }  //  end of loop thru all overlapping terms of baseTerm
        } else {
            tMap.put(baseTerm, termList);
        }
    }  //  end of method parseTermListPair

//  TermList -> leftParen, symbol, MoreTerms, rightParen.
// 	 First: [leftParen]	 Follow: [rightParen]
    private ArrayList<Object> parseTermList() throws KSParsingErrorException {
        current = scanner.readToken();  // consume next, which must be a leftParen
        if (!current.token.equals("leftParen")) {
            error("parseTermList seeking a leftParen");
        }
        current = scanner.readToken();  // consume next, which must be a symbol
        if (!current.token.equals("symbol")) {
            error("parseTermList seeking a symbol");
        }
        ArrayList<Object> termList = new ArrayList<Object>();
        termList.add(current.lexeme);
        current = scanner.lookAhead();
        if ((!current.token.equals("comma")) && (!current.token.equals("rightParen"))) {
            error("parseTermList seeking a comma or rightParen");
        }
        if (current.token.equals("comma")) {
            termList.addAll(parseMoreTerms());
        }
        current = scanner.readToken();  // consume next, which must be a rightParen
        if (!current.token.equals("rightParen")) {
            error("parseTermList seeking a rightParen");
        }
        return termList;
    }  //  end of method parseTermList

//  MoreTerms -> comma, symbol, MoreTerms.
//		|  \empty.
// 	 First: [comma]	 Follow: [rightParen]
    private ArrayList<Object> parseMoreTerms() throws KSParsingErrorException {
        current = scanner.readToken();  // consume next, which must be a comma
        if (!current.token.equals("comma")) {
            error("parseMoreTerms seeking a comma");
        }
        current = scanner.readToken();  // consume next, which must be a symbol
        if (!current.token.equals("symbol")) {
            error("parseMoreTerms seeking a symbol");
        }
        ArrayList<Object> termList = new ArrayList<Object>();
        termList.add(current.lexeme);
        current = scanner.lookAhead();
        if ((!current.token.equals("comma")) && (!current.token.equals("rightParen"))) {
            error("parseMoreTerms seeking a comma or rightParen");
        }
        if (current.token.equals("comma")) {
            termList.addAll(parseMoreTerms());
        }
        return termList;
    }  //  end of method parseMoreTerms

// Theory ->  KinTermDef, SignatureString, (optional) string,
//                Expansion, OtherDefs.
    private void parseTheory() throws KSParsingErrorException {
        KinTermDef ktd = parseKinTermDef();
        parseSignatureString(ktd);
        current = scanner.lookAhead();
        if (current.token.equals("string")) {
            scanner.readToken();  // consume the string
            ktd.comments = current.lexeme;
        }
        parseExpansion(ktd);
        for (int i = 0; i < ktd.expandedDefs.size(); i++) //  number the expanded defintions
        {
            ((ClauseBody) ktd.expandedDefs.get(i)).seqNmbr = i;
        }
        parseOtherDefs();
        return;
    }  // end of method parseTheory


    /* OtherDefs ->  KinTermDef, SignatureString, (optional) string,
                    Expansion, OtherDefs.
    |  \empty.
    First: [symbol]	 Follow: [$]
     */
    private void parseOtherDefs() throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("symbol")) {
            KinTermDef ktd = parseKinTermDef();
            parseSignatureString(ktd);
            current = scanner.lookAhead();
            if (current.token.equals("string")) {
                scanner.readToken();  // consume the string
                ktd.comments = current.lexeme;
            }
            parseExpansion(ktd);
            int siz = ktd.expandedDefs.size();
            for (int i = 0; i < siz; i++) //  number the expanded defintions
            {
                ((ClauseBody) ktd.expandedDefs.get(i)).seqNmbr = i;
            }
            parseOtherDefs();
            return;
        }  // end of if = symbol
        if (current.token.equals("$")) {
            return;
        }
        error("parseOtherDefs seeking symbol or end-of-file.");
        return;
    }  // end of method parseOtherDefs

// KinTermDef ->  ClauseHead, imply, ClauseBody, OtherBodies.
//   	 First: [symbol]	 Follow: [percent, leftCurly, $]
    private KinTermDef parseKinTermDef() throws KSParsingErrorException {
        Literal lit = parseClauseHead();
        KinTermDef ktd = new KinTermDef(lit);
        dTheory.addTerm(ktd);
        ktd.domTh = dTheory;
        current = scanner.readToken();  // consume next, which must be an 'imply'
        if (!current.token.equals("imply")) {
            error("parseKinTermDef seeking 'imply'.");
        }
        parseClauseBody(ktd);
        parseOtherBodies(ktd);
        int siz = ktd.definitions.size();
        for (int i = 0; i < siz; i++) {     //  number the original definitions
            ((ClauseBody) ktd.definitions.get(i)).seqNmbr = i;
            ((ClauseBody) ktd.definitions.get(i)).ktd = ktd;
        }  //  end of loop thru ClauseBodies
        return ktd;
    }  // end of method parseKinTermDef

//  ClauseHead ->  symbol, leftParen, Args, rightParen.
//   	 First: [symbol]	 Follow: [imply]
    private Literal parseClauseHead() throws KSParsingErrorException {
        Predicate pred;
        Literal lit;
        ArrayList<Object> args = new ArrayList<Object>();
        current = scanner.readToken();  // consume next, which must be a symbol.
        if (!current.token.equals("symbol")) {
            error("parseClauseHead seeking 'symbol'.");
        }
        pred = new Predicate(current.lexeme);
        pred.category = determinePrimitive(current.lexeme, dTheory);
        current = scanner.readToken();  // consume next, which must be a leftParen
        if (!current.token.equals("leftParen")) {
            error("parseClauseHead seeking 'leftParen'.");
        }
        lit = new Literal(pred);
        parseArgs(lit);
        current = scanner.readToken();  // consume next, which must be a rightParen
        if (!current.token.equals("rightParen")) {
            error("parseClauseHead seeking 'rightParen'.");
        }
        return lit;
    }  // end of method parseClauseHead

    /* Args ->  var, OtherArgs.
    |  symbol, OtherArgs.
    |  string, OtherArgs.
    |  integer, OtherArgs.
    |  float, OtherArgs.
    First: [var, symbol, string] 	 Follow: [rightParen]
     */
    private void parseArgs(Literal lit) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("var")) {
            scanner.readToken();  // consume the var
            lit.args.add(new Variable(current.lexeme));
            parseOtherArgs(lit);
            return;
        }  // end of if = var
        if (current.token.equals("symbol")) {
            scanner.readToken();  // consume the symbol
            Constant konstant = new Constant(current.lexeme);
            lit.args.add(konstant);
            if ((current.lexeme.equals("true")) || (current.lexeme.equals("false"))) {
                konstant.valueType = "boolean";
                konstant.addVal(new Boolean(current.lexeme));
            } else {
                konstant.valueType = "symbol";
                konstant.addVal(current.lexeme);
            }
            parseOtherArgs(lit);
            return;
        }  // end of if = symbol
        if (current.token.equals("string")) {
            scanner.readToken();  // consume the string
            ArgString astring = new ArgString(current.lexeme);
            lit.args.add(astring);
            astring.valueType = "string";
            parseOtherArgs(lit);
            return;
        }  // end of if = string
        if (current.token.equals("integer")) {
            scanner.readToken();  // consume the integer
            Integer newint = Integer.valueOf(current.lexeme);
            Constant konstant = new Constant(current.lexeme);
            lit.args.add(konstant);
            konstant.addVal(newint);
            konstant.valueType = "integer";
            parseOtherArgs(lit);
            return;
        }  // end of if = integer
        if (current.token.equals("float")) {
            scanner.readToken();  // consume the float
            Float newfloat = Float.valueOf(current.lexeme);
            Constant konstant = new Constant(current.lexeme);
            lit.args.add(konstant);
            konstant.addVal(newfloat);
            konstant.valueType = "float";
            parseOtherArgs(lit);
            return;
        }  // end of if = float
        error("parseArgs seeking var, symbol, integer, float, or string.");
        return;
    }  // end of method parseArgs

    /* OtherArgs ->  \empty.
    |  comma, Args.
    First: [comma]  	 Follow: [rightParen]
     */
    private void parseOtherArgs(Literal lit) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("comma")) {
            scanner.readToken();  // consume the comma
            parseArgs(lit);
            return;
        }  // end of if = comma
        if (current.token.equals("rightParen")) {
            return;
        }
        error("parseOtherArgs seeking comma or rightParen (end of arg list).");
        return;
    }  // end of method parseOtherArgs


    /* ClauseBody ->  LitOrFlag, OtherLitsOrFlags, period.
    First: [symbol, flag]  	 Follow: [bar, symbol, percent, $]
     */
    private void parseClauseBody(KinTermDef def) throws KSParsingErrorException {
        ClauseBody claws = new ClauseBody();
        parseLitOrFlag(claws);
        parseOtherLitsOrFlags(claws);
        current = scanner.readToken();  // consume next, which must be a period
        if (!current.token.equals("period")) {
            error("parseClauseBody seeking 'period'.");
        }
        errorFound = "None";
        if (claws.invalid()) {
            error(errorFound);
        }
        def.addClause(claws);
        return;
    }  // end of method parseClauseBody


    /* OtherLitsOrFlags ->  \empty.
    |  comma, LitOrFlag, OtherLitsOrFlags.
    First: [comma] 	 Follow: [period]
     */
    private void parseOtherLitsOrFlags(ClauseBody claws) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("comma")) {
            scanner.readToken();  // consume the comma
            parseLitOrFlag(claws);
            parseOtherLitsOrFlags(claws);
            return;
        }  // end of if = comma
        if (current.token.equals("period")) {
            return;
        }
        error("parseOtherLiterals seeking period or comma.");
        return;
    }  // end of method parseOtherLitsOrFlags


    /*  OtherBodies -> bar, ClauseBody, OtherBodies.
    | \empty.
    First: [bar]     Follow: [symbol, starName, percent, leftCurly, $]
     */
    private void parseOtherBodies(KinTermDef def) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("bar")) {
            scanner.readToken();  // consume the bar
            parseClauseBody(def);
            parseOtherBodies(def);
            return;
        }  // end of if = bar
        if (current.token.equals("symbol") || current.token.equals("$") || current.token.equals("leftCurly")
                || current.token.equals("percent") || current.token.equals("starName")) {
            return;
        }
        error("parseOtherBodies seeking bar, symbol, percent, starName, leftCurly, or $ (end of file).");
        return;
    }  // end of method parseOtherBodies

    /* FlagOrKinTerm -> flag.
    |  symbol.
    First: [flag, symbol]
    Follow: [comma, leftParen, symbol]
     */
    private void parseFlagOrKinTerm() throws KSParsingErrorException {
        current = scanner.readToken();
        if (current.token.equals("flag")) {
            dTheory.nonTermFlags.add(current.lexeme.substring(1, (current.lexeme.length() - 1)));
        } else if (current.token.equals("symbol")) {
            dTheory.nonTerms.add(current.lexeme);
        } else {
            error("parseFlagOrKinTerm seeking a flag or symbol (kinTerm).");
        }
        return;
    } //  end of method parseFlagOrKinTerm

    /* OtherFlagOrKinTerm -> comma, OtherFlagOrKinTerm2.
    |  \empty.
    First: [comma]
    Follow: [rightParen]
     */
    private void parseOtherFlagOrKinTerm() throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("comma")) {
            scanner.readToken();  //  consume the comma
            parseOtherFlagOrKinTerm2();
            return;
        } //  end of found-a-comma
        else if (current.token.equals("rightParen")) {
            return;
        } else {
            error("parseOtherFlagOrKinTerm seeking a comma or rightParen.");
        }
        return;
    }  //  end of method parseOtherFlagOrKinTerm


    /* OtherFlagOrKinTerm2 -> flag, OtherFlagOrKinTerm.
    |  symbol, OtherFlagOrKinTerm.
    First: [flag, symbol]
    Follow: [leftParen, symbol]
     */
    private void parseOtherFlagOrKinTerm2() throws KSParsingErrorException {
        current = scanner.readToken();
        if (current.token.equals("flag")) {
            dTheory.nonTermFlags.add(current.lexeme.substring(1, (current.lexeme.length() - 1)));
        } else if (current.token.equals("symbol")) {
            dTheory.nonTerms.add(current.lexeme);
        } else {
            error("parseFlagOrKinTerm2 seeking a flag or symbol (kinTerm).");
        }
        parseOtherFlagOrKinTerm();
        return;
    } //  end of method parseFlagOrKinTerm

    /* LitOrFlag -> flag.
                 |  Literal.
     */
    private void parseLitOrFlag(ClauseBody claws) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("flag")) {
            current = scanner.readToken();  // consume the flag
            claws.flags.add(current.lexeme.substring(1, (current.lexeme.length() - 1)));  //  post this flag to the clauseBody
        } // end of parsing-the-flag
        else if ((current.token.equals("symbol")) || (current.token.equals("starName"))) {
            parseLiteral(claws);
        } else {
            error("parseLitOrFlag seeking symbol, starName or flag.");
        }
        return;
    }  //  end of method parseLitOrFlag

    /* Literal ->  symbol, leftParen, ArgNest, rightParen.
    |   starName, leftParen, ArgNest, rightParen.
    First: [symbol, starName]  	 Follow: [comma, period]
     */
    private void parseLiteral(ClauseBody claws) throws KSParsingErrorException {
        current = scanner.readToken();  // consume next, which must be a symbol or starName
        Literal lit;
        if (!((current.token.equals("symbol")) || (current.token.equals("starName")))) {
            error("parseLiteral seeking symbol or starName.");
        }
        Predicate pred = new Predicate(current.lexeme);
        pred.category = determinePrimitive(current.lexeme, dTheory);
        current = scanner.readToken();  // consume next, which must be a leftParen
        if (!current.token.equals("leftParen")) {
            error("parseLiteral seeking leftParen.");
        }
        lit = new Literal(pred);
        parseArgNest(lit);
        current = scanner.readToken();  // consume next, which must be a rightParen
        if (!current.token.equals("rightParen")) {
            error("parseLiteral seeking rightParen.");
        }
        claws.addLiteral(lit);
        return;
    }  // end of method parseLiteral

    /* ArgNest ->  var, OtherArgNest.
    |  symbol, SymbOrLitRest, OtherArgNest.
    |  starName, leftParen, ArgNest, rightParen, OtherArgNest.
    |  string, OtherArgNest.
    |  integer, OtherArgNest.
    |  float, OtherArgNest.
    |  \empty.
    First: [var, symbol, starName, string, integer, float]    	 Follow: [rightParen]
     */
    private void parseArgNest(Literal lit) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("var")) {
            scanner.readToken();  // consume the var
            lit.args.add(new Variable(current.lexeme));
            parseOtherArgNest(lit);
            return;
        }  // end of if = var
        if (current.token.equals("symbol")) {
            scanner.readToken();  // consume the symbol
            parseSymbOrLitRest(lit);
            parseOtherArgNest(lit);
            return;
        }  // end of if = symbol
        if (current.token.equals("starName")) {
            scanner.readToken();  // consume the starName
            Literal innerLit;
            Predicate pred = new Predicate(current.lexeme);
            pred.category = determinePrimitive(current.lexeme, dTheory);
            current = scanner.readToken();  // consume next, which must be a leftParen
            if (!current.token.equals("leftParen")) {
                error("parseLiteral seeking leftParen.");
            }
            innerLit = new Literal(pred);
            parseArgNest(innerLit);
            current = scanner.readToken();  // consume next, which must be a rightParen
            if (!current.token.equals("rightParen")) {
                error("parseLiteral seeking rightParen.");
            }
            lit.args.add(innerLit);
            parseOtherArgNest(lit);
            return;
        }  // end of if = starName
        if (current.token.equals("string")) {
            scanner.readToken();  // consume the string
            lit.args.add(new ArgString(current.lexeme));
            parseOtherArgNest(lit);
            return;
        }  // end of if = string
        if (current.token.equals("integer")) {
            scanner.readToken();  // consume the integer
            Integer newint = Integer.valueOf(current.lexeme);
            Constant konstant = new Constant(current.lexeme);
            lit.args.add(konstant);
            konstant.addVal(newint);
            konstant.valueType = "integer";
            parseOtherArgNest(lit);
            return;
        }  // end of if = integer
        if (current.token.equals("float")) {
            scanner.readToken();  // consume the float
            Float newfloat = Float.valueOf(current.lexeme);
            Constant konstant = new Constant(current.lexeme);
            lit.args.add(konstant);
            konstant.addVal(newfloat);
            konstant.valueType = "float";
            parseOtherArgNest(lit);
            return;
        }  // end of if = float
        if (current.token.equals("rightParen")) {
            // don't consume the rightParen
            return;
        }  // end of if = string
        error("parseArgNest seeking var, symbol, starName, integer, float, or string.");
        return;
    }  // end of method parseArgNest

    /*  SymbOrLitRest ->  \empty.
    |  leftParen, ArgNest, rightParen.
    First: [leftParen] 	 Follow: [comma, rightParen]
     */
    private void parseSymbOrLitRest(Literal lit) throws KSParsingErrorException {
        TokenScanned peek = scanner.lookAhead();  // current = a symbol.  peek = next token.
        if (peek.token.equals("leftParen")) {
            scanner.readToken();  // consume the leftParen
            Predicate pred = new Predicate(current.lexeme);
            pred.category = determinePrimitive(current.lexeme, dTheory);
            Literal nestedLit = new Literal(pred);
            parseArgNest(nestedLit);
            current = scanner.readToken();  // consume next, which must be a rightParen
            if (!current.token.equals("rightParen")) {
                error("parseSymbOrLitRest seeking rightParen.");
            }
            lit.args.add(nestedLit);
            return;
        }  // end of if peek = leftParen
        if (peek.token.equals("comma") || peek.token.equals("rightParen")) {
            Constant konstant = new Constant(current.lexeme);
            lit.args.add(konstant);
            if ((current.lexeme.equals("true")) || (current.lexeme.equals("false"))) {
                konstant.valueType = "boolean";
                konstant.addVal(new Boolean(current.lexeme));
            } else {
                konstant.valueType = "symbol";
                konstant.addVal(current.lexeme);
            }
            return;
        }  // end of if peek = comma or ')'
        error("parseSymbOrLitRest seeking comma or leftParen.");
        return;
    }  // end of method parseSymbOrLitRest 

    /* OtherArgNest ->  \empty.
    |  comma, ArgNest.
    First: [comma]  	 Follow: [rightParen]
     */
    private void parseOtherArgNest(Literal lit) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("comma")) {
            scanner.readToken();  // consume the comma
            parseArgNest(lit);
            return;
        }  // end of if = comma
        if (current.token.equals("rightParen")) {
            return;
        }
        error("parseOtherArgNest seeking comma or rightParen.");
    }  // end of method parseOtherArgNest


    /*	SignatureString -> \empty.
    | leftCurly, string, rightCurly.
    First: [leftCurly]	Follow: [percent, symbol, $]
     */
    private void parseSignatureString(KinTermDef ktd) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("percent")) {
            return;
        }
        if (current.token.equals("symbol")) {
            return;
        }
        if (current.token.equals("$")) {
            return;
        }
        if (current.token.equals("leftCurly")) {
            scanner.readToken();  // consume the leftCurly
            current = scanner.readToken();  // read next, which must be a string
            if (!current.token.equals("string")) {
                error("parseSignatureString looking for ... the string.");
            }
            ktd.eqcSigExact = current.lexeme;
            current = scanner.readToken();  // read next, which must be a rightCurly
            if (!current.token.equals("rightCurly")) {
                error("parseSignatureString looking for a rightCurly.");
            }
            return;
        }  //  end of processing the Signature String
        error("parseSignatureString looking for a percent, symbol, or rightCurly.");
    }  //  end of method parseSigntureString


    /* Expansion -> ExpList, ExpClauseBody, Expansion.
    |  \empty.
    First: [percent]	 Follow: [symbol, starName, $]

    NOTE:  Normal recursive descent structure of the parser is abandoned
    for this method.  With 1,000+ clauses in some expansions,
    the call stack overhead can be excessive.
     */
    private void parseExpansion(KinTermDef ktd) throws KSParsingErrorException {
        current = scanner.lookAhead();
        while (current.token.equals("percent")) {
            ClauseBody claws = new ClauseBody();
            parseExpList(claws);
            parseExpClauseBody(ktd, claws);
            current = scanner.lookAhead();
        }  // end of while = percent
        if (current.token.equals("symbol") || current.token.equals("starName")
                || current.token.equals("$")) {
            return;
        }
        error("parseExpansion seeking percent, symbol, starName, or end-of-file.");
        return;
    }  //  end of method parseExpansion

    /* ExpClauseBody ->  LitOrFlag, OtherLitsOrFlags, period.
    First: [symbol, flag]  	 Follow: [bar, symbol, percent, $]
     */
    private void parseExpClauseBody(KinTermDef def, ClauseBody claws) throws KSParsingErrorException {
        parseLitOrFlag(claws);
        parseOtherLitsOrFlags(claws);
        current = scanner.readToken();  // consume next, which must be a period
        if (!current.token.equals("period")) {
            error("parseExpClauseBody seeking 'period'.");
        }
        def.addExpClause(claws);
        return;
    }  // end of method parseExpClauseBody

    /* ExpList -> percent, ExpItem, OtherExpItems, percent, LvlStr.
    First: [percent]      Follow: [symbol, flag]
     */
    private void parseExpList(ClauseBody claws) throws KSParsingErrorException {
        scanner.readToken();  // consume the percent
        parseExpItem(claws);
        parseOtherExpItems(claws);
        TokenScanned peek = scanner.readToken();  // consume next token, which must be a percent.
        if (!peek.token.equals("percent")) {
            error("parseExpList seeking percent.");
            return;
        }  // end of if peek != percent
        parseLvlStr(claws);
        return;
    }  //  end of method parseExpList

    /*ExpItem -> symbol, colon, integer.
              |  NegExpansion.
    First: [symbol, leftParen]		 Follow: [comma, percent, rightParen]
     */
    private void parseExpItem(ClauseBody claws) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("symbol")) {
            current = scanner.readToken();  // consume symbol
            String item = current.lexeme + ":";
            current = scanner.readToken();  // consume the token, which must be a colon
            if (!current.token.equals("colon")) {
                error("parseExpItem seeking colon.");
                return;
            }
            current = scanner.readToken();  // consume the token, which must be an integer
            if (!current.token.equals("integer")) {
                error("parseExpItem seeking integer.");
                return;
            }
            item += current.intVal;
            claws.expansionPath.add(item);
            return;
        }
        if (current.token.equals("leftParen")) {
            parseNegExpansion(claws);
            return;
        }
        error("parseExpItem seeking symbol or leftParen.");
        return;
    }  //  end of method parseExpItem

    /* OtherExpItems -> comma, ExpItem, OtherExpItems.
    |  \empty.
    First: [comma]		Follow: [percent, rightParen]
     */
    private void parseOtherExpItems(ClauseBody claws) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.token.equals("comma")) {
            scanner.readToken();  // consume the comma
            parseExpItem(claws);
            parseOtherExpItems(claws);
            return;
        }  // end of if = comma
        if ((current.token.equals("percent")) || (current.token.equals("rightParen"))) {
            return;
        }
        error("parseOtherExpItems seeking comma, rightParen, or percent.");
        return;
    }  //  end of method parseOtherExpItems

    /* LvlStr -> CtrSet, comma, CtrSet, comma, CtrSet, comma, CtrSet, comma, leftCurly, VarOrStar, rightCurly.
    First: [var]		Follow: [symbol, flag]
     */
    private void parseLvlStr(ClauseBody claws) throws KSParsingErrorException {
        parseCtrSet(claws);
        current = scanner.readToken(); // consume the token, which must be a comma
        if (!current.token.equals("comma")) {
            error("parseLvlStr seeking a comma.");
        }
        parseCtrSet(claws);
        current = scanner.readToken(); // consume the token, which must be a comma
        if (!current.token.equals("comma")) {
            error("parseLvlStr seeking a comma.");
        }
        parseCtrSet(claws);
        current = scanner.readToken(); // consume the token, which must be a comma
        if (!current.token.equals("comma")) {
            error("parseLvlStr seeking a comma.");
        }
        parseCtrSet(claws);
        current = scanner.readToken(); // consume the token, which must be a comma
        if (!current.token.equals("comma")) {
            error("parseLvlStr seeking a comma.");
        }
        current = scanner.readToken(); // consume the token, which must be a leftCurly
        if (!current.token.equals("leftCurly")) {
            error("parseLvlStr seeking a leftCurly.");
        }
        claws.pcString = parseVarOrStar();
        current = scanner.readToken(); // consume the token, which must be a rightCurly
        if (!current.token.equals("rightCurly")) {
            error("parseLvlStr seeking a rightCurly.");
        }
        return;
    }  //  end of method parseLvlStr

    /* VarOrStar -> var, MoreVarsOrStars.
    |  varWithStars, MoreVarsOrStars.
    |  starName, MoreVarsOrStars.
    |  stars, MoreVarsOrStars.
    First: [var, starName, stars]		Follow: [rightCurly]
     */
    private String parseVarOrStar() throws KSParsingErrorException {
        String pcStr = "";
        current = scanner.readToken(); // consume the token, which must be a var, starName, or stars.
        if ((!current.token.equals("var")) && (!current.token.equals("stars"))
                && (!current.token.equals("starName")) && (!current.token.equals("varWithStars"))) {
            error("parseVarOrStar seeking a var, starName, varWithStars, or stars.");
        }
        pcStr += current.lexeme;
        pcStr += parseMoreVarsOrStars();
        return pcStr;
    }  //  end of method parseVarOrStar


    /* MoreVarsOrStars -> var, MoreVarsOrStars.
    |  varWithStars, MoreVarsOrStars.
    |  starName, MoreVarsOrStars.
    |  stars, MoreVarsOrStars.
    |  \empty.
    First: [var, starName, stars]		Follow: [rightCurly]
     */
    private String parseMoreVarsOrStars() throws KSParsingErrorException {
        String pcStr = "";
        current = scanner.lookAhead();
        if (current.token.equals("rightCurly")) {
            return pcStr;
        }
        if ((!current.token.equals("var")) && (!current.token.equals("stars"))
                && (!current.token.equals("starName")) && (!current.token.equals("varWithStars"))) {
            error("parseMoreVarsOrStars seeking a var, starName, varWithStars, or stars.");
        }
        current = scanner.readToken(); // consume the var, starName, or stars.
        pcStr += current.lexeme;
        pcStr += parseMoreVarsOrStars();
        return pcStr;
    }  //  end of method parseMoreVarsOrStars

    /* CtrSet -> var, equalSign, integer.
    First: [var]		Follow: [comma, period]
     */
    private void parseCtrSet(ClauseBody claws) throws KSParsingErrorException {
        current = scanner.readToken(); // consume the token, which must be a var
        if (!current.token.equals("var")) {
            error("parseLvlStr seeking a var.");
        }
        String label = current.lexeme;
        current = scanner.readToken(); // consume the token, which must be a equalSign
        if (!current.token.equals("equalSign")) {
            error("parseLvlStr seeking an equal sign.");
        }
        current = scanner.readToken(); // consume the token, which must be an integer
        if (!current.token.equals("integer")) {
            error("parseLvlStr seeking an integer.");
        }
        if (label.equals("Lvl")) {
            claws.level = current.intVal;
        } else if (label.equals("PC")) {
            claws.pcCounter = current.intVal;
        } else if (label.equals("S")) {
            claws.sCounter = current.intVal;
        } else if (label.equals("Star")) {
            claws.starCounter = current.intVal;
        } else {
            error("parseCtrSet seeking 'PC', 'S', 'Lvl', or 'Star'.");
        }
    }  //  end of method parseCtrSet

    /* NegExpansion -> leftParen, symbol, NegExpRest, rightParen.
    First: [leftParen]	Follow: [comma, percent, rightParen]
     */
    private void parseNegExpansion(ClauseBody claws) throws KSParsingErrorException {
        current = scanner.readToken(); // consume the token, which must be a leftParen
        if (!current.token.equals("leftParen")) {
            error("parseNegExpansion seeking a leftParen.");
            return;
        }  // end of if  !=  leftParen
        current = scanner.readToken(); // consume the token, which must be a symbol
        if (!current.token.equals("symbol") || !current.lexeme.equals("not")) {
            error("parseNegExpansion seeking the symbol 'not'.");
            return;
        }  // end of if  !=  symbol 'not'
        String item = "(" + current.lexeme;
        parseNegExpRest(claws, item);
        current = scanner.readToken(); // consume the token, which must be a rightParen
        if (!current.token.equals("rightParen")) {
            error("parseNegExpansion seeking rightParen.");
        }
        //  Put the rightParen on the end of the last ExpItem
        int j = claws.expansionPath.size() - 1;
        String last = (String) claws.expansionPath.get(j);
        claws.expansionPath.set(j, last + ")");
        return;
    }  //  end of method parseNegExpansion

    /* NegExpRest -> colon, colon, ExpItem, OtherExpItems.
    | \empty.
    First: [colon]			Follow: [rightParen]
     */
    private void parseNegExpRest(ClauseBody claws, String item) throws KSParsingErrorException {
        current = scanner.lookAhead(); // peek at the token, which must be a leftParen
        if (current.token.equals("rightParen")) {  //  empty
            claws.expansionPath.add(item);
            return;
        } else if (!current.token.equals("colon")) {
            error("parseNegExpRest seeking colon or rightParen.");
            return;
        }  // end of if  !=  colon
        scanner.readToken(); // consume the token, which we know is a colon
        claws.expansionPath.add(item + ":");
        parseExpItem(claws);
        parseOtherExpItems(claws);
        return;
    }  //  end of method parseNegExpRest

    /* Special method used only for Active Learning.  */
    public ClauseBody parseSingleClause(String kinTerm, int cbSeqNmbr, DomainTheory dt, KinTermDef ktd)
            throws KSParsingErrorException, KSInternalErrorException, KSConstraintInconsistency {
        ClauseBody claws = new ClauseBody();
        if (dt != null) {
            dTheory = dt;
        } else {
            dTheory = new DomainTheory(parseLanguageName());
            dTheory.filePath = "";
            parseHeaderOpts();
            int paren = dTheory.languageName.indexOf("(");
            String baseName = (paren < 0 ? dTheory.languageName : dTheory.languageName.substring(0, paren));
            if (Library.activeContexts.get(baseName) != null) //  use existing Context
            {
                dTheory.ctxt = (Context) Library.activeContexts.get(baseName);
            } else {
                dTheory.ctxt = new Context(dTheory);
            }
            //	parseStandardMacros();
        }
        scanner.spinTo(kinTerm, cbSeqNmbr);
        parseExpList(claws);
        if (ktd == null) {
            ktd = new KinTermDef(kinTerm);
            ktd.domTh = dTheory;
            dTheory.addTerm(ktd);
        }
        claws.ktd = ktd;
        claws.seqNmbr = cbSeqNmbr;
        claws.pcStringStructural = claws.structStr(claws.pcString);
        parseExpClauseBody(ktd, claws);
        return claws;
    }  //  end of method parseSingleClause

    /* Special method used only for parsing Base Clauses.  */
    public ClauseBody parseSingleClause(String kinTerm, int cbSeqNmbr, DomainTheory dt, KinTermDef ktd, String typ)
            throws KSParsingErrorException, KSInternalErrorException, KSConstraintInconsistency {
        if (!typ.equals("base")) {
            throw new KSInternalErrorException("Invalid typ for parseSingleClause: " + typ);
        }
        if (dt != null) {
            dTheory = dt;
        } else {
            dTheory = new DomainTheory(parseLanguageName());
            dTheory.filePath = "";
            parseHeaderOpts();
            int paren = dTheory.languageName.indexOf("(");
            String baseName = (paren < 0 ? dTheory.languageName : dTheory.languageName.substring(0, paren));
            if (Library.activeContexts.get(baseName) != null) //  use existing Context
            {
                dTheory.ctxt = (Context) Library.activeContexts.get(baseName);
            } else {
                dTheory.ctxt = new Context(dTheory);
            }
            //	parseStandardMacros();
        }
        scanner.spinTo(kinTerm);
        KinTermDef newKTD = parseKinTermDef();
        parseSignatureString(newKTD);
        parseExpansion(newKTD);
        if (ktd == null) {
            ktd = newKTD;
        } else {
            ktd.definitions = newKTD.definitions;
        }
        for (int i = 0; i < ktd.definitions.size(); i++) {
            ClauseBody bcb = (ClauseBody) ktd.definitions.get(i);
            bcb.expansionPath = null;
            //  bcb.ktd = ktd;//  killed 8/9/07 - redundant
            //  bcb.seqNmbr = i;
        }
        ClauseBody claws = (ClauseBody) ktd.definitions.get(cbSeqNmbr);
        return claws;
    }  //  end of method parseSingleClause

    /* Special method used only for ClauseIndex merging.  */
    public ClauseBody parseSingleClause(String kinTerm, int cbSeqNmbr)
            throws KSParsingErrorException, KSInternalErrorException, KSConstraintInconsistency {
        ClauseBody claws = new ClauseBody();
        String languageName = parseLanguageName();
        dTheory = new DomainTheory(languageName);
        dTheory.filePath = "";
        parseHeaderOpts();
        scanner.spinTo(kinTerm, cbSeqNmbr);
        parseExpList(claws);
        KinTermDef ktd = new KinTermDef(kinTerm);
        ktd.domTh = dTheory;
        claws.ktd = ktd;
        claws.seqNmbr = cbSeqNmbr;
        claws.pcStringStructural = claws.structStr(claws.pcString);
        parseExpClauseBody(ktd, claws);
        return claws;
    }  //  end of method parseSingleClause

    public ClauseBody parseCBfromString(DomainTheory dt) throws KSParsingErrorException {
        //  To be used ONLY when lineMan is a LinusFromString
        ClauseBody cb = new ClauseBody();
        dTheory = dt;
        parseLitOrFlag(cb);
        parseOtherLitsOrFlags(cb);
        current = scanner.readToken();  // consume next, which must be a period
        if (!current.token.equals("period")) {
            error("parseCBfromString seeking 'period'.");
        }
        return cb;
    }  //  end of method parseCBfromString

    public KinTermDef parseKinTerm(String kinTerm, boolean domThyAlso)
            throws KSParsingErrorException, KSConstraintInconsistency, KSInternalErrorException {
        dTheory = new DomainTheory(parseLanguageName());
        if (domThyAlso) {
            dTheory.filePath = "";
            parseHeaderOpts();
            parseStandardMacros();
            int paren = dTheory.languageName.indexOf("(");
            String baseName = (paren < 0 ? dTheory.languageName : dTheory.languageName.substring(0, paren));
            if (Library.activeContexts.get(baseName) != null) //  use existing Context
            {
                dTheory.ctxt = (Context) Library.activeContexts.get(baseName);
            } else {
                dTheory.ctxt = new Context(dTheory);
            }
        }  //  end of parse the DT also
        scanner.spinTo(kinTerm);
        KinTermDef ktd = parseKinTermDef();
        parseSignatureString(ktd);
        parseExpansion(ktd);
        ktd.exactEQCs = new TreeMap();
        ktd.structEQCs = new TreeMap();
        int siz = ktd.expandedDefs.size();
        for (int i = 0; i < siz; i++) {      //  number the expanded defintions
            ClauseBody cb = (ClauseBody) ktd.expandedDefs.get(i);
            cb.seqNmbr = i;
            cb.pcStringStructural = ClauseBody.structStr(cb.pcString);
            ktd.addToEQCs(cb);
        }
        ktd.computeEQCSigs();
        return ktd;
    }  //  end of method parseKinTerm
}  // end of class Parser

