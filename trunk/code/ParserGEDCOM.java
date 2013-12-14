
import java.awt.Point;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.*;
import javax.swing.JOptionPane;


/**
 * This class parses a GEDCOM file for importation into SILKin. It uses a
 * special DFA and Tokenizer. It is modeled after the other parsers in this
 * system.
 *
 * @author gary
 */
public class ParserGEDCOM {

    Context ctxt;
    TokenScanned current;
    Linus lineMan;
    TokenizerGEDCOM scanner;
    String filePath;
    GEDCOMitem currItem;
    
    public ParserGEDCOM(TokenizerGEDCOM tok) {
        scanner = tok;
        lineMan = scanner.lineServer;
        this.filePath = tok.filePath;
    }

    /**
     * Assemble information about a parsing error encountered, then throw a
     * {@link KSParsingErrorException}.
     *
     * @param	msgOut	a String describing the exact error found.
     * @throws	a <code>KSParsingErrorException</code>.
     */
    public void error(String msgOut) throws KSParsingErrorException {
        msgOut += "\nCurrent = " + current.token + ": " + current.lexeme;
        msgOut += "\nOn Line # " + current.lineNum + "  Character Position: " + current.charPos
                + " of " + filePath;
        if (ParserDomainTheory.errorFound.length() < 10) {
            msgOut += "\n" + lineMan.lineImage;
        }
        throw new KSParsingErrorException(msgOut);
    }  // end of error method
    
    String extractFileName(String path) {
        String nam = path;
        int where = nam.lastIndexOf("/");
        if (where > -1) {
            nam = nam.substring(where + 1);
        }
        where = nam.lastIndexOf(".");
        if (where > -1) {
            nam = nam.substring(0, where);
        }
        if (nam.isEmpty()) {
            return path;
        }
        return nam;
    }
    
    public void parseFile(File f) throws KSParsingErrorException {
        DomainTheory dt = new DomainTheory();
        dt.languageName = extractFileName(lineMan.filePath);
        ctxt = new Context(dt);
        Context.current = ctxt;
        DomainTheory.current = dt;
        //  Now we are ready to read data
        parseFirstPass();
        parseSecondPass();
        Library.contextUnderConstruction = null;    
        assignChartAndLevel();
        processChartRows();
        expandToGridUnits();
        SIL_Edit.edWin.chart.checkSizeOfChart(ctxt);
        SIL_Edit.edWin.chart.resizeAndRepaint();
    }
    
    void parseFirstPass() throws KSParsingErrorException {
        current = scanner.readToken();
        if (!current.lexeme.equals("0")) {
            error("First line of GEDCOM file must begin with '0'. Found " + current.lexeme);
        }
        current = scanner.readToken();
        if (!current.lexeme.equals("HEAD")) {
            error("First tag of GEDCOM file must be 'HEAD'. Found " + current.lexeme);
        }  //  OK. Set up new context to receive data.
        if (Context.current != null && Context.current.languageName != null 
                && SIL_Edit.edWin != null) {
            String msg = "Importing GEDCOM will create a new context to hold the data.";
            String fName = SIL_Edit.edWin.getTitle();
            msg += "\nCurrent context (in " + fName + ") will be saved & closed.";
            int ch = JOptionPane.showConfirmDialog(SIL_Edit.edWin, msg, 
                    "Making a New Context", JOptionPane.INFORMATION_MESSAGE);
            if (ch != JOptionPane.OK_OPTION) {
                return;
            }
            SIL_Edit.edWin.chart.saveSILKFile();            
        }
        parseHeader();
        parseBody();
        current = scanner.lookAhead();
        if (!current.token.equals("$")) {
            error("Line with '0 TRLR' should be last line of file."
                    + "\nFound something after that: " + current.lexeme);
        }
        for (GEDCOMitem item : ctxt.gedcomHeaderItems.values()) {
            if (item.tag.equals("SUBM")) {
                DomainTheory.current.author = ctxt.dataAuthors.get(getSerial(item.ref));
                break;
            }
        }
    }  //  End of the first pass
    
    public void parseHeader() throws KSParsingErrorException {
        //  The '0 HEAD' currItem is already read and validated
        ctxt.gedcomHeaderItems = new TreeMap<String, GEDCOMitem>();
        current = scanner.lookAhead();
        while (!(current.token.equals("level") && current.intVal == 0)) {
            currItem = readLine();
            String key = currItem.tag + 
                    (currItem.ref == null ? "" : " " + currItem.ref);
            ctxt.gedcomHeaderItems.put(key, currItem);
            currItem.findSubItems(this);
        }
        ctxt.comments += "$$br$$===== Selected GEDCOM Items =====";
        GEDCOMitem src = ctxt.gedcomHeaderItems.get("SOUR");
        if (src != null) {
            ctxt.comments += "$$br$$" + src;
        }
        GEDCOMitem ged = ctxt.gedcomHeaderItems.get("GEDC");
        if (ged != null) {
            ctxt.comments += "$$br$$" + ged;
        }
        GEDCOMitem cha = ctxt.gedcomHeaderItems.get("CHAR");
        if (cha != null) {
            ctxt.comments += "$$br$$" + cha;
        }  // Display only those 3 tags
     }
    
