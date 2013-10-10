

import java.util.* ;
import java.text.* ;
import java.io.* ;

/** This abstract class continues the definition of a Literal in Prolog syntax.  Literals are the basic building blocks of
	Horn Clauses.  They also are the level at which 90% of the action takes place in Example-Generation.
	<p>
	Because so many methods are defined at the Literal level, the code files are broken into 3 classes:  LiteralAbstract2, this one,
	and Literal. 

  @author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
*/
public abstract class LiteralAbstract2 extends LiteralAbstract1  {
	public static final String stdLitType = "Literal";

	/** Generic zero-arg constructor.  Primarily for use in Serialization    */
	public LiteralAbstract2()  { 
		super();
		argType = stdLitType;
		}

		/** Produce the set-difference of list1 minus list2; remove each item in list2 from list1 -- if it's there.

	@param	list1	the base list, from which we will subtract.
	@param	list2	the list of items to be subtracted.

	@return		the set difference.
	*/
	public static ArrayList<Object> setDifference(ArrayList<Object> list1, ArrayList<Object> list2)  {
		if ((list2 == null) || (list2.isEmpty())) return list1;
		ArrayList<Object> result = new ArrayList<Object>();
		Object obj;
		for (int i=0; i < list1.size(); i++)  {
			obj = list1.get(i);
			if (! list2.contains(obj)) result.add(obj);
			}
		return result;
		}  //  end of method setDifference


//  The following 21 methods are all related to generating example-persons who illustrate the kinship
//  definition contained in the enclosing clauseBody.  They all FindOrCreate_X, i.e. they find a single
//  existing person to use, or create one if no suitable person can be re-used.
//  This is in contrast to the set of methods which follows, the FindAll_X methods, which only label existing persons.

	boolean findOrCreate(ArrayList<Object> cbody, ArrayList<Object> starStuff, TreeMap bindings, TreeMap badBindings, ArrayList<Object> starBindings,
                            ConstraintObj constraints, String kinTerm, ClauseBody cb, ArrayList<Object> pcStr, Dyad dyad)
            throws KSBadHornClauseException, KSInternalErrorException, KSConstraintInconsistency, ClassNotFoundException {

		int kidFlag = 0, parFlag = 0, mateFlag = 0;  // signals re: past failures
		//  Find the correct method for this Primitive Predicate & call it.
//  if (Context.breakFlag) Context.breakpoint();
		if (predicate.name.equals("parent"))
			return findOrCreateBirthLink("?", "?", 0, cbody, starStuff, bindings, badBindings, starBindings, constraints, kidFlag, parFlag, false, kinTerm, cb, pcStr, dyad);
		if (predicate.name.equals("child"))
			return findOrCreateBirthLink("?", "?", 1, cbody, starStuff, bindings, badBindings, starBindings, constraints, kidFlag, parFlag, false, kinTerm, cb, pcStr, dyad);
		if (predicate.name.equals("father"))
			return findOrCreateBirthLink("M", "?", 0, cbody, starStuff, bindings, badBindings, starBindings, constraints, kidFlag, parFlag, false, kinTerm, cb, pcStr, dyad);
		if (predicate.name.equals("mother"))
			return findOrCreateBirthLink("F", "?", 0, cbody, starStuff, bindings, badBindings, starBindings, constraints, kidFlag, parFlag, false, kinTerm, cb, pcStr, dyad);
		if (predicate.name.equals("son"))
			return findOrCreateBirthLink("?", "M", 1, cbody, starStuff, bindings, badBindings, starBindings, constraints, kidFlag, parFlag, false, kinTerm, cb, pcStr, dyad);
		if (predicate.name.equals("daughter"))
			return findOrCreateBirthLink("?", "F", 1, cbody, starStuff, bindings, badBindings, starBindings, constraints, kidFlag, parFlag, false, kinTerm, cb, pcStr, dyad);
		if ((predicate.name.equals("husband")) || (predicate.name.equals("wife"))
				|| (predicate.name.equals("spouse")))
			return findOrCreateSpouse(cbody, starStuff, bindings, badBindings, starBindings, false, constraints, mateFlag, false, kinTerm, cb, pcStr, dyad);
		if ((predicate.name.equals("divorced"))  && (args.size() == 2))
			return findOrCreateSpouse(cbody, starStuff, bindings, badBindings, starBindings, true, constraints, mateFlag, false, kinTerm, cb, pcStr, dyad);
		if (predicate.name.substring(0, 1).equals("*"))
			return findOrCreateStarLink(cbody, starStuff, bindings, badBindings, starBindings, constraints, 0, false, kinTerm, cb, pcStr, dyad);
		if ((predicate.name.equals("not")) || (predicate.category instanceof MathCategory))
			return findOrCreateMathLink(cbody, starStuff, bindings, badBindings, starBindings, constraints, false, kinTerm, cb, pcStr, dyad);
		throw new KSInternalErrorException("Non-Primitive Predicate Encountered in Literal.findOrCreate.\nLiteral is: " + this);
		}  //  end of dispatch method findOrCreate



    boolean findOrCreateBirthLink(String parSex, String kidSex, int parArg, ArrayList<Object> remLits, ArrayList<Object> starStuff, TreeMap bindings,
            TreeMap badBindings, ArrayList<Object> starBindings, ConstraintObj constraints, int kidFlag, int parFlag,
            boolean keepBB, String kinTerm, ClauseBody cb, ArrayList<Object> pcStr, Dyad dyad)
            throws KSBadHornClauseException, KSInternalErrorException, KSConstraintInconsistency, ClassNotFoundException {
        //  This handles parent, father, mother, son, & daughter predicates via the 1st 3 parameters.
        //  For each arg, either (1) a suitable Individual already exists in the Indiv-Census
        //  so we find it and bind it, then recurse on remLits.   OR
        //  (2) we create a suitable Individual and add it to the bindings - honoring constraints - then recurse.
        //  badBindings is a TreeMap of variables (argNames) & lists of prohibited bindings (individuals)
        int kidArg, resetInd = Context.current.indSerNumGen, resetFam = Context.current.famSerNumGen;
        int sbSize = starBindings.size();
        kidArg = (parArg + 1) % 2;
        Variable parent = (Variable) args.get(parArg), child = (Variable) args.get(kidArg);
        Individual parentIndiv = (Individual) bindings.get(parent.argName), childIndiv = (Individual) bindings.get(child.argName);
        String bindingMade = null, parentSex = parSex;

        //  if (Context.breakFlag) System.out.println("F/C_BirthLink on " + this);
        Argument argBound = null;
        ArrayList<Object> parentSexList;
        if (parSex.equals("?")) {
            parentSexList = resolveOppo(bindings, constraints, parent);
            if (parentSexList == null) {
                parentSex = "?";
            } else if (parentSexList.contains("F")) {
                parentSex = "F";
            } else if (parentSexList.contains("M")) {
                parentSex = "M";
            }
        }
        Family fam = null;
        if (LiteralAbstract1.negativeConstraintPhase) {
            //  One or both of these may have been bound earlier in a 'positive' phase, and carried (via bindings
            //  list) into a 'negatedConstraintsSatisfied' phase.  So double check constraints.  Use the _Strictly_
            //  versions,'cuz we don't want to change anything on a bound arg/object pair.
            if ((childIndiv != null) && (!childIndiv.meetsConstraintsStrictly(child, constraints, bindings, starBindings))) {
                return false;
            }
            if ((parentIndiv != null) && (!parentIndiv.meetsConstraintsStrictly(parent, constraints, bindings, starBindings))) {
                return false;
            }
        }  //  end of if-negativeConstraintPhase
        //  we know that either parent or child (maybe both) already exists
        if ((parentIndiv != null) && (childIndiv == null)) {  // parent already exists; look for child of right sex
            Individual existingKid;
            ArrayList<Object> badKids = (ArrayList<Object>) badBindings.get(child.argName);  //  list of individuals we can NOT accept
            if (badKids == null) {
                badKids = new ArrayList<Object>();
            }
            existingKid = kidSearch(parentIndiv, kidSex, child, constraints, bindings, badKids, starBindings, cb);
            if (existingKid == null) {  // no match found among existing kids
                ArrayList<Object> kidSexList;
                if (kidSex.equals("?")) {
                    kidSexList = resolveOppo(bindings, constraints, child);
                    if (kidSexList == null) {
                        kidSex = "?";
                    } else if (kidSexList.contains("F")) {
                        kidSex = "F";
                    } else if (kidSexList.contains("M")) {
                        kidSex = "M";
                    }
                }
                //  kidFlag = 0 means we've never created a kid for this variable
                //  kidFlag = 1-2 means we created a kid in family#0 previously (M & F) & it didn't work
                //  kidFlag = 3-4 means we've used or created a 2nd marriage & new kid - still didn't work
                //  kidFlag = 5-6 means we've created a new marriage & new kid - nothing works
                if (kidFlag == 0) {
                    fam = findOrMakeMarriage(parentIndiv, 0, parent.argName, constraints);
                } else if (kidFlag <= 2) //  try 2nd marriage
                {
                    fam = findOrMakeMarriage(parentIndiv, 1, parent.argName, constraints);
                } else if (kidFlag <= 4) //  force a new marriage
                {
                    fam = findOrMakeMarriage(parentIndiv, 99, parent.argName, constraints);
                } else if (kidFlag >= 5) {
                    return false;  // nothing left to try
                }
                kidFlag++;
                BoolFlag failFlag = new BoolFlag(false);
                childIndiv = new Individual("*&^%$", kidSex, fam, null, child.argName, null, bindings,
                        starBindings, constraints, child, failFlag, cb);
                if (failFlag.value) {
                    LiteralAbstract1.failReason = failFlag.reason;
                    return false;
                }  //  end of failFlag===true
                if ((fam != null) && (fam.getMarriageDate().length() < 4)) {
                    fam.generateMarriageDate();
                }
            } //  end of if-no-suitable-existingKid-found
            else {
                childIndiv = existingKid;
            }
            bindings.put(child.argName, childIndiv);
            if (childIndiv.node == null) {
                childIndiv.node = new Node();
            } else {
                childIndiv.node.appearances++;
            }
            bindingMade = child.argName;
            if (dyad != null) {
                dyad.path.add(childIndiv);
            }
            argBound = child;
            cb.pcCounter++;
            addToPCString(pcStr, parentIndiv, childIndiv, false);
            child.treeLevel = parent.treeLevel - 1;
            if (bindingMade.equals("Alter")) {
                cb.level = child.treeLevel;
                if (dyad != null) {
                    dyad.alter = childIndiv;
                }
            }
        }  //  end of if-parent-already-exists
            else if ((parentIndiv == null) && (childIndiv != null))  { //  kid already exists, parent doesn't
                BoolFlag failFlag = new BoolFlag(false);
                fam = findOrMakeBirthFamily(childIndiv, parentSex, parent.argName, null, bindings,
											starBindings, constraints, parent, failFlag, cb);
                if (failFlag.value) {
                        LiteralAbstract1.failReason = failFlag.reason;
                        return false;
                    }  //  end of failFlag===true
		ArrayList<Object> badParents = (ArrayList<Object>)badBindings.get(parent.argName);
                if (badParents == null) badParents =  new ArrayList<Object>();
                parentIndiv = parentSearch(fam, parentSex, parent, constraints, bindings, badParents, parFlag, starBindings, cb);
                if (parentIndiv == null) return false;
                if ((fam != null) && (fam.getMarriageDate().length() < 4)) fam.generateMarriageDate();
                bindings.put(parent.argName, parentIndiv);
                if (parentIndiv.node == null) parentIndiv.node = new Node();
                else parentIndiv.node.appearances++;
                bindingMade = parent.argName;
                if (dyad != null) dyad.path.add(parentIndiv);
                argBound = parent;
                cb.pcCounter++;
                addToPCString(pcStr, childIndiv, parentIndiv, true);
                parent.treeLevel = child.treeLevel + 1;
                if (bindingMade.equals("Alter")) {
                    cb.level = parent.treeLevel;
                    if (dyad != null) dyad.path.add(parentIndiv);
                }
            }  //  end of else-if-kid-already-exists
            else  {  //  both already exist & bound; verify they are recorded as parent/child & meet constraints
                        // 'cuz both are already bound, there's no point in ever repeating this level -- max both flags
                kidFlag = 6;
                parFlag = 2;
                if ((childIndiv.birthFamily == null) && (parentIndiv.marriages.isEmpty())) {
                    fam = new Family(parentIndiv, parent.argName, constraints.divorce);
                    fam.addChild(childIndiv);
                    }  //  end of if-birthFamily-not-created-and-parent-unmarried
                else if (childIndiv.birthFamily == null) {  //  parent has an existing marriage
                    fam = (Family)parentIndiv.marriages.get(0);
                    fam.addChild(childIndiv);
                    }  //  end of birthFamily-not-created-but-parent-married
                else if ((childIndiv.birthFamily != null) && (parentIndiv.marriages.isEmpty()))  {
                    //  BirthFam may have a dummy-parent in it that parent can replace
                    fam = childIndiv.birthFamily;
                    if (! (childIndiv.birthFamily.subForDummyParent(parentIndiv)))  // not-compatible
                        return false;
                    }  //  end of if-birthFamily-created-and-parent-unmarried
                else {  // birthFam-exists-and-parent-already-married.  Our only hope is that they are compatible.
                    fam = childIndiv.birthFamily;
                    if (! (parentIndiv.marriages.contains(childIndiv.birthFamily)))  // if compatible, do nothing
                        return false;
                    }  //  end of birthFam-exists-and-parent-already-married
                fam.checkFamDOBs();
                if ((fam != null) && (fam.getMarriageDate().length() < 4)) fam.generateMarriageDate();
                cb.pcCounter++;  //  even though no one was bound, we have successfully traversed a link
				//  Since neither arg was 'pre-Bound' we'll emit a PC-String in same form as this
                if (predicate.name.equals("father") || predicate.name.equals("mother") || predicate.name.equals("parent"))
					addToPCString(pcStr, childIndiv, parentIndiv, true);
					else addToPCString(pcStr, parentIndiv, childIndiv, false);
				}  //  end of else-they-both-already-exist

            //  If we get this far, we have not (yet) failed (returned false).
            //  If we can successfully recurse on remaining literals, we succeed (return true).
            //  If not, then we must call this method again with badBindings & the updated flags
            Literal next = null;
            ArrayList<Object> remLitsCopy = new ArrayList<Object>(remLits), starStuffCopy = new ArrayList<Object>(starStuff);
            while ((next == null) && ((remLitsCopy.size() > 0) || (starStuffCopy.size() > 0)))
                    next = cb.pop(remLitsCopy, starStuffCopy, bindings, kinTerm);  //  pop returns the next processable literal
            if (next == null) { //  at end of clause body.  Check clause-level constraints.
                if (negatedConstraintsSatisfied(starStuff, bindings, badBindings, starBindings, constraints, kinTerm, cb))
                    return true;
                }  //  end of at-end-of-clauseBody
            else if (next.findOrCreate(remLitsCopy, starStuffCopy, bindings, badBindings, starBindings, constraints, kinTerm, cb, pcStr, dyad))
                return true;
            //  Recursive descent or negatedConstraints failed. LiteralAbstract1.failReason tells us if failure to
            //  find a conforming value for a UDP is the cause.  If not, then it's 'regular' causes.
            //  If the cause is a UDP, then try to pick a different UDP value & try again with current bindings.
            //  If not, then retract current binding & try again.

		//  if (Context.breakFlag) System.out.println("F/C_BirthLink FAILS on " + this);

		if ((LiteralAbstract1.failReason != null) && (bindingMade != null))  {
                Variable whoVar = child;        //  bindingMade has to be one of them
                if (parent.argName.equals(bindingMade)) whoVar = parent;
                TreeMap thisUDMap = (TreeMap)constraints.userDefined.get(whoVar);
                String failure = LiteralAbstract1.failReason;
                if ((thisUDMap != null) && (thisUDMap.get(failure) != null) &&
                    (! (thisUDMap.get(failure) instanceof Constant)))  {
                    //  it was a StarProp failure, and this arg has a constraint on that StarProp,
                    //  and the argument defining its constraint is not a Constant (ergo, it's a MathVar or a Variable for a person)
					if (thisUDMap.get(failure) instanceof MathVariable)  {
						MathVariable argForUDPVal = (MathVariable)thisUDMap.get(failure);
						//  If we can try again with a different value for UDP, do it.  If not, fall thru to failure.
						LiteralAbstract1.failReason = null;
						while (newUDPVal(failure, argForUDPVal, bindingMade, bindings, starBindings, constraints, cb))  {
							if (((next != null) &&
								next.findOrCreate(remLitsCopy, starStuff, bindings, badBindings, starBindings, constraints, kinTerm, cb, pcStr, dyad))
								||  ((next == null) &&
								negatedConstraintsSatisfied(starStuff, bindings, badBindings, starBindings, constraints, kinTerm, cb)))
							return true;
						}   //  end of while-loop.  In this loop, newUDPVal tries to find a new conforming value
							//  for this UDP.  If it succeeds, then it calls find/create (or negatedConstraints)
							//  in an attempt to complete the generation of this example.  If that succeeds,
							//  it returns true; if that fails, it picks another and tries again. If all possible UDP values
							//  are used up without success, the loop ends and we go on.
					}  // end of it-was-a-MathVariable
					else  {  //  it-must-be-a-Variabe-for-a-person
						Variable argForUDPVal = (Variable)thisUDMap.get(failure);
						//  If we can try again with a different value for UDP, do it.  If not, fall thru to failure.
						LiteralAbstract1.failReason = null;
						while (newUDPVal(failure, argForUDPVal, bindingMade, bindings, starBindings, constraints, cb))  {
							if (((next != null) &&
								next.findOrCreate(remLitsCopy, starStuff, bindings, badBindings, starBindings, constraints, kinTerm, cb, pcStr, dyad))
								||  ((next == null) &&
								negatedConstraintsSatisfied(starStuff, bindings, badBindings, starBindings, constraints, kinTerm, cb)))
							return true;
							}   //  end of while-loop.
						}  //  end of it-must-be-a-Variabe-for-a-person
					}  //  end of there is a UDP constraint for this bound-arg
				}  //  end of failed-due-to-a-UDP-value
            if (pcStr.size() >= 1) pcStr.remove(pcStr.size() -1); //  retract the PC-String addition
			if (dyad != null && dyad.path.size() > 0) dyad.path.remove(dyad.path.size() -1);
			if (bindingMade != null) cb.pcCounter--; //  if we incremented a counter, un-do that.
			 //  retract any binding made - put it on BadBindings list; retract property bindings made here.
			updateBindingsEtc(bindings, badBindings, bindingMade, argBound, starBindings, sbSize);
            if ((kidFlag < 6) && (parFlag < 2))  {
				if (findOrCreateBirthLink(parSex, kidSex, parArg, remLits, starStuff, bindings, badBindings,
                                    starBindings, constraints, kidFlag, parFlag, true, kinTerm, cb, pcStr, dyad))
                return true;
				//  if we get this far, all binding attempts have failed.  Pass failure up to next higher level.
				//  keepBB determines whether we retain our record of a badBinding at this level.
				//  If we're about to send a FAIL back to a higher-level literal in the chain, we want to
				//  erase them.  But if we're FAILing back to an earlier iteration at this level, keep them.
				//  In EITHER case, make sure any property bindings have been undone.
				updateBindingsEtc(bindings, badBindings, null, null, starBindings, sbSize);
				}
            if (! keepBB) {
                badBindingsRemove(bindingMade, argBound, badBindings);
                Context.current.resetTo(resetInd, resetFam);
                }  //  end of don't-keep-badBindings
            return false;
            //  end of recursive-descent-or-negatedConstraints-failed
            } //  end of method findOrCreateBirthLink


