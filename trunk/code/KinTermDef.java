import javax.swing.JOptionPane;
import java.util.* ;
import java.io.*;

public class KinTermDef	 implements Serializable, Comparable  {
	Literal clauseHead;	// by convention, this is:  <kinTerm>(Alter, Ego)
	String kinTerm, eqcSigExact, eqcSigStruct, comments;
        Gloss gloss;
	ArrayList<Object> definitions,	// an ArrayList<Object> of ClauseBodies
			  expandedDefs,	// an ArrayList<Object> of ClauseBodies containing only primitive predicates
			  flags;  //  ArrayList<Object> of flags (strings) found between angle-brackets within the kinTerm string
	TreeMap exactEQCs, structEQCs;  //  the exact & structural EQCs to which this KTD's clauses belong
	Predicate headPred;
	DomainTheory domTh;  //  Ptr to the enclosing Domain Theory
	boolean composed = false;
        static String[] constraintSymbols = makeConstraintSymbols();
        
        static String[] makeConstraintSymbols() {
            String[] constraints = {"male", "female", "elder", "younger",
                   "equal", "not", "divorced", "dead", "gender", "contains",
                    "lessThan", "greaterThan", "lessOrEql", "greaterOrEql"};
        Arrays.sort(constraints);
        return  constraints;
        }
        
	
/*  This zero-arg constructor is for use ONLY by Serialization  */
	KinTermDef()	{
		definitions = new ArrayList<Object>();
		expandedDefs = new ArrayList<Object>();
		flags = new ArrayList<Object>();
        }  //  end of no-arg constructor
        

	KinTermDef(KinTermDef model)	{
		definitions = new ArrayList<Object>(model.definitions);
		expandedDefs = new ArrayList<Object>(model.expandedDefs);
		flags = new ArrayList<Object>(model.flags);
		clauseHead = model.clauseHead;
		kinTerm = model.kinTerm;
		eqcSigExact = model.eqcSigExact;
		eqcSigStruct = model.eqcSigStruct;
		exactEQCs = model.exactEQCs;
		structEQCs = model.structEQCs;
		headPred = model.headPred;
                comments = model.comments;
        }  //  end of cloning constructor
                

	KinTermDef(String term)	{
		kinTerm = term;
		headPred = new Predicate(term);
		headPred.category = new CulturalCategory();
		clauseHead = new Literal(headPred, new Variable("Alter"), new Variable("Ego"));
		definitions = new ArrayList<Object>();
		expandedDefs = new ArrayList<Object>();
		flags = makeFlags();
		}  // end of 'convenience constructor' for making cultural terms
		
	KinTermDef(Literal lit)	{
		kinTerm = lit.predicate.name;
		clauseHead = lit;
		definitions = new ArrayList<Object>();
		expandedDefs = new ArrayList<Object>();
		flags = makeFlags();
		}  // end of constructor which can make any kind of kinterm,
		   // based on the Category of the Predicate in the supplied Literal
		   
	KinTermDef(Literal head, ClauseBody clause)	{
		kinTerm = head.predicate.name;
		clauseHead = head;
		definitions = new ArrayList<Object>();
		definitions.add(clause);
		expandedDefs = new ArrayList<Object>();
		flags = makeFlags();
		}  // end of constructor making a kinterm from existing Horn clause	
	
	public KinTermDef deepCopy()  {
		//  Make an all-new version of this def, with new CBs, new Lits, everything.
		KinTermDef theCopy = new KinTermDef(kinTerm);
		theCopy.eqcSigExact = eqcSigExact;
		theCopy.eqcSigStruct = eqcSigStruct;
		theCopy.domTh = domTh;
		for (int i=0; i < definitions.size(); i++)  {
			ClauseBody cb = (ClauseBody)definitions.get(i);
			theCopy.addClause(cb.deepCopy());
			}
		for (int i=0; i < expandedDefs.size(); i++)  {
			ClauseBody cb = (ClauseBody)expandedDefs.get(i);
			theCopy.addExpClause(cb.deepCopy());
			}
		return theCopy;
		}  //  end of method deepCopy
	
	
	