    public void parseBody() throws KSParsingErrorException {
        //  current = level token at beginning of currItem
        boolean notesReady = false, sourcesReady = false, extraReady = false;
        currItem = readLine();
        while (!currItem.tag.equals("TRLR")) {  //  TRLR signals end of file
            
            if (currItem.tag.equals("INDI")) {
                int serialNmbr = getSerial(currItem.ref);
                if (serialNmbr < ctxt.indSerNumGen) {
                    error("Individual found out of serial number order." +
                            "\nCurrent serial = " + ctxt.indSerNumGen + 
                            ", but GEDCOM serial# = " + serialNmbr);
                }
                while (serialNmbr > ctxt.indSerNumGen) {
                    Individual filler = new Individual(ctxt, "?");
                    filler.deleted = true;
                    filler.name = "Fictitious Person";
                    filler.comment += "Created to fill gap in GEDCOM serial numbers.";
                }
                parseINDI(new Individual(ctxt, "?"));
                
            } else if (currItem.tag.equals("FAM")) {
                int serialNmbr = getSerial(currItem.ref);
                if (serialNmbr < ctxt.famSerNumGen) {
                    error("Family found out of serial number order." +
                            "\nCurrent serial = " + ctxt.famSerNumGen + 
                            ", but GEDCOM serial# = " + serialNmbr);
                }
                while (serialNmbr > ctxt.famSerNumGen) {
                    Family filler = new Family(ctxt, true);
                    filler.deleted = true;
                    filler.comment += "Created to fill gap in GEDCOM serial numbers.";
                }
                parseFAM(new Family(ctxt, true));
                
            } else if (currItem.tag.equals("NOTE")) {
                //  Unlike people and families, I don't care if the notes overlap or have gaps.
                if (!notesReady) {
                    ctxt.gedcomNotes = new TreeMap<String, GEDCOMitem>();
                    notesReady = true;
                }
                ctxt.gedcomNotes.put(currItem.ref, currItem);
                currItem.findSubItems(this);
                currItem = readLine();
            } else if (currItem.tag.equals("SOUR")) {
                //  Don't care about sources, either.
                if (!sourcesReady) {
                    ctxt.gedcomSources = new TreeMap<String, GEDCOMitem>();
                    sourcesReady = true;
                }
                ctxt.gedcomSources.put(currItem.ref, currItem);
                currItem.findSubItems(this);
                currItem = readLine();
            } else if (currItem.tag.equals("SUBM")) {
                //  Submitters must be kept in order.
                int ndx = getSerial(currItem.ref);
                if (ndx < ctxt.dataAuthors.size()) {
                    error("Submitter found out of serial number order." +
                            "\nCurrent serial = " + ctxt.dataAuthors.size() + 
                            ", but GEDCOM serial# = " + ndx);
                }
                while (ndx > ctxt.dataAuthors.size()) {
                    ctxt.dataAuthors.add("Dummy author inserted to preserve order.");
                }
                currItem.findSubItems(this);
                String author = "Unknown";
                for (GEDCOMitem sub : currItem.subItems) {
                    if (sub.tag.equals("NAME")) {
                        author = sub.text;
                        break;
                    }
                }
                ctxt.dataAuthors.add(author);
                currItem = readLine();
            } else {  //  Just copy it
                if (!extraReady) {
                    ctxt.gedcomExtra = new TreeMap<String, GEDCOMitem>();
                    extraReady = true;
                }
                String refer = "";
                if (currItem.ref != null) {
                    refer =  " " + currItem.ref;
                }
                ctxt.gedcomExtra.put(currItem.tag + refer, currItem);
                currItem.findSubItems(this);
                currItem = readLine();
            }
        }
    }
    
    int adoptionSerial = 1;
    
    public void parseINDI(Individual ind) throws KSParsingErrorException {
        //  The '0 INDI' item has already been read & processed
        //  NOTE: Multiple FAMS items are permitted. So I must index on tag + ref
        //  Multiple ADOP items are also permitted, and they do not have a ref
        //  embedded in them, so I must generate 'serial numbers'
        ind.gedcomItems = new TreeMap<String, GEDCOMitem>();
        currItem = readLine();
        while (currItem.level != 0) {
            String key = currItem.tag + 
                    (currItem.ref == null ? "" : " " + currItem.ref);
            if (currItem.tag.equals("ADOP")) {
                key += " " + adoptionSerial++;
            }
            ind.gedcomItems.put(key, currItem);
            currItem.findSubItems(this);
            currItem = readLine();
        }
    }
    
    public void parseFAM(Family fam) throws KSParsingErrorException {
        //  The '0 FAM' item has already been read & processed
        fam.gedcomItems = new TreeMap<String, GEDCOMitem>();
        currItem = readLine();
        while (currItem.level != 0) {
            String key = currItem.tag + 
                    (currItem.ref == null ? "" : " " + currItem.ref);
            fam.gedcomItems.put(key, currItem);
            currItem.findSubItems(this);
            currItem = readLine();
        }
    }
    
    public void parseSecondPass() throws KSParsingErrorException {
        //  In the second pass, we flesh out each individual and family,
        //  pulling in the text from sources & notes where needed
        for (Individual ind : ctxt.individualCensus) {
            if (! ind.deleted) {
                parseIndividual(ind);
            }
        }
        for (Family fam : ctxt.familyCensus) {
            if (! fam.deleted) {
                parseFamily(fam);
            }
        }
    }
    
    boolean titled = false;
    
