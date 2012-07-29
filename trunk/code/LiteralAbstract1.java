

import java.util.* ;
import java.text.* ;
import java.io.* ;

/** This abstract class begins to define a Literal in Prolog syntax, consisting of a {@link Predicate} and an
	ArrayList<Object> of zero or more {@link Argument}s.  Literals are the basic building blocks of
	Horn Clauses.  They also are the level at which 90% of the action takes place in Example-Generation.
	<p>
	Because so many methods are defined at the Literal level, the code files are broken into 3 classes:  this one, 
	LiteralAbstract2, and Literal. 
  
  @author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
*/
public abstract class LiteralAbstract1 extends Argument  {
	private static int serializer = 31;
	//  NOTE: the class-level (static) method finalConstraintCheck is defined near constraintCheck below.
	public static String failReason;
	public static boolean negativeConstraintPhase = false;
	public static int expansionSerial, debugSerial = 0;
	public static final String stdEgo = "Ego", stdAlter = "Alter";
	public static final String[] argCodes = {"A".intern(), "B".intern(), "C".intern(), "D".intern(), "E".intern(), 
											 "F".intern(), "G".intern(), "H".intern(), "I".intern(), "J".intern(), 
											 "K".intern(), "L".intern(), "M".intern(),
											 "N".intern(), "O".intern(), "P".intern(), "Q".intern(), "R".intern(), 
											 "S".intern(), "T".intern(), "U".intern(), "V".intern(), "W".intern(), 
											 "X".intern(), "Y".intern(), "Z".intern(),
											 "AA", "BB", "CC", "DD", "EE", "FF", "GG", "HH", "II", "JJ", "KK", 
											 "LL", "MM", "NN", "OO", "PP", "QQ", "RR", "SS", "TT", "UU", "VV", 
											 "WW", "XX", "YY", "ZZ"};  // 54 variables SHOULD be enough!
	public static final String[] cancellingPredsA = { "male", "female", "elder", "younger" },
								 cancellingPredsB = { "female", "male", "younger", "elder" },
								 oppositePredsA = { "father", "husband", "son", "brother", "mother", "wife", "daughter", "sister" },
								 oppositePredsB = { "mother", "wife", "daughter", "sister", "father", "husband", "son", "brother" },
								 generalPreds = { "parents", "spice", "children", "siblings", "parents", "spice", "children", "siblings" };
	public static ArrayList<Object> cancelPredsA = loadCanA(),
							cancelPredsB = loadCanB(),
							oppoPredsA = loadOppoA(),
							oppoPredsB = loadOppoB(),
							genPreds = loadGenPreds();
	
	//  INSTANCE VARIABLES
	public Predicate predicate;
	public ArrayList<Object> args = new ArrayList<Object>();
	
	static ArrayList<Object> loadCanA() {
		ArrayList<Object> canA = new ArrayList<Object>();
		for (int i=0; i < cancellingPredsA.length; i++)
			canA.add(cancellingPredsA[i]);
		return canA;
		}  //  end of static method loadCanA

	static ArrayList<Object> loadCanB() {
		ArrayList<Object> canB = new ArrayList<Object>();
		for (int i=0; i < cancellingPredsB.length; i++)
			canB.add(cancellingPredsB[i]);
		return canB;
		}  //  end of static method loadCanB

	static ArrayList<Object> loadOppoA() {
		ArrayList<Object> oppoA = new ArrayList<Object>();
		for (int i=0; i < oppositePredsA.length; i++)
			oppoA.add(oppositePredsA[i]);
		return oppoA;
		}  //  end of static method loadOppoA

	static ArrayList<Object> loadOppoB() {
		ArrayList<Object> oppoB = new ArrayList<Object>();
		for (int i=0; i < oppositePredsB.length; i++)
			oppoB.add(oppositePredsB[i]);
		return oppoB;
		}  //  end of static method loadOppoB

	static ArrayList<Object> loadGenPreds() {
		ArrayList<Object> gen = new ArrayList<Object>();
		for (int i=0; i < generalPreds.length; i++)
			gen.add(generalPreds[i]);
		return gen;
		}  //  end of static method loadGenPreds


    static void assignKinTerm(String kinTm, Individual ind, ClauseBody cb, boolean fillIn, Oracle orca) {
        //  if the EgoNum on cb has been assigned, append it to the kinterm in parens
        String suffix = (cb.egoNum == -99 ? "" : "(" + cb.egoNum + ")"),
                histItem = kinTm + suffix + ":" + cb.seqNmbr + (fillIn ? "&" : ""),
                kinTerm = (Context.simulation
                ? cb.ktd.domTh.addNoise(kinTm, orca, Context.classNoise, Context.spellingNoise)
                : kinTm);
        if (kinTm.equals("Ego") || kinTerm.equals("Ego")) {
            Context.breakpoint();
        }
 
        ind.nameHistory.add(histItem);
        ArrayList<Object> termList = (DomainTheory.addrTerms ? ind.node.kinTermsAddr : ind.node.kinTermsRef),
                termListExt = (DomainTheory.addrTerms ? ind.node.extKinTermsAddr : ind.node.extKinTermsRef);
        if (termList.contains(kinTerm) || termListExt.contains(kinTerm)) {
            if (!fillIn) {
                cb.markDuplication(kinTerm, ind);
            }
            return;  //  we're not the first to conclude that this person has that relationship to Ego
        }  //  end of if-ind.termList.contains(kinTerm)
        if (cb.flags.contains("chooseLast") && !fillIn) {
            return; //  must wait until all creation is done before assigning
        }
        if (cb.flags.contains("ext")) {
            termListExt.add(kinTerm);
        } else {
            termList.add(kinTerm);
        }
        ind.node.ktSuffix = suffix;
        if (cb.genderOfAlter.equals("?")) {
            ind.hasGenderNeutralKinTerm = true;
        }
        ind.node.setLevel(cb.level);
        return;
    }  //  end of method assignKinTerm

		
	/** Make a copy of this Literal, containing a list of copies of its args.
	
	@return		a clone of this Literal.
	*/
	public Argument copy()  {  
		Predicate newPred = new Predicate(predicate.name, predicate.category);
		ArrayList<Object> newArgs = new ArrayList<Object>();
		for (int i=0; i < args.size(); i++)
			newArgs.add(((Argument)args.get(i)).copy());
		Literal newLit = new Literal(newPred, newArgs);
		return newLit;
		}  // end of method copy()
		
	
	/** Any other Literal is equivalent to this one if the predicate names match, the arg lists are the same 
	    length, and each arg is of the same type and has the same name.  Recurse on any args that are Literals.
	
	@param		other   is the other Literal to be compared for equality
	@return		true if all the above conditions are met; false otherwise.
	*/
	public boolean isEquivalent(Literal other)  {
		if (! predicate.name.equals(other.predicate.name)) return false;
		if (args.size() != other.args.size()) return false;
		Argument arg1, arg2;
		for (int i=0; i < args.size(); i++) 
			if (args.get(i).getClass() != other.args.get(i).getClass()) return false;
		if (predicate.name.equals("not"))  {  //  its args must be literals
			Literal negLit1, negLit2;
			for (int i=0; i < args.size(); i++)  {
				negLit1 = (Literal)args.get(i);
				negLit2 = (Literal)other.args.get(i);
				if (! negLit1.isEquivalent(negLit2)) return false;
				}  //  end of loop thru args
		} else { //  it's not a negated liteal
			for (int i=0; i < args.size(); i++)  {
				arg1 = (Argument)args.get(i);
				arg2 = (Argument)other.args.get(i);
				if (! arg1.argName.equals(arg2.argName)) return false;
				}  //  end of loop thru args
			}  //  end of its-not-negated
		return true;
		}  //  end of method isEquivalent
		

    /** Make a string that replicates the form of this Literal when it was parsed.
    For example:  'parent(Alter,Ego)'

    @return		a String replica.
     */
    public String toString() {
        String ar = "(";
        for (int i = 0; i < args.size(); i++) {
            ar += args.get(i);
            if (i < (args.size() - 1)) {
                ar += ", ";
            }
        }  // end of for i from 0 to args.size()
        return predicate.name + ar + ")";
    }  // end of toString method to override the default

    String toXML(String baseSpacer) {
        String s = baseSpacer + "<literal> \n";
        s += baseSpacer + "\t<predicate>" + predicate.name + "</predicate>\n";
        s += baseSpacer + "\t<arg-list>\n";
        for (int i = 0; i < args.size(); i++) {
            Argument arg = (Argument)args.get(i);
            s += arg.toXML(baseSpacer + "\t\t");
        }
        s += baseSpacer + "\t</arg-list>\n";
        s += baseSpacer + "</literal>";
        return s;
    }

	String toSILKString(String baseSpacer) {
        String s = baseSpacer + "<literal> \n";
        s += baseSpacer + "\t<predicate>" + predicate.name + "</predicate>\n";
        s += baseSpacer + "\t<arg-list>\n";
        for (int i = 0; i < args.size(); i++) {
            Argument arg = (Argument)args.get(i);
            s += arg.toSILKString(baseSpacer + "\t\t");
        }
        s += baseSpacer + "\t</arg-list>\n";
        s += baseSpacer + "</literal>";
        return s;
    }



