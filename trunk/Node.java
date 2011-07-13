

import java.util.*;
import java.io.*;
import java.awt.Point;

public class Node implements Serializable {

    public static final Node self = makeSelfNode();

    public Individual indiv;
    public String pcString;
    private int treelevel;
    public ArrayList<Object> miniPreds = new ArrayList<Object>();
    public ArrayList<Object> kinTermsRef = new ArrayList<Object>(),
                            extKinTermsRef = new ArrayList<Object>(),
                            exceptionsRef = new ArrayList<Object>(),
                            kinTermsAddr = new ArrayList<Object>(),
                            extKinTermsAddr = new ArrayList<Object>(),
                            exceptionsAddr = new ArrayList<Object>();
    public String ktSuffix = "";
    public int appearances = 1;

    public Node() { }

    public Node clone() {
        Node copy = new Node();
        copy.indiv = indiv;
        copy.pcString = pcString;
        copy.treelevel = treelevel;
        copy.miniPreds = miniPreds;
        copy.kinTermsRef = kinTermsRef;
        copy.extKinTermsRef = extKinTermsRef;
        copy.exceptionsRef = exceptionsRef;
        copy.kinTermsAddr = kinTermsAddr;
        copy.extKinTermsAddr = extKinTermsAddr;
        copy.exceptionsAddr = exceptionsAddr;
        copy.ktSuffix = ktSuffix;
        copy.appearances = appearances;        
        return copy;
    }

    static Node makeSelfNode() {
        Node selfNode = new Node();
        selfNode.pcString = "";
        selfNode.treelevel = 0;
        selfNode.kinTermsRef.add("Ego");
        selfNode.kinTermsAddr.add("Ego");
        return selfNode;
    }

    public void setLevel(int myLevel) {
        this.treelevel = myLevel;
    }

    public int getLevel() {
        return treelevel;
    }

    public String toSILKString() {
        String image = "";
        image += "<pcString>" + pcString + "</pcString> ";
        image += "<level>" + treelevel + "</level>\n\t\t";
        if (!miniPreds.isEmpty()) {
            image += "<miniPreds> ";
            for (Object o : miniPreds) {
                image += makeMiniPredXML(o);
            }
            image += " </miniPreds> ";
        }
        image += writeKinTerms();
        return image;
    }

    public String makeMiniPredXML(Object mini) {
        String s = "<pred rel=\"",
               miniPred = (String)mini;
        int left = miniPred.indexOf("("),
            comma = miniPred.indexOf(","),
            right = miniPred.indexOf(")");
        String pred = miniPred.substring(0, left),
               arg0 = miniPred.substring(left +2, comma),
               arg1 = miniPred.substring(comma +2, right);
        s += pred + "\" arg0=\"" + arg0 + "\" arg1=\"" + arg1;
        return s + "\"/>";
    }

    String makeTagBlock(String tagGuts, Iterator termIter) {
        String s = "", term;
        while (termIter.hasNext()) {
            term = "";
            while (term.equals("") && termIter.hasNext()) {
                term = (String)termIter.next();
            } // got a non-blank term
            s += term + (termIter.hasNext() ? ", " : "");
        }
        if (s.equals("")) return s;
        else return "<" + tagGuts + ">" + s + "</" + tagGuts + ">";
    }

    public String writeKinTerms() {
        String image = "";
        Iterator ktIter;
        if ((kinTermsRef != null) && (kinTermsRef.size() > 0)) {
            ktIter = kinTermsRef().iterator();
            image += makeTagBlock("PR", ktIter);
        }
        if ((extKinTermsRef != null) && (extKinTermsRef.size() > 0)) {
            ktIter = extKinTermsRef().iterator();
            image += makeTagBlock("ER", ktIter);
        }
        if ((exceptionsRef != null) && (exceptionsRef.size() > 0)) {
            ktIter = exceptionsRef().iterator();
            image += makeTagBlock("XR", ktIter);
        }
        if ((kinTermsAddr != null) && (kinTermsAddr.size() > 0)) {
            ktIter = kinTermsAddr().iterator();
            image += makeTagBlock("PA", ktIter);
        }
        if ((extKinTermsAddr != null) && (extKinTermsAddr.size() > 0)) {
            ktIter = extKinTermsAddr().iterator();
            image += makeTagBlock("EA", ktIter);
        }
        if ((exceptionsAddr != null) && (exceptionsAddr.size() > 0)) {
            ktIter = exceptionsAddr().iterator();
            image += makeTagBlock("XA", ktIter);
        }
        return image;
    }  //  end of method writeKinTerms