	/** Provide a method of comparing 2 KTDs for use in TreeMaps and TreeSets.
	*/
	public int compareTo(Object obj) throws ClassCastException {
		if (obj == null) return -1;
		KinTermDef other = (KinTermDef)obj;
		int answer = kinTerm.compareTo(other.kinTerm);
		if (answer != 0) return answer;
		return domTh.languageName.compareTo(other.domTh.languageName);
		}  //  end of compareTo method; required for the Comparable interface
	
	
	public boolean isEquivalent(KinTermDef otherDef, ArrayList<Object> refutation) 
			throws KSParsingErrorException, JavaSystemException, KSInternalErrorException, FileNotFoundException, 
					KSConstraintInconsistency, KSBadHornClauseException, KSNoChainOfRelations2Alter, 
					ClassNotFoundException  {
		//  We know that otherDef is a complete, correct KTD: the 'right answer'
		Library.KTD_EQC eqc = new Library.KTD_EQC(eqcSigExact, this);
		boolean answer = eqc.canAssimilate(otherDef, refutation);
		if (! answer && refutation.isEmpty())  {
			//  We know the problem is unequal sigStrings or unequal sizes of ExpDefs.
			//  Almost certainly unequal sigStrings.
			 //  refutation = A pair = {(String)type, CB}
			if (! eqcSigExact.equals(otherDef.eqcSigExact))  {
				ArrayList<Object> thisList = decodeString(eqcSigExact),
						  otherList = decodeString(otherDef.eqcSigExact);
				Iterator iter = thisList.iterator();
				while (iter.hasNext())  {  //  Subtract the set-intersection from each set of pcStrings
					String thisString = (String)iter.next();
					int where = otherList.indexOf(thisString);
					if (where > -1)  {
						iter.remove();
						otherList.remove(where);
						}
					}  //  end of loop thru exact strings
				String refer = null;
				if (otherList.size() > 0)  {
					int where = 0;
					refer = (String)otherList.get(where++);
					while (where < otherList.size() && refer.indexOf("*") > -1)  //  UDPs not allowed in refutation
						refer = (String)otherList.get(where++);
					if (refer.indexOf("*") == -1) for (int i=0; i < otherDef.expandedDefs.size(); i++)  {
						ClauseBody cb = (ClauseBody)otherDef.expandedDefs.get(i);
						if (cb.pcString.equals(refer)) {
							refutation.add("missingCB");
							refutation.add(cb);
							i = otherDef.expandedDefs.size();
							}
						}  //  end of search for matching CB
					}  //  end of search in otherList
				if (refutation.isEmpty() && thisList.size() > 0)  {
					int where = 0;
					refer = (String)thisList.get(where++);
					while (where < thisList.size() && refer.indexOf("*") > -1)
						refer = (String)thisList.get(where++);
					if (refer.indexOf("*") == -1) for (int i=0; i < expandedDefs.size(); i++)  {
						ClauseBody cb = (ClauseBody)expandedDefs.get(i);
						if (cb.pcString.equals(refer)) {
							refutation.add("extraCB");
							refutation.add(cb);
							i = expandedDefs.size();
							}
						}  //  end of search for matching CB
					}
				if (refutation.size() > 0 || refer != null) //  Refutations found, or exist but contain UDPs. 
					return answer;   
				else throw new KSInternalErrorException("KTD.isEquivalent failed to find refutation."); 
			}
/*			else {
				System.out.println("\n***** NOTICE:  2 KTDs with identical kin Types are not equal."); 
				System.out.print("\t" + domTh.languageName + ":" + kinTerm);
				System.out.println(" and " + otherDef.domTh.languageName + ":" + otherDef.kinTerm);
				System.out.println("\tboth have ExactString = " + eqcSigExact);
				}
*/			}
		return answer;
		}  //  end of method isEquivalent
	
	
	ArrayList<Object> decodeString(String sigString)  {
		//  An eqcSigExact is a concatenation of PCStrings separated by _'s
		//  Un-concatenate them into an ArrayList<Object>
		ArrayList<Object> decoded = new ArrayList<Object>();
		if (sigString == null) return decoded;
		int start = 0, stop = sigString.indexOf("_");
		while (stop > -1)  {
			decoded.add(sigString.substring(start, stop));
			start = stop + 1;
			stop = sigString.indexOf("_", start); 
			}  //  end of loop thru all but last string
		decoded.add(sigString.substring(start));
		return decoded;
		}  //  end of method decodeString
	
	
	void addClause(ClauseBody clause)	{	
		definitions.add(clause);
		clause.seqNmbr = definitions.size() -1;
		clause.ktd = this;
		} //  end of method addClause
	
	
	void addExpClause(ClauseBody clause)	{	
		expandedDefs.add(clause);	
		clause.seqNmbr = expandedDefs.size() -1;
		clause.ktd = this;
		} //  end of method addExpClause
        
		
	public ClauseBody findExpDef(String kinType)  {
		ClauseBody expDef = null;
		
		return expDef;
		}  //  end of method findExpDef
	
	
	void addToEQCs(ClauseBody cb)	{	//  Add cb to the 2 EQCs it belongs in.
		if (cb.pcString != null)  {
			if (exactEQCs == null) exactEQCs = new TreeMap();
			if (exactEQCs.get(cb.pcString) == null) 
				exactEQCs.put(cb.pcString, new ArrayList<Object>());
			((ArrayList<Object>)exactEQCs.get(cb.pcString)).add(cb);
			}
		if (cb.pcStringStructural != null)  {
			if (structEQCs == null) structEQCs = new TreeMap();
			if (structEQCs.get(cb.pcStringStructural) == null) 
				structEQCs.put(cb.pcStringStructural, new ArrayList<Object>());
			((ArrayList<Object>)structEQCs.get(cb.pcStringStructural)).add(cb);
			}
		}  //  end of method addToEQCs
	
	
    public void retrieveSigExact() {
        //  To avoid a disk read, get signature from Library
        TreeMap termTree = (TreeMap) Library.predEncodings.get(domTh.languageName);
        Library.KTD_Coder coder = (Library.KTD_Coder) termTree.get(kinTerm);
        eqcSigExact = coder.exactSigStr;
    }  //  end of method retrieveSigExact

    public void computeEQCSigs() throws KSInternalErrorException {
        //  Produce the sorted-concatenation of CB PC_Strings = the signature of this KTD
        Iterator iter = exactEQCs.keySet().iterator();
        if (!iter.hasNext() && eqcSigExact != null) {
            return;  //  Already computed for read-from-file KTD
        }
        if (!iter.hasNext()) {
            throw new KSInternalErrorException("KTD.computeEQCSigs finds no exactEQCs and no eqcSigExact.");
        }
        String signature = (String) iter.next();
        while (iter.hasNext()) {
            signature += "_" + (String) iter.next();
        }
        eqcSigExact = signature;
        iter = structEQCs.keySet().iterator();
        if (!iter.hasNext() && eqcSigStruct != null) {
            return;
        }
        signature = (String) iter.next();
        while (iter.hasNext()) {
            signature += "_" + (String) iter.next();
        }
        eqcSigStruct = signature;
    }  //  end of method computeEQCSigs