    public Literal mergeWith(Literal lit2) {
        int index1 = cancelPredsA.indexOf(predicate.name),
                index2 = cancelPredsB.indexOf(lit2.predicate.name);
        if (index1 == index2 && index1 > -1) {
            return new Literal(new Predicate("omit"));
        }
        index1 = oppoPredsA.indexOf(predicate.name);
        index2 = oppoPredsB.indexOf(lit2.predicate.name);
        if (index1 == index2 && index1 > -1) {
            Literal newLit = (Literal) copy();
            Predicate newPred = new Predicate((String) genPreds.get(index1), new CulturalCategory());
            newLit.predicate = newPred;
            return newLit;
        }
        return null;
    }  //  end of method mergeWith
	
	
	public void countArgs(ArrayList<Object> firstMention, ArrayList<Object> otherMentions)  {
		//  Count the args in this Literal, using the passed in lists of previously-seen args.
		Argument thisArg;
		for (int i=0; i < args.size(); i++)  {
			thisArg = (Argument)args.get(i);
			if (thisArg instanceof Literal) ((Literal)thisArg).countArgs(firstMention, otherMentions);
			else if (thisArg instanceof Variable) {  //  includes Variables and MathVariables
				String nam = thisArg.argName;
				if (! firstMention.contains(nam)) firstMention.add(nam);  //  a first mention
				else if (! otherMentions.contains(nam)) otherMentions.add(nam);  // subsequent mention
				}  //  end of thisArg is a Variable
			}  //  end of loop thru args
		}  //  end of method countArgs()
	
	
	public ArrayList<Object> lits2MiniStrings(ArrayList<Object> clauseSoFar)  throws KSInternalErrorException  {
		ArrayList<Object> miniLits = new ArrayList<Object>();
		String lastVarName = "";
		for (int i=0; i < clauseSoFar.size(); i++)  {
			Literal lit = (Literal)clauseSoFar.get(i);
			if (! constraintPred(lit))  {
				String thisLit = DT_Abstract2.predToSymbol(lit.predicate.name) + "(";
				for (int j=0; j < lit.args.size(); j++)  {
					String argNam = ((Argument)lit.args.get(j)).argName;
					thisLit += argNam;
					if (j < lit.args.size() -1) {
						thisLit += ",";
						lastVarName = argNam;
						}
					}
				thisLit += ")";
				miniLits.add(thisLit);
				}
			}  //  end of i-loop
		if (! lastVarName.equals(""))  {
			for (int j=0; j < miniLits.size(); j++)  {
				String miniLit = (String)miniLits.get(j);
				int arg0Start = miniLit.indexOf("(") +1,
					comma = miniLit.indexOf(","),
					arg1End = miniLit.indexOf(")");
				if (comma == -1)  {  //  single arg
					String argNam = miniLit.substring(arg0Start, arg1End);
					if (argNam.equals(lastVarName))  {  //  Replace with 'Alter'
						String replacementLit = miniLit.substring(0, arg0Start) + "Alter)";
						miniLits.remove(j);
						miniLits.add(j, replacementLit);
						}
				}else {  //  multi-arg
					String arg0Nam = miniLit.substring(arg0Start, comma),
						   arg1Nam = miniLit.substring(comma +1, arg1End);
					if (arg0Nam.equals(lastVarName))  {  //  replace 1st arg
						String replacementLit = miniLit.substring(0, arg0Start) + "Alter";
						replacementLit += miniLit.substring(comma);
						miniLits.remove(j);
						miniLits.add(j, replacementLit);
					}else if (arg1Nam.equals(lastVarName))  {  //  replace 2nd arg
						String replacementLit = miniLit.substring(0, comma +1) + "Alter)";
						miniLits.remove(j);
						miniLits.add(j, replacementLit);
						}
					}  //  end of multi-arg
				}  //  end of j-loop
			}  //  end of lastVar Name not blank
		return miniLits;
		}  //  end of method lits2MiniStrings
	
	
	public boolean constraintPred(Literal lit)  {
		String name = lit.predicate.name;
		if (name.equals("not") || name.equals("equal") || name.equals("male") || name.equals("female") || 
			name.equals("dead") || name.equals("divorced") || name.equals("elder") || name.equals("younger") || 
			name.equals("gender") || name.equals("lessThan") || name.equals("greaterThan") || name.equals("lessOrEql") || 
			name.equals("greaterOrEql") || name.equals("contains") || name.equals("allowCreation"))
			return true;
		else return false;
		}  //  end of method constraintPred


	public int computeLevel(String pcStr) throws KSInternalErrorException  {
		int level = 0, ndx;
		char ch;
		char[] symbol = "      ".toCharArray();  //  6 blanks
		symbol[0] = pcStr.charAt(0); 
		if ((! Character.isUpperCase(symbol[0])) && (symbol[0] != '*')) //  All symbols begin with cap or asterisk.
			throw new KSInternalErrorException("In LitAbs1.computeLevel: PC String started with non-capital letter");
		String result = "";
		int curr = 1;
		for (int i=1; i < pcStr.length(); i++) {
			ch = pcStr.charAt(i);
			if (Character.isUpperCase(ch) || (ch == '*') || (ch == '_'))  {
				result = new String(symbol).trim();
				ndx = DT_Abstract2.kinTypeSymbols.indexOf(result);
				if (ndx < 5) level--;
				else if (ndx > 4 && ndx < 10) level++;
				symbol = "      ".toCharArray();
				curr = 0;
				}  //  end of processing completed symbol
			symbol[curr++] = ch;
			}  //  end of loop thru chars in pcStr
		result = new String(symbol).trim();
		ndx = DT_Abstract2.kinTypeSymbols.indexOf(result);
		if (ndx < 5) level--;
		else if (ndx > 4 && ndx < 10) level++;
		return level;
		}  //  end of method computeLevel
	
	
	
	/** Expand this literal into the (multiple) primitive clause(s) which it represents.
		Only the primitive literal "not()" may have literals as arguments.  If this assumption is
		violated, an exception is thrown.
	
		@param hypo				the context from which this clause came.
		@param clauseSoFar		a list of the expanded literals created before the current literal.
		@param remainingLits	the literals remaining to be expanded.
		@param expandedDefs		the list of expandedDefs to which we will add the finished product(s).
		@param save4Last		the list of general negated constraints we'll process last.
		@param marker			a StackMarkerObj holding the state of a recursive expansion (i.e. how many levels deep 
								we are on which predicate).  We push it onto the stack (remainingLits) behind the 
								expansion of a non-primitive predicate, so that we can re-set our state to that after 
								we finish expanding this predicate.
		@param origCB			the original (non-expanded) clause we are expanding.
		@param path				a trace of the expansion path followed in generating the current clauseSoFar.
		
		@throws					KSBadHornClauseException if an invalid condidiotn is encountered.
	*/
public void expand(Context hypo, ArrayList<Object> clauseSoFar, ArrayList<Object> remainingLits, ArrayList<Object> expandedDefs, 
        ArrayList<Object> save4Last, StackMarkerObj marker, ClauseBody origCB, ArrayList<Object> path)
        throws KSBadHornClauseException, KSInternalErrorException    {
	
	/*	DeBug code, for tracing causes of OutOfMemoryErrors when mutually-recursive definitions get too hairy.
	if (Context.breakFlag)  {
		System.out.print("\n\nSerial# " + debugSerial++  + "\n\tCSF = \t");
		for (int i=0; i < clauseSoFar.size(); i++) System.out.print(clauseSoFar.get(i) + ",  ");
		System.out.print("\n\tExpanding: " + this);
		System.out.print("\n\tRemLits = ");
		for (int i=0; i < remainingLits.size(); i++) System.out.print(remainingLits.get(i) + ",  ");
		System.out.print("\n\tParam marker = " + marker);
		System.out.print("\n\tPath = ");
		for (int i=0; i < path.size(); i++) System.out.print(path.get(i) + ",  ");
		System.out.println();
		//  if (predicate.name.equals("not")) Context.breakpoint();
		}
*/
	if (clauseSoFar.size() >= 8 && clauseSoFar.size() % 4 == 0)  {  //  Getting pretty big.  Ck for size limit.
		try  {
		ArrayList<Object> miniPreds = lits2MiniStrings(clauseSoFar),
				  reducedPCStr = origCB.pcStringReduction(miniPreds, "Ego", "Alter", true);
		String redString = ClauseBody.sumStr(reducedPCStr);
		int stringDist = Math.min(Math.max((redString.length() / 2) - 1, 0), Library.ClauseCounts.maxDist);
		if (stringDist > Library.maxExpansionStringDist) 
			return;
		int alterLevel = Math.abs(computeLevel(redString));
		if (alterLevel > Library.maxLevelForExpansion) 
			return;
		}catch(KSInternalErrorException iex)  { if (clauseSoFar.size() >= 16) return;  }
		}  //  end of check for expansion limits
	
	if (predicate.category instanceof PrimitiveCategory) {
		//	test the assumption that no args are Literals
		for (int i=0; i < args.size(); i++)
			if (((Argument)args.get(i) instanceof Literal) && (! predicate.name.equals("not")))
				throw new KSBadHornClauseException("A predicate other than 'not' had a Literal as an argument; Not Allowed\n");
		try  {
			if ((! predicate.name.equals("not"))  ||
					((args.size() == 1) && (((Literal)args.get(0)).predicate.category instanceof PrimitiveCategory)))  
				clauseSoFar.add(new Literal(predicate, args));
			else save4Last.add(this); // must be 'not' with multiple arg(s) or arg0 is non-primitive
			//	That was easy.  Now recurse on any remaining literals.
			if (remainingLits.isEmpty())  
				finishExpansion(hypo, clauseSoFar, origCB, expandedDefs, save4Last, path);
			else {	//  remLits not empty.  Pop & recurse
				StackMarkerObj newMarker = (StackMarkerObj)marker.copy(); //  Use copies, so recursive calls don't increment the counts in marker
				Argument remLitArg = (Argument)remainingLits.remove(0);  //  pop it off remLits
				while (remLitArg.argType.equals("StackMarkerObj")) {
					newMarker = (StackMarkerObj)((StackMarkerObj)remLitArg).copy(); // restore old marker state
					remLitArg = (Argument)remainingLits.get(0);
					remainingLits.remove(0);  //  pop it off remLits
					}  //  end of while-it's-a-stack-marker
				Literal nextLit = (Literal)remLitArg;
				nextLit.expand(hypo, clauseSoFar, remainingLits, expandedDefs, save4Last, newMarker, origCB, path);
				}  //  end of RemLits was not empty
		}catch(ClassCastException exc)  { 
			throw new KSBadHornClauseException("The predicate 'not' was used with an argument that wasn't a Literal\n" + exc); }
			
	}else  {  //  it's a non-primitive predicate
		int lvl = 0;
		boolean internalRecursFlag = false;
		KinTermDef ktd = (KinTermDef)DomainTheory.current.theory.get(predicate.name);
		if (ktd == null) //  try both locations before giving up
			ktd = (KinTermDef)origCB.ktd.domTh.theory.get(predicate.name);
		if (ktd == null) 
			throw new KSBadHornClauseException("Undefined predicate '" + predicate.name + "' used in a definition.");
		Literal head = ktd.clauseHead;
		ArrayList<Object> subDefs = ktd.definitions; //  subDefs is a list of the ClauseBodies defining this predicate
		//	Check for recursive level exceeded.  Post this for future checks on StackMarkerObj.
		if (marker.kinTermLst.contains(predicate.name)) {  //  we've discovered a recursive definition
			int position = marker.kinTermLst.indexOf(predicate.name);
			internalRecursFlag = true;
			lvl = ((Integer)marker.recursLvlLst.get(position)).intValue() + 1;
			marker.recursLvlLst.set(position, new Integer(lvl));
			}  //  end of if-this-is-a-recursive-clause
		if ((! internalRecursFlag) || (lvl <= DomainTheory.current.levelsOfRecursion)) { 
			//  we've not yet exceeded the limit for recursive expansions
			for (int i=0; i < subDefs.size(); i++) {
				ClauseBody cb = (ClauseBody)subDefs.get(i);  // the i-th ClauseBody in def'n
				ArrayList<Object> oldVarName = new ArrayList<Object>(), newVarName = new ArrayList<Object>(), 
					newPath = new ArrayList<Object>(path);
				ClauseBody newcb = argSubst(head, args, cb, oldVarName, newVarName);  
					// argSubst makes a copy w/ arg substitutions
				newPath.add(predicate.name + ":" + i);
				ArrayList<Object> newClauseSoFar = new ArrayList<Object>(), newSave4Last = new ArrayList<Object>(save4Last); 
				for (int k=0; k < clauseSoFar.size(); k++) // Make a deep copy of clauseSoFar
					newClauseSoFar.add( ((Literal)clauseSoFar.get(k)).copy() );
				ArrayList<Object> newKinTermLst = new ArrayList<Object>(marker.kinTermLst), 
						newRecursLvlLst = new ArrayList<Object>(marker.recursLvlLst);
				if (! internalRecursFlag) { // this is the first time we've encountered this predicate.
					newKinTermLst.add(predicate.name);
					newRecursLvlLst.add(new Integer(0));
					}  //  end of if-this-is-a-new-predicate
				StackMarkerObj newMarker = new StackMarkerObj(newKinTermLst, newRecursLvlLst);
				Literal nextLit = (Literal)newcb.body.get(0);
				ArrayList<Object> newRemainingLits = new ArrayList<Object>(newcb.body.subList(1, newcb.body.size()));
				if (remainingLits.size() > 0) {
					newRemainingLits.add(marker); //  push a copy of the incoming marker onto remLits 
					newRemainingLits.addAll(remainingLits);  // followed by prior remainingLits
					}  //  end of if-remLits-is-not-empty
				ClauseBody newOrigCB = origCB.copy();
				newOrigCB.flags.addAll(cb.flags);  					
				nextLit.expand(hypo, newClauseSoFar, newRemainingLits, expandedDefs, newSave4Last, 
								newMarker, newOrigCB, newPath);  // recurse on nextLit
				}  // end of for-i=each-clauseBody-in-subDefs
			}  //  end of we-have-not-yet-exceeded-the-limit-for-recursive-expansions
		} // end of else-it's-not-primitive
	return;	
	}	//	end of method expand
	
	
	public void finishExpansion(Context hypo, ArrayList<Object> clauseSoFar, ClauseBody origCB, ArrayList<Object> expandedDefs, 
									ArrayList<Object> save4Last, ArrayList<Object> path) throws KSBadHornClauseException, KSInternalErrorException   {
		
		ArrayList<Object> expNegConstraints = new ArrayList<Object>(), subPaths = new ArrayList<Object>(), subPath;
		if (save4Last.size() > 0) 
			neg_expand(hypo, save4Last, expNegConstraints, origCB, subPaths);
		ClauseBody cb = new ClauseBody();
		cb.ktd = origCB.ktd;
		Literal lit;
		for (int i=0; i < clauseSoFar.size(); i++) {
			lit = (Literal)clauseSoFar.get(i);
			cb.addLiteral(lit);
			}  // end of for i = each lit in clauseSoFar
		cb.flags = origCB.flags;
		Iterator newLitIter = expNegConstraints.iterator();
		cb.expansionPath.addAll(path);
		for (int j=0; j < subPaths.size(); j++)  {
			subPath = (ArrayList<Object>)subPaths.get(j);
			cb.expansionPath.addAll(subPath);
			}  //  end of loop thru ALists of Strings in subPaths
		while (newLitIter.hasNext()) 
			cb.addLiteral((Literal)newLitIter.next());
		expandedDefs.add(cb);
		}	//  end of method finishExpansion	
	
	
	
