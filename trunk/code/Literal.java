import java.util.* ;  
import java.text.* ;
import java.io.* ;

/** This class completes the definition of a Literal in Prolog syntax.  Literals are the basic building blocks of
	Horn Clauses.  They also are the level at which 90% of the action takes place in Example-Generation.
	<p>
	Because so many methods are defined at the Literal level, the code files are broken into 3 classes:  LiteralAbstract1, 
	LiteralAbstract2, and this one. 

  @author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
*/
public class Literal extends LiteralAbstract2  {
	
	/** This zero-arg constructor is for use ONLY by Serialization or for 'dummy' literals.  */
	public Literal()  { super(); 	}  // end of zero-arg constructor


// We expect literals with 1 or more arguments (although allowCreation is a 0-arg predicate). 
		
	/** Standard constructor with just the predicate supplied.
	
	@param	pred	the predicate of this Literal.
	*/
	public Literal(Predicate pred)  {
		super();
		predicate = pred;
        }  // end of predicate-only constructor
		
                
	/** Standard constructor with the predicate + 1 argument supplied.
	
	@param	pred	the predicate of this Literal.
	@param	arg0	the first argument of this Literal.
	*/
	public Literal(Predicate pred, Argument arg0)  {
		super();
		predicate = pred;
		args.add(arg0);	
		}  // end of 1-arg constructor
		
	/** Standard constructor with the predicate + 2 arguments supplied.
	
	@param	pred	the predicate of this Literal.
	@param	arg0	the first argument of this Literal.
	@param	arg1	the second argument of this Literal.
	*/
	public Literal(Predicate pred, Argument arg0, Argument arg1)  {
		super();
		predicate = pred;
		args.add(arg0);	
		args.add(arg1);	
		}  // end of 2-arg constructor
		
	/** Standard constructor with the predicate + 3 arguments supplied.
	
	@param	pred	the predicate of this Literal.
	@param	arg0	the first argument of this Literal.
	@param	arg1	the second argument of this Literal.
	@param	arg2	the third argument of this Literal.
	*/
	public Literal(Predicate pred, Argument arg0, Argument arg1, Argument arg2)  {
		super();
		args.add(arg0);	
		args.add(arg1);	
		args.add(arg2);	
		}  // end of 3-arg constructor
		
    /** Standard constructor with the predicate and an ArrayList<Object> of arguments.

    @param	pred	 the predicate of this Literal.
    @param	argArray the arguments of this Literal.
    */
    public Literal(Predicate pred, ArrayList<Object> argArray)  {
		super();
		predicate = pred;
		for (int i=0; i < argArray.size(); i++)  
			args.add(((Argument)argArray.get(i)).copy());
		}  // end of argArray constructor
	

	public Object bindingVal()  {
		return "WARNING: 'bindingVal()' was called on a Literal.  Invalid call -- this String will wreak havoc & trigger Exceptions.";
		}  //  method bindingVal is required for all sub-classes of Argument.  But it should NEVER be called on a Literal.
	
	
	public void reverseArgs() throws KSInternalErrorException {
		//  Called only on lits where gender of args is unknown or elder/younger
		if (args.size() < 2) throw new KSInternalErrorException("ERROR: Called 'reverseArgs' on " + toString());
		Argument hold = (Argument)args.remove(0);
		args.add(1, hold);
		if (predicate.name.equals("elder")) predicate.name = "younger";
		else if (predicate.name.equals("younger")) predicate.name = "elder";
		else if (predicate.name.equals("husband")) predicate.name = "wife";
		else if (predicate.name.equals("wife")) predicate.name = "husband";
		else if (predicate.name.equals("child") || predicate.name.equals("son")
					|| predicate.name.equals("daughter")) 
			predicate.name = "parent";
		else if (predicate.name.equals("parent") || predicate.name.equals("mother")
					|| predicate.name.equals("father")) 
			predicate.name = "child";
		}  //  end of method reverseArgs
	

// The 13 methods which follow are in the FindAll_X family.  These participate in a tree-walk which labels every
// node of the family tree with the kinTerm definition which it satisfies (if any).

	void fillInNames(String kinTerm, ArrayList<Object> remLits, ArrayList<Object> starStuff, ClauseBody cb, TreeMap bindings,
                ConstraintObj constraints)
		throws KSBadHornClauseException, KSNoChainOfRelations2Alter, KSInternalErrorException, 
                       KSConstraintInconsistency, ClassNotFoundException     {
		//  This method is only called on an ExpandedDef, which is composed of primitive predicates only.  remLits
		//  is an ArrayList<Object> of literals remaining to be popped.  All constraints are in constraints. Bindings
		//  reflects all variables that have been bound to an object so far.  The goal here is to get to the END
		//  of EACH logical chain, find 'Alter' and label that object (person) with KinTerm.
		//  The current literal is guaranteed to have at least one of its args already bound.

		if ((predicate.name.equals("parent")) || (predicate.name.equals("father")) || (predicate.name.equals("mother"))) {
			findAllBirthLinks(1, kinTerm, remLits, starStuff, cb, bindings, constraints);
			return; }
		if ((predicate.name.equals("son")) || (predicate.name.equals("child")) || (predicate.name.equals("daughter"))) {
			findAllBirthLinks(0, kinTerm, remLits, starStuff, cb, bindings, constraints);
			return; }
		if ((predicate.name.equals("spouse")) || (predicate.name.equals("husband")) || (predicate.name.equals("wife"))) {
			findAllSpice(kinTerm, remLits, starStuff, cb, bindings, false, constraints);
			return; }
		if ((predicate.name.equals("divorced")) && (args.size() == 2)) {
			findAllSpice(kinTerm, remLits, starStuff, cb, bindings, true, constraints);
			return;  }
		if (predicate.name.substring(0, 1).equals("*"))  {
			findAllStarLinks(kinTerm, remLits, starStuff, cb, bindings, constraints);
			return;  }
		if ((predicate.name.equals("not")) || (predicate.category instanceof MathCategory))  {
			findAllMathLinks(kinTerm, remLits, starStuff, cb, bindings, constraints);
			return; }
		throw new KSInternalErrorException("Non-primitive predicate found in Literal.fillInNames.");
		}  //  end of method fillInNames


	boolean sexMatch(Individual ind, TreeMap bindings, ConstraintObj constraints, Variable argVar, boolean fillInMode) throws KSConstraintInconsistency  {
		//  If Individual has an "Opposite of X" or "Same as X" spec, first we try to resolve that to M or F.
		//  SexList is the list of gender constraints (after resolution) for ArgVar.
		//  When in fillInMode, neuter fill_ins are done before gender-specific ones, so we should 
		//  let a neuter individual match an "M" or "F" IFF hasGenderNeutralKinTerm is false and neuter is OK for this arg.
		boolean answer = false;
		ArrayList<Object> sexList = resolveOppo(bindings, constraints, argVar);
		if (ind.gender.equals("?") && (! argVar.neuterOK)) return false;
		if ((sexList == null) || ((! sexList.contains("M")) && (! sexList.contains("F"))) 
			|| (sexList.contains(ind.gender))) 
			answer = true;
		else if ((fillInMode) && (ind.gender.equals("?"))) {
				if ((argVar.neuterOK) && (! ind.hasGenderNeutralKinTerm)
					&& (argVar.argName.equals("Alter"))) answer = true;  }
		else if (! ((sexList.contains("M")) || (sexList.contains("F")))) answer = true;
		return answer; 
		}  //  end of method sexMatch


	boolean unEqMatch(Individual ind, ArrayList<Object> unEqList) {
		if (unEqList.contains(ind)) return false;
		else return true; 
		}  //  end of method unEqMatch