    public void makeSigStrings() throws KSInternalErrorException {
        exactEQCs = new TreeMap();
        structEQCs = new TreeMap();  //  initialize EQC trees
        for (int j = 0; j < expandedDefs.size(); j++) {
            ClauseBody cb = (ClauseBody) expandedDefs.get(j);
            if (cb.pcStringStructural == null) {
                cb.pcStringStructural = ClauseBody.structStr(cb.pcString);
            }
            addToEQCs(cb);
        }
        computeEQCSigs();
    }
	
        
	public String toString()	{
		int nmbrDefs = definitions.size();
		String allDefs = " :- ", expDefs, pad = " ", flagList = "";
		String ch = clauseHead.toString();
		for (int j=2; j < ch.length(); j++)
			pad += " ";
		for (int i = 0; i < nmbrDefs; i++)  {
			allDefs += definitions.get(i).toString() + "\n";  
			if (i < (nmbrDefs - 1))	
				allDefs += pad + "  |  ";
		}  // end of for-all-definitions
		nmbrDefs = expandedDefs.size();
		if (nmbrDefs > 0)  {
			expDefs =  "E x p a n d s   t o : \n"  + ch + " :- ";
			for (int i = 0; i < nmbrDefs; i++)  {
				expDefs += expandedDefs.get(i).toString() + "\n";  
				if (i < (nmbrDefs - 1))	{
					if (i < 9) expDefs += (i+1) + pad + " |  ";
					else expDefs += (i+1) + pad + "|  ";
				}  //  end of if-i<nmbrDefs-1
			}  // end of for-all-expanded-definitions
		}  // end of if-there-are-any-expandedDefs
		else expDefs = "";
		if (flags.size() > 0) {
			flagList = "Definition Flags: " + (String)flags.get(0);
			for (int i=1; i < flags.size(); i++)
				flagList += ", " + (String)flags.get(i);
			flagList += "\n";
		}  //  end of if-there-are-flags
		return ch + allDefs + flagList + expDefs;
	}  // end of over-riding toString method
			
        
	public String toString(int limit)	{
		int nmbrDefs = definitions.size();
		String allDefs = " :- ", expDefs, pad = " ", flagList = "";
		String ch = clauseHead.toString();
		for (int j=2; j < ch.length(); j++)
			pad += " ";
		for (int i = 0; i < nmbrDefs; i++)  {
			allDefs += definitions.get(i).toString() + "\n";  
			if (i < (nmbrDefs - 1))	
				allDefs += pad + "  |  ";
		}  // end of for-all-definitions
		if (allDefs.length() > limit) 
			return ch + allDefs;
		int soFar = ch.length() + allDefs.length();
		nmbrDefs = expandedDefs.size();
		if (nmbrDefs > 0)  {
			expDefs =  "E x p a n d s   t o : \n"  + ch + " :- ";
			for (int i = 0; i < nmbrDefs; i++)  {
				expDefs += expandedDefs.get(i).toString() + "\n";  
				if (i < (nmbrDefs - 1))	{
					if (i < 9) expDefs += (i+1) + pad + " |  ";
					else expDefs += (i+1) + pad + "|  ";
					}  //  end of if-i<nmbrDefs-1
				if (soFar + expDefs.length() > limit)
					return ch + allDefs + expDefs + "\n\t...";
				}  // end of for-all-expanded-definitions
			}  // end of if-there-are-any-expandedDefs
		else expDefs = "";
		if (flags.size() > 0) {
			flagList = "Definition Flags: " + (String)flags.get(0);
			for (int i=1; i < flags.size(); i++)
				flagList += ", " + (String)flags.get(i);
			flagList += "\n";
		}  //  end of if-there-are-flags
		return ch + allDefs + flagList + expDefs;
	}  // end of abreviated toString method
			
        
        public String toString(String type, boolean inclPrim, boolean inclExt)	{
            if (! ((type.equals("original")) || (type.equals("expanded"))))
                return "ERROR: only valid type args are 'expanded' and 'original.'";
            String allDefs = " :- ", pad = " ", nxt;
            String ch = clauseHead.toString();
            for (int j=2; j < ch.length(); j++)  pad += " ";
            int nmbrDefs, lastDef = 0, j=1;
            ArrayList<Object> chosen = new ArrayList<Object>();
            ClauseBody cb;
            if (type.equals("original"))  {
                nmbrDefs = definitions.size(); 
                for (int i = 0; i < nmbrDefs; i++)  {
                    cb = (ClauseBody)definitions.get(i);
                    if (((cb.flags.contains("ext")) && (inclExt)) 
                        || ((! cb.flags.contains("ext")) && (inclPrim)))
                        lastDef = i;
                }
                for (int i = 0; i < nmbrDefs; i++)  {
                    cb = (ClauseBody)definitions.get(i);
                    if (((cb.flags.contains("ext")) && (inclExt)) 
                        || ((! cb.flags.contains("ext")) && (inclPrim)))  {
                        allDefs += cb.toString() + "\n";  
                        if (i < lastDef)	
                            allDefs += pad + "  |  ";
                    }  //  end of if-its-the-right-flavor
                }  // end of for-all-definitions
            }else {  //  type must be "expanded"  
                nmbrDefs = expandedDefs.size();
                if (nmbrDefs > 0)  {
                    ch = "";
                    allDefs = "";
                    for (int i = 0; i < nmbrDefs; i++)  {
                        cb = (ClauseBody)expandedDefs.get(i);
                        if (((cb.flags.contains("ext")) && (inclExt)) 
                            || ((! cb.flags.contains("ext")) && (inclPrim)))  {
                            nxt = String.valueOf(i);
                            if (nxt.length() == 1) pad = "  ";
                            else pad = " ";
                            allDefs += nxt + pad + cb.toString() + "\n";  
                        }     //  end of if-it's-the-right-flavor
                    }  // end of for-all-expanded-definitions
                }  // end of if-there-are-any-expandedDefs
            }  //  end of else-expanded-defs-are-selected
            return ch + allDefs;
        }  // end of toString method with a single string + 2 booleans
        
        
        public String toThyString()	throws KSInternalErrorException  {
            int nmbrDefs = definitions.size();
            String allDefs = " :- ", expDefs =  "", pad = " ", flagList = "";
            String ch = clauseHead.toString();
            for (int j=2; j < ch.length(); j++)
                pad += " ";
            for (int i = 0; i < nmbrDefs; i++)  {
                allDefs += ((ClauseBody)definitions.get(i)).toThyString() + "\n";  
                if (i < (nmbrDefs - 1))	
                    allDefs += pad + "  |  ";
            }  // end of for-all-definitions
            String eqcStr = (eqcSigExact == null  ? "" : "{\"" + eqcSigExact + "\"}\n");
            if (comments != null && !comments.isEmpty()) {
                eqcStr += "\"" + comments + "\"\n";
            }
            nmbrDefs = expandedDefs.size();
            for (int i = 0; i < nmbrDefs; i++)  
				expDefs += ((ClauseBody)expandedDefs.get(i)).toThyString() + "\n";  
            return ch + allDefs + eqcStr + expDefs;
        }  // end of toThyString method

        public String toXML(String bacer) {
            String spacer = "\t", dblSpacer = "\t\t";
            String s = bacer + "<kin-term-def>\n", langName = null;
            s += bacer + spacer + "<head>" + kinTerm + "</head>\n";
            if (definitions == null || definitions.isEmpty()) {
                try {
                    langName = domTh.languageName;
                    String fileName = Library.libraryDirectory + "Domain Theory Files/" + langName + ".thy";
                    Parser parzer = new Parser(new Tokenizer(Library.getDFA(), new Linus(fileName)));
                    KinTermDef ktdIn = parzer.parseKinTerm(kinTerm, false);
                    definitions = ktdIn.definitions;
                } catch (Exception exc) {
                    String msg = "<!-- Disk read error prevented finding definition.";
                    msg += "\nKinTermDef = " + langName + ":" + kinTerm;
                    msg += "\nReport this bug! -->";
                    JOptionPane.showMessageDialog(null, msg, "Internal Error", JOptionPane.ERROR_MESSAGE);
                    MainPane.activity.log.append(msg);
                    System.err.println(msg);
                    s += msg;
                }
            } // end of definitions-was-empty
            for (int i=0; i < definitions.size(); i++) {
                s += ((ClauseBody)definitions.get(i)).toXML(bacer + spacer);
            }
            s += bacer + "</kin-term-def>";
            return s;
        }
        
        
    public String toSILKString(String bacer, boolean writeDT) {
        String spacer = "\t", dblSpacer = "\t\t";
        String kt = (writeDT ? "" : " term=\"" + kinTerm + "\"");
        String s = bacer + "<kin-term-def" + kt + ">\n", langName = null;
        s += bacer + spacer + "<head>" + kinTerm + "</head>\n";
        if (eqcSigExact != null) {
            s += bacer + spacer + "<eqcSigExact>" + eqcSigExact + "</eqcSigExact>\n";
        }
        if (eqcSigStruct != null) {
            s += bacer + spacer + "<eqcSigStruct>" + eqcSigStruct + "</eqcSigStruct>\n";
        }
        if (gloss == null && eqcSigExact != null) {
            gloss = gloss();
        }
        if (gloss != null) {
            s += gloss.toSILKString(bacer + spacer);
        }
        if (comments != null && !comments.isEmpty()) {
            s += bacer + spacer + "<comments text=\"" + comments + "\"/>\n";
        }
        if (writeDT) {
            s += bacer + spacer + "<domain-theory>\n";
            s += bacer + dblSpacer + "<language name=\"" + domTh.languageName + "\"/>\n";
            if (domTh.polygamyOK) {
                s += bacer + dblSpacer + "<polygamyOK />\n";
            }
            if (domTh.author != null && domTh.author.length() > 0) {
                s += bacer + dblSpacer + "<author name=\"" + sanitize(domTh.author) + "\"/>\n";
            }
            s += bacer + dblSpacer + "<create-date value=\"" + domTh.createDate + "\"/>\n";
            if (domTh.citation != null && domTh.citation.length() > 0) {
                s += bacer + dblSpacer + "<citation txt=\"" + sanitize(domTh.citation) + "\"/>\n";
            }
            s += bacer + spacer + "</domain-theory>\n";
        }
        if (definitions == null || definitions.isEmpty()) {
            try {
                langName = domTh.languageName;
                String fileName = Library.libraryDirectory + "Domain Theory Files/" + langName + ".thy";
                Parser parzer = new Parser(new Tokenizer(Library.getDFA(), new Linus(fileName)));
                KinTermDef ktdIn = parzer.parseKinTerm(kinTerm, false);
                definitions = ktdIn.definitions;
            } catch (Exception exc) {
                String msg = "<!-- Disk read error prevented finding definition.";
                msg += "\nKinTermDef = " + langName + ":" + kinTerm;
                msg += "\nReport this bug! -->";
                JOptionPane.showMessageDialog(null, msg, "Internal Error", JOptionPane.ERROR_MESSAGE);
                MainPane.activity.log.append(msg);
                System.err.println(msg);
                s += msg;
            }
        } // end of definitions-was-empty
        if (!definitions.isEmpty()) {
            s += bacer + spacer + "<definitions>\n";
            for (int i = 0; i < definitions.size(); i++) {
                s += ((ClauseBody) definitions.get(i)).toSILKString(bacer + dblSpacer);
            }
            s += bacer + spacer + "</definitions>\n";
        }
        if (!expandedDefs.isEmpty()) {
            s += bacer + spacer + "<expandedDefs>\n";
            for (int i = 0; i < expandedDefs.size(); i++) {
                s += ((ClauseBody) expandedDefs.get(i)).toSILKString(bacer + dblSpacer);
            }
            s += bacer + spacer + "</expandedDefs>\n";
        }
        s += bacer + "</kin-term-def>";
        return s;
    }
     