	/** Expand the negated predicates (e.g. 'not(parents(A,B), parents(B,C))' ) found in save4Last and
		build a logically equivalent group of negated primitive predicates in expNegConstraints.
		<p>
		NOTE:  If we are expanding the literal 'not(alpha(A,B))'  and alpha is defined as beta or gamma, then
		the logical equivalent of 'not(alpha(A,B))' is 'not(beta(A,B)) AND not(gamma(A,B))'.  The meaning of a 
		ClauseBody is "a conjunction of literals" i.e. each literal in a clause must be true for the clause to 
		be true.  Therefore, we build a single ClauseBody from each negated predicate.
	
		@param hypo				the context from which this clause came.
		@param save4Last		a list of the negated literals to be expanded.
		@param expNegConstraints  a list to receive the expanded negated literals.
		@param origCB			the original (non-expanded) clause we are expanding.
		@param subPaths			a trace of the expansion path followed in expanding the negated literals.
	*/
public void neg_expand(Context hypo, ArrayList<Object> save4Last, ArrayList<Object> expNegConstraints, 
             			ClauseBody origCB, ArrayList<Object> subPaths) throws KSBadHornClauseException, KSInternalErrorException   {
							
	Iterator negIter = save4Last.iterator();
	Literal negLit;
	while (negIter.hasNext())  {
		negLit = (Literal)negIter.next();
		if (! negLit.predicate.name.equals("not"))
			throw new KSBadHornClauseException("Internal Error:  in Literal.expand, predicate other than 'not'\n" +
							"found in 'save4Last.'  File Bug Report!");
		ArrayList<Object> remLits = new ArrayList<Object>(), expDefs = new ArrayList<Object>(), negPath = new ArrayList<Object>();
		StackMarkerObj marker = new StackMarkerObj(new ArrayList<Object>(), new ArrayList<Object>());
		negPath.add("(not:");
		Literal firstLit = (Literal)negLit.args.get(0);
		remLits.addAll(negLit.args.subList(1,negLit.args.size()));
		//  expand will build 1 or more all-primitive ClauseBodies in expDefs
		try  {
		firstLit.expand(hypo, new ArrayList<Object>(), remLits, expDefs, new ArrayList<Object>(), marker, origCB, negPath);
		for (int i=0; i < expDefs.size(); i++)  {
			ClauseBody xCB = (ClauseBody)expDefs.get(i);
			Literal newLit = new Literal(new Predicate("not"));
			newLit.args = xCB.body;
			expNegConstraints.add(newLit);
			xCB.expansionPath.add(")");
			subPaths.add(xCB.expansionPath);
			}  //  end of loop thru CBs returned by expand
		}catch(KSBadHornClauseException bhc)  
			{ throw new KSBadHornClauseException("While in Lit.Neg_Expand:\n" + bhc); }
		}  //  end of loop thru all negated literals in save4Last
	}  //  end of method neg_expand
	
			
	ClauseBody argSubst(Literal subDefHead, ArrayList<Object> currPredArgs, ClauseBody subDef, ArrayList<Object> oldVarName, ArrayList<Object> newVarName) {
		// subDefHead is the literal at the head of this Horn Clause e.g. uncle(Alter,Ego) :- ...
		// currPredArgs holds the names of the args of the literal we're expanding e.g. uncle(X, P)
		// subDef.body is the list of literals making up one definition of the literal we're expanding
		//         It contains the arguments that we must re-name.
		//  STRATEGY:  If the definition is: uncle(Alter,Ego) :- parent(P,Ego), sibling(Alter,P), male(Alter).
		//  and we are expanding a literal "uncle(X, P)"
		//  We want to change each occurrence of "Alter" in the definition to "X" and likewise "Ego" -> "P"
		//  Furthermore, any other "free variables" occurring in the definition must be given new names that
		//  are guaranteed unique so they won't accidently duplicate some other variable in our literal 
		//  e.g. "P" -> "PQ37"
		boolean flag;
		Literal oldLit, newLit;
		Predicate pred;
		Argument oldArg, newArg;
		ArrayList<Object> newArgs;
		ClauseBody newcb = new ClauseBody();
                newcb.ktd = subDef.ktd;
		for (int i=0; i < subDef.body.size(); i++)   {
			oldLit = (Literal)subDef.body.get(i);
			pred = (Predicate)oldLit.predicate.copy();
			newArgs = new ArrayList<Object>();
			for (int j=0; j < oldLit.args.size(); j++)   {
				oldArg = (Argument)oldLit.args.get(j);
				newArg = oldArg;
				if (oldArg.argType.equals("Constant"))  // make an exact copy
					newArg = new Constant(oldArg.argName);
				else if (oldArg.argType.equals("ArgString"))  // make an exact copy
					newArg = ((ArgString)oldArg).copy();
				else if (oldArg instanceof Variable) {  // do argument re-naming
					flag = false;
					for (int k=0; k < subDefHead.args.size(); k++) {
						if (oldArg.argName.equals(((Argument)subDefHead.args.get(k)).argName))  {
							flag = true;
							newArg = new Variable(((Argument)currPredArgs.get(k)).argName);
							}  // end of if-argnames-are-equal
						}  // end of for k=each-argname-in-subDefHeadArgs
					for (int h=0; h < oldVarName.size(); h++) {
						if (oldArg.argName.equals(oldVarName.get(h)))  {
							flag = true;
							newArg = new Variable((String)newVarName.get(h));
							}
						}  // end of for h=each-prior-substitution
					if (! flag) { // this argName not in the subDef clause head or prior subst'ns
								  // we must give this variable a new, unique name 
						oldVarName.add(oldArg.argName);
						String newName = genUniqueArgName(oldArg.argName);
						newVarName.add(newName);
						newArg = new Variable(newName);
						}  // end of if-not-flag
					}  // end of if-this-is-a-Variable
				else if (oldArg.argType.equals("Literal"))  {
					// we'll recurse on this literal to make arg substitutions
					ClauseBody newSubDef = new ClauseBody();
                                        newSubDef.ktd = subDef.ktd;
					newSubDef.addLiteral((Literal)oldArg);
					ClauseBody result = argSubst(subDefHead, currPredArgs, newSubDef, oldVarName, newVarName);
					newArg = (Literal)result.body.get(0);  // we know we'll get 1 Literal back
					}  // end of if-this-is-a-Literal
				newArgs.add(newArg);
				}  // end of for j=each-argument-in-this-literal
			newLit = new Literal(pred, newArgs);
			newcb.body.add(newLit);
			}  // end of for i=each-literal-in-subDef
		return newcb;
		}  // end of method argSubst
	
