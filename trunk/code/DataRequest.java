/**
 *
 * @author 	Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
 */

import java.util.*;
import java.io.*;

public class DataRequest extends Issue {

        ArrayList<Library.CB_Ptr> relatedCB_Ptrs;

        public DataRequest() {
        }  //  0-arg constructor for Serialization

        public DataRequest(String localKinTerm, ArrayList<Object> questions, ArrayList<Library.CB_Ptr> relatedCBList) {
            kinTerm = localKinTerm;
            this.questions = questions;
            relatedCB_Ptrs = relatedCBList;
        }  //  normal constructor

        public String typeString() { return "Data Request"; }

        public String toThyString() {
            String s = "(";
            // insert guts of method here
            return s + ")";
        }

        public void toSILKFile(PrintWriter pw) {
            String spacer = "\t", dblSpacer = "\t\t";
            pw.println(spacer + "<data-request kinTerm=\"" + kinTerm + "\">");
            if (processed) {
                pw.println(dblSpacer + "<processed>true</processed>");
            }
//            pw.println(questionsToSILKString(dblSpacer));
            for (Library.CB_Ptr ptr : relatedCB_Ptrs) {
                pw.println(dblSpacer + spacer + ptr.toSILKString());
            }
            pw.println(spacer + "</data-request>");
        }

        public String toString() {
            String rep = "Data requests in descending order for: " + kinTerm;
            for (int i = 0; i < Math.min(3, relatedCB_Ptrs.size()); i++) {
                Library.CB_Ptr cbPtr = relatedCB_Ptrs.get(i);
                try {
                    rep += "\n\tFind and classify: " + cbPtr.getClause().pcString
                            + "\n\t\t" + cbPtr.getClause().body;
                } catch (Exception exc) {
                    System.out.println("***** ERROR in Discriminator.toString: " + exc);
                }
            }
            if (relatedCB_Ptrs.size() > 3) {
                rep += "\n\t\t...\n";
            }
            return rep + "\n";
        }  // end of over-riding toString

        public void removeChallengedDyads() {
            return;
        }

        public void buildDiscrimDyads(Learned_DT lrnDT, DomainTheory sourceDT)
                throws KSParsingErrorException, JavaSystemException, KSBadHornClauseException, KSNoChainOfRelations2Alter,
                KSInternalErrorException, KSConstraintInconsistency, KinshipSystemException, ClassNotFoundException {
            //  NOTE:	We do not deal with UDPs; a DataRequest is modelled after a kinType in some other language -- we want
            //			to see if that kinType exists in this culture, and if so what kinTerm is given to it.  If the kinType
            //			definition involves a UDP from the other culture, it cannot match anything in the current culture.
            //			ERGO: do not build a discriminator if any literal in the CB is a UDP.
            ClauseBody cb = relatedCB_Ptrs.remove(0).getClause();
            while (relatedCB_Ptrs.size() > 0 && cb.containsUDPs()) // find a non-UDP if possible
            {
                cb = relatedCB_Ptrs.remove(0).getClause();
            }
            if (cb.containsUDPs()) {
                return;
            }
            boolean oldSim = Context.simulation;
            Context.simulation = false;

            ArrayList<Object> egoBag = lrnDT.ctxt.getPair();
            for (int j = 0; j < MainPane.NUMBER_OF_EGOS; j++) {
                Dyad dyad = lrnDT.makeExampleDyad(cb, lrnDT.ctxt, egoBag);
                if (dyad.ego.birthFamily == null
                        && ((dyad.pcString.length() > 2 && (dyad.pcString.substring(0, 3).equals("Bro") || dyad.pcString.substring(0, 3).equals("Sis")))
                        || (dyad.pcString.length() > 1 && (dyad.pcString.substring(0, 2).equals("Fa") || dyad.pcString.substring(0, 2).equals("Mo"))))) {
                    System.out.print("");
                }
                dyad.kinTerm = "no__term";
                dyad.kinTermType = 7;  //  used as a flag to mark this as a requested dyad from User
                String pcStr = dyad.pcString;
                ArrayList<Object> candCBs = new ArrayList<Object>();
                boolean done = false;
                Iterator iter = sourceDT.theory.values().iterator();
                while (iter.hasNext() && !done) {
                    KinTermDef cand = (KinTermDef) iter.next();
                    //  Try all CBs in cand for fillInNames of alter
                    //  If a kinTerm is assigned, fine.  If not, keep the default 'no__term'
                    if (lrnDT.foundInSigStr(cand.eqcSigExact, pcStr)) {
                        for (int i = 0; i < cand.expandedDefs.size(); i++) {
                            ClauseBody claws = (ClauseBody) cand.expandedDefs.get(i);
                            if (claws.pcString.equals(pcStr) && lrnDT.fit(claws, dyad)) {
                                dyad.kinTerm = claws.ktd.kinTerm;
                                i = cand.expandedDefs.size();  //  end the iteration
                                done = true;					//  "		"
                            }
                        }  //  end of inner loop thru CBs
                    }
                }  //  end of while loop thru KTDs
                lrnDT.dyadsUndefined.dyAdd(dyad);
                Individual ego = (Individual) egoBag.remove(0);
                ego = MainPane.topPane.randomEgo(lrnDT.ctxt, egoBag, ego.gender);
                egoBag.add(0, ego);
            }  //  end of loop for NUMBER_OF_EGOS
            if (relatedCB_Ptrs.size() > 0) {
                buildDiscrimDyads(lrnDT, sourceDT);
            }
            Context.simulation = oldSim;
        }  //  end of method buildDiscrimDyads

        public void presentToUser() {
            System.out.println(toString());
        }  //  end of method presentToUser
    }  //  end of class DataRequest
