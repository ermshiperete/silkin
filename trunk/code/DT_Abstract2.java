

import java.util.* ;
import java.text.* ;
import java.io.* ;

/** This class continues the definition of a Domain Theory in Prolog syntax.  In this system, a Domain Theory is a grammar
	defining a Kinship System.  This is the level at which 90% of the action takes place in Active Learning.
	<p>
	Because so many methods are defined at the Domain Theory level, the code files are broken into 4 classes:  
	DT_Abstract1, DT_Abstract2, & DomainTheory, plus Learned_DT. 

  @author		Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
*/
public abstract class DT_Abstract2 extends DT_Abstract1  {
	
	public static ArrayList<Object> neuterPreds = loadNeuters(),
							malePreds = loadMales(),
							femalePreds = loadFemales(),
							bothSexPreds = loadBothSex();
	
	public static ArrayList<Object> loadNeuters()  {
		ArrayList<Object> lst = new ArrayList<Object>();
		lst.add("parent");  lst.add("child");  
		lst.add("spouse");  lst.add("sibling");  
		return lst;
		}

	public static ArrayList<Object> loadMales()  {
		ArrayList<Object> lst = new ArrayList<Object>();
		lst.add("father");  lst.add("son");  
		lst.add("husband");  lst.add("brother");  
		return lst;
		}

	public static ArrayList<Object> loadFemales()  {
		ArrayList<Object> lst = new ArrayList<Object>();
		lst.add("mother");  lst.add("daughter");  
		lst.add("wife");  lst.add("sister");  
		return lst;
		}

	public static ArrayList<Object> loadBothSex()  {
		ArrayList<Object> lst = new ArrayList<Object>();
		lst.add("parents");  lst.add("children");  
		lst.add("spice");  lst.add("siblings");  
		return lst;
		}
	
	public static ArrayList<Object> kinTypeSymbols = loadKTSymbols(),
							kinTypePreds = loadKTPreds(),
							pluralKTPreds = loadPluralKTPreds(),
							pluralKTSymbols = loadPluralKTSymbols();
	
	public static ArrayList<Object> loadKTSymbols()  {
		ArrayList<Object> lst = new ArrayList<Object>();
		lst.add("So");  lst.add("Da");  lst.add("Stso");  lst.add("Stda");  lst.add("C"); 
		lst.add("Fa");  lst.add("Mo");  lst.add("Stfa");  lst.add("Stmo");  lst.add("P");
		lst.add("Hu");  lst.add("Wi");  lst.add("Bro");  lst.add("Sis");  lst.add("Sp");
		lst.add("Hbro");  lst.add("Hsis");  lst.add("Stbro");  lst.add("Stsis");  lst.add("Sib"); lst.add("*");
		return lst;
		}  //  end of method loadKTSymbols
	
	public static ArrayList<Object> loadKTPreds()  {
		ArrayList<Object> lst = new ArrayList<Object>();
		lst.add("son");  lst.add("daughter");  lst.add("step_son");  lst.add("step_daughter");  lst.add("child");
		lst.add("father");  lst.add("mother");  lst.add("step_father");  lst.add("step_mother");  lst.add("parent");
		lst.add("husband");  lst.add("wife");  lst.add("brother");  lst.add("sister");  lst.add("spouse");
		lst.add("half_brother");  lst.add("half_sister");  lst.add("step_brother");  lst.add("step_sister");
		lst.add("sibling");  lst.add("*");
		return lst;
		}  //  end of method loadKTPreds

	public static ArrayList<Object> loadPluralKTPreds()  {
		ArrayList<Object> lst = new ArrayList<Object>();
		lst.add("children");  lst.add("siblings");  lst.add("parents");  
		return lst;
		}  //  end of method loadPluralKTPreds

	public static ArrayList<Object> loadPluralKTSymbols()  {
		ArrayList<Object> lst = new ArrayList<Object>(),
				  symbols = new ArrayList<Object>();
		symbols.add("So");  symbols.add("Da");  
		lst.add(symbols);
		symbols = new ArrayList<Object>();
		symbols.add("Bro");  symbols.add("Sis");
		lst.add(symbols);  
		symbols = new ArrayList<Object>();
		symbols.add("Fa");  symbols.add("Mo");
		lst.add(symbols);  
		return lst;
		}  //  end of method loadPluralKTSymbols

	public static String symbolToPred(String symbol)  throws KSInternalErrorException  {
		int where = kinTypeSymbols.indexOf(symbol);
		if (where == -1) 
			throw new KSInternalErrorException("Illegal kinType symbol '" + symbol + "' in symbolToPred.");
		return (String)kinTypePreds.get(where);
		}

	public static String predToSymbol(String pred)  throws KSInternalErrorException  {
		int where = kinTypePreds.indexOf(pred);
		if (where == -1) 
			throw new KSInternalErrorException("Illegal kinType '" + pred + "' in predToSymbol.");
		return (String)kinTypeSymbols.get(where);
		}