	String genUniqueArgName(String oldName)  {
		return oldName + "%" + serializer++;
		}  // end of method genUniqueArgName
	
	
	void unifyVariables(TreeMap bindery, ArrayList<Object> remLits, Counter cntr) throws KSConstraintInconsistency   {
            //  Examine each argument of this literal.  If an argname has appeared before in the enclosing clausebody,
            //  it will be listed in the bindery -- re-use the Variable object in the bindery.
            //  If this argName has NOT appeared before, make a NEW Variable & post it to the bindery.
			//  Be sure to get "clean" new copies of arguments (without any values carried over from prior uses of this literal)
            //  If any arg is another literal, recurse depth-first on that lit, then proceed.
            //  When done, pass the updated bindery to the next lit of the remainingLits.
            Argument arg, boundArg, newArg;
//  if (Context.breakFlag) Context.breakpoint();
            for (int i=0; i < args.size(); i++) {
                arg = (Argument)args.get(i);
				if ((arg instanceof Variable) || (arg instanceof Constant))  {
                    boundArg = (Argument)bindery.get(arg.argName);
                    if (boundArg != null) args.set(i, boundArg);
                    else {
                        if ((arg instanceof Variable) && (predicate.category instanceof MathCategory))
                            newArg = new MathVariable((Variable)arg);
                        else if ((arg instanceof Variable) 
							&& ((predicate.name.substring(0, 1).equals("*")) && (i == 0)))  {
							//  arg0 of a *-prop is either a Personal Variable or a MathVariable
							UserDefinedProperty udp = (UserDefinedProperty)Context.current.userDefinedProperties.get(predicate.name);
							if (udp.singleValue && (udp.typ.equals("individual")))  newArg = arg.copy();  
							//  Multi-person = a list, which needs a MathVariable.  Single person = an individual
							else newArg = new MathVariable((Variable)arg);
							newArg.valueType = udp.typ;
							}
						else newArg = arg.copy();
						if (arg.argName.equals("Ego")) newArg.argName = stdEgo;   //  use standard string (static)
						else if (arg.argName.equals("Alter")) newArg.argName = stdAlter;  //  ditto
						else newArg.argName = argCodes[cntr.incr()];  //  arbitrary codes for interior variables
						if (newArg instanceof Variable)  //  Don't wipe out the value of a constant
							newArg.clearVal();  //  Make clean copy (no values) of Variables
                        bindery.put(arg.argName, newArg);
                        args.set(i, newArg);
                        }  //  end of else-vari-was-null
                }  //  end of its-a-Variable
				else if (arg.argType.equals("Literal"))  
                    ((Literal)arg).unifyVariables(bindery, null, cntr);
                }  //  end of loop thru args
			
			//  TYPE-CHECK THE ARGUMENTS OF MATHCATS, STAR-PREDICATES, AND EQUAL
			Argument arg0 = (Argument)args.get(0), arg1 = null;
			if (args.size() > 1) arg1 = (Argument)args.get(1);  //  All have 2 args
			if (predicate.name.substring(0, 1).equals("*")) {
				UserDefinedProperty udp = (UserDefinedProperty)Context.current.userDefinedProperties.get(predicate.name);
				if (arg0.valueType.equals(udp.typ))  {  //  OK.  Do nothing.
				}else if (arg0.valueType.equals("default"))  {
					arg0.valueType = udp.typ;
				}else if ((arg0 instanceof Constant)  && (arg0.valueType.equals("integer"))
							&& (udp.typ.equals("float")))  {
					arg0.valueType = "float";
					Integer oldInt = (Integer)arg0.getVal().get(0);
					arg0.removeVal(oldInt);
					arg0.addVal(new Float(oldInt.toString()));
				}else {
					String msg = "UnifyVariables encountered '" + this + "' with conflicting value-types";
					throw new KSConstraintInconsistency(msg);
					}
			}else if ((predicate.category instanceof MathCategory) 
					|| (predicate.name.equals("equal")
						&& ((arg0 instanceof MathVariable) || (arg0 instanceof Constant))
						&& ((arg1 instanceof MathVariable) || (arg1 instanceof Constant))))  {
				if (arg0.valueType.equals(arg1.valueType)) {  //  OK.  Do nothing.
				}else if ((arg0 instanceof Constant) || (arg1 instanceof Constant))  {
					//  Allow a Constant integer like '5' to be used instead of '5.0' with Float-valued MathVars or *-Preds
					Variable vee = null;
					Constant konst = null;  //  One of these args is a Constant
					if (arg0 instanceof Constant) {
						konst = (Constant)arg0;
						vee = (Variable)arg1;
					}else {
						konst = (Constant)arg1;
						vee = (Variable)arg0;
						}
					if ((vee.valueType.equals("float")) && (konst.valueType.equals("integer")))  {
						konst.valueType = "float";
						Integer oldInt = (Integer)konst.getVal().get(0);
						konst.removeVal(oldInt);
						konst.addVal(new Float(oldInt.toString()));
					}else if (! konst.valueType.equals(vee.valueType))  {  //  Ooops - type coercion didn't work - throw Exception.
						String msg = "UnifyVariables encountered '" + this + "' with conflicting value-types";
						throw new KSConstraintInconsistency(msg);
						}
				}else {  //  must be 2 MathVars
					if (arg0.valueType.equals("default") && (! arg1.valueType.equals("default")))  {		//  Propogate types if needed.
						arg0.valueType = arg1.valueType;													//  If this results in a later clash,
					}else if (arg1.valueType.equals("default") && (! arg0.valueType.equals("default")))  {  //  it will throw Exception then.
						arg1.valueType = arg0.valueType;}
					}
			}else if ((arg1 == null) || (predicate.name.equals("not")) 
						|| (arg0.valueType.equals(arg1.valueType)))  {  //  OK.  Do nothing.
			}else if (arg0.valueType.equals("default") && (! arg1.valueType.equals("default")))  {  //  Propogate types if needed.
				arg0.valueType = arg1.valueType;													//  If this results in a later clash,
			}else if (arg1.valueType.equals("default") && (! arg0.valueType.equals("default")))  {  //  it will throw Exception then.
				arg1.valueType = arg0.valueType;
			}else {  //  Type coercion not appropriate, and type mis-match.   Throw Exception.
				String msg = "UnifyVariables encountered '" + this + "' with conflicting value-types";
				throw new KSConstraintInconsistency(msg);
				}
            if ((remLits != null) && (remLits.size() > 0))  {
                Literal lit = (Literal)remLits.get(0);
                ArrayList<Object> newRemLits = new ArrayList<Object>(remLits.subList(1, remLits.size()));
                lit.unifyVariables(bindery, newRemLits, cntr);
            }  //  end of remList-isn't-empty
            return;
        }  //  end of method unifyVariables
		
	
	/** Begin (or add to) the extraction of gender, equality etc constraints. If conflicting gender constraints
            are found for Ego's sex, return false (it's possible).  If conflicts are found for anyone else, throw an exception.
            Death & divorce constraints on a {@link ConstraintObj} are single-valued.  The others have lists of values.
            If the user has defined any properties (constraints), those must have names beginning with '*'.  They are
            recorded as userDefined constraints.
            The negated constraints are unique; they apply to the entire clause, not to any one {@link Variable};
            each negated constraint is a ClauseBody.
            
            @param	egoGender	the gender of Ego:  "M" or "F".
            @param	constraints	a (perhaps empty) ConstraintObj holding the constraints extracted thus far.
            @param	genderStuff	a (perhaps empty) ArrayList<Object> of Literals relevant to gender.
            @param	starStuff	a (perhaps empty) ArrayList<Object> of Literals relevant to User-Defined (or "*-") predicates.
        
            @throws KSBadHornClauseException    if an invalid number of args is supplied for a predicate
            @throws KSConstraintInconsistency    if a contradictory constraints are encountered (e.g. male(X) and female(X))
            
            @return		false if any conflicts are discovered; true otherwise.
	*/
	public boolean constraintCheck(String egoGender, ConstraintObj constraints, ArrayList<Object> genderStuff, ArrayList<Object> starStuff) 
            throws KSBadHornClauseException, KSConstraintInconsistency  {
            
            //  First validate the arity of the predicates
            if ((args.isEmpty()) && (! (predicate.name.equals("allowCreation"))))
                throw new KSBadHornClauseException("Incorrect number of args for \"" + this + "\"");
            if ((args.size() == 1) && 
                (! ((predicate.name.equals("male")) || (predicate.name.equals("female")) || 
                    (predicate.name.equals("dead")) || (predicate.name.equals("divorced")) || 
                    (predicate.name.equals("not"))))) 
                throw new KSBadHornClauseException("Incorrect number of args for \"" + this + "\"");
            if ((args.size() == 2) && ((predicate.name.equals("male")) || (predicate.name.equals("female")) || 
                                       (predicate.name.equals("dead"))))
                throw new KSBadHornClauseException("Incorrect number of args for \"" + this + "\"");
            if ((args.size() > 2) && (! predicate.name.equals("not")))
                throw new KSBadHornClauseException("Incorrect number of args for \"" + this + "\"");
            //  Next, extract gender implications & check 'em
            String argName, otherName, oldConstraint, otherConstraint;
            if ((predicate.name.equals("father")) || (predicate.name.equals("son"))
                || (predicate.name.equals("male")) || (predicate.name.equals("husband")))  {
                    // All imply arg0 is male.  Pass that to our helpful assistant.  Return of false means conflict.
                if (! (genderCheck(((Argument)args.get(0)).argName, "M", "F", constraints.gender))) 
                    throw new KSConstraintInconsistency("Conflicting gender constraints for \"" 
                            + ((Argument)args.get(0)).argName + "\"");
                ((Variable)args.get(0)).neuterOK = false;
                if (predicate.name.equals("husband"))  // corrolary: wife is female
                    if (! (genderCheck(((Argument)args.get(1)).argName, "F", "M", constraints.gender)))  
                        throw new KSConstraintInconsistency("Conflicting gender constraints for \"" 
                                + ((Argument)args.get(1)).argName + "\"");
            } 
            else if ((predicate.name.equals("mother")) || (predicate.name.equals("daughter"))
                        || (predicate.name.equals("female")) || (predicate.name.equals("wife")))  { 
                            // all imply arg0 is female
                if (! (genderCheck(((Argument)args.get(0)).argName, "F", "M", constraints.gender)))  
                    throw new KSConstraintInconsistency("Conflicting gender constraints for \"" 
                            + ((Argument)args.get(0)).argName + "\"");
                ((Variable)args.get(0)).neuterOK = false;
                if (predicate.name.equals("wife"))  // corrolary: husband is male
                    if (! (genderCheck(((Argument)args.get(1)).argName, "M", "F", constraints.gender)))  
                        throw new KSConstraintInconsistency("Conflicting gender constraints for \"" 
                                + ((Argument)args.get(1)).argName + "\"");
            } 
            else if ((predicate.name.equals("spouse")) || ((predicate.name.equals("divorced")) && (args.size() == 2)))
            {  // both have 2 args, both Variables
                String sp1 = ((Argument)args.get(0)).argName, sp2 = ((Argument)args.get(1)).argName;
                ArrayList<Object> sp1sex = (ArrayList<Object>)constraints.gender.get(sp1), 
                    sp2sex = (ArrayList<Object>)constraints.gender.get(sp2);
                if ((sp1sex == null) && (sp2sex == null))  {  
                            // No info on gender of either one -- can't take final action yet
                    ArrayList<Object> sexList1 = new ArrayList<Object>(), sexList2 = new ArrayList<Object>();
                    sexList1.add("Opposite of " + sp2);
                    sexList2.add("Opposite of " + sp1);
                    constraints.gender.put(sp1, sexList1);
                    constraints.gender.put(sp2, sexList2);
                }  // end of if-both-are-null
                else if (sp1sex == null)  {  // sp2 must have a list with specified sex or "Opposite X" etc.
                    sp1sex = new ArrayList<Object>();
                    if (sp2sex.contains("M")) sp1sex.add("F");
                    else if (sp2sex.contains("F")) sp1sex.add("M");
                    else sp1sex.add("Opposite of " + sp2);
                    constraints.gender.put(sp1, sp1sex);
                }  // end of else-if-sp1sex==null
                else {  // sp1 must have a list with specified sex or "Opposite X"
                    sp2sex = new ArrayList<Object>();
                    if (sp1sex.contains("M")) sp2sex.add("F");
                    else if (sp1sex.contains("F")) sp2sex.add("M");
                    else sp2sex.add("Opposite of " + sp1);
                    constraints.gender.put(sp2, sp2sex);
                }  // end of else-sp1-is-specified
            }  // end of else-if-pred==spouse
            else if ((predicate.name.equals("not")) && (args.size() == 1)) {  // 'not' with 1 arg, a literal
				 Literal negatedLit = (Literal)args.get(0);
                if (negatedLit.predicate.name.equals("male")) { 
                    if (! (genderCheck(((Argument)negatedLit.args.get(0)).argName, "F", "M", constraints.gender)))  
                        throw new KSConstraintInconsistency("Conflicting gender constraints for \"" 
                                + ((Argument)negatedLit.args.get(0)).argName + "\"");
                }  //  end of if-pred=not-male
                else if (negatedLit.predicate.name.equals("female"))  {
                    if (! (genderCheck(((Argument)negatedLit.args.get(0)).argName, "M", "F", constraints.gender))) 
                         throw new KSConstraintInconsistency("Conflicting gender constraints for \"" 
                                 + ((Argument)negatedLit.args.get(0)).argName + "\"");
                }  //  end of if-pred=not-female
                else if (negatedLit.predicate.name.equals("dead"))  
                    constraints.death.put((((Argument)negatedLit.args.get(0)).argName), "alive");
                
                else if ((negatedLit.predicate.name.equals("divorced")) && (negatedLit.args.size() == 1))  
                    constraints.divorce.put((((Argument)negatedLit.args.get(0)).argName), "undivorced");
                
                else if (negatedLit.predicate.name.equals("equal")) {
                    String arg0Name = ((Argument)negatedLit.args.get(0)).argName;
                    String arg1Name = ((Argument)negatedLit.args.get(1)).argName;
                    genderStuff.add(this);
                    //  If the 2 args to 'equal' are Variables (for persons) they don't belong in starStuff.  Equal w/ 2 Constants is silly.
					//  Ergo, if at least 1 of the args is a MathVariable, put it in starStuff
					if ((negatedLit.args.get(0) instanceof MathVariable) || (negatedLit.args.get(1) instanceof MathVariable))
						starStuff.add(this);
                            // Add this inequality constraint, if not a duplicate.
                    if (constraints.unEqual.get(arg0Name) == null) constraints.unEqual.put(arg0Name, new ArrayList<Object>());
                    if (constraints.unEqual.get(arg1Name) == null) constraints.unEqual.put(arg1Name, new ArrayList<Object>());
                    if (! (((ArrayList<Object>)constraints.unEqual.get(arg0Name)).contains(arg1Name)))
                        ((ArrayList<Object>)constraints.unEqual.get(arg0Name)).add(arg1Name);
                    if (! (((ArrayList<Object>)constraints.unEqual.get(arg1Name)).contains(arg0Name)))
                        ((ArrayList<Object>)constraints.unEqual.get(arg1Name)).add(arg0Name);
                }  //  end of if-pred=not-equal
                else  { // must be negation of a general-purpose predicate
                    ClauseBody cb = new ClauseBody(negatedLit);
                    constraints.negated.add(cb);
                }  //  end of must-be-negation-of-general-predicate
            }  //  end of else-if-pred==not-with-1-arg
            else if (predicate.name.equals("not")) {  // 'not' with MORE than 1 arg. - all primitives
                Literal lit = (Literal)args.get(0);   //  This must be a general negation (expanded)
                ClauseBody cb = new ClauseBody(lit);
                for (int k=1; k < args.size(); k++)  {
                    lit = (Literal)args.get(k);
                    cb.addLiteral(lit);
                }  //  end of for-k=each-literal
                constraints.negated.add(cb);
            }  //  end of else-if-pred==not-with-multi-args
            else if (predicate.name.equals("elder"))  {  // arg0 is older than arg1
                String arg0Name = ((Argument)args.get(0)).argName;
                String arg1Name = ((Argument)args.get(1)).argName;
                String constraint;
                constraint = "more than " + arg1Name;
                if (constraints.age.get(arg0Name) == null) constraints.age.put(arg0Name, new ArrayList<Object>());
                if (constraints.age.get(arg1Name) == null) constraints.age.put(arg1Name, new ArrayList<Object>());
                if (! (((ArrayList<Object>)constraints.age.get(arg0Name)).contains(constraint)))
                    ((ArrayList<Object>)constraints.age.get(arg0Name)).add(constraint);
                constraint = "less than " + arg0Name;
                if (! (((ArrayList<Object>)constraints.age.get(arg1Name)).contains(constraint)))
                    ((ArrayList<Object>)constraints.age.get(arg1Name)).add(constraint);
            }  //  end of if-pred=elder
            else if (predicate.name.equals("younger"))  {  // arg0 is younger than arg1
                String arg0Name = ((Argument)args.get(0)).argName;
                String arg1Name = ((Argument)args.get(1)).argName;
                String constraint;
                constraint = "less than " + arg1Name;
                if (constraints.age.get(arg0Name) == null) constraints.age.put(arg0Name, new ArrayList<Object>());
                if (constraints.age.get(arg1Name) == null) constraints.age.put(arg1Name, new ArrayList<Object>());
                if (! (((ArrayList<Object>)constraints.age.get(arg0Name)).contains(constraint)))
                    ((ArrayList<Object>)constraints.age.get(arg0Name)).add(constraint);
                constraint = "more than " + arg0Name;
                if (! (((ArrayList<Object>)constraints.age.get(arg1Name)).contains(constraint)))
                    ((ArrayList<Object>)constraints.age.get(arg1Name)).add(constraint);
            }  //  end of if-pred=younger
            else if (predicate.name.equals("allowCreation"))  {  // no args: a flag re: negated constraints
                constraints.allowCreation = true;
            }  //  end of if-pred=allowCreation
            else if (predicate.name.equals("dead"))  {  // arg0 is dead
                constraints.death.put((((Argument)args.get(0)).argName), "dead");
            }  //  end of if-pred=dead
            else if ((predicate.name.equals("divorced")) && (args.size() == 1))  {   
                // arg0 is the only arg.  He/she was divorced at least once.
                constraints.divorce.put((((Argument)args.get(0)).argName), "divorced");
            }  //  end of if-pred=divorced
            else if (predicate.name.equals("gender")) {
                ((Variable)args.get(1)).neuterOK = false;  //  any variable in a gender pred can't be neuter
                genderStuff.add(this);
            }  //  end of pred=gender
            //  if it is a star-predicate or in the MathCategory, it will be handled in starStuff.
            else if (predicate.name.substring(0, 1).equals("*") || (predicate.category instanceof MathCategory))
                starStuff.add(this);
            //  now check to see if we've generated a specification that contradicts Ego's known gender
            //  unless ego.gender = "?" in which case anything goes
            ArrayList<Object> egoSpecList = (ArrayList<Object>)constraints.gender.get("Ego");
            String egoSpec;
            if (egoSpecList != null) {
                Iterator egoIter = egoSpecList.iterator();
                while (egoIter.hasNext()) {
                    egoSpec = (String)egoIter.next();
                    if ((! (egoGender.equals("?"))) && (egoSpec.indexOf("Same") == -1) && 
                        (egoSpec.indexOf("Opposite") == -1) && (! (egoSpec.equals(egoGender))))
                        return false;
                }  //  end of iteration-thru-gender-specs
            }  //  end of if-egoSpecList != null
            return true;
        }  // end of method constraintCheck
		
	
	boolean genderCheck(String argName, String rightSex, String wrongSex, TreeMap genderSpecs)  {	
		//  Look for inconsistencies, & return false if found.  If all is well, then replace
		//  this guy's gender constraint list with a singleton list containing the right sex
		ArrayList<Object> oldConstraintList = (ArrayList<Object>)genderSpecs.get(argName), otherConstraintList; 
		String oldConstraint, otherName, otherConstraint;
		if ((oldConstraintList == null) || (oldConstraintList.contains(rightSex))) { }  //  OK  
		else if (oldConstraintList.contains(wrongSex)) return false;
		else {
			Iterator oldIter = oldConstraintList.iterator();
			while (oldIter.hasNext()) {  //  if inconsistencies found, return false.
				oldConstraint = (String)oldIter.next();
				if (oldConstraint.indexOf("Opposite") == 0)  {
					otherName = oldConstraint.substring(12).trim();
					otherConstraintList = (ArrayList<Object>)genderSpecs.get(otherName);
					if (otherConstraintList.contains(rightSex)) return false;
					}  //  end of constraint=Opposite
				if (oldConstraint.indexOf("Same as") == 0)  {
					otherName = oldConstraint.substring(8).trim();
					otherConstraintList = (ArrayList<Object>)genderSpecs.get(otherName);
					if (otherConstraintList.contains(wrongSex)) return false;
					}  //  end of constraint=Same
				}  //  end of while-loop
			} //  end of else  
		// if we get this far, all is well.
		ArrayList<Object> rightSexList = new ArrayList<Object>(); 
		rightSexList.add(rightSex);
		genderSpecs.put(argName, rightSexList);
		return true; 
		}  //  end of method genderCheck
		
		
    /** Perform a final review of the constraints extracted from a ClauseBody of Literals, with emphasis on gender constraints.
        All processing of math-type constraints (e.g. lessThan(X, Y)) and userDefined or *-predicates is done here.
        This method is used in Example-Generation.
        
        @param	egoGender	the gender of ego:  "M"  or "F".
        @param	bindings	the binding list that will be used to bind all the variables in the <code>body</code> to Individuals.
        @param	constraints	the constraints extracted from <code>body</code> during prior analysis.
        @param	body		the Literals which comprise this ClauseBody.
        @param	genderStuff	a subset of <code>constraints</code> with only gender-related information.
        @param	starStuff	a subset of <code>constraints</code> with information about User-Defined (or "*-") predicates.
        
        @throws KSConstraintInconsistency    if a contradictory constraints are encountered for anyone other than Ego.
            
        @return		false if any conflicting constraints are encountered for Ego; true otherwise.
        */
    public static boolean finalConstraintCheck(String egoGender, TreeMap bindings, ConstraintObj constraints, 
                                                ArrayList<Object> body, ArrayList<Object> genderStuff, ArrayList<Object> starStuff)   
				throws KSConstraintInconsistency  {
		
		genderInferences(constraints, body);
		// Now that all gender constraints have been inferred, check implications of gender predicates.
		// GenderStuff is a list of all the gender, equal, and not-equal literals in this clause.
		// Mine it for gender inferences.  If 2 people are bound to the same gender variable, and they have
		// different genders: Problem.  If one of them is Ego, then return false so this clause will be skipped
		// as non-applicable.  If Ego isn't one of them, the inconsistency is built into the clause: throw exception.
		Literal lit;
		ArrayList<Object> egvl = new ArrayList<Object>();  //  egvl = Ego's Gender Variable List
		String infGndr = null, varBinding, arg0, arg1;
		for (int i=0; i < genderStuff.size(); i++) {
			lit = (Literal)genderStuff.get(i);
			if (lit.predicate.name.equals("gender")) {
				arg0 = ((Argument)lit.args.get(0)).argName;
				arg1 = ((Argument)lit.args.get(1)).argName;
				if (arg1.equals("Ego")) egvl.add(arg0);
				infGndr = lit.inferGender(i, new ArrayList<Object>(), constraints, genderStuff);
				if (infGndr != null) {
					varBinding = (String)bindings.get(arg0);
					if (varBinding == null) bindings.put(arg0, infGndr);
					else {  //  infGndr has a gender, and so does the arg binding -- compare them
						if (! varBinding.equals(infGndr)) {  //  Inconsistency in constraints
							if (egvl.contains(arg0)) return false;  //  It's only due to Ego's gender - skip this clause
							else throw new KSConstraintInconsistency("Inconsistent gender constraints for " + arg0);
						}
					}
				} else bindings.put(arg0, "genderBinding");
			}  //  end of predicate-name-equals-"gender"
		}  //  end of loop thru genderStuff
		//  Now check to see if we've generated a specification that contradicts Ego's known gender,
		//  unless egoGender = "?" in which case anything goes
		ArrayList<Object> egoSpecList = (ArrayList<Object>)constraints.gender.get("Ego");
		String egoSpec;
		if (egoSpecList != null) {
			Iterator egoIter = egoSpecList.iterator();
			while (egoIter.hasNext()) {
				egoSpec = (String)egoIter.next();
				if ((! egoGender.equals("?")) && (egoSpec.indexOf("Same") == -1) && 
					(egoSpec.indexOf("Opposite") == -1) && (! egoSpec.equals(egoGender)))
					return false;
			}  //  end of iteration-thru-gender-specs
		}  //  end of if-egoSpecList != null
		
		//  Now insert Ego's explicit gender (which can't conflict - we just checked) 
		//  and re-do the inferences, to mine any domino effects of knowing Ego's gender.
		ArrayList<Object> newList = new ArrayList<Object>();
		newList.add(egoGender);
		constraints.gender.put("Ego", newList);
		try  {  genderInferences(constraints, body);
		}catch(KSConstraintInconsistency exc)  {	
			throw new KSConstraintInconsistency("After checking for ego gender conflicts in FinalCk, \n" + exc);  }
		
		//  Now process the starConstraints, if any exist.
		if ((starStuff != null) && (starStuff.size() > 0))  {
			Iterator iter = starStuff.iterator();
			String predName;
			Argument argument0, argument1;
			TreeMap cud = constraints.userDefined, indVarTM;
			while (iter.hasNext())  {
				lit = (Literal)iter.next();
				predName = lit.predicate.name;
				if (predName.substring(0,1).equals("*"))  {
					argument0 = (Argument)lit.args.get(0);  //  variable = property's value  
					argument1 = (Argument)lit.args.get(1);  //  the Individual who has this property
					if (cud.get(argument1) == null) cud.put(argument1, new TreeMap());
					indVarTM = (TreeMap)cud.get(argument1);
					ArrayList<Object> valList0 = argument0.getVal(), valList1 = null;
					if (indVarTM.get(predName) != null) valList1 = ((Argument)indVarTM.get(predName)).getVal();
					if (LiteralAbstract1.negativeConstraintPhase && lit.listEqual(valList0, valList1))  {
						//  If checking negated constraints, we may be comparing a variable's value against a constant's value.  OK.
					}else if ((indVarTM.get(predName) != null) && (indVarTM.get(predName) != argument0))  {
						//  Otherwise, if 2 different variables are assigned to the same *property, that's an error.
						throw new KSConstraintInconsistency("Found 2 different variables assigned to " + predName + " for "
											+ argument1.argName + ":\n'" + ((Argument)indVarTM.get(predName)).argName 
											+ "' and '" + argument0.argName + "'.  Not Allowed!");
						}  //  end of check for duplicate variable assignments
					indVarTM.put(predName, argument0);
					UserDefinedProperty udp = (UserDefinedProperty)Context.current.userDefinedProperties.get(predName);
					if (udp == null) {
						String msg = "User-Defined Property '" + predName + "' is not defined for this domain.";
						throw new KSConstraintInconsistency(msg);
						}  //  end of udp-is-null:  ERROR
					argument0.valueType = udp.typ;
					if (argument0 instanceof MathVariable)  {
						MathVariable mv = (MathVariable)argument0;
						if (udp.maxVal != null)  {  // a Max value implies that type is Integer or Float
							if (mv.lessOrEql == null) mv.lessOrEql = new ArrayList<Object>();
							Constant kMax = new Constant("UDP Max");
							kMax.addVal(udp.maxVal);
							kMax.valueType = udp.typ;
							mv.lessOrEql.add(kMax);
							}  //  end of UDP-has-a-Max-Value-specified
						if (udp.minVal != null)  { 
							if (mv.greaterOrEql == null) mv.greaterOrEql = new ArrayList<Object>();
							Constant kMin = new Constant("UDP Min");
							kMin.addVal(udp.minVal);
							kMin.valueType = udp.typ;
							mv.greaterOrEql.add(kMin);
							}  //  end of UDP-has-a-Min-Value-specified
						}  //  end of its-a-MathVar
					if (argument0 instanceof Constant)  {
						Constant konstant = (Constant)argument0;
						// Because the parser cannot validity-check the values of constants that will eventually
						// be assigned to UserDefinedProperties with UserDefinedTypes, we must do that here.
						for (int i=0; i < konstant.getVal().size(); i++) {
							if ((udp.validEntries != null) && (udp.validEntries.size() > 0) &&
								 (! (udp.validEntries.contains(konstant.getVal().get(i)))))  {
								throw new KSConstraintInconsistency("Attempt to assign the value '" +
											konstant.getVal().get(i) + "' to a UserDefinedProperty" +
											"\nwhich only accepts: " + udp.validEntries + ".");
							}  //  end of check for UserDefinedTypes
							if (! udp.typ.equals(konstant.valueType))
								throw new KSConstraintInconsistency("Attempt to assign the value '" +
											konstant.getVal().get(i) + "' to a UserDefinedProperty" +
											"\nwhich only accepts " + udp.typ + ".");
						}
					}  //  end of validity-checks for Constants
				}  //  end of if-it's-a-star-pred
				else apply(lit);  //  lit must be a math-predicate or not(equal())
			}  //  end of iteration thru star2
		}  //  end of starStuff-is-not-empty
		return true; 
	}  //  end of static method finalConstraintCheck
	
	
	public static void genderInferences(ConstraintObj constraints, ArrayList<Object> body) throws KSConstraintInconsistency  {
		//  The literal spouse(X,Y) or a gender-equality construction may precede a literal 
		//  that implies the gender of X.  Check on that.
		//  genderPairIter loops over all the (key, valueList) gender constraints in genderSpecs
		String gender, otherSex, genderArgName, personArgName, rightAnswer;
		ArrayList<Object> sexList, otherSexList;
		Map.Entry genderConstraint;
		boolean useful = true;
		while (useful) {	 // If we infer at least one gender in a loop, must loop again for chain-effects.
			useful = false;  // We'll halt when no useful changes have been made.
			Iterator genderPairIter = constraints.gender.entrySet().iterator();
			while (genderPairIter.hasNext())  {
				genderConstraint = (Map.Entry)genderPairIter.next();
				ArrayList<Object> newSexList = new ArrayList<Object>();
				rightAnswer = null;
				sexList = (ArrayList<Object>)genderConstraint.getValue();
				if (sexList != null)  {
					Iterator sexIter = sexList.iterator();
					while ((sexIter.hasNext()) && (rightAnswer == null)) {
						gender = (String)sexIter.next();
						if ((gender.equals("M")) || (gender.equals("F"))) rightAnswer = gender;
						else if (gender.indexOf("Opposite of") == 0) {
							otherSexList = (ArrayList<Object>)constraints.gender.get(gender.substring(12)); // the constraint list of the Opposite person
							if ((otherSexList != null) && 
								((otherSexList.contains("M")) || (otherSexList.contains("F")))) {
								useful = true;
								if (otherSexList.contains("M")) { 
									if ((rightAnswer != null) && (rightAnswer.equals("M")))
										throw new KSConstraintInconsistency("Gender conflict in " + body);
									else rightAnswer = "F";
								}  //  end of Oppo-sex-is-male
								else if (otherSexList.contains("F")) { 
									if ((rightAnswer != null) && (rightAnswer.equals("F")))
										throw new KSConstraintInconsistency("Gender conflict in " + body);
									else rightAnswer = "M";
								}  //  end of Oppo-sex-is-female
							}  //  end of if-otherSexList-contains-definite-sex
						}  // end of Opposite-appears-in-the-constraint
						else if (gender.indexOf("Same as") == 0) {
							otherSexList = (ArrayList<Object>)constraints.gender.get(gender.substring(8)); // the constraint list of the Same-As person
							if ((otherSexList != null) && 
								((otherSexList.contains("M")) || (otherSexList.contains("F")))) {
								useful = true;
								if (otherSexList.contains("M")) { 
									if ((rightAnswer != null) && (rightAnswer.equals("F")))
										throw new KSConstraintInconsistency("Gender conflict in " + body);
									else rightAnswer = "M";
								}  //  end of Same-sex-is-male
								else if (otherSexList.contains("F")) { 
									if ((rightAnswer != null) && (rightAnswer.equals("M")))
										throw new KSConstraintInconsistency("Gender conflict in " + body);
									else rightAnswer = "F";
								}  //  end of Same-sex-is-female
							}  //  end of if-otherSexList-contains-definite-sex
						}  // end of Same-As-appears-in-the-constraint
					}  //  end of while-loop-thru-sexList-members
					if (rightAnswer != null) {
						newSexList.add(rightAnswer);
						genderConstraint.setValue(newSexList);
					}  //  end of if-rightAnswer != null
				}  //  end of if-sexList-is-not-null
			}  //  end of while-genderPairIter.hasNext
		}  //  end of while-useful
	}  //  end of method genderInferences
	
        	
	