	ArrayList<Object> resolveOppo(TreeMap bindings, ConstraintObj constraints, Variable argVar) throws KSConstraintInconsistency  {
		//  If there are no gender constraints on the variable argVar, there's nothing to resolve.
		//  If the gender constraints contain either M or F, there's nothing to resolve.
		//  If they contain any "Opposite of" or "Same as" constraints, chase & resolve if possible
		ArrayList<Object> answer = (ArrayList<Object>)constraints.gender.get(argVar.argName), otherConstrLst;
		if (answer == null) return answer;
		boolean male = false, female = false;
		ArrayList<Object> oppo = new ArrayList<Object>(), same = new ArrayList<Object>();
		String constraint, sameSexVarName, oppoSexVarName;
		Individual sameSexInd, oppoSexInd;
		for (int i=0; i < answer.size(); i++)  {
			constraint = (String)answer.get(i);
			if (constraint.equals("F")) female = true;
			else if (constraint.equals("M")) male = true;
			else if (constraint.indexOf("Opposite") > -1) oppo.add(constraint.substring(12));
			else if (constraint.indexOf("Same") > -1) same.add(constraint.substring(8));
			}  //  end of for-i=each-constraint
		if (male && female) throw new KSConstraintInconsistency("for " + argVar);
		if (male || female) return answer;
		if (! same.isEmpty()) {
			for (int j=0; j < same.size(); j++)  {
				sameSexVarName = (String)same.get(j);
				sameSexInd = (Individual)bindings.get(sameSexVarName);
				if (sameSexInd != null) {
					if (sameSexInd.gender.equals("F")) female = true;
					else if (sameSexInd.gender.equals("M")) male = true;  }
				else {
					otherConstrLst = (ArrayList<Object>)constraints.gender.get(sameSexVarName);
					if (otherConstrLst.contains("F")) female = true;
					else if (otherConstrLst.contains("M")) male = true;
					}  //  end of else-sameSexVarName-not-bound-yet
				}  //  end of for-j=each-same-sex-variable-name
			}  //  end of same-is-not-empty
		if (! oppo.isEmpty()) {
			for (int j=0; j < oppo.size(); j++)  {
				oppoSexVarName = (String)oppo.get(j);
				oppoSexInd = (Individual)bindings.get(oppoSexVarName);
				if (oppoSexInd != null) {
					if (oppoSexInd.gender.equals("F")) male = true;
					else if (oppoSexInd.gender.equals("M")) female = true;  }
				else {
					otherConstrLst = (ArrayList<Object>)constraints.gender.get(oppoSexVarName);
					if (otherConstrLst.contains("M")) female = true;
					else if (otherConstrLst.contains("F")) male = true;
					}  //  end of else-oppoSexVarName-not-bound-yet
				}  //  end of for-j=each-oppo-sex-variable-name
			}  //  end of oppo-is-not-empty
		if (male && female) throw new KSConstraintInconsistency("Both M & F required for " + argVar);
		if (male) {
			answer = new ArrayList<Object>();
			answer.add("M");
			}  //  end of if-male
		if (female) {
			answer = new ArrayList<Object>();
			answer.add("F");
			}  //  end of if-female
		return answer;
		}  //  end of method resolveOppo


    public boolean newUDPVal(String failedProp, Variable theVar, String bindingMade, TreeMap bindings,
                            ArrayList<Object> starBindings, ConstraintObj constraints, ClauseBody cb)
                throws KSInternalErrorException, KSBadHornClauseException, ClassNotFoundException, KSConstraintInconsistency  {
        //  Existing value for person's StarProp did not work out.  Return true if a different conforming
        //  value can be assigned.
        Individual ind = (Individual)bindings.get(bindingMade);
        UserDefinedProperty udp = (UserDefinedProperty)ind.userDefinedProperties.get(failedProp);
        if (udp == null) throw new KSInternalErrorException("Null UDP in Literal.newUDPVal for " + bindingMade);
		theVar.updatePriorVals(theVar.getVal());
        //  Remove the old values, but retain the record of this value as a priorValue
        theVar.clearVal();
        Iterator iter = starBindings.iterator();
        while (iter.hasNext())  {
            StarPropertyBinding spb = (StarPropertyBinding)iter.next();
            if ((spb.personBound == ind) && (spb.starPropName.equals(failedProp)))
                iter.remove();
			}  //  end of loop thru starBindings
        return ind.findConformingValue(failedProp, (Argument)theVar, starBindings, bindings, constraints, "commit", cb);
    }  //  end of method newUDPVal


    void badBindingsRemove(String bindingMade, Argument argBound, TreeMap badBindings)  {
            if (bindingMade == null) return;
            badBindings.remove(bindingMade);
			if (argBound instanceof Variable) ((Variable)argBound).priorValues = null;
            }  //  end of method badBindingsRemove()


    boolean negatedConstraintsSatisfied(ArrayList<Object> starStuff, TreeMap bindings, TreeMap badBindings, ArrayList<Object> starBindings,
                                        ConstraintObj constraints, String kinTerm, ClauseBody cb)
        throws KSInternalErrorException, KSBadHornClauseException, ClassNotFoundException  {
        //  Check to see if any of the ClauseBodies in the Negated Constraint are true.  If any one
        //  of them is true, the test is failed and we return false.
  //  if (Context.breakFlag) Context.breakpoint();
        if ((constraints.negated == null) || (constraints.negated.isEmpty())) return true;
        Individual ego = (Individual)bindings.get("Ego");
        ClauseBody cbNeg;
        ArrayList<Object> bodyCopy;
        TreeMap bindingsCopy = new TreeMap(bindings);
        ConstraintObj constraintsCopy;
        for (int i=0; i < constraints.negated.size(); i++) {
            cbNeg = (ClauseBody)constraints.negated.get(i);
            constraintsCopy = new ConstraintObj(constraints);
            constraintsCopy.negated = new ArrayList<Object>();  //  to prevent infinite recursion
            //  Any restrictions on variables induced by a negated clause should apply only to a
            //  "deep copy" of the args found in the main clausebody, not the main args themselves.
            bodyCopy = new ArrayList<Object>();
            for (int k=0; k < cbNeg.body.size(); k++)
                bodyCopy.add(((Literal)cbNeg.body.get(k)).copy());
            //  Keep all current constraints except the negated ones, and add any new constraints
            //  (including negated ones) appearing in cbNeg.
            try {
                for (int j=0; j < bodyCopy.size(); j++)
                    if (! (((Literal)bodyCopy.get(j)).constraintCheck(ego.gender, constraintsCopy, new ArrayList<Object>(), starStuff)))
                            throw new KSConstraintInconsistency(" ");
                LiteralAbstract1.negativeConstraintPhase = true;
				if (! LiteralAbstract1.finalConstraintCheck(ego.gender, bindingsCopy, constraintsCopy, bodyCopy, new ArrayList<Object>(), starStuff))
                        throw new KSConstraintInconsistency(" ");
                LiteralAbstract1.negativeConstraintPhase = false;
				// finalConstraintCheck does post-processing & a final conflict-check; the negConstraints flag influences its logic
                Literal next = null;
                while (((bodyCopy.size() > 0) || (starStuff.size() > 0)) && (next == null))
                        next = cb.pop(bodyCopy, starStuff, bindingsCopy, kinTerm);  //  next = first non-constraint literal in body
                if (next == null)
                    throw new KSBadHornClauseException("No processable literals in negated clause:/n not(" + cbNeg.body + ")");
                else if (constraintsCopy.allowCreation) {
                    LiteralAbstract1.negativeConstraintPhase = true;
					if (next.findOrCreate(bodyCopy, starStuff, bindingsCopy, badBindings, starBindings, constraintsCopy, kinTerm, cb, new ArrayList<Object>(), null))  {
						//	We don't keep the PC-String from a negated Constraint, so we pass a throw-away empty list
                        LiteralAbstract1.negativeConstraintPhase = false;
						return false;
					}else LiteralAbstract1.negativeConstraintPhase = false;
                }  //  end of if-creation-is-allowed
                else if (next.fillInNames_bool(kinTerm, bodyCopy, starStuff, cbNeg, bindingsCopy, constraintsCopy, null, new ArrayList<Object>()))
                    return false;
            } catch (KSConstraintInconsistency e) { }
            //  If a ConstraintInconsistency occurs here, it means the constraints alone are enough to
            //  make this ClauseBody impossible.  So treat this the same as a failure by findOrCreate;
            //  go on to the next clauseBody (if any).
        }  //  end of for-i=each-negated-constraint
        return true;
    }  //  end of method negatedConstraintsSatisfied


    void updateBindingsEtc(TreeMap bindings, TreeMap badBindings, String bindingMade, Argument argBound,
							ArrayList<Object> starBindings, int sbSize) {
            //  This method is invoked when backtracking is about to occur.  We must retract the current bindingMade,
            //  & add it to badBindings.  Any property bindings made in this round are un-done.
            StarPropertyBinding spb;
            UserDefinedProperty udp;
            //  First Process StarBindings.  'Normal' SPBs reflect a linking and binding event.
			//  But SPBs w/ PersonBound == null reflect addition of a value via assureContainedBy
			for (int i = starBindings.size() - 1; i >= sbSize; i--)  {
                spb = (StarPropertyBinding)starBindings.get(i);
                if (spb.mathVarBound != null) {
                    for (int j=0; j < spb.valsAssigned.size(); j++)
						spb.mathVarBound.removeVal(spb.valsAssigned.get(j));
					if (spb.personBound != null)  //  Person's UDP & MathVar were linked
						spb.mathVarBound.unLink();
				}else if (spb.variableBound != null) {
					for (int j=0; j < spb.valsAssigned.size(); j++)
						spb.variableBound.removeVal(spb.valsAssigned.get(j));
					if (spb.personBound != null) {
						udp = (UserDefinedProperty)spb.personBound.userDefinedProperties.get(spb.starPropName);
						udp.value = setDifference(udp.value, spb.valsAssigned);
						}  //  end of an-Individual's-property-was-bound
					}  //  end of it's-a-Variable
				starBindings.remove(i);
			}  //  end of loop thru starBindings
			//  Next Process BadBindings.
            if (bindingMade != null)  {
                ArrayList<Object> badList = (ArrayList<Object>)badBindings.get(bindingMade);
                if (badList == null) badList = new ArrayList<Object>();
				Object bMade = bindings.get(bindingMade);  //  a MathVar is bound to its values list
				if (bMade instanceof ArrayList) badList.addAll((ArrayList<Object>)bMade);
                else badList.add(bMade);
				if (bMade instanceof Individual) {
					if (((Individual)bMade).node.appearances > 1) ((Individual)bMade).node.appearances--;
					else ((Individual)bMade).node = null;
					}
                badBindings.put(bindingMade, badList);
                bindings.remove(bindingMade);
				//  We unLink a MathVar if it is removed from Bindings
				//  if (argBound instanceof MathVariable) ((MathVariable)argBound).unLink();
				//  REMOVED ON THEORY THAT SPBs WILL MANAGE UN-LINKING
				}

			}  //  end of method updateBindingsEtc