	public PredCategory determineCategory(String symbol) {
		// Identify the 19 Primitive Predicates as special
		// Also consider userDefinedProperties and Math predicates as primitive predicates
		if ((symbol.equals("father")) || (symbol.equals("mother")) || (symbol.equals("son")) 
			|| (symbol.equals("daughter")) || (symbol.equals("husband")) || (symbol.equals("wife"))
			|| (symbol.equals("male")) || (symbol.equals("female")) || (symbol.equals("elder"))
			|| (symbol.equals("younger")) || (symbol.equals("dead")) || (symbol.equals("divorced"))
			|| (symbol.equals("not")) || (symbol.equals("equal")) || (symbol.equals("parent")) 
			|| (symbol.equals("child")) || (symbol.equals("spouse")) 
			|| (symbol.equals("allowCreation")) || (symbol.equals("gender"))
			|| ((userDefinedProperties != null) && userDefinedProperties.containsKey(symbol)))
                    return new PrimitiveCategory();
		//  Treat the Math predicates as a special kind of Primitive
        else if ((symbol.equals("lessThan")) || (symbol.equals("greaterThan")) || 
				 (symbol.equals("lessOrEql")) || (symbol.equals("greaterOrEql")) || 
				 (symbol.equals("contains")))
			return new MathCategory();
		else return new CulturalCategory();
		}  // end of method determineCategory

        
	public boolean allTermsDefined(String umbTerm, ArrayList<Object> subTerms)  {
		String baseTerm = umbTerm;  //  baseTerm = the term or it's synonym base term
		if (synonyms != null && synonyms.get(umbTerm) != null) baseTerm = (String)synonyms.get(umbTerm);
		if (! theory.containsKey(baseTerm)) return false;
		for (int i=0; i < subTerms.size(); i++)  {
			baseTerm = (String)subTerms.get(i);
			if (synonyms != null && synonyms.get(baseTerm) != null) 
				baseTerm = (String)synonyms.get(baseTerm);
			if (! theory.containsKey(baseTerm)) return false;
			}
		return true;
		}  //  end of method allTermsDefined
	
	
    public void generateIndexes() throws KSBadHornClauseException, KSInternalErrorException, KSParsingErrorException,
            FileNotFoundException, KSConstraintInconsistency, ClassNotFoundException, JavaSystemException {
        if (theory == null) {
            return;
        }
        addrTerms = addressTerms;
        current = (DomainTheory) this;
        System.out.println("Making Indexes for " + languageName);
        //  Loop thru theory and make entries in Library.predEncodings & Library.predDecodings
        Iterator iter = theory.keySet().iterator();  //  each key is a kinTerm
        TreeMap predCodes = new TreeMap();
        Library.predEncodings.put(languageName, predCodes);
        int seqNmbr = 0,
                udpSize = (userDefinedProperties == null ? 0 : userDefinedProperties.size());
        String[] deCodes = new String[theory.size() - standardMacroTree.size() + udpSize];
        Library.predDecodings.put(languageName, deCodes);
        while (iter.hasNext()) {
            String kterm = (String) iter.next();
            if (!standardMacroTree.containsKey(kterm)) {  //  don't encode std macros
                predCodes.put(kterm, new Library.KTD_Coder(seqNmbr, ""));
                deCodes[seqNmbr++] = kterm;
            }
        }
        if (userDefinedProperties != null) {
            iter = userDefinedProperties.values().iterator();
            while (iter.hasNext()) {
                UserDefinedProperty udp = (UserDefinedProperty) iter.next();
                predCodes.put(udp.starName, new Library.KTD_Coder(seqNmbr, "*"));
                deCodes[seqNmbr++] = udp.starName;
            }
        }
        ClauseBody.priorPred = "";
        ClauseBody.seqTotal = 0;
        ClauseBody.dupTotal = 0;
        //  Terms deemed 'non_terms' in the domain theory (or those with non_term Flags) are not indexed
        Library.ClauseIndex cbIndex = Library.cbIndex,
                baseCBIndex = Library.baseCBIndex;
        Library.ClauseCounts cbCounts = Library.cbCounts;
        ArrayList<Object> egoBag = maleAndFemaleCreatedHeThem();
        iter = theory.values().iterator();  //  reload for second loop
        while (iter.hasNext()) {
            KinTermDef ktd = (KinTermDef) iter.next();
            if (printableBaseTerm(ktd)) {  //  generate examples for all base terms (incl synonyms)
                ktd.assureExamplesGenerated(egoBag);
                if (printableTerm(ktd)) {	//	only index printable terms
                    for (int i = 0; i < ktd.expandedDefs.size(); i++) {
                        ClauseBody cb = (ClauseBody) ktd.expandedDefs.get(i);
                        cbIndex.addToIndex(new Library.CB_Ptr(cb));
                        cbCounts.addCB(cb);
                        cb.postToBaseSigString();
                    }
                    Library.addToKTSigTrees(ktd);
                    Library.KTD_Coder coder = (Library.KTD_Coder) predCodes.get(ktd.kinTerm);
                    coder.exactSigStr = ktd.eqcSigExact;
                    coder.baseCB_SigStrings = new ArrayList<Object>();
                    for (int i = 0; i < ktd.definitions.size(); i++) {
                        ClauseBody cb = (ClauseBody) ktd.definitions.get(i);
                        cb.sortSigString();
                        Library.BaseCB_Ptr ptr = new Library.BaseCB_Ptr(cb, ktd.expandedDefs);
                        baseCBIndex.addToIndex(ptr);
                        coder.baseCB_SigStrings.add(cb.pcString);
                    }  //  end of loop thru multiple base clauses
                }  //  end of index-it
            }
        }  // end of while hasNext()
        if (Library.parseClauseCounterOn) {
            String pad = "";
            if (++ClauseBody.seq < 10) {
                pad = "  ";
            } else if (ClauseBody.seq < 100) {
                pad = " ";
            }
            System.out.println(ClauseBody.priorPred + ": " + pad + ClauseBody.seq + " - " + ClauseBody.dups
                    + " = " + (ClauseBody.seq - ClauseBody.dups));
            ClauseBody.seqTotal += ClauseBody.seq;
            System.out.println("\nTotal clauses for " + languageName + " is " + ClauseBody.seqTotal
                    + " - " + ClauseBody.dupTotal + " = " + (ClauseBody.seqTotal - ClauseBody.dupTotal) + "\n\n");
        }
        if (Context.current != Library.contextUnderConstruction) {
            Context.current.resetTo(0, 0);  //  get rid of all hypothetical people created
        }
    }  //  end of method generateIndexes

	
    /** This method is called during analysis of the Library's Domain Theories.  It assembles the lists 
    of Head Clause Variable Constraints and other features for this Domain theory.
    
	@returns    a FeatureVectorObj with all the characteristics of this DomainTheory
    */
    public FeatureVectorObj computeFeatureVector(ArrayList<Object> egoList) throws KSInternalErrorException, KSBadHornClauseException,
            KSInternalErrorException, KSConstraintInconsistency, ClassNotFoundException {

        // hcvc = a list of Head Clause Variable Constraints.  ivc = Internal Variable Constraints
        ArrayList<Object> hcvc = new ArrayList<Object>(), ivc = new ArrayList<Object>();
        TreeSet exactSet = new TreeSet(), structSet = new TreeSet();
        Iterator ktdIter = theory.values().iterator();
        KinTermDef ktd;
        ArrayList<Object> egoBag = maleAndFemaleCreatedHeThem();
        addrTerms = addressTerms;
        current = (DomainTheory) this;
        ClauseBody.priorPred = "";  //   Needed for Clause Counts
        ClauseBody.seqTotal = 0;
        ClauseBody.dupTotal = 0;
        int totalCBs = 0, totalKTDs = 0;
        boolean[] boolArray = {false, false, false};	//  elements 0,6,7
        int[] params = {0, 0, 0};  // RecipCnt, MultiGenCnt, TotalLat
        while (ktdIter.hasNext()) {
            ktd = (KinTermDef) ktdIter.next();
            if (printableTerm(ktd)) {  //  generate examples for all terms except non-terms
                ktd.assureExamplesGenerated(egoBag);
                if (printableTerm(ktd)) {
                    if (ktd.eqcSigExact == null || ktd.eqcSigStruct == null) {
                        ktd.makeSigStrings();
                    }
                    ktd.analyzeFeatures(hcvc, ivc, params, boolArray);
                    exactSet.add(ktd.eqcSigExact);
                    structSet.add(ktd.eqcSigStruct);
                    totalCBs += ktd.expandedDefs.size();
                    totalKTDs++;
                }  //  end of printableTerm
            }  //  end of printableBaseTerm
        }  //  end of loop through the KinTermDefs in this Domaintheory
        //  We're now sure all defs have been expanded and the level, etc. fields computed.
        //  Print out the Clause Counts, etc.
        if (Library.parseClauseCounterOn) {
            String pad = "";
            if (++ClauseBody.seq < 10) {
                pad = "  ";
            } else if (ClauseBody.seq < 100) {
                pad = " ";
            }
            System.out.println(ClauseBody.priorPred + ": " + pad + ClauseBody.seq + " - " + ClauseBody.dups
                    + " = " + (ClauseBody.seq - ClauseBody.dups));
            ClauseBody.seqTotal += ClauseBody.seq;
            System.out.println("\nTotal clauses for " + languageName + " is " + ClauseBody.seqTotal
                    + " - " + ClauseBody.dupTotal + " = " + (ClauseBody.seqTotal - ClauseBody.dupTotal) + "\n\n");
        }
//  Disabled - now done in overlapping term analysis
//		if (Context.current != Library.contextUnderConstruction)
//			Context.current.resetTo(0, 0);  //  get rid of all hypothetical people created
        //  Now compute the FeatureVector (the original objective, remember?)
        FeatureVectorObj fv = new FeatureVectorObj();
        fv.languageName = languageName;
        fv.addressTerms = addressTerms;
        fv.genSkewing = boolArray[0];
        if (totalKTDs > 0) {
            fv.percentRecip = 100f * params[0] / totalKTDs;
            fv.percentMultiGen = 100f * params[1] / totalKTDs;
            fv.avgLateralCount = 1.0f * params[2] / totalCBs;
        } else {
            fv.percentRecip = 0f;
            fv.percentMultiGen = 0f;
            fv.avgLateralCount = 0f;
        }
        fv.ivcList = ivc;
        fv.hcvcList = hcvc;
        fv.stepTerms = boolArray[1];
        fv.udps = boolArray[2];
        fv.exactSigSet = exactSet;
        fv.structSigSet = structSet;
        egoList.addAll(egoBag);
        return fv;
    }  //  end of method computeFeatureVector

	
	public void validateSynonymsAndUmbrellas() throws KSConstraintInconsistency {
		//  Check the synonyms and umbrella terms for this DT.  (Could be learned or read from disk.)
		//	Any circular references are illegal -- throw an exception.
		//	Else, put synonyms and umbrellas in canonical order (all chains of reference resolved).
		if (synonyms != null && synonyms.size() > 0)  {
		//  Ck for circular references in synonyms
		//	syntax of synonyms is:  synTerm -> baseTerm
			boolean changes = true;
			while (changes) {
				Iterator iter = synonyms.entrySet().iterator();
				changes = false;
				while (iter.hasNext()) {
					Map.Entry entry = (Map.Entry)iter.next(); 
					String syn = (String)entry.getKey();
					String baseTerm = (String)entry.getValue();
					KinTermDef ktDef = (KinTermDef)theory.get(baseTerm);
					if (ktDef == null && (Library.contextUnderConstruction == null
										 || Library.contextUnderConstruction != ctxt)) 
						throw new KSConstraintInconsistency("Synonym declaration makes '" 
								+ baseTerm + "' a base term, but that is not a defined term.");
					if (synonyms.containsKey(baseTerm) && ((String)synonyms.get(baseTerm)).equals(syn))
						throw new KSConstraintInconsistency("Circular synonym declarations found for '" 
								+ baseTerm + "' & '" + syn + "'"); 
					if (! printableBaseTerm(ktDef))
						throw new KSConstraintInconsistency("Synonym declaration makes '" 
								+ baseTerm + "' a base term, but that is not a printable term.");
					if (synonyms.containsKey(baseTerm)) { //  non-circular; a chain reference
						entry.setValue(synonyms.get(baseTerm));
						changes = true;
						}
					}  //  end of loop thru all entries
				}  //  end of while(changes)
			}  //  end of synonyms != null
		if (overlaps != null && overlaps.size() > 0)  {
		//  Ck for undefined terms in overlaps
		//	syntax of overlaps is:  term => ArrayList<Object> of overlapping terms 
			Iterator iter = overlaps.entrySet().iterator();
			while (iter.hasNext()) {
				Map.Entry entry = (Map.Entry)iter.next(); 
				String term1 = (String)entry.getKey();
				ArrayList<Object> oLapTerms = (ArrayList<Object>)entry.getValue();
				KinTermDef ktDef = (KinTermDef)theory.get(term1);
				if (ktDef == null && (Library.contextUnderConstruction == null
									 || Library.contextUnderConstruction != ctxt)) 
					throw new KSConstraintInconsistency("Overlapping Term declaration mentions '" 
							+ term1 + "' but that is not a defined term.");
				if (! printableBaseTerm(ktDef))
					throw new KSConstraintInconsistency("Overlapping Term declaration mentions '" 
							+ term1 + "' but that is not a printable term.");
				for (int i=0; i < oLapTerms.size(); i++)  {
					String term2 = (String)oLapTerms.get(i);
					ktDef = (KinTermDef)theory.get(term2);
					if (ktDef == null && (Library.contextUnderConstruction == null
										 || Library.contextUnderConstruction != ctxt)) 
						throw new KSConstraintInconsistency("Overlapping Term declaration mentions '" 
								+ term2 + "' but that is not a defined term.");
					if (! printableBaseTerm(ktDef))
						throw new KSConstraintInconsistency("Overlapping Term declaration mentions '" 
								+ term2 + "' but that is not a printable term.");
					}  //  end of loop thru oLapTerms
				}  //  end of loop thru all entries
			}  //  end of overlaps != null
		if (umbrellas != null && umbrellas.size() > 0)  {
		//  Ck for circular references in umbrellas
			Iterator iter = umbrellas.entrySet().iterator();
			while (iter.hasNext()) {
				Map.Entry entry = (Map.Entry)iter.next(); 
				String umbTerm = (String)entry.getKey();
				ArrayList<Object> subTerms = (ArrayList<Object>)entry.getValue();
				if (searchFor(umbTerm, subTerms))
					throw new KSConstraintInconsistency("Circular umbrella declarations found for '" 
										+ umbTerm + "'");
				}  //  end of loop thru all entries in umbrellas
			//  Ck for chain references in umbrellas
			boolean changes = true;
			while (changes) {
				changes = false;
				iter = umbrellas.entrySet().iterator();
				while (iter.hasNext()) {
					Map.Entry entry = (Map.Entry)iter.next(); 
					String umbTerm = (String)entry.getKey();
					ArrayList<Object> subTerms = (ArrayList<Object>)entry.getValue();
					for (int i=0; i < subTerms.size(); i++)  {
						String subTerm = (String)subTerms.get(i);
						if (umbrellas.containsKey(subTerm)) {
							ArrayList<Object> subSubTerms = (ArrayList<Object>)umbrellas.get(subTerm);
							for (int j=0; j < subSubTerms.size(); j++)  {
								String subSubTerm = (String)subSubTerms.get(j);
								if (! subTerms.contains(subSubTerm))  {
									changes = true;
									subTerms.add(subSubTerm);
									}  //  end of found-new-subSubTerm
								}  //  end of loop thru subSubTerms
							}  //  end of subTerm-is-an-umbrella-also
						}  //  end of loop thru subTerms
					}  //  end of loop thru all entries in umbrellas
				}  //  end of while-changes
			}  //  end of umbrellas != null
		}  //  end of method validateSynonymsAndUmbrellas
	
	
	public boolean searchFor(String term, ArrayList<Object> subTerms)  {
		if (subTerms.contains(term)) return true;
		for (int i=0; i < subTerms.size(); i++)  {
			String subTerm = (String)subTerms.get(i);
			ArrayList<Object> subSubTerms = (ArrayList<Object>)umbrellas.get(subTerm);
			if (subSubTerms != null && searchFor(term, subSubTerms))
				return true;
			}  //  end of loop thru subTerms
		return false;
		}
	
    
	public void resolveSynonymsInDyads()  {
		//  If any dyads on dyadsUndefined are for known synonyms, change them to 
		//  dyads for the base term shown on the synonyms TMap.  Prior to (or during) learning.
		if (synonyms == null || synonyms.isEmpty()) return;
		if (dyadsUndefined == null || dyadsUndefined.isEmpty()) return;
		TreeMap newbies = new TreeMap();
		Iterator synIter = synonyms.entrySet().iterator();
		while (synIter.hasNext()) {  //  synonyms is synTerm => baseTerm
			Map.Entry entry = (Map.Entry)synIter.next();
			String synTerm = (String)entry.getKey();
			String baseTerm = (String)entry.getValue();
			if (dyadsUndefined.containsKey(synTerm))  { //  DyadTMap is kinTerm => PC_Str => ArrayList<Object> of dyads
				TreeMap synTree = (TreeMap)dyadsUndefined.remove(synTerm);
				TreeMap baseTree = (TreeMap)newbies.get(baseTerm);
				if (baseTree == null) newbies.put(baseTerm, synTree);
				else newbies.put(baseTerm, mergeTrees(baseTree, synTree));
				}  //  end of found dyads for a synonym
			}  //  end of loop thru synonyms
		if (newbies.size() > 0)  {
			Iterator dyadIter = newbies.entrySet().iterator();
			while (dyadIter.hasNext())  {
				Map.Entry entry = (Map.Entry)dyadIter.next();
				String baseTerm = (String)entry.getKey();  // the base term
				TreeMap termTM = (TreeMap)entry.getValue();
				if (dyadsUndefined.containsKey(baseTerm))  {
					TreeMap baseTermTM = (TreeMap)dyadsUndefined.get(baseTerm);
					dyadsUndefined.put(baseTerm, mergeTrees(baseTermTM, termTM));
				}else dyadsUndefined.put(baseTerm, termTM);
				}  //  end of loop thru newbies
			}  //  end of new item processing
		}  //  end of method resolveSynonymsInDyads
	
	
	public void analyzeSynonymsAndUmbrellas()  {
		//	Analyze all the IssuesForUser generated as part of learning round.  When we find a proposedSynonym,
		//  if this propSyn covers 2 terms that both have propDefs (or accepted definitions) on IssuesForUser 
		//	then kill the propSyn.
		Iterator termIter = issuesForUser.entrySet().iterator();
		while (termIter.hasNext())  {
			Map.Entry entry = (Map.Entry)termIter.next();
			String kinTerm = (String)entry.getKey();
			ArrayList<Object> issueList = (ArrayList<Object>)entry.getValue();
			Iterator issuIter = issueList.iterator();
			while (issuIter.hasNext())  {
				Issue issue = (Issue)issuIter.next();
				if (issue instanceof SynonymCandidate)  {
					SynonymCandidate syn = (SynonymCandidate)issue;
					int slash = syn.pairOfTerms.indexOf("/");
					String first = syn.pairOfTerms.substring(0, slash),
						   second = syn.pairOfTerms.substring(slash +1);
					if (distinctDefsProposed(first, second)) issuIter.remove();
					}  //  end of processing for SynCandidates
				else if (issue instanceof UmbrellaCandidate)  {
					UmbrellaCandidate umbCand = (UmbrellaCandidate)issue;
					ArrayList<Object> subTerms = new ArrayList<Object>(umbCand.subTerms.keySet());
					if (allTermsDefined(umbCand.kinTerm, subTerms)) issuIter.remove();
					}  //  end of processing for UmbrellaCandidates
				else if (issue instanceof OverlapCandidate)  {
					OverlapCandidate olapCand = (OverlapCandidate)issue;
					if (distinctDefsProposed(olapCand.kinTerm, olapCand.otherTerm)) issuIter.remove();
					}  //  end of processing for OverlapCandidates
				}  //  end of loop thru issues for this kinTerm
			}  //  end of loop through kinTerms
		}  //  end of method analyzeSynonymsAndUmbrellas
	
	
	public boolean distinctDefsProposed(String first, String second)  {
		KinTermDef firstDef = null, secondDef = null;
		ArrayList<Issue> proposals = issuesForUser.get(first);
		if (proposals == null) return false;
		for (int i=0; i < proposals.size(); i++)  {
			Issue issue = (Issue)proposals.get(i);
			if (issue instanceof ProposedDef)  {
				firstDef = ((ProposedDef)issue).ktd;
				i = proposals.size();
				}  //  end of it's a PropDef
			}  //  end of loop thru first proposals
		if (firstDef == null) return false;
		proposals = issuesForUser.get(second);
		if (proposals == null) return false;
		for (int i=0; i < proposals.size(); i++)  {
			Issue issue = (Issue)proposals.get(i);
			if (issue instanceof ProposedDef)  {
				secondDef = ((ProposedDef)issue).ktd;
				i = proposals.size();
				}  //  end of it's a PropDef
			}  //  end of loop thru second proposals
		if (secondDef == null) return false;
		if (firstDef == secondDef) return false;
		else return true;
		}  // end of method distinctDefsProposed
	
