

/** This class documents the Context-Free Grammar (CFG) used in the Kinship system to
parse SILK Files.  The CFG is embedded (hard-coded) into the class {@link SILKFileParser}.
<p>
SILKFile -> Header, Body, "</SIL_KinData >".
</p>   <p>
Header -> ""<?xml version=\"1.0\" encoding=\"UTF-8\" ?>"", "<!DOCTYPE SIL_KinData>", "< SIL_KinData >".
	First: [""<?xml version=\"1.0\" encoding=\"UTF-8\" ?>""]
    Follow: [tags: "<parameters>", "<editorSettings>", "<individualCensus>", "<familyCensus>", "<matrix>",
			"<dyadsUndefinedRef>", "<dyadsDefinedRef>", "<dyadsUndefinedAddr>", "<dyadsDefinedAddr>"]
</p>   <p>
Body ->     "<parameters>", Parameters, "</parameters>", Body.
  		 |  "<editorSettings>", EditorSettings, "</editorSettings>", Body.
  		 |  "<individualCensus>", IndividualCensus, "</individualCensus>", Body.
  		 |  "<familyCensus>", FamilyCensus, "</familyCensus>", Body.
  		 |  "<matrix>", Matrix, "</matrix>", Body.
  		 |  "<dyadsUndefinedRef>", DyadKinTerms, "</dyadsUndefinedRef>", Body.
  		 |  "<dyadsDefinedRef>", DyadKinTerms, "</dyadsDefinedRef>", Body.
  		 |  "<dyadsUndefinedAddr>", DyadKinTerms, "</dyadsUndefinedAddr>", Body.
  		 |  "<dyadsDefinedAddr>", DyadKinTerms, "</dyadsDefinedAddr>", Body.
         |  \empty.

 	First: ["parameters", "editorSettings", "individualCensus", "familyCensus", "matrix",
			"dyadsUndefinedRef", "dyadsDefinedRef", "dyadsUndefinedAddr", "dyadsDefinedAddr"]
	Follow: [tag: "</SIL_KinData >"]
</p>   <p>
Parameters ->  LangName, Theory1, Theory2, Comments, CreateDate, IndSerial, FamSerial, Poly, UDPs.
	First: ["<languageName>"]   Follow: [tag: "</parameters>"]
</p>   <p>
LangName -> "<languageName>",  symbol  "</languageName>".
 	 First: ["<languageName>"]	 Follow: [tag: "<theory>"]
</p>   <p>
Theory1 -> "<theory>", string, "</theory>".
 	 First: ["<theory>"]	 Follow: [tags: "<theory>", "<comments>", "<createDate..." "<indSerialNum"]
</p>   <p>
Theory2 -> "<theory>", string, "</theory>".
          | \empty.
 	 First: ["<theory>"]	 Follow: [tags: "<comments>", "<createDate..." "<indSerialNum>"]
</p>   <p>
Comments -> "<comments>", string, "</comments>".
		  |  \empty.
 	 First: ["<comments>"]	 Follow: [tags: "<createDate..." "<indSerialNum>", "<dateOfBirth>", "</family>"]
</p>   <p>
CreateDate -> "<createDate value=", string, "/>".
		  |  \empty.
 	 First: ["<createDate>"]	 Follow: ["<indSerialNum>"]
</p>   <p>
IndSerial -> "<indSerNum>", integer, "</indSerNum>".
 	 First: ["<indSerNum>"]	 Follow: ["<famSerNum>"]
</p>   <p>
FamSerial -> "<famSerNum>", integer,"</famSerNum>".
 	 First: ["<famSerNum>"]	 Follow: ["<polygamyPermit>"]
</p>   <p>
Poly -> "<polygamyPermit>", boolean, "</polygamyPermit>".
 	 First: ["<polygamyPermit>"]	 Follow: [tags: "<UDP>", "</parameters>"]
</p>   <p>
UDPs -> "<UDP>", UDP, "</UDP>", UDPs.
		  |  \empty.
 	 First: ["<UDP>"]	 Follow: [tag: "</parameters>"]
</p>   <p>
UDP -> PropName, Type, ValueList, SingleVal, ValidEntries, DefVal, MinVal, MaxVal.
 	 First: [tag: "<propertyName>"]	 Follow: [tag: "</UDP>"]
</p>   <p>
PropName -> "<propertyName>", starName, "</propertyName>".
 	 First: [tag: "<propertyName>"]	 Follow: [tag: "<typ>"]
</p>   <p>
Type -> "<typ>", TypeSpec, "</typ>".
 	 First: [tag: "<typ>"]	 Follow: [tag: "<singleValue>"]
</p>   <p>
TypeSpec -> "integer".
         |  "float".
         |  "string".
         |  "boolean".
         |  "individual".
 	 First: [one of those]	 Follow: [tag: "</typ>"]
</p>   <p>
ValueList -> "<value>", Values, "</value>".
 	 First: [tag: "<value>"]	 Follow: [tag: "<singleValue>"]
</p>   <p>
Values -> DefaultValue, MoreValues.
	   |  \empty.
 	 First: [integer, float, string, boolean, Individual]	 
     Follow: [tag: "</value>"]
</p>   <p>
MoreValues -> comma, DefaultValue, MoreValues.
	   |  \empty.
 	 First: [comma]	 Follow: [comma, tag: "</value>"]
</p>   <p>
SingleVal -> "<singleValue>", boolean,"</singleValue>".
 	 First: [tag: "<singleValue>"]	 Follow: [see note 1]
</p>   <p>
ValidEntries -> "<validEntries>", ValEntries, "</validEntries>".
 	 First: [tag: "<validEntries>"]	 Follow: [tag: "<defaultValue>"]
</p>   <p>
ValEntries -> integer, ValEntries.
           |  float, ValEntries.
           |  string, ValEntries.
           |  boolean, ValEntries.
           |  Individual, ValEntries.
		   |  \empty.
 	 First: [see note 2]	 Follow: [tag: "</validEntries>"]
</p>   <p>
DefVal -> "<defaultValue>", DefaultValue, "</defaultValue>".
 	 First: [tag: "<defaultValue>"]	 Follow: [tag: "<minVal>"]
</p>   <p>
DefaultValue -> integer.  // NOTE: Must agree with 'typ' for this UDP.
             |  float.
             |  string.
             |  boolean.
             |  Individual.
		     |  \empty.
 	 First: [integer, float, string, boolean, Individual]
     Follow: [comma, tags: "</defaultValue>", "</value>"]
</p>   <p>
MinVal -> "<minVal>", MinValue, "</minVal>".
 	 First: ["tag: <minVal>"]	 Follow: [tag: "<maxVal>"]
</p>   <p>
MinValue -> integer.
         |  float.
         |  string.
         |  boolean.
         |  Individual.
		 |  \empty.
 	 First: [see note 2]	 Follow: [tag: "</minVal>"]
</p>   <p>
MaxVal -> "<maxVal>", MaxValue,"</maxVal>".
 	 First: [tag: "<maxVal>"]	 Follow: [see note 1]
</p>   <p>
MaxValue -> integer.
         |  float.
         |  string.
         |  boolean.
         |  Individual.
		 |  \empty.
 	 First: [see note 2]	 Follow: [tag: "</maxVal>"]
</p>   <p>
EditorSettings -> CurrentEgo, EditDir, KAESParameters.
         First: [flag: <currentEgo>, <editDirectory>, <origin>]
         Follow: ["</editorSettings>"]
</p>   <p>
KAESParameters -> "<origin>", "<x>", integer, "</x>",
                  "<y>", integer, "</y>", "</origin>",
                  "<infoPerson>", integer, "</infoPerson>",
                  "<infoMarriage>", integer, "</infoMarriage>",
                  "<label>", integer, "</label>",
                  "<editable>", boolean, "</editable>".
     First: [flag: <origin>]	 Follow: [flag: </editorSettings>]
</p>   <p>
IndividualCensus ->  "<individualCensus>", Individuals, "</individualCensus>".
   First: [tag: "<individualCensus>"]	 Follow: [tag: "<familyCensus>"]
</p>   <p>
Individuals -> Individual, Individuals.
            |  \empty.
 	 First: [tag: "<individual>"]	 Follow: [tags: "<individual>", "<familyCensus>"]
</p>   <p>
Individual -> "<individual>", Serial, Gender, Surname, FirstNames, Comments, Birth, Death, DataChg,
              Author, Deleted, BirthFam, Marriages, UDPs, StarLinks, "</individual>".
 	 First: [tag: "<individual>"]	 Follow: [tags: "<individual>", "</individualCensus>"]
</p>   <p>
Serial -> "<serialNmbr>", integer, "</serialNmbr>".
 	 First: [tag: "<serialNmbr>"]	 Follow: [tag: "<gender>"]
</p>   <p>
Gender -> "<gender>", symbol, "</gender>".  // must be M or F
 	 First: [tag: "<gender>"]	 Follow: [tag: "<surname>"]
</p>   <p>
Surname -> "<surname>", string, "</surname>".
 	 First: [comtag: "<serialNmbr>"ma]	 Follow: [tag: "<firstNames>"]
</p>   <p>
FirstNames -> "<firstNames>", string, "</firstNames>".
 	 First: [tag: "<firstNames>"]	 Follow: [tag: "<dateOfBirth>"]
</p>   <p>
Birth -> "<dateOfBirth>", string, "</dateOfBirth>".  //  must be parsable as a date, or blank.
 	 First: [tag: "<dateOfBirth>"]	 Follow: [tag: "<dateOfDeath>"]
</p>   <p>
Death -> "<dateOfDeath>", string, "</dateOfDeath>".  //  must be parsable as a date, or blank.
 	 First: [tag: "<dateOfDeath>"]	 Follow: [tag: "<dataChangeDate>"]
</p>   <p>
DataChg -> "<dataChangeDate>", string, "</dataChangeDate>".  //  must be parsable as a date, or blank.
 	 First: [tag: "<dataChangeDate>"]	 Follow: [tags: "<dataAuthor>",  "<comments>"]
</p>   <p>
Author -> "<dataAuthor>", string, "</dataAuthor>".
 	 First: [tag: "<dataAuthor>"]	 Follow: [tag: "<deleted>"]
</p>   <p>
Deleted -> "<deleted>", boolean, "</deleted>".
 	 First: [tag: "<deleted>"]	 Follow: [tag: "<birthFamily>"]
</p>   <p>
BirthFam -> "<birthFamily>", IntOrBlank, "</birthFamily>".
 	 First: [tag: "<birthFamily>"]	 Follow: [tag: "<marriages>"]
</p>   <p>
IntOrBlank -> integer.
           |  \empty.
 	 First: [integer]	 Follow: [tag: "</birthFamily>"]
</p>   <p>
Marriages -> "<marriages>", Weddings, "</marriages>".
 	 First: [tag: "<marriages>"]	 Follow: [tag: "<userDefinedProperties>"]
</p>   <p>
Weddings -> integer, MoreWeds.
         |  \empty.
 	 First: [integer]	 Follow: [tag: "</marriages>"]
</p>   <p>
MoreWeds -> comma, integer, MoreWeds.
         |  \empty.
 	 First: [comma]	 Follow: [tag: "</marriages>"]
</p>   <p>
StarLinks -> "<starLinks>", Starz, "</starLinks>".
 	 First: [tag: "<starLinks>"]	 Follow: [tag: "</individual>"]
</p>   <p>
Starz -> "#", integer, MoreStarz.
      |  \empty.
 	 First: [integer]	 Follow: [tag: "</starLinks>"]
</p>   <p>
MoreStarz -> comma, "#", integer, MoreStarz.
          |  \empty.
 	 First: [comma]	 Follow: [tag: "</starLinks>"]
</p>   <p>
FamilyCensus -> "<familyCensus>", Families, "</familyCensus>".
			First:  [tag: "<familyCensus>"]		Follow: [tag: "<matrix>"]
</p>   <p>
Families -> Family, Families.
            |  \empty.
 	 First: [tag: "<family>"]	 Follow: [tag: "</familyCensus>"]
</p>   <p>
Family -> "<family>", Serial, Deleted, Husband, Wife, Children, MarDate, DivDate, DataChg, Comments, "</family>".
 	 First: [tag: "<family>"]	 Follow: [tags: "<family>", "</familyCensus>"]
</p>   <p>
Husband -> "<husband>", integer, "</husband>".
	First: [tag: "<husband>"]		Follow: [tag: "<wife>"]
</p>   <p>
Wife -> "<wife>", intger, "</wife>".
	First: [tag: "<wife>"]		Follow: [tag: "<children>"]
</p>   <p>
Children -> "<children>", Kids, "</children>".
      |  \empty.
 	 First: [tag: "<children>"]	 Follow: [tag: "<marriageDate>"]
</p>   <p>
Kids -> integer, MoreKids.
      |  \empty.
 	 First: [integer]	 Follow: [tag: "</children>"]
</p>   <p>
MoreKids -> comma, integer, MoreKids.
         |  \empty.
 	 First: [comma]	 Follow: [tag: "</children>"]
</p>   <p>
MarDate -> "<marriageDate>", string, "</marriageDate>".  //  must be parsable as a date, or blank.
 	 First: [tag: "<marriageDate>"]	 Follow: [tag: "<endDate>"]
</p>   <p>
DivDate -> "<endDate>", NullOrString.
 	 First: [tag: "<endDate>"]	 Follow: [tag: "<dataChangeDate>"]
</p>   <p>
NullOrString -> string, "</endDate>".  //  must be parsable as a date, or blank.
             |  symbol, "</endDate>".  //  must be 'null'
 	 First: [string, symbol]	 Follow: [tag: "<dataChangeDate>"]
</p>   <p>
Matrix -> "<matrix>", Rows, "</matrix>".
	First: [tag: "<matrix>"]		Follow: [tag: "<dyadsUndefinedRef>"]
</p>   <p>
Rows -> Row, Rows.
      |  \empty.
 	 First: [tag: "<row>"]	 Follow: [tag: "</matrix>"]
</p>   <p>
Row -> "<row>", integer, Cells, "</row>".
 	 First: [tag: "<row>"]	 Follow: [tags: "<row>", "</matrix>"]
</p>   <p>
Cells -> Cell, Cells.
      |  \empty.
 	 First: [tag: "<cell>"]	 Follow: [tag: "</row>"]
</p>   <p>
Cell -> "<cell>", integer, NodeComponents, TermGroups, "</cell>".
         First: [flag: "<cell>"]	 Follow: [tags: "</row>", "<cell>"]
</p>   <p>
NodeComponents ->  "<pcString>", string, "</pcString>", "<level>", integer, "</level>", MiniPreds.
         First: [flag: "<indiv>"]	 Follow: [tags:  "<PR>","<ER>","<XR>","<PA>","<EA>","<XA>","</cell>"]
</p>   <p>
TermGroups -> TermGroup, TermGroups.
      |  \empty.
 	 First: [tags: "<PR>","<ER>","<XR>","<PA>","<EA>","<XA>"]
     Follow: [tag: "</cell>"]
</p>   <p>
TermGroup -> TGStartTag, TermStrings, TGEndTag.
 	 First: [tags: "<PR>","<ER>","<XR>","<PA>","<EA>","<XA>"]
     Follow: [tags: "</cell>","<PR>","<ER>","<XR>","<PA>","<EA>","<XA>"]
</p>   <p>
TGStartTag -> "<PR>".
           |  "<ER>".
           |  "<XR>".
           |  "<PA>".
           |  "<EA>".
           |  "<XA>".
 	 First: [tags: one of those]	 Follow: [symbol]
</p>   <p>
TermStrings -> string, MoreTerms.
 	 First: [string]	 Follow: [tags: "</PR>","</ER>","</XR>","</PA>","</EA>","</XA>"]
</p>   <p>
MoreTerms -> comma, string, MoreTerms.
         |  \empty.
 	 First: [comma]	 Follow: [tags: "</PR>","</ER>","</XR>","</PA>","</EA>","</XA>"]
</p>   <p>
TGEndTag -> "</PR>".
         |  "</ER>".
         |  "</XR>".
         |  "</PA>".
         |  "</EA>".
         |  "</XA>".
 	 First: [tags: one of those]	 Follow: [tag: "</row>", "<cell>"]
</p>   <p>
DyadKinTerms -> DyadKinTerm, MoreKinTerms.
	First:  [tag: "<dyadKinTerm>"]
    Follow: [tags: "</dyadsDefinedRef>", "</dyadsUndefinedRef>", "</dyadsDefinedAddr>", "</dyadsDefinedAddr>"]
</p>   <p>
MoreKinTerms -> DyadKinTerm, MoreKinTerms.
             |  \empty.
	First:  [tag: "<dyadKinTerm>"]
    Follow: [tags: "</dyadsDefinedRef>", "</dyadsUndefinedRef>", "</dyadsDefinedAddr>", "</dyadsDefinedAddr>"]
</p>   <p>
DyadKinTerm -> "<dyadKinTerm>", symbol, KinTypes, "</dyadKinTerm>".
	First:  [tag: "<dyadKinTerm>"]
    Follow: [tags: "<dyadKinTerm>", "</dyadsDefinedRef>", "</dyadsUndefinedRef>", "</dyadsDefinedAddr>", "</dyadsDefinedAddr>"]
</p>   <p>
KinTypes -> KinType, MoreTypes.
 	 First: [tag: "<kinType>"]	 Follow: [tag: "</dyadKinTerm>"]
</p>   <p>
MoreTypes -> KinType, MoreTypes.
         |  \empty.
 	 First: [tag: "<kinType>"]	 Follow: [tag: "</dyadKinTerm>"]
</p>   <p>
KinType -> "<kinType>", symbol, Dyads, "</kinType>".
 	 First: [tag: "<kinType>"]	 Follow: [tags: "<kinType>", "</dyadKinTerm>"]
</p>   <p>
Dyads -> Dyad, MoreDyads.
 	 First: [onePcTag]	 Follow: [tag: "</kinType>"]
</p>   <p>
MoreDyads -> Dyad, MoreDyads.
         |  \empty.
 	 First: [onePcTag]	 Follow: [tag: "</kinType>"]
</p>   <p>
Dyad -> onePcTag.
 	 First: [onePcTag]	 Follow: [onePcTag, tag: "</kinType>"]
</p>   <p>

NOTE:  a onePcTag consists of: "<dyad ", DyadComponents, " />".
 	 First: [tag: "<dyad"]	 Follow: [onePcTag, "</kinType>"]
</p>   <p>
DyadComponents -> "level=", IntString, DyadComponents.
				| "counters=", MultiIntString, DyadComponents.
				| "kinTermType=", IntString, DyadComponents.
				| "addOrRef=", IntString, DyadComponents.
				| "ego=", IntString, DyadComponents.
				| "alter=", IntString, DyadComponents.
				| "path=", MultiIntString, DyadComponents.
				| "confirmed=", string, DyadComponents.
				| "challenged=", string, DyadComponents.
				| \empty.
	 First: [tags: "level=", "counters=", "kinTerm=", "kinTermType=",  "addOrRef=", "ego=", "alter=", "path=", "confirmed=", "challenged="] 
 	 Follow: [" />"]
</p>   <p>
IntString -> \", integer, \".
 	 First: [tags: "level=", "counters=", "kinTerm=", "kinTermType=",  "addOrRef=", "ego=", "alter=", "path=", "confirmed=", "challenged="] 
 	 Follow: [tags: same as First]
</p>   <p>
NOTE:  MultiIntString is defined in CFG style, but it is implemented simply as
	   a method that parses 0 or more integers from a string.
MultiIntString -> \", PathInts, \".
 	 First: [tags: "level=", "counters=", "kinTerm=", "kinTermType=",  "addOrRef=", "ego=", "alter=", "path=", "confirmed=", "challenged="] 
 	 Follow: [tags: same as First]
</p>   <p>
PathInts -> integer, MoreInts.
         |  \empty.
 	 First: [integer]	 Follow: [tag: "</path>"]
</p>   <p>
MoreInts -> comma, integer, MoreInts.
         |  \empty.
 	 First: [comma]	 Follow: [tag: "</path>"]
</p>
*/
public class SILKFileGrammar {  }  