    public void addToPCString(ArrayList<Object> pcStr, Individual preBound, Individual newBound, boolean preIsKid) {
        //	Create a standardized literal expressing the BirthLink relationship of newBound to preBound.
        //	NewBound should be arg0 of that literal, and preBound should be arg1.
        String preBoundTag = "#" + preBound.serialNmbr, newBoundTag = "#" + newBound.serialNmbr,
                pc, newBoundSex = newBound.gender;
        if (preIsKid) {  //  must create a parental pc
            if (newBoundSex.equals("M")) {
                pc = "Fa";
            } else if (newBoundSex.equals("F")) {
                pc = "Mo";
            } else {
                pc = "P";
            }
        } else {  //  Must create a child pc
            if (newBoundSex.equals("M")) {
                pc = "So";
            } else if (newBoundSex.equals("F")) {
                pc = "Da";
            } else {
                pc = "C";
            }
        }
        pcStr.add(pc + "(" + newBoundTag + "," + preBoundTag + ")");
    }  //  end of method addToPCString for BirthLinks

    public void addToPCString(ArrayList<Object> pcStr, boolean divReq, Individual preBound, Individual newBound) {
        //	Create a standardized literal expressing the SpouseLink relationship of newBound to preBound.
        //	NewBound should be arg0 of that literal, and preBound should be arg1.
        String preBoundTag = "#" + preBound.serialNmbr, newBoundTag = "#" + newBound.serialNmbr,
                pc, newBoundSex = newBound.gender;
        if (newBoundSex.equals("M")) {
            pc = "Hu";
        } else if (newBoundSex.equals("F")) {
            pc = "Wi";
        } else {
            pc = "Sp";
        }
        pcStr.add(pc + "(" + newBoundTag + "," + preBoundTag + ")");
    }  //  end of method addToPCString for SpouseLink

    boolean findOrCreateStarLink(ArrayList<Object> remLits, ArrayList<Object> starStuff, TreeMap bindings, TreeMap badBindings, ArrayList<Object> starBindings,
                        ConstraintObj constraints, int tryFlag, boolean keepBB, String kinTerm, ClauseBody cb, ArrayList<Object> pcStr, Dyad dyad)
        throws KSBadHornClauseException, KSInternalErrorException, KSConstraintInconsistency, ClassNotFoundException   {
        //  The current literal is a *-predicate declaring a value (via a constant or variable) for a person's UDP.
        //  Arg0 is the value (a Variable/MathVariable/Constant); Arg1 is the Variable for the person whose UDP's value must equal arg0.
        //  *-predicates can serve as constraints, or can define a trait that "links" 2 individuals in the chain from Ego to Alter.
        //  Only the latter case is handled here; constraints were handled earlier in cb.constraintCheck.

        //  NOTE:  The semantics of a *-predicate are simplistic.  The literal "*friends(X, Gary)"  means that the MathVariable X has a
        //	   value exactly equal to the value of Gary's UserDefinedProperty *friends.  Sub-sets and super-sets are not considered equal.
        //	   The math operator "contains" expresses sub-set relationships, if desired.

        int resetInd = Context.current.indSerNumGen,  resetFam = Context.current.famSerNumGen, sbSize = starBindings.size();
        String bindingMade = null;
        MathVariable mathVar = null;
        Constant konstant = null;
        Variable personVar = (Variable)args.get(1), valPerVar = null;
        Individual person = (Individual)bindings.get(personVar.argName), valPer = null;  //  null = that variable not yet bound
//  if (Context.breakFlag) Context.breakpoint();

			 //  arg0 is either a MathVariable, a Variable, or a Constant.
		UserDefinedProperty udp;
		Argument arg0 = (Argument)args.get(0), argBound = null;
		if (arg0 instanceof MathVariable) mathVar = (MathVariable)arg0;
		else if (arg0 instanceof Constant) konstant = (Constant)arg0;
		else {  //  must be a Variable
			valPerVar = (Variable)arg0;
			valPer = (Individual)bindings.get(valPerVar.argName);  //  may be null if this Variable not yet bound
			}
		if (LiteralAbstract1.negativeConstraintPhase)  {
			//  Person and valPer may have been bound earlier in a 'positive' phase, and carried (via bindings
			//  list) into a 'negatedConstraintsSatisfied' phase.  So double check constraints.  Use the _Strictly_
			//  versions,'cuz we don't want to change anything on a bound arg/object pair.
			if ((person != null)  && (! person.meetsConstraintsStrictly(personVar, constraints, bindings, starBindings)))
				return false;
			if ((valPer != null)  && (! valPer.meetsConstraintsStrictly(valPerVar, constraints, bindings, starBindings)))
				return false;
			}  //  end of if-negativeConstraintPhase
		if ((person != null) && ((mathVar != null) || (konstant != null)))  {
		//  person-is-bound-and-arg0-is-a-mathVar-or-constant
			udp = (UserDefinedProperty)person.userDefinedProperties.get(predicate.name);
			if ((udp.value.size() > 1) && (udp.singleValue))  //  invalid condition: Panic!
				throw new KSInternalErrorException("In findOrCreateStarLink: encountered single-valued UDP with multiple values");

			//  findConformingValue will transfer person's value(s) to the mathVar's value(s) if person has any and they
			//  are valid values for the mathVar.  Or it will copy the constant's (or the mathVar's) values to the udp.  If neither mathVar nor person has a value,
			//  then it will invent a conforming value.  If no conforming value is possible, it returns 'false', otherwise 'true.'
			if (! person.findConformingValue(predicate.name, arg0, starBindings, bindings, constraints, "commit", cb))  {
				LiteralAbstract1.failReason = predicate.name;
				return false;
				}  //  end of failed to find a conforming value.
			//  Found a conforming value.  Done.
			bindingMade = arg0.argName;
			if (dyad != null) dyad.path.add(person);
			if (person.node == null) person.node = new Node();
			else person.node.appearances++;
			argBound = arg0;
			person.yoke(mathVar, null, konstant, null, udp, bindingMade, bindings, starBindings);
			}  //  end of person-is-bound-and-arg0-is-a-mathVar-or-constant

		else if ((person != null) && (valPerVar != null))  {
			//  person-is-bound-and-value-is-also-a-person
			udp = (UserDefinedProperty)person.userDefinedProperties.get(predicate.name);
			if (valPer != null) {  }  //  Do nothing.  We validity-checked both of them above & all is OK.
			else if (! udp.typ.equals("individual"))
				throw new KSInternalErrorException("In findOrCreateStarLink: Personal variable '" + valPerVar + "' used for UDP of type " + udp.typ);
			else if (! person.findConformingValue(predicate.name, arg0, starBindings, bindings, constraints, "commit", cb))  {
				LiteralAbstract1.failReason = predicate.name;
				return false;
				}  //  end of failed to find a conforming value.
			//  Found a conforming value.  Done.
			bindingMade = valPerVar.argName;			//  We bind valPerVar to the person who conforms.
			if (dyad != null) dyad.path.add(valPer);
			argBound = valPerVar;
			if (valPer.node == null) valPer.node = new Node();
			else valPer.node.appearances++;
			bindings.put(valPerVar.argName, valPer);	//  Binding it extends the chain of relations
			}  //  end of person-is-bound-and-value-is-also-a-person

		else if ((person == null) && ((mathVar != null) || (konstant != null)))  {
			//  Person-is-unbound-and-mathVar-or-constant-is-bound.  Call a Context instance method to find a person who has a value equal to
			//	the mathVar/Constant's value, if any.  If none is found, create one and give him this (or a conforming) value.
			person = Context.current.findConformingPerson(arg0, predicate.name, personVar, constraints, badBindings,
															starBindings, bindings);  //  null -> found none
			if (person != null) createPersonalStarLink(person, predicate.name, starBindings);
			else {
				String indNam = "Hypothetical Person", gender = "?", birthdate = "Jan 1, 1970";  //  neuter gender forces constructor to search constraints
				BoolFlag failFlag = new BoolFlag(false);
				person = new Individual(indNam, gender, null, birthdate, ((Argument)args.get(1)).argName, null, bindings,
											starBindings, constraints, personVar, failFlag, cb);
				if (failFlag.value) {
                    LiteralAbstract1.failReason = failFlag.reason;
                    return false;
				}else createPersonalStarLink(person, predicate.name, starBindings);
				}
			//  If we're here, an appropriate person was found
			bindingMade = personVar.argName;			//  We bind personVar to the conforming person who can take on this UDP value.
			if (dyad != null) dyad.path.add(person);
			argBound = personVar;
			udp = (UserDefinedProperty)person.userDefinedProperties.get(predicate.name);
			if (person.node == null) person.node = new Node();
			else person.node.appearances++;
			person.yoke(mathVar, null, konstant, personVar, udp, bindingMade, bindings, starBindings);
			}  //  end of Person-is-unbound-and-mathVar-or-constant-is-bound

		else if ((person == null) && (valPer != null))  {
			//  person-is-unbound-and-valPerVar-is-bound.  Call a Context instance method to find a person who has this value.
			//	If none is found, create one and give him this value.
			person = Context.current.findConformingPerson(valPer, predicate.name, personVar, constraints, badBindings,
															starBindings, bindings);  //  null -> found none
			if (person == null) {
				String indNam = "Hypothetical Person", gender = "?", birthdate = "Jan 1, 1970";
				BoolFlag failFlag = new BoolFlag(false);
				person = new Individual(indNam, gender, null, birthdate, personVar.argName, null, bindings,
										starBindings, constraints, personVar, failFlag, cb);
				if (failFlag.value) {
                    LiteralAbstract1.failReason = failFlag.reason;
                    return false;
                }
			}
			//  If we're here, an appropriate person was found
			bindingMade = personVar.argName;			//  We bind personVar to the conforming person who can take on this UDP value.
			if (dyad != null) dyad.path.add(person);
			bindings.put(personVar.argName, person);	//  Binding it extends the chain of relations
			if (person.node == null) person.node = new Node();
			else person.node.appearances++;
			argBound = personVar;
		}  //  end of person-is-unbound-and-valPerVar-is-bound
		else throw new KSInternalErrorException("findOrCreateStarLink found no value to assign.");  // should never get here

		//  OK.  We've traversed a starLink successfully.  Return or recurse.
		cb.starCounter++;
		//  Now emit a PC-String like '*(<value>, <Person.serial#>)'
		String perSerial = "#" + person.serialNmbr, arg0Str;
		if (valPer != null) arg0Str = "#" + valPer.serialNmbr;  //  a Variable for a person is bound to the Individual
		else arg0Str = "value=" + ((ArrayList<Object>)bindings.get(arg0.argName)).get(0).toString();
		pcStr.add("*(" + arg0Str + "," + perSerial + ")");
		Literal next = null;
        ArrayList<Object> remLitsCopy = new ArrayList<Object>(remLits), starStuffCopy = new ArrayList<Object>(starStuff);
        while ((next == null) && ((remLitsCopy.size() > 0) || (starStuffCopy.size() > 0)))
                next = cb.pop(remLitsCopy, starStuffCopy, bindings, kinTerm);  //  pop returns the next processable literal
        if (next == null) { //  at end of clause body.  Check clause-level constraints.
            if (negatedConstraintsSatisfied(starStuff, bindings, badBindings, starBindings, constraints, kinTerm, cb))
                return true;
            }  //  end of at-end-of-clauseBody
        else if (next.findOrCreate(remLitsCopy, starStuffCopy, bindings, badBindings, starBindings, constraints, kinTerm, cb, pcStr, dyad))
            return true;

		//  Recursive descent or negatedConstraints failed. LiteralAbstract1.failReason tells us if failure to
        //  find a conforming value for a person's UDP is the cause.  If not, then it's 'regular' causes.
		//  The failure can only involve a person in this literal if we bound either personVar or valPerVar.
        //  If the cause is a UDP for one of those, then try to pick a different UDP value & try again with current bindings.
        //  If not, then retract current binding & try again.

		//  if (Context.breakFlag) System.out.println("F/C_StarLink FAILS on " + this);

		if ((LiteralAbstract1.failReason != null) && (bindingMade != null) &&
			(bindingMade.equals(personVar.argName) || ((valPerVar != null) && bindingMade.equals(valPerVar.argName))))  {
            String failure = LiteralAbstract1.failReason;
            Variable whoVar = personVar;        //  bindingMade has to be one of them
            if ((valPerVar != null) && bindingMade.equals(valPerVar.argName)) whoVar = valPerVar;
            TreeMap thisUDMap = (TreeMap)constraints.userDefined.get(whoVar);
            if ((thisUDMap != null) && (thisUDMap.get(failure) != null) &&
                (! (thisUDMap.get(failure) instanceof Constant)))  {
                //  it was a StarProp failure, and this arg has a constraint on that StarProp,
                //  and the argument defining its constraint is not a Constant (ergo, it's a MathVar or a Variable for a person)
                if (thisUDMap.get(failure) instanceof MathVariable)  {
					MathVariable argForUDPVal = (MathVariable)thisUDMap.get(failure);
					//  If we can try again with a different value for UDP, do it.  If not, fall thru to failure.
					LiteralAbstract1.failReason = null;
					while (newUDPVal(failure, argForUDPVal, bindingMade, bindings, starBindings, constraints, cb))  {
						if (((next != null) &&
							next.findOrCreate(remLitsCopy, starStuff, bindings, badBindings, starBindings, constraints, kinTerm, cb, pcStr, dyad))
							||  ((next == null) &&
							negatedConstraintsSatisfied(starStuff, bindings, badBindings, starBindings, constraints, kinTerm, cb)))
						return true;
					}   //  end of while-loop.  In this loop, newUDPVal tries to find a new conforming value
						//  for this UDP.  If it succeeds, then it calls find/create (or negatedConstraints)
						//  in an attempt to complete the generation of this example.  If that succeeds,
						//  it returns true; if that fails, it picks another and tries again. If all possible UDP values
						//  are used up without success, the loop ends and we go on.
				}  // end of it-was-a-MathVariable
				else  {  //  it-must-be-a-Variabe-for-a-person
					Variable argForUDPVal = (Variable)thisUDMap.get(failure);
					//  If we can try again with a different value for UDP, do it.  If not, fall thru to failure.
					LiteralAbstract1.failReason = null;
					while (newUDPVal(failure, argForUDPVal, bindingMade, bindings, starBindings, constraints, cb))  {
						if (((next != null) &&
							next.findOrCreate(remLitsCopy, starStuff, bindings, badBindings, starBindings, constraints, kinTerm, cb, pcStr, dyad))
							||  ((next == null) &&
							negatedConstraintsSatisfied(starStuff, bindings, badBindings, starBindings, constraints, kinTerm, cb)))
						return true;
					}   //  end of while-loop.
				}  //  end of it-was-a-Variabe-for-a-person
            }  //  end of there is a UDP constraint for this bound-arg
        }  //  end of failed-due-to-a-UDP-value

		//  retract any binding made - put it on BadBindings list.  retract property bindings, too
		updateBindingsEtc(bindings, badBindings, bindingMade, argBound, starBindings, sbSize);
        cb.starCounter--;  //  un-do the counter increment
		if (argBound == personVar) undoPersonalStarLink(person, predicate.name, bindings);
		if (pcStr.size() >= 1) pcStr.remove(pcStr.size() -1); //  retract the PC-String addition
		if (dyad != null && dyad.path.size() > 0) dyad.path.remove(dyad.path.size() -1);
		if (tryFlag++ < 2) {
			if (findOrCreateStarLink(remLits, starStuff, bindings, badBindings, starBindings, constraints,
							tryFlag, true, kinTerm, cb, pcStr, dyad))
			return true;
			//  if we get this far, all binding attempts have failed.  Pass failure up to next higher level.
			//  keepBB determines whether we retain our record of badBindings at this level.
			//  If we're about to send a FAIL back to a higher-level literal in the chain, we want to
			//  erase them.  But if we're FAILing back to an earlier iteration at this level, keep them.
			//  In EITHER case, make sure any property bindings have been undone.
			updateBindingsEtc(bindings, badBindings, null, null, starBindings, sbSize);
			}
        if (! keepBB) {
            badBindingsRemove(bindingMade, argBound, badBindings);
            Context.current.resetTo(resetInd, resetFam);
        }  //  end of don't-keep-badBindings
        return false;
        //  end of recursive-descent-or-negatedConstraints-failed
    }  //  end of method findOrCreateStarLink