	void findAllSpice(String kinTerm, ArrayList<Object> remLits, ArrayList<Object> starStuff, ClauseBody cb, TreeMap bindings, boolean divReq, ConstraintObj constraints) 
		throws KSBadHornClauseException, KSNoChainOfRelations2Alter, KSInternalErrorException,  
			   KSConstraintInconsistency, ClassNotFoundException  {
                
//  DIVORCE NOTE:  divReq is a flag that indicates whether we are handling a marriage-predicate 
//  [e.g. spouse(X,Y)] when divReq == false, or the divorce predicate [divorced(X,Y)] when  
//  divReq == true.  These are antithetical - to state that 
//  X & Y are married is to say they are CURRENTLY married, hence not divorced.  
//  To say X & Y are divorced is to say that they are NO LONGER married.
//  The .getDivorceDate() field on a Family record can be null (no information/don't care) or a blank string
//  (definitely not divorced) or a non-blank string (definitely divorced).
                
//  One or both args to this literal are already bound.  We'll recurse on all spouses of the bound arg.
                Variable arg0 = (Variable)args.get(0), arg1 = (Variable)args.get(1);  // variable names
                Individual alter, ind0 = (Individual)bindings.get(arg0.argName), ind1 = (Individual)bindings.get(arg1.argName), cand, bound1, prospect;  // persons
                if ((ind0 != null) && (ind1 != null))  {  // both bound.  Not much to do.
					//  Validate this spousal link.  If not correct for this predicate, FAIL.
                    if ((! divReq && ! spouseLinkValid(ind0, ind1)) || (divReq && spouseLinkValid(ind0, ind1))) return;
                    recurse(kinTerm, remLits, starStuff, cb, bindings, constraints);
                    }  //  end of both-are-already-bound
                Family fam;
                String unBoundArg;
                Variable unBoundVar;
                if (ind0 != null) {  //  ind0-is-bound
                    bound1 = ind0;
                    unBoundVar = arg1;
                    unBoundArg = arg1.argName;
                }  //  end of ind0-is-bound
                else {
                    bound1 = ind1;  // we're guaranteed exactly one of them is bound.
                    unBoundVar = arg0;
                    unBoundArg = arg0.argName;
                }  //  end of ind1-is-bound
                ArrayList<Object> unEqList = makeUnEqList(unBoundArg, constraints, bindings);
                ArrayList<Object> ageSpecList = (ArrayList<Object>)constraints.age.get(unBoundArg);
                if (ageSpecList == null) ageSpecList = new ArrayList<Object>();
    //  Now check all spice
                Iterator famIter = bound1.marriages.iterator();
                while (famIter.hasNext())  {
                    fam = (Family)famIter.next();
                    if (fam.husband == bound1) prospect = fam.wife;
                    else prospect = fam.husband;
                    if (   (sexMatch(prospect, bindings, constraints, unBoundVar, true))
                           && (unEqMatch(prospect, unEqList)) 
                           && (meetsDeathSpecStrictly(prospect, (String)constraints.death.get(unBoundArg)))
                           && (meetsDivSpecStrictly(prospect, (String)constraints.divorce.get(unBoundArg)))
                           && (meetsStarSpecsStrictly(prospect, unBoundVar, null, bindings, constraints))
                           && (meetsDivReqStrictly(fam, divReq))
                           && (meetsAgeSpecStrictly(prospect, ageSpecList, bindings)) )  {
                        
                        bindings.put(unBoundArg, prospect);
                        if ((remLits.isEmpty()) 
                            && (negatedConstraintsStrictlySatisfied(starStuff, bindings, constraints, kinTerm))) {
                            alter = (Individual)bindings.get("Alter"); 
                            LiteralAbstract1.assignKinTerm(kinTerm, alter, cb, true, null);
                        }  //  end of remLits-is-empty-and-negated-constraints-are-strictly-met
                        else {
                            TreeMap bindingsCopy = new TreeMap(bindings);
                            ArrayList<Object> remLitsCopy = new ArrayList<Object>(remLits), starStuffCopy = new ArrayList<Object>(starStuff);
                            Literal nextLit = null;
                            while (((remLitsCopy.size() > 0) || (starStuffCopy.size() > 0)) && (nextLit == null)) 
                                nextLit = cb.pop(remLitsCopy, starStuffCopy, bindingsCopy, kinTerm);
                            if (nextLit != null)
                                nextLit.fillInNames(kinTerm, remLitsCopy, starStuff, cb, bindingsCopy, constraints);
                            else findAllSpice(kinTerm, remLitsCopy, starStuffCopy, cb, bindingsCopy, divReq, constraints);
                        }  //  end of else-remLits-not-empty
                    }  //  end of prospect-is-a-match
                }  //  end of for-each-marriage
                return;
            }  //  end of method findAllSpice


    void findAllBirthLinks(int kidArgNmbr, String kinTerm, ArrayList<Object> remLits, ArrayList<Object> starStuff, ClauseBody cb, TreeMap bindings, 
                            ConstraintObj constraints) 
        throws KSBadHornClauseException, KSNoChainOfRelations2Alter, KSInternalErrorException,  
               KSConstraintInconsistency, ClassNotFoundException  {
        Variable kidArg, parArg;
        if (kidArgNmbr == 0) {
            kidArg = (Variable)args.get(0); 
            parArg = (Variable)args.get(1);  
        }  // variable names
        else {
            kidArg = (Variable)args.get(1); 
            parArg = (Variable)args.get(0);  
        }  // variable names
        Family fam;
        Individual alter, 
                    kid = (Individual)bindings.get(kidArg.argName),
                    par = (Individual)bindings.get(parArg.argName);  // persons
        if ((kid != null) && (par != null))  {  // both bound.  Not much to do.
			//  Test these bindings, to validate that par is indeed a parent of kid.  If not, FAIL.
            if (! par.marriages.contains(kid.birthFamily)) return;
            recurse(kinTerm, remLits, starStuff, cb, bindings, constraints);
            }  //  end of both-are-already-bound
        else if (par != null)  {  //  parent is bound - we're looking for kids
            ArrayList<Object> kidUnEqList = makeUnEqList(kidArg.argName, constraints, bindings);
            ArrayList<Object> kidAgeSpecList = (ArrayList<Object>)constraints.age.get(kidArg.argName);
            if (kidAgeSpecList == null) kidAgeSpecList = new ArrayList<Object>();
        //  Armed with constraints, now sift through the kids
            Iterator famIter = par.marriages.iterator();
            while (famIter.hasNext())  {
                fam = (Family)famIter.next();
                Iterator kidIter = fam.children.iterator();
                while (kidIter.hasNext())  {
                    kid = (Individual)kidIter.next();
                    if (   (sexMatch(kid, bindings, constraints, kidArg, true))
                            && (unEqMatch(kid, kidUnEqList)) 
                            && (meetsDeathSpecStrictly(kid, (String)constraints.death.get(kidArg.argName)))
                            && (meetsDivSpecStrictly(kid, (String)constraints.divorce.get(kidArg.argName)))
                            && (meetsStarSpecsStrictly(kid, kidArg, null, bindings, constraints))
                            && (meetsAgeSpecStrictly(kid, kidAgeSpecList, bindings))) {
                        
                        bindings.put(kidArg.argName, kid);
                        if ((remLits.isEmpty()) 
                            && (negatedConstraintsStrictlySatisfied(starStuff, bindings, constraints, kinTerm))) {
                            alter = (Individual)bindings.get("Alter"); 
                            LiteralAbstract1.assignKinTerm(kinTerm, alter, cb, true, null);
                        }  //  end of remLits-is-empty-and-negated-constraints-are-strictly-met
                        else {  //  recurse on each kid who qualifies
                            TreeMap bindingsCopy = new TreeMap(bindings);
                            ArrayList<Object> remLitsCopy = new ArrayList<Object>(remLits), starStuffCopy = new ArrayList<Object>(starStuff);
                            Literal nextLit = null;
                            while (((remLitsCopy.size() > 0) || (starStuffCopy.size() > 0)) && (nextLit == null)) 
                                nextLit = cb.pop(remLitsCopy, starStuffCopy, bindingsCopy, kinTerm);
                            if (nextLit != null)
                                nextLit.fillInNames(kinTerm, remLitsCopy, starStuff, cb, bindingsCopy, constraints);
                            else fillInNames(kinTerm, remLitsCopy, starStuffCopy, cb, bindingsCopy, constraints);
                        }  //  end of remLits-is-not-empty
                    }  //  end of found-appropriate-kid
                }  //  end of for-each-kid-in-fam
            }  //  end of for-each-family
            return;
        }  //  end of parent-is-bound
        else  {  //  kid is bound - seeking the parent(s)
            ArrayList<Object> parUnEqList = makeUnEqList(parArg.argName, constraints, bindings);
            ArrayList<Object> parAgeSpecList = (ArrayList<Object>)constraints.age.get(parArg.argName);
            if (parAgeSpecList == null) parAgeSpecList = new ArrayList<Object>();
        //  Armed with constraints, now check the parents
            if (kid.birthFamily != null)  {  //  if birthfamily exists, it will have a husband and a wife
                par = kid.birthFamily.husband;  // check the husband
                if (   (sexMatch(par, bindings, constraints, parArg, true)) 
                    && (unEqMatch(par, parUnEqList))
                    && (meetsDeathSpecStrictly(par, (String)constraints.death.get(parArg.argName)))
                    && (meetsDivSpecStrictly(par, (String)constraints.divorce.get(parArg.argName)))
                    && (meetsStarSpecsStrictly(par, parArg, null, bindings, constraints))
                    && (meetsAgeSpecStrictly(par, parAgeSpecList, bindings))) {  // husband is a match
                    bindings.put(parArg.argName, par);
                    if ((remLits.isEmpty()) 
                        && (negatedConstraintsStrictlySatisfied(starStuff, bindings, constraints, kinTerm))) {
                        alter = (Individual)bindings.get("Alter"); 
                        LiteralAbstract1.assignKinTerm(kinTerm, alter, cb, true, null);
                    }  //  end of remLits-is-empty-and-negated-constraints-are-strictly-met
                    else {  //  recurse on husband
                        TreeMap bindingsCopy = new TreeMap(bindings);
                        ArrayList<Object> remLitsCopy = new ArrayList<Object>(remLits), starStuffCopy = new ArrayList<Object>(starStuff);
                        Literal nextLit = null;
                        while (((remLitsCopy.size() > 0) || (starStuffCopy.size() > 0)) && (nextLit == null)) 
                            nextLit = cb.pop(remLitsCopy, starStuffCopy, bindingsCopy, kinTerm);
                        if (nextLit != null)
                            nextLit.fillInNames(kinTerm, remLitsCopy, starStuffCopy, cb, bindingsCopy, constraints);
                        else findAllBirthLinks(kidArgNmbr, kinTerm, remLitsCopy, starStuffCopy, cb, bindingsCopy, constraints);
                    }  //  end of remLits-is-not-empty
                }  //  end of husband is a match
                par = kid.birthFamily.wife;  // now check the wife
                if (   (sexMatch(par, bindings, constraints, parArg, true)) 
                    && (unEqMatch(par, parUnEqList))
                    && (meetsDeathSpecStrictly(par, (String)constraints.death.get(parArg.argName)))
                    && (meetsDivSpecStrictly(par, (String)constraints.divorce.get(parArg.argName)))
                    && (meetsStarSpecsStrictly(par, parArg, null, bindings, constraints))
                    && (meetsAgeSpecStrictly(par, parAgeSpecList, bindings))) {  // wife is a match
                    
                    bindings.put(parArg.argName, par);
                    if ((remLits.isEmpty()) 
                        && (negatedConstraintsStrictlySatisfied(starStuff, bindings, constraints, kinTerm))) {
                        alter = (Individual)bindings.get("Alter"); 
                        LiteralAbstract1.assignKinTerm(kinTerm, alter, cb, true, null);
                    }  //  end of remLits-is-empty-and-negated-constraints-are-strictly-met
                    else {  //  recurse on wife  -- (use originals, not copies)
                        ArrayList<Object> starStuffCopy = new ArrayList<Object>(starStuff);
                        Literal nextLit = null;
                        while (((remLits.size() > 0) || (starStuffCopy.size() > 0)) && (nextLit == null)) 
                            nextLit = cb.pop(remLits, starStuffCopy, bindings, kinTerm);
                        if (nextLit != null)
                            nextLit.fillInNames(kinTerm, remLits, starStuffCopy, cb, bindings, constraints);
                        else findAllBirthLinks(kidArgNmbr, kinTerm, remLits, starStuffCopy, cb, bindings, constraints);
                    }  //  end of remLits-is-not-empty
                }  //  end of wife is a match
            }  //  end of birthfamily-exists
            return;
        }  //  end of kid-is-bound
    }  //  end of method findAllBirthLinks
	
	
	boolean spouseLinkValid(Individual ind0, Individual ind1)  {
		Iterator famIter = ind0.marriages.iterator();
		while (famIter.hasNext())  {
			Family fam = (Family)famIter.next();
			if ((fam.husband == ind1 || fam.wife == ind1) && fam.hasNoDivorceDate())
				return true;
			}  //  end of loop thru ind0's families
		return false;
		}  //  end of method spouseLinkValid
	
	
	