    Gloss gloss() {
        if (!expandedDefs.isEmpty()) {
            ClauseBody sample = (ClauseBody)expandedDefs.get(0);
            if (sample.expansionPath != null && !sample.expansionPath.isEmpty()) {
                return smartGloss();
            }
        }
        return dumbGloss();
    }
        
    /** When a complete KinTermDef is available, for each base clause we generate:
     *      - a simple gloss of the kin types _OR_
     *      - a Horn Clause representation of the base clause with constraints 
     *        and cultural predicates PLUS glosses and footnotes for each cultural
     *        predicate appearing.
     * 
     * @return  an English representation of the kin type or Horn clause plus glosses 
     *          of any cultural kin terms used in the definition.
     */Gloss smartGloss() {
        Gloss glos = new Gloss();
        ArrayList<String> cumCulturalPreds = new ArrayList<String>();
        for (int i=0; i < definitions.size(); i++) {
            ClauseBody cb = (ClauseBody) definitions.get(i);
            ArrayList<String> predicates = pluckPredicates(cb);
            ArrayList<String> culturalPreds = getCulturalPreds(predicates);
            ArrayList<String> pcStrings = getKinTypes(i);
            if (hasNoConstraints(predicates) && culturalPreds.isEmpty()) {
                for (String s : pcStrings) {
                        glos.elements.add(glossify(s));
                    }                
            }else {
                glos.elements.add(cb.toSimpleHornClause());
            }
            for (String cPred : culturalPreds) {  // union set of cPreds
                if (!cumCulturalPreds.contains(cPred)) {
                    cumCulturalPreds.add(cPred);
                }
            }
        }  //  end of loop thru all base clauses
        if (!cumCulturalPreds.isEmpty()) {
//            cumCulturalPreds = alphabetize(cumCulturalPreds);  //  Parser.parseKinTerm reads file in order
            String langName = null;
            try {
                langName = domTh.languageName;  //  Library domTheory where def was found
                String fileName = Library.libraryDirectory + "Domain Theory Files/" + langName + ".thy";
                for (String cPred : cumCulturalPreds) {
                    Parser parzer = new Parser(new Tokenizer(Library.getDFA(), new Linus(fileName)));
                    KinTermDef culturalKTD = parzer.parseKinTerm(cPred, false);
                    ArrayList pcStringList = decodeString(culturalKTD.eqcSigExact);
                    for (Object o : pcStringList) {
                        glos.addCulturalPred(cPred, glossify((String)o));
                    }                    
                }
                glos.addCitation(domTh.citation);                
            } catch (Exception exc) {
                String msg = "<!-- Disk read error prevented finding definition:\n" + exc;
                msg += "\nKinTermDef = " + langName + ":" + kinTerm;
                msg += "\nReport this bug! -->";
                JOptionPane.showMessageDialog(null, msg, "Internal Error", JOptionPane.ERROR_MESSAGE);
                MainPane.activity.log.append(msg);
                System.err.println(msg);
                glos.elements.add(msg);
            }
        }  // end of optional 'WHERE' section defining cultural predicates used in def.  
        return glos;
    }
     
    ArrayList<String> getCulturalPreds(ArrayList<String> predicates) {
        ArrayList<String> cPreds = new ArrayList<String>();
        for (String pred : predicates) {
            if (!DomainTheory.primitiveCodes.containsKey(pred)) {
                cPreds.add(pred);
            }
        }        
        return cPreds;
    }
    
    ArrayList<String> alphabetize(ArrayList<String> input) {
        TreeMap<String, String> sorter = new TreeMap<String,String>();
        for (String s : input) {
            sorter.put(s,s);
        }
        return new ArrayList<String>(sorter.keySet());
    }
        
        
    ArrayList<String> getKinTypes(int seqNmbr) {
        ArrayList<String> result = new ArrayList<String>();
        for (int k=0; k < expandedDefs.size(); k++) {
            ClauseBody expDef = (ClauseBody)expandedDefs.get(k);
            String path = (String)expDef.expansionPath.get(0);
            int colon = path.indexOf(":");
            int baseCB = Integer.parseInt(path.substring(colon +1));
            if (baseCB == seqNmbr) {
                result.add(expDef.pcString);
            }
        }
        return result;
    }
     
