<?xml version="1.0" encoding="UTF-8"?>
<!-- 
      Silk-status.xsl
      
      Generates status report from a Silk file
      Gary Simons, 23 Jan 2011
      Last updated: 11 July 2011
-->
<xsl:stylesheet version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:output method="html" version="4.0"/>
   <xsl:variable name="title">
      <xsl:text>Kinship terminology analysis for </xsl:text>
      <xsl:value-of select="/SIL_KinData/parameters/language/@name"/>
   </xsl:variable>

   <xsl:template match="/SIL_KinData">
      <html>
         <head>
            <title>
               <xsl:value-of select="$title"/>
            </title>
         </head>
         <body style="font-family:Arial Unicode MS">
            <hr/>
            <xsl:apply-templates select="parameters"/>
            <hr/>
            <xsl:apply-templates mode="toc" select="."/>
            <hr/>
            <xsl:apply-templates mode="stats" select="."/>
            <xsl:apply-templates select="accepted-defs"/>
            <xsl:apply-templates
               select="dyadsUndefinedRef | dyadsUndefinedAddr"/>
            <xsl:apply-templates select="silkin-issues"/>
         </body>
      </html>

   </xsl:template>

   <xsl:template match="parameters">
      <h1>
         <xsl:value-of select="$title"/>
      </h1>
      <table>
         <tr valign="top">
            <td>Authors:</td>
            <td>
               <xsl:for-each select="dataAuthors/*">
                  <xsl:if test="position() != 1">, </xsl:if>
                  <xsl:value-of select="@name"/>
               </xsl:for-each>
            </td>
         </tr>
         <tr valign="top">
            <td>Date created:</td>
            <td>
               <xsl:value-of select="createDate/@value"/>
            </td>
         </tr>
         <tr valign="top">
            <td>Latest update:&#160;</td>
            <td>
               <xsl:value-of select="lastDataChangeDate/@value"/>
            </td>
         </tr>
         <tr valign="top">
            <td>Latest suggestions:&#160;</td>
            <td>
               <xsl:value-of select="lastSuggestionDate/@value"/>
            </td>
         </tr>
      </table>
   </xsl:template>

   <xsl:template match="SIL_KinData" mode="toc">
      <ul>
         <li>
            <a href="#stats">Summary statistics for data set</a>
         </li>
         <xsl:apply-templates select="accepted-defs" mode="toc"/>
         <xsl:apply-templates
            select="dyadsUndefinedRef |
            dyadsUndefinedAddr"
            mode="toc"/>
         <li>
            <a href="#issues">Pending issues</a>
            <ol>
               <xsl:for-each select="silkin-issues/*">
                  <li><a href="#{count(preceding-sibling::*)+1}">
                        <xsl:value-of select="@kinTerm"/>
                     </a> (<xsl:apply-templates mode="label"
                        select="."/>)</li>
               </xsl:for-each>
            </ol>
         </li>
      </ul>
   </xsl:template>

   <xsl:template match="accepted-defs" mode="toc">
      <li>
         <a href="#accepted-{@type}">Defined terms of <xsl:choose>
               <xsl:when test="@type='Ref'">reference</xsl:when>
               <xsl:when test="@type='Adr'">address</xsl:when>
            </xsl:choose>
         </a>
      </li>
   </xsl:template>
   <xsl:template match="dyadsUndefinedRef" mode="toc">
      <li>
         <a href="#{name(.)}">Undefined terms of reference</a>
      </li>
   </xsl:template>
   <xsl:template match="dyadsUndefinedAddr" mode="toc">
      <li>
         <a href="#{name(.)}">Undefined terms of address</a>
      </li>
   </xsl:template>


   <xsl:template match="proposed-def" mode="label">
      <xsl:text>proposed definition</xsl:text>
   </xsl:template>
   <xsl:template match="synonym" mode="label">
      <xsl:text>possible synonym</xsl:text>
   </xsl:template>
   <xsl:template match="overlap" mode="label">
      <xsl:text>overlapping terms</xsl:text>
   </xsl:template>
   <xsl:template match="umbrella" mode="label">
      <xsl:text>possible umbrella term</xsl:text>
   </xsl:template>
   <xsl:template match="anomaly" mode="label">
      <xsl:text>possible anomaly</xsl:text>
   </xsl:template>
   <xsl:template match="data-request" mode="label">
      <xsl:text>data request</xsl:text>
   </xsl:template>


   <xsl:template match="SIL_KinData" mode="stats">
      <a name="stats"/>
      <h2>Summary statistics for data set</h2>
      <table>
         <col align="left"/>
         <col align="right"/>
         <tr valign="top">
            <td colspan="2">
               <i>Number of data points</i>
            </td>
         </tr>
         <tr valign="top">
            <td>&#160;&#160;&#160;Individuals:</td>
            <td>
               <xsl:value-of select="count(//individual)"/>
            </td>
         </tr>
         <tr valign="top">
            <td>&#160;&#160;&#160;Marriages:</td>
            <td>
               <xsl:value-of select="count(//family)"/>
            </td>
         </tr>
         <tr valign="top">
            <td>&#160;&#160;&#160;Dyads:</td>
            <td>
               <xsl:value-of select="count(dyadsUndefinedRef//dyad)"/>
            </td>
         </tr>
         <tr valign="top">
            <td colspan="2">
               <i>Terms of reference</i>
            </td>
         </tr>
         <tr valign="top">
            <td>&#160;&#160;&#160;Defined:</td>
            <td>
               <xsl:value-of
                  select="count(accepted-defs[@type='ref']/*)"/>
            </td>
         </tr>
         <tr valign="top">
            <td>&#160;&#160;&#160;Undefined:</td>
            <td>
               <xsl:value-of
                  select="count(dyadsUndefinedRef/dyadKinTerm)"/>
            </td>
         </tr>
         <tr valign="top">
            <td colspan="2">
               <i>Terms of address</i>
            </td>
         </tr>
         <tr valign="top">
            <td>&#160;&#160;&#160;Defined:</td>
            <td>
               <xsl:value-of
                  select="count(accepted-defs[@type='adr']/*)"/>
            </td>
         </tr>
         <tr valign="top">
            <td>&#160;&#160;&#160;Undefined:</td>
            <td>
               <xsl:value-of
                  select="count(dyadsUndefinedAddr/dyadKinTerm)"/>
            </td>
         </tr>
         <tr valign="top">
            <td colspan="2">
               <i>Pending issues</i>
            </td>
         </tr>
         <tr valign="top">
            <td>&#160;&#160;&#160;Proposed definitions:</td>
            <td>
               <xsl:value-of
                  select="count(silkin-issues/proposed-def)"/>
            </td>
         </tr>
         <tr valign="top">
            <td>&#160;&#160;&#160;Possible synonyms:</td>
            <td>
               <xsl:value-of select="count(silkin-issues/synonym)"/>
            </td>
         </tr>
         <tr valign="top">
            <td>&#160;&#160;&#160;Possible umbrella terms:</td>
            <td>
               <xsl:value-of select="count(silkin-issues/umbrella)"/>
            </td>
         </tr>
         <tr valign="top">
            <td>&#160;&#160;&#160;Possible anomalies:</td>
            <td>
               <xsl:value-of select="count(silkin-issues/anomaly)"/>
            </td>
         </tr>
         <tr valign="top">
            <td>&#160;&#160;&#160;Overlapping terms:</td>
            <td>
               <xsl:value-of select="count(silkin-issues/overlap)"/>
            </td>
         </tr>
         <tr valign="top">
            <td>&#160;&#160;&#160;Data requests:</td>
            <td>
               <xsl:value-of select="count(silkin-issues/data-request)"/>
            </td>
         </tr>
      </table>
   </xsl:template>

   <xsl:template match="accepted-defs">
      <a name="accepted-{@type}"/>
      <h2>Defined terms of <xsl:choose>
            <xsl:when test="@type='Ref'">reference</xsl:when>
            <xsl:when test="@type='Adr'">address</xsl:when>
         </xsl:choose>
      </h2>
      <table style="margin-left: 0.25in">
         <xsl:apply-templates select="proposed-def" mode="accepted"/>
      </table>
   </xsl:template>

   <xsl:template match="proposed-def" mode="accepted">
      <tr>
         <td><b><xsl:value-of select="@kinTerm"/></b>&#160;</td>
         <td>
            <xsl:for-each select="kin-term-def/definitions/clause">
               <xsl:if test="position() != 1"> or </xsl:if>
               <xsl:call-template name="generate-gloss">
                  <xsl:with-param name="literals" select="literal"/>
               </xsl:call-template>
            </xsl:for-each>
         </td>
      </tr>
   </xsl:template>

   <xsl:template match="dyadsUndefinedRef | dyadsUndefinedAddr">
      <a name="{name(.)}"/>
      <xsl:if test="name(.)='dyadsUndefinedRef'">
         <h2>Undefined terms of reference</h2>
      </xsl:if>
      <xsl:if test="name(.)='dyadsUndefinedAddr'">
         <h2>Undefined terms of address</h2>
      </xsl:if>
      <table style="margin-left: 0.25in">
         <tr>
            <th>Term</th>
            <th>Occurrences</th>
         </tr>
         <xsl:apply-templates select="dyadKinTerm"/>
      </table>
   </xsl:template>

   <xsl:template match="dyadKinTerm">
      <tr>
         <td>
            <xsl:value-of select="@kinTerm"/>
         </td>
         <td align="center">
            <xsl:value-of select="count(.//dyad)"/>
         </td>
      </tr>
   </xsl:template>

   <xsl:template match="silkin-issues">
      <a name="issues"/>
      <h2>Pending issues</h2>
      <xsl:apply-templates/>
   </xsl:template>

   <xsl:template match="gloss">
      <ul>
         <xsl:for-each select="element">
            <li>
               <xsl:value-of select="@text"/>
               <xsl:if test="following-sibling::element"> or </xsl:if>
            </li>
         </xsl:for-each>
      </ul>
      <xsl:if test="where">
         <p>where</p>
         <ul>
            <xsl:for-each select="where/cultural-pred">
               <li>
                  <i><xsl:value-of select="@kinTerm"/></i> = 
                  <xsl:for-each select="element">
                     <xsl:value-of select="@text"/>
                     <xsl:if test="following-sibling::element"> or </xsl:if>
                  </xsl:for-each>
               </li>
            </xsl:for-each>
         </ul>
      </xsl:if>

   </xsl:template>
   <xsl:template match="proposed-def">
      <xsl:variable name="number"
         select="count(preceding-sibling::*)+1"/>
      <xsl:variable name="term" select="@kinTerm"/>
      <a name="{$number}"/>
      <h3><xsl:value-of select="$number"/>. <i>
            <xsl:value-of select="$term"/>
         </i> (<xsl:apply-templates mode="label" select="."/>)</h3>
      <p>The term <i>
            <xsl:value-of select="$term"/>
         </i> looks similar to other terms in the kinship database (<i>
            <xsl:value-of select="kin-term-eqc/prototype//head"/>
         </i> in <xsl:value-of
            select="kin-term-eqc/prototype//language/@name"/>
         <xsl:for-each select="kin-term-eqc/members/kin-term-context"
            >, <i>
               <xsl:value-of select=".//head"/>
            </i> in <xsl:value-of select=".//language/@name"/>
         </xsl:for-each>). In these languages, the term is defined as
         follows: </p>
      <blockquote>
         <xsl:apply-templates select="kin-term-def/gloss"/>
         <!-- 
         <xsl:for-each select="kin-term-eqc/prototype//clause">
            <xsl:if test="position() != 1"> or </xsl:if>
            <xsl:call-template name="generate-gloss">
               <xsl:with-param name="literals" select="literal"/>
            </xsl:call-template>
         </xsl:for-each>
         -->
      </blockquote>
      <p>Consider each of the following questions in turn:</p>
      <ol>
         <xsl:for-each select="kin-term-def/gloss/element">
            <!-- <xsl:variable name="def">
               <xsl:call-template name="generate-gloss">
                  <xsl:with-param name="literals" select="literal"/>
               </xsl:call-template>
            </xsl:variable> -->
            <li>Can you think of a relationship that matches
                  "<xsl:value-of select="@text"/>", but is not called <i>
                  <xsl:value-of select="$term"/>
               </i>? </li>
         </xsl:for-each>
         <li>Are there any other relationships called <i>
               <xsl:value-of select="$term"/>
            </i> that are not covered by the above?</li>
      </ol>
      <p>Options:</p>
      <ul>
         <li>If your answer to all of these questions is "No", then
            Accept the proposed definition.</li>
         <li>For every "Yes" answer, go to the genealogy editor and
            add examples of the relationships that do not fit the
            proposed definition. The proposed definition will go away
            the next time you "Get New Suggestions". You may also
            specify Reject now in order to remove this item from the
            list of pending suggestions. Note, however, if you simply
            Reject without entering any counterevidence, the same
            suggestion will return when you "Get New
            Suggestions".</li>
         <li>If you are not sure, you can do nothing for now.</li>
      </ul>
   </xsl:template>

   <xsl:template match="synonym">
      <xsl:variable name="number"
         select="count(preceding-sibling::*)+1"/>
      <a name="{$number}"/>
      <h3><xsl:value-of select="$number"/>. <i>
            <xsl:value-of select="@kinTerm"/>
         </i> (<xsl:apply-templates mode="label" select="."/>)</h3>
      <p>The following two terms (covering kintype "<xsl:value-of
         select="normalize-space(pc-strings-covered)"/>") appear to be synonyms: </p>
      <dl>
         <dd><i>
               <xsl:value-of select="@kinTerm"/>
            </i>&#160; (<xsl:apply-templates select="kinTerm-dyads"
            />) </dd>
         <dd><i>
               <xsl:value-of select="other-term"/>
            </i>&#160; (<xsl:apply-templates select="other-term-dyads"
            />) </dd>
      </dl>
      <p>Options:</p>
      <ul>
         <li>If this is true, Accept this suggestion. Be sure to use
            the radio buttons to select the term that is primary
            before clicking Accept.</li>
         <li>If one of these terms is just a misspelling of the proper
            term, go to the genealogy editor and fix the spelling.
            Choose each of the listed Ego to Alter pairs in turn, and
            correct the spelling in the appropriate data field.</li>
         <li>If the terms are not synonyms, go to the genealogy editor
            and add examples of relationships that will illustrate the
            difference between these two terms. The synonym proposal
            will then go away the next time you "Get New Suggestions".
            You may also specify Reject now in order to remove this
            item from the list of pending suggestions. Note, however,
            if you simply Reject without entering any counterevidence,
            the same suggestion will return when you "Get New
            Suggestions".</li>
         <li>If you are not sure, you can do nothing for now.</li>
      </ul>
   </xsl:template>
   
   <xsl:template match="overlap">
      <xsl:variable name="number"
         select="count(preceding-sibling::*)+1"/>
      <a name="{$number}"/>
      <h3><xsl:value-of select="$number"/>. <i>
         <xsl:value-of select="@kinTerm"/>
      </i> (<xsl:apply-templates mode="label" select="."/>)</h3>
      <p>The following two terms seem to have distinct 
         meanings, but their coverage overlaps in a few 
         instances (covering kintype "<xsl:value-of
            select="normalize-space(pc-strings-overlap)"/>"): </p>
      <dl>
         <dd><i>
            <xsl:value-of select="@kinTerm"/>
         </i>&#160; (<xsl:apply-templates select="kinTerm-dyads"
         />) </dd>
         <dd><i>
            <xsl:value-of select="other-term"/>
         </i>&#160; (<xsl:apply-templates select="other-term-dyads"
         />) </dd>
      </dl>
      <p>Options:</p>
      <ul>
         <li>If it is true that the meanings should overlap, Accept
            this overlap.</li>
         <li>If the meanings of these terms do not really 
            overlap, you should Edit the overlapping 
            dyads shown in the Action Box as needed, then click "Done." </li>
         <li>If the meanings do not really overlap, but the overlapping 
            dyads are correct as far as the genealogical information
            given, this means there is 
            an additional property or 
            fact that distinguishes the dyads. 
            If this is the case, you should Reject this overlap and analyze 
            the property that distinguishes the dyads. If it is 
            not a genealogical property but a social one 
            (e.g. clan membership), consider creating a 
            User Defined Property to capture that information.</li>
         <li>If you are not sure, you can do nothing for now.</li>
      </ul>
   </xsl:template>
   
   <!-- 
   I 
   If the meanings do not overlap, but the overlapping 
   dyads are correct (e.g. there is some property or 
   fact that distinguishes the dyads that seem to be 
   overlapping), then REJECT this overlap and analyze 
   the property that distinguishes the dyads. If it is 
   not a genealogical property but a social one 
   (e.g. clan membership), consider creating a 
   User Defined Property to capture that information.