    public void parseIndividual(Individual ind) throws KSParsingErrorException {
        GEDCOMitem item;
        titled = false;
        item = ind.gedcomItems.get("NAME");
        if (item != null) {
            ind.processNames(item.text);
        }
        item = ind.gedcomItems.get("SEX");
        if (item != null) {
            ind.gender = ind.parseGender(item.text);
        }        
        if (ind.gender.equals("M")) {
            ind.sex = Person.mal;
        } else if (ind.gender.equals("F")) {
            ind.sex = Person.fem;
        } else {
            ind.sex = new Neuter();
        }
        item = getItem("NOTE", ind.gedcomItems);
        if (item != null) {
            if (item.level == 1 && !item.text.isEmpty()) {
                ind.comment += "$$br$$" + item.text;
            } else if (item.level == 1 && !item.ref.isEmpty()) {
                int noteNmbr = getSerial(item.ref);
                GEDCOMitem note = ctxt.gedcomNotes.get(noteNmbr);
                ind.comment += "\n" + note;
            }
        }
        item = ind.gedcomItems.get("BIRT");
        if (item != null) {
            String euroDate = item.getDate(), ps = "";
            if (euroDate != null) {
                try {
                    String bdate = UDate.europeanToXSD(euroDate);
                    ind.setDateOfBirth(bdate);
                }catch(Exception dps) {
                    ps = "\nINVALID BIRTH DATE: " + euroDate + "\n";
                    ps += "for Person # " + ind.serialNmbr;
                    ps += "\nSILKin will ignore this date.\n";
                    ps += "GEDCOM data will not be disturbed.";
                    JOptionPane.showMessageDialog(SIL_Edit.edWin, ps, 
                    "For Your Information", JOptionPane.INFORMATION_MESSAGE);
                }
            }
        }
        item = ind.gedcomItems.get("DEAT");
        if (item != null) {
            String euroDate = item.getDate(), ps = "";
            if (euroDate != null) {
                try {
                    String bdate = UDate.europeanToXSD(euroDate);
                    ind.setDateOfDeath(bdate);
                }catch(Exception dps) {
                    ps = "\nINVALID DEATH DATE: " + euroDate + "\n";
                    ps += "for Person # " + ind.serialNmbr;
                    ps += "\nSILKin will ignore this date.\n";
                    ps += "GEDCOM data will not be disturbed.";
                    JOptionPane.showMessageDialog(SIL_Edit.edWin, ps, 
                    "For Your Information", JOptionPane.INFORMATION_MESSAGE);
                }
            }
        }
        item = ind.findBirthFamInGEDCOM();
        if (item != null) {
            int serial = getSerial(item.ref);
            ind.birthFamily = ctxt.familyCensus.get(serial);
        }
        ArrayList<GEDCOMitem> spice = ind.findMarriagesInGEDCOM();
        for (GEDCOMitem mar : spice) {
            int serial = getSerial(mar.ref);
            ind.marriages.add(ctxt.familyCensus.get(serial));
        }
        processAdoptions(ind);
        item = getItem("SUBM", ind.gedcomItems);
        if (item != null) {
            if (item.level == 1 && !item.ref.isEmpty()) {
                int noteNmbr = getSerial(item.ref);
                String author = ctxt.dataAuthors.get(noteNmbr);
                ind.dataAuthor = author;
            }
        }
        item = ind.gedcomItems.get("CHAN");
        if (item != null) {
            String euroDate = item.getDate(), ps = "";
            if (euroDate != null) {
                try {
                    String bdate = UDate.europeanToXSD(euroDate);
                    ind.dataChangeDate = bdate;
                }catch(Exception dps) {
                    ps = "\nINVALID DATA CHANGE DATE: " + euroDate + "\n";
                    ps += "for Person # " + ind.serialNmbr;
                    ps += "\nSILKin will ignore this date.\n";
                    ps += "GEDCOM data will not be disturbed.";
                    JOptionPane.showConfirmDialog(SIL_Edit.edWin, ps, 
                    "For Your Information", JOptionPane.INFORMATION_MESSAGE);
                }
            }
        }
    }
    
    void processAdoptions(Individual ind) throws KSParsingErrorException {
        ArrayList<GEDCOMitem> adopters = ind.findAdoptionsInGEDCOM();
        for (GEDCOMitem adopter : adopters) {
            int adoptiveFamSerial = -1;
            String typ = "BOTH";
            for (GEDCOMitem subItem : adopter.subItems) {
                if (subItem.tag.equals("FAMC")) {
                    adoptiveFamSerial = getSerial(subItem.ref);
                } else if (subItem.tag.equals("ADOPTED_BY_WHICH_PARENT")) {
                    typ = subItem.text;
                }
            } // If no FAMC is specified, I can't do anything with this ADOP
            if (adoptiveFamSerial > -1) {
                ctxt.initializeAdoptions("*adopt");
                Family adoptiveFam = ctxt.familyCensus.get(adoptiveFamSerial);
                Individual hubby = null, wifey = null;
                if (typ.equals("HUSB") || typ.equals("BOTH")) {
                    hubby = getSpouseFromGEDCOM(adoptiveFam, "HUSB");
                    if (hubby != null) {
                        hubby.addAdoptee(ind, "*adopt");
                    }
                }
                if (typ.equals("WIFE") || typ.equals("BOTH")) {
                    wifey = getSpouseFromGEDCOM(adoptiveFam, "WIFE");
                    if (wifey != null) {
                        wifey.addAdoptee(ind, "*adopt");
                    }
                }
            }
        }
    }
    
    public GEDCOMitem getItem(String key ,TreeMap<String, GEDCOMitem> tree) {
        Iterator iter = tree.entrySet().iterator();
        while (iter.hasNext()) {
            Map.Entry entry = (Map.Entry)iter.next();
            String ndx = (String)entry.getKey();
            if (ndx.startsWith(key)) {
                return (GEDCOMitem)entry.getValue();
            }
        }
        return null;
    }
    
    Individual getSpouseFromGEDCOM(Family fam, String tag) {
        GEDCOMitem item = getItem(tag, fam.gedcomItems);
        if (item.ref != null) {
            try {
                return ctxt.individualCensus.get(getSerial(item.ref));
            }catch(Exception exc) {  }  // no exceptions expected
        }        
        return null;
    }
    