    public void replaceTerms(ArrayList<String> terms, String type, String clas) {
        if (clas.equals("reference")) {
            if (type.equals("primary")) {
                kinTermsRef = new ArrayList<Object>(terms);
            } else if (type.equals("extended")) {
                extKinTermsRef = new ArrayList<Object>(terms);
            } else {
                exceptionsRef = new ArrayList<Object>(terms);
            }
        } else {
            if (type.equals("primary")) {
                kinTermsAddr = new ArrayList<Object>(terms);
            } else if (type.equals("extended")) {
                extKinTermsAddr = new ArrayList<Object>(terms);
            } else {
                exceptionsAddr = new ArrayList<Object>(terms);
            }
        }
    }

    public void addTerms(ArrayList<String> terms, String type, String clas) {
        for (String term : terms) {
            addTerm(term, type, clas);
        }
    }

    /**
    Add <code>term</code> to the appropriate list of kinTerms.

    @param	term	a kinship term.
    @param	type	must be 'primary' or 'extended' or 'exception'
    @param	clas	must be 'reference' or 'address'
     */
    public int addTerm(String term, String type, String clas) {  // to assure only Strings are inserted
        int nmbr = 0;
        if (term == null) return 0;
        if (clas.equals("reference")) {
            if (type.equals("primary")) {
                if (kinTermsRef == null) {
                    kinTermsRef = new ArrayList<Object>();
                }
                if (! kinTermsRef.contains(term)) {
                    kinTermsRef.add(term);
                    nmbr++;
                }
            } else if (type.equals("extended")) {
                if (extKinTermsRef == null) {
                    extKinTermsRef = new ArrayList<Object>();
                }
                if (! extKinTermsRef.contains(term)) {
                    extKinTermsRef.add(term);
                    nmbr++;
                }
            } else {
                if (exceptionsRef == null) {
                    exceptionsRef = new ArrayList<Object>();
                }
                if (! exceptionsRef.contains(term)) {
                    exceptionsRef.add(term);
                    nmbr++;
                }
            }
        } else {
            if (type.equals("primary")) {
                if (kinTermsAddr == null) {
                    kinTermsAddr = new ArrayList<Object>();
                }
                if (! kinTermsAddr.contains(term)) {
                    kinTermsAddr.add(term);
                    nmbr++;
                }
            } else if (type.equals("extended")) {
                if (extKinTermsAddr == null) {
                    extKinTermsAddr = new ArrayList<Object>();
                }
                if (! extKinTermsAddr.contains(term)) {
                    extKinTermsAddr.add(term);
                    nmbr++;
                }
            } else {
                if (exceptionsAddr == null) {
                    exceptionsAddr = new ArrayList<Object>();
                }
                if (! exceptionsAddr.contains(term)) {
                    exceptionsAddr.add(term);
                    nmbr++;
                }
            }
        }
        return nmbr;
    }  //  end of method replaceTerms

    /**  Determine whether any kinship terms are present.

    @return	  true if any term are found.  */
    public boolean hasKinTerms() {
        if (kinTermsRef.size() > 0 || extKinTermsRef.size() > 0
            || kinTermsAddr.size() > 0 || extKinTermsAddr.size() > 0
            || exceptionsRef.size() > 0 || exceptionsAddr.size() > 0) {
            return true;
        } else return false;
    }  //  end of method hasKinTerms