    void findAllStarLinks(String kinTerm, ArrayList<Object> remLits, ArrayList<Object> starStuff, ClauseBody cb, TreeMap bindings, ConstraintObj constraints)
            throws KSBadHornClauseException, KSNoChainOfRelations2Alter, KSInternalErrorException,
            KSConstraintInconsistency, ClassNotFoundException {
        //  The current literal is a User Defined Property (UDP) like "bald(X, GM)."  If the variable GM is unbound, we will find ALL
        //  the persons who (1) have baldness = X, and (2) meet all other constraints on the variable GM.  For each one, we recurse on 
        //  remLits (the Remaining Literals) until we've found Alter and labeled that person with kinTerm.
        //  If X (the value of the UDP) is blank but GM's *bald UDP already has a value, we'll adopt that value for X and recurse.
        //  If X is bound to an empty list, and GM is unbound, we'll bind GM successively to each person whose baldness meets the
        //  constraints on X, and who otherwise meets the constraints on GM.

        //  One or both args to this literal are already bound.
        Variable personVar = (Variable) args.get(1);
        Individual person = (Individual) bindings.get(personVar.argName);  //  null = that variable not yet bound
        Argument arg0 = (Argument) args.get(0);
        if (arg0 instanceof Constant) {
            bindings.put(arg0.argName, arg0.bindingVal());  //  if this is a fresh constant, bind it.
        } //  Check to see if both arguments are bound already.  If so, just recurse.  There's no need to validate that this
        //  literal is true, because a star-literal is also a constraint; it was validated when the args were bound.
        if ((person != null) && (bindings.get(arg0.argName) != null)) {
            recurse(kinTerm, remLits, starStuff, cb, bindings, constraints);
        } //  If we're here, only one arg is bound.  Recurse on all legal bindings of the unbound arg.
        else if (person != null) {  //  arg0 is unbound
            UserDefinedProperty udp = (UserDefinedProperty) person.userDefinedProperties.get(predicate.name);
            if (udp.value.size() > 0) {  //  person-has-a-value-for-this-UDP
                // if arg0 has a different value, FAIL
                if (arg0.getVal() != null && !arg0.getVal().isEmpty() 
                        && !containsAll(udp.value, arg0.getVal())) {
                    return;
                } else if (arg0.getVal() != null && !arg0.getVal().isEmpty()
                        && containsAll(udp.value, arg0.getVal())) {
                    bindings.put(arg0.argName, arg0.bindingVal());  
                    //  tail recursion - we can use original copy of bindings
                    recurse(kinTerm, remLits, starStuff, cb, bindings, constraints);
                } else if (arg0.getVal() == null || arg0.getVal().isEmpty()) {
                    //  Maybe one of person's values is correct. try them all.
                    for (Object o : udp.value) {
                        TreeMap newBindings = new TreeMap(bindings);
                        newBindings.put(arg0.argName, o);
                        ArrayList newValList = new ArrayList();
                        newValList.add(o);
                        arg0.setVal(newValList);
                        recurse(kinTerm, remLits, starStuff, cb, newBindings, constraints);
                    }
                }
                //  unbound Variable, Constant or MathVariable has no value, so proceed to bind & recurse
                if (arg0 instanceof MathVariable) {
                    ((MathVariable) arg0).link(udp);
                } else {
                    arg0.addVal(udp.value);
                }
                bindings.put(arg0.argName, arg0.bindingVal());  //  tail recursion - we can use original copy of bindings
                recurse(kinTerm, remLits, starStuff, cb, bindings, constraints);
            } //  end of person-had-a-value-for-this-UDP
            else {
                return;  //  person has no value & arg0 has no value.  FAIL.
            }
        } //  end of person-was-bound
        else {  //  person-is-unbound.  So recurse on each person in population that has the prescribed value
            //  NOTE:  It is possible to reach this point with person unbound and arg0 bound to an empty list = arg0.value
            //  In that case, there is no prescribed value EXCEPT for the constraints on the value of the MathVarible arg0
            ArrayList<Individual> census = Context.current.individualCensus;
            ArrayList<Object> requiredVal = arg0.getVal(), 
                              starBindings = new ArrayList<Object>();  //  starBindings is a throwaway list
            if (requiredVal == null) {
                requiredVal = new ArrayList<Object>();
            }
            Individual guy, valPerson = null;
            UserDefinedProperty udp;
            TreeMap bindingsCopy = new TreeMap(bindings);  // for multiple recursive descents
            boolean winner = false;
            for (int i = 0; i < census.size(); i++) {
                guy = (Individual) census.get(i);
                udp = (UserDefinedProperty) guy.userDefinedProperties.get(predicate.name);
                if ((i == 0) && (arg0.argType.equals("Variable")) && (!udp.typ.equals("individual"))) {
                    throw new KSInternalErrorException("In FindAllStarLinks: Variable set equal to UDP of type '" + udp.typ
                            + "' in\n" + cb);  //  only need to check once
                }
                if ((requiredVal.size() > 0) && listEqual(requiredVal, udp.value)
                        && guy.meetsConstraintsStrictly(personVar, constraints, bindings, starBindings)) //  arg0 NOT empty, & a match
                {
                    winner = true;
                } else if ((requiredVal.isEmpty()) && (arg0 instanceof MathVariable) && //  arg0 empty
                        valListCheck(arg0, udp, guy, bindings, constraints, starBindings) && //  UDP val meets arg0 constraints
                        guy.meetsConstraintsStrictly(personVar, constraints, bindings, starBindings)) //  other constraints met
                {
                    winner = true;
                } else if (arg0.argType.equals("Variable")) {
                    //  arg0 is bound to SOMETHING - an empty list or a person
                    Object mysteryObj = bindings.get(arg0.argName);
                    if (mysteryObj instanceof Individual) {
                        valPerson = (Individual) mysteryObj;
                    }
                    if ((valPerson != null) && (udp.value.size() == 1) && udp.value.contains(valPerson)
                            && guy.meetsConstraintsStrictly(personVar, constraints, bindings, starBindings)) {
                        winner = true;  //  arg0 is already bound to a person, who matches UDP's value
                    } else if ((valPerson == null) && (udp.value.size() == 1)
                            && valPersonCheck(arg0, udp, bindings, constraints, starBindings, cb)
                            && guy.meetsConstraintsStrictly(personVar, constraints, bindings, starBindings)) {
                        bindingsCopy.put(arg0.argName, udp.value.get(0));
                        winner = true;  //  bind arg0 to the person in the UDP's value, but only on the COPY of bindings
                    }
                }  //  end of arg0-is-a-Variable
                if (winner) {
                    winner = false;
                    bindingsCopy.put(personVar.argName, guy);
                    recurse(kinTerm, remLits, starStuff, cb, bindingsCopy, constraints);
                }  //  end of found-a-winner
            }  //  end of loop thru all people in this context
        }  //  end of person-was-unbound
        return;
    }  //  end of method findAllStarLinks

	
	boolean valListCheck(Argument arg0, UserDefinedProperty udp, Individual guy, TreeMap bindings, 
						ConstraintObj constraints, ArrayList<Object> starBindings)   
						throws KSInternalErrorException, KSConstraintInconsistency  {
		//  arg0 has no value, but may have constraints.   If udp has no value, we FAIL
		//  If udp has a value which satisfies the constraints on arg0 (if any), we succeed.
		//  If udp's value violates a constraint, we FAIL.
		if (udp.value.isEmpty()) return false;
		for (int i=0; i < udp.value.size(); i++) {
			Class clazz;
			try {clazz = guy.getUDPClass(udp.typ);
				if (! guy.checkProposedVal(clazz, udp.value.get(i), arg0, bindings, starBindings, constraints))
					return false;
			}catch(Exception exc){
				throw new KSInternalErrorException("In FindAllStarLinks: Class Cast Exception via getUDPClass");  }
			}  //  end of loop thru values of UDP
		return true;
		}  //  end of method valListCheck 
	
	
	boolean valPersonCheck(Argument arg0, UserDefinedProperty udp, TreeMap bindings, ConstraintObj constraints, 
			ArrayList<Object> starBindings, ClauseBody cb)  throws KSInternalErrorException, KSConstraintInconsistency {
		//  udp has a single value, which should be a person (exception if not).  We are considering binding arg0
		//  to that person.  So if that person fails to satisfy any constraint on arg0, we fail.  Else succeed.
		Individual pers;
		try { pers = (Individual)udp.value.get(0);
			return pers.meetsConstraintsStrictly((Variable)arg0, constraints, bindings, starBindings);
		}catch(Exception exc)  { 
			throw new KSInternalErrorException("In FindAllStarLinks, Variable '" + arg0.argName + "' = non-Person in\n" + cb);}  
		}  //  end of method valPersonCheck 
	
	
	void findAllMathLinks(String kinTerm, ArrayList<Object> remLits, ArrayList<Object> starStuff, ClauseBody cb, TreeMap bindings, ConstraintObj constraints) 
		throws KSBadHornClauseException, KSNoChainOfRelations2Alter, KSInternalErrorException,  
			   KSConstraintInconsistency, ClassNotFoundException  {
	//  The current literal is a math predicate (e.g. lessThan(X,Y) ) or the primitive predicate 'not(equal(X,Y)).'  
	//  If both args are bound, we verify that the required relationship holds and go on.
	//  If only xArg is bound, it must be that yArg appears in another literal not yet processed; that literal must be
	//  either a *-predicate (meaning yArg represents some person Z's value for that UDP) or a math predicate imposing an additional
	//  constraint on yArg.  
	//  If there were any birth- or spousal-link to define Z, Z would be bound & Alter found before now.  So it must be that both yArg
	//  and Z are unbound.  The only way we'll "FindAll" legal Z's is to bind Y to something (e.g. an empty list) and recurse.  This 
	//  will allow processing of the next *-pred (in FindAllStarLinks) and get Y bound.
	
		Argument xVar, yVar;
		MathOperator mathOp = null;
		if (predicate.category instanceof MathCategory)  {  //  this is a math predicate
			xVar = (Argument)args.get(0);
			yVar = (Argument)args.get(1);
			if (predicate.name.equals("contains")) mathOp = new Contains();
			else if (predicate.name.equals("lessThan")) mathOp = new LessThan();
			else if (predicate.name.equals("lessOrEql")) mathOp = new LessOrEql();
			else if (predicate.name.equals("greaterThan")) mathOp = new GreaterThan();
			else if (predicate.name.equals("greaterOrEql")) mathOp = new GreaterOrEql();
			}  //  end of math-predicate
		else {  //  must be not-equal
			Literal subLit = (Literal)args.get(0);
			xVar = (Argument)subLit.args.get(0);
			yVar = (Argument)subLit.args.get(1);
			mathOp = new NotEqual();
			}  //  end of not-equal
		ArrayList<Object> xValue = (ArrayList<Object>)bindings.get(xVar.argName), yValue = (ArrayList<Object>)bindings.get(yVar.argName);
		
		if ((xValue != null) && (yValue != null))  {
			if (! mathOp.compare(xVar.getVal(), yVar.getVal())) return;  //  if invalid - FAIL
			//  Done.  Both bound and values validated.
		} else {  //  must be only-1-is-bound
			if ((xValue != null) && (yValue == null))  //  X is already bound; bind Y
				bindings.put(yVar.argName, yVar.bindingVal());
			else  // Y is bound; bind X
				bindings.put(xVar.argName, xVar.bindingVal());
			}  //  end of only-1-is-bound
		recurse(kinTerm, remLits, starStuff, cb, bindings, constraints);  //  tail recursion; use originals
		}  //  end of method findAllMathLinks
	
	
    void recurse(String kinTerm, ArrayList<Object> remLits, ArrayList<Object> starStuff, ClauseBody cb, TreeMap bindings, ConstraintObj constraints)
            throws KSBadHornClauseException, KSNoChainOfRelations2Alter, KSInternalErrorException, KSConstraintInconsistency {
        Literal nextLit = null;
        ArrayList<Object> remLitsCopy = new ArrayList<Object>(remLits), starStuffCopy = new ArrayList<Object>(starStuff);
        try {
            while (((remLitsCopy.size() > 0) || (starStuffCopy.size() > 0)) && (nextLit == null)) {
                nextLit = cb.pop(remLitsCopy, starStuffCopy, bindings, kinTerm);
            }
            if (nextLit != null) {
                nextLit.fillInNames(kinTerm, remLitsCopy, starStuffCopy, cb, bindings, constraints);
                return;
            } else {  //  bingo!
                if (negatedConstraintsStrictlySatisfied(starStuffCopy, bindings, constraints, kinTerm)) {
                    Individual alter = null;
                    Object altObj = bindings.get("Alter");
                    if (altObj instanceof Individual) {
                        alter = (Individual) altObj;
                    } else if (altObj instanceof ArrayList) {
                        alter = (Individual) ((ArrayList)altObj).get(0);
                    }
                    if (alter == null) {
                        throw new KSNoChainOfRelations2Alter("in fillInNames: End of logical chain reached without finding 'Alter' in definition of " + kinTerm);
                    } else {
                        LiteralAbstract1.assignKinTerm(kinTerm, alter, cb, true, null);
                    }
                }  //  end of remLitsCopy-is-empty-and-negated-constraints-are-strictly-met
                return;
            }  //  end of bingo!
        } catch (ClassNotFoundException exc) {
            throw new KSInternalErrorException("In FindAllStarLinks: ClassNotFound Exception via negatedConstraintsStrictlySatisfied");
        }
    }  //  end of method recurse