	public void createPersonalStarLink(Individual person2, String predName, ArrayList<Object> starBindings)
			throws KSInternalErrorException  {
		//  Find the person, via starBindings, who has the link to person2
		for (int i = starBindings.size() -1; i >= 0; i--)  {
			StarPropertyBinding spb = (StarPropertyBinding)starBindings.get(i);
			if (spb.starPropName.equals(predName) && spb.personBound != null && spb.personBound != person2) {
				Individual person1 = spb.personBound;
				if (person1.starLinks == null) person1.starLinks = new ArrayList<Object>();
				if (! person1.starLinks.contains(person2)) person1.starLinks.add(person2);
                                if (person2.starLinks == null) person2.starLinks = new ArrayList<Object>();
				if (! person2.starLinks.contains(person1)) person2.starLinks.add(person1);
				return;
				}  //  end of found-a-match
			}  //  end of backwards loop thru SPBs
		Context.breakpoint();
		throw new KSInternalErrorException("Lit2.createPersonalStarLink failed to find origin of " + predName
											+ "_link to " + person2);
		}  //  end of method createPersonalStarLink


    public void undoPersonalStarLink(Individual linkee, String predName, TreeMap bindings)
            throws KSInternalErrorException {
        //  search bindings for a person who has a starLink of type predName to linkee
        Iterator boundIter = bindings.values().iterator();
        while (boundIter.hasNext()) {
            Object it = boundIter.next();
            if (it instanceof Individual) {
                Individual ind = (Individual) it;
                if (ind.starLinks != null && ind.starLinks.contains(linkee)) {
                    ind.starLinks.remove(linkee);
                    if (ind.starLinks.isEmpty()) {
                        ind.starLinks = null;
                    }
                    if (linkee.starLinks != null && linkee.starLinks.contains(ind)) {
                        linkee.starLinks.remove(ind);
                        if (linkee.starLinks.isEmpty()) {
                            linkee.starLinks = null;
                        }
                    }
                    return;
                }  //  end of found the person linked to linkee
            }  //  end of found-a-person
        }  //  end of loop thru bindings
        throw new KSInternalErrorException("Lit2.undoPersonalStarLink failed to find " + predName
                + "_link to " + linkee);
    }  //  end of method undoPersonalStarLink


	boolean findOrCreateMathLink(ArrayList<Object> remLits, ArrayList<Object> starStuff, TreeMap bindings, TreeMap badBindings, ArrayList<Object> starBindings,
                        ConstraintObj constraints, boolean keepBB, String kinTerm, ClauseBody cb, ArrayList<Object> pcStr, Dyad dyad)
        throws KSBadHornClauseException, KSInternalErrorException, KSConstraintInconsistency, ClassNotFoundException   {
        //  This is a math predicate (e.g. lessThan(X,Y) ) or the primitive predicate 'not(equal(X,Y)).'  The literal 'operand(X,Y)' means
		//  that 'X operand Y' is true:  lessThan(X,Y) means X < Y.

		//  STRATEGY:  If both args are bound, we verify that the required relationship holds and go on.
		//  If only X is bound, then we want a 'good' value for Y, not just a legal value.  It must be true that the unbound Y
		//  is found in another literal that has not yet been processed, either in remLits or starStuff.  (If not, throw exception!)
		//  That literal will either be a star-predicate (making Y the value of someone's UDP of that name) or else a math predicate
		//  (imposing some other constraint on Y that is recorded in 'constraints.'). In either case we just bind Y to an empty list
		//   & recurse; the remaining literals should force a value on Y.  When the recursion returns to this level, we validate Y & go on.

		//  NOTE:  If X & Y are both null, we always consider that true.  If they are of mixed types (e.g. float and int) we throw an exception.

        int resetInd = Context.current.indSerNumGen,  resetFam = Context.current.famSerNumGen;
        int sbSize = starBindings.size();
        String bindingMade = null;
		Argument xVar, yVar, argBound = null;
		MathOperator mathOp = null;
//  if (Context.breakFlag) System.out.println("F/C_MathLink on " + this);
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

		//  xVar and yVar may have been bound earlier in a 'positive' phase, and carried (via bindings list)
        //  into a 'negatedConstraintsSatisfied' phase.  So double check.
		if ((LiteralAbstract1.negativeConstraintPhase) && (xValue != null) && (yValue != null)
			&& (! mathOp.compare(xVar.getVal(), yVar.getVal())))
			return false;
		if ((xValue != null) && (yValue == null))  {  //  X is already bound; bind Y
			bindingMade = yVar.argName;
			bindings.put(yVar.argName, yVar.bindingVal());
			argBound = yVar;
			}  //  end of X is bound
		else if ((xValue == null) && (yValue != null)) {  // Y is bound; bind X
			bindingMade = xVar.argName;
			bindings.put(xVar.argName, xVar.bindingVal());
			argBound = xVar;
			}  //  end of Y is bound

		//  OK.  Recurse then validate the result.
        boolean madeIt = false;
		Literal next = null;
        ArrayList<Object> remLitsCopy = new ArrayList<Object>(remLits), starStuffCopy = new ArrayList<Object>(starStuff);
        while ((next == null) && ((remLitsCopy.size() > 0) || (starStuffCopy.size() > 0)))
                next = cb.pop(remLitsCopy, starStuffCopy, bindings, kinTerm);  //  pop returns the next processable literal
        if (next == null) { //  at end of clause body.  Check clause-level constraints.
            if (negatedConstraintsSatisfied(starStuff, bindings, badBindings, starBindings, constraints, kinTerm, cb))
                madeIt = true;
            }  //  end of at-end-of-clauseBody
        else if (next.findOrCreate(remLitsCopy, starStuffCopy, bindings, badBindings, starBindings, constraints, kinTerm, cb, pcStr, dyad))
            madeIt = true;
		if (madeIt)  {
			xValue = lastChanceToValue(xVar, bindings, starBindings, constraints);
			yValue = lastChanceToValue(yVar, bindings, starBindings, constraints);
			if (yValue.isEmpty())
				throw new KSInternalErrorException("F/C_MathLink: recursion did not provide value for "
											+ yVar.argName + " in\n" + cb);
			if (xValue.isEmpty())
				throw new KSInternalErrorException("F/C_MathLink: recursion did not provide value for "
											+ xVar.argName + " in\n" + cb);
			if (mathOp.compare(xVar.getVal(), yVar.getVal())) return true;
			}  //  end of madeIt

		//  Recursive descent, VALUE VALIDATION, or negatedConstraints failed.   Pass failure up to next higher level.
        //  Erase any property bindings made here or during recursive call.
		updateBindingsEtc(bindings, badBindings, bindingMade, argBound, starBindings, sbSize);
		if (! keepBB) {
            badBindingsRemove(bindingMade, argBound, badBindings);
            Context.current.resetTo(resetInd, resetFam);
        }  //  end of don't-keep-badBindings
        return false;
        //  end of recursive-descent-or-negatedConstraints-failed
    }  //  end of method findOrCreateMathLink


	/**  Return a list with the arg's value -- bound or internal.  If neither exists, this is an under-constrained
	     variable.  Pick a value within its constraints.  If none possible, return empty list.
	*/
	public ArrayList<Object> lastChanceToValue(Argument arg, TreeMap bindings, ArrayList<Object> starBindings, ConstraintObj constraints)
			throws KSBadHornClauseException, ClassNotFoundException, KSConstraintInconsistency, KSInternalErrorException  {
		//  1st choice: Value it's bound to
		ArrayList<Object> argVal = (ArrayList<Object>)bindings.get(arg.argName), choices;
		if (argVal == null || argVal.isEmpty()) {
			//  2nd choice: Value of the arg itself (if any)
			argVal = arg.getVal();
			bindings.put(arg.argName, argVal);
			if (argVal == null || argVal.isEmpty()) {
				//	3rd choice:  generate a value based on arg's constraints.
				Individual ind = new Individual("Dummy Person", "M");
				Class reqClass = ind.getUDPClass(arg.valueType);
				choices = ind.generateCandidateValues(reqClass, arg, bindings, starBindings, constraints, null);
				if (choices.size() > 0)  {
					if (argVal == null) argVal = new ArrayList<Object>();
					argVal.add(choices.get(0));
					if (arg.getVal() == null || (! arg.getVal().contains(choices.get(0))))
						arg.addVal(choices.get(0));
					bindings.put(arg.argName, argVal);
					}
				}
			}
		return argVal;
		}  //  end of method lastChanceToValue