    ArrayList<String> pluckPredicates(ClauseBody cb) {
        ArrayList<String> preds = new ArrayList<String>();
        for (int i = 0; i < cb.body.size(); i++) {
            Literal lit = (Literal) cb.body.get(i);
            if (!preds.contains(lit.predicate.name)) {
                preds.add(lit.predicate.name);
            }
        }
        return preds;
    }
    
           
    /** Whenever an internally-generated KinTermDef is not available, this method
     *  can construct a serviceable gloss from the information contained in the
     *  SILK file representation of a KTD.
     * 
     * @return an English representation of the kin type
     */Gloss dumbGloss() {
        Gloss glos = new Gloss();
         ArrayList<String> predicates = pluckAllPredicates();
        if (hasNoConstraints(predicates)) {
            ArrayList pcStringList = decodeString(eqcSigExact); 
            for (Object o : pcStringList) {
                glos.elements.add(glossify((String)o));
            }
        } else {
            String head0 = headPred.name + "(Alter,Ego) :- ";
            String head2 = "                    |  ";
            int st = Math.max(0,head2.length() - head0.length());
            head2 = head2.substring(st);
            for (Object o : definitions) {
                ClauseBody cb = (ClauseBody)o;
                glos.elements.add(head0 + cb.toSimpleHornClause());
                head0 = head2;
            }
        }
        return glos;
    }
     
    String glossify(String pcString) {
        String gloz = "";
        ArrayList<String> symbols = explodePCSymbols(pcString);
        int last = symbols.size() - 1;
        for (int i = 0; i < last; i++) {
            String symbol = (String) symbols.get(i);
            gloz += decodePCSymbol(symbol) + "'s ";
        }
        gloz += decodePCSymbol((String) symbols.get(last));
        return gloz;
    }
    
    ArrayList<String> pluckAllPredicates() {
        ArrayList<String> preds = new ArrayList<String>();
        for (Object o : definitions) {
            ClauseBody cb = (ClauseBody) o;
            for (int i = 0; i < cb.body.size(); i++) {
                Literal lit = (Literal) cb.body.get(i);
                if (!preds.contains(lit.predicate.name)) {
                    preds.add(lit.predicate.name);
                }
            }
        }
        return preds;
    }
    
    static boolean hasNoConstraints(ArrayList<String> symbols) {
        for (String s : symbols) {
            if (Arrays.binarySearch(constraintSymbols, s) > -1) {
                return false;
            }
        }
        return true;
    }
    
    static ArrayList<String> explodePCSymbols(String pcString) {
        ArrayList<String> symbols = new ArrayList<String>();
        char ch;
        int cap = 0;
        for (int i = 1; i < pcString.length(); i++) {
            ch = pcString.charAt(i);
            if (Character.isUpperCase(ch) || ch == '*') {
                String symbol = pcString.substring(cap, i);
                symbols.add(symbol);
                cap = i;
            }  //  end of processing completed symbol
        }  //  end of loop thru the symbols
        symbols.add(pcString.substring(cap));
        return symbols;        
    }
    
        
    static String decodePCSymbol(String symbol) {
        if (symbol.equals("Fa")) {
            return "father";
        } else if (symbol.equals("Mo")) {
            return "mother";
        } else if (symbol.equals("Bro")) {
            return "brother";
        } else if (symbol.equals("Sis")) {
            return "sister";
        } else if (symbol.equals("P")) {
            return "parent";
        } else if (symbol.equals("C")) {
            return "child";
        } else if (symbol.equals("Hu")) {
            return "husband";
        } else if (symbol.equals("Wi")) {
            return "wife";
        } else if (symbol.equals("Sp")) {
            return "spouse";
        } else if (symbol.equals("So")) {
            return "son";
        } else if (symbol.equals("Da")) {
            return "daughter";
        } else if (symbol.equals("Sib")) {
            return "sibling";
        } else if (symbol.equals("Hbro")) {
            return "half-brother";
        } else if (symbol.equals("Hsis")) {
            return "half-sister";
        } else if (symbol.equals("Stbro")) {
            return "stepbrother";
        } else if (symbol.equals("Stsis")) {
            return "stepsister";
        } else if (symbol.equals("Stfa")) {
            return "stepfather";
        } else if (symbol.equals("Stmo")) {
            return "stepmother";
        } else if (symbol.equals("Stso")) {
            return "stepson";
        } else if (symbol.equals("Stda")) {
            return "stepdaughter";
        }
        return "unknownSymbol";
    }

        static String sanitize(String input) {
            return FamilyPanel.convertBannedCharacters(input);
        }