    boolean negatedConstraintsStrictlySatisfied(ArrayList<Object> starStuff, TreeMap bindings, ConstraintObj constraints, String kinTerm)  
            throws KSBadHornClauseException, KSNoChainOfRelations2Alter, KSInternalErrorException, ClassNotFoundException    {
		//  This method mirrors negatedConstraintsSatisfied above, except that it uses fillInNames_bool to test
		//  for satisfiability;  fillInNames_bool, in turn, requires strict satisfaction of all constraints.
		//  Check to see if any of the ClauseBodies in the Negated constraint are true.  If any one
		//  of them is true, the test is failed and we return false.
		if ((constraints.negated == null) || (constraints.negated.isEmpty())) return true;
		Individual ego = (Individual)bindings.get("Ego");
		ClauseBody cb;
		ArrayList<Object> bodyCopy;
		TreeMap bindingsCopy = new TreeMap(bindings);
		ConstraintObj constraintsCopy;
		for (int i=0; i < constraints.negated.size(); i++) {
			cb = (ClauseBody)constraints.negated.get(i);
			constraintsCopy = new ConstraintObj(constraints); 
			constraintsCopy.negated = new ArrayList<Object>();  //  to prevent infinite recursion
			//  Any restrictions on variables induced by a negated clause should apply only to a
			//  "deep copy" of the args found in the main clausebody, not the main args themselves.
			bodyCopy = new ArrayList<Object>();
			for (int k=0; k < cb.body.size(); k++)
				bodyCopy.add(((Literal)cb.body.get(k)).copy());
			//  Keep all current constraints except cb, and add any new ones appearing in cb.
			try {
				for (int j=0; j < bodyCopy.size(); j++) 
					if (! (((Literal)bodyCopy.get(j)).constraintCheck(ego.gender, constraintsCopy, new ArrayList<Object>(), starStuff)))
						throw new KSConstraintInconsistency(" ");
				if (! LiteralAbstract1.finalConstraintCheck(ego.gender, bindingsCopy, constraintsCopy, bodyCopy, new ArrayList<Object>(), starStuff))
					throw new KSConstraintInconsistency(" ");  
				// finalConstraintCheck does post-processing & a final conflict-check.
				Literal next = null;
				while (((bodyCopy.size() > 0) || (starStuff.size() > 0)) && (next == null)) 
					next = cb.pop(bodyCopy, starStuff, bindingsCopy, kinTerm);  //  next = first non-constraint literal in body
				if (next == null) 
					throw new KSBadHornClauseException("No processable literals in negated clause:\n not(" 
						+ cb.body + ")");
				if (next.fillInNames_bool(kinTerm, bodyCopy, starStuff, cb, bindingsCopy, constraintsCopy, null, new ArrayList<Object>()))					
					return false;
			} catch (KSConstraintInconsistency e) { }
			  catch (KSNoChainOfRelations2Alter e) { }
			//  If a ConstraintInconsistency or NoChainOfRelationsToAlter occurs here, it means the 
			//  constraints alone are enough to make this clauseBody impossible.  
			//  So treat this the same as a failure by fillInNames_bool; go on to the next clauseBody (if any).
			}  //  end of for-i=each-negated-constraint
		return true;
		}  //  end of method negatedConstraintsStrictlySatisfied
	
	
    boolean fillInNames_bool(String kinTerm, ArrayList<Object> remLits, ArrayList<Object> starStuff, ClauseBody cb, TreeMap bindings,
            ConstraintObj constraints, Individual goalPerson, ArrayList<Object> path)
            throws KSBadHornClauseException, KSNoChainOfRelations2Alter, KSInternalErrorException,
            KSConstraintInconsistency, ClassNotFoundException {
        //  This method mimics fillInNames above.  The difference is that this method does not label Alter
        //  if it successfully gets to the end of a logical chain of bindings - it merely returns 'true'
        //  to indicate that it COULD have.  This information is used by negatedConstraintsStrictlySatisfied
        //  to determine whether a negated constraint could be satisfied by objects already created.
        //  It's also used the judge the fit of a candidate CB with a dyad in Active Learning.
        if ((predicate.name.equals("parent")) || (predicate.name.equals("father"))
                || (predicate.name.equals("mother"))) {
            return findAllBirthLinks_bool(1, kinTerm, remLits, starStuff, cb, bindings, constraints, goalPerson, path);
        }
        if ((predicate.name.equals("son")) || (predicate.name.equals("child"))
                || (predicate.name.equals("daughter"))) {
            return findAllBirthLinks_bool(0, kinTerm, remLits, starStuff, cb, bindings, constraints, goalPerson, path);
        }
        if ((predicate.name.equals("spouse")) || (predicate.name.equals("husband"))
                || (predicate.name.equals("wife"))) {
            return findAllSpice_bool(kinTerm, remLits, starStuff, cb, bindings, false, constraints, goalPerson, path);
        }
        if ((predicate.name.equals("divorced")) && (args.size() == 2)) {
            return findAllSpice_bool(kinTerm, remLits, starStuff, cb, bindings, true, constraints, goalPerson, path);
        }
        if (predicate.name.substring(0, 1).equals("*")) {
            return findAllStarLinks_bool(kinTerm, remLits, starStuff, cb, bindings, constraints, goalPerson, path);
        }
        if ((predicate.name.equals("not")) || (predicate.category instanceof MathCategory)) {
            return findAllMathLinks_bool(kinTerm, remLits, starStuff, cb, bindings, constraints, goalPerson, path);
        }
        throw new KSInternalErrorException("Non-primitive predicate found in Literal.fillInNames_bool.");
    }  //  end of method fillInNames_bool