    boolean findOrCreateSpouse(ArrayList<Object> remLits, ArrayList<Object> starStuff, TreeMap bindings, TreeMap badBindings, ArrayList<Object> starBindings,
                        boolean divReq, ConstraintObj constraints, int mateFlag, boolean keepBB, String kinTerm, ClauseBody cb,
						ArrayList<Object> pcStr, Dyad dyad)
        throws KSBadHornClauseException, KSInternalErrorException, KSConstraintInconsistency, ClassNotFoundException   {
        //  Either spouse0 or spouse1 is already bound.  Find or create the other.

        //  DIVORCE NOTE:  divReq is a flag that indicates whether we are handling a marriage-predicate
        //  [e.g. spouse(X,Y)] when divReq == false, or the divorce predicate [divorced(X,Y)] when
        //  divReq == true.  These are antithetical:
        //      To say that X & Y are married is to say they are CURRENTLY married, hence not divorced.
        //      To say X & Y are divorced is to say that they are NO LONGER married.
        //  The .getDivorceDate() field on a Family record can be null (no information/don't care) or a blank string
        //  (definitely not divorced) or a non-blank string (definitely divorced).
        int resetInd = Context.current.indSerNumGen,  resetFam = Context.current.famSerNumGen;
        int sbSize = starBindings.size();
        Variable spouse0 = (Variable)args.get(0),  spouse1 = (Variable)args.get(1);
        Individual indiv0 = (Individual)bindings.get(spouse0.argName), preBoundIndiv;
        Individual indiv1 = (Individual)bindings.get(spouse1.argName);
        ArrayList<Object> badMates;
        Family fam = null;
        String bindingMade = null;
        Argument argBound = null;

		if (LiteralAbstract1.negativeConstraintPhase)  {
			//  One or both of these may have been bound earlier in a 'positive' phase, and carried (via bindings
			//  list) into a 'negatedConstraintsSatisfied' phase.  So double check constraints.  Use the _Strictly_
			//  versions,'cuz we don't want to change anything on a bound arg/object pair.
			if ((indiv0 != null) && (! indiv0.meetsConstraintsStrictly(spouse0, constraints, bindings, starBindings)))
				return false;
			if ((indiv1 != null) && (! indiv1.meetsConstraintsStrictly(spouse1, constraints, bindings, starBindings)))
				return false;
			}  //  end of if-negativeConstraintPhase
        // one or both of these args must be already bound
        if ((indiv1 != null) && (indiv0 == null)) { //  spouse1 only is bound
            if (indiv1.marriages.size() > 0) { // use existing spouse
                badMates = (ArrayList<Object>)badBindings.get(spouse0.argName);
                if (badMates == null) badMates = new ArrayList<Object>();
                indiv0 = findExistingMate(indiv1, bindings, badMates, starBindings, constraints, divReq, spouse0, cb);
                } //  end of indiv1-is-married
            if (indiv0 == null)  {  // no suitable existing spouse found: fresh marriage
                String deathReq = (String)constraints.death.get(spouse0.argName);
                boolean killer = false;
                if ((! singleNow(indiv1)) && (! Context.current.polygamyPermit) && (! divReq)) {
                    if ((deathReq != null) && (deathReq.equals("alive")))
                        return false;  // Polygamy/re-marriage not permitted & existing spouse not OK.
                                       // NOTE: We WILL allow creation of a (past) divorce for a currently-married
                                       // person when Polygamy is not allowed.  We will also allow creation
                                       // of a past marriage to a deceased spouse-- but not a current marriage.
                    else killer = true;  //  record our decision to create a dead former spouse
                }  // end of if-not-single-&-polygamy-prohibited-&-not-a-divorce
                BoolFlag failFlag = new BoolFlag(false);
                indiv0 = new Individual("*&^%$", "?", null, null, spouse0.argName, indiv1, bindings,
										starBindings, constraints, spouse0, failFlag, cb);
                if (failFlag.value) {
                    LiteralAbstract1.failReason = failFlag.reason;
                    return false;
                }  //  end of failFlag===true
                if (killer) assignDeathDate(indiv0, "dead");
                fam = new Family(indiv1, indiv0, spouse1.argName, spouse0.argName, divReq, constraints.divorce);
                mateFlag++;
            }  //  end of spouse1-not-yet-married-to-spouse0
            bindings.put(spouse0.argName, indiv0);
            bindingMade = spouse0.argName;
			if (dyad != null) dyad.path.add(indiv0);
			if (indiv0.node == null) indiv0.node = new Node();
			else indiv0.node.appearances++;
			argBound = spouse0;
			spouse0.treeLevel = spouse1.treeLevel;
            cb.sCounter++;
			addToPCString(pcStr, divReq, indiv1, indiv0);
            if (bindingMade.equals("Alter")) {
				cb.level = spouse1.treeLevel;
				if (dyad != null) dyad.alter = indiv0;
				}
        }  //  end of spouse1-only-is-bound
        else if ((indiv1 == null) && (indiv0 != null))  { //  spouse0 only is bound
            if (indiv0.marriages.size() > 0)  {  // use existing spouse if constraints allow
                badMates = (ArrayList<Object>)badBindings.get(spouse1.argName);
                if (badMates == null) badMates = new ArrayList<Object>();
                indiv1 = findExistingMate(indiv0, bindings, badMates, starBindings, constraints, divReq, spouse1, cb);
                }  //  end of indiv0-is-married
            if (indiv1 == null)  {  // no suitable existing spouse found: fresh marriage
                String deathReq = (String)constraints.death.get(spouse1.argName);
                boolean killer = false;
                if ((! (singleNow(indiv0))) && (! Context.current.polygamyPermit) && (! divReq)) {
                    if ((deathReq != null) && (deathReq.equals("alive")))
                        return false;  // Polygamy not permitted in this context.  See note above.
                    else killer = true;  //  record our decision to create a dead former spouse
                }  // end of if-not-single-&-polygamy-prohibited-&-not-a-divorce
                BoolFlag failFlag = new BoolFlag(false);
                indiv1 = new Individual("*&^%$", "?", null, null, spouse1.argName, indiv0, bindings,
                                        starBindings, constraints, spouse1, failFlag, cb);
                if (failFlag.value) {
                    LiteralAbstract1.failReason = failFlag.reason;
                    return false;
                }  //  end of failFlag===true
                if (killer) assignDeathDate(indiv1, "dead");
                fam = new Family(indiv1, indiv0, spouse1.argName, spouse0.argName, divReq, constraints.divorce);
                mateFlag++;
                }  //  end of spouse0-not-yet-married-to-spouse1
            bindings.put(spouse1.argName, indiv1);
            bindingMade = spouse1.argName;
			if (dyad != null) dyad.path.add(indiv1);
			if (indiv1.node == null) indiv1.node = new Node();
			else indiv1.node.appearances++;
			argBound = spouse1;
            cb.sCounter++;
			addToPCString(pcStr, divReq, indiv0, indiv1);
			spouse1.treeLevel = spouse0.treeLevel;
            if (bindingMade.equals("Alter"))  {
				cb.level = spouse0.treeLevel;
				if (dyad != null) dyad.alter = indiv1;
				}
        }  //  end of spouse0-only-is-bound
        else  {  // both must be bound already; perhaps as result of equality constraint above.
            mateFlag++;  // nothing is gained by going thru this twice, so increment the flag
            //  If this binding violates BadBindings, etc. it is due to equality constraint above; we must fail.
            if (bindingMade != null) {
                badMates = (ArrayList<Object>)badBindings.get(bindingMade);
                if (badMates == null) badMates = new ArrayList<Object>();
                Individual newBoundInd;
                Variable newBoundVar;
                if (bindingMade == spouse1.argName)   {
                    newBoundInd = indiv1;
                    newBoundVar = spouse1;
                }else {
                    newBoundInd = indiv0;
                    newBoundVar = spouse0;
                }
                String mateDeathSpec = (String)constraints.death.get(bindingMade);
                String mateDivSpec = (String)constraints.divorce.get(bindingMade);
                ArrayList<Object> mateAgeSpecList = (ArrayList<Object>)constraints.age.get(bindingMade);
                if ((badMates.contains(newBoundInd))
                    || (! (meetsAgeSpec(newBoundInd, mateAgeSpecList, bindings, "query")))
                    || (! (meetsDeathSpec(newBoundInd, mateDeathSpec, "query")))
                    || (! (meetsStarSpecs(newBoundInd, newBoundVar, constraints, starBindings, bindings, "query", cb)))
                    || (! (meetsDivSpec(newBoundInd, mateDivSpec, "query")))) {
                    bindings.remove(bindingMade);
					if (dyad != null && dyad.path.size() > 0) dyad.path.remove(dyad.path.size() -1);
					return false;
                    // We must fail; equality constraint conflicts with BadBindings.  Backtrack!
                 }  //  end of made-a-bad-binding
                 else  {  //  binding is OK
                    meetsDeathSpec(newBoundInd, mateDeathSpec, "commit");
                    meetsDivSpec(newBoundInd, mateDivSpec, "commit");
                    meetsStarSpecs(newBoundInd, newBoundVar, constraints, starBindings, bindings, "commit", cb);
                    meetsAgeSpec(newBoundInd, mateAgeSpecList, bindings, "commit");
                 }  //  end of binding-is-OK
            }  //  end of made-a-binding-earlier-so-check-it.
            if ((indiv0.marriages.isEmpty()) && (indiv1.marriages.isEmpty())) { // both single - marry 'em
                fam = new Family(indiv1, indiv0, spouse1.argName, spouse0.argName, divReq, constraints.divorce); }
            else if ((indiv0.marriages.isEmpty()) && (indiv1.marriages.size() > 0)) { // spouse1 married
                boolean found1 = swapWithPresumedMate(indiv1, indiv0, divReq);
                        // if true, we found an existing Presumed Spouse that spouse0 has replaced.
                boolean singleFlag = singleNow(indiv1);
                if ((!(found1)) &&
                    ((Context.current.polygamyPermit) || (singleFlag))) { // remarriage or polygamy's the solution
                    fam = new Family(indiv1, indiv0, spouse1.argName, spouse0.argName, divReq, constraints.divorce);
                    if (! (singleFlag)) fam.addNote("Polygamous marriage (of neuters) specified by domain theory.  ");
                }  //  end of polygamy/remarriage
                else return false;
            }  //  end of spouse1 married
            else if ((indiv0.marriages.size() > 0) && (indiv1.marriages.isEmpty())) { // spouse0 married
                boolean found1 = swapWithPresumedMate(indiv0, indiv1, divReq);
                    // if true, we found an existing Presumed Spouse that spouse1 has replaced.
                boolean singleFlag = singleNow(indiv0);
                if ((!(found1)) &&
                    ((Context.current.polygamyPermit) || (singleFlag))) { // remarriage or polygamy's the solution
                    fam = new Family(indiv1, indiv0, spouse1.argName, spouse0.argName, divReq, constraints.divorce);
                    if (! (singleFlag)) fam.addNote("Polygamous marriage (of neuters) specified by domain theory.  ");
                    }  //  end of polygamy/remarriage
                    else return false;
            }  //  end of spouse0 married
            else {  //  must be BOTH are married -- maybe married to each other (M2EO)!
            // if they're already M2EO, and conform to the divorce requirement, do nothing.
            // if they're already M2EO, but violate the divorce requirement, fail
            // if they are not M2EO, and are both single now (or polygamy allowed), marry 'em
                if (marriedToEachOther(indiv1, indiv0, divReq)) { }  // do nothing
                else if (marriedToEachOther(indiv1, indiv0, (! divReq))) return false;
                else if (! (marriedToEachOther(indiv1, indiv0, divReq)))  {
                    boolean singleFlag = ((singleNow(indiv1)) && (singleNow(indiv0)));
                    if ((Context.current.polygamyPermit) || (singleFlag)) {
                        fam = new Family(indiv1, indiv0, spouse1.argName, spouse0.argName, divReq, constraints.divorce);
                        if (! (singleFlag)) fam.addNote("Polygamous marriage (of neuters) specified by domain theory.  ");
                    }  //  end of polygamy/remarriage
                    else return false;
                }  //  end of married-but-not-to-each-other
            }  //  end of both-are-married
        cb.sCounter++;  // even tho we bound no one, we did traverse a spousal link
		addToPCString(pcStr, divReq, indiv1, indiv0);
        }  //  end of else-both-must-be-bound-already
        if ((indiv1.hasDoB()) && (indiv0.hasNoDoB()))
                indiv0.setDateOfBirth(indiv1.getDateOfBirth());
        else if ((indiv0.hasDoB()) && (indiv1.hasNoDoB()))
                indiv1.setDateOfBirth(indiv0.getDateOfBirth());
        if ((fam != null) && (fam.getMarriageDate().length() < 4)) fam.generateMarriageDate();
        //  If we get here, we've successfully bound both spice.  Now recurse or return.
        Literal next = null;
        ArrayList<Object> remLitsCopy = new ArrayList<Object>(remLits), starStuffCopy = new ArrayList<Object>(starStuff);
        while ((next == null) && ((remLitsCopy.size() > 0) || (starStuffCopy.size() > 0)))
                next = cb.pop(remLitsCopy, starStuffCopy, bindings, kinTerm);  //  pop returns the next processable literal
        if (next == null) { //  at end of clause body.  Check clause-level constraints.
            if (negatedConstraintsSatisfied(starStuff, bindings, badBindings, starBindings, constraints, kinTerm, cb))
                return true;
            }  //  end of at-end-of-clauseBody
        else if (next.findOrCreate(remLitsCopy, starStuffCopy, bindings, badBindings, starBindings, constraints, kinTerm, cb, pcStr, dyad))
            return true;
	//  Recursive descent or negatedConstraints failed. LiteralAbstract1.failReason tells us if failure to
        //  find a conforming value for a UDP is the cause.  If not, then it's 'regular' causes.
        //  If the cause is a UDP, then try to pick a different UDP value & try again with current bindings.
        //  If not, then retract current binding & try again.

		//  if (Context.breakFlag) System.out.println("F/C_Spouse FAILS on " + this);

		if ((LiteralAbstract1.failReason != null) && (bindingMade != null))  {
            String failure = LiteralAbstract1.failReason;
            Variable whoVar = spouse1;        //  bindingMade has to be one of them
            if (spouse0.argName.equals(bindingMade)) whoVar = spouse0;
            TreeMap thisUDMap = (TreeMap)constraints.userDefined.get(whoVar);
            if ((thisUDMap != null) && (thisUDMap.get(failure) != null) &&
                (! (thisUDMap.get(failure) instanceof Constant)))  {
                //  it was a StarProp failure, and this arg has a constraint on that StarProp,
                //  and the argument defining its constraint is not a Constant (ergo, it's a MathVar or a Variable for a person)
                if (thisUDMap.get(failure) instanceof MathVariable)  {
					MathVariable argForUDPVal = (MathVariable)thisUDMap.get(failure);
					//  If we can try again with a different value for UDP, do it.  If not, fall thru to failure.
					LiteralAbstract1.failReason = null;
					while (newUDPVal(failure, argForUDPVal, bindingMade, bindings, starBindings, constraints, cb))  {
						if (((next != null) &&
							next.findOrCreate(remLitsCopy, starStuffCopy, bindings, badBindings, starBindings, constraints, kinTerm, cb, pcStr, dyad))
							||  ((next == null) &&
							negatedConstraintsSatisfied(starStuff, bindings, badBindings, starBindings, constraints, kinTerm, cb)))
						return true;
					}   //  end of while-loop.  In this loop, newUDPVal tries to find a new conforming value
						//  for this UDP.  If it succeeds, then it calls find/create (or negatedConstraints)
						//  in an attempt to complete the generation of this example.  If that succeeds,
						//  it returns true; if that fails, it picks another and tries again. If all possible UDP values
						//  are used up without success, the loop ends and we go on.
				}  // end of it-was-a-MathVariable
				else  {  //  it-must-be-a-Variabe-for-a-person
					Variable argForUDPVal = (Variable)thisUDMap.get(failure);
					//  If we can try again with a different value for UDP, do it.  If not, fall thru to failure.
					LiteralAbstract1.failReason = null;
					while (newUDPVal(failure, argForUDPVal, bindingMade, bindings, starBindings, constraints, cb))  {
						if (((next != null) &&
							next.findOrCreate(remLitsCopy, starStuff, bindings, badBindings, starBindings, constraints, kinTerm, cb, pcStr, dyad))
							||  ((next == null) &&
							negatedConstraintsSatisfied(starStuff, bindings, badBindings, starBindings, constraints, kinTerm, cb)))
						return true;
						}   //  end of while-loop.
					}  //  end of it-must-be-a-Variabe-for-a-person
			    }  //  end of there is a UDP constraint for this bound-arg
        	}  //  end of failed-due-to-a-UDP-value
		//  retract any binding made - put it on BadBindings list.  retract property bindings, too
		updateBindingsEtc(bindings, badBindings, bindingMade, argBound, starBindings, sbSize);
        cb.sCounter--;  //  un-do the counter increment
		if (pcStr.size() >= 1) pcStr.remove(pcStr.size() -1); //  retract the PC-String addition
        if (dyad != null && dyad.path.size() > 0) dyad.path.remove(dyad.path.size() -1);
		//  mateFlag = 0 means have not exhausted existing mates (perhaps multiple ones)
        //  mateFlag = 1 means we created a new mate this time thru - didn't work - nothing else to try
        if (mateFlag == 0) {
            if (findOrCreateSpouse(remLits, starStuff, bindings, badBindings, starBindings, divReq, constraints, mateFlag, true, kinTerm, cb, pcStr, dyad))
				return true;
			//  Erase any property bindings made during recursive call.
			updateBindingsEtc(bindings, badBindings, null, null, starBindings, sbSize);
			}
		//  if we get this far, all binding attempts have failed.  Pass failure up to next higher level.
		if (! keepBB) {
            badBindingsRemove(bindingMade, argBound, badBindings);
            Context.current.resetTo(resetInd, resetFam);
			}  //  end of don't-keep-badBindings
        return false;
        //  end of recursive-descent-or-negatedConstraints-failed
    }  //  end of method findOrCreateSpouse


    boolean genderConflict(String argName, TreeMap bindings, ConstraintObj constraints, String gender)  {
        //  The argument argName has just been bound = gender.  Ck for conflicts on constraints
        boolean conflict = false;
        String otherArg, otherGender;
        ArrayList<Object> unEqList = (ArrayList<Object>)constraints.unEqual.get(argName);
        if ((! conflict) && (unEqList != null))
            for (int i=0; i < unEqList.size(); i++)  {
                otherArg = (String)unEqList.get(i);
                otherGender = (String)bindings.get(otherArg);
                if ((otherGender != null) && (otherGender.equals(gender))) conflict = true;
            }  //  end of for-each-other-arg-in-eqList
        return conflict;
    }  //  end of method genderConflict


    Individual findExistingMate(Individual sps1, TreeMap bindings, ArrayList<Object> badMates, ArrayList<Object> starBindings,
                                ConstraintObj constraints, boolean divReq, Variable sps2ArgVar, ClauseBody cb)
        throws KSInternalErrorException, KSConstraintInconsistency, KSBadHornClauseException, ClassNotFoundException {
        //  If possible, find an existing mate of sps1 s.t. sps2 is not on badMates and meets the other specs.
        ListIterator iter = sps1.marriages.listIterator();
        Family fam;
        Individual potential;
        String sps2nam = sps2ArgVar.argName;
        ArrayList<Object> unEqList = makeUnEqList(sps2nam, constraints, bindings);
        ArrayList<Object> mateAgeSpecList = (ArrayList<Object>)constraints.age.get(sps2nam);
        if (badMates == null) badMates = new ArrayList<Object>();
        String deathSpec = (String)constraints.death.get(sps2nam);
        String divSpec = (String)constraints.divorce.get(sps2nam);
        while (iter.hasNext())  {
            fam = (Family)iter.next();  // sps1 is either husband or wife in this fam
            if (sps1 == fam.husband) potential = fam.wife;
            else if (sps1 == fam.wife) potential = fam.husband;
            else {      potential = fam.husband;  //  to keep compiler happy
                throw new KSInternalErrorException("literal.findExistingMate has " + sps1 + " not H or W in " + fam);
            }  // end of sps1 isn't in his own marriage
            if (   (! (unEqList.contains(potential)))
                && (! (badMates.contains(potential)))
                && (meetsAgeSpec(potential, mateAgeSpecList, bindings, "query"))
                && (meetsDeathSpec(potential, deathSpec, "query"))
                && (meetsDivSpec(potential, divSpec, "query"))
                && (meetsStarSpecs(potential, sps2ArgVar, constraints, starBindings, bindings, "query", cb))
                && (meetsGenderSpec(potential, bindings, constraints, sps2ArgVar, "commit"))
                && (meetsDivReq(fam, divReq, "commit"))
                && (meetsDeathSpec(potential, deathSpec, "commit"))
                && (meetsStarSpecs(potential, sps2ArgVar, constraints, starBindings, bindings, "commit", cb))
                && (meetsAgeSpec(potential,  mateAgeSpecList, bindings, "commit"))
                && (meetsDivSpec(potential, divSpec, "commit"))  )
                return potential;
        }  //  end of for-each-marriage
        return null;  //  if we get here, no potential mate qualifies
    }  // end of method findExistingMate


    boolean singleNow(Individual bach) {
        //  Check to see if all bach's marriages are terminated -- i.e. he's eligible.
        Iterator famIter = bach.marriages.iterator();
        Family fam;
        Individual mate;
        while (famIter.hasNext()) {
            fam = (Family) famIter.next();
            if (bach == fam.husband) {
                mate = fam.wife;
            } else {
                mate = fam.husband;
            }
            if (fam.hasNoDivorceDate() && mate.hasNoDoD()) {
                return false;
            }
        }  //  end of for-each-family
        return true;  //  couldn't find any current marriages
    }  //  end of method singleNow

