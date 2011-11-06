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
        String s = bacer + "<gloss>\n" , spacer = "\t";
        for (String el : elements) {
            s += bacer + spacer + "<element text=\"" + el + "\"/>\n";
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
                    s += bacer + spacer + spacer + spacer + "<element text=\"" + el + "\"/>\n";
                }
                s += bacer + spacer + spacer + "</cultural-pred>\n";
            }  //  end of loop thru culturalPreds  
            s += bacer + spacer + "</where>\n" ;
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
    
    public void addCitation(String cite) {
        if (citations == null) {
            citations = new ArrayList<String>();
        }
        citations.add(cite);
    }
    
}