	boolean listEqual(ArrayList<Object> list1, ArrayList<Object> list2)  {
		if ((list1 == null) && (list2 == null)) return true;	//  both null
		if ((list1 == null) || (list2 == null)) return false;	//  only one is null
		if (list1.size() != list2.size()) return false;			//  unequal size
		for (int i=0; i < list1.size(); i++)
			if (! list2.contains(list1.get(i))) return false;	//  element missing
		return true;
		}  //  end of method listEqual

        
        /**  Apply this constraint-predicate by installing the constraints on the arguments.  This method
        should be called only on 'not(equal(X,Y))' or on a MathCategory predicate [e.g. lessThan(X,Y)].
        Because of the way equality is handled (Global Replacement), it is possible that a mathPred such as 
        lessThan(X,Y) could have one of its {@link MathVariable} arguments replaced by a {@link Constant}.  In
        that case, we treat the Constant as a variable whose value is already (permanently) fixed.
        
        @param lit  the literal to be processed.  It's predicate will be applied to its arguments.
        
        @throws  KSConstraintInconsistency if a literal's predicate is a star-constraint with no definition.
        */
        public static void apply(Literal lit) throws KSConstraintInconsistency {
            Argument arg0 = (Argument)lit.args.get(0), arg1;
            if (lit.predicate.name.equals("not") && (lit.args.size() == 1)  &&
                (arg0 instanceof Literal)  &&  ((Literal)arg0).predicate.name.equals("equal"))  
                {  //  i.e. this is a not-equal predicate
                arg1 = (Argument)((Literal)arg0).args.get(1);
                arg0 = (Argument)((Literal)arg0).args.get(0);
            }else if (lit.predicate.category instanceof MathCategory)  { // it-is-a-math-predicate
                arg1 = (Argument)lit.args.get(1);
            }else {
                String msg = "StarStuff encountered '" + lit + "' which is neither math nor not-equal.";
                throw new KSConstraintInconsistency(msg);
            }  //  Now go on to apply the meaning IF one of the args is a MathVar
            if (! ((arg0 instanceof MathVariable) || (arg1 instanceof MathVariable)))
                    return;  //  nothing to apply here
           
			if (lit.predicate.name.equals("contains")) {
                MathVariable var0 = (MathVariable)arg0;
				if (var0.contains == null) var0.contains = new ArrayList<Object>();
                var0.contains.add(arg1);
				if (arg1 instanceof Variable)  {  //  if arg1 is a Constant, there is no "containedBy" field
					Variable var1 = (Variable)arg1;
					if (var1.containedBy == null) var1.containedBy = new ArrayList<Object>();
					var1.containedBy.add(arg0);
					}
            }else if (lit.predicate.name.equals("not"))  {  //  a not-equal predicate
                if (arg0 instanceof MathVariable)  {
                    MathVariable var0 = (MathVariable)arg0;
                    if (var0.notEqual == null) var0.notEqual = new ArrayList<Object>();
                    var0.notEqual.add(arg1);
                }  //  end of arg0-is-a-MathVar
                if (arg1 instanceof MathVariable)  {
                    MathVariable var1 = (MathVariable)arg1;
                    if (var1.notEqual == null) var1.notEqual = new ArrayList<Object>();
                    var1.notEqual.add(arg0);
                }  //  end of arg1-is-a-MathVar
            }else if (lit.predicate.name.equals("lessThan")) {
                if (arg0 instanceof MathVariable)  {
                    MathVariable var0 = (MathVariable)arg0;
                    if (var0.lessThan == null) var0.lessThan = new ArrayList<Object>();
                    var0.lessThan.add(arg1);
                }  //  end of arg0-is-a-MathVar
                if (arg1 instanceof MathVariable)  {
                    MathVariable var1 = (MathVariable)arg1;
                    if (var1.greaterThan == null) var1.greaterThan = new ArrayList<Object>();
                    var1.greaterThan.add(arg0);
                }  //  end of arg1-is-a-MathVar
            }else if (lit.predicate.name.equals("greaterThan")) {
                if (arg0 instanceof MathVariable)  {
                    MathVariable var0 = (MathVariable)arg0;
                    if (var0.greaterThan == null) var0.greaterThan = new ArrayList<Object>();
                    var0.greaterThan.add(arg1);
                }  //  end of arg0-is-a-MathVar
                if (arg1 instanceof MathVariable)  {
                    MathVariable var1 = (MathVariable)arg1;
                    if (var1.lessThan == null) var1.lessThan = new ArrayList<Object>();
                    var1.lessThan.add(arg0);
                }  //  end of arg1-is-a-MathVar
            }else if (lit.predicate.name.equals("lessOrEql")) {
                if (arg0 instanceof MathVariable)  {
                    MathVariable var0 = (MathVariable)arg0;
                    if (var0.lessOrEql == null) var0.lessOrEql = new ArrayList<Object>();
                    var0.lessOrEql.add(arg1);
                }  //  end of arg0-is-a-MathVar
                if (arg1 instanceof MathVariable)  {
                    MathVariable var1 = (MathVariable)arg1;
                    if (var1.greaterOrEql == null) var1.greaterOrEql = new ArrayList<Object>();
                    var1.greaterOrEql.add(arg0);
                }  //  end of arg1-is-a-MathVar
            }else if (lit.predicate.name.equals("greaterOrEql")) {
                if (arg0 instanceof MathVariable)  {
                    MathVariable var0 = (MathVariable)arg0;
                    if (var0.greaterOrEql == null) var0.greaterOrEql = new ArrayList<Object>();
                    var0.greaterOrEql.add(arg1);
                }  //  end of arg0-is-a-MathVar
                if (arg1 instanceof MathVariable)  {
                    MathVariable var1 = (MathVariable)arg1;
                    if (var1.lessOrEql == null) var1.lessOrEql = new ArrayList<Object>();
                    var1.lessOrEql.add(arg0);
                }  //  end of arg1-is-a-MathVar
            } 
            return;
        }  //  end of method apply
        
        
        