    boolean swapWithPresumedMate(Individual sps1, Individual sps2, boolean divReq)	{
            //  Find an existing Presumed Spouse of sps1 that sps2 can replace
            //  The family must meet the requirements of divReq
            Iterator iter = sps1.marriages.iterator();
            Family fam;
            Individual swapee;
            while (iter.hasNext())  {
                fam = (Family)iter.next();
                if (sps1.gender.equals("M")) swapee = fam.wife;
                else swapee = fam.husband;
                if ((meetsDivReq(fam, divReq, "query"))
                    && (swapee.node.kinTermsAddr.isEmpty()) && (swapee.node.extKinTermsAddr.isEmpty())
                    && (swapee.node.kinTermsRef.isEmpty()) && (swapee.node.extKinTermsRef.isEmpty())) {
                            // a Presumed Spouse in a conforming family
                    swapee.marriages.clear();
                    fam.wife = sps2;
                    sps2.addMarriage(fam);
                    meetsDivReq(fam, divReq, "commit");
                    return true;
                }  //  end of found-presumed-spouse
            }  //  end of for-each-marriage
            return false;
        }  //  end of method swapWithPresumedMate


	boolean marriedToEachOther(Individual indiv1, Individual indiv2, boolean divReq)  {
		// return true if these guys are married to each other & meet divReq.  Simple.
		Individual wifIndiv, husIndiv;
		if (indiv1.gender.equals("M")) {
			husIndiv = indiv1;
			wifIndiv = indiv2;
			}  //  end of indiv1 is male
		else {
			husIndiv = indiv2;
			wifIndiv = indiv1;
			}  //  end of indiv1 is female
		Iterator wifWeds = wifIndiv.marriages.iterator();
		Family fam;
		while (wifWeds.hasNext())  {
			fam = (Family)wifWeds.next();
			if ((fam.husband == husIndiv)  && (meetsDivReq(fam, divReq, "query")))  {
				meetsDivReq(fam, divReq, "commit");
				return true;
				}  //  end of found-it
			}  //  end of for-each-of-wife's-marriages
		return false;
		}  //  end of method marriedToEachOther


	Individual kidSearch(Individual parentIndiv, String kidSex, Variable childArg, ConstraintObj constraints,
                            TreeMap bindings, ArrayList<Object> badKids, ArrayList<Object> starBindings, ClauseBody cb)
            throws KSConstraintInconsistency, KSInternalErrorException, KSBadHornClauseException, ClassNotFoundException {
		Iterator fams = parentIndiv.marriages.iterator();
		Family fam;
		ArrayList<Object> childUnEqList = makeUnEqList(childArg.argName, constraints, bindings);
		ArrayList<Object> childAgeSpecList = (ArrayList<Object>)constraints.age.get(childArg.argName);
		ArrayList<Object> childSexList = resolveOppo(bindings, constraints, childArg);
		String childSex = null;
		if (kidSex.equals("?")) {
                    if (childSexList == null) childSex = null;
                    else if (childSexList.contains("F")) childSex = "F";
                    else if (childSexList.contains("M")) childSex = "M";
                    else if (! childArg.neuterOK)  {  //  gender of "?" is not acceptable, we must generate a guess
                            if (childArg.lastGenderTried.equals("F")) childSex = "M";
                                    else childSex = "F";
                            childArg.lastGenderTried = childSex;
                            }  //  end of (! childArg.neuterOK)
                    }  //  end of if-kidSex-equals-"?"
                else childSex = kidSex;
		if (childSex == null) childSex = "?";
		Individual existingKid;
		String childDeath = (String)constraints.death.get(childArg.argName);
		String childDiv = (String)constraints.divorce.get(childArg.argName);
		while (fams.hasNext())  {
                    fam = (Family)fams.next();
                        for (int j=0; j < fam.children.size(); j++)  {
                            existingKid = (Individual)fam.children.get(j);
                            if (((existingKid.gender.equals(childSex)) || (childSex.equals("?")))
                                && (! (childUnEqList.contains(existingKid)))
                                && (! (badKids.contains(existingKid)))
                                && (meetsAgeSpec(existingKid, childAgeSpecList, bindings, "query"))
                                && (meetsDeathSpec(existingKid, childDeath, "query"))
                                && (meetsStarSpecs(existingKid, childArg, constraints, starBindings, bindings, "query", cb))
                                && (meetsDivSpec(existingKid, childDiv, "commit"))
                                && (meetsStarSpecs(existingKid, childArg, constraints, starBindings, bindings, "commit", cb))
                                && (meetsDeathSpec(existingKid, childDeath, "commit"))
                                && (meetsAgeSpec(existingKid, childAgeSpecList, bindings, "commit")) )
                                return existingKid;
                        }  //  end of for-all-kids-in-this-family
                    }  //  end of while-there-are-families-to-search
		return null;
		}  //  end of method kidSearch


	Individual parentSearch(Family fam, String parentSex, Variable parentArg, ConstraintObj constraints, TreeMap bindings,
                                ArrayList<Object> badParents, int parFlag, ArrayList<Object> starBindings, ClauseBody cb)
		throws KSConstraintInconsistency, KSInternalErrorException, KSBadHornClauseException, ClassNotFoundException  {

		if ((! parentArg.neuterOK) && (parentSex.equals("?")))  {
			if (parentArg.lastGenderTried.equals("F")) {
				parentSex = "M";
				parentArg.lastGenderTried = "M";
				}  //  end of last-try-was-F
			else {
				parentSex = "F";
				parentArg.lastGenderTried = "F";
				}  //  end of last-try-was-M
			}  //  end of if-parentSex=?-and-neuter-is-not-OK
		if (parFlag >= 2)  return null;  //  nothing to try
		ArrayList<Object> parentUnEqList = makeUnEqList(parentArg.argName, constraints, bindings);
		ArrayList<Object> parentAgeSpecList = (ArrayList<Object>)constraints.age.get(parentArg.argName);
		ArrayList<Object> genderSpecList = new ArrayList<Object>();
		genderSpecList.add(parentSex);
		String parDeath = (String)constraints.death.get(parentArg.argName);
		String parDiv = (String)constraints.divorce.get(parentArg.argName);
		Individual potential = null;
		if ((parentSex.equals("M")) || ((parentSex.equals("?")) && (parFlag == 0)))  {
                    if (   (! (badParents.contains(fam.husband)))
                        && (! (parentUnEqList.contains(fam.husband)))
                        && (meetsAgeSpec(fam.husband, parentAgeSpecList, bindings, "query"))
                        && (meetsGenderSpec(fam.husband, bindings, constraints, parentArg, "query"))
                        && (meetsStarSpecs(fam.husband, parentArg, constraints, starBindings, bindings, "query", cb))
                        && (meetsDeathSpec(fam.husband, parDeath, "query"))
                        && (meetsDivSpec(fam.husband, parDiv, "query"))	)  {
                        //  bingo
                        potential = fam.husband;
                        meetsDeathSpec(fam.husband, parDeath, "commit");
                        meetsStarSpecs(fam.husband, parentArg, constraints, starBindings, bindings, "commit", cb);
                        meetsAgeSpec(fam.husband, parentAgeSpecList, bindings, "commit");
                        meetsDivSpec(fam.husband, parDiv, "commit");
                        meetsGenderSpec(fam.husband, bindings, constraints, parentArg, "commit");
                        }  //  end of dad-passes-all-tests
                    parFlag = 1;
                    }  //  end of try-dad
		if ((parentSex.equals("F")) || ((parentSex.equals("?")) && (potential == null) && (parFlag == 1)))  {
                    //  it's a mother predicate OR a parent predicate & dad didn't work out so mom is next try
                    if (   (! (badParents.contains(fam.wife)))
                        && (! (parentUnEqList.contains(fam.wife)))
                        && (meetsAgeSpec(fam.wife, parentAgeSpecList, bindings, "query"))
                        && (meetsStarSpecs(fam.wife, parentArg, constraints, starBindings, bindings, "query", cb))
                        && (meetsDeathSpec(fam.wife, parDeath, "query"))
                        && (meetsDivSpec(fam.wife, parDiv, "query"))	)  {
                        //  bingo
                        potential = fam.wife;
                        meetsDeathSpec(fam.wife, parDeath, "commit");
                        meetsStarSpecs(fam.wife, parentArg, constraints, starBindings, bindings, "commit", cb);
                        meetsAgeSpec(fam.wife, parentAgeSpecList, bindings, "commit");
                        meetsDivSpec(fam.wife, parDiv, "commit");
                        meetsGenderSpec(fam.wife, bindings, constraints, parentArg, "commit");
                        }  //  end of wife-passes-all-tests
                    parFlag =2;  //  either mom was only choice OR 2nd choice.
                    }  //  end of try-wife
		if ((potential != null) && (! (parentSex.equals("?"))))  {
			fam.husband.gender = "M";
			fam.wife.gender = "F";
			}  //  end of confirming genders
		return potential;
		}  //  end of method parentSearch


	ArrayList<Object> makeUnEqList(String argName, ConstraintObj constraints, TreeMap bindings)  {
		ArrayList<Object> unEqNameList = (ArrayList<Object>)constraints.unEqual.get(argName);
		ArrayList<Object> indList = new ArrayList<Object>();
		if (unEqNameList != null) {
			Iterator nameIter = unEqNameList.iterator();
			String unEqName;
			Individual ind;
			while (nameIter.hasNext())  {
				unEqName = (String)nameIter.next();
				ind = (Individual)bindings.get(unEqName);
				if (ind != null) indList.add(ind);
				}  //  end of for-each-name-on-list
			}  //  end of if-unEqNameList-isn't-null
		return indList;
		}  //  end of method makeUnEqList



    boolean meetsAgeSpec(Individual ind1, ArrayList<Object> ageSpecList, TreeMap bindings, String type) {
    //  if either of 1st 2 args is null, there is no spec; return true
    //  otherwise, ageSpecList is a list of strings like "less than Ego"
    //  if ind1 already meets the ageSpec re: each person named, return true.
    //  if one of these individuals has no age assigned, make them meet the spec if type = "commit".
        if ((ageSpecList == null) || (ind1 == null))  return true;
        for (int i=0; i < ageSpecList.size(); i++)  {
            String newDOB, ageSpec = (String)ageSpecList.get(i);
            Individual ind2 = (Individual)bindings.get(ageSpec.substring(10));
            if (ind2 != null) {
                if ((ind1.hasDoB()) && (ind2.hasDoB())) {  //  both have an age assigned
                    Date dob1 = null, dob2 = null;
                    try {
                        dob1 = UDate.parse(ind1.getDateOfBirth());
                        dob2 = UDate.parse(ind2.getDateOfBirth());
                    } catch(KSDateParseException e) {
                        if (MainPane.activity == null) MainPane.createActivityLog(MainPane.desktop, MainPane.menuView);
                        MainPane.activity.log.append("Date parsing error: " + e);
                    }
                    if (dob1 == null || dob2 == null) return false;  //  can't compare unknowns!
                    if (((ageSpec.substring(0,4).equals("more")) && (! (dob1.before(dob2))))
                        || ((ageSpec.substring(0,4).equals("less")) && (! (dob1.after(dob2)))))
                        return false;  //  stop on first failure -- else resume checking with next i
                }  //  end of both-people-have-ages-assigned
                else if (ind1.hasDoB()) {  //  only ind1 has age set
                    if (type.equals("commit"))  {
                        if (ageSpec.substring(0,4).equals("less"))
                            newDOB = Family.newDOB(ind1.getDateOfBirth(), -1, ind2);
                        else newDOB = Family.newDOB(ind1.getDateOfBirth(), 1, ind2);
                        ind2.setDateOfBirth(newDOB);
                    }  //  end of if-commit
                }  //  end of ind1's-age-only-assigned
                else if (ind2.hasDoB()) {  //  only ind2 has age set
                    if (type.equals("commit"))  {
                        if (ageSpec.substring(0,4).equals("less"))
                            newDOB = Family.newDOB(ind2.getDateOfBirth(), 1, ind1);
                        else newDOB = Family.newDOB(ind2.getDateOfBirth(), -1, ind1);
                        ind1.setDateOfBirth(newDOB);
                    }  //  end of if-commit
                }  //  end of ind2's-age-only-assigned
            }  //  end of if-ind2-non-null
        }  //  end of for-i=each-spec-in-list
        return true;
    }  //  end of method meetsAgeSpec

    boolean meetsAgeSpecStrictly(Individual ind1, ArrayList<Object> ageSpecList, TreeMap bindings) {
        //  if ageSpecList is null, there is no spec; return true
        //  otherwise, ageSpecList is a list of strings like "less than Ego"
        //  if ind1 already meets the ageSpec re: each person named, return true.
        if (ageSpecList == null) {
            return true;
        }
        for (int i = 0; i < ageSpecList.size(); i++) {
            String newDOB, ageSpec = (String) ageSpecList.get(i);
            Individual ind2 = (Individual) bindings.get(ageSpec.substring(10));
            if (ind2 != null) {
                if ((ind1.hasDoB()) && (ind2.hasDoB())) {  //  both have an age assigned
                    Date dob1 = null, dob2 = null;
                    try {
                        dob1 = UDate.parse(ind1.getDateOfBirth());
                        dob2 = UDate.parse(ind2.getDateOfBirth());
                    } catch (KSDateParseException e) {
                        if (MainPane.activity == null) {
                            MainPane.createActivityLog(MainPane.desktop, MainPane.menuView);
                        }
                        MainPane.activity.log.append("Date parsing error: " + e);
                    }
                    if (dob1 == null || dob2 == null) {
                        return false;  //  can't compare unknowns!
                    }
                    if (((ageSpec.substring(0, 4).equals("more")) && (!(dob1.before(dob2))))
                            || ((ageSpec.substring(0, 4).equals("less")) && (!(dob1.after(dob2))))) {
                        return false;  //  stop on first failure -- else resume checking with next i
                    }
                } //  end of both-people-have-ages-assigned
                else {
                    return false;  //  can't meet the spec strictly if one age is missing.
                }
            }  //  end of ind2!=null
        }  //  end of for-i=each-spec-in-list
        return true;
    }  //  end of method meetsAgeSpecStrictly

	boolean meetsDeathSpec(Individual existingKid, String childDeath, String queryOrCommit)  {
		//  if childDeath = null, return true;  else it's "dead" or "alive"
		//  If kid's dateOfDeath = null, no requirement exists, & we can conform to the spec
		//  If kid's dateOfDeath = "", he is confirmed to be alive -- we can't change that.
		//  If kid's dateOfDeath = "mm/dd/yyyy", he is confirmed dead -- we can't change that, either.
		if (childDeath == null) return true;
		if (existingKid.hasNoDoD()) {
			if (queryOrCommit.equals("commit")) assignDeathDate(existingKid, childDeath);
			return true;
			}  //  end of no-prior-requirement
		else if ((existingKid.getDateOfDeath().equals("")) && (childDeath.equals("alive")))
			return true;
		else if ((existingKid.getDateOfDeath().length() > 0) && (childDeath.equals("dead")))
			return true;
		else return false;
		}  //  end of method meetsDeathSpec


	boolean meetsDeathSpecStrictly(Individual person, String deathSpec)  {
		//  if deathSpec = null, return true;  else it's "dead" or "alive"
		//  If person dateOfDeath = null, they're not known to be alive or dead.  Spec not met.
		//  If person dateOfDeath = "", he is confirmed to be alive -- may meet spec.
		//  If person dateOfDeath = "mm/dd/yyyy", he is confirmed dead -- may meet spec.
		if (deathSpec == null) return true;
		if (person.hasNoDoD()) return false;
		else if ((person.getDateOfDeath().equals("")) && (deathSpec.equals("alive")))
			return true;
		else if ((person.getDateOfDeath().length() > 0) && (deathSpec.equals("dead")))
			return true;
		else return false;
		}  //  end of method meetsDeathSpecStrictly