	public void findOverlappingTerms(ArrayList<Object> egoList) throws KSBadHornClauseException, KSInternalErrorException, 
        KSConstraintInconsistency, KSNoChainOfRelations2Alter, ClassNotFoundException {
		//  This method may only be called after examples have been generated.
		//  First, if possible do Fill_in_Names for all egos.  Then loop 
		//  thru all Individuals in this context, looking for multiple kinTerms 
		//  on some Alter for the same Ego.  This is an overlapping pair of kinTerms.
		//  If neither term is a non-term or an umbrella or synonym for the other, record Overlapping Terms.
		//  If these terms are not already registered as Overlapping Terms, generate report.
		for (int i=0; i < egoList.size(); i++) fillInNames((Individual)egoList.get(i));
		TreeMap oLaps = new TreeMap();
		Iterator iter;
		for (int i=0; i < ctxt.individualCensus.size(); i++)  {
			Individual ind = (Individual)ctxt.individualCensus.get(i);
			TreeMap sorter = new TreeMap();
			if (ind.nameHistory.size() > 1) //  single item can't lead to overlap
			  for (int j=0; j < ind.nameHistory.size(); j++)  {
				String histItem = (String)ind.nameHistory.get(j),
					   term, egoNum = "-99";
				int colon = histItem.indexOf(":"),
					leftParen = histItem.indexOf("("),
					rightParen = histItem.indexOf(")");
				if (leftParen == -1) term = histItem;
				else {
					term = histItem.substring(0,leftParen) + histItem.substring(colon);
					egoNum = histItem.substring(leftParen +1, rightParen);
					}
				String rootTerm = term.substring(0, term.indexOf(":"));
				if (! nonTerm(rootTerm))  {  //  non-terms do overlap -- that's OK.
					if (synonyms != null && synonyms.get(rootTerm) != null)
						term = synonyms.get(rootTerm) + term.substring(term.indexOf(":"));
					if (sorter.get(egoNum) == null) sorter.put(egoNum, new ArrayList<Object>());
					ArrayList<Object> allTerms = (ArrayList<Object>)sorter.get(egoNum);
					if (! allTerms.contains(term)) allTerms.add(term);
					}
				}  //  end of loop thru Name History
			iter = sorter.values().iterator();
			while (iter.hasNext())  {
				ArrayList<Object> allTerms = (ArrayList<Object>)iter.next();
				if (allTerms.size() > 1)  { //  2 or more terms for same kin type
					for (int k=0; k < allTerms.size() -1; k++)  {
						String term1 = (String)allTerms.get(k);
						for (int k2=1; k2 < allTerms.size(); k2++)  {
							String term2 = (String)allTerms.get(k2);
							if (term1.compareTo(term2) > 0) {  //  term1 always earlier
								String hold = term1;
								term1 = term2;
								term2 = hold;
								}
							String term1root = term1.substring(0, term1.indexOf(":")),
								   term2root = term2.substring(0, term2.indexOf(":")),
								   rootKey = term1root + "/" + term2root,
								   termKey = term1 + "/" + term2;
//  if (rootKey.equals("bucuru/jibuwaimo")) Context.breakpoint(); 
							String[] pair = {term1root, term2root};
							if (! umbrellaRel(pair) && ! synonymRel(pair)
								&& ! term1root.equals(term2root))  {  //  overlapping terms!
								if (oLaps.get(rootKey) == null) oLaps.put(rootKey, new ArrayList<Object>());
								ArrayList<Object> details = (ArrayList<Object>)oLaps.get(rootKey);
								if (! details.contains(termKey)) details.add(termKey);
								}  //  end of non-umbrella & non-synonym
							}  //  end of k2-loop
						}  //  end of k-loop
					}  //  end of allTerms > 1
				}  //  end of loop thru sorter
			}  //  end of loop thru individuals in the population
		iter = oLaps.keySet().iterator();
		TreeMap suggestedNewOverlaps = (overlaps == null ? new TreeMap() : new TreeMap(overlaps));
		while(iter.hasNext())  {
			String termPair = (String)iter.next();
			int slash = termPair.indexOf("/");
//  if (termPair.equals("bucuru/jibuwaimo")) Context.breakpoint(); 
			String trm1 = termPair.substring(0, slash),
				   trm2 = termPair.substring(slash +1);
			if (overlaps != null && overlaps.get(trm1) != null
					&& ((ArrayList<Object>)overlaps.get(trm1)).contains(trm2))
				iter.remove();
			else { //  found-a-new-one
				if (suggestedNewOverlaps.get(trm1) == null) suggestedNewOverlaps.put(trm1, new ArrayList<Object>());
				ArrayList<Object> oLapTerms = (ArrayList<Object>)suggestedNewOverlaps.get(trm1);
				oLapTerms.add(trm2);
				}  //  end of found-a-new-one
			}
		if (oLaps.size() > 0) {
			System.out.println("\n*** Un-Reported Overlapping Terms for " + languageName);
			iter = oLaps.entrySet().iterator();
			while (iter.hasNext())  {
				Map.Entry entry = (Map.Entry)iter.next();
				String termPair = (String)entry.getKey();
				ArrayList<Object> details = (ArrayList<Object>)entry.getValue();
				System.out.println("\t" + termPair + " (" + details.size() + ") " + details); 
				}
			System.out.print("***\n\nSuggested New Overlaps declaration:\n(overlaps, ");  
			String holder = "", smpl = "[]()";
			char leftSq = smpl.charAt(0), rightSq = smpl.charAt(1),
				 leftParen = smpl.charAt(2), rightParen = smpl.charAt(3);
			iter = suggestedNewOverlaps.entrySet().iterator();
			while (iter.hasNext())  {
				Map.Entry entry = (Map.Entry)iter.next();
				holder += "(" + entry.getKey() + ", " + entry.getValue() + ")";
				if (iter.hasNext()) holder += ", ";
				}
			holder = holder.replace(leftSq, leftParen);
			holder = holder.replace(rightSq, rightParen);
			System.out.println(holder + ")\n");
			}
		if (ctxt != Library.contextUnderConstruction)
			ctxt.resetTo(0, 0);  //  get rid of all hypothetical people created
		
		}  //  end of method findOverlappingTerms()
	
	
	boolean umbrellaRel(String[] pair)  {
		if (umbrellas == null || umbrellas.isEmpty()) return false;
		if (umbrellas.get(pair[0]) != null 
			&& ((ArrayList<Object>)umbrellas.get(pair[0])).contains(pair[1])) return true;
		if (umbrellas.get(pair[1]) != null 
			&& ((ArrayList<Object>)umbrellas.get(pair[1])).contains(pair[0])) return true;
		return false;
		}  //  end of method umbrellaRel
	
	
	boolean synonymRel(String[] pair)  {
		if (synonyms == null || synonyms.isEmpty()) return false;
		if (synonyms.get(pair[0]) != null 
			&& ((String)synonyms.get(pair[0])).equals(pair[1])) return true;
		if (synonyms.get(pair[1]) != null 
			&& ((String)synonyms.get(pair[1])).equals(pair[0])) return true;
		return false;
		}  //  end of method synonymRel
	
	
	public void findHiddenNeuterEgos()  throws KSInternalErrorException  {
		//  This method may only be called after examples have been generated.
		//	Scan all KTDs, looking for a specific problem:  CBs that specify Ego's spouse
		//	with no gender requirement for Ego (and therefor spouse).  Such "neuter" definitions
		//  allow examples to be generated of just the (default) male Ego and fail to generate
		//  with a female Ego.  These are bad definitions, and should be pointed out to User.
		TreeMap sorter = new TreeMap();
		ArrayList<Object> problems = new ArrayList<Object>();
		Iterator iter = theory.values().iterator();
		boolean needTitle = true;
		while (iter.hasNext())  {
			KinTermDef ktd = (KinTermDef)iter.next();
			for (int i=0; i < ktd.expandedDefs.size(); i++)  {
				ClauseBody cb = (ClauseBody)ktd.expandedDefs.get(i);
				if (cb.pcString != null && cb.pcString.length() > 3		//  Begins with Hu/Wi & has 2+ links
						&& (cb.pcString.indexOf("Hu") == 0 || cb.pcString.indexOf("Wi") == 0))  {
					String restOfIt = cb.pcString.substring(2);
					if (sorter.get(restOfIt) == null) sorter.put(restOfIt, new ArrayList<Object>());
					ArrayList<Object> record = new ArrayList<Object>(2);
					record.add(cb.pcString.substring(0,2));
					record.add(cb);
					((ArrayList<Object>)sorter.get(restOfIt)).add(record);
					}  //  end of found-a-Hu/Wi string
				}  //  end of loop thru CBs
			Iterator sortIter = sorter.values().iterator();
			while (sortIter.hasNext())  {
				ArrayList<Object> records = (ArrayList<Object>)sortIter.next();
				boolean huSeen = false, wiSeen = false;
				for (int j=0; j < records.size(); j++)  {
					String spStr = (String)((ArrayList<Object>)records.get(j)).get(0);
					if (spStr.equals("Hu")) huSeen = true;
					else if (spStr.equals("Wi")) wiSeen = true;
					}  //  end of loop thru records
				if (! (huSeen && wiSeen)) {  //  only 1 gender for Ego in examples
					//  Check for a gender spec on Ego
					boolean specFound = false;
					ClauseBody cb = (ClauseBody)((ArrayList<Object>)records.get(0)).get(1);
					for (int k=0; k < cb.body.size(); k++)  {
						Literal lit = (Literal)cb.body.get(k);
						if (egoGenderSpecified(lit))  {
							specFound = true;
							k = cb.body.size();
							}  //  end of found-ego-gender-spec
						}  //  end of loop thru body
					if (! specFound) problems.add(cb);
					}  //  end of only-1-gender-for-Ego in examples
				}  //  end of loop thru sorter
			sorter.clear();
			if (problems.size() > 0) {
				 if (needTitle) {
					 System.out.println("\n****  Potential Problem Neuter Egos:\n");
					 needTitle = false;
					 }
				System.out.println("\n\t\tFor " + ktd.kinTerm);
				ArrayList<Object> setIntersection = new ArrayList<Object>(),
						  starterSet = ((ClauseBody)problems.get(0)).expansionPath;
				for (int i=0; i < starterSet.size(); i++) 
					if (! setIntersection.contains(starterSet.get(i))) setIntersection.add(starterSet.get(i));
				//  will intersect with itself first time, then with others
				int sampleSize = Math.min(3, problems.size());
				for (int i=0; i < sampleSize; i++)  {
					ClauseBody cb = (ClauseBody)problems.get(i);
					System.out.println(cb.toThyString() + "\n");
					Integer seqNum = new Integer(cb.seqNmbr);
					sorter.put(seqNum, seqNum);
					setIntersection = listSetIntersectionOfStrings(setIntersection, cb.expansionPath);
					}  //  end of loop thru problems
				for (int i=sampleSize; i < problems.size(); i++)  {
					ClauseBody cb = (ClauseBody)problems.get(i);
					Integer seqNum = new Integer(cb.seqNmbr);
					sorter.put(seqNum, seqNum);
					setIntersection = listSetIntersectionOfStrings(setIntersection, cb.expansionPath);
					}
				sortIter = sorter.values().iterator();
				if (sortIter.hasNext()) System.out.print("etc.  Includes Expanded Clause numbers: ");
				while (sortIter.hasNext())  {
					System.out.print(sortIter.next());
					if (sortIter.hasNext()) System.out.print(", ");
					else System.out.print("\n"); 
					}
				if (sampleSize < problems.size() && ! setIntersection.isEmpty()) 
					System.out.println("Common elements: " + setIntersection);
				System.out.println();
				problems.clear();
				sorter.clear();
				}  //  end of if-problems-exist
			}  //  end of loop thru all KTDs
		}  //  end of findHiddenNeuterEgos
	
	
	public boolean egoGenderSpecified(Literal lit)  {
		//  true if this lit requires a specific gender for Ego
		String[] genderPreds = {"male", "female", "father", "mother", "son", "daughter", "husband", "wife"}; 
		boolean isGenderPred = false;
		for (int i=0; i < 8; i++) if (lit.predicate.name.equals(genderPreds[i])) isGenderPred = true;
		if (isGenderPred
				&& ((Argument)lit.args.get(0)).argName != null
				&& ((String)((Argument)lit.args.get(0)).argName).equals("Ego"))
			return true;
		else if ((lit.predicate.name.equals("gender") || lit.predicate.name.equals("husband") 
						|| lit.predicate.name.equals("wife"))
				&& ((Argument)lit.args.get(1)).argName != null
				&& ((String)((Argument)lit.args.get(1)).argName).equals("Ego")) 
			return true;
		else return false;
		}  //  end of method egoGenderSpecified
	
		
	