    void expandClauses(Context hypo) throws KSBadHornClauseException, KSConstraintInconsistency,
                    KSInternalErrorException {
        ClauseBody cb, twin;
        for (int i = 0; i < definitions.size(); i++) {  // each definition is a ClauseBody
            cb = (ClauseBody) definitions.get(i);
            cb.expand(hypo, expandedDefs, kinTerm, i);
            cb.unifyVariables();
        }
        //  Now tidy up a bit and we're done.
        ArrayList<Object> twinList = new ArrayList<Object>();
        for (int j = 0; j < expandedDefs.size(); j++) {  //  1st loop: look for genderVarTwins
            cb = (ClauseBody) expandedDefs.get(j);
            twin = cb.makeGenderTwin();
            if (twin != null) {
                twinList.add(twin);
            }
        }  //  end of for-each-Expanded-Definition
        expandedDefs.addAll(twinList);
        for (int j = 0; j < expandedDefs.size(); j++) {  //  2nd loop: unifyVars & number the CBs
            cb = (ClauseBody) expandedDefs.get(j);
            cb.unifyVariables();
            cb.seqNmbr = j;
        }  //  end of for-each-Expanded-Definition
        return;
    }  // end of method expandClauses
	
	
	/** This method is called during analysis of the Library's Domain Theories.  It adds to the list 
	of Head Clause Variable Constraints.  It accumulates the counts and records the booleans needed to 
	derive all the other features needed for a FeatureVectorObj.  It determines which Equivalence Classes
	(EQCs) in the ClauseIndex each clause belongs to, and builds the set of EQCs to which this KTD belongs.
	
	@param	hcvc		a list to which we will add all the Head Clause Variable Constraints.
	@param	ivc			a list to which we will add all the Internal Variable Constraints.
	@param	params		3 ints: 0=RecipCnt, 1=MultiGenCnt, 2=TotalLat.
	@param	boolArray	3 booleans: 0=GenSkewing, 1=StepTerms, 2=UDPs.
	*/
	public void analyzeFeatures(ArrayList<Object> hcvc, ArrayList<Object> ivc, int[] params, boolean[] boolArray) 
								throws KSInternalErrorException {
		ClauseBody cb;
		Literal lit = new Literal();
        Predicate predicate;
		exactEQCs = new TreeMap(); 
		structEQCs = new TreeMap();  //  initialize EQC trees
		int[] lvlsFound = new int[expandedDefs.size()];  //  collect one level for each cb processed
		ArrayList<Object> headVars = new ArrayList<Object>();
		for (int k=0; k < clauseHead.args.size(); k++) headVars.add(clauseHead.args.get(k));
		for (int j=0; j < expandedDefs.size(); j++)  {
			cb = (ClauseBody)expandedDefs.get(j);
			lvlsFound[j] = cb.level;
			addToEQCs(cb);  
			params[2] += cb.lateralCount();
			Argument arg0, arg1;
			for (int i=0; i < cb.body.size(); i++)  {
				lit = (Literal)cb.body.get(i);
				predicate = lit.predicate;
				ArrayList<Object> parList;
				arg0 = (Argument)lit.args.get(0);
				if (lit.args.size() == 1) arg1 = null;
				else arg1 = (Argument)lit.args.get(1);
				if ((predicate.name.equals("elder")) || (predicate.name.equals("younger"))) {  // a binary constraint   
					String canonicalForm = stdFormLitString(lit);
					if ((headVars.contains(arg0)) || (headVars.contains(arg1))) 
						if (! hcvc.contains(canonicalForm)) hcvc.add(canonicalForm);
					if (! ((headVars.contains(arg0)) && (headVars.contains(arg1)))) 
						if (! ivc.contains(canonicalForm)) ivc.add(canonicalForm);
				}else if (predicate.name.indexOf("*") > -1)  {  //  i.e. it's a User Defined Property
					boolArray[2] = true;
				}else if (predicate.name.equals("gender")) {  // a math variable is being set for gender
					String canonicalForm = stdFormLitString(lit);
					if (headVars.contains(arg1)) { 
						if (! hcvc.contains(canonicalForm)) hcvc.add(canonicalForm);
					}else if (! ivc.contains(canonicalForm)) ivc.add(canonicalForm);
					}
				}  //  end of loop thru Literals in this ClauseBody
			// Analyze for step- or half- relations in this ClauseBody
			if (! boolArray[1] && multiSpice(cb)) boolArray[1] = true;
			}  //  end of loop thru each expanded Def for this KTD
		if (reciprocal(lvlsFound)) params[0]++;
		boolean[] localBools = { false, false };
		multiGenAndSkew(lvlsFound, localBools);
		if (localBools[0]) params[1]++;
		if (localBools[1]) boolArray[0] =  true;
		computeEQCSigs();
		}  //  end of method analyzeFeatures

	
	boolean multiSpice(ClauseBody cb)  {
		if (cb.pcString.indexOf("Hb") >= 0) return true;
		if (cb.pcString.indexOf("Hs") >= 0) return true;
		if (cb.pcString.indexOf("St") >= 0) return true;
		return false;
		}  //  end of method multiSpice
	
		
	/** Return a string representation of a literal, standardizing the arguments as follows:
	If the predicate is "not" assume a single negated literal as arg0 and process that as the literal.
	If the args to lit are "Ego" or "Alter" leave them alone.  Otherwise make 'em "arg0", "arg1" etc.
	
	@param	lit		the literal to be represented.
	
	@return	the standard-form string.
	*/
	public String stdFormLitString(Literal lit)  {
		String close = ")", litString = new String(lit.predicate.name + "(");
		//  If the predicate is "not" assume a single negated literal as arg0 and process that.
		if (lit.predicate.name.equals("not"))  {
			lit = (Literal)lit.args.get(0);
			litString += lit.predicate.name + "(";
			close += ")";
			}  //  end of if-its-a-negated-predicate
		//  If the args to lit are "Ego" or "Alter" leave them alone.  Otherwise make 'em "arg0", "arg1" etc.
		Argument arg = (Argument)lit.args.get(0);
		if ((arg.argName.equals("Ego")) || (arg.argName.equals("Alter"))) litString += arg.argName;
		else litString += "arg0";
		for (int i=1; i < lit.args.size(); i++)  {
			arg = (Argument)lit.args.get(i);
			if ((arg.argName.equals("Ego")) || (arg.argName.equals("Alter"))) litString += ", " + arg.argName;
			else litString += ", arg" + i;
			}  //  end of loop thru args
		return litString + close;
		}  //end of method stdFormLitString
    
    
    public boolean reciprocal(int[] lvlsFound)  {
        //	Returns true if for every n in lvlsFound, -n also is present.
		//	At least 1 n ‚Äö√¢‚Ä† 0 is required.
		TreeSet tset = new TreeSet();
        for (int i=0; i < lvlsFound.length; i++)  
            tset.add(new Integer(lvlsFound[i]));
        Iterator lvlIter = tset.iterator();
        Integer target, recip;
        boolean nonZero = false;
        while (lvlIter.hasNext())  {
            target = (Integer)lvlIter.next();
            if ((! nonZero) && (target.intValue() != 0)) nonZero = true;
            recip = new Integer(-1 * target.intValue());
            if (! tset.contains(recip)) return false;
        } // if we get to here, no level was found whose reciprocal was missing
          // so if at least one nonZero value was there, this is a reciprocal set.  Else not.
        return nonZero;
    }  //  end of method reciprocal
	
        
	public void multiGenAndSkew(int[] lvlsFound, boolean[] locals)  {
        //  locals begins as { false, false }
		TreeSet tset = new TreeSet();
        for (int i=0; i < lvlsFound.length; i++)  
            tset.add(new Integer(lvlsFound[i]));
        //	Return true in locals[0] if level n and n+1 are found.
		if (tset.size() < 2) return;  //  no chance of multi-gen or skewing
		Iterator treeIter = tset.iterator();
		Integer int1, int2, int3, zero = new Integer(0);
		int2 = (Integer)treeIter.next();
		while ((! locals[0]) && treeIter.hasNext())  {
			int1 = int2;
			int2 = (Integer)treeIter.next();
			if (int1.intValue() == int2.intValue() -1) locals[0] = true;
			}  //  end while-loop
		//	Return true in locals[1] if level n, n+1, and n+2 are found with one of them = 0.
		if (tset.size() < 3) return;
		treeIter = tset.iterator();
		int2 = (Integer)treeIter.next();
		int3 = (Integer)treeIter.next();
		boolean zeroFound = false;
		while ((! locals[1]) && treeIter.hasNext())  {
			int1 = int2;
			int2 = int3;
			int3 = (Integer)treeIter.next();
			if ((int1.intValue() == 0) || (int2.intValue() == 0) || (int3.intValue() == 0))
				zeroFound = true;
			else zeroFound = false;
			if (zeroFound && (int1.intValue() == int2.intValue() -1) && (int2.intValue() == int3.intValue() -1))
				locals[1] = true;
			}
		}  //  end of method multiGenAndSkew
	
    
        
    /** This method is called to generate examples for Simulated Data Generation.
    
    @param	hypo		the SourceDT Context for this DomainTheory
    @param	egoBag		contains at least 1 male and 1 female {@link Individual} who can serve as Ego in definitions.
    @param	dt			the SourceDT we're using
	@param	learnedDef	the KTD which has been learned for this kinTerm (or null)
    */
    public void generateExamples(Context hypo, ArrayList<Object> egoBag, Oracle orca, KinTermDef learnedDef)  
        throws KSBadHornClauseException, KSInternalErrorException, KSConstraintInconsistency, 
                ClassNotFoundException  {
		if (learnedDef == null) {
			generateExamples(hypo, egoBag, orca);
			return;
			}
		Iterator cbIter = expandedDefs.iterator();
		ClauseBody cb;
		ArrayList<Object> eqcSigList = decodeString(learnedDef.eqcSigExact);
		while (cbIter.hasNext())  {
			cb = (ClauseBody)cbIter.next();
			//  If we've already learned a definition that includes this kinType, we don't need more examples.
			if (! eqcSigList.contains(cb.pcString))  {
				cb.generateExamples(hypo, egoBag, null, orca);
				if (cb.duplicative && ! hypo.simDataGen) {
					cbIter.remove();
					}
				}
			}  //  end of loop thru expanded Defs
		}  // end of method generateExamples
	
  
		      