    boolean findAllSpice_bool(String kinTerm, ArrayList<Object> remLits, ArrayList<Object> starStuff, ClauseBody cb, TreeMap bindings, boolean divReq, 
                    ConstraintObj constraints, Individual goalPerson, ArrayList<Object> path) 
        throws KSBadHornClauseException, KSInternalErrorException,  KSConstraintInconsistency, ClassNotFoundException   {
    //  DIVORCE NOTE:  divReq is a flag that indicates whether we are handling a marriage-predicate 
    //  [e.g. spouse(X,Y)] when divReq == false, or the divorce predicate [divorced(X,Y)] when  
    //  divReq == true.  These are antithetical - to state that 
    //  X & Y are married is to say they are CURRENTLY married, hence not divorced.  
    //  To say X & Y are divorced is to say that they are NO LONGER married.
    //  The .getDivorceDate() field on a Family record can be null (no information/don't care) or a blank string
    //  (definitely not divorced) or a non-blank string (definitely divorced).
                
    //  This method mimics findAllSpice, but returns 'true' instead of naming anyone.
        Variable arg0 = (Variable)args.get(0), arg1 = (Variable)args.get(1);  // variable names
        Individual alter, ind0 = (Individual)bindings.get(arg0.argName), ind1 = (Individual)bindings.get(arg1.argName), cand, bound1, prospect;  // persons
        alter = (Individual)bindings.get("Alter");
        if ((remLits.isEmpty()) && (alter != null) && (ind0 != null) && (ind1 != null)) {
        //  Validate the spousal link.  If not correct for this predicate, FAIL
            if (((! divReq) && (! spouseLinkValid(ind0, ind1))) || (divReq && spouseLinkValid(ind0, ind1)))
                return false;
            if ((goalPerson == null) && (negatedConstraintsStrictlySatisfied(starStuff, bindings, constraints, kinTerm))) 
                return true;
            else if ((goalPerson != null) && (goalPerson == (Individual)bindings.get("Alter")) 
                      && (negatedConstraintsStrictlySatisfied(starStuff, bindings, constraints, kinTerm))) 
                return true;
            else return false;
        }
        if ((ind0 != null) && (ind1 != null))  {  // both bound.  Not much to do.
            //  Validate the spousal link.  If not married, FAIL
            if (((! divReq) && (! spouseLinkValid(ind0, ind1))) || (divReq && spouseLinkValid(ind0, ind1)))
                return false;
			return recurse_bool(kinTerm, remLits, starStuff, cb, bindings, constraints, goalPerson, path, alter);
        }  //  end of both-are-already-bound
        Family fam;
        String unBoundArg;
        Variable unBoundVar;
        if (ind0 != null) {  //  ind0-is-bound
            bound1 = ind0;
            unBoundVar = arg1;
            unBoundArg = arg1.argName;
        }  //  end of ind0-is-bound
        else {
            bound1 = ind1;  // we're guaranteed exactly one of them is bound.
            unBoundVar = arg0;
            unBoundArg = arg0.argName;
        }  //  end of ind1-is-bound
        ArrayList<Object> unEqList = makeUnEqList(unBoundArg, constraints, bindings);
        if (unEqList == null) unEqList = new ArrayList<Object>();
        ArrayList<Object> ageSpecList = (ArrayList<Object>)constraints.age.get(unBoundArg);
        if (ageSpecList == null) ageSpecList = new ArrayList<Object>();
//  Now check all spice.  We're looking for the first success.  Fail only if no successes found.
        Iterator famIter = bound1.marriages.iterator();
        while (famIter.hasNext())  {
            fam = (Family)famIter.next();
            if (fam.husband == bound1) prospect = fam.wife;
            else prospect = fam.husband;
            if (   (sexMatch(prospect, bindings, constraints, unBoundVar, true))
                && (unEqMatch(prospect, unEqList)) 
                && (meetsDeathSpecStrictly(prospect, (String)constraints.death.get(unBoundArg)))
                && (meetsDivSpecStrictly(prospect, (String)constraints.divorce.get(unBoundArg)))
                && (meetsStarSpecsStrictly(prospect, unBoundVar, null, bindings, constraints))
                && (meetsDivReqStrictly(fam, divReq))
                && (meetsAgeSpecStrictly(prospect, ageSpecList, bindings)) )  {
                
                bindings.put(unBoundArg, prospect);
                if (remLits.isEmpty()) {
                    if (((goalPerson == null) && (negatedConstraintsStrictlySatisfied(starStuff, bindings, constraints, kinTerm))) 
                        
                        || ((goalPerson != null) && (goalPerson == (Individual)bindings.get("Alter")) 
                            && (negatedConstraintsStrictlySatisfied(starStuff, bindings, constraints, kinTerm))))  {
                        path.add("S");
                        return true;
                    }  //  end of remLits-is-empty-and-negated-constraints-are-strictly-met
                }  // end of remLits-is-empty
                else {
                    ArrayList<Object> pathCopy = new ArrayList<Object>(path), remLitsCopy = new ArrayList<Object>(remLits);
                    ArrayList<Object> starStuffCopy = new ArrayList<Object>(starStuff);
                    pathCopy.add("S");
                    TreeMap bindingsCopy = new TreeMap(bindings);
                    Literal nextLit = null;
                    while (((remLitsCopy.size() > 0) || (starStuffCopy.size() > 0)) && (nextLit == null)) 
                        nextLit = cb.pop(remLitsCopy, starStuffCopy, bindingsCopy, kinTerm);
                    if (nextLit != null)  {
                        if (nextLit.fillInNames_bool(kinTerm, remLitsCopy, starStuffCopy, cb, bindingsCopy, constraints, goalPerson, pathCopy)) {
                            updatePath(path, pathCopy);
                            return true;
                        }  //  end of nextLit.fillInNames_bool-succeeded
                    }  //  end of nextLit != null
                    else {
                        if (findAllSpice_bool(kinTerm, remLitsCopy, starStuffCopy, cb, bindingsCopy, divReq, constraints, goalPerson, pathCopy)) {
                            updatePath(path, pathCopy);
                            return true;
                        }  //  end of this.findAllSpice_bool-succeeded
                    }  //  end of nextLit-does-equal-null
                }  //  end of else-remLits-not-empty
            }  //  end of prospect-is-a-match
        }  //  end of for-each-marriage
        return false;
    }  //  end of method findAllSpice_bool