    public void parseFamily(Family fam) throws KSParsingErrorException {
        titled = false;
        fam.mid = fam.serialNmbr + 1;
        GEDCOMitem item = getItem("HUSB", fam.gedcomItems);
        if (item != null) {
            int serial = getSerial(item.ref);
            fam.husband = ctxt.individualCensus.get(serial);
        }
        item = getItem("WIFE", fam.gedcomItems);
        if (item != null) {
            int serial = getSerial(item.ref);
            fam.wife = ctxt.individualCensus.get(serial);
        }
        ArrayList<GEDCOMitem> kids = fam.findKidsInGEDCOM();
        for (GEDCOMitem kid : kids) {
            int serial = getSerial(kid.ref);
            fam.children.add(ctxt.individualCensus.get(serial));
        }
        item = getItem("NOTE", fam.gedcomItems);
        if (item != null) {
            if (item.level == 1 && !item.text.isEmpty()) {
                fam.comment += "$$br$$" + item.text;
            } else if (item.level == 1 && !item.ref.isEmpty()) {
                int noteNmbr = getSerial(item.ref);
                GEDCOMitem note = ctxt.gedcomNotes.get(noteNmbr);
                fam.comment += "\n" + note;
            }
        }
        String changeDate = fam.dataChangeDate;
        item = fam.gedcomItems.get("MARR");
        if (item != null) {
            String euroDate = item.getDate();
            if (euroDate != null) {
                try {
                    String bdate = UDate.europeanToXSD(euroDate);
                    fam.setMarriageDate(bdate);
                }catch(Exception dps) {
                    String ps= "\nINVALID MARRIAGE DATE: " + euroDate + "\n";
                    ps += "for Family # " + fam.serialNmbr;
                    ps += "\nSILKin will ignore this date.\n";
                    ps += "GEDCOM data will not be disturbed.";
                    JOptionPane.showMessageDialog(SIL_Edit.edWin, ps, 
                    "For Your Information", JOptionPane.INFORMATION_MESSAGE);
                }
            }
        }
        item = fam.gedcomItems.get("DIV");
        if (item != null) {
            String euroDate = item.getDate(), ps = "";
            if (euroDate != null) {
                try {
                    String bdate = UDate.europeanToXSD(euroDate);
                    fam.setDivorceDate(bdate);
                }catch(Exception dps) {
                    ps = "\nINVALID DIVORCE DATE: " + euroDate + "\n";
                    ps += "for Family # " + fam.serialNmbr;
                    ps += "\nSILKin will ignore this date.\n";
                    ps += "GEDCOM data will not be disturbed.";
                    JOptionPane.showMessageDialog(SIL_Edit.edWin, ps, 
                    "For Your Information", JOptionPane.INFORMATION_MESSAGE);
                }
            }
        }
        item = getItem("SUBM", fam.gedcomItems);
        if (item != null) {
            if (item.level == 1 && !item.ref.isEmpty()) {
                int noteNmbr = getSerial(item.ref);
                String author = ctxt.dataAuthors.get(noteNmbr);
                fam.dataAuthor = author;
            }
        }
        fam.dataChangeDate = changeDate;  // setting Marriage/Divorce dates -> change date = today.
        item = fam.gedcomItems.get("CHAN");
        if (item != null) {
            String euroDate = item.getDate(), ps = "";
            if (euroDate != null) {
                try {
                    String bdate = UDate.europeanToXSD(euroDate);
                    fam.dataChangeDate = bdate;
                }catch(Exception dps) {
                    ps = "\nINVALID DATA CHANGE DATE: " + euroDate + "\n";
                    ps += "for Family # " + fam.serialNmbr;
                    ps += "\nSILKin will ignore this date.\n";
                    ps += "GEDCOM data will not be disturbed.";
                    JOptionPane.showMessageDialog(SIL_Edit.edWin, ps, 
                    "For Your Information", JOptionPane.INFORMATION_MESSAGE);
                }
            }
        }        
    }
    
    public GEDCOMitem readLine() throws KSParsingErrorException {
        GEDCOMitem ln = new GEDCOMitem(ctxt);
        current = scanner.readToken();  // Consume 1st token; must be level
        if (!current.token.equals("level")) {
            error("First element on each line must be a level. Found " + current.token);
        }
        ln.level = current.intVal;
        current = scanner.readToken();  // Consume 2nd token; must be tag or ref
        if (current.token.equals("ref")) {
            ln.ref = current.lexeme;
            ln.refLoc = 1;
            current = scanner.readToken();           
        }  // if 2nd is ref, 3rd must be tag 
        if (!current.token.equals("tag")) {
            error("Found line with level but no tag: " + ln.level + " " + current.lexeme);
        }
        ln.tag = current.lexeme;
        // Nothing is required after tag is read
        current = scanner.lookAhead();
        while (!current.token.equals("level") &&
                !current.token.equals("$")) {
            scanner.readToken();  //  consume the token
            if (current.token.equals("ref")) {
                ln.ref = current.lexeme;
                ln.refLoc = 2;
            } else if (current.token.equals("text")) {
                ln.text = FamilyPanel.convertBannedCharacters(current.lexeme);
            } else {
                error("Illegal token found after tag was read: " + current.token 
                        + " - '" + current.lexeme + "'");
            }
            current = scanner.lookAhead();
        }
        return ln;
    }
    
    public int getSerial(String ref) throws KSParsingErrorException {
        int start = -1, end = ref.lastIndexOf("@");
        for (int i=0; i < ref.length(); i++) {
            char ch = ref.charAt(i);
            if (Character.isDigit(ch)) {
                start = i;
                break;
            }
        }
        if (start == -1) {
            error("Found reference with no numbers: " + ref);
        }
        return Integer.parseInt(ref.substring(start, end));
    }
    
    TreeMap<Integer, ArrayList<Individual>> sorter = 
            new TreeMap<Integer, ArrayList<Individual>>();    
    TreeMap<String, TreeMap<Integer, ArrayList<Locatable>>> chartMatrix = 
            new TreeMap<String, TreeMap<Integer, ArrayList<Locatable>>>();
    ArrayList<Individual> peopleToProcess = new ArrayList<Individual>();
        
    //  LAYOUT ALGORITHM FOR GEDCOM IMPORTS  
    void assignChartAndLevel() {
        for (Individual ind : ctxt.individualCensus) {
            if (!ind.deleted) {
                int birthYr = getBirthYear(ind);
                if (sorter.get(birthYr) == null) {
                    sorter.put(birthYr, new ArrayList<Individual>());
                }
                sorter.get(birthYr).add(ind);
                peopleToProcess.add(ind);
            }
        }
        Individual elder = getEldest();
        while (elder != null) {
            ArrayList<Locatable> members = new ArrayList<Locatable>();        
            peopleToProcess.remove(elder);
            String chartLtr = ctxt.getNextChartLtr();
            String elderName = elder.firstNames + " " + elder.surname;
            ctxt.chartDescriptions.add(elderName + " Family");
            elder.location.y = 0;
            KSQ ksq = new KSQ();
            ksq.enQ(elder);
            propagateLevels(ksq, chartLtr, members);
            elder = getEldest();
        }        
    }
    