    public int nmbrOfKinTerms() {
        ArrayList<String> terms = getKinTerms(true);
        int count = terms.size();
        terms = getKinTerms(false);
        count += terms.size();
        return count;
    }
    
    public void addKinTermsFrom(Node otherNode) {
        kinTermsRef.addAll(otherNode.kinTermsRef());
        extKinTermsRef.addAll(otherNode.extKinTermsRef());
        exceptionsRef.addAll(otherNode.exceptionsRef());
        kinTermsAddr.addAll(otherNode.kinTermsAddr());
        extKinTermsAddr.addAll(otherNode.extKinTermsAddr());
        exceptionsAddr.addAll(otherNode.exceptionsAddr());
    }

    public boolean sameMiniPreds(Node otherNode) {
        if (otherNode == null) return false;
        if (miniPreds.size() != otherNode.miniPreds.size()) return false;
        for (int i=0; i < miniPreds.size(); i++) {
            String myMini = (String)miniPreds.get(i);
            String otherMini = (String)otherNode.miniPreds.get(i);
            if (! myMini.equals(otherMini)) return false;
        }
        return true;
    }


    /**  Return an AList of any kinship terms found.
    @param  addr    true if seeking terms of address; false = reference
    @return list of terms found.  */
    public ArrayList<String> getKinTerms(boolean addr) {
        ArrayList<String> terms = new ArrayList<String>();
        if (addr) {
            if (kinTermsAddr != null && kinTermsAddr.size() > 0) {
                for (int i=0; i < kinTermsAddr.size() ; i++) {
                    terms.add((String)kinTermsAddr.get(i));
                }
            }
            if (extKinTermsAddr != null && extKinTermsAddr.size() > 0) {
                for (int i=0; i < extKinTermsAddr.size() ; i++) {
                    terms.add((String)extKinTermsAddr.get(i));
                }
            }
            if (exceptionsAddr != null && exceptionsAddr.size() > 0) {
                for (int i=0; i < exceptionsAddr.size() ; i++) {
                    terms.add((String)exceptionsAddr.get(i));
                }
            }
        }else {
            if (kinTermsRef != null && kinTermsRef.size() > 0) {
                for (int i=0; i < kinTermsRef.size() ; i++) {
                    terms.add((String)kinTermsRef.get(i));
                }
            }
            if (extKinTermsRef != null && extKinTermsRef.size() > 0) {
                for (int i=0; i < extKinTermsRef.size() ; i++) {
                    terms.add((String)extKinTermsRef.get(i));
                }
            }
            if (exceptionsRef != null && exceptionsRef.size() > 0) {
                for (int i=0; i < exceptionsRef.size() ; i++) {
                    terms.add((String)exceptionsRef.get(i));
                }
            }
        }
        return terms;
    }


    /**  Take the pcString and miniPreds of this node and
     *   'invert' them for a node containing the reciprocal kinTerm.
     * 
     @param  altNode    receiver of inverted list & string
     */
    public void invertMiniPredsAndPCStringFor(Node node) {
        String revPred;
        ArrayList<Object> revMiniPreds = new ArrayList<Object>();
        for (int i = miniPreds.size() -1; i >= 0; i--) {
            revPred = reversePred((String)miniPreds.get(i));
            revMiniPreds.add(revPred);
        }
        node.pcString = ClauseBody.sumStr(revMiniPreds);
        node.miniPreds = revMiniPreds;
    }