     /** This method is called to generate examples - in the process it identifies and removes 
		duplicative clauses and re-numbers them.
    
    @param	ctxt		the (hypothetical) Context for this DomainTheory
    @param	egoBag		contains at least 1 male and 1 female {@link Individual} who can serve as Ego in definitions.
    @param	dt			the DomainTheory we're using
    */
    public void generateExamples(Context ctxt, ArrayList<Object> egoBag, Oracle orca)
        throws KSBadHornClauseException, KSInternalErrorException, KSConstraintInconsistency, 
                ClassNotFoundException  {
		Iterator cbIter = expandedDefs.iterator();
		ClauseBody cb;
		int serial = 0;
		while (cbIter.hasNext())  {
			cb = (ClauseBody)cbIter.next();
//     if (ctxt.languageName.equals("Trobriand") && kinTerm.equals("ina") && cb.seqNmbr == 2) Context.breakpoint();
			cb.generateExamples(ctxt, egoBag, null, orca);
			if (cb.duplicative && ! ctxt.simDataGen) {
				cbIter.remove();
			}else cb.seqNmbr = serial++;
			}
		}  // end of method generateExamples
	
  
		      
    /** This method is called when we need to be sure that this KTD has been expanded and all its
    fields computed during generation.
    
    @param	egoBag		contains at least 1 male and 1 female {@link Individual} who can serve as Ego in definitions.
    */
    public void assureExamplesGenerated(ArrayList<Object> egoBag) 
        throws KSBadHornClauseException, KSInternalErrorException, KSConstraintInconsistency, ClassNotFoundException  {
        boolean needAnEgo = false;
        ClauseBody cb ;
        if (expandedDefs == null || expandedDefs.isEmpty()) expandClauses(Context.current);
        for (int i=0; i < expandedDefs.size(); i++)  { 
            cb = (ClauseBody)expandedDefs.get(i);  //  See if computed by generation
            if ((cb.pcCounter + cb.sCounter + cb.starCounter) == 0)  {  // need to generate examples
                needAnEgo = true;
                break;  //  finding one is enough; stop the loop
            }  //  end of need to generate examples
        }  //  end of loop thru expandedDefs
        if (needAnEgo) {
            generateExamples(Context.current, egoBag, null);
            domTh.ctxt.saveState = true;
			}
	}  //  end of method assureExamplesGenerated
        
	
    public ArrayList<Object> makeFlags()  {
        ArrayList<Object> flagList = new ArrayList<Object>();
        int start = 0, left, right;
        while (kinTerm.indexOf("[", start) >= 0) {
            left = kinTerm.indexOf("[", start) + 1;
            right = kinTerm.indexOf("]", start);
            start = Math.min((right + 1), (kinTerm.length() - 1));
            String flag = kinTerm.substring(left, right);
            flagList.add(flag);
        }  //  end of if-flags-are-embedded-in-predicate-name
        return flagList;
    }  //  end of method makeFlags
	
	
	public boolean hasDelayFlags()  {  //  other delayed-ID flags may be added later
		for (int i=0; i < expandedDefs.size(); i++)  {
			ClauseBody cb = (ClauseBody)expandedDefs.get(i);
			if (cb.flags.contains("chooseLast")) return true;
			}
		return false;
		}  //  end of method hasDelayFlags
	
	
	