    void addInd(Individual ind, int level, KSQ q) {
        ind.location.y = level;
        peopleToProcess.remove(ind);
        q.enQ(ind);
    }
    
    void propagateLevels(KSQ ksq, String chartLtr, ArrayList<Locatable> members) {
        // Starting with a presumed matriarch, assign chart & level to each member
        // of the family group.  Then adjust levels so the lowest = 0.
        int lowestLevel = 9999;
        AdoptionRecords adoptRecs = new AdoptionRecords();
        while (!ksq.isEmpty()) {
            Locatable loc = (Locatable) ksq.deQ();
            if (loc instanceof Individual) {
                Individual ind = (Individual)loc;
                members.add(ind);
                ind.homeChart = chartLtr;
                int level = ind.location.y;
                lowestLevel = Math.min(level, lowestLevel);
                if (ind.birthFamily != null) {
                    Individual dad = ind.birthFamily.husband,
                               mom = ind.birthFamily.wife;
                    if (dad != null && peopleToProcess.contains(dad)) {
                        addInd(dad, level - 1, ksq);
                    }
                    if (mom != null && peopleToProcess.contains(mom)) {
                        addInd(mom, level - 1, ksq);
                    }
                    // STRATEGY:  All kids should be lined up, with their spice interleaved.
                    // If kid's spouse has no birth family, put actual spouse next to kid.
                    if (ind.birthFamily.children.size() > 1) { // siblings
                        for (Object o : ind.birthFamily.children) {
                            Individual sib = (Individual) o;
                            injectSpice(sib, level, ksq);
                        }
                    }
                }
                for (Object f : ind.marriages) {
                    Family fam = (Family) f;
                    Individual spouse = (fam.wife == ind ? fam.husband : fam.wife);
                    if (peopleToProcess.contains(spouse) && spouse.birthFamily == null) {
                        addInd(spouse, level, ksq);
                    }
                    for (Object o : fam.children) {
                        Individual child = (Individual) o;
                        if (peopleToProcess.contains(child)) {
                            injectSpice(child, level + 1, ksq);
                        }
                    }
                }
                for (Individual adoptee : ind.getAdoptees()) {
                    boolean makeTriple = false;
                    Link lk = null;                    
                    if (peopleToProcess.contains(adoptee)
                            && adoptee.birthFamily == null) { // isolated adoptee
                        addInd(adoptee, level + 1, ksq);
                        makeTriple = true;
                    } else { // adoptee is from another family or already processed; make  a link
                        // See if ind is second spouse of an adopting family
                        boolean alreadyDone = false;
                        for (Object f : ind.marriages) {
                            if (adoptRecs.alreadyRecorded((Family)f, adoptee)) {
                                alreadyDone = true;
                                break;
                            }
                        }
                        if (!alreadyDone) {
                            lk = new Link(adoptee, chartLtr, new Point(-1, level + 1));
                            ksq.enQ(lk);
                            makeTriple = true;
                            if (adoptee.links == null) {
                                adoptee.links = new ArrayList<Link>();
                            }
                            if (!adoptee.links.contains(lk)) {
                                adoptee.links.add(lk);
                            }
                            for (Object f : ind.marriages) {
                                Family fam = (Family) f;
                                adoptRecs.record(fam, adoptee);
                            }
                        }
                    }
                    if (makeTriple) {
                        Context.SpecRelTriple trpl = new Context.SpecRelTriple();
                        trpl.udpName = "*adopt";
                        trpl.parent = findAdoptingEntity(ind, adoptee);
                        trpl.child = (lk == null  ? ind : lk);
                        ctxt.addSpecialRelationship(trpl, ind.homeChart);
                    }
                }
                // End of processing Individual
            } else if (loc instanceof Link) {
                members.add(loc);
            }
        }
        if (lowestLevel != 0) {
            for (Locatable symb : members) {
                int y = symb.getLocationY();
                symb.setLocationY(y - lowestLevel);
            }
        }
        postToChartMatrix(members);
    }
    
    Locatable findAdoptingEntity(Individual par, Individual adoptee) {
        for (GEDCOMitem item : adoptee.gedcomItems.values()) {
            if (item.tag.equals("ADOP")) {
                int famSerial = -1;
                String typ = null;
                for (GEDCOMitem subItem : item.subItems) {
                    if (subItem.tag.equals("FAMC")) {
                        try { famSerial = getSerial(subItem.ref);
                        }catch(Exception exc) {  } // no exceptions expected
                    } else if (subItem.tag.equals("ADOPTED_BY_WHICH_PARENT")) {
                        typ = subItem.text;
                    }                    
                }
                if (famSerial > -1 && typ != null) { // found complete adoption record
                    Family fam = ctxt.familyCensus.get(famSerial);
                    if (par == fam.husband || par == fam.wife) { // it's the right one
                        if (typ.equals("BOTH")) {
                            return fam;
                        } else {
                            return par;
                        }
                    }
                }
            }
        }        
        return null;
    }
    
    void injectSpice(Individual sib, int level, KSQ ksq) {
        Iterator mateIter = sib.marriages.iterator();
        if (peopleToProcess.contains(sib)) {
            sib.location.y = level;
            Individual mate;
            if (mateIter.hasNext()) {
                Family marr = (Family) mateIter.next();
                mate = (marr.wife == sib ? marr.husband : marr.wife);
                if (peopleToProcess.contains(mate) && mate.birthFamily == null) {
                    addInd(mate, level, ksq);
                }
            }
            addInd(sib, level, ksq);
            while (mateIter.hasNext()) {
                Family marr = (Family) mateIter.next();
                mate = (marr.wife == sib ? marr.husband : marr.wife);
                if (peopleToProcess.contains(mate) && mate.birthFamily == null) {
                    addInd(mate, level, ksq);
                }
            }
        }
    }
    