    boolean recurse_bool(String kinTerm, ArrayList<Object> remLits, ArrayList<Object> starStuff, ClauseBody cb,
            TreeMap bindings, ConstraintObj constraints, Individual goalPerson, ArrayList<Object> path, Individual alter)
            throws KSBadHornClauseException, KSNoChainOfRelations2Alter, KSInternalErrorException, KSConstraintInconsistency {

        Literal nextLit = null;
        while (((remLits.size() > 0) || (starStuff.size() > 0)) && (nextLit == null)) {
            nextLit = cb.pop(remLits, starStuff, bindings, kinTerm);
        }
        try {
            if (nextLit != null) {
                return nextLit.fillInNames_bool(kinTerm, remLits, starStuff, cb, bindings, constraints, goalPerson, path);
            } else {
                if ((remLits.isEmpty()) && (alter != null)) {
                    if ((goalPerson == null) && (negatedConstraintsStrictlySatisfied(starStuff, bindings, constraints, kinTerm))) {
                        return true;
                    } else if ((goalPerson != null) && (goalPerson == alter)
                            && (negatedConstraintsStrictlySatisfied(starStuff, bindings, constraints, kinTerm))) {
                        return true;
                    } else {
                        return false;
                    }
                } else {
                    throw new KSNoChainOfRelations2Alter("In fillInNames_bool: End of logical chain reached without finding 'Alter' in definition of " + kinTerm);
                }
            }  //  end of nextLit-is-null
        } catch (ClassNotFoundException cnf) {
            throw new KSInternalErrorException("In fillInNames_bool: ClassNotFound Exception");
        }
    }  //  end of method recurse_bool

    public void updatePath(ArrayList<Object> path, ArrayList<Object> pathCopy) {
        for (int i = path.size(); i < pathCopy.size(); i++) {
            path.add(pathCopy.get(i));
        }
    }  //  end of method updatePath

