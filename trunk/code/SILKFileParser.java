

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

@author		Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
*/
public class SILKFileParser extends Parser {

    static String[] valHolster = { "value" };

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
    public SILKFileParser(Tokenizer tok)	{
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
        if (! newCtxt.domTheoryRefExists()) {
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
            String msg = "While re-loading the Suggestions from prior learning sessions,\n" +
                    "we encountered references to a person or relationship that is\n" +
                    " no longer valid. Those references were ignored, but this may\n" +
                    "make some Suggestions seem illogical. If so, Get New Suggestions.\n";
            MainPane.displayError(msg, "Internal Problem", JOptionPane.WARNING_MESSAGE);
        }
        return newCtxt;
    }


    /*
    Header -> "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>", 
            "<?xml-stylesheet type="text/xsl" href="Silk-status.xsl"?>",
            "<!DOCTYPE SIL_KinData>", "<SIL_KinData>".
        First: [""<?xml version=\"1.0\" encoding=\"UTF-8\" ?>""]
        Follow: [tags: "<parameters>", "<editorSettings>", "<individualCensus>", "<familyCensus>", "<matrix>",
                "<dyadsUndefinedRef>", "<dyadsDefinedRef>", "<dyadsUndefinedAddr>", "<dyadsDefinedAddr>"]
    */
    void parseHeader()  throws KSParsingErrorException  {
	current = scanner.readToken();  // read token, which must be the tag '"<?xml version=\"1.0\" encoding=\"UTF-8\" ?>"'
        if (current.lexeme.indexOf("<?xml version=\"1.0\"") == -1)
            error("parseHeader seeking a tag beginning with '<?xml version=\"1.0\"'. ");
        current = scanner.readToken();  // read token, which must be the XSL stylesheet tag
        if (current.lexeme.indexOf("<?xml-stylesheet type=") == -1)
            error("parseHeader seeking a tag beginning with '<?xml-stylesheet type='. ");
        current = scanner.readToken();  // read token, which must be the tag '<!DOCTYPE SIL_KinData>'
        if (! current.lexeme.equals("<!DOCTYPE SIL_KinData>"))
            error("parseHeader seeking the tag '<!DOCTYPE SIL_KinData>'. ");
        current = scanner.readToken();  // read token, which must be the flag '<SIL_KinData>'
        if (! current.lexeme.equals("<SIL_KinData>"))
            error("parseHeader seeking the flag '<SIL_KinData>'. ");
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
             |  "<accepted-defs...", AccDefs, </accepted-defs>, Body.
             |  "<rejected-defs...", RejectedDedfs, </rejected-defs>, Body.
             |  \empty.

        First: ["parameters", "editorSettings", "individualCensus", "familyCensus",
                "matrix", "dyadsUndefinedRef", "dyadsDefinedRef", "dyadsUndefinedAddr",
                "dyadsDefinedAddr", "accepted-defs...", "<rejected-defs..."]
        Follow: [flags: "<silkin-issues type="Reference">", "<silkin-issues type="Address">",
                        "</SIL_KinData >"]
    */
    void parseBody() throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException,
				KSInternalErrorException, KSConstraintInconsistency, KSDateParseException   {
	current = scanner.lookAhead();  // peek at token, which must be a flag or a tag.
        if (! (current.token.equals("tag") || current.token.equals("tagWithAttributes")))
            error("parseBody looking for a tag (e.g. '<parameters>').");
        if (current.lexeme.equals("<parameters>")) {
            scanner.readToken();  //  consume the start flag
            parseParameters();
            current = scanner.readToken();  // read token, which must be the flag '</parameters>'
            if (! current.lexeme.equals("</parameters>"))
                error("parseBody seeking the end flag '</parameters>'. ");
            parseBody();
        }else if (current.lexeme.equals("<editorSettings>")) {
            scanner.readToken();  //  consume the start flag
            parseEditorSettings();
            current = scanner.readToken();  // read token, which must be the flag '</editorSettings>'
            if (! current.lexeme.equals("</editorSettings>"))
                error("parseBody seeking the end flag '</editorSettings>'. ");
            parseBody();
        }else if (current.lexeme.startsWith("<domain-theory"))  {
            parseDomTheoryRef();
            parseDomTheoryAdr();
            parseBody();
        }else if (!newCtxt.domTheoryRefExists() && !newCtxt.domTheoryAdrExists()) {
        // If we've read as far as the Individual Census, we should have encountered a domain
        // theory in the parameters or else in a domain-theory block. 
            error("Did not find any domain theory (in either format).");
        }else if (current.lexeme.equals("<individualCensus>")) {
       		scanner.readToken();  //  consume the start flag
            parseIndividuals();
            current = scanner.readToken();  // read token, which must be the flag '</individualCensus>'
            if (! current.lexeme.equals("</individualCensus>"))
                error("parseBody seeking the end flag '</individualCensus>'. ");
            parseBody();
        }else if (current.lexeme.equals("<familyCensus>")) {
            parseFamilyCensus();
            parseBody();
        }else if (current.lexeme.equals("<matrix>")) {
            parseMatrix();
            parseBody();
        }else if (current.lexeme.equals("<dyadsUndefinedRef>")) {
            scanner.readToken();  //  consume the start flag
            DomainTheory dt = newCtxt.domTheoryRef();
            dt.dyadsUndefined = new DyadTMap();
            tempDyadsUndefinedRef = new ArrayList<DyadTemp>();
            parseDyadKinTerms(tempDyadsUndefinedRef);
            current = scanner.readToken();  // read token, which must be the flag '</dyadsUndefinedRef>'
            if (! current.lexeme.equals("</dyadsUndefinedRef>"))
                error("parseBody seeking the end flag '</dyadsUndefinedRef>'. ");
            parseBody();
        }else if (current.lexeme.equals("<dyadsDefinedRef>")) {
            scanner.readToken();  //  consume the start flag
            DomainTheory dt = newCtxt.domTheoryRef();
            dt.dyadsDefined = new DyadTMap();
            tempDyadsDefinedRef = new ArrayList<DyadTemp>();
            parseDyadKinTerms(tempDyadsDefinedRef);
            current = scanner.readToken();  // read token, which must be the flag '</dyadsDefinedRef>'
            if (! current.lexeme.equals("</dyadsDefinedRef>"))
                error("parseBody seeking the end flag '</dyadsDefinedRef>'. ");
            parseBody();
        }else if (current.lexeme.equals("<dyadsUndefinedAddr>")) {
            scanner.readToken();  //  consume the start flag
            DomainTheory dt = newCtxt.domTheoryAdr();
            dt.dyadsUndefined = new DyadTMap();
            tempDyadsUndefinedAddr = new ArrayList<DyadTemp>();
            parseDyadKinTerms(tempDyadsUndefinedAddr);
            current = scanner.readToken();  // read token, which must be the flag '</dyadsUndefinedAddr>'
            if (! current.lexeme.equals("</dyadsUndefinedAddr>"))
                error("parseBody seeking the end flag '</dyadsUndefinedAddr>'. ");
            parseBody();
        }else if (current.lexeme.equals("<dyadsDefinedAddr>")) {
            scanner.readToken();  //  consume the start flag
            DomainTheory dt = newCtxt.domTheoryAdr();
            dt.dyadsDefined = new DyadTMap();
            tempDyadsDefinedAddr = new ArrayList<DyadTemp>();
            parseDyadKinTerms(tempDyadsDefinedAddr);
            current = scanner.readToken();  // read token, which must be the flag '</dyadsDefinedAddr>'
            if (! current.lexeme.equals("</dyadsDefinedAddr>"))
                error("parseBody seeking the end flag '</dyadsDefinedAddr>'. ");
            parseBody();
        }else if (current.lexeme.equals("<kinTypeIndex>")) {
            scanner.readToken();  //  consume the start flag
            parseKinTypeIndex(newCtxt.kti);
            current = scanner.readToken();  // read token, which must be the flag '</kinTypeIndex>'
            if (! current.lexeme.equals("</kinTypeIndex>"))
                error("parseBody seeking the end flag '</kinTypeIndex>'. ");
            parseBody();
        }else if (current.lexeme.startsWith("<learning-history")) { //
            scanner.readToken();  //  consume the start flag
            boolean ref = current.lexeme.substring(24,27).equals("Ref");
            if (!ref && newCtxt.learningHistoryAdr == null) {
                newCtxt.learningHistoryAdr = new TreeMap<String, ArrayList<Context.HistoryItem>>(); 
            }
            TreeMap<String, ArrayList<Context.HistoryItem>> learningHistory = 
                    (ref ? newCtxt.learningHistoryRef : newCtxt.learningHistoryAdr);
            parseHistoryItems(learningHistory);
            current = scanner.readToken();  // read token, which must be the flag '</learning-history>
            if (! current.lexeme.equals("</learning-history>"))
                error("parseBody seeking the end flag '</learning-history>'. ");
            parseBody();
        }else if (current.lexeme.startsWith("<auto-def")) {
            scanner.readToken();  //  consume the start flag
            boolean ref = current.lexeme.substring(16, 19).equals("Ref");
            if (!ref && newCtxt.autoDefAdr == null) {
                newCtxt.autoDefAdr = new TreeMap<String, ArrayList<Context.CB_Ptr>>();
            }
            TreeMap<String, ArrayList<Context.CB_Ptr>> autos =
                    (ref ? newCtxt.autoDefRef : newCtxt.autoDefAdr);
            parseAutoDefs(autos);
            current = scanner.readToken();  // read token, which must be the flag '</auto-def>
            if (! current.lexeme.equals("</auto-def>"))
                error("parseBody seeking the end flag '</auto-def>'. ");
            parseBody();
        }else if (current.lexeme.equals("</SIL_KinData>") ||
                current.lexeme.substring(0,14).equals("<silkin-issues")) {
            return;
        }else error("parseBody found unknown flag '" + current.lexeme + "'. ");
    }  //  end of method parseBody



    /*
    Parameters ->  "<language name=",  string,  "/>", Theory1, Theory2, DTRef, DTAdr,
                    Comments, CreateDate, DataAuthor, DataChgDate, SuggestionDate,
                    IndSerial, FamSerial,
                    "<polygamyPermit>", boolean, "</polygamyPermit>", UDPs.
        First: ["<language name="]   Follow: [flag: "</parameters>"]
    */
    void parseParameters() throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException,
				KSInternalErrorException, KSConstraintInconsistency {
//  grab the lang name for the ctxt
        newCtxt.languageName= readOneAttribute("language", "name", "parseParameters");
	Library.activeContexts.put(newCtxt.languageName, newCtxt);
        parseTheory1();
        parseTheory2();
        parseDomTheoryRef();
        parseDomTheoryAdr();
        newCtxt.comments = parseComments();
        parseCreateDate();
        current = scanner.lookAhead();
        if (current.lexeme.equals("<dataAuthors>")) {
            parseDataAuthors();
        }else if (current.lexeme.indexOf("<dataAuthor") == 0) {
            parseAuthors();
        }else {
            error("parseParameters did not find a dat author (in either format).");
        }
        parseDataChgDate();
        parseLastSuggestionDate();
        parseIndSerial();
        parseFamSerial();
        newCtxt.polygamyPermit = readTaggedBoolean("polygamyPermit", "parseParameters");
        parseUDPList(newCtxt);
    }  //  end of method parseParameters


    /*
    Theory1 -> "<theory file=", string, "/>".
     *      |  \empty.
         First: ["<theory..."]	 Follow: [tags: "<theory...", "<comments>", "<createDate...", "<indSerialNum"]
    */
    void parseTheory1() throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException,
				KSInternalErrorException, KSConstraintInconsistency {
        current = scanner.lookAhead();  //  inspect the next flag.
        if (current.lexeme.indexOf("<theory") == 0) {
            String fileName = readOneAttribute("theory", "file", "parseTheory1");
            File currFile = new File(filePath);     //  current token is relative pathname to .thy file
            String theoryFile = currFile.getParent() + "/" + fileName;
            Library.readThyFile(theoryFile);  // dt automatically added by readThyFile
        }
    }

    /*
    Theory2 -> "<theory file=", string, "/>".
              | \empty.
         First: ["<theory..."]	 Follow: [tags: "<comments>", "<createDate...", "<indSerialNum>"]
    */
    void parseTheory2()throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException,
				KSInternalErrorException, KSConstraintInconsistency {
        current = scanner.lookAhead();  //  inspect the next flag.
        if (current.lexeme.indexOf("<theory") == 0) {
            String fileName = readOneAttribute("theory", "file", "parseTheory2");
            File currFile = new File(filePath);     //  current token is relative pathname to .thy file
            String theoryFile = currFile.getParent() + "/" + fileName;
            Library.readThyFile(theoryFile);  // dt automatically added by readThyFile
        }
    }


    /**
     * DomTheoryRef -> '<domain-theory type="Ref"', DomTheoryComponents.
     *              |  \empty.
     */
    void parseDomTheoryRef() throws KSParsingErrorException, KSInternalErrorException {
        current = scanner.lookAhead();  //  inspect the next flag.
        if (current.lexeme.indexOf("<domain-theory type=\"Ref\"") == 0) {
            DomainTheory dt = new DomainTheory(newCtxt.languageName);
            dt.addressTerms = false;
            parseDomTheoryComponents(dt);
        }
    }


    /**
     * DomTheoryAdr -> '<domain-theory type="Adr"', DomTheoryComponents.
     *              |  \empty.
     */
    void parseDomTheoryAdr() throws KSParsingErrorException, KSInternalErrorException {
        current = scanner.lookAhead();  //  inspect the next flag.
        if (current.lexeme.indexOf("<domain-theory type=\"Adr\"") == 0) {
            DomainTheory dt = new DomainTheory(newCtxt.languageName);
            dt.addressTerms = true;
            parseDomTheoryComponents(dt);
        }
    }

    /**
     * DomTheoryComponents -> Citation, NonTerms, NonTermFlags, LevelsOfRecursion,
     *                          Theory, Synonyms, Umbrellas, Overlaps, NonSynonyms,
     *                          NonOverlaps, NonUmbrellas, '</domain-theory>'.
     *                      |  \empty.
     *
     * @param dt    the DomainTheory to receive the components. 
     * 
     *      NOTE: all components are optional, but the order is fixed.
     */
    void parseDomTheoryComponents(DomainTheory dt) throws KSParsingErrorException,
                KSInternalErrorException  {
        scanner.readToken();  // consume start tag
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<citation") == 0) {
            dt.citation = readOneAttribute("citation", "text", "parseDomTheoryComponents");
            current = scanner.lookAhead();
        }
        if (current.lexeme.equals("<non-terms>")) {
            scanner.readToken();  //  consume '<non-terms>'
            dt.nonTerms = new ArrayList<Object>();
            current = scanner.lookAhead();  // peek at next tag
            while (current.lexeme.indexOf("<non-term value=") == 0) {
                dt.nonTerms.add(readOneAttribute("non-term", "value", "parseDomTheoryComponents"));
                current = scanner.lookAhead();
            }
            scanner.readToken();  //  consume next, which must be  '</non-terms>'
            if (!current.lexeme.equals("</non-terms>")) {
                error("parseDomTheoryComponents seeking end tag '</non-terms>'.");
            }
            current = scanner.lookAhead();
        }
        if (current.lexeme.equals("<non-term-flags>")) {
            scanner.readToken();  //  consume '<non-term-flags>'
            dt.nonTermFlags = new ArrayList<Object>();
            current = scanner.lookAhead();  // peek at next tag
            while (current.lexeme.indexOf("<non-term value=") == 0) {
                dt.nonTerms.add(readOneAttribute("non-term-flag", "value", "parseDomTheoryComponents"));
                current = scanner.lookAhead();
            }
            scanner.readToken();  //  consume next, which must be  '</non-term-flags>'
            if (!current.lexeme.equals("</non-term-flags>")) {
                error("parseDomTheoryComponents seeking end tag '</non-term-flags>'.");
            }
            current = scanner.lookAhead();
        }
        if (current.lexeme.indexOf("<levels-of-recursion") == 0) {
            String num = readOneAttribute("levels-of-recursion", "n", "parseDomTheoryComponents");
            try {
                dt.levelsOfRecursion = Integer.parseInt(num);
            }catch(Exception ex) {
                error("parseDomTheoryComponents unable to parse '" + num + "' as integer for levelsOfRecursion.");
            }
            current = scanner.lookAhead();
        }
        if (current.lexeme.equals("<theory>")) {
            scanner.readToken();  //  consume '<theory>'
            current = scanner.lookAhead();  // peek at next tag
            while (current.lexeme.indexOf("<kin-term-def term=") == 0) {
                scanner.readToken();  //  consume start tag
                dt.addTerm(parseKinTermDef());
                current = scanner.lookAhead();
            }
            scanner.readToken();  //  consume next, which must be  '</theory>'
            if (!current.lexeme.equals("</theory>")) {
                error("parseDomTheoryComponents seeking end tag '</theory>'.");
            }
            current = scanner.lookAhead();
        }
        if (current.lexeme.equals("<synonyms>")) {
            scanner.readToken();  //  consume '<synonyms>'
            dt.synonyms = new TreeMap();
            current = scanner.lookAhead();  // peek at next tag
            while (current.lexeme.indexOf("<pair") == 0) {
                String[] names = {"subTerm", "baseTerm" }, values;
                values = readAttributes("pair", names, "parseDomTheoryComponents");
                dt.synonyms.put(values[0], values[1]);
                current = scanner.lookAhead();
            }
            scanner.readToken();  //  consume next, which must be  '</synonyms>'
            if (!current.lexeme.equals("</synonyms>")) {
                error("parseDomTheoryComponents seeking end tag '</synonyms>'.");
            }
            current = scanner.lookAhead();
        }
        if (current.lexeme.equals("<umbrellas>")) {
            scanner.readToken();  //  consume '<umbrellas>'
            dt.umbrellas = new TreeMap();
            current = scanner.lookAhead();  // peek at next tag
            while (current.lexeme.indexOf("<umbrella") == 0) {
                String umbTerm = readOneAttribute("umbrella", "umbTerm", "parseDomTheoryComponents");
                ArrayList<String> subTerms = new ArrayList<String>();
                current = scanner.lookAhead();
                while (current.lexeme.indexOf("<sub-term") == 0) {
                    subTerms.add(readOneAttribute("sub-term", "value", "parseDomTheoryComponents"));
                    current = scanner.lookAhead();
                }
                scanner.readToken();  //  consume next, which must be  '</umbrella>'
                if (!current.lexeme.equals("</umbrella>")) {
                    error("parseDomTheoryComponents seeking end tag '</umbrella>'.");
                }
                dt.umbrellas.put(umbTerm, subTerms);
                current = scanner.lookAhead();
            }
            scanner.readToken();  //  consume next, which must be  '</umbrellas>'
            if (!current.lexeme.equals("</umbrellas>")) {
                error("parseDomTheoryComponents seeking end tag '</umbrellas>'.");
            }
            current = scanner.lookAhead();
        }
        if (current.lexeme.equals("<overlaps>")) {
            scanner.readToken();  //  consume '<overlaps>'
            dt.overlaps = new TreeMap();
            current = scanner.lookAhead();  // peek at next tag
            while (current.lexeme.indexOf("<overlap") == 0) {
                String baseTerm = readOneAttribute("overlap", "baseTerm", "parseDomTheoryComponents");
                ArrayList<String> olapTerms = new ArrayList<String>();
                current = scanner.lookAhead();
                while (current.lexeme.indexOf("<overlap-term") == 0) {
                    olapTerms.add(readOneAttribute("overlap-term", "value", "parseDomTheoryComponents"));
                    current = scanner.lookAhead();
                }
                scanner.readToken();  //  consume next, which must be  '</overlap>'
                if (!current.lexeme.equals("</overlap>")) {
                    error("parseDomTheoryComponents seeking end tag '</overlap>'.");
                }
                dt.overlaps.put(baseTerm, olapTerms);
                current = scanner.lookAhead();
            }
            scanner.readToken();  //  consume next, which must be  '</overlaps>'
            if (!current.lexeme.equals("</overlaps>")) {
                error("parseDomTheoryComponents seeking end tag '</overlaps>'.");
            }
            current = scanner.lookAhead();
        }
        if (current.lexeme.equals("<nonSynonyms>")) {
            scanner.readToken();  //  consume '<nonSynonyms>'
            dt.nonSynonyms = new ArrayList<Object>();
            current = scanner.lookAhead();  // peek at next tag
            while (current.lexeme.indexOf("<nonSynonym") == 0) {
                String[] names = {"term1", "term2" }, values;
                values = readAttributes("nonSynonym", names, "parseDomTheoryComponents");
                String newPair = values[0] + "/" + values[1];
                dt.nonSynonyms.add(newPair);
                current = scanner.lookAhead();
            }
            scanner.readToken();  //  consume next, which must be  '</nonSynonyms>'
            if (!current.lexeme.equals("</nonSynonyms>")) {
                error("parseDomTheoryComponents seeking end tag '</nonSynonyms>'.");
            }
            current = scanner.lookAhead();
        }
        if (current.lexeme.equals("<nonOverlaps>")) {
            scanner.readToken();  //  consume '<nonOverlaps>'
            dt.nonOverlaps = new TreeMap();
            current = scanner.lookAhead();  // peek at next tag
            while (current.lexeme.indexOf("<nonOverlap") == 0) {
                String baseTerm = readOneAttribute("nonOverlap", "baseTerm", "parseDomTheoryComponents");
                ArrayList<String> olapTerms = new ArrayList<String>();
                current = scanner.lookAhead();
                while (current.lexeme.indexOf("<nonOverlap-term") == 0) {
                    olapTerms.add(readOneAttribute("nonOverlap-term", "value", "parseDomTheoryComponents"));
                    current = scanner.lookAhead();
                }
                scanner.readToken();  //  consume next, which must be  '</nonOverlaps>'
                if (!current.lexeme.equals("</nonOverlap>")) {
                    error("parseDomTheoryComponents seeking end tag '</nonOverlap>'.");
                }
                dt.nonOverlaps.put(baseTerm, olapTerms);
                current = scanner.lookAhead();
            }
            scanner.readToken();  //  consume next, which must be  '</nonOverlaps>'
            if (!current.lexeme.equals("</nonOverlaps>")) {
                error("parseDomTheoryComponents seeking end tag '</nonOverlaps>'.");
            }
            current = scanner.lookAhead();
        }
        if (current.lexeme.equals("<nonUmbrellas>")) {
            scanner.readToken();  //  consume '<nonUmbrellas>'
            dt.nonUmbrellas = new TreeMap();
            current = scanner.lookAhead();  // peek at next tag
            while (current.lexeme.indexOf("<nonUmbrella") == 0) {
                String umbTerm = readOneAttribute("nonUmbrella", "umbTerm", "parseDomTheoryComponents");
                ArrayList<String> subTerms = new ArrayList<String>();
                current = scanner.lookAhead();
                while (current.lexeme.indexOf("<sub-term") == 0) {
                    subTerms.add(readOneAttribute("sub-term", "value", "parseDomTheoryComponents"));
                    current = scanner.lookAhead();
                }
                scanner.readToken();  //  consume next, which must be  '</nonUmbrella>'
                if (!current.lexeme.equals("</nonUmbrella>")) {
                    error("parseDomTheoryComponents seeking end tag '</nonUmbrella>'.");
                }
                dt.nonUmbrellas.put(umbTerm, subTerms);
                current = scanner.lookAhead();
            }
            scanner.readToken();  //  consume next, which must be  '</nonUmbrellas>'
            if (!current.lexeme.equals("</nonUmbrellas>")) {
                error("parseDomTheoryComponents seeking end tag '</nonUmbrellas>'.");
            }
            current = scanner.lookAhead();
        }
        scanner.readToken();  //  consume next, which must be the end tag
        if (!current.lexeme.equals("</domain-theory>")) {
            error("parseDomTheoryComponents seeking end tag '</domain-theory>'.");
        }
        newCtxt.addDomainTheory(dt);
    }
    