    Individual getEldest() {
        if (peopleToProcess.isEmpty()) {
            return null;
        }
        while (!sorter.isEmpty()) {
            Integer key = sorter.firstKey();
            ArrayList<Individual> elders = sorter.get(key);
            Individual eldest = elders.remove(0);
            if (elders.isEmpty()) {
                sorter.remove(key);
            }
            if (peopleToProcess.contains(eldest)) {
                return eldest;
            }
        }  // end of loop thru sorter
        return null;
    }
    
    int getBirthYear(Individual ind) {
        if (!ind.birthYY.isEmpty()) {
            return Integer.parseInt(ind.birthYY);
        }
        if (ind.birthFamily != null) {
            if (ind.birthFamily.husband != null
                    && !ind.birthFamily.husband.birthYY.isEmpty()) {
                return Integer.parseInt(ind.birthFamily.husband.birthYY) + 22;
            }
            if (ind.birthFamily.wife != null
                    && !ind.birthFamily.wife.birthYY.isEmpty()) {
                return Integer.parseInt(ind.birthFamily.wife.birthYY) + 22;
            }
            if (ind.birthFamily.children.size() > 1) {  //  there are siblings
                for (Object k : ind.birthFamily.children) {
                    Individual kid = (Individual) k;
                    if (!kid.birthYY.isEmpty()) {
                        return Integer.parseInt(kid.birthYY) + 5;
                    }
                }
            }
        }
        if (!ind.marriages.isEmpty()) {
            for (Object f : ind.marriages) {
                Family fam = (Family) f;
                Individual spouse = (fam.wife == ind ? fam.husband : fam.wife);
                if (spouse != null && !spouse.birthYY.isEmpty()) {
                    return Integer.parseInt(spouse.birthYY);
                }
                if (!fam.children.isEmpty()) {
                    for (Object k : fam.children) {
                        Individual kid = (Individual) k;
                        if (!kid.birthYY.isEmpty()) {
                            return Integer.parseInt(kid.birthYY) - 25;
                        }
                    }
                }
            }
        }  //  If all else fails...            
        return 9999;
    }
    
    void postToChartMatrix(ArrayList<Locatable> members) {
        for (Locatable loc : members) {
            String chartLtr;
            Integer level;
            if (loc instanceof Individual) {
                Individual ind = (Individual) loc;
                chartLtr = ind.homeChart;
                level = 0 - ind.location.y;
            } else {
                Link lk = (Link)loc;
                chartLtr = lk.homeChart;
                level = 0 - lk.location.y;
            }
            if (chartMatrix.get(chartLtr) == null) {
                chartMatrix.put(chartLtr, new TreeMap<Integer, ArrayList<Locatable>>());
            }
            if (chartMatrix.get(chartLtr).get(level) == null) {
                chartMatrix.get(chartLtr).put(level, new ArrayList<Locatable>()); 
            }
            chartMatrix.get(chartLtr).get(level).add(loc);            
        }
    }
    
    void printRow(ArrayList row) {
        System.out.print("Row: ");
        for (Object o : row) {
            Locatable loc = (Locatable)o;
            String id = "interloper!";
            if (loc instanceof Individual) {
                Individual in = (Individual) loc;
                id = in.name + " #" + in.serialNmbr + " "
                        + in.location.x + ", " + in.location.y;
            } else if (loc instanceof Family) {
                Family f = (Family) loc;
                id = "Fam #" + f.serialNmbr + " H=" + 
                        (f.husband == null ? "" : f.husband.serialNmbr) + " W="
                        + (f.wife == null ? "" : f.wife.serialNmbr) + " "
                        + f.location.x + ", " + f.location.y;
            } else if (loc instanceof Link) {
                Link lk = (Link)loc;
                id = "Link #" + lk.serialNmbr + " " +
                        lk.location.x + ", " + lk.location.y;
            }
            System.out.print(id + ";  ");
        }
        System.out.println("\n");
    }
    
    void processChartRows() {
        //  STEP A -- Insert family symbols between adjacent spice (no spousal birthFam)
        insertFamSymbols();
        //  STEP B -- Insert Family symbols and links where spouse has a birthFamily
        insertFamsWithLinks();
        //  STEP 3 -- Assign horizontal positions in each row, centering a family symbol
        //            over its children (and attached spice).
        assignHorizontalPositions();
    }
    
    void insertFamSymbols() {
        for (Family fam : ctxt.familyCensus) {
            fam.setLocation(-1, -1);
        }
        Iterator chartIter = chartMatrix.values().iterator();
        while (chartIter.hasNext()) {  //  loop thru all charts
            TreeMap<Integer, ArrayList<Locatable>> singleLtr = 
                    (TreeMap<Integer, ArrayList<Locatable>>)chartIter.next();
            Iterator levelIter = singleLtr.values().iterator();
            while (levelIter.hasNext()) {  //  loop thru levels, bottom up
                ArrayList<Locatable> row = (ArrayList<Locatable>) levelIter.next();
                for (int i = 0; i < row.size(); i++) {  // row has Families, Links & Individuals
                    Locatable nod = row.get(i);
                    if (nod instanceof Individual) {  // Ignore links & any families we've inserted
                        Individual ind = (Individual) nod;
                        // Now peek ahead 1 node. If it's a spouse of ind and their marriage
                        // has no horizontal pos yet, then insert the fam between spice
                        int j = i + 1;
                        if (j < row.size()) {
                            Locatable nextNod = row.get(j);
                            if (nextNod instanceof Individual) { // ignore links & families
                                Family fam = null;
                                Individual nextInd = (Individual) nextNod;
                                for (Object o : ind.marriages) {
                                    fam = (Family) o;
                                    if (fam.wife == nextInd || fam.husband == nextInd) {
                                        if (fam.location.y == -1) {  //  no position assigned yet
                                            fam.homeChart = ind.homeChart;
                                            fam.location.y = ind.location.y;
                                            break;
                                        } else {
                                            fam = null;
                                        }
                                    } else {
                                        fam = null;
                                    }
                                }
                                if (fam != null) {  // we found a spouse
                                    row.add(j, fam);
                                }
                            }
                        }
                    }
                }  // end of loop thru the row
            }  // end of loop thru levels
        }  // end of loop thru all charts           
    }
    
    
    int averageX(ArrayList kids) {
        int sum = 0;
        for (Object k : kids) {
            Individual kid = (Individual)k;
            sum += kid.getLocationX();
        }
        return sum / kids.size();
    }
    