	public ArrayList<Object> getExact(String exactStr, Library.ClauseIndex cbIndex, String langName) 
		throws KSInternalErrorException {
		//  Find the list of EQCs in cbIndex where the key is exactStr.
		//  Union all their member lists (of CB_Ptrs) & filter out any with the same langName.  Then return it.
		ArrayList<Object> result = new ArrayList<Object>();
		ArrayList<Object> eqcs = (ArrayList<Object>)cbIndex.tMap.get(exactStr);
		for (int j=0; j < eqcs.size(); j++)  
			result.addAll(((Library.CB_EQC)eqcs.get(j)).members);
		Iterator cbpIter = result.iterator();
		while (cbpIter.hasNext())  {
			Library.CB_Ptr cbp = (Library.CB_Ptr)cbpIter.next();
			if (cbp.languageName.equals(langName)) cbpIter.remove();
			}
		return result;
		}  //  end of method getExact
	
	
	public ArrayList<Object> getStruct(String structStr, Library.ClauseIndex cbIndex, String langName) 
		throws KSInternalErrorException {
		//  Find every list of EQCs in cbIndex where the key is structurally equivalent to structStr.
		//  Union all their member lists (of CB_Ptrs) & filter out any with the same langName.  Then return it.
		ArrayList<Object> result = new ArrayList<Object>(), 
				  exactStrings = expandStruct(structStr);
		for (int i=0; i < exactStrings.size(); i++)  {
			ArrayList<Object> eqcs = (ArrayList<Object>)cbIndex.tMap.get(exactStrings.get(i));
			if (eqcs != null) for (int j=0; j < eqcs.size(); j++)  
				result.addAll(((Library.CB_EQC)eqcs.get(j)).members);
			}
		Iterator cbpIter = result.iterator();
		while (cbpIter.hasNext())  {
			Library.CB_Ptr cbp = (Library.CB_Ptr)cbpIter.next();
			if (cbp.languageName.equals(langName)) cbpIter.remove();
			}
		return result;
		}  //  end of method getStruct
	
	
	public ArrayList<Object> expandStruct(String structStr) throws KSInternalErrorException {
		//  Pop the first PC_Str symbol off structStr, expand it, and paste
		//  it on the front of all sub-expansions.
		ArrayList<Object> result = new ArrayList<Object>();
		if (structStr.length() == 0) {
			result.add("");
			return result;
			}
		int start = 0, end;
		char ch = structStr.charAt(start), asterisk = "*".charAt(0);
		if (! JavaLex.check(ch, "CapLtr") && ch != asterisk) 
			throw new KSInternalErrorException("Illegal String given to expandStruct: " + structStr);
		for (end=1; end < structStr.length(); end++)  {
			ch = structStr.charAt(end);
			if (JavaLex.check(ch, "CapLtr")) break;
			}
		String symb = structStr.substring(start, end), 
			   remainder = structStr.substring(end);
		ArrayList<Object> subList = expandStruct(remainder);
		if (symb.equals("P"))  {
			for (int i=0; i < subList.size(); i++)  {
				result.add("Fa" + subList.get(i));
				result.add("Mo" + subList.get(i));
				}
		}else if (symb.equals("C"))  {
			for (int i=0; i < subList.size(); i++)  {
				result.add("So" + subList.get(i));
				result.add("Da" + subList.get(i));
				}
		}else if (symb.equals("Sp"))  {
			for (int i=0; i < subList.size(); i++)  {
				result.add("Hu" + subList.get(i));
				result.add("Wi" + subList.get(i));
				}
		}else if (symb.equals("Sib"))  {
			for (int i=0; i < subList.size(); i++)  {
				result.add("Bro" + subList.get(i));
				result.add("Sis" + subList.get(i));
				}
		}else if (symb.equals("Stsib"))  {
			for (int i=0; i < subList.size(); i++)  {
				result.add("Stbro" + subList.get(i));
				result.add("Stsis" + subList.get(i));
				}
		}else if (symb.equals("Hsib"))  {
			for (int i=0; i < subList.size(); i++)  {
				result.add("Hbro" + subList.get(i));
				result.add("Hsis" + subList.get(i));
				}
		}else if (symb.equals("Stp"))  {
			for (int i=0; i < subList.size(); i++)  {
				result.add("Stfa" + subList.get(i));
				result.add("Stmo" + subList.get(i));
				}
		}else if (symb.equals("Stc"))  {
			for (int i=0; i < subList.size(); i++)  {
				result.add("Stson" + subList.get(i));
				result.add("Stda" + subList.get(i));
				}
		}else if (symb.equals("*"))  {
			for (int i=0; i < subList.size(); i++)  
				result.add("*" + subList.get(i));
			}
		return result;
		}  //  end of method expandStruct
	
	
	public TreeSet setUnionOfCB_Ptrs(TreeSet structSet, ArrayList<Object> union)  {
		//  A normal set union, except that 2 CB_Ptrs are considered
		//  equal if they match on languageName and kinTerm (we ignore cbSeqNmbr).
		TreeSet result = new TreeSet(structSet);
		result.addAll(union);  //  may create duplicates on lang/kinTerm
		if (result.size() < 2) return result;
		Iterator iter = result.iterator();
		Library.CB_Ptr a = (Library.CB_Ptr)iter.next(), b;
		while(iter.hasNext())  {
			b = (Library.CB_Ptr)iter.next();
			if (a.languageName.equals(b.languageName) && a.kinTerm.equals(b.kinTerm)) iter.remove();
			else a = b;
			}
		return result;
		}  //  end of method setUnionOfCB_Ptrs
	
	
	public TreeSet setIntersectionOfCB_Ptrs(TreeSet set1, ArrayList<Object> list2)  {
		//  A normal set intersection, except that 2 CB_Ptrs are considered
		//  equal if they match on languageName and kinTerm (we ignore cbSeqNmbr).
		TreeSet result = new TreeSet(), set2 = new TreeSet(list2);  //  set1 & set2 both now in 'natural order'
		if (set1.isEmpty() || list2.isEmpty()) return result;
		Iterator iter1 = set1.iterator(), iter2 = set2.iterator();
		Library.CB_Ptr cb1 = (Library.CB_Ptr)iter1.next(), prior = null, 
					   cb2 = (Library.CB_Ptr)iter2.next();
		try  {
		while(cb1 != null && cb2 != null)  {
			int comp = cb1.compareTo(cb2);
			if (comp == 0) {  //  equal on languageName and kinTerm; BINGO
				if (cb1.compareTo(prior) != 0) result.add(cb1);
				prior = cb1;
				cb1 = (iter1.hasNext() ? (Library.CB_Ptr)iter1.next() : null);
				cb2 = (iter2.hasNext() ? (Library.CB_Ptr)iter2.next() : null);
			}else if (comp < 0)  {  // cb1 is prior
				cb1 = (iter1.hasNext() ? (Library.CB_Ptr)iter1.next() : null);
			}else cb2 = (iter2.hasNext() ? (Library.CB_Ptr)iter2.next() : null);  //  cb2 is prior
			}  //  endof while-loop
		}catch(Exception exc)  { Context.breakpoint();   }
		
		return result;
		}  //  end of method setIntersectionOfCB_Ptrs
	
	
	public ArrayList<Object> listSetIntersectionOfStrings(ArrayList<Object> list1, ArrayList<Object> list2)  {
		ArrayList<Object> intersection = new ArrayList<Object>();
		if (list1.isEmpty() || list2.isEmpty()) return intersection;
		for (int i=0; i < list1.size(); i++)  {
			String item = (String)list1.get(i);
			if (list2.contains(item)) intersection.add(item);
			}  //  end of loop thru list1
		return intersection;
		}  //  end of method listSetIntersectionOfStrings
	
	    
    public void matchDyads() throws JavaSystemException, KSBadHornClauseException, KSNoChainOfRelations2Alter,
            KSInternalErrorException, KSConstraintInconsistency, ClassNotFoundException, FileNotFoundException {
        if (Library.cbIndex == null) {
            BufferedReader file = new BufferedReader(new FileReader(Library.libraryDirectory + "ClauseIndex"));
            Library.cbIndex = new Library.ClauseIndex(file);
        }
        if ((dyadsUndefined == null) || (Library.cbIndex.tMap.isEmpty())) {
            return;
        }
        String fileName = Library.libraryDirectory + languageName, image, kinTerm, langTerm = "";
        TreeMap cbiLvlTM, setsOfCBsThatMatch;
        TreeSet langTermMatches, setOfCBs, intersectionOfLangTerms;
        ArrayList<Object> dyadList, cbiPCList, listOfDyadMatches;
        Map.Entry ktmEntry, lvlEntry;
        Iterator ktmIter = dyadsUndefined.entrySet().iterator(), lvlIter, valIter;
        Integer lvlInt;
        int dyadCtr = 0, nmbrInvolved, totalCBs;
        Dyad dad;
        ClauseBody cb;
        boolean hdr1 = true;
        try {
            PrintWriter outFile1 = new PrintWriter(new BufferedWriter(new FileWriter(fileName + "_1.match")));
            while (ktmIter.hasNext()) {
                ktmEntry = (Map.Entry) ktmIter.next();
                kinTerm = (String) ktmEntry.getKey();
                dyadCtr = 0;
                listOfDyadMatches = new ArrayList<Object>();
                setsOfCBsThatMatch = new TreeMap();
                lvlIter = ((Collection) ((TreeMap) ktmEntry.getValue()).entrySet()).iterator();
                while (lvlIter.hasNext()) {
                    lvlEntry = (Map.Entry) lvlIter.next();
                    lvlInt = (Integer) lvlEntry.getKey();
                    dyadList = (ArrayList<Object>) lvlEntry.getValue();
                    cbiLvlTM = (TreeMap) Library.cbIndex.tMap.get(lvlInt);
                    for (int i = 0; i < dyadList.size(); i++) {
                        dad = (Dyad) dyadList.get(i);
                        dyadCtr++;
                        langTermMatches = new TreeSet();
                        cbiPCList = (ArrayList<Object>) cbiLvlTM.get(new Integer(dad.level));
                        valIter = cbiPCList.iterator();
                        while (valIter.hasNext()) {
                            //  Whew!  Thought I'd never get here!  
                            cb = (ClauseBody) valIter.next();
                            if (!kinTerm.equals(cb.ktd.kinTerm)) {  //  no sense matching yourself
                                if (compare2(dad, cb, kinTerm)) {
                                    langTerm = cb.ktd.domTh.languageName + ":" + cb.ktd.kinTerm;
                                    langTermMatches.add(langTerm);
                                    if (setsOfCBsThatMatch.get(langTerm) == null) {
                                        setsOfCBsThatMatch.put(langTerm, new TreeSet(cb));
                                    }
                                    setOfCBs = (TreeSet) setsOfCBsThatMatch.get(langTerm);
                                    setOfCBs.add(cb);
                                }  //  end of matched-on-comparison#2
                            }  //  end of if not a match on itself
                        }  //  end of loop thru clausebodies in cbIndex for this level & pcCount
                        listOfDyadMatches.add(langTermMatches);
                    }  //  end of loop thru dyadsUndefined for this kinTerm & level
                }  //  end of loop thru dyadLevels
                //  Now that all dyadsUndefined and matching cbs for this kinTerm have been found, analyze the results
                intersectionOfLangTerms = setIntersection(listOfDyadMatches);
                valIter = intersectionOfLangTerms.iterator();
                while (valIter.hasNext()) {
                    //  langTerm matched every dyad for this kinTerm
                    langTerm = (String) valIter.next();
                    if (hdr1) {
                        hdr1 = false;
                        outFile1.println("kinTerm\t# of dyadsUndefined\tLang:Term\t# CBs\tmatching CBs");
                    }  //  end of writing-file-column-headers
                    outFile1.print(kinTerm + "\t    " + dyadCtr + "\t" + langTerm);
                    //  Now check to see if all the clauses of LangTerm were involved in the match, or just some
                    setOfCBs = (TreeSet) setsOfCBsThatMatch.get(langTerm);
                    nmbrInvolved = setOfCBs.size();
                    if (nmbrInvolved == 0) {
                        totalCBs = -1;
                    } else {
                        cb = (ClauseBody) setOfCBs.first();
                        totalCBs = cb.ktd.expandedDefs.size();
                    }  //  end of else-more-than-0
                    outFile1.println("\t" + totalCBs + "\t" + nmbrInvolved);
                }  // end of loop thru set intersection
            }  //  end of loop thru all kinTerms in dyadsUndefined
            outFile1.flush();
            outFile1.close();
        } catch (IOException e) {
            throw new JavaSystemException(".match File Creation failed:\n" + e);
        }
    }  //  end of method matchDyads

    
        public boolean compare2(Dyad dad, ClauseBody cb, String kinTerm)   throws KSBadHornClauseException, KSNoChainOfRelations2Alter, 
            KSInternalErrorException, KSConstraintInconsistency, ClassNotFoundException {    
            //  Strategy:  Start fillInNames_bool from ego (with alter as goallPerson) and see if 
            //  it can reach alter using the definition contained in cb.  If it does, and PC-String is identical, 
            //  return true.  TRACK PC-String BY CAPTURING P/C/S/* AS FIND_ALL EXECUTES.
            int size = cb.body.size();
            ConstraintObj constraints = new ConstraintObj();
            ArrayList<Object> genderStuff = new ArrayList<Object>(), starStuff = new ArrayList<Object>(), starBindings = new ArrayList<Object>();
            for (int i=0; i < size; i++)  
                // if any literal specifies an ego gender  !=  ego.gender, we fail.
                if (! (((Literal)cb.body.get(i)).constraintCheck(dad.ego.gender, constraints, genderStuff, starStuff))) 
                    return false;
                //  constraintCheck, by side-effect, builds all constraints 
            TreeMap bindings = new TreeMap(), badBindings = new TreeMap();
            bindings.put("Ego", dad.ego); 
            if (! LiteralAbstract1.finalConstraintCheck(dad.ego.gender, bindings, constraints, cb.body, genderStuff, starStuff)) 
                return false;  
            // finalConstraintCheck does post-processing & a final conflict-check.
            ArrayList<Object> bodyCopy = new ArrayList<Object>(cb.body), path = new ArrayList<Object>(), starStuffCopy = new ArrayList<Object>(starStuff);
            Literal next = null;
            while ((bodyCopy.size() > 0) && (next == null)) 
                next = cb.pop(bodyCopy, starStuffCopy, bindings, kinTerm);  //  next = first non-constraint literal in body
            if (next == null) return false;
            else {  // start the process with next.  First, find any star-props for Ego
                Variable egoVar = null;
                for (int i=0; i < next.args.size(); i++) 
                    if (((Argument)next.args.get(i)).argName.equals("Ego")) egoVar = (Variable)next.args.get(i);
                if (! next.meetsStarSpecs(dad.ego, egoVar, constraints, starBindings, bindings, "commit", cb))
                    return false;
                //  now find out if alter can be reached from ego via the definition in cb
                boolean answer = next.fillInNames_bool(kinTerm, bodyCopy, starStuffCopy, cb, bindings, constraints, dad.alter, path);
                //  finally, check that the paths are equal
                return (answer && dad.pcString.equals(path));
            }  //  end of else-next-isn't-null
        }  //  end of method compare2

    public TreeSet setIntersection(ArrayList<Object> sets)  {
        TreeSet finalSet = new TreeSet();
        if (sets.isEmpty()) return finalSet;
        finalSet = (TreeSet)sets.get(0);
        for (int i=1; i < sets.size(); i++)
            finalSet.retainAll((TreeSet)sets.get(i));
        return finalSet;
    }  //  end of method setIntersection
	


}