    /*
    Comments -> "<comments txt=", string, "/>".
              |  \empty.
         First: ["<comments>"]	 Follow: [tags: "<createDate...", "<indSerialNum>", 
                    "<getDateOfBirth...", "</family>"]
    */
    String parseComments()  throws KSParsingErrorException  {
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<comments") == 0)  {
            return readOneAttribute("comments", "txt", "parseComments");
        }else if (current.lexeme.indexOf("<createDate") == 0 || current.lexeme.equals("<indSerialNum>") ||
                current.lexeme.equals("</family>") || current.lexeme.indexOf("<surname") == 0 ||
                current.lexeme.equals("<deleted>"))  {
            return null;
        }
        error("parseComments seeking a flag: '<comments>, '<createDate>'," +
                "\n'<indSerialNum>', '<dateOfBirth>', '<dateOfDeath>', '<surname...', '<deleted>, or '</family>'.");
        return null;
    }


    /*
    CreateDate -> "<createDate value=", string, "/>".
              |  \empty.
         First: ["<createDate..."]	 Follow: ["<indSerNum>"]
    */
    void parseCreateDate()  throws KSParsingErrorException  {
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<createDate") == 0)  {
            Date cDate = readDateTag("createDate", "parseCreateDate");
            newCtxt.createDate = UDate.formatAsXSD(cDate);
        }else if (current.lexeme.equals("<indSerNum>") || current.lexeme.indexOf("<dataAuthor") == 0)  {
            return;
        }else error("parseCreateDate seeking a flag: '<createDate...', '<dataAuthor>',  or '<indSerNum>'.");
    }

    /*
    DataAuthor -> "<dataAuthors>", Authors, </dataAuthors>.
     *
         First: ["<dataAuthors>"]	 Follow: ["<indSerNum>"]
    */
    void parseDataAuthors()  throws KSParsingErrorException  {
        current = scanner.readToken();  //  consume start tag
        if (!current.lexeme.equals("<dataAuthors>")) {
            error("parseDataAuthors seeking the tag: '<dataAuthors>'.");
        }
        parseAuthors();
        current = scanner.readToken();  //  consume end tag
        if (!current.lexeme.equals("</dataAuthors>")) {
            error("parseDataAuthors seeking the tag: '</dataAuthors>'.");
        }
    }

    /** Authors -> "<dataAuthor name=", string, "/>", Authors.
              |  \empty.
     *
         First: ["<dataAuthor..."]	 Follow: ["</dataAuthors>"]
     */
    void parseAuthors()  throws KSParsingErrorException  {
        current = scanner.lookAhead();
        while (current.lexeme.indexOf("<dataAuthor") == 0)  {
            String author = readOneAttribute("dataAuthor", "name", "parseAuthors");
            Context.current.dataAuthors.add(author);
            current = scanner.lookAhead();
        }
    }

    void parseDataChgDate()  throws KSParsingErrorException  {
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<lastDataChangeDate") == 0)  {
            newCtxt.dateOfLastDataChange = readOneAttribute("lastDataChangeDate", "value", "parseDataChgDate");
        }else if (current.lexeme.equals("<indSerNum>")
                || current.lexeme.indexOf("<lastSuggestionDate") == 0)  {
            return;
        }else error("parseDataChgDate seeking a flag: '<lastDataChangeDate>' or '<lastSuggestionDate>' or '<indSerNum>'.");
    }

    void parseLastSuggestionDate()  throws KSParsingErrorException  {
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<lastSuggestionDate") == 0)  {
            newCtxt.dateOfLastSuggestion = readOneAttribute("lastSuggestionDate", "value", "parseLastSuggestionDate");
        }else if (current.lexeme.equals("<indSerNum>"))  {
            return;
        }else error("parseLastSuggestionDate seeking a flag: '<lastSuggestionDate>' or '<indSerNum>'.");
    }

    /*
    IndSerial -> "<indSerNum>", integer, "</indSerNum>".
         First: ["<indSerNum>"]	 Follow: ["<famSerNum>"]
    */
    void parseIndSerial()  throws KSParsingErrorException, NumberFormatException {
        int nmbrOfPersons = readTaggedInteger("indSerNum", "parseIndSerial");
        origIndCount = nmbrOfPersons;  //  will use it as a check-sum after individuals loaded
        indivTable = new ArrayList<ArrayList<Integer>>(nmbrOfPersons);
    }

    /*
    FamSerial -> "<famSerNum>", integer,"</famSerNum>".
         First: ["<famSerNum>"]	 Follow: ["<polygamyPermit>"]
    */
    void parseFamSerial()   throws KSParsingErrorException, NumberFormatException {
        int nmbrOfFams = readTaggedInteger("famSerNum", "parseFamSerial");
        origFamCount = nmbrOfFams;
        famTable = new ArrayList<ArrayList<Integer>>(nmbrOfFams);
    }

    /*	UDPList -> "<userDefinedProperties>", UDPs, "</userDefinedProperties>".
                |  \empty.
    	First: ["<userDefinedProperties>"]	 Follow: [tags: "<starLinks>", "</individual>"]
    */
    void parseUDPList(Individual ind) throws KSParsingErrorException {
        current = scanner.lookAhead();  //  inspect the tag, which must be "<userDefinedProperties>"
        if (current.lexeme.equals("<userDefinedProperties>")) {
            TreeMap tMap = new TreeMap();
            parseUDPs(tMap, false);
            scanner.readToken();  //  consume the tag, which must be "</userDefinedProperties>"
            if (!current.lexeme.equals("</userDefinedProperties>")) {
                error("parseUDPList seeking tag '</userDefinedProperties>', but found " + current.lexeme);
            }
            if (!tMap.isEmpty()) {
                ind.userDefinedProperties = tMap;
            }
        }
        if (current.lexeme.equals("<starLinks>") || current.lexeme.equals("</individual>")) {
            return;
        }
        String msg = "parseUDPList seeking tag '<userDefinedProperties>', '<starLinks>', \n";
        msg += "or '</individual>' but found " + current.lexeme;
        error(msg);
    }

    /*	UDPList -> "<userDefinedProperties>", UDPs, "</userDefinedProperties>".
    			| \empty.
    	First: ["<userDefinedProperties>"]	 Follow: [flag: "</parameters>"]
    */
	void parseUDPList(Context newCtxt) throws KSParsingErrorException  {
        current = scanner.lookAhead();  //  inspect the flag, which must be "<userDefinedProperties>" or "</parameters>"
        if (current.lexeme.equals("</parameters>")) return;
        if (! current.lexeme.equals("<userDefinedProperties>"))
            error("parseUDPList seeking flag '<userDefinedProperties>', but found " + current.lexeme);
        scanner.readToken();  //  consume the flag "<userDefinedProperties>"
        TreeMap tMap = new TreeMap();
        parseUDPs(tMap, true);
        scanner.readToken();  //  consume the flag, which must be "</userDefinedProperties>"
        if (! current.lexeme.equals("</userDefinedProperties>"))
            error("parseUDPList seeking flag '</userDefinedProperties>', but found " + current.lexeme);
        if (! tMap.isEmpty()) newCtxt.userDefinedProperties = tMap;
		}

    /*
    UDPs -> "<UDP>", UDP, "</UDP>", UDPs.
              |  \empty.
         First: ["<UDP>"]	 Follow: [flag: "</parameters>"]
    */
    void parseUDPs(TreeMap tMap, boolean full)  throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.lexeme.equals("<UDP>"))  {
            scanner.readToken();  //  consume the start flag.
            UserDefinedProperty newProp = parseUDP(full);
            current = scanner.readToken();  //  consume the divorceYr flag, which must be "</UDP>"
            if (! current.lexeme.equals("</UDP>"))
                error("parseUDPs seeking the flag '</UDP>'. ");
            String propName = newProp.starName;
            tMap.put(propName, newProp);
            parseUDPs(tMap, full);
        }else if (current.lexeme.equals("</parameters>") || current.lexeme.equals("</userDefinedProperties>")) {
            return;
        }else error("parseUDPs seeking a flag: '</UDP>' or '</parameters>'. ");
    }

    /*
    UDP -> PropName, Type, ValueList, "<singleValue>", boolean,"</singleValue>",
            ValidEntries, DefVal, MinVal, MaxVal.
         First: [flag: "<propertyName>"]	 Follow: [flag: "</UDP>"]

     * This method relies on the fact that the Context's UDP templates are parsed in first.
     * They are parsed with full = true. Later, we parse the UDP's for individuals with
     * full = false. We copy all the fields from the Context's model, then add the particular
     * value for this individual.
     */
    UserDefinedProperty parseUDP(boolean full) throws KSParsingErrorException, NumberFormatException {
        UserDefinedProperty udp, model;
        if (full) {
            udp  = new UserDefinedProperty(parsePropName());
            parseType(udp);
            parseValueList(udp);
            udp.singleValue = readTaggedBoolean("singleValue", "parseUDP");
            parseValidEntries(udp);
            parseDefVal(udp);
            parseMinVal(udp);
            parseMaxVal(udp);
        }else {
            model = (UserDefinedProperty)newCtxt.userDefinedProperties.get(parsePropName());
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
        return readTagEnclosedText("propertyName", "parsePropName");
    }

    /*
    Type -> "<typ>", TypeSpec, "</typ>".
         First: [flag: "<typ>"]	 Follow: [flag: "<singleValue>"]
    
     TypeSpec -> "integer".
             |  "float".
             |  "string".
             |  "boolean".
             |  "individual".
         First: [one of those]	 Follow: [flag: "</typ>"]
    */
    void parseType(UserDefinedProperty udp) throws KSParsingErrorException {
        String type = readTagEnclosedText("typ", "parseType");
        if (type.equals("integer") || type.equals("float") || type.equals("string")
                || type.equals("boolean") || type.equals("individual"))
            udp.typ = type;
        else error("parseType found invalid UDP type: " + type);
    }

    /*
    ValueList -> "<value>", Values, "</value>".
         First: [flag: "<value>"]	 Follow: [flag: "<singleValue>"]
    */
    void parseValueList(UserDefinedProperty udp) throws KSParsingErrorException, NumberFormatException {
        current = scanner.readToken();  //  consume the start flag, which must be "<value>"
        if (! current.lexeme.equals("<value>"))
            error("parseValueList seeking the flag '<value>'. ");
        udp.value = new ArrayList<Object>();
        parseValues(udp);
        current = scanner.readToken();  //  consume the divorceYr flag, which must be "</value>"
        if (! current.lexeme.equals("</value>"))
            error("parsePropName seeking the flag '</value>'. ");
    }



    /*
    Values -> Value, MoreValues.
           |  \empty.
         First: [integer, float, string, boolean, Individual]
         Follow: [flag: "</value>"]
    */
    void parseValues(UserDefinedProperty udp) throws KSParsingErrorException, NumberFormatException {
        current = scanner.lookAhead();
        if (current.lexeme.equals("</value>"))  //  empty
            return;
        Object newVal = parseValue(udp);
        if (newVal != null) udp.value.add(newVal);
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
        if (current.lexeme.equals("</value>"))   //  empty
            return;
        scanner.readToken();  //  consume a comma
        if (! current.token.equals("comma"))
            error("parseMoreValues seeking a comma, found " + current.lexeme);
        Object newVal = parseValue(udp);
        if (newVal != null) udp.value.add(newVal);
        parseMoreValues(udp);
    }


   /*
    ValidEntries -> "<validEntries>", ValEntries, MoreValEntries, "</validEntries>".
         First: [flag: "<validEntries>"]	 Follow: [flag: "<defaultValue>"]
    */
    void parseValidEntries(UserDefinedProperty udp) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the start flag, which must be "<validEntries>"
        if (! current.lexeme.equals("<validEntries>"))
            error("parseValidEntries seeking the flag '<validEntries>'. ");
        udp.validEntries = new ArrayList<Object>();
        parseValEntries(udp);
        parseMoreValEntries(udp);
        current = scanner.readToken();  //  consume the divorceYr flag, which must be "</validEntries>"
        if (! current.lexeme.equals("</validEntries>"))
            error("parseValidEntries seeking the flag '</validEntries>'. ");
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
        if (current.lexeme.equals("</validEntries>"))  //  empty
            return;
        //  if current = a comma, this is not legal
        scanner.readToken();  //  consume the token
        if (udp.typ.equals("integer")) {
            udp.validEntries.add(new Integer(current.lexeme));
        }else if (udp.typ.equals("string")) {
            udp.validEntries.add(current.lexeme);
        }else if (udp.typ.equals("float")) {
            udp.validEntries.add(new Float(current.lexeme));
        }else error("parseValEntries found illegal valid-entry type (" + current.token + ") = " + current.lexeme);
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
        if (current.lexeme.equals("</validEntries>"))  //  empty
            return;
        if (current.token.equals("comma")) {
            scanner.readToken();  //  consume the comma
            current = scanner.readToken();
            if (udp.typ.equals("integer")) {
                udp.validEntries.add(new Integer(current.lexeme));
            }else if (udp.typ.equals("string")) {
                udp.validEntries.add(current.lexeme);
            }else if (udp.typ.equals("float")) {
                udp.validEntries.add(new Float(current.lexeme));
            }
            parseMoreValEntries(udp);
        }else error("parseMoreValEntries found illegal valid-entry type (" + current.token + ") = " + current.lexeme);
    }

    /*
    DefVal -> "<defaultValue>", Value, "</defaultValue>".
         First: [flag: "<defaultValue>"]	 Follow: [flag: "<minVal>"]
    */
    void parseDefVal(UserDefinedProperty udp)
            throws KSParsingErrorException, NumberFormatException {
        current = scanner.readToken();  //  consume the start flag, which must be "<defaultValue>"
        if (! current.lexeme.equals("<defaultValue>"))
            error("parseDefVal seeking the flag '<defaultValue>'. ");
        udp.defaultValue = parseValue(udp);
        current = scanner.readToken();  //  consume the divorceYr flag, which must be "</defaultValue>"
        if (! current.lexeme.equals("</defaultValue>"))
            error("parseDefVal seeking the flag '</defaultValue>'. ");
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
                || current.token.equals("comma"))
            return null;
        scanner.readToken();  //  consume the token
        if (udp.typ.equals("integer")) {
            return new Integer(current.lexeme);
        }else if (udp.typ.equals("float")) {
            return new Float(current.lexeme);
        }else if (udp.typ.equals("string")) {
            return current.lexeme;
        }else if (udp.typ.equals("boolean")) {
            return new Boolean(current.lexeme);  // if not true or false, run-time exception will be thrown
        }else if (udp.typ.equals("individual")) {
            udp2ndPassReqd = true;
            if (current.lexeme.indexOf("#") != 0)
                error("parseValue found invalid representation of an individual: " + current.lexeme);
            return current.lexeme;
        }else error("parseValue found invalid value type (" + current.token + ") = " + current.lexeme);
        return null;
    }

    /*
    MinVal -> "<minVal>", MinValue, "</minVal>".
         First: ["flag: <minVal>"]	 Follow: [flag: "<maxVal>"]
    */
    void parseMinVal(UserDefinedProperty udp)
            throws KSParsingErrorException, NumberFormatException {
        current = scanner.readToken();  //  consume the start flag, which must be "<minVal>"
        if (! current.lexeme.equals("<minVal>"))
            error("parseMinVal seeking the flag '<minVal>'. ");
        parseMinValue(udp);
        current = scanner.readToken();  //  consume the divorceYr flag, which must be "</minVal>"
        if (! current.lexeme.equals("</minVal>"))
            error("parseMinVal seeking the flag '</minVal>'. ");
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
        if (current.lexeme.equals("</minVal>")) return;
        if (current.token.equals("integer")) {
            udp.minVal = new Integer(current.lexeme);
        }else if (current.token.equals("float"))  {
            udp.minVal = new Float(current.lexeme);
        }else error("parseMinValue seeking a number or the flag '</minVal>'. Found " + current.lexeme);
        current = scanner.readToken(); //  consume the value
    }

    /*
    MaxVal -> "<maxVal>", MaxValue,"</maxVal>".
         First: [flag: "<maxVal>"]	 Follow: [see note 1]
    */
    void parseMaxVal(UserDefinedProperty udp)
            throws KSParsingErrorException, NumberFormatException {
        current = scanner.readToken();  //  consume the start flag, which must be "<maxVal>"
        if (! current.lexeme.equals("<maxVal>"))
            error("parseMaxVal seeking the flag '<maxVal>'. ");
        parseMaxValue(udp);
        current = scanner.readToken();  //  consume the divorceYr flag, which must be "</maxVal>"
        if (! current.lexeme.equals("</maxVal>"))
            error("parseMaxVal seeking the flag '</maxVal>'. ");
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
        if (current.lexeme.equals("</maxVal>")) return;
        if (current.token.equals("integer")) {
            udp.maxVal = new Integer(current.lexeme);
        }else if (current.token.equals("float"))  {
            udp.maxVal = new Float(current.lexeme);
        }else error("parseMaxValue seeking a number or the flag '</maxVal>'. Found " + current.lexeme);
        current = scanner.readToken(); //  consume the value
    }

    /*
    EditorSettings -> "<currentEgo n=", integer, "/>",
                "<editDirectory dir=", string, "/>",
                KAESParameters, LastPersonIndexed.
         First: [flag: <currentEgo..., <editDirectory..., <origin...]
         Follow: ["</editorSettings>"]
    */
    void parseEditorSettings() throws KSParsingErrorException {
        current = scanner.lookAhead();  // peek at token, which must be a flag.
        if (current.lexeme.indexOf("<currentEgo") == 0) { // always 1st, if present
            String val = readOneAttribute("currentEgo", "n", "parseEditorSettings");
            currentEgoSerialNmbr = Integer.parseInt(val);
            current = scanner.lookAhead();  // peek at token, which must be a flag.
        }
        if (current.lexeme.indexOf("<editDirectory") == 0) { // always 2nd, if present
            newCtxt.editDirectory = readOneAttribute("editDirectory", "dir", "parseEditorSettings");
        }
        parseKAESParameters(); // always present
        parseLastPersonIndexed();
    }

    void parseLastPersonIndexed() throws KSParsingErrorException {
        current = scanner.lookAhead();  // peek at token, which must be a flag.
        if (current.lexeme.equals("<lastPersonIndexed>")) { // temp storage
            lastPersonIndexed = readTaggedInteger("lastPersonIndexed", "parseLastPersonIndexed");
        }else if (! current.lexeme.equals("</editorSettings>")) {
            error("parseLastPersonIndexed seeking the flags '<lastPersonIndexed>' or </editorSettings>'. ");
        }
    }

    /*
    KAESParameters -> "<origin x=", integer, "y=", integer, "/>",
                      "<area W=", integer, "H=", integer, "/>",
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
        if (newCtxt.origin == null) {
            newCtxt.origin = new Point();
        }
        String[] attributes = { "x", "y" };
        String[] values = readAttributes("origin", attributes, "parseKAESParameters");
        newCtxt.origin.x = Integer.parseInt(values[0]);
        newCtxt.origin.y = Integer.parseInt(values[1]);
        attributes[0] = "W";
        attributes[1] = "H";
        values = readAttributes("area", attributes, "parseKAESParameters");
        int areaW = Integer.parseInt(values[0]);
        int areaH = Integer.parseInt(values[1]);
        newCtxt.area = new Dimension(areaW, areaH);
        newCtxt.infoPerson = readTaggedInteger("infoPerson", "parseKAESParameters");
        newCtxt.infoMarriage = readTaggedInteger("infoMarriage", "parseKAESParameters");
        newCtxt.labelChoice = readTaggedInteger("label", "parseKAESParameters");
        newCtxt.ktLabelChoice = readTaggedInteger("ktlabel", "parseKAESParameters");
        newCtxt.editable = readTaggedBoolean("editable", "parseKAESParameters");
        newCtxt.distinctAdrTerms = readTaggedBoolean("distinctAdrTerms", "parseKAESParameters");
        newCtxt.maxNoiseP = readTaggedInteger("maxNoise", "parseKAESParameters");
        newCtxt.ignorableP = readTaggedInteger("ignorable", "parseKAESParameters");
        newCtxt.doBaseCBs = Boolean.parseBoolean(readOneAttribute("doBaseCBs", "value", "parseKAESParameters"));
        newCtxt.doInduction = Boolean.parseBoolean(readOneAttribute("doInduction", "value", "parseKAESParameters"));
    }

    int readTaggedInteger(String tag, String caller) throws KSParsingErrorException  {
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
        current = scanner.readToken(); //  consume next, which must be divorceYr tag
        if (!current.lexeme.equals("</" + tag + ">")) {
            error(caller + " seeking the flag " + "</" + tag + ">");
        }
        return theVal;
    }

    /*
    Individuals -> "<individual n=", integer, "/>", Individual, "</individual>", Individuals.
                |  \empty.
         First: [flag: "<individual>"]	 Follow: [flag: "</individualCensus>"]
    NOTE: Iterative style used here to avoid stack overflows for very large populations.
    */
    void parseIndividuals() throws KSParsingErrorException {
        current = scanner.lookAhead();	//  inspect the flag
        while (current.lexeme.indexOf("<individual") == 0)  {
            parseIndividual(newCtxt);
            current = scanner.readToken();  //  consume the flag, which must be "</individual>"
            if (! current.lexeme.equals("</individual>"))
                error("parseIndividuals seeking flag '</individual>', but found " + current.lexeme);
            current = scanner.lookAhead();
        }
        if (current.lexeme.equals("</individualCensus>"))  //  empty or divorceYr of Individual Census
            return;
        else error("parseIndividuals seeking tags '<individual>' or '</individualCensus>',\nbut found " + current.lexeme);
    }