	public void simplifyClauses() throws KSInternalErrorException, KSConstraintInconsistency, 
				KSBadHornClauseException, ClassNotFoundException {
		//  This method should only be called on Composed Definitions
		ArrayList<Object> superPrims = new ArrayList<Object>(),
				  normalForm = new ArrayList<Object>();
//  if (kinTerm.equals("laveh_khooshkeh_dapeereh")) Context.breakpoint();
//  System.out.println("\n\n\t\tBEFORE:");
//  for (int i=0; i < definitions.size(); i++) System.out.println(definitions.get(i));
		int initialSize = definitions.size();
		for (int i=0; i < initialSize; i++)  {
			ClauseBody orig = (ClauseBody)definitions.get(i),
					   superPrim = orig.canonicalizePreds(orig);
			superPrim.seqNmbr = i;
			superPrims.add(superPrim);
			}
		//  Do pair-wise merging if possible
		boolean progress = true;
		while (progress)  {
			ArrayList<Object> triple = new ArrayList<Object>();
			progress = findMergePairs(superPrims, triple);
			if (progress) {
				ClauseBody aCB = (ClauseBody)triple.get(0),
						   bCB = (ClauseBody)triple.get(1),
						   newCB = (ClauseBody)triple.get(2);
				superPrims.remove(aCB);
				superPrims.remove(bCB);
				superPrims.add(newCB);
				}  //  end of made-progress
			}  //  end of while-progress
		for (int i=0; i < superPrims.size(); i++)  {
			ClauseBody superPrim = (ClauseBody)superPrims.get(i);
			superPrim.makeNormalPrimitive();  
			superPrim.seqNmbr = i;
			superPrim.unifyVariables();
			normalForm.add(superPrim);
			}  //  end of loop thru merged superPrimitives
		definitions = normalForm;
		if (initialSize > definitions.size())  {
			expandedDefs.clear();
			Context realCtxt = domTh.ctxt,
					tempCtxt = new Context(domTh);
			expandClauses(tempCtxt);
			ArrayList<Object> egoBag = domTh.maleAndFemaleCreatedHeThem();
			for (int i=0; i < expandedDefs.size(); i++)  {
				ClauseBody cb = (ClauseBody)expandedDefs.get(i);
				cb.generateExamples(tempCtxt, egoBag, null, null);
				}  //  end of loop thru newly-expanded Defs
			domTh.ctxt = realCtxt;  //  
			}  //  end of if-we-simplified-any-BaseCBs
//  System.out.println("\n\t\tAFTER:");
//  for (int i=0; i < definitions.size(); i++) System.out.println(definitions.get(i));
//  System.out.println("\n");
//  for (int i=0; i < expandedDefs.size(); i++) System.out.println(expandedDefs.get(i));
//  System.out.println("\n");
		}  //  end of method simplifyClauses
	
	
	public boolean findMergePairs(ArrayList<Object> superPrims, ArrayList<Object> triple) throws KSInternalErrorException  {
		//  Find 2 CBs of identical length that unify except for 1 pair of lits
		//  Return the pair plus their merger in triple.
		ClauseBody cb1, cb2;
		for (int i=0; i < superPrims.size() -1; i++)  {
			cb1 = (ClauseBody)superPrims.get(i);
			for (int j=i+1; j < superPrims.size(); j++)  {
				cb2 = (ClauseBody)superPrims.get(j);
				ArrayList<Object> misMatches = new ArrayList<Object>(),
						  boundVars = new ArrayList<Object>(),
						  oldNames = new ArrayList<Object>(),
						  newNames = new ArrayList<Object>();
				Counter limit = new Counter(1);
				if (cb1.body.size() == cb2.body.size()
						&& cb1.almostUnifies(cb1.deepCopy().body, cb2.deepCopy().body, boundVars,
											 oldNames, newNames, misMatches, limit, cb2)
						&& complementaryPreds(misMatches, cb1, cb2))  {
					triple.add(cb1);
					triple.add(cb2);
					triple.add((misMatches.isEmpty() ? cb1 : misMatches.get(2)));
					return true;
					}  //  end of they-almostUnify
				}  //  end of inner loop
			}  //  end  of outer loop
		return false;
		}  //  end of method findMergePairs
	
	
	public boolean complementaryPreds(ArrayList<Object> misMatches, ClauseBody cb1, ClauseBody cb2) 
			throws KSInternalErrorException  {
	//  If the 2 Literals in misMatches are complementary predicates in cb1 & cb2,
	//  add the logical merge of cb1 & cb2 to misMatches & return true.
		if (misMatches.isEmpty()) return true;  //  There aren't any differences.  Easy.
		Literal lit1 = (Literal)misMatches.get(0),
				lit2 = (Literal)misMatches.get(1);
		String pred1 = lit1.predicate.name,
			   pred2 = lit2.predicate.name;
		int where = cb1.body.indexOf(lit1);
		if (where == -1) 
			throw new KSInternalErrorException("In KTD.ComplementaryPreds, missing lit = " + lit1);
		if ((pred1.equals("elder") && pred2.equals("younger"))
			|| (pred2.equals("elder") && pred1.equals("younger")))  {
			//  elder/younger cancel out
			cb1.body.remove(where);
			misMatches.add(cb1);
			return true;
		}else if ((pred1.equals("brother") && pred2.equals("sister"))
				|| (pred2.equals("brother") && pred1.equals("sister")))  {
			//  merge of brother/sister is siblings
			Literal victim = (Literal)cb1.body.get(where);
			victim.predicate.name = "siblings";
			cb1.absorbPCStringsOf(cb2);
			misMatches.add(cb1);
			return true;
		}else if ((pred1.equals("male") && pred2.equals("female"))
				|| (pred2.equals("male") && pred1.equals("female"))) 
			return maleFemaleMerge(misMatches, cb1, cb2);
		return false;
		}  //  end of method complementaryPreds
	
	
	public boolean maleFemaleMerge(ArrayList<Object> misMatches, ClauseBody cb1, ClauseBody cb2) 
					throws KSInternalErrorException {
	//  must cancel these 2 lits, and merge the other lit(s) they constrained
		Literal lit1 = (Literal)misMatches.get(0),
				lit2 = (Literal)misMatches.get(1);
		int where = cb1.body.indexOf(lit1);
		if (where == -1) 
			throw new KSInternalErrorException("In KTD.maleFemaleMerge, missing lit = " + lit1);
		cb1.body.remove(where);
		where = cb2.body.indexOf(lit2);
		if (where == -1) 
			throw new KSInternalErrorException("In KTD.maleFemaleMerge, missing lit = " + lit2);
		cb2.body.remove(where);
		String var1 = ((Argument)lit1.args.get(0)).argName,
			   var2 = ((Argument)lit2.args.get(0)).argName;
		ArrayList<Object> cb1Arg0Lits = new ArrayList<Object>(), cb2Arg0Lits = new ArrayList<Object>(),
				  cb1Arg1Lits = new ArrayList<Object>(), cb2Arg1Lits = new ArrayList<Object>();
		for (int i=0; i < cb1.body.size(); i++)  {
			Literal cb1Lit = (Literal)cb1.body.get(i);
			if (((Argument)cb1Lit.args.get(0)).argName.equals(var1)) 
				cb1Arg0Lits.add(cb1Lit);
			else if (cb1Lit.args.size() > 1 && ((Argument)cb1Lit.args.get(1)).argName.equals(var1)) 
				cb1Arg1Lits.add(cb1Lit);
			}
		for (int i=0; i < cb2.body.size(); i++)  {
			Literal cb2Lit = (Literal)cb2.body.get(i);
			if (((Argument)cb2Lit.args.get(0)).argName.equals(var2)) 
				cb2Arg0Lits.add(cb2Lit);
			else if (cb2Lit.args.size() > 1 && ((Argument)cb2Lit.args.get(1)).argName.equals(var2)) 
				cb2Arg1Lits.add(cb2Lit);
			}
		//  Look for pairs with same predicate.  Gender-specific predicates shouldn't be here -- only neuter Predicates.
		while (cb1Arg0Lits.size() > 0)  {
			Literal cand1 = (Literal)cb1Arg0Lits.remove(0);
			int predType = DT_Abstract2.neuterPreds.indexOf(cand1.predicate.name);
			if (predType > -1)  
				for (int i=0; i < cb2Arg0Lits.size(); i++)  {
					Literal cand2 = (Literal)cb2Arg0Lits.get(i);
					if (cand1.predicate.name.equals(cand2.predicate.name))  {  //  BINGO
						cand1.predicate.name = (String)DT_Abstract2.bothSexPreds.get(predType);
						cand1.predicate.category = new CulturalCategory();
						misMatches.add(cb1);
						cb1.absorbPCStringsOf(cb2);
						return true;  
						}  //  end of BINGO
				}  //  end of loop thru cb2Arg0Lits
			}  //  end of loop thru cb1Arg0Lits
		//  Didn't get a hit in the arg0 lits -- try the arg1 lits.
		while (cb1Arg1Lits.size() > 0)  {
			Literal cand1 = (Literal)cb1Arg1Lits.remove(0);
			int predType = DT_Abstract2.neuterPreds.indexOf(cand1.predicate.name);
			if (predType > -1)  
				for (int i=0; i < cb2Arg1Lits.size(); i++)  {
					Literal cand2 = (Literal)cb2Arg1Lits.get(i);
					if (cand1.predicate.name.equals(cand2.predicate.name))  {  //  BINGO
						Argument hold = (Argument)cand1.args.remove(0);  //  swap args
						cand1.args.add(1, hold);
						if (cand1.predicate.name.equals("parent")) cand1.predicate.name = "children";
						else if (cand1.predicate.name.equals("child")) cand1.predicate.name = "parents";
						else if (cand1.predicate.name.equals("spouse")) cand1.predicate.name = "spice";
						else if (cand1.predicate.name.equals("sibling")) cand1.predicate.name = "siblings";
						cand1.predicate.category = new CulturalCategory();
						misMatches.add(cb1);
						cb1.absorbPCStringsOf(cb2);
						return true;  
						}  //  end of BINGO
				}  //  end of loop thru cb2Arg1Lits
			}  //  end of loop thru cb1Arg1Lits
		//  Sometimes all we need to do is cancel out cb1 & cb2 -- no merge needed.
		misMatches.add(cb1);
		return true;
		}  //  end of method maleFemaleMerge


	}  // end of class KinTermDef
