/** This class documents the Context-Free Grammar (CFG) used in the Kinship system to
parse Domain Theories.  The CFG is embedded (hard-coded) into the class {@link Parser}.
<p>
DomainTheory -> LanguageName, HeaderOpts, StandardMacros, Theory.
<p>
LanguageName -> leftParen, "languageName", comma, string, rightParen.
	First: [leftParen]    Follow: [leftParen, symbol]
<p>
HeaderOpts ->  leftParen, HdrOpts2, HeaderOpts.
			|  \empty.
	First: [leftParen]   Follow: [symbol]
<p>
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
<p>  
Boolean ->  "true".
	 |  "false".
	First: ["true", "false"]	 Follow: [comma, rightParen]
<p>
U_D_Props -> comma, leftParen, starName, comma, "type", comma, Type, comma, "single_value", comma, Boolean, UDP_Opts, rightParen, U_D_Props.
		  |  \empty.
 	 First: [comma]	 Follow: [rightParen]
<p>
Type ->  "integer".
     |   "float".
     |   "string".
     |   "boolean".
     |   "individual".
    First: [<all-the-above>]	 Follow: [comma]
<p>
UDP_Opts -> comma, RestrictOrDefault, UDP_Opts.
		 |  \empty.
			First:  [comma]		Follow: [rightParen]
<p>
RestrictOrDefault -> "restricted_to", comma, leftParen, Ints_Floats_Strings, rightParen.
				  |  "default", comma, Int_Float_String.
				  |  "max", comma, Int_Float.
				  |  "min", comma, Int_Float.
	First: ["restricted_to", "default", "max", "min"]		Follow: [comma, rightParen]
<p>
Int_Float_String -> integer.
				 |  float.
				 |  string.
	First:  [integer, float, string]	Follow: [comma, rightParen]
<p>
Int_Float -> integer.
		  |  float.
	First:  [integer, float]	Follow: [comma, rightParen]
<p>
Ints_Floats_Strings -> Ints.
					|  Floats.
					|  Strings.
	First:  [integer, float, string]	Follow: [rightParen]
<p>
Ints ->  integer, MoreInts.
<p>
MoreInts ->  comma, integer, MoreInts.
		 |   \empty
 	 First: [comma]	 Follow: [rightParen]
<p>
Floats ->  float, MoreFloats.
<p>
MoreFloats ->  comma, float, MoreFloats.
		   |   \empty.
 	 First: [comma]	 Follow: [rightParen]
<p>
Strings ->  string, MoreStrings.
<p>
MoreStrings ->  comma, string, MoreStrings.
			|   \empty.
 	 First: [comma]	 Follow: [rightParen]
<p>
StandardMacros -> KinTermDef, SignatureString, Expansion, OtherDefs.
				|	\empty.
<p>
TermPairs -> TermPair, OtherTermPairs.
 	 First: [leftParen]	 Follow: [rightParen]
<p>
TermPair -> leftParen, symbol, comma, symbol, rightParen.
 	 First: [leftParen]	 Follow: [comma, rightParen]
<p>
OtherTermPairs -> comma, TermPair, OtherTermPairs.
				   |  \empty.
 	 First: [comma]	 Follow: [rightParen]
<p>
TermListPairs -> TermListPair, OtherTermListPairs.
 	 First: [leftParen]	 Follow: [rightParen]
<p>
OtherTermListPairs -> comma, TermListPair, OtherTermListPairs.
					   |  \empty.
 	 First: [comma]	 Follow: [rightParen]
<p>
TermListPair -> leftParen, symbol, comma, TermList, rightParen.
 	 First: [leftParen]	 Follow: [rightParen]
<p>
TermList -> leftParen, symbol, MoreTerms, rightParen.
 	 First: [leftParen]	 Follow: [rightParen]
<p>
MoreTerms -> comma, symbol, MoreTerms.
		|  \empty.
 	 First: [comma]	 Follow: [rightParen]
<p>
Theory ->  KinTermDef, SignatureString, Expansion, OtherDefs.
<p>
OtherDefs ->  KinTermDef, SignatureString, Expansion, OtherDefs.
	   |  \empty.
 	 First: [symbol]	 Follow: [$]
<p>
KinTermDef ->  ClauseHead, imply, ClauseBody, OtherBodies.
 	 First: [symbol]	 Follow: [percent $]
<p>
ClauseHead ->  symbol, leftParen, Args, rightParen.
<p>
Args ->  var, OtherArgs.
      |  symbol, OtherArgs.
      |  string, OtherArgs.
      |  integer, OtherArgs.
      |  float, OtherArgs.
    First: [var, symbol, string] 	 Follow: [rightParen]
<p>
OtherArgs ->  \empty.
	   |  comma, Args.
	First: [comma]  	 Follow: [rightParen]
<p>
ClauseBody ->  LitOrFlag, OtherLitsOrFlags, period.
	First: [symbol, flag]  	 Follow: [bar, symbol, percent, $]
<p>
OtherLitsOrFlags ->  \empty.
    		  |  comma, LitOrFlag, OtherLitsOrFlags.
	First: [comma] 	 Follow: [period]
<p>
OtherBodies -> bar, ClauseBody, OtherBodies.
			| \empty.
	First: [bar]     Follow: [symbol, percent, leftCurly, $]
<p>
FlagOrKinTerm -> flag.
			  |  symbol.
	First: [flag, symbol] 	
	Follow: [comma, leftParen, symbol]
<p>
OtherFlagOrKinTerm -> comma, OtherFlagOrKinTerm2.
  				   |  \empty.
	First: [comma] 	
	Follow: [rightParen]
<p>
OtherFlagOrKinTerm2 -> flag, OtherFlagOrKinTerm.
   					|  symbol, OtherFlagOrKinTerm.
	First: [flag, symbol] 	
	Follow: [leftParen, symbol]
<p>
LitOrFlag -> flag.
          |  Literal.
<p>
Literal ->  symbol, leftParen, ArgNest, rightParen.
        |   starName, leftParen, ArgNest, rightParen.
	First: [symbol, starName]  	 Follow: [comma, period]
<p>
ArgNest ->  var, OtherArgNest.
		 |  symbol, SymbOrLitRest, OtherArgNest.
         |  starName, leftParen, ArgNest, rightParen, OtherArgNest.
		 |  string, OtherArgNest.
         |  integer, OtherArgNest.
         |  float, OtherArgNest.
		 |  \empty.
	First: [var, symbol, starName, string, integer, float]    	 Follow: [rightParen]
<p>
SymbOrLitRest ->  \empty.
               |  leftParen, ArgNest, rightParen.
	First: [leftParen] 	 Follow: [comma, rightParen]
<p>
OtherArgNest ->  \empty.
              |  comma, ArgNest.
	First: [comma]  	 Follow: [rightParen]
<p>
SignatureString -> \empty.
				 | leftCurly, string, rightCurly.
	First: [leftCurly]	Follow: [percent, symbol, $]
<p>
Expansion -> ExpList, ExpClauseBody, Expansion.
                 |  \empty.
         First: [percent]	 Follow: [symbol, starName, $]
<p>
ExpClauseBody ->  LitOrFlag, OtherLitsOrFlags, period.
            First: [symbol, flag]  	 Follow: [bar, symbol, percent, $]
<p>
ExpList -> percent, ExpItem, OtherExpItems, percent, LvlStr.
    First: [percent]  Follow: [symbol, flag]
<p>
ExpItem -> symbol, colon, integer.
        |  NegExpansion.
	First: [symbol, leftParen]		 Follow: [comma, percent, rightParen]
<p>
OtherExpItems -> comma, ExpItem, OtherExpItems.
              |  \empty.
	First: [comma]		Follow: [percent, rightParen]
<p>
LvlStr -> CtrSet, comma, CtrSet, comma, CtrSet, comma, leftCurly, VarOrStar, rightCurly.
	First: [symbol]		Follow: [symbol, flag]
<p>
VarOrStar -> var, MoreVarsOrStars.
		  |  varWithStars, MoreVarsOrStars.
		  |  starName, MoreVarsOrStars.
		  |  stars, MoreVarsOrStars.
	First: [var, varWithStars, starName, stars]		Follow: [rightCurly]
<p>
MoreVarsOrStars -> var, MoreVarsOrStars.
				|  varWithStars, MoreVarsOrStars.
				|  starName, MoreVarsOrStars.
				|  stars, MoreVarsOrStars.
				|  \empty.
	First: [var, varWithStars, starName, stars]		Follow: [rightCurly]
<p>
CtrSet -> symbol, equal, integer.
	First: [symbol, starName]		Follow: [comma, period]
<p>
NegExpansion -> leftParen, symbol, NegExpRest, rightParen.
	First: [leftParen]	Follow: [comma, percent, rightParen]

NegExpRest -> colon, ExpItem, OtherExpItems.
			| \empty.
	First: [colon]	Follow: [rightParen]

*/  
public abstract class DomainTheoryGrammar {}
