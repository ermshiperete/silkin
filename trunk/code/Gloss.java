import java.util.*;
import java.io.Serializable;

/** This class represents the XML structure of an English gloss of the
 * definition of a KinTermDef. The XML schema is:
 *  <gloss>  
	<element text="…."/>
	<element text="…."/>
	<element text="…."/>
	<where>
		<cultural-pred kinTerm="..">
			<element text="…."/>
			<element text="…."/>
		</cultural-pred>
		<cultural-pred kinTerm="..">
			<element text="…."/>
			<element text="…."/>
		</cultural-pred>
		<cultural-pred kinTerm="..">
			<element text="…."/>
			<element text="…."/>
		</cultural-pred>
	</where>
    </gloss>

 *
 * @author 	Gary Morris, Northern Virginia Community College  garymorris2245@verizon.net
 */
public class Gloss implements Serializable  {
    ArrayList<String> elements = new ArrayList<String>();
    TreeMap<String, ArrayList<String>> culturalPreds;
    ArrayList<String> citations, urls;
    
    public String toString() {
        return toSILKString("");
    }
    
    public String toSILKString(String bacer) {
        if (elements.isEmpty()) {
            return "";
        }
        boolean doCitations = false;
        String s = bacer + "<gloss>\n" , spacer = "\t";
        for (String el : elements) {
            s += bacer + spacer + "<element text=\"" + 
                    FamilyPanel.convertBannedCharacters(el) + "\"/>\n";
        }
        if (culturalPreds != null) {
            s += bacer + spacer + "<where>\n" ;
            Iterator iter = culturalPreds.entrySet().iterator();
            while (iter.hasNext()) {
                Map.Entry<String, ArrayList<String>> entry = 
                        (Map.Entry<String, ArrayList<String>>)iter.next();
                s += bacer + spacer + spacer + "<cultural-pred kinTerm=\"" 
                        + entry.getKey() + "\">\n";
                for (String el : entry.getValue()) {
                    s += bacer + spacer + spacer + spacer + "<element text=\"";
                    if (el.equals("null")) {
                        String cits = " No details available.";
                        if (citations != null && !citations.isEmpty()) {
                            cits = " See the citations for details.";
                            doCitations = true;
                        }
                        s += "an auxilliary predicate." + cits;
                    } else {
                        s += FamilyPanel.convertBannedCharacters(el);
                    }
                    s += "\"/>\n";
                }
                s += bacer + spacer + spacer + "</cultural-pred>\n";
            }  //  end of loop thru culturalPreds  
            s += bacer + spacer + "</where>\n" ;
        }
        if (doCitations) { 
            s += bacer + spacer + "<citations>\n" ;
            for (String cite : citations) {
                s += bacer + spacer + spacer + "<cite text=\"" + cite + "\"/>\n";
            }
            s += bacer + spacer + "</citations>\n" ;
        }
        return s + bacer + "</gloss>\n";
    }
    
    public void addCulturalPred(String cPred, String el) {
        if (culturalPreds == null) {
            culturalPreds = new TreeMap<String, ArrayList<String>>();
        }
        if (culturalPreds.get(cPred) == null) {
            culturalPreds.put(cPred, new ArrayList<String>());
        }
        ArrayList<String> els = culturalPreds.get(cPred);
        els.add(el);
    }
    
    public void addCulturalPred(String cPred, Gloss glozz) {
        if (culturalPreds == null) {
            culturalPreds = new TreeMap<String, ArrayList<String>>();
        }
        if (culturalPreds.get(cPred) == null) {
            culturalPreds.put(cPred, new ArrayList<String>());
        }
        ArrayList<String> els = culturalPreds.get(cPred);
        els.addAll(glozz.elements);
        
    }
    
    public void addCitation(String cite) {
        if (citations == null) {
            citations = new ArrayList<String>();
        }
        citations.add(cite);
    }
    
}