    boolean findAllBirthLinks_bool(int kidArgNmbr, String kinTerm, ArrayList<Object> remLits, ArrayList<Object> starStuff, ClauseBody cb, 
                            TreeMap bindings, ConstraintObj constraints, Individual goalPerson, ArrayList<Object> path) 
        throws KSBadHornClauseException, KSInternalErrorException,  KSConstraintInconsistency, ClassNotFoundException    {
        //  Mimics findAllBirthLinks above, but returns true instead of naming anyone.
        Variable kidArg, parArg;
        if (kidArgNmbr == 0) {
            kidArg = (Variable)args.get(0); 
            parArg = (Variable)args.get(1);  
            }  // variable names
        else {
            kidArg = (Variable)args.get(1); 
            parArg = (Variable)args.get(0);  
            }  // variable names
        Individual alter, kid = (Individual)bindings.get(kidArg.argName), par = (Individual)bindings.get(parArg.argName);  // persons
        alter = (Individual)bindings.get("Alter");
        if ((remLits.isEmpty()) && (alter != null) && (kid != null) && (par != null)) {
            //  Test these bindings, to validate that par is indeed a parent of kid.  If not, FAIL.
            if (! par.marriages.contains(kid.birthFamily)) return false;
            if ((goalPerson == null) && (negatedConstraintsStrictlySatisfied(starStuff, bindings, constraints, kinTerm))) 
                return true;
            else if ((goalPerson != null) && (goalPerson == (Individual)bindings.get("Alter")) 
                    && (negatedConstraintsStrictlySatisfied(starStuff, bindings, constraints, kinTerm))) 
                return true;
            else return false;
        }  //  end of all-bound-and-no-remlits-left
        if ((kid != null) && (par != null))  {  // both bound.  Not much to do.
            //  Test these bindings, to validate that par is indeed a parent of kid.  If not, FAIL.
            if (! par.marriages.contains(kid.birthFamily)) return false;
            Literal nextLit = null;
            while (((remLits.size() > 0) || (starStuff.size() > 0)) && (nextLit == null)) 
                nextLit = cb.pop(remLits, starStuff, bindings, kinTerm);
            if (nextLit != null) 
                    return nextLit.fillInNames_bool(kinTerm, remLits, starStuff, cb, bindings, constraints, goalPerson, path);
            else {
                if (remLits.isEmpty() && alter != null) {
                    if ((goalPerson == null) && (negatedConstraintsStrictlySatisfied(starStuff, bindings, constraints, kinTerm))) 
                        return true;
                    else if ((goalPerson != null) && (goalPerson == (Individual)bindings.get("Alter")) 
                            && (negatedConstraintsStrictlySatisfied(starStuff, bindings, constraints, kinTerm))) 
                        return true;
                    else return false;
                }else throw new KSNoChainOfRelations2Alter("in fillInNames: End of logical chain reached without finding 'Alter' in definition of " + kinTerm);
            }  //  end of nextLit-is-null
        }  //  end of both-are-already-bound
        Family fam;
        if (par != null)  {  //  parent is bound - we're looking for kids
            ArrayList<Object> kidUnEqList = makeUnEqList(kidArg.argName, constraints, bindings);
            ArrayList<Object> kidAgeSpecList = (ArrayList<Object>)constraints.age.get(kidArg.argName);
            if (kidAgeSpecList == null) kidAgeSpecList = new ArrayList<Object>();
            //  Armed with constraints, now sift through the kids
            Iterator famIter = par.marriages.iterator();
            while (famIter.hasNext())  {
                fam = (Family)famIter.next();
                Iterator kidIter = fam.children.iterator();
                while (kidIter.hasNext())  {
                    kid = (Individual)kidIter.next();
                    if (   (sexMatch(kid, bindings, constraints, kidArg, true))
                        && (unEqMatch(kid, kidUnEqList)) 
                        && (meetsDeathSpecStrictly(kid, (String)constraints.death.get(kidArg.argName)))
                        && (meetsDivSpecStrictly(kid, (String)constraints.divorce.get(kidArg.argName)))
                        && (meetsStarSpecsStrictly(kid, kidArg, null, bindings, constraints))
                        && (meetsAgeSpecStrictly(kid, kidAgeSpecList, bindings))) {
                        
                        bindings.put(kidArg.argName, kid);
                        if (remLits.isEmpty()) {
                            if (((goalPerson == null) && (negatedConstraintsStrictlySatisfied(starStuff, bindings, constraints, kinTerm))) 
                                
                                || ((goalPerson != null) && (goalPerson == (Individual)bindings.get("Alter")) 
                                    && (negatedConstraintsStrictlySatisfied(starStuff, bindings, constraints, kinTerm)))) {
                                path.add("C");
                                return true; 
                            }  //  end of end of negated-constraints-are-strictly-met
                        }   //  end of remLits-is-empty
                        else {  //  recurse on each kid who qualifies
                            TreeMap bindingsCopy = new TreeMap(bindings);
                            ArrayList<Object> remLitsCopy = new ArrayList<Object>(remLits),  pathCopy = new ArrayList<Object>(path);
                            ArrayList<Object> starStuffCopy = new ArrayList<Object>(starStuff);
                            pathCopy.add("C");
                            Literal nextLit = null;
                            while (((remLitsCopy.size() > 0) || (starStuffCopy.size() > 0)) && (nextLit == null)) 
                                nextLit = cb.pop(remLitsCopy, starStuffCopy, bindingsCopy, kinTerm);
                            if (nextLit != null) {
                                if (nextLit.fillInNames_bool(kinTerm, remLitsCopy, starStuffCopy, cb, bindingsCopy, constraints, goalPerson, pathCopy)) {
                                    updatePath(path, pathCopy);
                                    return true;
                                    }  //  end of nextLit.fillInNames_bool-succeeded
                                }  //  end of nextList != null
                                else {
                                    if (findAllBirthLinks_bool(kidArgNmbr, kinTerm, remLitsCopy, starStuffCopy, cb, bindingsCopy, constraints, goalPerson, pathCopy)) {
                                        updatePath(path, pathCopy);
                                        return true;
                                    }  //  end of this.findAllSpice_bool-succeeded
                                }  //  end of nextLit-is-null
                            }  //  end of remLits-is-not-empty
                        }  //  end of found-appropriate-kid
                    }  //  end of for-each-kid-in-fam
                }  //  end of for-each-family
            return false;
            }  //  end of parent-is-bound
        else  {  //  kid is bound - seeking the parent(s)
            ArrayList<Object> parUnEqList = makeUnEqList(parArg.argName, constraints, bindings);
            ArrayList<Object> parAgeSpecList = (ArrayList<Object>)constraints.age.get(parArg.argName);
            if (parAgeSpecList == null) parAgeSpecList = new ArrayList<Object>();
            //  Armed with constraints, now check the parents
            if (kid.birthFamily != null)  {  //  if birthfamily exists, it will have a husband and a wife
                par = kid.birthFamily.husband;  // check the husband
                if (   (sexMatch(par, bindings, constraints, parArg, true))
                    && (unEqMatch(par, parUnEqList))
                    && (meetsDeathSpecStrictly(par, (String)constraints.death.get(parArg.argName)))
                    && (meetsDivSpecStrictly(par, (String)constraints.divorce.get(parArg.argName)))
                    && (meetsStarSpecsStrictly(par, parArg, null, bindings, constraints))
                    && (meetsAgeSpecStrictly(par, parAgeSpecList, bindings))) {
                    
                    bindings.put(parArg.argName, par);
                    if (remLits.isEmpty()) {
                        if (((goalPerson == null) && (negatedConstraintsStrictlySatisfied(starStuff, bindings, constraints, kinTerm))) 
                            || ((goalPerson != null) && (goalPerson == (Individual)bindings.get("Alter")) 
                                && (negatedConstraintsStrictlySatisfied(starStuff, bindings, constraints, kinTerm))))  { 
                            path.add("P");
                            return true; 
                            }   //  end of negated-constraints-are-strictly-met  
                    }  //  end of remLits-is-empty
                    else {  //  recurse on husband
                        TreeMap bindingsCopy = new TreeMap(bindings);
                        ArrayList<Object> pathCopy = new ArrayList<Object>(path), remLitsCopy = new ArrayList<Object>(remLits);
                        ArrayList<Object> starStuffCopy = new ArrayList<Object>(starStuff);
                        pathCopy.add("P");
                        Literal nextLit = null;
                        while (((remLitsCopy.size() > 0) || (starStuffCopy.size() > 0)) && (nextLit == null)) 
                            nextLit = cb.pop(remLitsCopy, starStuffCopy, bindingsCopy, kinTerm);
                        if (nextLit != null) {
                            if (nextLit.fillInNames_bool(kinTerm, remLitsCopy, starStuffCopy, cb, bindingsCopy, constraints, goalPerson, pathCopy)) {
                                updatePath(path, pathCopy);
                                return true;
                            }  //  end of nextLit.fillInNames_bool-succeeded
                        }  //  end of nextList != null
                        else {
                            if (fillInNames_bool(kinTerm, remLitsCopy, starStuffCopy, cb, bindingsCopy, constraints, goalPerson, pathCopy)) {
                                updatePath(path, pathCopy);
                                return true;
                            }  //  end of this.findAllSpice_bool-succeeded
                        }  //  end of nextLit-is-null
                    }  //  end of recurse-on-husband
                }  //  end of husband is a match
                par = kid.birthFamily.wife;  // now check the wife
                if (   (sexMatch(par, bindings, constraints, parArg, true))
                    && (unEqMatch(par, parUnEqList))
                    && (meetsDeathSpecStrictly(par, (String)constraints.death.get(parArg.argName)))
                    && (meetsDivSpecStrictly(par, (String)constraints.divorce.get(parArg.argName)))
                    && (meetsStarSpecsStrictly(par, parArg, null, bindings, constraints))
                    && (meetsAgeSpecStrictly(par, parAgeSpecList, bindings))) {
                    
                    bindings.put(parArg.argName, par);
                    if (remLits.isEmpty()) {
                        if (((goalPerson == null) && (negatedConstraintsStrictlySatisfied(starStuff, bindings, constraints, kinTerm))) 
                            || ((goalPerson != null) && (goalPerson == (Individual)bindings.get("Alter")) 
                                && (negatedConstraintsStrictlySatisfied(starStuff, bindings, constraints, kinTerm))))  { 
                            path.add("P");
                            return true; 
                            }   //  end of negated-constraints-are-strictly-met  
                    }  //  end of remLits-is-empty
                    else {  //  recurse on wife  -- (use originals, not copies)
                        Literal nextLit = null;
                        path.add("P");
                        while (((remLits.size() > 0) || (starStuff.size() > 0)) && (nextLit == null)) 
                            nextLit = cb.pop(remLits, starStuff, bindings, kinTerm);
                        if (nextLit != null) {
                            if (nextLit.fillInNames_bool(kinTerm, remLits, starStuff, cb, bindings, constraints, goalPerson, path)) 
                                return true;
                        }  //  end of nextList != null
                        else {
                            if (findAllBirthLinks_bool(kidArgNmbr, kinTerm, remLits, starStuff, cb, bindings, constraints, goalPerson, path)) 
                            return true;
                        }  //  end of remLits-is-not-empty
                    }  //  end of recurse-on-wife
                }  //  end of wife is a match
            }  //  end of birthfamily-exists
            return false;
        }  //  end of kid-is-bound
    }  //  end of method findAllBirthLinks_bool

	
    boolean findAllStarLinks_bool(String kinTerm, ArrayList<Object> remLits, ArrayList<Object> starStuff, ClauseBody cb, TreeMap bindings,
            ConstraintObj constraints, Individual goalPerson, ArrayList<Object> path)
            throws KSBadHornClauseException, KSNoChainOfRelations2Alter, KSInternalErrorException,
            KSConstraintInconsistency, ClassNotFoundException {
        //  This method mimics findAllStarLinks, but returns true instead of labelling anyone

        //  One or both args to this literal are already bound.
        Variable personVar = (Variable) args.get(1);
        Individual person = (Individual) bindings.get(personVar.argName);  //  null = that variable not yet bound
        Argument arg0 = (Argument) args.get(0);
        if (arg0 instanceof Constant) {
            bindings.put(arg0.argName, arg0.bindingVal());  //  if this is a fresh constant, bind it.
        }
        Individual alter = null;
        Object altObj = bindings.get("Alter");
        if (altObj instanceof Individual) {
            alter = (Individual) altObj;
        } else if (altObj instanceof ArrayList) {
            alter = (Individual) ((ArrayList) altObj).get(0);
        }
        if ((remLits.isEmpty()) && (alter != null) && (bindings.get(arg0.argName) != null) && (person != null)) {
            //  Validate the *-link.  If not correct for this predicate, FAIL
            UserDefinedProperty udp = (UserDefinedProperty) person.userDefinedProperties.get(predicate.name);
            if (bindings.get(arg0.argName) instanceof Individual && 
                    !udp.value.contains(bindings.get(arg0.argName))) {
                return false;
            }
            if ((bindings.get(arg0.argName) instanceof ArrayList)
                    && (!containsAll(udp.value, (ArrayList<Object>) bindings.get(arg0.argName)))) {
                return false;
            }
            if ((goalPerson == null) && (negatedConstraintsStrictlySatisfied(starStuff, bindings, constraints, kinTerm))) {
                return true;
            }
            if ((goalPerson != null) && (goalPerson == (Individual) bindings.get("Alter"))
                    && (negatedConstraintsStrictlySatisfied(starStuff, bindings, constraints, kinTerm))) {
                return true;
            } else {
                return false;
            }
        }
        //  Check to see if both arguments are bound already.  If so, just recurse.  There's no need to validate that this
        //  literal is true, because a star-literal is also a constraint; it was validated when the args were bound.
        if ((person != null) && (bindings.get(arg0.argName) != null)) {
            return recurse_bool(kinTerm, remLits, starStuff, cb, bindings, constraints, goalPerson, path, alter);
        } //  If we're here, only one arg is bound.  Recurse on all legal bindings of the unbound arg.
        else if (person != null) {  //  arg0 is unbound
            UserDefinedProperty udp = (UserDefinedProperty) person.userDefinedProperties.get(predicate.name);
            if (udp.value.size() > 0) {  //  person-has-a-value-for-this-UDP
                // if arg0 has a different value, FAIL
                if (arg0.getVal() != null && !arg0.getVal().isEmpty() 
                        && !containsAll(udp.value, arg0.getVal())) {
                    return false;
                } else if (arg0.getVal() != null && !arg0.getVal().isEmpty()
                        && containsAll(udp.value, arg0.getVal())) {
                    bindings.put(arg0.argName, arg0.bindingVal());  
                    //  tail recursion - we can use original copy of bindings
                    return recurse_bool(kinTerm, remLits, starStuff, cb, bindings, constraints, goalPerson, path, alter);
                } else if (arg0.getVal() == null || arg0.getVal().isEmpty()) {
                    //  Maybe one of person's values is correct. try them all. 
                    //  One success is enough. If all fail, then fail.
                    for (Object o : udp.value) {
                        bindings.put(arg0.argName, o);
                        ArrayList newValList = new ArrayList();
                        newValList.add(o);
                        arg0.setVal(newValList);
                        altObj = bindings.get("Alter");
                        if (altObj instanceof Individual) {
                            alter = (Individual) altObj;
                        } else if (altObj instanceof ArrayList) {
                            alter = (Individual) ((ArrayList) altObj).get(0);
                        }
                        boolean success = recurse_bool(kinTerm, remLits, starStuff,
                                cb, bindings, constraints, goalPerson, path, alter);
                        if (success) {
                            return true;
                        }
                    }
                    //  No success. Undo & fail.
                    bindings.remove(arg0.argName);
                    arg0.setVal(new ArrayList());
                    return false;
                }
            } //  end of person-had-a-value-for-this-UDP
            else {
                return false;  //  person has no value & arg0 has no value.  FAIL.
            }
        } //  end of person-was-bound
        else {  //  person-is-unbound.  So recurse on each person in population that has the prescribed value
            //  NOTE:  It is possible to reach this point with person unbound and arg0 bound to an empty list = arg0.value
            //  In that case, there is no prescribed value EXCEPT for the constraints on the value of the MathVarible arg0
            ArrayList<Individual> census = Context.current.individualCensus;
            ArrayList<Object> requiredVal = arg0.getVal(), starBindings = new ArrayList<Object>();  //  starBindings is a throwaway list
            Individual guy, valPerson = null;
            UserDefinedProperty udp;
            TreeMap bindingsCopy = new TreeMap(bindings);  // for multiple recursive descents
            boolean winner = false;
            for (int i = 0; i < census.size(); i++) {
                guy = (Individual) census.get(i);
                udp = (UserDefinedProperty) guy.userDefinedProperties.get(predicate.name);
                if ((requiredVal.size() > 0) && listEqual(requiredVal, udp.value) && //  arg0 NOT empty, & a match
                        guy.meetsConstraintsStrictly(personVar, constraints, bindings, starBindings)) {
                    winner = true;
                } else if ((requiredVal.isEmpty()) && (arg0 instanceof MathVariable) && //  arg0 empty
                        valListCheck(arg0, udp, guy, bindings, constraints, starBindings) && //  UDP val meets arg0 constraints
                        guy.meetsConstraintsStrictly(personVar, constraints, bindings, starBindings)) //  other constraints met
                {
                    winner = true;
                } else if (arg0.argType.equals("Variable")) {
                    if (!udp.typ.equals("individual")) {
                        throw new KSInternalErrorException("In FindAllStarLinks: Variable set equal to UDP of type '" + udp.typ
                                + "' in\n" + cb);
                    }
                    //  arg0 is bound to SOMETHING - an empty list or a person
                    Object mysteryObj = bindings.get(arg0.argName);
                    if (mysteryObj instanceof Individual) {
                        valPerson = (Individual) mysteryObj;
                    }
                    if ((valPerson != null) && (udp.value.size() == 1) && udp.value.contains(valPerson)
                            && guy.meetsConstraintsStrictly(personVar, constraints, bindings, starBindings)) {
                        winner = true;  //  arg0 is already bound to a person, who matches UDP's value
                    } else if ((valPerson == null) && (udp.value.size() == 1)
                            && valPersonCheck(arg0, udp, bindings, constraints, starBindings, cb)
                            && guy.meetsConstraintsStrictly(personVar, constraints, bindings, starBindings)) {
                        bindingsCopy.put(arg0.argName, udp.value.get(0));
                        winner = true;  //  bind arg0 to the person in the UDP's value, but only on the COPY of bindings
                    }
                }  //  end of arg0-is-a-Variable
                if (winner) {
                    bindingsCopy.put(personVar.argName, guy);
                    return recurse_bool(kinTerm, remLits, starStuff, cb, bindingsCopy, constraints, goalPerson, path, alter);
                }  //  end of found-a-winner
            }  //  end of loop thru all people in this context
        }  //  end of person-was-unbound
        return false;
    }  //  end of method findAllStarLinks