    boolean meetsDivSpec(Individual person, String divSpec, String queryOrCommit) {
        //  If divSpec = null, return true; else its a string: "divorced" or "undivorced"
        //  If person is not married, he does cannot meet the spec, but is un-divroced.
        //  If kid has at least 1 marriage with a definite dateOfDivorce, he meets the spec.
        //  If a marriage's .getDivorceDate() = null, no requirement exists, & we can conform to the spec
        //  If a marriage's .getDivorceDate() = "", he is confirmed to be undivorced -- we can't change that.
        //  If a marriage's .getDivorceDate() = "mm/dd/yyyy", he is confirmed divorced -- we can't change that, either.
        if (divSpec == null) {
            return true;
        }
        Iterator famIter = person.marriages.iterator();
        Family fam;
        if (divSpec.equals("divorced")) {
            while (famIter.hasNext()) {
                fam = (Family) famIter.next();
                if (fam.divorceStatusUnknown) {
                    if (queryOrCommit.equals("commit")) {
                        assignDivDate(fam, divSpec);
                    }
                    return true;
                } else if (fam.getDivorceDate().length() > 0) {
                    return true;
                }
            }  //  end of for-each-marriage
            return false;  //  if we get this far, no marriage can qualify
        } //  end of spec=divorced.
        else {  //  divSpec = "undivorced"
            while (famIter.hasNext()) {
                fam = (Family) famIter.next();
                if (fam.divorceStatusUnknown) {
                    if (queryOrCommit.equals("commit")) {
                        assignDivDate(fam, divSpec);
                    }
                } else if (!(fam.getDivorceDate().equals(""))) {
                    return false;
                }
            }  //  end of for-each-marriage
            return true;  //  if we get this far, no divorces can be found
        }  //  end of spec=undivorced.
    }  //  end of method meetsDivSpec

    boolean meetsDivSpecStrictly(Individual person, String divSpec) {
        //  If divSpec = null, return true; else its a string: "divorced" or "undivorced"
        //  If person is not married, or has no definite dateOfDivorce, he is un-divorced.
        //  If person has at least 1 marriage with a definite dateOfDivorce, he is divorced.
        if (divSpec == null) {
            return true;
        }
        Iterator famIter = person.marriages.iterator();
        Family fam;
        if (divSpec.equals("divorced")) {
            while (famIter.hasNext()) {
                fam = (Family) famIter.next();
                if (fam.hasDivorceDate()) {
                    return true;
                }
            }  //  end of for-each-marriage
            return false;  //  if we get this far, no marriage can qualify
        } //  end of spec=divorced.
        else {  //  divSpec = "undivorced"
            while (famIter.hasNext()) {
                fam = (Family) famIter.next();
                if (fam.hasDivorceDate()) {
                    return false;
                }
            }  //  end of for-each-marriage
            return true;  //  if we get this far, no divorces can be found
        }  //  end of spec=undivorced.
    }  //  end of method meetsDivSpecStrictly


        boolean meetsGenderSpec(Individual person, TreeMap bindings, ConstraintObj constraints, Variable argVar, String queryOrCommit)
            throws KSConstraintInconsistency {
		//  genderSpecList is a list of strings (genderSpecs)
		//  When genderSpecList is null or "?", we interpret that as "no constraints".  Everyone meets it.
		//  If "F" or "M" is specified, and person is neuter BUT NO KINTERMS HAVE BEEN ASSIGNED
		//  then we can change person's gender to meet the spec (if in COMMIT mode).
		//  If resolveOppo cannot resolve a constraint, it may remain "Opposite of X."  Anyone EXCEPT
		//  a neuter can meet that spec.
            ArrayList<Object> genderSpecList = resolveOppo(bindings, constraints, argVar);
            if ((genderSpecList == null) || (genderSpecList.contains("?"))
                || (genderSpecList.contains(person.gender)))
                return true;
            if ((person.gender.equals("?")) && (queryOrCommit.equals("query"))
                && ((genderSpecList.contains("M")) || (genderSpecList.contains("F")))
                && (person.node.kinTermsAddr.isEmpty()) && (person.node.extKinTermsAddr.isEmpty())
                && (person.node.kinTermsRef.isEmpty()) && (person.node.extKinTermsRef.isEmpty()))
                return true;  // report back that gender can be made to conform to spec if needed.
            if ((person.gender.equals("?")) && (queryOrCommit.equals("commit"))
                && ((genderSpecList.contains("M")) || (genderSpecList.contains("F")))
                && (person.node.kinTermsAddr.isEmpty()) && (person.node.extKinTermsAddr.isEmpty())
                && (person.node.kinTermsRef.isEmpty()) && (person.node.extKinTermsRef.isEmpty())) {
                if (genderSpecList.contains("M")) person.gender = "M";
                else person.gender = "F";
                person.hasGenderNeutralKinTerm = false;
                return true;
            }  //  end of person-is-neuter-and-genderSpec-is-M-or-F
            boolean oppo_same = false, m_f = false;
            String spec;
            for (int i=0; i < genderSpecList.size(); i++) {
                spec = (String)genderSpecList.get(i);
                if ((spec.indexOf("Same") > -1) || (spec.indexOf("Opposite") > -1)) oppo_same = true;
                if (spec.equals("F") || spec.equals("M")) m_f = true;
            }  //  end of for-i=each-spec-in-genderSpecList
               //  If all we have is an unresolved Opposite-of or Same-as constraint, anybody EXCEPT a neuter
               //  can satisfy the requirement
            if ((oppo_same) && (! m_f) && ((person.gender.equals("M")) || (person.gender.equals("F"))))
                return true;
            if ((oppo_same) && (! m_f) && (person.node.kinTermsAddr.isEmpty()) // this neuter can become M or F
                && (person.node.kinTermsRef.isEmpty()) && (person.node.extKinTermsAddr.isEmpty())
                && (person.node.extKinTermsRef.isEmpty()) && (queryOrCommit.equals("query")))
                return true;
            if ((oppo_same) && (! m_f) && (person.node.kinTermsAddr.isEmpty())  //  make this neuter M or F
                && (person.node.kinTermsRef.isEmpty()) && (person.node.extKinTermsAddr.isEmpty())
                && (person.node.extKinTermsRef.isEmpty()) && (queryOrCommit.equals("commit"))) {
                if (genderSpecList.contains("M")) person.gender = "M";
                else if (genderSpecList.contains("F")) person.gender = "F";
                else if (person.marriages.size() > 0)  {
                    Family fam = (Family)person.marriages.get(0);
                    if (fam.husband == person) person.gender = "M";
                    else person.gender = "F";
                }  //  end of person-is-married
                   //  no clues at all -- pick one!
                else if (argVar.lastGenderTried.equals("F")) person.gender = "M";
                else person.gender = "F";
                person.hasGenderNeutralKinTerm = false;
                argVar.lastGenderTried = person.gender;
                return true;
            }  //  end of neuter-changed-to-M-or-F
            return false;
        }  //  end of method meetsGenderSpec

    boolean meetsDivReq(Family fam, boolean divReq, String type) {
        //  divReq = true means divorce required; false means divorce prohibited
        //  type is either "query" or "commit"
        if (fam.divorceStatusUnknown) {
            if (type.equals("commit")) {
                if (divReq) {
                    assignDivDate(fam, "divorced");
                } else {
                    fam.setDivorceDate("");
                }
            }
            return true;
        }  //  end of .getDivorceDate()==null
        if ((divReq && fam.hasDivorceDate())
                || (!divReq && fam.hasNoDivorceDate())) {
            return true;
        } else {
            return false;
        }
    }  //  end of method meetsDivReq

    boolean meetsDivReqStrictly(Family fam, boolean divReq) {
        //  divReq = true means divorce required; false means divorce prohibited
        if ((divReq && fam.hasDivorceDate()) || (!divReq && fam.hasNoDivorceDate())) {
            return true;
        } else {
            return false;
        }
    }  //  end of method meetsDivReqStrictly


    /**  Does candidate meet all the userDefinedConstraints -- or could she?
      cud = Constraints.UserDefined, which may contain multiple constraints on the values of candidate's
      star-properties.  Each cud is a triple:
      <ul>
      <li> a Variable to which it applies (e.g. candArg)
      <li> the name of the star-property involved
      <li> a {@link MathVariable} or {link Variable} to which candidate's value for this star-prop will be bound.
           Recall that a MathVariable stands for an integer, float, string, boolean, or list.  A Variable stands for a person.
      </ul>
      <p>
      Two kinds of constraints must be satisfied:
      <ul>
      <li>  The type restrictions (e.g. int) or permissible values (validEntries) defined for this property.
            These are contained on the UserDefinedProperty (UDP) object which candidate carries for this property.
      <li>  Required relationships between candidate's value(s) for this property and the values of
            other Individuals.  In the case of a MathVariable, these are contained on the mathVar itself.  In the case of
            a Variable, the required relationships are found in the 'regular' constraints.
     </ul>
     <p>
      If our candidate does not yet have a value for a star-prop, she COULD conform.  In
      "query" mode, don't return false.  In "commit" mode, assign a "conforming value" to candidate and bind it
      to the MathVariable, too.  Continue checking.
      <p>
      By "assign a conforming value" we mean choose a value of the correct type (or from among the permissible values)
      which does not violate any of the constraints contained on the MathVariable.  For example, if a property takes a single int
      value, and the MathVariable has the constraint that its value must be lessThan {3, 6} and also that its value must be
      greaterThan {0, 1} then only 2 is a "conforming value."  If some other constraint prohibits 2, then
      no conforming value will ever be possible and an Exception is thrown (constraint conflict).  This is different from
      a situation where there are possible values, but candidate's value is not one of them (candidate is not a good match).
      <p>
      If a MathVariable is not yet bound to a value, and candidate already has a "conforming value," don't return false.
      In "commit" mode, bind candidate's value to the mathVariable.
      <p>
      If a MathVariable is bound to a particular value (or set of values), then candidate must
      already have that exact (set of) value(s), or be able to accept it, or else we must return false.
      All or nothing.  If candidate has the value(s), do not return false.  If candidate can accept it, do not report false
      (query mode) or assign that value(-set) (commit mode).
      <p>
      If the property is multi-valued, and a MathVariable has a constraint requiring that candidate's value-set must contain
      some specific value, then if that value can be legally added to candidate's value-set do not return false (query) or
      add it (commit).  Continue checking.
	  <p>
      If the Variable has a constraint requiring that candidate's value(-set) must be contained by some other MathVariable,
      then if this value(-set) can be legally added to that other MathVariable's value-set do not return false (query) or
      add it (commit).  Continue checking.
	  <p>
	  If the cud specifies a Variable, then this single-valued UDP is of type 'Person' and the Variable represents the individual
	  who is the UDP's value.  If we must find a 'conforming value' (i.e. person), we search for someone who meets all the constraints
	  specified for this Variable (if any).  If we must create such a person, we must honor those same constraints.
      <p>
      We check each star-property that applies to candidate in this manner.  If no property causes us to return false, then
      we return true.

      @param candidate  the person we're considering binding to a variable (argument)
      @param candArg    the argument to which we might bind candidate
      @param constraints	contains 'regular' constraints and 'cud' (Constraints.UserDefined - see explanation above)
      @param starBindings   a list of all the bindings of values to star-properties (in case we ever have to
                            backtrack and un-bind them)
      @param bindings   a list of all the bindings of people to variables so far
      @param queryOrCommit   either the string 'query' or 'commit'.  In commit mode we go ahead and bind values
      @param cb         the ClauseBody this Literal came from
    */
    boolean meetsStarSpecs(Individual candidate, Variable candArg, ConstraintObj constraints, ArrayList<Object> starBindings,
                           TreeMap bindings, String queryOrCommit, ClauseBody cb)
            throws KSInternalErrorException, KSBadHornClauseException, ClassNotFoundException, KSConstraintInconsistency  {
        TreeMap cud = constraints.userDefined;
		if ((cud == null) || (cud.isEmpty())) return true;  //  if there is no spec, we meet it vacuously.
        Iterator cudIter = cud.entrySet().iterator(), propIter;
        Map.Entry entry, propEntry;
        String starProp, msg;  //  starProp = name of the star-property; it always begins with '*'
        TreeMap indVarTM;
        Variable indVar;
        Argument mVC;  //  this Argument is either a MathVariable, Variable, or a Constant (mVC)
        while (cudIter.hasNext())  {  //  actually, we'll stop as soon as we find candArg's entry
            entry = (Map.Entry)cudIter.next();
            indVar = (Variable)entry.getKey();
            if (indVar == candArg)  {
                //  Aha!  There are star-property constraints on the variable (candArg) that we are
                //  considering binding candidate to.  Verify that candArg's values for these star-props (if any)
                //  are compatible with these constraints.
                indVarTM = (TreeMap)entry.getValue();
                propIter = indVarTM.entrySet().iterator();
                UserDefinedProperty udp;
                while (propIter.hasNext())  {
                    propEntry = (Map.Entry)propIter.next();
                    starProp = (String)propEntry.getKey();
                    mVC = (Argument)propEntry.getValue();
                    udp = (UserDefinedProperty)candidate.userDefinedProperties.get(starProp);
                    if (udp == null)  {
                        msg = "Mandatory User Defined Property '" + starProp + 
                                "' is not defined on Individual #" + candidate.serialNmbr;
                        throw new KSInternalErrorException(msg);
                        }  //  end of udp==null
                    if (mVC instanceof Constant)  {
                        Constant konstant = (Constant)mVC;
                        // for a Constant, the issue is whether this value can be candidate's value
                        // if candidate already has a different value: False
                        // if candidate has no value yet, and the Constant's value is conforming: OK
                        if ((udp.value.size() > 0) && (! konstant.getVal().equals(udp.value)))
                            return false;
                        Class reqClass = candidate.getUDPClass(udp.typ);
                        Class otherClass = candidate.getUDPClass(konstant.valueType);
                        if ((udp.value.isEmpty()) && (otherClass != reqClass))
                            return false;
                        if (udp.value.isEmpty())  //  we know checkProposedVal -> true
                            if (queryOrCommit.equals("commit")) {
                                udp.value = konstant.getVal();
                                candidate.yoke(null, null, konstant, null, udp, konstant.argName, bindings, starBindings);
                            }  //  end of commit
                    }  //  end of it's-a-Constant
                    else  {  //  it's a MathVar or a Variable
                        if ((mVC.getVal() != null) && (mVC.getVal().size() > 0)) {
                            //  mVC has a specific list of one or more values, and candidate also has a list of values.
                            //  If lists are equal, OK.  If candidate's list is empty, but mVC's is not,
							//  then if 'query' just return true.  Else assign the value from mVC & return true.
							//  If both lists are non-empty and non-equal, return false.
							if ((udp.value.size() == mVC.getVal().size())  &&
								(! udp.value.equals(mVC.getVal())))
								return false;
							else if (udp.value.isEmpty() &&
									  (mVC.getVal().size() == 1 || (! udp.singleValue)) )  {
								if (queryOrCommit.equals("commit")) udp.value.addAll(mVC.getVal());
								return true;
								}
                        }else  { //  mVC does not have a value, so all depends on whether candidate's
								 //  value (if any) conforms to the constraints on mVar
                            if (! candidate.findConformingValue(starProp, mVC, starBindings, bindings, constraints, queryOrCommit, cb))
                                return false;
							}
                    }  //  end of else-it's-a-MathVar-or-Variable
				}  //  end of loop thru star-prop constraints for this variable
            return true;  //  we don't care about any other variables, so end it here.
            }  //  end of found-star-property-constraints-for-this-variable
        }  //  end of loop thru all userDefined constraints
        return true;
    }  //  end of method meetsStarSpecs