	/** Produce the set-closure of nodes which can be reached from <code>listOne</code>, a starting list of nodes.
		<code>assoc</code> is an "associative list" of node/list-of-reachable-nodes pairs; each pair is interpreted as 
		"from node I can reach each of the nodes in list-of-reachable-nodes." (All nodes are represented by a String with the
		name of the node.)  The starting node and all nodes reached are placed into <code>closureSoFar</code>.  Then
		any nodes reachable from the newly-added nodes are recursively added, until all nodes have been added that are
		reachable in any way.
	
	@param	arg1		 the original starting node.
	@param	listOne		 the original list of nodes reachable from <code>arg1</code>.
	@param	closureSoFar a set-closure under construction, initially empty.
	@param	assoc		 an "associative list" of node/list-of-reachable-nodes pairs.
	
	@return		the completed set-closure.
	*/
	public static ArrayList<Object> setClosureOf(String arg1, ArrayList<Object> listOne, ArrayList<Object> closureSoFar, TreeMap assoc)  {
		//  Each of those strings may, in turn, be associated with a list of other strings.
		//  Build the closure-set of all strings reachable from the starter set (listOne).
		String thisArg;
		ArrayList<Object> candidate;
		if ((listOne == null) || (listOne.isEmpty())) return closureSoFar;
		for (int i=0; i < listOne.size(); i++) {
			thisArg = (String)listOne.get(i);
			if ((! (closureSoFar.contains(thisArg))) && (! (thisArg.equals(arg1)))) { // a new arg, not yet in the set
				closureSoFar.add(thisArg); 
				candidate = (ArrayList<Object>)assoc.get(thisArg);
				if ((candidate != null) && (candidate.size() > 0)) 
					setClosureOf(arg1, candidate, closureSoFar, assoc);
				}  //  end of if-this-is-a-new-arg
			}  //  end of for-each-arg-in-listOne
		return closureSoFar;
		}  //  end of method setClosureOf
	
		
	/** Two arguments in a ClauseBody (2 Variables) have been declared equal; propagate constraints from one to the other
		and check for inconsistencies.
	
	@param	thisArg		 the name of the first variable.
	@param	thatArg		 the name of the second variable.
	@param	constraints  the constraints extracted from <code>body</code> during prior analysis.
	@param	body		 an ArrayList<Object> of Literals (the body of a ClauseBody).
	
	@throws 		KSConstraintInconsistency
	*/
	public static void propagateConstraints(String thisArg, String thatArg, ConstraintObj constraints, ArrayList<Object> body)    
		throws KSConstraintInconsistency {
		//  thisArg & thatArg have been declared equal (same).  Carry thisArg's constraints to thatArg.
		String thisSpec, thatSpec;
		ArrayList<Object> thisList, thatList, newList;
		//  propagate gender specs
		thisList = (ArrayList<Object>)constraints.gender.get(thisArg);
		thatList = (ArrayList<Object>)constraints.gender.get(thatArg);
		if ((thisList != null) && (thatList != null))  {
			if (thisList.contains("M"))  {
				if (thatList.contains("F")) {
					String msg = "Inconsistent gender constraints for args linked by equality constraint.\n";
					msg += thisArg + " = " + thatArg + ".  But <" + thisList + "> is not <" + thatList + "> in:\n";
					for (int j=0; j < body.size(); j++) {
						if (j != 0) msg += ", ";
						msg += body.get(0);
						}  //  end of for j=each-literal
					throw new KSConstraintInconsistency(msg);
					}  //  end of thatList.contains("F")
					else {
						newList = new ArrayList<Object>();
						newList.add("M");
						constraints.gender.put(thatArg, newList);
						}  //  end of consistent-with-M
				} //  end of thisSpec=="M"
			else if (thisList.contains("F"))  {
				if (thatList.contains("M")) {
					String msg = "Inconsistent gender constraints for args linked by equality constraint.\n";
					msg += thisArg + " = " + thatArg + ".  But <" + thisList + "> is not <" + thatList + "> in:\n";
					for (int j=0; j < body.size(); j++) {
						if (j != 0) msg += ", ";
						msg += body.get(0);
						}  //  end of for j=each-literal
					throw new KSConstraintInconsistency(msg);
					}  //  end of thatSpec=="M"
					else {
						newList = new ArrayList<Object>();
						newList.add("F");
						constraints.gender.put(thatArg, newList);
						}  //  end of consistent-with-M
				} //  end of thisList.contains("F")
			//  There was no M or F found, so just merge the two lists.
			else ((ArrayList<Object>)constraints.gender.get(thatArg)).addAll(thisList);
			}  //  end of both=specs-are-non-null
		else if ((thatList == null) && (thisList != null))  // propagate it
			constraints.gender.put(thatArg, thisList);
		else if ((thatList != null) && (thisList == null))  // adopt it
			constraints.gender.put(thisArg, thatList);
		
		//  propagate unEqual specs
		thisList = (ArrayList<Object>)constraints.unEqual.get(thisArg);
		thatList = (ArrayList<Object>)constraints.unEqual.get(thatArg);
		if (((thatList != null) && (thatList.contains(thisArg)))
			 || ((thisList != null) && (thisList.contains(thatArg))))  {
			String msg2 = "Inconsistent unEqual constraints for args linked by equality constraint.\n";
			msg2 += thisArg + " = " + thatArg + ".  But unEqual lists are: \n";
			for (int i=0; i < thisList.size(); i++) msg2 += (String)thisList.get(i) + " ";
			msg2 += "\nand:";
			for (int i=0; i < thatList.size(); i++) msg2 += (String)thatList.get(i) + " ";
			throw new KSConstraintInconsistency(msg2);
			}  //  end of inconsistency-halt
		else if ((thatList != null) && (thisList == null))  // adopt it
			constraints.unEqual.put(thisArg, thatList);
		else if ((thatList != null) && (thisList != null))  // concatenate it
			((ArrayList<Object>)constraints.unEqual.get(thatArg)).addAll(thisList);
		
		//  propagate death specs
		thisSpec = (String)constraints.death.get(thisArg);
		thatSpec = (String)constraints.death.get(thatArg);
		if ((thatSpec != null) && (thisSpec != null) && ((! (thisSpec.equals(thatSpec)))))  {
			String msg3 = "Inconsistent death constraints for args linked by equality constraint.";
			msg3 += thisArg + " = " + thatArg + ".  But <" + thisSpec + "> is not <" + thatSpec + "> in \n";
			for (int j=0; j < body.size(); j++) {
				if (j != 0) msg3 += ", ";
				msg3 += body.get(j);
				}  //  end of for j=each-literal
			throw new KSConstraintInconsistency(msg3);
			}  //  end of inconsistency-halt
		else if ((thatSpec != null) && (thisSpec == null))  // adopt it
			constraints.death.put(thisArg, thatSpec);
		//  propagate divorce specs
		thisSpec = (String)constraints.divorce.get(thisArg);
		thatSpec = (String)constraints.divorce.get(thatArg);
		if ((thatSpec != null) && (thisSpec != null) && ((! (thisSpec.equals(thatSpec)))))  {
			String msg4 = "Inconsistent divorce constraints for args linked by equality constraint.\n";
			msg4 += thisArg + " = " + thatArg + ".  But <" + thisSpec + "> is not <" + thatSpec + "> in\n";
			for (int j=0; j < body.size(); j++) {
				if (j != 0) msg4 += ", ";
				msg4 += body.get(j);
				}  //  end of for j=each-literal
			throw new KSConstraintInconsistency(msg4);
			}  //  end of inconsistency-halt
		else if ((thatSpec != null) && (thisSpec == null))  // adopt it
			constraints.divorce.put(thisArg, thatSpec);
		//  propagate age specs
		thisList = (ArrayList<Object>)constraints.age.get(thisArg);
		thatList = (ArrayList<Object>)constraints.age.get(thatArg);
		if ((thatList != null) && (thisList == null))  // adopt it
			constraints.age.put(thisArg, thatList);
		else if ((thatList != null) && (thisList != null)) {  // union them & check for inconsistency
			ArrayList<Object> union = new ArrayList<Object>(), youngerThanList = new ArrayList<Object>(), olderThanList = new ArrayList<Object>();
			for (int i=0; i < thisList.size(); i++)  {
				thisSpec = (String)thisList.get(i);
				if (! (union.contains(thisSpec))) union.add(thisSpec);
				}  //  end of check-thisList-for-duplicates
			for (int j=0; j < thatList.size(); j++)  {
				thatSpec = (String)thatList.get(j);	
				if (! (union.contains(thatSpec))) union.add(thatSpec);
				}  //  end of union-thatList-into-the-set
			//  Now union is a true set-union.  Ck it for inconsistency
			ageConstraintClosure("less", union, youngerThanList, constraints);
			ageConstraintClosure("more", union, olderThanList, constraints);
			for (int k=0; k < youngerThanList.size(); k++)  {
				if (olderThanList.contains(youngerThanList.get(k)))  {
					String msg5 = "Inconsistent age constraints for args linked by equality.\n";
					msg5 += thisArg + " = " + thatArg + ".  But that makes <" + youngerThanList.get(k) + "> both younger and older than " + thisArg + "/" + thatArg + ".  Clause is:\n";
					for (int j=0; j < body.size(); j++) {
						if (j != 0) msg5 += ", ";
						msg5 += body.get(j);
						}  //  end of for j=each-literal
					throw new KSConstraintInconsistency(msg5);
					}  //  end of inconsistency-halt
				}  //  end of for-each-k
			constraints.age.put(thisArg, union);
			}  //  end of union-and-consistency-check
		}  //  end of method propagateConstraints
		
	
	static void ageConstraintClosure(String key, ArrayList<Object> union, ArrayList<Object> listSoFar, ConstraintObj constraints)  {  //  key is either 'more' or 'less'
		if ((union == null) || (union.isEmpty())) return;
		//  first, add all matching constraints to listSoFar
		String constraint, argName;
		ArrayList<Object> chainLinks;
		for (int i=0; i < union.size(); i++)  {
			constraint = ((String)union.get(i)).substring(0,4);
			argName = ((String)union.get(i)).substring(10);
			if ((constraint.equals(key)) && (! (listSoFar.contains(argName)))) {
				listSoFar.add(argName);
				chainLinks = (ArrayList<Object>)constraints.age.get(argName);
				ageConstraintClosure(key, chainLinks, listSoFar, constraints);
				}  //  end of if-a-new-less-than-constraint-is-found
			}  // end of for-i=each-constraint-in-union
		return;
		}  //  end of method ageConstraintClosure
		