    boolean findAllMathLinks_bool(String kinTerm, ArrayList<Object> remLits, ArrayList<Object> starStuff, ClauseBody cb, TreeMap bindings,
            ConstraintObj constraints, Individual goalPerson, ArrayList<Object> path)
            throws KSBadHornClauseException, KSNoChainOfRelations2Alter, KSInternalErrorException,
            KSConstraintInconsistency, ClassNotFoundException {
	//  This method mimics findAllMathLinks, except instead of labelling Alter with a kinTerm, we return true to indicate we could have.
		Argument xVar, yVar;
		MathOperator mathOp = null;
		if (predicate.category instanceof MathCategory)  {  //  this is a math predicate
			xVar = (Argument)args.get(0);
			yVar = (Argument)args.get(1);
			if (predicate.name.equals("contains")) mathOp = new Contains();
			else if (predicate.name.equals("lessThan")) mathOp = new LessThan();
			else if (predicate.name.equals("lessOrEql")) mathOp = new LessOrEql();
			else if (predicate.name.equals("greaterThan")) mathOp = new GreaterThan();
			else if (predicate.name.equals("greaterOrEql")) mathOp = new GreaterOrEql();
			}  //  end of math-predicate
		else {  //  must be not-equal
			Literal subLit = (Literal)args.get(0);
			xVar = (Argument)subLit.args.get(0);
			yVar = (Argument)subLit.args.get(1);
			mathOp = new NotEqual();
			}  //  end of not-equal
		ArrayList<Object> xValue = (ArrayList<Object>)bindings.get(xVar.argName), yValue = (ArrayList<Object>)bindings.get(yVar.argName);
		
		if ((xValue != null) && (yValue != null))  {
			if (! mathOp.compare(xVar.getVal(), yVar.getVal())) return false;  //  if invalid - FAIL
			//  Done.  Both bound and values validated.
		} else {  //  must be only-1-is-bound
			if ((xValue != null) && (yValue == null))  //  X is already bound; bind Y
				bindings.put(yVar.argName, yVar.bindingVal());
			else  // Y is bound; bind X
				bindings.put(xVar.argName, xVar.bindingVal());
				}  //  end of only-1-is-bound
		Individual alter = (Individual)bindings.get("Alter");
		return recurse_bool(kinTerm, remLits, starStuff, cb, bindings, constraints, goalPerson, path, alter);
		}  //  end of method findAllMathLinks_bool	

	
	
	public int compare(Object o1, Object o2)  {
        //  2 Lits with same predName and same argNames are equal.  Otherwise, Lit that would sort
		//  earlier in a lexicographic sort of concatenation of names is earlier.  (Blank sorts earlier.)
		//  If the Lits have args of different types, we determine order by lexico order.
		//  If they both have args of the same class (but not the class Argument), we compare the 2 instances
		//  (assuming they are legal classes for args -- e.g. Integer, String ...)
		Predicate pred1 = ((Literal)o1).predicate,
				  pred2 = ((Literal)o2).predicate;
		int result = pred1.name.compareTo(pred2.name);
		if (result != 0) return result;
		ArrayList<Object> args1 = ((Literal)o1).args,
				  args2 = ((Literal)o1).args;
		int smallSize = Math.min(args1.size(), args2.size());
		for (int i=0; i < smallSize; i++)  {
			Object thisArg = args1.get(i),
				   otherArg = args2.get(i);
			if (thisArg instanceof Argument && otherArg instanceof Argument) {  //  the normal case
				result = ((Argument)thisArg).argName.compareTo(((Argument)otherArg).argName);
				if (result != 0) return result;
			}else if (thisArg.getClass() != otherArg.getClass())  {
				result =  thisArg.getClass().getName().compareTo(otherArg.getClass().getName());
				if (result != 0) return result;
			}else {  //  they're of same class, but not Argument.  Go thru possibilities
				if (thisArg instanceof Integer) result = ((Integer)thisArg).compareTo((Integer)otherArg);
				else if (thisArg instanceof Float) result = ((Float)thisArg).compareTo((Float)otherArg);
				else if (thisArg instanceof String) result = ((String)thisArg).compareTo((String)otherArg);
				else if (thisArg instanceof Boolean)  {
					if (((Boolean)thisArg).equals((Boolean)otherArg)) result = 0;
					else if ((Boolean)thisArg) result = 1;
					else result = -1;
				}else if (thisArg instanceof Individual)  {
					if (((Individual)thisArg).serialNmbr < ((Individual)otherArg).serialNmbr) result = -1;
					else if (((Individual)thisArg).serialNmbr == ((Individual)otherArg).serialNmbr) result = 0;
					else result = 1;
				}else throw new ClassCastException("Literal.compare() got illegal arg type: " + thisArg.getClass());
				if (result != 0) return result; 
				}  //  end of non-Arguments of same class
			}  //  end of loop thru args
		if (args1.size() == args2.size()) return 0;
		else return (args1.size() < args2.size() ? -1 : 1);
		}  //  end of method compare() which partially implements Interface Comparator
		   //  and over-rides the method inherited from Argument
    
    public boolean equals(Object obj)  {
        String predname = ((Literal)obj).predicate.name;
		if (! predname.equals(predicate.name)) return false;
		int nmbrArgs = ((Literal)obj).args.size();
		if (nmbrArgs != args.size()) return false;
		for (int i=0; i < args.size(); i++)  {
			Object thisArg = args.get(i),
				   otherArg = ((Literal)obj).args.get(i);
			if (thisArg.getClass() != otherArg.getClass()) return false;
			if (thisArg instanceof Argument)  {
				String objArgName = ((Argument)((Literal)obj).args.get(i)).argName,
					   myArgName = ((Argument)args.get(i)).argName;
				if (! objArgName.equals(myArgName)) return false;
			}else if (! thisArg.equals(otherArg)) return false;
			}
		return true;
        }  //  end of method equals() which partially implements Interface Comparator
		   //  and over-rides the method inherited from Argument

	
}  // end of class Literal