    /**  Reverse the miniPred by inverting the predicate and
     *   reversing the 2 arguments. 
     *
     @param     miniPred    e.g. Fa(#2,#9). arg0 = #2 and arg1 = #9
     @return    the reverse, e.g. Da(#9,#2)      */
    public String reversePred(String miniPred) {
        ArrayList<Individual> ppl = Context.current.individualCensus;
        int left = miniPred.indexOf("("),
            comma = miniPred.indexOf(","),
            end = miniPred.indexOf(")");
        int arg0num = Integer.parseInt(miniPred.substring(left +2, comma)),
            arg1num = Integer.parseInt(miniPred.substring(comma +2, end));
        String revPred = "", rel = miniPred.substring(0, left);
        boolean male1 = ppl.get(arg1num).gender.equals("M");
        // parent-child terms
        if (rel.equals("Fa") || rel.equals("Mo")) {
            revPred = (male1 ? "So" : "Da");
        }else if (rel.equals("So") || rel.equals("Da")) {
            revPred = (male1 ? "Fa" : "Mo");
        }else if(rel.equals("Stfa") || rel.equals("Stmo")) {
            revPred = (male1 ? "Stso" : "Stda");
        }else if (rel.equals("Stso") || rel.equals("Stda")) {
            revPred = (male1 ? "Stfa" : "Stmo");
        // spousal terms
        }else if (rel.equals("Hu") || rel.equals("Wi")) {
            revPred = (male1 ? "Hu" : "Wi");
        // sibling terms
        }else if (rel.equals("Bro") || rel.equals("Sis")) {
            revPred = (male1 ? "Bro" : "Sis");
        }else if (rel.equals("Stbro") || rel.equals("Stsis")) {
            revPred = (male1 ? "Stbro" : "Stsis");
        }else if (rel.equals("Hbro") || rel.equals("Hsis")) {
            revPred = (male1 ? "Hbro" : "Hsis");
        }else {
            System.out.println("Failed to reverse relationship: " + rel);
        }
        return revPred + "(#" + arg1num + ",#" + arg0num + ")";
    }


    /**   Return an ArrayList<Object> of primary kinship terms of reference  which is a shallow copy of the list in this Node.

    @return	  an ArrayList<Object> of Strings, each of which is a kinship term, or null.  */
    public ArrayList<Object> kinTermsRef() {
        if (kinTermsRef == null) {
            return null;
        }
        return new ArrayList<Object>(kinTermsRef);
    }  //  end of method kinTermsRef

    /**
    Return an ArrayList<Object> of extended kinship terms of reference  which is a shallow copy of the list in this Node.

    @return	  an ArrayList<Object> of Strings, each of which is an extended kinship term, or null.
     */
    public ArrayList<Object> extKinTermsRef() {
        if (extKinTermsRef == null) {
            return null;
        }
        return new ArrayList<Object>(extKinTermsRef);
    }  //  end of method extKinTermsRef

    /**
    Return an ArrayList<Object> of Exceptional kinship terms of reference which is a shallow copy of the list in this Node.

    @return	  an ArrayList<Object> of Strings, each of which is an Exceptional kinship term, or null.
     */
    public ArrayList<Object> exceptionsRef() {
        if (exceptionsRef == null) {
            return null;
        }
        return new ArrayList<Object>(exceptionsRef);
    }

    /**
    Return an ArrayList<Object> of primary kinship terms of address which is a shallow copy of the list in this Node.

    @return	  an ArrayList<Object> of Strings, each of which is a kinship term, or null.
     */
    public ArrayList<Object> kinTermsAddr() {
        if (kinTermsAddr == null) {
            return null;
        }
        return new ArrayList<Object>(kinTermsAddr);
    }  //  end of method kinTermsAddr

    /**
    Return an ArrayList<Object> of extended kinship terms of address which is a shallow copy of the list in this Node.

    @return	  an ArrayList<Object> of Strings, each of which is an extended kinship term, or null.
     */
    public ArrayList<Object> extKinTermsAddr() {
        if (extKinTermsAddr == null) {
            return null;
        }
        return new ArrayList<Object>(extKinTermsAddr);
    }  //  end of method extkinTermsAddr

    /**
    Return an ArrayList<Object> of exceptional kinship terms of address which is a shallow copy of the list in this Node.

    @return	  an ArrayList<Object> of Strings, each of which is an Exceptional kinship term, or null.
     */
    public ArrayList<Object> exceptionsAddr() {
        if (exceptionsAddr == null) {
            return null;
        }
        return new ArrayList<Object>(exceptionsAddr);
    }
}