     /**  Similar to <code>meetsStarSpecs</code>, but with no changes permitted to the Individual or her values.
      Here, a constraint implies that candidate's value must exist & must agree with the mVarOrConst's constraints.
      Hence, if candidate has no value, return false.
      <p>
      If mVarOrConst is a Constant, the constraint is simple: candidate must have that value.
      <p>
      If mVarOrConst is not a Constant, then it must be a MathVariable or a Variable.
      <p>
      For a single-valued property, if cand has a specific value but the MathVariable has some other value,
      then return false.  If cand has the required value, do not return false; continue checking.
      <p>
      If the MathVariable is not yet bound to a value, and cand already has a "conforming value," bind it to the
      MathVariable's value field & go on.
      <p>
      If the property is multi-valued, and the MathVariable is bound to a particular set of values, then cand must
      already have that exact set of values, or else we must return false.  If cand has the values, do not return false.
      <p>
      If the Variable has a constraint requiring that candidate's value-set must be contained by some other MathVariable,
      then if it's true do not return false.  Continue checking.
	  <p>
      If the property is multi-valued, and the MathVariable has a constraint requiring that cand's value-set must contain
      some specific value, then if that value is in cand's value-set do not return false.  Continue checking.
      <p>
      We check each star-property that applies to cand in this manner.  If no property causes us to return false, then
      we return true.
    */
    public boolean meetsStarSpecsStrictly(Individual cand, Variable candVar, ArrayList<Object> starBindings, TreeMap bindings, ConstraintObj constraints)
                        throws KSInternalErrorException, ClassNotFoundException, KSConstraintInconsistency {
        TreeMap cud = constraints.userDefined;
		if ((cud == null) || (cud.isEmpty())) return true;  //  if there is no spec, we meet it vacuously.
        Iterator cudIter = cud.entrySet().iterator(), propIter;
        Map.Entry entry, propEntry;
        String starProp, msg;  //  starProp = name of the star-property; it always begins with '*'
        TreeMap indVarTM;
        Variable indVar;
        Argument mVC;
        while (cudIter.hasNext())  {  //  actually, we'll stop as soon as we find candVar's entry
            entry = (Map.Entry)cudIter.next();
            indVar = (Variable)entry.getKey();
            if (indVar == candVar)  {  //  found it
                //  Aha!  There are star-property constraints on the variable (candVar) that we are
                //  considering binding cand to.  Verify that cand's values for these star-props (if any)
                //  are compatible with these constraints.
                indVarTM = (TreeMap)entry.getValue();
                propIter = indVarTM.entrySet().iterator();
                UserDefinedProperty udp;
                while (propIter.hasNext())  {
                    propEntry = (Map.Entry)propIter.next();
                    starProp = (String)propEntry.getKey();
                    mVC = (Argument)propEntry.getValue();
                    udp = (UserDefinedProperty)cand.userDefinedProperties.get(starProp);
                    if (udp == null)  {
                        msg = "A mandatory User Defined Property, " + starProp + ", is not defined on an Individual";
                        throw new KSInternalErrorException(msg);
                        }  //  end of udp==null
                    if (mVC instanceof Constant)  {
                        Constant konstant = (Constant)mVC;
                        if (! konstant.getVal().equals(udp.value)) return false;
                    }else  {  //  it's a MathVar or a Variable
                        if (udp.value.isEmpty())  return false; //  cand has no value
                        if ((mVC.getVal() != null) && (mVC.getVal().size() > 0)) {
                           //  mVC has a specific list of one or more values,
                            //  and candidate also has a list of values.  If lists are equal, OK.  Else, false.
                            if (! udp.value.equals(mVC.getVal())) return false;
                        }else {  //  cand has a value, and the variable doesn't.  1st ck it is conforming.
                            Class clazz = cand.getUDPClass(udp.typ);
                            for (int j=0; j < udp.value.size(); j++)
                                if (! cand.checkProposedVal(clazz, udp.value.get(j), mVC, bindings, starBindings, constraints))
									return false;
                            //  end of loop thru udp's values.  If we get here, all is well -- so far.
                            //  Check the 'contains' & 'containedBy' constraints on mVC.  If OK, then bind cand's value to the mVC & go on.
                            if ((mVC instanceof MathVariable) && (((MathVariable)mVC).contains != null)
									&& (((MathVariable)mVC).contains.size() > 0))  {
                                Argument constraintArg;
								Object constraintArgVal;
								ArrayList<Object> listToCheck;
								for (int i=0; i < ((MathVariable)mVC).contains.size(); i++)  {
                                    constraintArg = (Argument)((MathVariable)mVC).contains.get(i);
									listToCheck = new ArrayList<Object>();
									if (constraintArg instanceof MathVariable)  listToCheck = constraintArg.getVal();
									else {  //  it's a Variable for a person
										constraintArgVal = bindings.get(constraintArg.argName);  //  Variables are bound to Individuals
										if (constraintArgVal != null) listToCheck.add(constraintArgVal);
										}  //  Now listToCheck contains either the MathVariable's values or whatever the Variable is bound to
									for (int j=0; j < listToCheck.size(); j++)
										if (! udp.value.contains(listToCheck.get(j))) return false;
									}  //  end of loop thru constraintArgs in mVC's 'contains' list.
									//  Note that if constraintArg (vals we must contain) does not yet have a value, it imposes no constraint.
                            }  //  end of mVC has non-empty contains field
                            if ((mVC instanceof Variable) && (((Variable)mVC).containedBy != null)
									&& (((Variable)mVC).containedBy.size() > 0))  {
                                Argument constraintArg;
								Object constraintArgVal;
								ArrayList<Object> listToCheck;
								for (int i=0; i < ((MathVariable)mVC).containedBy.size(); i++)  {
                                    constraintArg = (Argument)((MathVariable)mVC).containedBy.get(i);
									listToCheck = new ArrayList<Object>();
									//  Note that if constraintArg (that must contain all our vals) does not yet have a value (or is unbound),
									//  we can't know whether, when bound, it will contain all our stuff.  But if it IS bound, or has a value,
									//  then we can test it and FAIL if it doesn't contain our stuff.  So test if it's bound
									if ((constraintArg.getVal().size() > 0) || (bindings.get(constraintArg.argName) != null))  {
										if (constraintArg instanceof MathVariable)  listToCheck = constraintArg.getVal();
										else {  //  it's a Variable for a person
											constraintArgVal = bindings.get(constraintArg.argName);
											if (constraintArgVal != null) listToCheck.add(constraintArgVal);
											}  //  Now listToCheck contains either the constraintArg's values or whatever the Variable is bound to
										for (int j=0; j < udp.value.size(); j++)
											if (! listToCheck.contains(udp.value.get(j))) return false;
										}  //  end of constraintArg-is-bound-or-has-value
									}  //  end of loop thru constraintArgs in mVC's 'containedBy' list.
							}
                            //  we're OK.  Bind the value and record the binding.
							//  NOTE:  I m tempoarily commenting out the yoking of MathVars and Vars in this method
							//  It seems to me that this should be just a verification, not a binding/yoking event.

							//  if (mVC instanceof MathVariable)
							//  	cand.yoke((MathVariable)mVC, null, null, null, udp, mVC.argName, bindings, starBindings);
							//  else cand.yoke(null, (Variable)mVC, null, null, udp, mVC.argName, bindings, starBindings);

						}  //  end of cand-has-a-value-and-the-variable-is-not-yet-bound
                    }  //  end of it-must-be-a-MathVariable-or-Variable
                }  //  end of loop thru star-prop constraints for this variable
            return true;  //  we don't care about any other variables, so end it here.
            }  //  end of constraint-applies-to-this-variable
        }  //  end of loop thru the TreeMap of Variables having UserDefinedConstraints
        return true;  //  We got to end without finding any constraints on this variable.  So it meets them vacuously.
    }  //  end of method meetsStarSpecsStrictly()


    void assignDeathDate(Individual person, String deathSpec) {
        if (deathSpec.equals("alive")) {
            person.setDateOfDeath("");
        } else {  //  spec=dead
            int dthYrInt, endDD;
            String latestYear, deathYear, by = person.getDateOfBirth();
            if (person.marriages.size() > 0) {
                dthYrInt = 5 + findLatestYear(person.marriages);
                //  end of if-married
            } else if (by != null) {
                if (Character.isJavaIdentifierStart(by.charAt(0))) {  // US Medium
                    endDD = by.lastIndexOf(",") + 2;
                    dthYrInt = 30 + Integer.parseInt(by.substring(endDD));
                } else {  //  XSD format
                    dthYrInt = 30 + Integer.parseInt(by.substring(0, 4));
                }
            } //  end of unmarried-with-birthYr-known
            else {
                dthYrInt = 1971;
            }
            String dthDate = "" + dthYrInt + "-04-15";
            person.setDateOfDeath(dthDate);
        }  //  end of else-spec=dead
        return;
    }  //  end of method assignDeathDate

    int findLatestYear(ArrayList<Object> marriages) {
        //  findLatestYear returns the last date of marriage, parenthood, widowhood, or divorce
        int latestYr = 0;
        Family fam;
        Individual kid;
        Iterator famIter = marriages.iterator();
        while (famIter.hasNext()) {
            fam = (Family) famIter.next();
            String date = fam.getMarriageDate();
            latestYr = updateExtremeValue(date, latestYr, true);
            date = fam.getDivorceDate();
            latestYr = updateExtremeValue(date, latestYr, true);
            date = fam.husband.getDateOfDeath();
            latestYr = updateExtremeValue(date, latestYr, true);
            date = fam.wife.getDateOfDeath();
            latestYr = updateExtremeValue(date, latestYr, true);
            if (fam.nmbrOfKids > 0) {
                Iterator kidIter = fam.children.iterator();
                while (kidIter.hasNext()) {
                    kid = (Individual) kidIter.next();
                    date = kid.getDateOfBirth();
                    latestYr = updateExtremeValue(date, latestYr, true);
                }   //  end of for-each-kid
            }  //  end of if-has-kids
        }  //  end of for-each-family-in-marriages
        return latestYr;
    }  //  end of method findLatestYear

    int updateExtremeValue(String date, int extremeVal, boolean bigger) {
        int candiDate, endDD;
        if (date != null && date.length() > 0) {
            if (Character.isJavaIdentifierStart(date.charAt(0))) {
                endDD = date.lastIndexOf(",") + 2;
                candiDate = Integer.parseInt(date.substring(endDD));
            } else { // XSD format
                candiDate = Integer.parseInt(date.substring(0, 4));
            }
            if ((bigger && candiDate > extremeVal) || (!bigger && candiDate < extremeVal)) {
                extremeVal = candiDate;
            }
        }
        return extremeVal;
    }


	int findEarliestYear(ArrayList<Object> marriages)  {
		//  findEarliestYear returns the earliest date of marriage.
		int earliestYr = 99999;
		Family fam;
		Iterator famIter = marriages.iterator();
		while (famIter.hasNext())  {
			fam = (Family)famIter.next();
                        String date = fam.getMarriageDate();
			earliestYr = updateExtremeValue(date, earliestYr, false);
			}  //  end of for-each-family-in-marriages
		return earliestYr;
		}  //  end of method findEarliestYear


	/** Assign a date to the divorce (OR a date = "" as positive absence of a divorce) in <code>fam</code>.

	@param	fam		the {@link Family} to whom the divorce (or none) is assigned.
	@param	divSpec	either "divorced" or "undivorced"
	*/
    public void assignDivDate(Family fam, String divSpec) {
        if (divSpec.equals("undivorced")) {
            fam.setDivorceDate("");
        } else {  //  spec = divorced
            int latestYr = 0, candiDate, endDD;
            String date = fam.getMarriageDate();
            latestYr = updateExtremeValue(date, latestYr, true);
            if (fam.nmbrOfKids > 0) {
                Iterator kidIter = fam.children.iterator();
                while (kidIter.hasNext()) {
                    Individual kid = (Individual) kidIter.next();
                    date = kid.getDateOfBirth();
                    latestYr = updateExtremeValue(date, latestYr, true);
                }   //  end of for-each-kid
            }  //  end of if-has-kids
            if (latestYr == 0) {
                latestYr = 1971;
            }
            String divDt = "" + ++latestYr + "-10-01";
            fam.setDivorceDate(divDt);
        }  //  end of else-spec=divorced
    }  //  end of method assignDivDate(Family, String)

    Family findOrMakeMarriage(Individual parentIndiv, int starter, String argName, ConstraintObj constraints)  {
        Family fam = null;
        if (parentIndiv.marriages.size() > starter)
            fam = (Family)parentIndiv.marriages.get(starter);
        else if ((singleNow(parentIndiv)) || (Context.current.polygamyPermit))
            fam = new Family(parentIndiv, argName, constraints.divorce);
        //  if we get this far, there's no existing marriage available,  parentIndiv is not single
        //  and polygamous marriage is not permitted.  We can always create a PRIOR marriage that
        //  ended in death without violating any constraints -- so do that.
        else {
            String spouseSex = "?", spouseBthDay = parentIndiv.getDateOfBirth(), wedDate;
            if (parentIndiv.gender.equals("F")) spouseSex = "M";
            else if (parentIndiv.gender.equals("M")) spouseSex = "F";
            Individual spouse = new Individual("*&^%$", spouseSex, spouseBthDay);
            int wedYr = findEarliestYear(parentIndiv.marriages) - 2;
            if (wedYr == 99997) wedYr = 1986;  // hope we don't have to use this default
            wedDate = "" + wedYr + "-06-10";
            fam = new Family(parentIndiv, spouse, wedDate);
            String dthYr = "" + ++wedYr + "-04-15";
            spouse.setDateOfDeath(dthYr);
            }  //  end of attempt-to-create-prior-marriage
        return fam;
    }  //  end of method findOrMakeMarriage



    Family findOrMakeBirthFamily(Individual childIndiv, String parentGender, String parArgName, Individual spouseInd,
                TreeMap bindings, ArrayList<Object> starBindings, ConstraintObj constraints, Variable parentVar, BoolFlag failFlag, ClauseBody cb)
            throws KSConstraintInconsistency, KSBadHornClauseException, ClassNotFoundException, KSInternalErrorException {
        if (childIndiv.birthFamily != null) return childIndiv.birthFamily;
        else { //  else-make-one
            Individual parent = new Individual("*&^%$", parentGender, null, null, parArgName, null, bindings,
                                                starBindings, constraints, parentVar, failFlag, cb);
            Family fam = new Family(parent, parArgName, constraints.divorce);
            fam.addChild(childIndiv);
            //  Set parent's age as best we can, & propogate it to other parent if needed.
            if ((parent.hasNoDoB()) && (childIndiv.hasDoB()))
                    parent.setDateOfBirth(Family.newDOB(childIndiv.getDateOfBirth(), (0 - fam.nmbrOfKids - 20), parent));
            if ((fam.husband.hasDoB()) && (fam.wife.hasNoDoB()))
                            fam.wife.setDateOfBirth(fam.husband.getDateOfBirth());
            else if ((fam.husband.hasNoDoB()) && (fam.wife.hasDoB()))
                            fam.husband.setDateOfBirth(fam.wife.getDateOfBirth());
            return fam;
            }  //  end of else-make-one
        }  //  end of method findOrMakeBirthFamily


}  //  end of class LiteralAbstract2