	String inferGender(int self, ArrayList<Object> seenList, ConstraintObj constraints, ArrayList<Object> genderStuff) {
		//  This method is handed a gender literal (lit) & tries to predict what gender will
		//  be bound to arg0, the gender variable.  It looks at every literal in the list genderStuff (except
		//  itself) for clues.  Only gender and not-equal literals are present.  Self is the position 
		//  of this literal in the list genderStuff.  SeenList has all the gender variable names
		//  we've seen so far in this search.
		String genderArgName = ((Argument)args.get(0)).argName, otherPersonArgname, 
			   personArgName = ((Argument)args.get(1)).argName, otherGenderArgName, unEqualArg, 
			   gender, otherGender, arg0, arg1;
		ArrayList<Object> genderList = (ArrayList<Object>)constraints.gender.get(personArgName), otherGenderList;
		Literal otherLit;
		ArrayList<Object> newList = new ArrayList<Object>();
		if ((genderList != null) && (genderList.contains("M"))) {
			newList.add("M");
			constraints.gender.put(personArgName, newList);
			return "M";
			}  //  end of genderList.contains("M")
		else if ((genderList != null) && (genderList.contains("F"))) {
			newList.add("F");
			constraints.gender.put(personArgName, newList);
			return "F";
			}  //  end of genderList.contains("F")
			
		((Variable)args.get(1)).neuterOK = false;
		for (int i=0; i < genderStuff.size(); i++)
			if (i != self) {
				otherLit = (Literal)genderStuff.get(i);
				if (otherLit.predicate.name.equals("gender")) {
					otherGenderArgName = ((Argument)otherLit.args.get(0)).argName;
					otherPersonArgname = ((Argument)otherLit.args.get(1)).argName;
					otherGenderList = (ArrayList<Object>)constraints.gender.get(otherPersonArgname);
					if ((otherGenderArgName.equals(genderArgName))) { // gender equality is required
						if ((otherGenderList != null) && (otherGenderList.contains("M"))) {
							newList.add("M");
							constraints.gender.put(personArgName, newList);
							return "M";
							}  //  end of if-genderArgs-are-same-and-specList-contains-M
						else if ((otherGenderList != null) && (otherGenderList.contains("F"))) {
							newList.add("F");
							constraints.gender.put(personArgName, newList);
							return "F";
							}  //  end of if-genderArgs-are-same-and-specList-contains-F
						else {  //  don't know gender yet; must make Same-As constraint
							if (constraints.gender.get(personArgName) == null) 
								constraints.gender.put(personArgName, new ArrayList<Object>());
							((ArrayList<Object>)constraints.gender.get(personArgName)).add("Same as " + otherPersonArgname);
							}  //  end of must-make-Same-As-constraint
						}  //  end of otherGenderArgName-equals-genderArgName
					}  //  end of its-a-gender-lit
				else if (otherLit.predicate.name.equals("not"))  {  //  must be a not-equal literal
					Literal negatedLit = (Literal)otherLit.args.get(0);
					arg0 = ((Argument)negatedLit.args.get(0)).argName;
					arg1 = ((Argument)negatedLit.args.get(1)).argName;
					unEqualArg = null;
					if (arg0.equals(genderArgName)) unEqualArg = arg1;
					else if (arg1.equals(genderArgName)) unEqualArg = arg0;
					otherGender = null;
					if ((unEqualArg != null) && (! seenList.contains(unEqualArg))) {
						seenList.add(genderArgName);
						otherGender = genderAssocWith(unEqualArg, personArgName, true, seenList, constraints, genderStuff);
						}  //  end of unEqualArg!=null
					if ((otherGender != null) && ((otherGender.equals("M")) || (otherGender.equals("F")))) {
						if (otherGender.equals("M")) 
							gender = "F";
							else gender = "M";
						newList.add(gender);
						constraints.gender.put(personArgName, newList);
						return gender;
						}  //  end of otherGender!=null-etc.
					}  //  end of predicate.name.equals("not")
				}  // end of a-lit-other-than-self
			return null;
		}  //  end of method inferGender