/*
Individual -> Sex, Stats, Location, Comment, "<surname value=", string, "/>",
              "<firstNames value=", string, "/>" , Birth,
              Death, DataChg, Author, Deleted, BirthFam, Marriages, UDPs, StarLinks.
     First: [flag: "<serialNmbr>"]	 Follow: [flag: "</individual>"]
*/
    void parseIndividual(Context ctxt) throws KSParsingErrorException {
        Individual ind = new Individual(ctxt, "?");
        int serial = Integer.parseInt(readOneAttribute("individual", "n", "parseIndividual"));
        if (serial != ind.serialNmbr)
            error("parseIndividual creating an individual with out-of-sequence serial number: " + serial);
        ind.myId = serial +1;
        parseGender(ind);
        ind.location = parseLocation();
        String note = parseComments();
        ind.comment = (note == null ? "" : note);
        ind.surname = readOneAttribute("surname", "value", "parseIndividual");
        ind.firstNames = readOneAttribute("firstNames", "value", "parseIndividual");
        ind.name = ((ind.firstNames == null ? "" : ind.firstNames)
                    + (ind.surname == null ? "" : " " + ind.surname)).trim();
        parseBirth(ind);
        parseDeath(ind);
        ind.dataChangeDate = readOneAttribute("dataChangeDate", "value", "parseIndividual");
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<dataAuthor name=") == 0) {  // optional tag
            ind.dataAuthor = readOneAttribute("dataAuthor", "name", "parseIndividual");
        }
        ind.deleted = readTaggedBoolean("deleted", "parseIndividual");
        ArrayList<Integer> row = new ArrayList<Integer>(3);
        indivTable.add(row);
        row.add(ind.serialNmbr);
        parseBirthFam(row);
        parseMarriages(row);
        parseUDPList(ind);
        parseStarLinks(ind);
    }


    /*
    Gender -> "<sex>", symbol, "</sex>".  [must be ?, M or F]
         First: [flag: "<sex>"]	 Follow: [flag: "<location>"]
    */
    void parseGender(Individual ind) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the flag, which must be "<sex>"
        if (! current.lexeme.equals("<sex>"))
            error("parseGender seeking flag '<sex>', but found " + current.lexeme);
        current = scanner.readToken();
        if (! current.lexeme.equals("Male") && ! current.lexeme.equals("Female")
                &&!current.lexeme.equals("M") && !current.lexeme.equals("F") &&
                ! current.lexeme.equals("Neuter"))
               error("parseGender seeking a gender, but found " + current.lexeme);
        String sex = current.lexeme;
        current = scanner.readToken();  //  consume the flag, which must be "</sex>"
        if (! current.lexeme.equals("</sex>"))
            error("parseGender seeking flag '</sex>'.");
        ind.gender = sex.substring(0,1);
        if (ind.gender.equals("N")) ind.gender = "?";
        if (ind.gender.equals("M")) ind.sex = new Male();
        else if(ind.gender.equals("F")) ind.sex = new Female();
        else ind.sex = new Neuter();
    }

    boolean readTaggedBoolean(String tag, String caller) throws KSParsingErrorException  {
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
        current = scanner.readToken(); //  consume next, which must be divorceYr tag
        if (!current.lexeme.equals("</" + tag + ">")) {
            error(caller + " seeking the flag " + "</" + tag + ">");
        }
        return theVal;
    }


   String readTagEnclosedText(String tag, String caller) throws KSParsingErrorException  {
        String theVal = "";
        current = scanner.readToken(); //  consume next, which must match tag
        if (! current.lexeme.equals("<" + tag + ">")) {
            error(caller + " seeking the flag " + "<" + tag + ">");
        }
        current = scanner.readToken(); //  consume next, first of the enclosed string
        while (! current.lexeme.equals("</" + tag + ">")) {
            theVal += current.lexeme + " ";
            current = scanner.readToken();
        }
        return theVal.trim();
    }

    Date readDateTag(String tag, String caller) throws KSParsingErrorException {
        String[] dater = readAttributes(tag, valHolster, caller);
        Date theDate = null;
        try {
            theDate = UDate.parse(dater[0]);
        }catch(KSDateParseException pex) {
            error("Trying to parseCreateDate: " + pex);
        }
        return theDate;
    }

    String readOneAttribute(String tag, String attribute, String caller)
            throws KSParsingErrorException {
        current = scanner.readToken(); //  consume next, which must match tag
        if (current.lexeme.indexOf("<" + tag) != 0) {
            error(caller + " seeking a tag " + "<" + tag + " ...");
        }
        int attrStart = current.lexeme.indexOf(attribute + "="), 
            quote1 = current.lexeme.indexOf("\"", attrStart) +1,
            quote2 = current.lexeme.indexOf("\"", quote1);
        return current.lexeme.substring(quote1, quote2);
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


    /*
    Location -> "<location x=", integer, "y=", integer, "/>".
         First: [flag: "<location..."]	 Follow: [flag: "<comment..."]
    */
    Point parseLocation() throws KSParsingErrorException {
        String[] attributes = { "x", "y" };
        String[] values = readAttributes("location", attributes, "parseLocation");
        Point loc = new Point();
        loc.x = Integer.parseInt(values[0]);
        loc.y = Integer.parseInt(values[1]);
        return loc;
     }

    /*
    Birth -> "<dateOfBirth value=", string, "/>".
           |  \empty.
         First: [flag: "<dateOfBirth..."]	 Follow: [flag: "<dateOfDeath...", "<dataChangeDate..."]
    */
    void parseBirth(Individual ind) throws KSParsingErrorException {
        current = scanner.lookAhead();  //  inspect the flag.
        if (current.lexeme.indexOf("<dateOfBirth") == 0) {
            String dob = readOneAttribute("dateOfBirth", "value", "parseBirth");
            Date d = null;
            try {
                d = UDate.parse(dob);
            }catch(KSDateParseException dpe) {
                error("parseBirth cannot parse '" + dob + "' as date.\n" + dpe);
            }
            ind.setDateOfBirth(UDate.formatAsXSD(d));
        } else if (current.lexeme.indexOf("<dateOfDeath") == 0
                || current.lexeme.indexOf("<dataChangeDate") == 0) {
            return;
        } else {
            String msg = "parseBirth seeking flag '<dateOfBirth', '<dateOfDeath' ";
            msg += "or '<dataChangeDate' but found " + current.lexeme;
            error(msg);
        }
    }

    /*
    Death -> "<dateOfDeath value=", string, "/>".
         First: [flag: "<dateOfDeath"]	 Follow: [flag: "<dataChangeDate"]
    */
    void parseDeath(Individual ind) throws KSParsingErrorException {
        current = scanner.lookAhead();  //  inspect the flag.
        if (current.lexeme.indexOf("<dateOfDeath") == 0) {
            String dod = readOneAttribute("dateOfDeath", "value", "parseDeath");
            Date d = null;
            try {
                d = UDate.parse(dod);
            }catch(KSDateParseException dpe) {
                error("parseDeath cannot parse '" + dod + "' as date.\n" + dpe);
            }
            ind.setDateOfDeath(UDate.formatAsXSD(d));
        } else if (current.lexeme.indexOf("<dataChangeDate") == 0) {
            return;
        } else {
            String msg = "parseDeath seeking flag '<dateOfDeath' ";
            msg += "or '<dataChangeDate' but found " + current.lexeme;
            error(msg);
        }
    }

    /*
    BirthFam -> "<birthFamily>", IntOrBlank, "</birthFamily>".
         First: [flag: "<birthFamily>"]	 Follow: [flag: "<marriages>"]
    */
    void parseBirthFam(ArrayList<Integer> row) throws KSParsingErrorException {
        current = scanner.readToken();  //  consume the flag, which must be "<birthFamily>"
        if (! current.lexeme.equals("<birthFamily>"))
            error("parseBirthFam seeking flag '<birthFamily>', but found " + current.lexeme);
        parseIntOrBlank(row);
        current = scanner.readToken();  //  consume the flag, which must be "</birthFamily>"
        if (! current.lexeme.equals("</birthFamily>"))
            error("parseBirthFam seeking flag '</birthFamily>'.");
    }

    /*
    IntOrBlank -> integer.
               |  \empty.
         First: [integer]	 Follow: [flag: "</birthFamily>"]
    */
    void parseIntOrBlank(ArrayList<Integer> row) throws KSParsingErrorException  {
        current = scanner.lookAhead();
        if (current.token.equals("integer")) {
            scanner.readToken();  //  consume the integer
            row.add(new Integer(current.lexeme));
        }else if (current.lexeme.equals("</birthFamily>"))
            row.add(new Integer(-1));
        else error("parseIntOrBlank seeking integer or flag '</birthFamily>'.");
    }

    /*
    Marriages -> "<marriages>", Weddings, "</marriages>".
         First: [flag: "<marriages>"]	 Follow: [flag: "<userDefinedProperties>"]
    */
    void parseMarriages(ArrayList<Integer> row) throws KSParsingErrorException  {
        current = scanner.readToken();  //  consume the flag, which must be "<marriages>"
        if (! current.lexeme.equals("<marriages>"))
            error("parseMarriages seeking flag '<marriages>', but found " + current.lexeme);
        parseWeddings(row);
        current = scanner.readToken();  //  consume the flag, which must be "</marriages>"
        if (! current.lexeme.equals("</marriages>"))
            error("parseMarriages seeking flag '</marriages>'.");
    }

    /*
    Weddings -> "<mar n=", integer, "/>", Weddings.
             |  \empty.
         First: [integer]	 Follow: [flag: "</marriages>"]
    */
    void parseWeddings(ArrayList<Integer> row) throws KSParsingErrorException  {
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<mar n=") == 0) {
            row.add(new Integer(readOneAttribute("mar", "n", "parseWeddings")));
            parseWeddings(row);
        }else if (current.lexeme.equals("</marriages>"))
            return;
        else error("parseWeddings seeking tags '<mar...' or '</marriages>'.");
    }

    /*
    StarLinks -> "<starLinks>", Starz, "</starLinks>".
               |  \empty.
         First: [flag: "<starLinks>"]	 Follow: [flag: "</individual>"]
    */
    void parseStarLinks(Individual ind) throws KSParsingErrorException {
        current = scanner.lookAhead();  //  inspect the tag.
        if (current.lexeme.equals("<starLinks>")) {
            scanner.readToken();  //  consume the start tag
            parseStarz(ind);
            current = scanner.readToken();  //  consume the flag, which must be "</starLinks>"
            if (!current.lexeme.equals("</starLinks>")) {
                error("parseStarLinks seeking flag '</starLinks>'.");
            }
        } else if (current.lexeme.equals("</individual>")) {
            return;
        }
        error("parseStarLinks seeking tag '<starLinks>' or '</individual>', but found " + current.lexeme);
    }

    /*
    Starz -> "#", integer, MoreStarz.
          |  \empty.
         First: [integer]	 Follow: [flag: "</starLinks>"]
    */
    void parseStarz(Individual ind) throws KSParsingErrorException  {
        current = scanner.lookAhead();
        if (current.token.equals("pound")) {
            scanner.readToken();  //  consume the pound sign
            current = scanner.readToken();  //  consume next, which must be an integer
            if (! current.token.equals("integer"))
            	error("parseStarz looking for an integer, found " + current.token);
            Integer star = new Integer(current.lexeme),
                    personNmbr = new Integer(ind.serialNmbr);
            ArrayList<Integer> starz = new ArrayList<Integer>();
            starz.add(star);
            starTable.put(personNmbr, starz);
            parseMoreStarz(starz);
        }else if (current.lexeme.equals("</starLinks>"))
            return;
        else error("parseStarz seeking '#' or flag '</starLinks>'.");
    }

    /*
    MoreStarz -> comma, "#", integer, MoreStarz.
              |  \empty.
         First: [comma]	 Follow: [flag: "</starLinks>"]
    */
    void parseMoreStarz(ArrayList<Integer> starList) throws KSParsingErrorException  {
        current = scanner.lookAhead();
        if (current.token.equals("comma")) {
            scanner.readToken();  //  consume the comma
            current = scanner.readToken();  //  consume next, which must be a pound sign
            if (! current.token.equals("pound"))
                    error("parseMoreStarz seeking a pound sign.");
            else {
                current = scanner.readToken();  //  consume next, which must be an integer
                if (! current.token.equals("integer"))
                	error("parseMoreStarz looking for an integer, found " + current.token);
                starList.add(new Integer(current.lexeme));
                parseMoreStarz(starList);
            }
        }else if (current.lexeme.equals("</starLinks>"))
            return;
        else error("parseMoreStarz seeking comma or flag '</starLinks>'.");
    }

    /*
    FamilyCensus -> "<familyCensus>", Families, "</familyCensus>".
                First:  [flag: "<familyCensus>"]		Follow: [flag: "<matrix>"]
    */
    void parseFamilyCensus()  throws KSParsingErrorException  {
        scanner.readToken();  //  consume the start flag (already verified)
        parseFamilies(newCtxt);
        current = scanner.readToken();  // consume next, which must be </familyCensus>
        if (! current.lexeme.equals("</familyCensus>"))  //  empty
            error("parseFamilyCensus seeking tag '</familyCensus>'.");

    }

    /*
    Families -> Family, Families.
                |  \empty.
         First: [flag: "<family..."]	 Follow: [flag: "</familyCensus>"]
    NOTE: Iterative style used here to avoid stack overflows for very large populations.
    */
    void parseFamilies(Context newCtxt)  throws KSParsingErrorException  {
        current = scanner.lookAhead();  //  inspect the flag
        while (current.lexeme.indexOf("<family") == 0) {
			parseFamily(newCtxt);
			current = scanner.lookAhead();  //  inspect the flag
        }
        if (current.lexeme.equals("</familyCensus>"))
            return;
        else error("parseFamilies seeking tags '<family...' or '</familyCensus>'.");
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
    Family -> "<family n=", integer, "/>", Location, FamStats, Comments, Deleted,
               Husband, Wife, Children, "<marriageDate value=", string, "/>",
               "<endDate value=", string, "/>", "<dataChangeDate value=", string, "/>", "</family>".
         First: [flag: "<family>"]	 Follow: [tags: "<family>", "</familyCensus>"]
    */
    void parseFamily(Context newCtxt)  throws KSParsingErrorException  {
        Family fam = new Family(newCtxt, true);  // constructor adds family to context's family census
        int serial = Integer.parseInt(readOneAttribute("family", "n", "parseFamily"));
        if (serial != fam.serialNmbr)
            error("parseFamily trying to create a Family with out-of-sequence serial nmuber.");
        fam.mid = serial +1;
        fam.location = parseLocation();
        fam.reason = readTagEnclosedText("reason", "parseFamStats");
        current = scanner.lookAhead();
        String note = parseComments();
        fam.comment = (note == null ? "" : note);
        fam.deleted = readTaggedBoolean("deleted", "parseFamily");
        ArrayList<Integer> row = new ArrayList<Integer>(4);
        famTable.add(row);
        row.add(serial);
        row.add(new Integer(readOneAttribute("husband", "n", "parseFamily")));
        row.add(new Integer(readOneAttribute("wife", "n", "parseFamily")));
        parseChildren(row);
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<marriageDate") == 0) {
            String marrDate = readOneAttribute("marriageDate", "value", "parseFamily");
            Date d = null;
            try {
                d = UDate.parse(marrDate);
            }catch(KSDateParseException dpe) {
                error("parseFamily cannot parse '" + marrDate + "' as date.\n" + dpe);
            }
            fam.setMarriageDate(UDate.formatAsXSD(d));
        }
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<endDate") == 0) {
            String enDate = readOneAttribute("endDate", "value", "parseFamily");
            if (enDate.equals("null") || enDate.equals("")) {
                fam.setDivorceDate("");
            }else {
                Date d = null;
                try {
                    d = UDate.parse(enDate);
                } catch (KSDateParseException dpe) {
                    error("parseFamily cannot parse '" + enDate + "' as date.\n" + dpe);
                }
                fam.setDivorceDate(UDate.formatAsXSD(d));
            }
        }
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<dataAuthor") == 0) {
            fam.dataAuthor = readOneAttribute("dataAuthor", "name", "parseFamily");
        }
        fam.dataChangeDate = readOneAttribute("dataChangeDate", "value", "parseFamily");
        current = scanner.readToken(); //  consume next, which must be divorceYr flag
        if (! current.lexeme.equals("</family>"))
            error("parseFamily seeking flag '</family>'.");
    }

    /*
    Children -> "<children>", Kids, "</children>".
         First: [flag: "<children>"]	 Follow: [flag: "<marriageDate>"]
    */
    void parseChildren(ArrayList<Integer> row)  throws KSParsingErrorException  {
        current = scanner.readToken();  //  consume the flag, which must be "<children>"
        if (! current.lexeme.equals("<children>"))
            error("parseChildren seeking flag '<children>', but found " + current.lexeme);
        parseKids(row);
        current = scanner.readToken();  //  consume the flag, which must be "</children>"
        if (! current.lexeme.equals("</children>"))
            error("parseChildren seeking flag '</children>'.");
    }


    /*
    Kids -> "<kid n=", integer, "/>", Kids.
          |  \empty.
         First: [integer]	 Follow: [flag: "</children>"]
    */
    void parseKids(ArrayList<Integer> row) throws KSParsingErrorException  {
        current = scanner.lookAhead();
        while (current.lexeme.indexOf("<kid n=") == 0) {
            int kidNum = Integer.parseInt(readOneAttribute("kid", "n", "parseKids"));
            row.add(kidNum);
            current = scanner.lookAhead();
        }
    }

    /*
    Matrix -> "<matrix>", Rows, "</matrix>".
        First: [flag: "<matrix>"]		Follow: [flag: "<dyadsUndefinedRef>"]
    */
    void parseMatrix()  throws KSParsingErrorException, KSInternalErrorException  {
        scanner.readToken();  //  consume the start flag (already verified)
        newCtxt.ktm = new KinTermMatrix();
        parseRows();
        current = scanner.readToken();  // read token, which must be the flag '</matrix>'
        if (! current.lexeme.equals("</matrix>"))
            error("parseMatrix seeking the end flag '</matrix>'. ");
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
        while (current.lexeme.indexOf("<row") == 0) {
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
    Row -> "<row ego=", integer, ">", Cells, "</row>".
         First: [flag: "<row>"]	 Follow: [tags: "<row>", "</matrix>"]
    */
    void parseRow()
            throws KSParsingErrorException, KSInternalErrorException  {
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
        Integer egoInt = new Integer(readOneAttribute("row", "ego", "parseRow"));
        ArrayList<Object> argList = new ArrayList<Object>();
        argList.add(egoInt);
        parseCells(argList);
        current = scanner.readToken();  // read token, which must be the tag '</row>'
        if (! current.lexeme.equals("</row>"))
            error("parseRow seeking the end tag '</row>'. ");
    }

    /*
    Cells -> Cell, Cells.
          |  \empty.
         First: [flag: "<cell>"]	 Follow: [flag: "</row>"]
    */
    void parseCells(ArrayList<Object> argList)
            throws KSParsingErrorException, KSInternalErrorException  {
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<cell") == 0) {
            ArrayList<Object> argListCopy = new ArrayList<Object>(argList);
            parseCell(argListCopy);
            parseCells(argList);
        }else if (current.lexeme.equals("</row>"))  {
            return;
        }else error("parseCells seeking tags '</row>' or '<cell>'.");
    }

    /*
    Cell -> "<cell alter=", integer, ">", NodeComponents, TermGroups, "</cell>".
         First: [flag: "<cell>"]	 Follow: [tags: "</row>", "<cell>"]
    */
    void parseCell(ArrayList<Object> argList)
            throws KSParsingErrorException, KSInternalErrorException  {
        //  At this point, argList contains only ego's serial#
        Integer alterInt = new Integer(readOneAttribute("cell", "alter", "parseCell")),
                egoInt = (Integer)argList.get(0);
        argList.add(alterInt);
        Node newNode = parseNodeComponents(argList);
        parseTermGroups(newNode, argList);
        current = scanner.readToken();  // read token, which must be the flag '</cell>'
        if (! current.lexeme.equals("</cell>"))
            error("parseCell seeking the end flag '</cell>'. ");
        newCtxt.ktm.addNode(egoInt, alterInt, newNode);
    }

    /*
    NodeComponents ->  "<pcString>", text, "</pcString>", "<level>", integer, "</level>", MiniPreds.
    First: [tag: "<pcString>"]	 Follow: [tags:  "<PR>","<ER>","<XR>","<PA>","<EA>","<XA>","</cell>"]
    */
    Node parseNodeComponents(ArrayList<Object> argList)
            throws KSParsingErrorException, KSInternalErrorException {
        //  At this point, argList contains ego's & alter's serial#s
        Node newNode = new Node();
        newNode.indiv = newCtxt.individualCensus.get(((Integer)argList.get(1)).intValue());
        newNode.pcString = readTagEnclosedText("pcString", "parseNodeComponents");
        newNode.setLevel(readTaggedInteger("level", "parseNodeComponents"));
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
        }else if (current.lexeme.equals("</cell>")) {
            return newNode;
        }else error("parseNodeComponents seeking kin terms or </cell>.");
        return newNode;
    }

    /*
    MiniPreds ->  "<pred rel=", text, "arg0=", text, "arg1=", text, "/> ", MiniPreds.
     *         |  \empty.
    First: [tag: "<pred>"]	 Follow: [tags:  "<pred>", "</miniPreds>"]
    */
    void parseMiniPreds(Node tNode)
            throws KSParsingErrorException, KSInternalErrorException {
        //  At this point, tNode contains all but kinTerms
        if (current.lexeme.indexOf("<pred") == 0) {
            String[] attributes = { "rel", "arg0", "arg1" };
            String[] vals = readAttributes("pred", attributes, "parseMiniPreds");
            String mp = vals[0] + "(#" + vals[1] + ",#" + vals[2] + ")";
            tNode.miniPreds.add(mp);
            current = scanner.lookAhead();  // check next tag
        }else if (current.lexeme.equals("</miniPreds>")) {
            return;
        }else error("parseMiniPreds seeking tags '<pred...' or '</miniPreds>'.");
        parseMiniPreds(tNode);
    }


    /*
    TermGroups -> TermGroup, TermGroups.
          |  \empty.
         First: [tags: "<PR>","<ER>","<XR>","<PA>","<EA>","<XA>"]
         Follow: [flag: "</cell>"]
    */
    void parseTermGroups(Node tNode, ArrayList<Object> argList)
            throws KSParsingErrorException, KSInternalErrorException  {
        current = scanner.lookAhead();
        if (validCodes.contains(current.lexeme)) {
            ArrayList<Object> argListCopy = new ArrayList<Object>(argList);
            parseTermGroup(tNode, argListCopy);
            parseTermGroups(tNode, argList);
        }else if (current.lexeme.equals("</cell>"))  {
            return;
        }else error("parseTermGroups seeking tags for valid kinTerm types\n(e.g. '</row>') or the flag '</cell>'.");
    }

    /*
    TermGroup -> TGStartTag, TermStrings, TGEndTag.
         First: [tags: "<PR>","<ER>","<XR>","<PA>","<EA>","<XA>"]
         Follow: [tags: "</cell>","<PR>","<ER>","<XR>","<PA>","<EA>","<XA>"]
    */
    void parseTermGroup(Node tNode, ArrayList<Object> argList)
            throws KSParsingErrorException, KSInternalErrorException  {
        //  At this point, argList contains ego and alter's serial #s
        current = scanner.readToken();  //  consume startTag, already validated
        String startTag = current.lexeme, type = null, clas = null;
        if (startTag.substring(0,2).equals("<P")) type = "primary";
        else if (startTag.substring(0,2).equals("<E")) type = "extended";
        else if (startTag.substring(0,2).equals("<X")) type = "exception";
        else error("parseTermGroup found invalid start tag: " + startTag);
        if (startTag.substring(2,4).equals("R>")) clas = "reference";
        else if (startTag.substring(2,4).equals("A>")) clas = "address";
        else error("parseTermGroup found invalid start tag: " + startTag);
        argList.add(type);
        argList.add(clas);
        parseTermStrings(tNode, argList);
        current = scanner.readToken();  //  consume endTag, which must match startTag
        String endTag = "</" + startTag.substring(1);
        if (! endTag.equals(current.lexeme))
            error("parseTermGroup seeking '" + endTag + "' found: " + current.lexeme);
    }

    /*
    TermStrings -> text, MoreTerms.
         First: [string]	 Follow: [tags: "</PR>","</ER>","</XR>","</PA>","</EA>","</XA>"]
    */
    void parseTermStrings(Node tNode, ArrayList<Object> argList)
            throws KSParsingErrorException, KSInternalErrorException  {
    // Strategy: We expect a series of terms, separated by commas. For example:
    //    'grandson , grandchild , descendent'
    //     All odd-numbered items should be terms, and even ones are commas or the divorceYr tag
        while (true) {
            current = scanner.readToken();  // consume next, which must be a term
            String kinTerm = current.lexeme,
                   type = (String) argList.get(2),
                   addr = ((String) argList.get(3));
            tNode.addTerm(kinTerm, type, addr);
            current = scanner.lookAhead(); // a comma or divorceYr tag
            if (current.lexeme.indexOf("</") == 0) { // end tag
                return;
            }else scanner.readToken();  // consume the comma
        }
    }

    /* HistoryItems -> HistoryItem, HistoryItems.
     *              |  \empty.
     * First: [tag: <history...]
     * Follow: [tag: </learning-history> ]
    */
    void parseHistoryItems(TreeMap<String, ArrayList<Context.HistoryItem>> learningHistory)
              throws KSParsingErrorException {
        current = scanner.lookAhead();
        while (current.lexeme.indexOf("<history") == 0) {
            String kinTerm = readOneAttribute("history", "kinTerm", "parseHistoryItems");
            ArrayList<Context.HistoryItem> items = new ArrayList<Context.HistoryItem>();
            learningHistory.put(kinTerm, items);
            parseItems(items);
            current = scanner.readToken(); // consume end tag
            if (! current.lexeme.equals("</history>")) {
                error("parseHistoryItems seeking tag: </history>");
            }
            current = scanner.lookAhead();
        }
    }

    /*  Items -> Item, Items.
     *        |  \empty.
     * 
     * First: [tag: <accepted-def..., <rejected-def...]
     * Follow: [tags: <accepted-def..., <rejected-def..., </history> ]
     */
    void parseItems(ArrayList<Context.HistoryItem> items) throws KSParsingErrorException {
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<accepted-def") == 0) {
            parseAccDef(items);
            parseItems(items);
        } else if (current.lexeme.indexOf("<rejected-def") == 0) {
            parseRejectedDef(items);
            parseItems(items);
        } else if (current.lexeme.indexOf("<accepted-synonym") == 0) {
            parseSynonymHistItem(items, "accepted");
            parseItems(items);
        } else if (current.lexeme.indexOf("<rejected-synonym") == 0) {
            parseSynonymHistItem(items, "rejected");
            parseItems(items);
        } else if (current.lexeme.indexOf("<accepted-umbrella") == 0) {
            parseUmbrellaHistItem(items, "accepted");
            parseItems(items);
        } else if (current.lexeme.indexOf("<rejected-umbrella") == 0) {
            parseUmbrellaHistItem(items, "rejected");
            parseItems(items);
        } else if (current.lexeme.indexOf("<umbrella-into-synonyms") == 0) {
            parseUmbrella2Synonyms(items);
            parseItems(items);
        } else if (current.lexeme.indexOf("<accepted-overlap") == 0) {
            parseOverlapHistItem(items, "accepted");
            parseItems(items);
        } else if (current.lexeme.indexOf("<rejected-overlap") == 0) {
            parseOverlapHistItem(items, "rejected");
            parseItems(items);
        }
                
                
        else if (current.lexeme.equals("</history>")) {
            return;
        }else {
            error("parseItems seeking tags for accepted/rejected def, syn, umb, overlap or  </history>");
        }
    }

    /*  AutoDefs -> '<auto-def type=', string, '>', Defs, '</auto-def>'.
     *
     *
     */
    void parseAutoDefs(TreeMap<String, ArrayList<Context.CB_Ptr>> autos)
            throws KSParsingErrorException {
        // the start tag has already been consumed
        current = scanner.lookAhead();
        while (current.lexeme.indexOf("<kinType") == 0) {
            String kinType = readOneAttribute("kinType", "type", "parseAutoDefs");
            if (autos.get(kinType) == null) {
                autos.put(kinType, new ArrayList<Context.CB_Ptr>());
            }
            ArrayList<Context.CB_Ptr> ptrs = autos.get(kinType);
            current = scanner.lookAhead();
            while (current.lexeme.indexOf("<def") == 0) {
                String[] vals, names = { "kinTerm", "clause-number" };
                vals = readAttributes("def", names, "parseAutoDefs");
                int cbNum = Integer.parseInt(vals[1]);
                ptrs.add(new Context.CB_Ptr(vals[0], cbNum));
                current = scanner.lookAhead();
            }
            scanner.readToken();  //  consume end tag
            if (!current.lexeme.equals("</kinType>")) {
                error("parseAutoDefs seeking tag: </kinType>");
            }
            current = scanner.lookAhead();
        } // end tag </auto-def> is checked in calling method
    }

    /* AccDedf -> "<accepted-def kinTerm=", string, date=, string, notes=, string "/>",
     *              AutoDefPairs, "</accepted-def>".
     * First: [tag: <accepted-def...]
     * Follow: [tags: <accepted-def..., <rejected-def..., </history> ]
     */
    void parseAccDef(ArrayList<Context.HistoryItem> items)
            throws KSParsingErrorException {
        String[] vals, attributes = {"kinTerm", "date", "rescinded", "notes"};
        vals = readAttributes("accepted-def", attributes, "parseAccDef");
        Context.AcceptedDefPtr ptr = new Context.AcceptedDefPtr(
                vals[0], vals[1], vals[2], vals[3]);
        items.add(ptr);
        current = scanner.lookAhead();
        if (current.lexeme.equals("<auto-defs>")) {
            scanner.readToken();  //  consume start tag
            current = scanner.lookAhead();  //  at least 1 pair required
            if (current.lexeme.indexOf("<pair") != 0) {
                error("parseAccDef seeking tag <pair ego=...");
            }
            while (current.lexeme.indexOf("<pair") == 0) {
                attributes = new String[2];
                attributes[0] = "ego";
                attributes[1] = "alter";
                Integer[] pair = new Integer[2];
                vals = readAttributes("pair", attributes, "parseAccDef");
                pair[0] = Integer.parseInt(vals[0]);
                pair[1] = Integer.parseInt(vals[1]);
                ptr.autoDefPairs.add(pair);
                current = scanner.lookAhead(); 
            }
            if (!current.lexeme.equals("</auto-defs>")) {
                error("parseAccDef seeking end tag </auto-defs>");
            }
            scanner.readToken();  //  consume end tag of auto-defs
            current = scanner.lookAhead();  // look at next tag
        }
        if (current.lexeme.equals("</accepted-def>")) {
            scanner.readToken();  //  consume end tag of accepted-defs
        }else {
            error("parseAccDef seeking end tag </accepted-def>");
        }        
    }


    /* RejectedDedf -> "<rejected-def kinTerm=", string, date=, string,
     *                  sigString=, string, protoLang=, string,
     *                  protoKT=, string, "/>".
     * First: [tag: <rejected-def...]
     * Follow: [tags: <accepted-def..., <rejected-def..., </history> ]
    */
    void parseRejectedDef(ArrayList<Context.HistoryItem> items)
            throws KSParsingErrorException {
        String[] vals, attributes = {"kinTerm", "date", "rescinded", "notes", "sigString",
            "protoLang", "protoKT"};
        vals = readAttributes("rejected-def", attributes, "parseRejectedDefs");
        Context.RejectedPropDefPtr ptr = new Context.RejectedPropDefPtr(
                vals[0], vals[1], vals[2], vals[3], vals[4], vals[5], vals[6]);
        items.add(ptr);
    }
    
    
    /* Synonym -> <"typ-synonym primary=", string, "date=", string,
     * "notes=", string, "synonym=", string, ">".
     * */
    void parseSynonymHistItem(ArrayList<Context.HistoryItem> items, String typ) 
            throws KSParsingErrorException {
        String tag = typ + "-synonym";
        String[] vals, attributes = {"primary", "date", "rescinded", "notes", "synonym"};
        vals = readAttributes(tag, attributes, "parseSynonymHistItem");
        Context.HistoryItem item;
        if (typ.equals("accepted")) {
            item = new Context.AcceptedSynonym(vals[0], vals[1], vals[2], vals[3], vals[4]);
        }else {
            item = new Context.RejectedSynonym(vals[0], vals[1], vals[2], vals[3], vals[4]);
        } // any 'typ' other than 'rejected' or 'accepted' will throw error in readAttributes
        items.add(item);
    }
    
    
    /* Umbrella -> "<typ-umbrella primary=", string, "date=", string,
     * "notes=", string, ">", SubTerms, "</typ-umbrella".
     * */
    void parseUmbrellaHistItem(ArrayList<Context.HistoryItem> items, String typ)
            throws KSParsingErrorException {
        String tag = typ + "-umbrella";
        String[] vals, attributes = {"umbTerm", "date", "rescinded", "notes"};
        vals = readAttributes(tag, attributes, "parseUmbrellaHistItem");
        ArrayList<String> originalSubs = new ArrayList<String>(),
                editedSubs = new ArrayList<String>(), newAdds = null;
        current = scanner.lookAhead();
        if (current.lexeme.equals("<original-sub-terms>")) {
            scanner.readToken();  //  consume the start tag
            current = scanner.lookAhead();
            while (current.lexeme.indexOf("<sub-term") == 0) {
                originalSubs.add(readOneAttribute("sub-term", "value", "parseUmbrellaHistItem"));
                current = scanner.lookAhead();
            }
            if (!current.lexeme.equals("</original-sub-terms>")) {
                error("parseUmbrellaHistItem seeking end tag </original-sub-terms>");
            }
            scanner.readToken();  //  consume the end tag
            current = scanner.lookAhead();
        }        
        if (current.lexeme.equals("<edited-sub-terms>")) {
            scanner.readToken();  //  consume the start tag
            current = scanner.lookAhead();
            while (current.lexeme.indexOf("<sub-term") == 0) {
                editedSubs.add(readOneAttribute("sub-term", "value", "parseUmbrellaHistItem"));
                current = scanner.lookAhead();
            }
            if (!current.lexeme.equals("</edited-sub-terms>")) {
                error("parseUmbrellaHistItem seeking end tag </edited-sub-terms>");
            }
            scanner.readToken();  //  consume the end tag
            current = scanner.lookAhead();
        }
        if (current.lexeme.equals("<added-sub-terms>")) {
            scanner.readToken();  //  consume the start tag
            newAdds = new ArrayList<String>();
            current = scanner.lookAhead();
            while (current.lexeme.indexOf("<sub-term") == 0) {
                newAdds.add(readOneAttribute("sub-term", "value", "parseUmbrellaHistItem"));
                current = scanner.lookAhead();
            }
            if (!current.lexeme.equals("</added-sub-terms>")) {
                error("parseUmbrellaHistItem seeking end tag </added-sub-terms>");
            }
            scanner.readToken();  //  consume the end tag
        }
        Context.HistoryItem item;
        if (typ.equals("accepted")) {
            item = new Context.AcceptedUmbrella(vals[0], vals[1], vals[2], vals[3], originalSubs, editedSubs);
            ((Context.AcceptedUmbrella) item).addedSubTerms = newAdds;
        } else {
            item = new Context.RejectedUmbrella(vals[0], vals[1], vals[2], vals[3], originalSubs);
        } // any 'typ' other than 'rejected' or 'accepted' will throw error in readAttributes
        items.add(item);
        current = scanner.readToken(); // consume next, which must be end tag
        if (!current.lexeme.equals("</" + tag + ">")) {
            error("parseUmbrellaHistItem seeking end tag " + "</" + tag + ">");
        }
    }
    
    
    void parseUmbrella2Synonyms(ArrayList<Context.HistoryItem> items) 
            throws KSParsingErrorException {
        String[] vals, attributes = {"umbTerm", "date", "rescinded", "newKey", "notes"};
        vals = readAttributes("umbrella-into-synonyms", attributes, "parseUmbrella2Synonyms");
        ArrayList<String> subs = new ArrayList<String>();
        current = scanner.lookAhead();
        if (current.lexeme.equals("<sub-terms>")) {
            scanner.readToken();  //  consume the start tag
            current = scanner.lookAhead();
            while (current.lexeme.indexOf("<sub-term") == 0) {
                subs.add(readOneAttribute("sub-term", "value", "parseUmbrella2Synonyms"));
                current = scanner.lookAhead();
            }
            if (!current.lexeme.equals("</sub-terms>")) {
                error("parseUmbrella2Synonyms seeking end tag </sub-terms>");
            }
            scanner.readToken();  //  consume the end tag
        }
        ArrayList<String> syns = new ArrayList<String>();
        current = scanner.lookAhead();
        if (current.lexeme.equals("<syn-terms>")) {
            scanner.readToken();  //  consume the start tag
            current = scanner.lookAhead();
            while (current.lexeme.indexOf("<syn-term") == 0) {
                syns.add(readOneAttribute("syn-term", "value", "parseUmbrella2Synonyms"));
                current = scanner.lookAhead();
            }
            if (!current.lexeme.equals("</syn-terms>")) {
                error("parseUmbrella2Synonyms seeking end tag </syn-terms>");
            }
            scanner.readToken();  //  consume the end tag
        }
        current = scanner.readToken(); // consume next, which must be end tag
        if (!current.lexeme.equals("</umbrella-into-synonyms>")) {
            error("parseUmbrellaHistItem seeking end tag " + "</umbrella-into-synonyms>");
        }
        Context.HistoryItem item = new Context.UmbrellaIntoSyns(vals[0], vals[1], 
                vals[2], vals[4], subs, syns, vals[3]);
        items.add(item);
    }
    
    
    void parseOverlapHistItem(ArrayList<Context.HistoryItem> items, String typ) 
            throws KSParsingErrorException {
        String tag = typ + "-overlap";
        String[] vals, attributes = {"term1", "date", "rescinded", "notes", "term2"};
        vals = readAttributes(tag, attributes, "parseOverlapHistItem");
        Context.HistoryItem item;
        if (typ.equals("accepted")) {
            item = new Context.AcceptedOverlap(vals[0], vals[1], vals[2], vals[3], vals[4]);
        }else {
            item = new Context.RejectedOverlap(vals[0], vals[1], vals[2], vals[3], vals[4]);
        } // any 'typ' other than 'rejected' or 'accepted' will throw error in readAttributes
        items.add(item);
    }
    

    /*
    KinTypeIndex -> Entries, KinTypeIndex.
                 |  \empty.
        First:  [flag: "<entry ....."]
        Follow: [flag: "</kinTypeIndex>"]
    */
    void parseKinTypeIndex(KinTypeIndex kti)  throws KSParsingErrorException {
        if (lastPersonIndexed != -99) kti.lastSerial = lastPersonIndexed;
        current = scanner.lookAhead();  //  load the tag
        if (current.lexeme.substring(0,6).equals("<entry")) {
            parseEntries(kti);
        }else if (current.lexeme.equals("</kinTypeIndex>")) {
            return;
        }else error("parseKinTypeIndex seeking entry or flag </kinTypeIndex>.");
    }

    /*
    Entries -> "<entry kt=", string, ">", Pairs, "</entry>", Entries.
                 |  \empty.
        First:  [flag: "<entry ....."]
        Follow: [flags: "<entry .....", "</kinTypeIndex>"]
    */
    void parseEntries(KinTypeIndex kti) throws KSParsingErrorException {
        String kt = readOneAttribute("entry", "kt", "parseEntries");
        current = scanner.lookAhead();  //  load the first pair
        if (current.lexeme.substring(0,5).equals("<pair")) {
            ArrayList<Integer[]> pairs = new ArrayList<Integer[]>();
            parsePairs(pairs);
            kti.addList(kt, pairs);
        }else {
            error("parseEntries found kin type with no entries.");
        }
        scanner.readToken();  //  consume the entry divorceYr tag
        current = scanner.lookAhead();  //  load the next tag
        if (current.lexeme.substring(0,6).equals("<entry")) {
            parseEntries(kti);
        }else if (current.lexeme.equals("</kinTypeIndex>")) {
            return;
        }else error("parseEntries seeking entry or flag </kinTypeIndex>.");
    }

    /*
    Pairs -> "<pair from=", integer, " to=", integer, "/>", Pairs.
                 |  \empty.
        First:  [flag: "<pair ....."]
        Follow: [flags: "<pair .....", "</entry>"]
    */
    void parsePairs(ArrayList<Integer[]> list) throws KSParsingErrorException {
        String[] attributes = { "from", "to" };
        String[] values = readAttributes("pair", attributes, "parsePairs");
        Integer[] pair = new Integer[2];
        pair[0] = new Integer(values[0]);
        pair[1] = new Integer(values[1]);
        list.add(pair);
        current = scanner.lookAhead();  //  load the next pair or divorceYr-tag
        if (current.lexeme.substring(0,5).equals("<pair")) {
            parsePairs(list);
        }else if (current.lexeme.equals("</entry>")) {
            return;
        }else error("parsePairs seeking pair or </entry> but found " +
                current.lexeme);
    }


    /*
    DyadKinTerms -> DyadKinTerm, DyadKinTerms.
                 |  \empty.
        First:  [tag: "<dyadKinTerm..."]
        Follow: [flags: "</dyadsDefinedRef>", "</dyadsUndefinedRef>", "</dyadsDefinedAddr>", "</dyadsDefinedAddr>"]

     * STRATEGY:  Capture each kinTerm and kinType and pass them down to the parseDyads method,
     *            which will build the actual dyads and add them to the DyadTMap

     NOTE: Iterative style used here to avoid stack overflows for very large populations.
    */
    void parseDyadKinTerms(ArrayList<DyadTemp> dList) throws KSParsingErrorException  {
        current = scanner.lookAhead();  //  load the tag
        while (current.lexeme.indexOf("<dyadKinTerm") == 0) {
            parseDyadKinTerm(dList);
            current = scanner.lookAhead();  //  reload the tag
        }
        return;  // calling method will check the divorceYr flag.
    }


    /*
    DyadKinTerm -> "<dyadKinTerm kinterm=", string, ">", KinType, MoreTypes, "</dyadKinTerm>".
        First:  [tag: "<dyadKinTerm..."]
        Follow: [tags: "<dyadKinTerm...", "</dyadsDefinedRef>", "</dyadsUndefinedRef>", "</dyadsDefinedAddr>", "</dyadsDefinedAddr>"]
    */
    void parseDyadKinTerm(ArrayList<DyadTemp> dList) throws KSParsingErrorException  {
        String kinTerm = readOneAttribute("dyadKinTerm", "kinterm", "parseDyadKinTerm");
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<kinType") == 0) {
        		parseKinType(dList, kinTerm);
        		parseMoreTypes(dList, kinTerm);
		  }else error("parseDyadKinTerm seeking tag '<kinType...'; found " +
		  						current.lexeme);
        current = scanner.readToken();  // read token, which must be the flag '</dyadKinTerm>'
        if (! current.lexeme.equals("</dyadKinTerm>"))
            error("parseDyadKinTerm seeking the end flag '</dyadKinTerm>'. ");
    }

    /*
    MoreTypes -> KinType, MoreTypes.
             |  \empty.
         First: [flag: "<kinType>"]	 Follow: [flag: "</dyadKinTerm>"]
    */
    void parseMoreTypes(ArrayList<DyadTemp> dList, String kinTerm) throws KSParsingErrorException  {
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<kinType") == 0) {
            parseKinType(dList, kinTerm);
            parseMoreTypes(dList, kinTerm);
        }else if (current.lexeme.equals("</dyadKinTerm>"))
            return;
        else error("parseMoreTypes seeking tags '<kinType>' or '</dyadKinTerm>'.");
    }

    /*
    KinType -> "<kinType type=", string, ">", Dyad, MoreDyads, "</kinType>".
         First: [flag: "<kinType>"]	 Follow: [tags: "<kinType>", "</dyadKinTerm>"]
    */
    void parseKinType(ArrayList<DyadTemp> dList, String kinTerm) throws KSParsingErrorException {
        String kinType = readOneAttribute("kinType", "type", "parseKinType");
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
    void parseMoreDyads(ArrayList<DyadTemp> dList, String kinTerm, String kinType) throws KSParsingErrorException  {
        current = scanner.lookAhead();
        if (current.token.equals("onePcTag")) {
            parseDyad(dList, kinTerm, kinType);
            parseMoreDyads(dList, kinTerm, kinType);
        }else if (current.lexeme.equals("</kinType>"))
            return;
        else error("parseMoreDyads seeking onePcTag or tag '</dyadKinTerm>'.");
    }

    /*	Dyad -> onePcTag.
            First: [onePcTag]	 Follow: [onePcTag, tag: "</kinType>"]
            </p>   <p>

            NOTE:  a onePcTag consists of: "<dyad", DyadComponents, "/>".
            First: [tag: "<dyad"]	 Follow: [onePcTag, "</kinType>"]
    */
    void parseDyad(ArrayList<DyadTemp> dList, String kinTerm, String pcStr) throws KSParsingErrorException  {
    scanner.readToken();  //  consume the onePcTag
    String innards = current.lexeme;
    if (! innards.substring(0, 5).equals("<dyad"))
            error("parseDyad found onePcTag not starting with '<dyad'.");
    else innards = innards.substring(6);  // trim off the '<dyad '
    DyadTemp newDyad = new DyadTemp();
    newDyad.pcString = pcStr;
    newDyad.kinTerm = kinTerm;
    parseDyadComponents(newDyad, innards);
    dList.add(newDyad);
}

	/*DyadComponents -> "level=", int, DyadComponents.
                        | "kinTerm=", string, DyadComponents.
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
        } else if (attr.equals("pcString=")) {
            dy.pcString = val;
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
	String[ ] nextPair(String str)  throws KSParsingErrorException {
		String[ ] thePair = new String[3];
		int eql = str.indexOf("=");
		if (eql > 0) {
			thePair[0] = str.substring(0, eql +1);
			str = str.substring(eql +1);
		}else if (str.equals("/>") || str.equals(" />")) {
			thePair[0] = str.trim();
			return thePair;
		}else error("nextPair did not find an attribute/value pair in " + str);
		int quot1 = str.indexOf("\""),
			quot2 = str.indexOf("\"", quot1 +1);
		if (quot2 < 1) error("nextPair did not find a valid value-string in " + str);
		thePair[1] = str.substring(quot1+1, quot2);
		thePair[2] = str.substring(quot2 +1);
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
            KSBadHornClauseException, KSInternalErrorException, KSConstraintInconsistency, KSDateParseException {
        if (current.lexeme.equals("<silkin-issues type=\"Reference\">")) {
            scanner.readToken();  //  consume the start flag
            DomainTheory dt = newCtxt.domTheoryRef();
            dt.issuesForUser = new TreeMap<String, ArrayList<Issue>>();
            issuesFor = "REF";
            parseIssues(dt.issuesForUser);
            current = scanner.readToken();  // read token, which must be the flag '</silkin-issues>'
            if (! current.lexeme.equals("</silkin-issues>"))
                error("parseIssueLists seeking the end flag '</silkin-issues>'. ");
            current = scanner.lookAhead();
            parseIssueLists();
        }else if (current.lexeme.equals("<silkin-issues type=\"Address\">")) {
            scanner.readToken();  //  consume the start flag
            DomainTheory dt = newCtxt.domTheoryAdr();
            dt.issuesForUser = new TreeMap<String, ArrayList<Issue>>();
            issuesFor = "ADR";
            parseIssues(dt.issuesForUser);
            current = scanner.readToken();  // read token, which must be the flag '</silkin-issues>'
            if (! current.lexeme.equals("</silkin-issues>"))
                error("parseIssueLists seeking the end flag '</silkin-issues>'. ");
            current = scanner.lookAhead();
            parseIssueLists();
        }else if (current.lexeme.equals("</SIL_KinData>")) {
            return;
        }else {
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
        if (current.lexeme.substring(0,13).equals("<proposed-def")) {
            ProposedDef def = parsePropDef();
            addToIssues(issues, def);
            parseIssues(issues);
        }else if (current.lexeme.substring(0,8).equals("<anomaly")) {
            parseAnomaly(issues);
            parseIssues(issues);
        }else if (current.lexeme.substring(0,13).equals("<data-request")) {
            parseDataRequest(issues);
            parseIssues(issues);
        }else if (current.lexeme.substring(0,8).equals("<overlap")) {
            parseOverlap(issues);
            parseIssues(issues);
        }else if (current.lexeme.substring(0,8).equals("<synonym")) {
            parseSynonym(issues);
            parseIssues(issues);
        }else if (current.lexeme.substring(0,9).equals("<umbrella")) {
            parseUmbrella(issues);
            parseIssues(issues);
        }else if (current.lexeme.equals("</silkin-issues>")) {
            return;
        } else error("parseIssues seeking valid issue tag or '</silkin-issues>'. ");
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
        }else if (current.lexeme.substring(0, 13).equals("<proposed-def")) {
            ProposedDef def = parsePropDef();
            propDefs.add(def);
            parsePropDefs(propDefs);
        }else error("parsePropDefs seeking a PropDef, or tag '</accepted-defs>'.");
    }


    /*PropDef -> "<proposed-def kinTerm=", string, ">", KinTermDef, Questions,
                  OptionalElements, "<request-date>", DateString + "</request-date>",
                    </proposed-def>".
         First: [<proposed-def]
 	 Follow: [<proposed-def, <anomaly, <data-request, <overlap, <synonym, <umbrella, </silkin-issues>]
	*/
    ProposedDef parsePropDef() throws KSParsingErrorException, KSDateParseException {
        String kinTerm = readOneAttribute("proposed-def", "kinTerm", "parsePropDef");
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
        if (issues.get(kinTerm) == null) issues.put(kinTerm, new ArrayList<Issue>());
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
        String term = readTagEnclosedText("head", "parseKinTermDef");
        KinTermDef ktd = new KinTermDef(term);
        current = scanner.lookAhead();
        if (current.lexeme.equals("<eqcSigExact>")) {
            ktd.eqcSigExact = readTagEnclosedText("eqcSigExact", "parseKinTermDef");
            current = scanner.lookAhead();
        }
        if (current.lexeme.equals("<eqcSigStruct>")) {
            ktd.eqcSigStruct = readTagEnclosedText("eqcSigStruct", "parseKinTermDef");
            current = scanner.lookAhead();
        }
        if (current.lexeme.indexOf("<comments") == 0) {  // optional comments
            ktd.comments = readOneAttribute("comments", "text", "parseKinTermDef");
            current = scanner.lookAhead();
        }
        current = scanner.lookAhead(); //  check for <domain-theory> tag
        if (current.lexeme.equals("<domain-theory>")) {
            scanner.readToken(); // consume <domain-theory> tag
            ktd.domTh = parseDT_Highlights();
            current = scanner.readToken(); // must be </domain-theory> tag
            if (!current.lexeme.equals("</domain-theory>")) {
                error("parseKinTermDef seeking tag '</domain-theory>'. ");
            }
            ktd.domTh.addTerm(ktd);
        }
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
        current = scanner.readToken(); // must be divorceYr tag
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
        current = scanner.readToken(); // must be divorceYr tag
        if (!current.lexeme.equals("</expandedDefs>")) {
            error("parseExpandedDefs seeking tag '</expandedDefs>'. ");
        }
    }

    /* ClauseBody -> "<clause level=", integer, ">", PCString, PCStringStruct,
                        Literal, Literals, "</clause>".
	 First: [<clause>]
 	 Follow: [<clause>, </definitions>, </expandedDefs>, </kin-term-def>]
	*/
    ClauseBody parseClauseBody() throws KSParsingErrorException {
        current = scanner.lookAhead(); // must be start tag of clause
        if (current.lexeme.indexOf("<clause") != 0) {
            error("parseClauseBody seeking tag '<clause>'. ");
        }
        ClauseBody cb = new ClauseBody();
        if (current.lexeme.indexOf("<clause level=") == 0) {
            String lvl = readOneAttribute("clause", "level", "parseClauseBody");
            cb.level = Integer.parseInt(lvl);
        } else {
            scanner.readToken(); // consume start tag with no attribute
        }
        current = scanner.lookAhead();
        if (current.lexeme.equals("<pc-string>")) {
            cb.pcString = readTagEnclosedText("pc-string", "parseClauseBody");
            current = scanner.lookAhead();
        }
        if (current.lexeme.equals("<pc-string-structural>")) {
            cb.pcStringStructural = readTagEnclosedText("pc-string-structural", "parseClauseBody");
        }
        Literal lit = parseLiteral(cb);
        cb.body.add(lit);
        parseLiterals(cb);
        current = scanner.readToken(); // must be divorceYr tag of clause
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
        if (current.lexeme.indexOf("<clause") == 0) {
            ClauseBody cb = parseClauseBody();
            list.add(cb);
            cb.ktd = ktd;
            parseClauseBodies(ktd, list);
        }else if (current.lexeme.equals("</kin-term-def>") ||
                  current.lexeme.equals("</expandedDefs>") ||
                  current.lexeme.equals("</definitions>")) {
            return;
        }else {
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
        String predName = readTagEnclosedText("predicate", "parseLiteral");
        PredCategory cat = determinePrimitive(predName);
        Predicate pred = new Predicate(predName, cat);
        Literal lit = new Literal(pred);
        current = scanner.readToken(); // must be start tag of arg-list
        if (!current.lexeme.equals("<arg-list>")) {
            error("parseLiteral seeking tag '<arg-list>'. ");
        }
        parseArg(lit, cb);
        parseArgs(lit, cb);
        current = scanner.readToken(); // must be divorceYr tag of arg-list
        if (!current.lexeme.equals("</arg-list>")) {
            error("parseLiteral seeking tag '</arg-list>'. ");
        }
        current = scanner.readToken(); // must be divorceYr tag of literal
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
        }else if (current.lexeme.equals("</clause>")) {
            return;
        }else {
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
        }else if (current.lexeme.equals("<clause>")) {
            ClauseBody cbLit = parseClauseBody();
            cbLit.ktd = cb.ktd;
            lit.args.add(cbLit);
        }else if (current.lexeme.equals("<constant>")) {
            String argSymbol = readTagEnclosedText("constant", "parseArg");
            Constant connie = new Constant(argSymbol);
            lit.args.add(connie);
        }else if (current.lexeme.equals("<argString>")) {
            String argSymbol = readTagEnclosedText("argString", "parseArg");
            ArgString arnie = new ArgString(argSymbol);
            lit.args.add(arnie);
        }else if (current.lexeme.equals("<var>")) {
            String argSymbol = readTagEnclosedText("var", "parseArg");
            Variable v = new Variable(argSymbol);
            lit.args.add(v);
        }else if (current.lexeme.equals("<mathVar>")) {
            String argSymbol = readTagEnclosedText("mathVar", "parseArg");
            Variable v = new Variable(argSymbol);
            MathVariable mv = new MathVariable(v);
            lit.args.add(mv);
        }else {
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
        }else if (current.lexeme.equals("</arg-list>")) {
            return;
        }else {
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
        String qn = readOneAttribute("qn", "text", "parseQuestions");
        issue.questions.add(qn);
        current = scanner.lookAhead(); // must be start tag <qn>
        // There may be zero or more other questions
        while (current.lexeme.equals("<qn>")) {
            qn = readTagEnclosedText("qn", "parseQuestions");
            issue.questions.add(qn);
            current = scanner.lookAhead();
        }
        if (! current.lexeme.equals("</questions>")) {
            error("parseQuestions seeking tag '</questions>'.");
        }
    }

    ArrayList<Object> parseDyadAList() throws KSParsingErrorException {
        ArrayList<Object> dyads = new ArrayList<Object>();
        current = scanner.lookAhead();
        while (current.lexeme.substring(0,5).equals("<dyad")) {
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
            }catch(Exception ex) {
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
    Library.KTD_EQC parseKTD_EQC()  throws KSParsingErrorException {
        // start tag has already been consumed
        Library.KTD_EQC eqc = new Library.KTD_EQC();
        eqc.sigString = readTagEnclosedText("signature-string", "parseKTD_EQC");
        current = scanner.readToken();
        if (current.lexeme.equals("<prototype>")) {
            eqc.prototype = parseKTD_Ptr();
        }else error("parseKTD_EQC seeking tag '<prototype>'.");
        current = scanner.readToken();
        if (! current.lexeme.equals("</prototype>")) {
            error("parseKTD_EQC seeking tag '</prototype>'.");
        }
        current = scanner.readToken();
        if (current.lexeme.equals("<members>")) {
            eqc.members = new ArrayList<Object>();
            parseMemberList(eqc.members);
        }else error("parseKTD_EQC seeking tag '<members>'.");
        current = scanner.readToken();
        if (! current.lexeme.equals("</members>")) {
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
        if (! current.lexeme.equals("</kin-term-eqc>")) {
            error("parseKTD_EQC seeking tag '</kin-term-eqc>'.");
        }
        return eqc;
    }

    /* KTD_Ptr -> "<kin-term-context>", KinTermDef, "</kin-term-context>".
         First: [<kin-term-context>]
 	 Follow: [</prototype>]
	*/
    Library.KTD_Ptr parseKTD_Ptr() throws KSParsingErrorException  {
        Library.KTD_Ptr ptr = new Library.KTD_Ptr();
        current = scanner.readToken();
        if (! current.lexeme.equals("<kin-term-context>")) {
            error("parseKTD_Ptr seeking tag '<kin-term-context>'.");
        }
        current = scanner.readToken(); // consume the <kin-term-def> tag
        ptr.setKTD(parseKinTermDef());
        ptr.getLangFromKTD();
        current = scanner.readToken();
        if (! current.lexeme.equals("</kin-term-context>")) {
            error("parseKTD_Ptr seeking tag '</kin-term-context>'.");
        }
        return ptr;
    }

    /* DT_Highlights -> "<language name=", string , "/>",
                   OptionalPolygamyFlag, "<author name=", string, "/>",
                   "<create-date value=", string "/>", 
                    "<citation txt=", string, "/>".
         First: [<language...]
 	 Follow: [</domain-theory>]
	*/
    DomainTheory parseDT_Highlights() throws KSParsingErrorException  {
        DomainTheory dt = new DomainTheory();
        dt.languageName = readOneAttribute("language", "name", "parseDT_Highlights");
        current = scanner.lookAhead();
        dt.polygamyOK = false;
        if (current.lexeme.equals("<polygamyOK />")) {
            dt.polygamyOK = true;
            scanner.readToken(); // consume this optional tag
            current = scanner.lookAhead();
        }
        if (current.lexeme.indexOf("<author") == 0) {
            dt.author = readOneAttribute("author", "name", "parseDT_Highlights");
            current = scanner.lookAhead();
        }
        dt.createDate = readOneAttribute("create-date", "value", "parseDT_Highlights");
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<citation") == 0) {
            dt.citation = readOneAttribute("citation", "txt", "parseDT_Highlights");
        }
        return dt;
    }

    /* MemberList -> KTD_Ptr, MemberList.
                  |  \empty.
         First: [<kin-term-context>]
 	 Follow: [</members>]
	*/
    void parseMemberList(ArrayList<Object> list) throws KSParsingErrorException  {
        current = scanner.lookAhead();
        if (current.lexeme.equals("<kin-term-context>")) {
            list.add(parseKTD_Ptr());
            parseMemberList(list);
        }else if (! current.lexeme.equals("</members>")) {
            error("parseMemberList seeking '<kin-term-context>' or '</members>'.");
        }
        return;
    }

    ArrayList<Object> parseCBList() throws KSParsingErrorException {
        ArrayList<Object> list = new ArrayList<Object>();
        current = scanner.lookAhead();
        while (current.lexeme.startsWith("<clause")) {
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
        int start = current.lexeme.indexOf("\"") +1,
            stop = current.lexeme.indexOf("\"", start);
        Anomaly anna = new Anomaly();
        anna.kinTerm = current.lexeme.substring(start, stop);
        current = scanner.lookAhead(); // may be start tag of optional <processed> block
        if (current.lexeme.equals("<processed>")) {
            anna.processed = readTaggedBoolean("processed", "parseAnomaly");
        }
        anna.basisType = readTagEnclosedText("basis-type", "parseAnomaly");
        anna.anomalyType = readTagEnclosedText("anomaly-type", "parseAnomaly");
        current = scanner.readToken();
        if (current.lexeme.equals("<questions>")) {
            parseQuestions(anna);
            scanner.readToken(); // consume the </questions> tag
            current = scanner.readToken();
        }
        if (! current.lexeme.equals("<basis>")) {
            error("parseAnomaly seeking tag '<basis>'");
        }
        current = scanner.lookAhead();
        if (current.lexeme.equals("<barriers />")) {
            scanner.readToken(); // consume token, but do nothing
        }else if (current.lexeme.equals("<kin-term-def>")) {
            scanner.readToken();
            anna.basis.add(parseKinTermDef());
        }else if (current.lexeme.equals("<kin-term-def>")) {
            anna.basis.add(parseClauseBody());
        }else {
            error("parseAnomaly seeking tag '<barriers />', a ClauseBody, or a KinTermDef.");
        }
        current = scanner.readToken();
        if (! current.lexeme.equals("</basis>")) {
            error("parseAnomaly seeking tag '</basis>'");
        }
        current = scanner.readToken();
        if (! current.lexeme.equals("<misfits>")) {
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
        if (! current.lexeme.equals("</misfits>")) {
            error("parseAnomaly seeking tag '</misfits>'");
        }
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<request-date") == 0) {
            scanner.readToken();
        }
        current = scanner.readToken();
        if (! current.lexeme.equals("</anomaly>")) {
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
        int start = current.lexeme.indexOf("\"") +1,
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
        current = scanner.readToken();
        if (! current.lexeme.equals("</data-request>")) {
            error("parseDataRequest seeking tag '</data-request>'");
        }
        addToIssues(issues, dis);
    }


    ArrayList<Library.CB_Ptr> parseCB_Ptrs() throws KSParsingErrorException {
        ArrayList<Library.CB_Ptr> theList = new ArrayList<Library.CB_Ptr>();
        current = scanner.lookAhead();
        if (current.lexeme.equals("<error>")) {
            String errMsg = readTagEnclosedText("error", "parseCB_Ptrs");
            errMsg += "\nSkipping this damaged Data Request.";
            MainPane.displayError(errMsg, "SILKin Internal Error", JOptionPane.ERROR_MESSAGE);
            theList.addAll(parseCB_Ptrs());
        }else if (current.lexeme.equals("<kin-type-dyad>")) {
            scanner.readToken(); // consume the start tag
            Library.CB_Ptr ptr = new Library.CB_Ptr();
            ptr.cbEQC = new Library.CB_EQC();
            ptr.cbEQC.pcString = readTagEnclosedText("pc-string", "parseCB_Ptrs");
            ptr.clause = parseClauseBody();
            current = scanner.readToken();
            if (!current.lexeme.equals("</kin-type-dyad>")) {
                error("parseCB_Ptrs seeking tag '</kin-type-dyad>'");
            }
            theList.add(ptr);
            theList.addAll(parseCB_Ptrs());
        }else if (current.lexeme.equals("<named-dyad>")) {
            scanner.readToken(); // consume the start tag
            // ignore the next 2 blocks
            readTaggedInteger("ego-serial", "parseCB_Ptrs");
            readTaggedInteger("alter-serial", "parseCB_Ptrs");
            Library.CB_Ptr ptr = new Library.CB_Ptr();
            ptr.cbEQC = new Library.CB_EQC();
            ptr.cbEQC.pcString = readTagEnclosedText("pc-string", "parseCB_Ptrs");
            ptr.clause = parseClauseBody();
            current = scanner.readToken();
            if (!current.lexeme.equals("</named-dyad>")) {
                error("parseCB_Ptrs seeking tag '</named-dyad>'");
            }
            theList.add(ptr);
            theList.addAll(parseCB_Ptrs());
        }else if (current.lexeme.indexOf("<request-date") == 0) {
            return theList;
        }else if (current.lexeme.equals("</data-request>")) {
            return theList;
        }else {
            error("parseCB_Ptrs seeking tags: <named-dyad>, <request-date>, <error>, or <kin-type-dyad>.");
        }
        return theList;
    }


    /*Overlap -> "<overlap kinTerm=", string. ">", Overlap, "</overlap>", Issues.
        First: [<overlap]
 	 Follow: [<proposed-def, <anomaly, <data-request, <overlap, <synonym, <umbrella, </silkin-issues>]
	*/
    void parseOverlap(TreeMap<String, ArrayList<Issue>> issues) throws KSParsingErrorException, KSDateParseException {
        scanner.readToken(); // consume the start tag
        int start = current.lexeme.indexOf("\"") +1,
            stop = current.lexeme.indexOf("\"", start);
        OverlapCandidate oc = new OverlapCandidate();
        oc.kinTerm = current.lexeme.substring(start, stop);
        current = scanner.lookAhead(); // may be start tag of optional <processed> block
        if (current.lexeme.equals("<processed>")) {
            oc.processed = readTaggedBoolean("processed", "parseOverlap");
        }
        oc.otherTerm = readTagEnclosedText("other-term", "parseOverlap");
        oc.ktermDyads = new ArrayList<Object>();
        current = scanner.readToken();  // read <kinTerm-dyads> tag
        if (! current.lexeme.equals("<kinTerm-dyads>")) {
            error("parseOverlap seeking tag '<kinTerm-dyads>'");
        }
        ArrayList<DyadTemp> dyads = new ArrayList<DyadTemp>();
        current = scanner.lookAhead();
        while (current.lexeme.substring(0,5).equals("<dyad")) {
            // kinTerm & pcString will be filled in from the dyad
            parseDyad(dyads, "TBD", "TBD");
            current = scanner.lookAhead();
        }
        current = scanner.readToken();  // read </kinTerm-dyads> tag
        if (! current.lexeme.equals("</kinTerm-dyads>")) {
            error("parseOverlap seeking tag '</kinTerm-dyads>'");
        }
        oc.ktermDyads = new ArrayList<Object>();
        for (DyadTemp dt : dyads) {
            dt.postDyad(oc.ktermDyads, newCtxt);
        }
        current = scanner.readToken();  // read <other-term-dyads> tag
        if (! current.lexeme.equals("<other-term-dyads>")) {
            error("parseOverlap seeking tag '<other-term-dyads>'");
        }
        dyads = new ArrayList<DyadTemp>();
        current = scanner.lookAhead();
        while (current.lexeme.substring(0,5).equals("<dyad")) {
            parseDyad(dyads, "TBD", "TBD");
            current = scanner.lookAhead();
        }
        current = scanner.readToken();  // read </other-term-dyads> tag
        if (! current.lexeme.equals("</other-term-dyads>")) {
            error("parseOverlap seeking tag '</other-term-dyads>'");
        }
        oc.otherTermDyads = new ArrayList<Object>();
        for (DyadTemp dt : dyads) {
            dt.postDyad(oc.otherTermDyads, newCtxt);
        }
        oc.intersection = new ArrayList<Object>();
        readStringSet(oc.intersection, "pc-strings-overlap", "parseOverlap");
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<request-date") == 0) {
            scanner.readToken();
        }
        current = scanner.readToken();
        if (! current.lexeme.equals("</overlap>")) {
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
        while (! current.lexeme.equals("</" + tag + ">")) {
            scanner.readToken(); // consume the token
            theList.add(current.lexeme);
            current = scanner.readToken();
            if (current.lexeme.equals("</" + tag + ">")) {
                //do nothing; loop will end
            }else if (current.token.equals("comma")) {
                current = scanner.lookAhead(); // peek at next symbol
            }else {
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
        int start = current.lexeme.indexOf("\"") +1,
            stop = current.lexeme.indexOf("\"", start);
        SynonymCandidate sc = new SynonymCandidate();
        sc.kinTerm = current.lexeme.substring(start, stop);
        current = scanner.lookAhead(); // may be start tag of optional <processed> block
        if (current.lexeme.equals("<processed>")) {
            sc.processed = readTaggedBoolean("processed", "parseSynonym");
        }
        String otherTerm = readTagEnclosedText("other-term", "parseSynonym");
        if (sc.kinTerm.compareTo(otherTerm) < 0) {
            sc.pairOfTerms = sc.kinTerm + "/" + otherTerm;
        } else {
            sc.pairOfTerms = otherTerm + "/" + sc.kinTerm;
        } // always in lexicographic order
        sc.pcStringsCovered = new ArrayList<Object>();
        readStringSet(sc.pcStringsCovered, "pc-strings-covered", "parseSynonym");
        current = scanner.readToken();
        if (! current.lexeme.equals("<kin-term-dyads>")) {
            error("parseSynonym seeking tag '<kin-term-dyads>'");
        }
        sc.ktermDyads = parseDyadAList();
        current = scanner.readToken();
        if (! current.lexeme.equals("</kin-term-dyads>")) {
            error("parseSynonym seeking tag '</kin-term-dyads>'");
        }
        current = scanner.readToken();
        if (! current.lexeme.equals("<other-term-dyads>")) {
            error("parseSynonym seeking tag '<other-term-dyads>'");
        }
        sc.otherTermDyads = parseDyadAList();
        current = scanner.readToken();
        if (! current.lexeme.equals("</other-term-dyads>")) {
            error("parseSynonym seeking tag '</other-term-dyads>'");
        }
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<request-date") == 0) {
            scanner.readToken();
        }
        current = scanner.readToken();
        if (! current.lexeme.equals("</synonym>")) {
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
        int start = current.lexeme.indexOf("\"") +1,
            stop = current.lexeme.indexOf("\"", start);
        UmbrellaCandidate uc = new UmbrellaCandidate();
        uc.kinTerm = current.lexeme.substring(start, stop);
        current = scanner.lookAhead(); // may be start tag of optional <processed> block
        if (current.lexeme.equals("<processed>")) {
            uc.processed = readTaggedBoolean("processed", "parseUmbrella");
        }
        current = scanner.readToken();
        if (! current.lexeme.equals("<sub-terms>")) {
            error("parseUmbrella seeking tag '<sub-terms>'");
        }
        current = scanner.readToken();
        if (! current.lexeme.equals("<sub-term>")) {
            error("parseUmbrella seeking tag '<sub-term>'");
        }

        while (current.lexeme.equals("<sub-term>")) {
            parseSubTerm(uc.subTerms);
        }
        current = scanner.readToken();
        if (! current.lexeme.equals("</sub-terms>")) {
            error("parseUmbrella seeking tag '</sub-terms>'");
        }
        current = scanner.lookAhead();
        if (current.lexeme.indexOf("<request-date") == 0) {
            scanner.readToken();
        }
        current = scanner.readToken();
        if (! current.lexeme.equals("</umbrella>")) {
            error("parseUmbrella seeking tag '</umbrella>'");
        }
        addToIssues(issues, uc);
    }


    void parseSubTerm(TreeMap tmap) throws KSParsingErrorException  {
        String subterm = readTagEnclosedText("sub-kin-term", "parseSubTerm");
        ArrayList<Object> supportList = new ArrayList<Object>();
        ArrayList<Object> stringsCovered = new ArrayList<Object>();
        supportList.add(stringsCovered);
        readStringSet(stringsCovered, "pc-strings-covered", "parseSubTerm");
        current = scanner.readToken();
        if (! current.lexeme.equals("<dyads-covered>")) {
            error("parseSubTerm seeking tag '<dyads-covered>'");
        }
        ArrayList<Object> dyadsCovered = parseDyadAList();
        supportList.add(dyadsCovered);
        current = scanner.readToken();
        if (! current.lexeme.equals("</dyads-covered>")) {
            error("parseSubTerm seeking tag '</dyads-covered>'");
        }
        current = scanner.lookAhead();
        if (current.lexeme.equals("<type>")) {
            Integer typ = readTaggedInteger("type", "parseSubTerm");
            supportList.add(typ);
        }
        current = scanner.readToken();
        if (! current.lexeme.equals("</sub-term>")) {
            error("parseSubTerm seeking tag '</sub-term>'");
        }
        tmap.put(subterm, supportList);
        current = scanner.lookAhead();
        if (current.lexeme.equals("<sub-term>")) {
            scanner.readToken();  // Repeat loop assumes token already consumed
        }
    }


    void doUDPSerialSwaps() throws KSParsingErrorException {
       //  Iterate thru all UDP templates in the context and all UDPs on
       //  Individuals. Swap the indSerial tokens (e.g. '#2') for pointers
       //  to the actual Individual objects in the IndividualCensus (e.g. the
       //  person with serial #2).
       //  NOTE: the UDP.toSILKString() method writes tokens (e.g. '#34') for individuals
       Iterator udpIter = newCtxt.userDefinedProperties.values().iterator();
       while (udpIter.hasNext()) {
       		UserDefinedProperty udp = (UserDefinedProperty)udpIter.next();
       		if (udp.typ.equals("individual")) {
     				if (udp.defaultValue != null) {
						int defaultPersonNmbr = Integer.parseInt(((String)udp.defaultValue).substring(1));
       				udp.defaultValue = newCtxt.individualCensus.get(defaultPersonNmbr);
						}  //  end of swap token in default-value
     				if (udp.validEntries != null &&!  udp.validEntries.isEmpty()) {
						ArrayList<Object> newValidEntries = new ArrayList<Object>();
       				for (Object obj : udp.validEntries) {
       					String personStr = (String)obj;
       					int personNmbr = Integer.parseInt(personStr.substring(1));
       					newValidEntries.add(newCtxt.individualCensus.get(personNmbr));
       					}  //  end of loop thru valid entries
       				udp.validEntries = newValidEntries;
						}  //  end of if-valid-entries non-null
       			}  //  end of this-UDP-holds-individuals
       	}  //  end of loop thru the Context's UDP templates

       for (Object indObj : newCtxt.individualCensus) {
    			Individual ind = (Individual)indObj;
				Iterator iter = ind.userDefinedProperties.values().iterator();
       		while (iter.hasNext()) {
       			UserDefinedProperty udp = (UserDefinedProperty)iter.next();
       			if (udp.typ.equals("individual")) {
       				ArrayList<Object> newValue = new ArrayList<Object>();
       				for (Object indNmbr : udp.value) {
       					String indNmbrStr = (String)indNmbr;
       					if (! indNmbrStr.substring(0,1).equals("#"))
       						error("doUDPSerialSwaps encountered a UDP of typ 'individual' with a value not " +
       								"beginning with '#'");
       					int indSerial = Integer.parseInt(indNmbrStr.substring(1));
       					newValue.add(newCtxt.individualCensus.get(indSerial));
       					}  //  end of loop through value list
       				udp.value = newValue;
						if (udp.defaultValue != null) {
							int defaultPersonNmbr = Integer.parseInt(((String)udp.defaultValue).substring(1));
							udp.defaultValue = newCtxt.individualCensus.get(defaultPersonNmbr);
							}  //  end of if-default-value-non-null
						ArrayList<Object> newValidEntries = new ArrayList<Object>();
						for (Object obj : udp.validEntries) {
							String personStr = (String)obj;
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
            Individual spouse = (ndx == -1 ? null :
                (Individual) newCtxt.individualCensus.get(ndx));
            fam.husband = spouse;
            ndx = tempFam.get(2);
            spouse = (ndx == -1 ? null :
                (Individual) newCtxt.individualCensus.get(ndx));
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
                fam.addSib((Person)child);
            }
        }  //  end of loop thru family census
    }  //  end of method doIndFamSerialSwaps


    void doDyadSwaps() throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException,
				KSInternalErrorException, KSConstraintInconsistency   {
        //  STRATEGY: the lists tempDyadsDefinedRef, tempDyadsUndefinedRef, tempDyadsDefinedAddr,
        //  and tempDyadsUndefinedAddr (when non-null) are filled with DyadTemp objects.
        //  After the entire file has been parsed, call the DyadTemp method postDyad. It will
		  //  use the serialNmbrs in the DyadTemp objects to get the actual Individual or Family
		  //  objects to be used in the real Dyads. It will post them to the DyadTMaps.
		  if (tempDyadsDefinedRef != null && ! tempDyadsDefinedRef.isEmpty())
        	for (DyadTemp temp : tempDyadsDefinedRef)
        		temp.postDyad(newCtxt, newCtxt.domTheoryRef().dyadsDefined);
        if (tempDyadsUndefinedRef != null && ! tempDyadsUndefinedRef.isEmpty())
        	for (DyadTemp temp : tempDyadsUndefinedRef)
        		temp.postDyad(newCtxt, newCtxt.domTheoryRef().dyadsUndefined);
        if (tempDyadsDefinedAddr != null && ! tempDyadsDefinedAddr.isEmpty())
        	for (DyadTemp temp : tempDyadsDefinedAddr)
        		temp.postDyad(newCtxt, newCtxt.domTheoryAdr().dyadsDefined);
        if (tempDyadsUndefinedAddr != null && ! tempDyadsUndefinedAddr.isEmpty())
        	for (DyadTemp temp : tempDyadsUndefinedAddr)
        		temp.postDyad(newCtxt, newCtxt.domTheoryAdr().dyadsUndefined);
    }  //  end of method doDyadSwaps

    void doStarSwaps() {
        //  The starTable is a TMap: Integer -> ArrayList<Integer>.
        //  Each key field (Integer) is the serial# of an Individual.
        //  The list of Integers is a list of serial#s of the persons who
        //  should be in the starLinks list for that person. Iterate thru
        //  the starTable, swapping individual-pointers for integers.
        Iterator iter = starTable.entrySet().iterator();
        while (iter.hasNext()) {
        	Map.Entry entry = (Map.Entry)iter.next();
        	Integer egoNmbr = (Integer)entry.getKey();
        	ArrayList<Integer> starLinx = (ArrayList<Integer>)entry.getValue();
        	Individual link, ego = (Individual)newCtxt.individualCensus.get(egoNmbr);
        	ego.starLinks = new ArrayList<Object>(starLinx.size());
        	for (Integer linkNmbr : starLinx) {
        		link = (Individual)newCtxt.individualCensus.get(linkNmbr);
        		ego.starLinks.add(link);
        	}  //  end of loop thru star links for this person
        }  //  end of loop thru starTable
    }  //  end of method doStarSwaps

}  //  end of class SILKFileParser
