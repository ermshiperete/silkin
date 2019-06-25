/** This class documents the Context-Free Grammar (CFG) used in the Kinship system to
parse SILK Files.  The CFG is embedded (hard-coded) into the class {@link ParserSILKFile}.
<p>
SILKFile -&gt; Header, Body, end-tag-for-SILKin-data.
</p>   <p>
Header -&gt; &quot;&quot;&lt;?xml version=\&quot;1.0\&quot; encoding=\&quot;UTF-8\&quot; ?&gt;&quot;&quot;, &quot;&lt;!DOCTYPE SIL_KinData&gt;&quot;, &quot;&lt; SIL_KinData &gt;&quot;.
	First: [&quot;&quot;&lt;?xml version=\&quot;1.0\&quot; encoding=\&quot;UTF-8\&quot; ?&gt;&quot;&quot;]
    Follow: [tags: &quot;&lt;parameters&gt;&quot;, &quot;&lt;editorSettings&gt;&quot;, &quot;&lt;individualCensus&gt;&quot;, &quot;&lt;familyCensus&gt;&quot;, &quot;&lt;matrix&gt;&quot;,
			&quot;&lt;dyadsUndefinedRef&gt;&quot;, &quot;&lt;dyadsDefinedRef&gt;&quot;, &quot;&lt;dyadsUndefinedAddr&gt;&quot;, &quot;&lt;dyadsDefinedAddr&gt;&quot;]
</p>   <p>
Body -&gt;     &quot;&lt;parameters&gt;&quot;, Parameters, &quot;&lt;/parameters&gt;&quot;, Body.
  		 |  &quot;&lt;editorSettings&gt;&quot;, EditorSettings, &quot;&lt;/editorSettings&gt;&quot;, Body.
  		 |  &quot;&lt;individualCensus&gt;&quot;, IndividualCensus, &quot;&lt;/individualCensus&gt;&quot;, Body.
  		 |  &quot;&lt;familyCensus&gt;&quot;, FamilyCensus, &quot;&lt;/familyCensus&gt;&quot;, Body.
  		 |  &quot;&lt;matrix&gt;&quot;, Matrix, &quot;&lt;/matrix&gt;&quot;, Body.
  		 |  &quot;&lt;dyadsUndefinedRef&gt;&quot;, DyadKinTerms, &quot;&lt;/dyadsUndefinedRef&gt;&quot;, Body.
  		 |  &quot;&lt;dyadsDefinedRef&gt;&quot;, DyadKinTerms, &quot;&lt;/dyadsDefinedRef&gt;&quot;, Body.
  		 |  &quot;&lt;dyadsUndefinedAddr&gt;&quot;, DyadKinTerms, &quot;&lt;/dyadsUndefinedAddr&gt;&quot;, Body.
  		 |  &quot;&lt;dyadsDefinedAddr&gt;&quot;, DyadKinTerms, &quot;&lt;/dyadsDefinedAddr&gt;&quot;, Body.
         |  \empty.

 	First: [&quot;parameters&quot;, &quot;editorSettings&quot;, &quot;individualCensus&quot;, &quot;familyCensus&quot;, &quot;matrix&quot;,
			&quot;dyadsUndefinedRef&quot;, &quot;dyadsDefinedRef&quot;, &quot;dyadsUndefinedAddr&quot;, &quot;dyadsDefinedAddr&quot;]
	Follow: [tag: &quot;&lt;/SIL_KinData &gt;&quot;]
</p>   <p>
Parameters -&gt;  LangName, Theory1, Theory2, Comments, CreateDate, IndSerial, FamSerial, Poly, UDPs.
	First: [&quot;&lt;languageName&gt;&quot;]   Follow: [tag: &quot;&lt;/parameters&gt;&quot;]
</p>   <p>
LangName -&gt; &quot;&lt;languageName&gt;&quot;,  symbol  &quot;&lt;/languageName&gt;&quot;.
 	 First: [&quot;&lt;languageName&gt;&quot;]	 Follow: [tag: &quot;&lt;theory&gt;&quot;]
</p>   <p>
Theory1 -&gt; &quot;&lt;theory&gt;&quot;, string, &quot;&lt;/theory&gt;&quot;.
 	 First: [&quot;&lt;theory&gt;&quot;]	 Follow: [tags: &quot;&lt;theory&gt;&quot;, &quot;&lt;comments&gt;&quot;, &quot;&lt;createDate...&quot; &quot;&lt;indSerialNum&quot;]
</p>   <p>
Theory2 -&gt; &quot;&lt;theory&gt;&quot;, string, &quot;&lt;/theory&gt;&quot;.
          | \empty.
 	 First: [&quot;&lt;theory&gt;&quot;]	 Follow: [tags: &quot;&lt;comments&gt;&quot;, &quot;&lt;createDate...&quot; &quot;&lt;indSerialNum&gt;&quot;]
</p>   <p>
Comments -&gt; &quot;&lt;comments&gt;&quot;, string, &quot;&lt;/comments&gt;&quot;.
		  |  \empty.
 	 First: [&quot;&lt;comments&gt;&quot;]	 Follow: [tags: &quot;&lt;createDate...&quot; &quot;&lt;indSerialNum&gt;&quot;, &quot;&lt;dateOfBirth&gt;&quot;, &quot;&lt;/family&gt;&quot;]
</p>   <p>
CreateDate -&gt; &quot;&lt;createDate value=&quot;, string, &quot;/&gt;&quot;.
		  |  \empty.
 	 First: [&quot;&lt;createDate&gt;&quot;]	 Follow: [&quot;&lt;indSerialNum&gt;&quot;]
</p>   <p>
IndSerial -&gt; &quot;&lt;indSerNum&gt;&quot;, integer, &quot;&lt;/indSerNum&gt;&quot;.
 	 First: [&quot;&lt;indSerNum&gt;&quot;]	 Follow: [&quot;&lt;famSerNum&gt;&quot;]
</p>   <p>
FamSerial -&gt; &quot;&lt;famSerNum&gt;&quot;, integer,&quot;&lt;/famSerNum&gt;&quot;.
 	 First: [&quot;&lt;famSerNum&gt;&quot;]	 Follow: [&quot;&lt;polygamyPermit&gt;&quot;]
</p>   <p>
Poly -&gt; &quot;&lt;polygamyPermit&gt;&quot;, boolean, &quot;&lt;/polygamyPermit&gt;&quot;.
 	 First: [&quot;&lt;polygamyPermit&gt;&quot;]	 Follow: [tags: &quot;&lt;UDP&gt;&quot;, &quot;&lt;/parameters&gt;&quot;]
</p>   <p>
UDPs -&gt; &quot;&lt;UDP&gt;&quot;, UDP, &quot;&lt;/UDP&gt;&quot;, UDPs.
		  |  \empty.
 	 First: [&quot;&lt;UDP&gt;&quot;]	 Follow: [tag: &quot;&lt;/parameters&gt;&quot;]
</p>   <p>
UDP -&gt; PropName, Type, ValueList, SingleVal, ValidEntries, DefVal, MinVal, MaxVal.
 	 First: [tag: &quot;&lt;propertyName&gt;&quot;]	 Follow: [tag: &quot;&lt;/UDP&gt;&quot;]
</p>   <p>
PropName -&gt; &quot;&lt;propertyName&gt;&quot;, starName, &quot;&lt;/propertyName&gt;&quot;.
 	 First: [tag: &quot;&lt;propertyName&gt;&quot;]	 Follow: [tag: &quot;&lt;typ&gt;&quot;]
</p>   <p>
Type -&gt; &quot;&lt;typ&gt;&quot;, TypeSpec, &quot;&lt;/typ&gt;&quot;.
 	 First: [tag: &quot;&lt;typ&gt;&quot;]	 Follow: [tag: &quot;&lt;singleValue&gt;&quot;]
</p>   <p>
TypeSpec -&gt; &quot;integer&quot;.
         |  &quot;float&quot;.
         |  &quot;string&quot;.
         |  &quot;boolean&quot;.
         |  &quot;individual&quot;.
 	 First: [one of those]	 Follow: [tag: &quot;&lt;/typ&gt;&quot;]
</p>   <p>
ValueList -&gt; &quot;&lt;value&gt;&quot;, Values, &quot;&lt;/value&gt;&quot;.
 	 First: [tag: &quot;&lt;value&gt;&quot;]	 Follow: [tag: &quot;&lt;singleValue&gt;&quot;]
</p>   <p>
Values -&gt; DefaultValue, MoreValues.
	   |  \empty.
 	 First: [integer, float, string, boolean, Individual]	 
     Follow: [tag: &quot;&lt;/value&gt;&quot;]
</p>   <p>
MoreValues -&gt; comma, DefaultValue, MoreValues.
	   |  \empty.
 	 First: [comma]	 Follow: [comma, tag: &quot;&lt;/value&gt;&quot;]
</p>   <p>
SingleVal -&gt; &quot;&lt;singleValue&gt;&quot;, boolean,&quot;&lt;/singleValue&gt;&quot;.
 	 First: [tag: &quot;&lt;singleValue&gt;&quot;]	 Follow: [see note 1]
</p>   <p>
ValidEntries -&gt; &quot;&lt;validEntries&gt;&quot;, ValEntries, &quot;&lt;/validEntries&gt;&quot;.
 	 First: [tag: &quot;&lt;validEntries&gt;&quot;]	 Follow: [tag: &quot;&lt;defaultValue&gt;&quot;]
</p>   <p>
ValEntries -&gt; integer, ValEntries.
           |  float, ValEntries.
           |  string, ValEntries.
           |  boolean, ValEntries.
           |  Individual, ValEntries.
		   |  \empty.
 	 First: [see note 2]	 Follow: [tag: &quot;&lt;/validEntries&gt;&quot;]
</p>   <p>
DefVal -&gt; &quot;&lt;defaultValue&gt;&quot;, DefaultValue, &quot;&lt;/defaultValue&gt;&quot;.
 	 First: [tag: &quot;&lt;defaultValue&gt;&quot;]	 Follow: [tag: &quot;&lt;minVal&gt;&quot;]
</p>   <p>
DefaultValue -&gt; integer.  // NOTE: Must agree with 'typ' for this UDP.
             |  float.
             |  string.
             |  boolean.
             |  Individual.
		     |  \empty.
 	 First: [integer, float, string, boolean, Individual]
     Follow: [comma, tags: &quot;&lt;/defaultValue&gt;&quot;, &quot;&lt;/value&gt;&quot;]
</p>   <p>
MinVal -&gt; &quot;&lt;minVal&gt;&quot;, MinValue, &quot;&lt;/minVal&gt;&quot;.
 	 First: [&quot;tag: &lt;minVal&gt;&quot;]	 Follow: [tag: &quot;&lt;maxVal&gt;&quot;]
</p>   <p>
MinValue -&gt; integer.
         |  float.
         |  string.
         |  boolean.
         |  Individual.
		 |  \empty.
 	 First: [see note 2]	 Follow: [tag: &quot;&lt;/minVal&gt;&quot;]
</p>   <p>
MaxVal -&gt; &quot;&lt;maxVal&gt;&quot;, MaxValue,&quot;&lt;/maxVal&gt;&quot;.
 	 First: [tag: &quot;&lt;maxVal&gt;&quot;]	 Follow: [see note 1]
</p>   <p>
MaxValue -&gt; integer.
         |  float.
         |  string.
         |  boolean.
         |  Individual.
		 |  \empty.
 	 First: [see note 2]	 Follow: [tag: &quot;&lt;/maxVal&gt;&quot;]
</p>   <p>
EditorSettings -&gt; CurrentEgo, EditDir, KAESParameters.
         First: [flag: &lt;currentEgo&gt;, &lt;editDirectory&gt;, &lt;origin&gt;]
         Follow: [&quot;&lt;/editorSettings&gt;&quot;]
</p>   <p>
KAESParameters -&gt; &quot;&lt;origin&gt;&quot;, &quot;&lt;x&gt;&quot;, integer, &quot;&lt;/x&gt;&quot;,
                  &quot;&lt;y&gt;&quot;, integer, &quot;&lt;/y&gt;&quot;, &quot;&lt;/origin&gt;&quot;,
                  &quot;&lt;infoPerson&gt;&quot;, integer, &quot;&lt;/infoPerson&gt;&quot;,
                  &quot;&lt;infoMarriage&gt;&quot;, integer, &quot;&lt;/infoMarriage&gt;&quot;,
                  &quot;&lt;label&gt;&quot;, integer, &quot;&lt;/label&gt;&quot;,
                  &quot;&lt;editable&gt;&quot;, boolean, &quot;&lt;/editable&gt;&quot;.
     First: [flag: &lt;origin&gt;]	 Follow: [flag: &lt;/editorSettings&gt;]
</p>   <p>
IndividualCensus -&gt;  &quot;&lt;individualCensus&gt;&quot;, Individuals, &quot;&lt;/individualCensus&gt;&quot;.
   First: [tag: &quot;&lt;individualCensus&gt;&quot;]	 Follow: [tag: &quot;&lt;familyCensus&gt;&quot;]
</p>   <p>
Individuals -&gt; Individual, Individuals.
            |  \empty.
 	 First: [tag: &quot;&lt;individual&gt;&quot;]	 Follow: [tags: &quot;&lt;individual&gt;&quot;, &quot;&lt;familyCensus&gt;&quot;]
</p>   <p>
Individual -&gt; &quot;&lt;individual&gt;&quot;, Serial, Gender, Surname, FirstNames, Comments, Birth, Death, DataChg,
              Author, Deleted, BirthFam, Marriages, UDPs, StarLinks, &quot;&lt;/individual&gt;&quot;.
 	 First: [tag: &quot;&lt;individual&gt;&quot;]	 Follow: [tags: &quot;&lt;individual&gt;&quot;, &quot;&lt;/individualCensus&gt;&quot;]
</p>   <p>
Serial -&gt; &quot;&lt;serialNmbr&gt;&quot;, integer, &quot;&lt;/serialNmbr&gt;&quot;.
 	 First: [tag: &quot;&lt;serialNmbr&gt;&quot;]	 Follow: [tag: &quot;&lt;gender&gt;&quot;]
</p>   <p>
Gender -&gt; &quot;&lt;gender&gt;&quot;, symbol, &quot;&lt;/gender&gt;&quot;.  // must be M or F
 	 First: [tag: &quot;&lt;gender&gt;&quot;]	 Follow: [tag: &quot;&lt;surname&gt;&quot;]
</p>   <p>
Surname -&gt; &quot;&lt;surname&gt;&quot;, string, &quot;&lt;/surname&gt;&quot;.
 	 First: [comtag: &quot;&lt;serialNmbr&gt;&quot;ma]	 Follow: [tag: &quot;&lt;firstNames&gt;&quot;]
</p>   <p>
FirstNames -&gt; &quot;&lt;firstNames&gt;&quot;, string, &quot;&lt;/firstNames&gt;&quot;.
 	 First: [tag: &quot;&lt;firstNames&gt;&quot;]	 Follow: [tag: &quot;&lt;dateOfBirth&gt;&quot;]
</p>   <p>
Birth -&gt; &quot;&lt;dateOfBirth&gt;&quot;, string, &quot;&lt;/dateOfBirth&gt;&quot;.  //  must be parsable as a date, or blank.
 	 First: [tag: &quot;&lt;dateOfBirth&gt;&quot;]	 Follow: [tag: &quot;&lt;dateOfDeath&gt;&quot;]
</p>   <p>
Death -&gt; &quot;&lt;dateOfDeath&gt;&quot;, string, &quot;&lt;/dateOfDeath&gt;&quot;.  //  must be parsable as a date, or blank.
 	 First: [tag: &quot;&lt;dateOfDeath&gt;&quot;]	 Follow: [tag: &quot;&lt;dataChangeDate&gt;&quot;]
</p>   <p>
DataChg -&gt; &quot;&lt;dataChangeDate&gt;&quot;, string, &quot;&lt;/dataChangeDate&gt;&quot;.  //  must be parsable as a date, or blank.
 	 First: [tag: &quot;&lt;dataChangeDate&gt;&quot;]	 Follow: [tags: &quot;&lt;dataAuthor&gt;&quot;,  &quot;&lt;comments&gt;&quot;]
</p>   <p>
Author -&gt; &quot;&lt;dataAuthor&gt;&quot;, string, &quot;&lt;/dataAuthor&gt;&quot;.
 	 First: [tag: &quot;&lt;dataAuthor&gt;&quot;]	 Follow: [tag: &quot;&lt;deleted&gt;&quot;]
</p>   <p>
Deleted -&gt; &quot;&lt;deleted&gt;&quot;, boolean, &quot;&lt;/deleted&gt;&quot;.
 	 First: [tag: &quot;&lt;deleted&gt;&quot;]	 Follow: [tag: &quot;&lt;birthFamily&gt;&quot;]
</p>   <p>
BirthFam -&gt; &quot;&lt;birthFamily&gt;&quot;, IntOrBlank, &quot;&lt;/birthFamily&gt;&quot;.
 	 First: [tag: &quot;&lt;birthFamily&gt;&quot;]	 Follow: [tag: &quot;&lt;marriages&gt;&quot;]
</p>   <p>
IntOrBlank -&gt; integer.
           |  \empty.
 	 First: [integer]	 Follow: [tag: &quot;&lt;/birthFamily&gt;&quot;]
</p>   <p>
Marriages -&gt; &quot;&lt;marriages&gt;&quot;, Weddings, &quot;&lt;/marriages&gt;&quot;.
 	 First: [tag: &quot;&lt;marriages&gt;&quot;]	 Follow: [tag: &quot;&lt;userDefinedProperties&gt;&quot;]
</p>   <p>
Weddings -&gt; integer, MoreWeds.
         |  \empty.
 	 First: [integer]	 Follow: [tag: &quot;&lt;/marriages&gt;&quot;]
</p>   <p>
MoreWeds -&gt; comma, integer, MoreWeds.
         |  \empty.
 	 First: [comma]	 Follow: [tag: &quot;&lt;/marriages&gt;&quot;]
</p>   <p>
StarLinks -&gt; &quot;&lt;starLinks&gt;&quot;, Starz, &quot;&lt;/starLinks&gt;&quot;.
 	 First: [tag: &quot;&lt;starLinks&gt;&quot;]	 Follow: [tag: &quot;&lt;/individual&gt;&quot;]
</p>   <p>
Starz -&gt; &quot;#&quot;, integer, MoreStarz.
      |  \empty.
 	 First: [integer]	 Follow: [tag: &quot;&lt;/starLinks&gt;&quot;]
</p>   <p>
MoreStarz -&gt; comma, &quot;#&quot;, integer, MoreStarz.
          |  \empty.
 	 First: [comma]	 Follow: [tag: &quot;&lt;/starLinks&gt;&quot;]
</p>   <p>
FamilyCensus -&gt; &quot;&lt;familyCensus&gt;&quot;, Families, &quot;&lt;/familyCensus&gt;&quot;.
			First:  [tag: &quot;&lt;familyCensus&gt;&quot;]		Follow: [tag: &quot;&lt;matrix&gt;&quot;]
</p>   <p>
Families -&gt; Family, Families.
            |  \empty.
 	 First: [tag: &quot;&lt;family&gt;&quot;]	 Follow: [tag: &quot;&lt;/familyCensus&gt;&quot;]
</p>   <p>
Family -&gt; &quot;&lt;family&gt;&quot;, Serial, Deleted, Husband, Wife, Children, MarDate, DivDate, DataChg, Comments, &quot;&lt;/family&gt;&quot;.
 	 First: [tag: &quot;&lt;family&gt;&quot;]	 Follow: [tags: &quot;&lt;family&gt;&quot;, &quot;&lt;/familyCensus&gt;&quot;]
</p>   <p>
Husband -&gt; &quot;&lt;husband&gt;&quot;, integer, &quot;&lt;/husband&gt;&quot;.
	First: [tag: &quot;&lt;husband&gt;&quot;]		Follow: [tag: &quot;&lt;wife&gt;&quot;]
</p>   <p>
Wife -&gt; &quot;&lt;wife&gt;&quot;, intger, &quot;&lt;/wife&gt;&quot;.
	First: [tag: &quot;&lt;wife&gt;&quot;]		Follow: [tag: &quot;&lt;children&gt;&quot;]
</p>   <p>
Children -&gt; &quot;&lt;children&gt;&quot;, Kids, &quot;&lt;/children&gt;&quot;.
      |  \empty.
 	 First: [tag: &quot;&lt;children&gt;&quot;]	 Follow: [tag: &quot;&lt;marriageDate&gt;&quot;]
</p>   <p>
Kids -&gt; integer, MoreKids.
      |  \empty.
 	 First: [integer]	 Follow: [tag: &quot;&lt;/children&gt;&quot;]
</p>   <p>
MoreKids -&gt; comma, integer, MoreKids.
         |  \empty.
 	 First: [comma]	 Follow: [tag: &quot;&lt;/children&gt;&quot;]
</p>   <p>
MarDate -&gt; &quot;&lt;marriageDate&gt;&quot;, string, &quot;&lt;/marriageDate&gt;&quot;.  //  must be parsable as a date, or blank.
 	 First: [tag: &quot;&lt;marriageDate&gt;&quot;]	 Follow: [tag: &quot;&lt;endDate&gt;&quot;]
</p>   <p>
DivDate -&gt; &quot;&lt;endDate&gt;&quot;, NullOrString.
 	 First: [tag: &quot;&lt;endDate&gt;&quot;]	 Follow: [tag: &quot;&lt;dataChangeDate&gt;&quot;]
</p>   <p>
NullOrString -&gt; string, &quot;&lt;/endDate&gt;&quot;.  //  must be parsable as a date, or blank.
             |  symbol, &quot;&lt;/endDate&gt;&quot;.  //  must be 'null'
 	 First: [string, symbol]	 Follow: [tag: &quot;&lt;dataChangeDate&gt;&quot;]
</p>   <p>
Matrix -&gt; &quot;&lt;matrix&gt;&quot;, Rows, &quot;&lt;/matrix&gt;&quot;.
	First: [tag: &quot;&lt;matrix&gt;&quot;]		Follow: [tag: &quot;&lt;dyadsUndefinedRef&gt;&quot;]
</p>   <p>
Rows -&gt; Row, Rows.
      |  \empty.
 	 First: [tag: &quot;&lt;row&gt;&quot;]	 Follow: [tag: &quot;&lt;/matrix&gt;&quot;]
</p>   <p>
Row -&gt; &quot;&lt;row&gt;&quot;, integer, Cells, &quot;&lt;/row&gt;&quot;.
 	 First: [tag: &quot;&lt;row&gt;&quot;]	 Follow: [tags: &quot;&lt;row&gt;&quot;, &quot;&lt;/matrix&gt;&quot;]
</p>   <p>
Cells -&gt; Cell, Cells.
      |  \empty.
 	 First: [tag: &quot;&lt;cell&gt;&quot;]	 Follow: [tag: &quot;&lt;/row&gt;&quot;]
</p>   <p>
Cell -&gt; &quot;&lt;cell&gt;&quot;, integer, NodeComponents, TermGroups, &quot;&lt;/cell&gt;&quot;.
         First: [flag: &quot;&lt;cell&gt;&quot;]	 Follow: [tags: &quot;&lt;/row&gt;&quot;, &quot;&lt;cell&gt;&quot;]
</p>   <p>
NodeComponents -&gt;  &quot;&lt;pcString&gt;&quot;, string, &quot;&lt;/pcString&gt;&quot;, &quot;&lt;level&gt;&quot;, integer, &quot;&lt;/level&gt;&quot;, MiniPreds.
         First: [flag: &quot;&lt;indiv&gt;&quot;]	 Follow: [tags:  &quot;&lt;PR&gt;&quot;,&quot;&lt;ER&gt;&quot;,&quot;&lt;XR&gt;&quot;,&quot;&lt;PA&gt;&quot;,&quot;&lt;EA&gt;&quot;,&quot;&lt;XA&gt;&quot;,&quot;&lt;/cell&gt;&quot;]
</p>   <p>
TermGroups -&gt; TermGroup, TermGroups.
      |  \empty.
 	 First: [tags: &quot;&lt;PR&gt;&quot;,&quot;&lt;ER&gt;&quot;,&quot;&lt;XR&gt;&quot;,&quot;&lt;PA&gt;&quot;,&quot;&lt;EA&gt;&quot;,&quot;&lt;XA&gt;&quot;]
     Follow: [tag: &quot;&lt;/cell&gt;&quot;]
</p>   <p>
TermGroup -&gt; TGStartTag, TermStrings, TGEndTag.
 	 First: [tags: &quot;&lt;PR&gt;&quot;,&quot;&lt;ER&gt;&quot;,&quot;&lt;XR&gt;&quot;,&quot;&lt;PA&gt;&quot;,&quot;&lt;EA&gt;&quot;,&quot;&lt;XA&gt;&quot;]
     Follow: [tags: &quot;&lt;/cell&gt;&quot;,&quot;&lt;PR&gt;&quot;,&quot;&lt;ER&gt;&quot;,&quot;&lt;XR&gt;&quot;,&quot;&lt;PA&gt;&quot;,&quot;&lt;EA&gt;&quot;,&quot;&lt;XA&gt;&quot;]
</p>   <p>
TGStartTag -&gt; &quot;&lt;PR&gt;&quot;.
           |  &quot;&lt;ER&gt;&quot;.
           |  &quot;&lt;XR&gt;&quot;.
           |  &quot;&lt;PA&gt;&quot;.
           |  &quot;&lt;EA&gt;&quot;.
           |  &quot;&lt;XA&gt;&quot;.
 	 First: [tags: one of those]	 Follow: [symbol]
</p>   <p>
TermStrings -&gt; string, MoreTerms.
 	 First: [string]	 Follow: [tags: &quot;&lt;/PR&gt;&quot;,&quot;&lt;/ER&gt;&quot;,&quot;&lt;/XR&gt;&quot;,&quot;&lt;/PA&gt;&quot;,&quot;&lt;/EA&gt;&quot;,&quot;&lt;/XA&gt;&quot;]
</p>   <p>
MoreTerms -&gt; comma, string, MoreTerms.
         |  \empty.
 	 First: [comma]	 Follow: [tags: &quot;&lt;/PR&gt;&quot;,&quot;&lt;/ER&gt;&quot;,&quot;&lt;/XR&gt;&quot;,&quot;&lt;/PA&gt;&quot;,&quot;&lt;/EA&gt;&quot;,&quot;&lt;/XA&gt;&quot;]
</p>   <p>
TGEndTag -&gt; &quot;&lt;/PR&gt;&quot;.
         |  &quot;&lt;/ER&gt;&quot;.
         |  &quot;&lt;/XR&gt;&quot;.
         |  &quot;&lt;/PA&gt;&quot;.
         |  &quot;&lt;/EA&gt;&quot;.
         |  &quot;&lt;/XA&gt;&quot;.
 	 First: [tags: one of those]	 Follow: [tag: &quot;&lt;/row&gt;&quot;, &quot;&lt;cell&gt;&quot;]
</p>   <p>
DyadKinTerms -&gt; DyadKinTerm, MoreKinTerms.
	First:  [tag: &quot;&lt;dyadKinTerm&gt;&quot;]
    Follow: [tags: &quot;&lt;/dyadsDefinedRef&gt;&quot;, &quot;&lt;/dyadsUndefinedRef&gt;&quot;, &quot;&lt;/dyadsDefinedAddr&gt;&quot;, &quot;&lt;/dyadsDefinedAddr&gt;&quot;]
</p>   <p>
MoreKinTerms -&gt; DyadKinTerm, MoreKinTerms.
             |  \empty.
	First:  [tag: &quot;&lt;dyadKinTerm&gt;&quot;]
    Follow: [tags: &quot;&lt;/dyadsDefinedRef&gt;&quot;, &quot;&lt;/dyadsUndefinedRef&gt;&quot;, &quot;&lt;/dyadsDefinedAddr&gt;&quot;, &quot;&lt;/dyadsDefinedAddr&gt;&quot;]
</p>   <p>
DyadKinTerm -&gt; &quot;&lt;dyadKinTerm&gt;&quot;, symbol, KinTypes, &quot;&lt;/dyadKinTerm&gt;&quot;.
	First:  [tag: &quot;&lt;dyadKinTerm&gt;&quot;]
    Follow: [tags: &quot;&lt;dyadKinTerm&gt;&quot;, &quot;&lt;/dyadsDefinedRef&gt;&quot;, &quot;&lt;/dyadsUndefinedRef&gt;&quot;, &quot;&lt;/dyadsDefinedAddr&gt;&quot;, &quot;&lt;/dyadsDefinedAddr&gt;&quot;]
</p>   <p>
KinTypes -&gt; KinType, MoreTypes.
 	 First: [tag: &quot;&lt;kinType&gt;&quot;]	 Follow: [tag: &quot;&lt;/dyadKinTerm&gt;&quot;]
</p>   <p>
MoreTypes -&gt; KinType, MoreTypes.
         |  \empty.
 	 First: [tag: &quot;&lt;kinType&gt;&quot;]	 Follow: [tag: &quot;&lt;/dyadKinTerm&gt;&quot;]
</p>   <p>
KinType -&gt; &quot;&lt;kinType&gt;&quot;, symbol, Dyads, &quot;&lt;/kinType&gt;&quot;.
 	 First: [tag: &quot;&lt;kinType&gt;&quot;]	 Follow: [tags: &quot;&lt;kinType&gt;&quot;, &quot;&lt;/dyadKinTerm&gt;&quot;]
</p>   <p>
Dyads -&gt; Dyad, MoreDyads.
 	 First: [onePcTag]	 Follow: [tag: &quot;&lt;/kinType&gt;&quot;]
</p>   <p>
MoreDyads -&gt; Dyad, MoreDyads.
         |  \empty.
 	 First: [onePcTag]	 Follow: [tag: &quot;&lt;/kinType&gt;&quot;]
</p>   <p>
Dyad -&gt; onePcTag.
 	 First: [onePcTag]	 Follow: [onePcTag, tag: &quot;&lt;/kinType&gt;&quot;]
</p>   <p>

NOTE:  a onePcTag consists of: &quot;&lt;dyad &quot;, DyadComponents, &quot; /&gt;&quot;.
 	 First: [tag: &quot;&lt;dyad&quot;]	 Follow: [onePcTag, &quot;&lt;/kinType&gt;&quot;]
</p>   <p>
DyadComponents -&gt; &quot;level=&quot;, IntString, DyadComponents.
				| &quot;counters=&quot;, MultiIntString, DyadComponents.
				| &quot;kinTermType=&quot;, IntString, DyadComponents.
				| &quot;addOrRef=&quot;, IntString, DyadComponents.
				| &quot;ego=&quot;, IntString, DyadComponents.
				| &quot;alter=&quot;, IntString, DyadComponents.
				| &quot;path=&quot;, MultiIntString, DyadComponents.
				| &quot;confirmed=&quot;, string, DyadComponents.
				| &quot;challenged=&quot;, string, DyadComponents.
				| \empty.
	 First: [tags: &quot;level=&quot;, &quot;counters=&quot;, &quot;kinTerm=&quot;, &quot;kinTermType=&quot;,  &quot;addOrRef=&quot;, &quot;ego=&quot;, &quot;alter=&quot;, &quot;path=&quot;, &quot;confirmed=&quot;, &quot;challenged=&quot;] 
 	 Follow: [&quot; /&gt;&quot;]
</p>   <p>
IntString -&gt; \&quot;, integer, \&quot;.
 	 First: [tags: &quot;level=&quot;, &quot;counters=&quot;, &quot;kinTerm=&quot;, &quot;kinTermType=&quot;,  &quot;addOrRef=&quot;, &quot;ego=&quot;, &quot;alter=&quot;, &quot;path=&quot;, &quot;confirmed=&quot;, &quot;challenged=&quot;] 
 	 Follow: [tags: same as First]
</p>   <p>
NOTE:  MultiIntString is defined in CFG style, but it is implemented simply as
	   a method that parses 0 or more integers from a string.
MultiIntString -&gt; \&quot;, PathInts, \&quot;.
 	 First: [tags: &quot;level=&quot;, &quot;counters=&quot;, &quot;kinTerm=&quot;, &quot;kinTermType=&quot;,  &quot;addOrRef=&quot;, &quot;ego=&quot;, &quot;alter=&quot;, &quot;path=&quot;, &quot;confirmed=&quot;, &quot;challenged=&quot;] 
 	 Follow: [tags: same as First]
</p>   <p>
PathInts -&gt; integer, MoreInts.
         |  \empty.
 	 First: [integer]	 Follow: [tag: &quot;&lt;/path&gt;&quot;]
</p>   <p>
MoreInts -&gt; comma, integer, MoreInts.
         |  \empty.
 	 First: [comma]	 Follow: [tag: &quot;&lt;/path&gt;&quot;]
</p>
*/
public class SILKFileGrammar {  }  