	String genderAssocWith(String genderArg, String personArgName, boolean notFlag, ArrayList<Object> seenList, ConstraintObj constraints, ArrayList<Object> genderStuff) {
		//  The prior method (inferGender) is handed a gender literal & tries to find out what gender will
		//  be bound to arg0, the gender variable.  If it encounters a case where that variable is declared to
		//  have either the same or opposite value as some other gender variable (genderArg), then this method is
		//  called to search for a gender constraint on genderArg.  To avoid chasing in circles, a list of all
		//  the gender variables that we already know are equal to this one (and need not be explored now) is
		//  contained in 'seenList'.   Stop on first hit.
		//  If no definite gender can be found, place a "Same as X" constraint on both people-args
		Literal lit;
		String gender = null, arg0, arg1, otherPersonArgName = null;
		for (int i=0; i < genderStuff.size(); i++) {
			lit = (Literal)genderStuff.get(i);
			if ((lit.predicate.name.equals("gender")) 
				&& (((Argument)lit.args.get(0)).argName.equals(genderArg))) {
				otherPersonArgName = ((Argument)lit.args.get(1)).argName;
				gender = lit.inferGender(i, seenList, constraints, genderStuff);
				if (gender != null) return gender;
				}  //  end of pred-is-gender-and-arg0-is-genderArg
			else if (lit.predicate.name.equals("not"))  {  //  predicate is not-equal
				Literal negatedLit = (Literal)lit.args.get(0);
					arg0 = ((Argument)negatedLit.args.get(0)).argName;
					arg1 = ((Argument)negatedLit.args.get(1)).argName;
					String unEqualArg = null, otherGender;
					if (arg0.equals(genderArg)) unEqualArg = arg1;
					else if (arg1.equals(genderArg)) unEqualArg = arg0;
					otherGender = null;
					if ((unEqualArg != null) && (! seenList.contains(unEqualArg))) {
						seenList.add(genderArg);
						otherGender = genderAssocWith(unEqualArg, genderArg, (! notFlag), seenList, constraints, genderStuff);
						}  //  end of unEqualArg!=null
					if ((otherGender != null) && ((otherGender.equals("M")) || (otherGender.equals("F")))) {
						if (otherGender.equals("M")) 
							gender = "F";
							else gender = "M";
						return gender;
					}  //  end of otherGender-is-a-hit
				}  //  end of predicate-is-not-equal
			}  //  end of for-i=every-literal-in-genderStuff
		//  At this point, no definite gender has been found.  Install Same-As or Opposite-Of constraints 
		//  if we've found out who the other party is.
		if (otherPersonArgName != null) {
			if (constraints.gender.get(personArgName) == null) 
					constraints.gender.put(personArgName, new ArrayList<Object>());
			String constr;
			if (notFlag) constr = "Opposite of " + otherPersonArgName;
			else constr = "Same as " + otherPersonArgName;
			((ArrayList<Object>)constraints.gender.get(personArgName)).add(constr);
			}  //  end of (otherPersonArgName != null)
		return null;
		}  //  end of method genderAssocWith

	
public abstract void updatePath(ArrayList<Object> path, ArrayList<Object> pathCopy);

}  //  end of class LiteralAbstract1