    void slideKids(ArrayList<Object> kidList, int shift, String chartLtr) {
        //  recursively slide kids rightward
        if (kidList == null || kidList.isEmpty()) {
            return;
        }
        Locatable kid = lowestX(kidList);
        int levelNdx = (kid.getLocationY()) * -1;
        int start = kid.getLocationX();
        ArrayList<Locatable> row = chartMatrix.get(chartLtr).get(levelNdx);        
        ArrayList<Object> nextGeneration = new ArrayList<Object>();
        for (Locatable nod : row) {
            if (start <= nod.getLocationX()) {
                nod.setLocationX(shift + nod.getLocationX());
                addDescendantsTo(nextGeneration, nod);
            }
        }
        slideKids(nextGeneration, shift, chartLtr);
    }
    
    Locatable lowestX(ArrayList<Object> kidList) {
        // Return the locatable with the lowest value for location.y
        TreeMap<Integer, Locatable> sorter = new TreeMap<Integer, Locatable>();
        for (Object gk : kidList) {
            Locatable gkid = (Locatable)gk;
            sorter.put(gkid.getLocationX(), gkid);
        }
        return sorter.firstEntry().getValue();
    }
    
    void addDescendantsTo(ArrayList<Object> alst, Locatable nod) {
        // If nod is a family, add any kids and their spice
        if (nod instanceof Link || nod instanceof Individual) {
            return;
        }
        Family fam = (Family) nod;
        for (Object k : fam.children) {
            Individual kid = (Individual) k;
            alst.add(kid);
            for (Object m : kid.marriages) {
                Family fam2 = (Family) m;
                Individual spouse =
                        (fam2.wife == kid ? fam2.husband : fam2.wife);
                if (spouse != null) {
                    alst.add(spouse);
                }
            }
        }
    }
    
    void insertFamsWithLinks() {
        // All people should now be placed, and some marriages.
        // Any marriages not yet placed s/b inserted next to 1 spouse
        for (Family fam : ctxt.familyCensus) {
            if (fam.location.y > -1 || fam.deleted ||
                    (fam.wife == null && fam.husband == null)) {
                continue;
            }
            Individual spouse = (fam.husband == null ? fam.wife : fam.husband);
            fam.homeChart = spouse.homeChart;
            fam.location.y = spouse.location.y;
            int levelNdx = fam.location.y * -1;
            ArrayList<Locatable> row = chartMatrix.get(fam.homeChart).get(levelNdx);
            int r;  // r = row position
            for (r = 0; r < row.size(); r++) {
                if (row.get(r) == spouse) {
                    break;
                }
            }
            row.add(++r, fam);
            // We know the next item in the row is not the other spouse. If it were
            // we'd have positioned this union between them in 'insertFamSymbols'.
            // Ergo, we should place a link to other spouse here.
            Individual otherSpouse = (spouse == fam.husband ? fam.wife : fam.husband);
            if (otherSpouse != null) {
                Point loc = new Point(-1, fam.location.y);
                Link lk = new Link(otherSpouse, fam.homeChart, loc);
                if (otherSpouse.links == null) {
                    otherSpouse.links = new ArrayList<Link>();
                }
                otherSpouse.links.add(lk);
                if (otherSpouse.gender.equals("M")) {
                    fam.husbandLink = lk;
                } else {
                    fam.wifeLink = lk;
                }
                row.add(++r, lk);
            }
        }        
    }
    
    void assignHorizontalPositions() {
        Iterator chartIter = chartMatrix.values().iterator();
        while (chartIter.hasNext()) {  //  loop thru all charts
            TreeMap<Integer, ArrayList<Locatable>> singleLtr = 
                    (TreeMap<Integer, ArrayList<Locatable>>)chartIter.next();
            Iterator levelIter = singleLtr.values().iterator();
     //  At this point, all family symbols, links and persons are laid out in rows
            while (levelIter.hasNext()) {  //  loop thru levels, bottom up
                ArrayList<Locatable> row = (ArrayList<Locatable>)levelIter.next();
                int nextSlot = 0;
                Locatable previousLoc = null;
                for (int i=0; i < row.size(); i++) {  // row will have Families, Links & Individuals
                    Locatable currentLoc = row.get(i);
                    if (i > 0) {
                        previousLoc = row.get(i-1);
                    }
                    Individual ind;
                    if (currentLoc instanceof Individual 
                            || currentLoc instanceof Link) {
                        currentLoc.setLocationX(nextSlot++);
                    } else {  // must be a Family
                        Family fam = (Family) currentLoc;                        
//                        if (fam.serialNmbr == 15 || fam.serialNmbr == 3) {
//                            printRow(row);
//                            Context.breakpoint();
//                        }                        
                        if (!fam.children.isEmpty()) {  
                        // kids must be at a lower level, ergo have horizontal position
                            int tentativeX = averageX(fam.children);
                            if (tentativeX >= nextSlot) {
                                fam.location.x = tentativeX;
                                nextSlot = tentativeX + 1;
                            } else {  // kids must slide right
                                fam.location.x = nextSlot++;
                                int shift = fam.location.x - tentativeX;
                                ArrayList<Object> kidsPlus = addSpice(fam.children);
                                slideKids(kidsPlus, shift, fam.homeChart);
                            }
                            if (previousLoc != null && isSpouseIn(previousLoc, fam)) {
                                previousLoc.setLocationX(fam.location.x - 1);
                            }
                        } else {  //  Fam has no kids
                            fam.location.x = nextSlot++;
                        }
                    }
                }  // end of loop thru the row
            }  // end of loop thru levels                    
            for (Family fam : ctxt.familyCensus) {
                fam.computeBirthGrps();
            }
        }  // end of loop thru all charts   
    }
    