-->
   <xsl:template match="umbrella">
      <xsl:variable name="number"
         select="count(preceding-sibling::*)+1"/>
      <a name="{$number}"/>
      <h3><xsl:value-of select="$number"/>. <i>
            <xsl:value-of select="@kinTerm"/>
         </i> (<xsl:apply-templates mode="label" select="."/>)</h3>
      <p>The term <i>
            <xsl:value-of select="@kinTerm"/>
         </i> appears to be an umbrella term covering: </p>
      <blockquote>
         <xsl:for-each select=".//sub-kin-term">
            <xsl:if test="position() != 1">, </xsl:if>
            <i>
               <xsl:value-of select="."/>
            </i>
         </xsl:for-each>
      </blockquote>
      <p>Options:</p>
      <ul>
         <li>If this is true, Accept this suggestion.</li>
         <xsl:choose>
            <xsl:when test="count(.//sub-kin-term)=1">
               <!--<li>If it is the other way around (namely, that 
                  <i><xsl:value-of select=".//sub-kin-term"/></i> is the
                  broader term
                  and <i><xsl:value-of select="@kinTerm"/></i> is the
                  narrower), ... do this ...
               </li>-->
               <li>If the two terms are really synonyms, choose "Make
                  these synonyms".</li>
               <li>If the terms actually have overlapping ranges of
                  meaning, go to the genealogy editor and add examples
                  of relationships that will illustrate the difference
                  between these two terms. The umbrella-term proposal
                  will then go away the next time you "Get New
                  Suggestions". You may also specify Reject now in
                  order to remove this item from the list of pending
                  suggestions. Note, however, if you simply Reject
                  without entering any counterevidence, the same
                  suggestion will return when you "Get New
                  Suggestions".</li>
            </xsl:when>
            <xsl:otherwise>
               <li>If the listed sub-terms do not fall completely
                  within the range of <i>
                     <xsl:value-of select="@kinTerm"/>
                  </i>, go to the genealogy editor and add examples of
                  relationships that will illustrate that the other
                  terms fall outside the range of <i>
                     <xsl:value-of select="@kinTerm"/>
                  </i>. The umbrella-term proposal will then go away
                  the next time you "Get New Suggestions". You may
                  also specify Reject now in order to remove this item
                  from the list of pending suggestions. Note, however,
                  if you simply Reject without entering any
                  counterevidence, the same suggestion will return
                  when you "Get New Suggestions". </li>
            </xsl:otherwise>
         </xsl:choose>
         <li>If you are not sure, you can do nothing for now.</li>
      </ul>
   </xsl:template>

   <xsl:template match="anomaly">
      <xsl:variable name="number"
         select="count(preceding-sibling::*)+1"/>
      <a name="{$number}"/>
      <h3><xsl:value-of select="$number"/>. <i>
            <xsl:value-of select="@kinTerm"/>
         </i> (<xsl:apply-templates mode="label" select="."/>)</h3>
      <xsl:if
         test="(basis-type='definition' or basis-type='clause')">
         <p>There is a definition in the library of known kinship
            systems that looks like a close fit for <i><xsl:value-of
                  select="@kinTerm"/></i>. That definition is as
            follows: </p>
         <blockquote>
            <xsl:apply-templates select="basis/kin-term-def/gloss"/>
            <!-- <xsl:for-each select="basis//clause">
               <xsl:if test="position() != 1"> or </xsl:if>
               <xsl:call-template name="generate-gloss">
                  <xsl:with-param name="literals" select="literal"/>
               </xsl:call-template>
            </xsl:for-each> -->
         </blockquote>

         <xsl:if test="anomaly-type='falseNeg'">
            <p>All of the dyads labelled as 
               <i><xsl:value-of select="@kinTerm"/></i> fit the above
               definition. However, there are one or more dyads that fit 
               and are not  labeled as
                     <i><xsl:value-of select="@kinTerm"/></i>;
                  <xsl:apply-templates select="misfits"/>.
            </p>
         </xsl:if>
         <xsl:if test="anomaly-type='falsePos'">
            <p>However, there are one or more dyads that have been
               labeled as <i><xsl:value-of select="@kinTerm"/></i>
               that do not fit the above definition;
                  <xsl:apply-templates select="misfits"/>.
            </p>
         </xsl:if>
         <xsl:if test="anomaly-type='nearMiss'">
            <p>However, there are a few dyads that are preventing a
               perfect fit with the above definition. Either they use the
               term and don't fit the definition, or they fit the
               definition but don't use the term;
               <xsl:apply-templates select="misfits">
                  <xsl:with-param name="with-term">yes</xsl:with-param>
               </xsl:apply-templates>.
            </p>
         </xsl:if>
         <p>The action box for anomalies allows you to review each of
            these dyads and act accordingly. Select each of the dyads
            in turn from the dropdown list, and click the 
            radio button for the appropriate action:</p>
         <ul>
            <li>If you are not sure, you may select "No Action" and do 
            nothing for now.</li>
            <li>If the dyad is correct as it stands, select "This dyad
               is CORRECT". This will cause the system to 
               stop trying to fit this particular definition and to no
               longer doubt this dyad in the future.</li>
            <li>If the dyad is completely wrong, you may simply select
            "This dyad is wrong; DELETE it" to remove it from the genealogy chart.</li>
            <li>If the dyad has the wrong kin term assigned
               or the term is misspelled, select "EDIT the kin term
               to" and type the correct term into the text box.</li>
            <li>If the problem involves a synonym or a regional
               variant, and you want to have multiple terms assigned
               to the dyad, click on the button for "SHOW This Dyad on
               the Chart" to open the genealogy editor with
               this dyad already selected and edit as needed.</li>
         </ul>
         <p>After selecting one of the
            radio buttons, click the button for "RECORD Decision on
            This Dyad"  before
            moving to the next dyad.</p>
      </xsl:if>
      <xsl:if test="basis-type='contradiction'">
         <p>The explanation for a contradiction has not yet been
            implemented.</p>
      </xsl:if>
   </xsl:template>

   <xsl:template match="data-request">
      <xsl:variable name="number"
         select="count(preceding-sibling::*)+1"/>
      <a name="{$number}"/>
      <h3><xsl:value-of select="$number"/>. <i>
            <xsl:value-of select="@kinTerm"/>
         </i> (<xsl:apply-templates mode="label" select="."/>)</h3>
      <p>To resolve a conflict between several possible definitions
         for <i><xsl:value-of select="@kinTerm"/></i>, we need to
         provide some dyads that are not yet in the data. Please
         provide at least one of the following:</p>
      <ol>
         <xsl:for-each select="named-dyad | kin-type-dyad">
            <li>
               <p>The needed dyad is formally specified as the
                  following path or relationships from Ego to Alter:
               </p>
               <blockquote>
                  <ul>
                     <li><xsl:value-of
                        select="gloss/element/@text"/></li>
                  </ul>
               </blockquote>
               <p><xsl:if
                     test="self::named-dyad"> Please go to the
                     genealogy editor and set Ego to person
                        #<xsl:value-of select="ego-serial"/> and Alter
                     to person #<xsl:value-of select="alter-serial"/>.
                     These two persons have the required relationship.
                     Please fill in the kin term that Ego calls Alter. </xsl:if>
                  <xsl:if test="self::kin-type-dyad"> There is not yet
                     a pair of people in the data who are related in
                     that way. Can you find such a pair, add the
                     missing persons to the genealogy chart, and then
                     supply the kin term for that dyad? </xsl:if>
               </p>
            </li>
         </xsl:for-each>

      </ol>

   </xsl:template>

   <xsl:template match="kin-term-dyads | other-term-dyads | misfits |
      kinTerm-dyads">
      <xsl:param name="with-term">no</xsl:param>
      <xsl:text>see Ego-Alter dyad</xsl:text><xsl:if
         test="count(dyad)>1">s</xsl:if>: <xsl:for-each select="dyad">
         <xsl:if test="preceding-sibling::dyad">, </xsl:if>
         <xsl:value-of select="concat(@ego, '-', @alter)"/>
         <xsl:if test="$with-term='yes'"> (<i><xsl:value-of
                  select="@kinTerm"/></i>) </xsl:if>
      </xsl:for-each>
   </xsl:template>

   <!-- Generates the gloss for a sequence of literals -->
   <xsl:template name="generate-gloss">
      <xsl:param name="literals"/>
      <xsl:choose>
         <xsl:when test="count($literals)=1">
            <xsl:apply-templates select="$literals[1]" mode="gloss"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:apply-templates select="$literals[1]" mode="gloss"/>
            <xsl:text> </xsl:text>
            <xsl:call-template name="generate-gloss">
               <xsl:with-param name="literals"
                  select="$literals[1]/following-sibling::literal"/>
            </xsl:call-template>
         </xsl:otherwise>
      </xsl:choose>

   </xsl:template>
   <xsl:template match="literal" mode="gloss">
      <xsl:choose>
         <xsl:when
            test="predicate = 'male' or predicate = 'female'
            or predicate = 'elder' or predicate = 'younger'
            or predicate = 'dead' or predicate = 'divorced' ">
            <xsl:value-of select="predicate"/>
         </xsl:when>
         <xsl:when
            test="predicate = 'equal' or predicate = 'not'
            or predicate = 'gender' or predicate = 'contains'
            or predicate = 'lessThan' or predicate = 'greaterThan'
            or predicate = 'lessOrEql' or predicate = 'greateOrEql' ">
            <i>test</i>
         </xsl:when>
         <xsl:otherwise>
            <xsl:choose>
               <xsl:when test="predicate = 'spice'">spouse</xsl:when>
               <xsl:when test="predicate = 'parents'"
                  >parent</xsl:when>
               <xsl:otherwise>
                  <xsl:value-of select="predicate"/>
               </xsl:otherwise>
            </xsl:choose>
            <xsl:if test="following-sibling::literal">'s</xsl:if>
         </xsl:otherwise>
      </xsl:choose>

   </xsl:template>
</xsl:stylesheet>