    static boolean isSpouseIn(Locatable loc, Family fam) {
        if (loc instanceof Link) {
            if (fam.husbandLink == loc || fam.wifeLink == loc) {
                return true;
            }
        } else if (loc instanceof Individual) {
            if (fam.husband == loc || fam.wife == loc) {
                return true;
            }
        }
        return false;
    }
    
    ArrayList<Object> addSpice(ArrayList<Object> kids) {
        ArrayList<Object> kidsPlus = new ArrayList<Object>(kids);
        for (Object o : kids) {
            Individual kid = (Individual)o;
            Locatable spouse;
            for (Object f : kid.marriages) {
                Family fam = (Family)f;
                if (fam.wife == kid) {
                    if (fam.husbandLink != null) {
                        spouse = fam.husbandLink;
                    } else {
                        spouse = fam.husband;
                    }
                } else {
                    if (fam.wifeLink != null) {
                        spouse = fam.wifeLink;
                    } else {
                        spouse = fam.wife;
                    }
                }
                if (spouse != null) {
                    kidsPlus.add(spouse);
                }
            }
        }
        return kidsPlus;
    }
    
    void expandToGridUnits() {
        for (Individual ind : ctxt.individualCensus) {
            ind.location.x *= Library.gridX;
            ind.location.y *= Library.gridY;
        }
        for (Link lk : ctxt.linkCensus) {
            lk.location.x *= Library.gridX;
            lk.location.y *= Library.gridY;
        }
        for (Family fam : ctxt.familyCensus) {
            fam.location.x *= Library.gridX;
            fam.location.y *= Library.gridY;
            for (Marriage.BirthGroup bg : fam.birthGrps) {
                bg.topPtX *= Library.gridX;
            }
        }
    }

    
    public static class GEDCOMitem implements Serializable {
        int level, refLoc = -1;
        String tag, ref, text;
        Context localCtxt;
        ArrayList<GEDCOMitem> subItems = new ArrayList<GEDCOMitem>();
        
        public GEDCOMitem(Context c) {
            localCtxt = c;
        }
        
        public GEDCOMitem() {
            localCtxt = null;
        }
        
        public void findSubItems(ParserGEDCOM p) throws KSParsingErrorException {
            p.current = p.scanner.lookAhead();
            if (! p.current.token.equals("level")) {
                p.error("First token on a line was not 'level': " + p.current.lexeme);
            }
            while (p.current.intVal > level) {
                GEDCOMitem line2 = p.readLine();
                line2.findSubItems(p);
                subItems.add(line2);
            }
        }
        
        String getDate() {
            // Assumes this item has a subItem tagged "DATE"
            // If so, return its text. Else, return null.
            if (subItems != null) {
                for (GEDCOMitem item : subItems) {
                    if (item.tag.equals("DATE")) {
                        return item.text;
                    }
                }
            }            
            return null;
        }
        
        public String toSILKString() {
            String s = "  <gedcomItem level=\"" + level;
            s += "\" tag=\"" + tag + "\" ref=\"" +  (ref == null ? "" : ref);
            s += "\" refLoc=\"" + refLoc + "\"/>";
            s += "\n\t<text> \"" + (text == null ? "" : text) + "\" </text>";
            if (!subItems.isEmpty()) {
                s += "\n\t<subItems>";
                for (GEDCOMitem sub : subItems) {
                    s += "\n\t  " + sub.toSILKString();
                }
                s += "\n\t</subItems>"; 
            }
            return s + "\n  </gedcomItem>";
        }
        
        public String toGEDCOMString() {
            String s = "" + level;
            if (refLoc == 1) {
                s += " " + ref + " " + tag;
            } else if (refLoc == 2) {
                s += " " + tag + " " + ref;
            } else {
                s += " " + tag;
            }
            if (text != null && !text.isEmpty()) {
                s += " " + text;
            } 
            for (GEDCOMitem sub : subItems) {
                s += "\n" + sub.toGEDCOMString();
            }
            return s;
        }
        
        public String toString() {
            String img = "\n" + level;
            if (refLoc == 1) {
                img += " " + ref + " " + tag;
            } else if (refLoc == 2) {
                img += " " + tag + " " + ref;
            } else {
                img += " " + tag;
            }
            if (text != null && !text.isEmpty()) {
                img += " " + text;
            } else if (localCtxt != null && refLoc == 2) {
                if (localCtxt.gedcomNotes != null 
                        && localCtxt.gedcomNotes.get(ref) != null) {
                    GEDCOMitem note = localCtxt.gedcomNotes.get(ref);
                    img += "" + note;
                } else if (localCtxt.gedcomSources != null 
                        && localCtxt.gedcomSources.get(ref) != null) {
                    GEDCOMitem note = localCtxt.gedcomSources.get(ref);
                    img += "" + note;
                }
            }            
            for (GEDCOMitem sub : subItems) {
                img += "" + sub;
            }
            return img;
        }

        public String extraDataString() {
            //  Format a comment string including subItems
            String s = "\n" + level + " " + tag;
            if (ref != null) {
                s += " " + ref;
            }
            if (!subItems.isEmpty()) {
                for (GEDCOMitem item : subItems) {
                    s += "" + item;
                }
            }
            return s;
        }

        public String header() {
            return "" + level + " " + tag + " ";
        }
    } // end of class GEDCOMitem
    
    public static class AdoptionRecords implements Serializable {
        ArrayList<Locatable[]> records = new ArrayList<Locatable[]>();
        
        void record(Locatable fam, Locatable kid) {
            Locatable[] pair = { fam, kid };
            records.add(pair);
        }
        
        boolean alreadyRecorded(Locatable fam, Locatable kid) {
            for (Locatable[] pair : records) {
                if (pair[0] == fam && pair[1] == kid) {
                    return true;
                }
            }
            return false;
        }
        
    }
}
