/**
 *
 * @author 	Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
 */
import java.util.*;
import java.io.*;


 public class ProposedDef extends Issue {

        Library.KTD_EQC eqc;
        KinTermDef ktd;
        ArrayList<Object> refutation;  //  A pair = {type, CB}

        public ProposedDef() {
        }  //  0-arg constructor for Serialization

        public ProposedDef(String localKinTerm, String type, ArrayList<Object> questions, Library.KTD_EQC equivClass)
                throws KSParsingErrorException, JavaSystemException, KSInternalErrorException, KSConstraintInconsistency {
            kinTerm = localKinTerm;
            eqc = equivClass;
            ktd = eqc.prototype.getKTD();
            this.questions = questions;
        }  //  normal constructor

        public String typeString() { return "Proposed Definition"; }

        public boolean sameAs(KinTermDef realDef) throws KSParsingErrorException, JavaSystemException,
                KSInternalErrorException, KSConstraintInconsistency, KSBadHornClauseException,
                KSNoChainOfRelations2Alter, ClassNotFoundException, FileNotFoundException {
            //  True if realDef is logically equivalent to ANY ktd in eqc.members.
            //  Although all eqc members are theoretically equivalent, check them all if necessary.
            if (realDef == null) {
                return false;
            }
            refutation = new ArrayList<Object>();  // 1+ CBs provided by side-effect if not equivalent
            boolean oldFlag = Context.simulation;
            Context.simulation = false;
            for (int i = 0; i < eqc.members.size(); i++) {
                KinTermDef mbrDef = ((Library.KTD_Ptr) eqc.members.get(i)).getKTD();
                if (mbrDef.isEquivalent(realDef, refutation)) {
                    Context.simulation = oldFlag;
                    return true;
                }
            }
            Context.simulation = oldFlag;
            return false;
        }

        public void refute(ArrayList<Object> egoBag, DomainTheory sourceDT, Learned_DT lrnDT) throws KSBadHornClauseException,
                KSInternalErrorException, KSConstraintInconsistency, ClassNotFoundException, KinshipSystemException,
                KSNoChainOfRelations2Alter, KSParsingErrorException, JavaSystemException, ClassNotFoundException {
            //  using the people in egoBag, create dyads from the CBs in refutation
            //  If they are CBs missing from the proposed KTD, make dyads representing these kin types
            //  and place them on dyadsUndefined under this kinTerm.
            //  If they are surplus CBs (that go beyond the correct definition), find out if they have a defined
            //  term in this language.  If so, assign it to the dyads; if not, assign "no__term"
            if (refutation.isEmpty()) {
                return;
            }
            if (lrnDT.dyadsDefined == null) {
                lrnDT.dyadsDefined = new DyadTMap();
            }
            boolean oldVal = Context.simulation;
            Context.simulation = false;
            String refuType = (String) refutation.get(0),
                    refuKinTerm = kinTerm;
            ClauseBody cb = (ClauseBody) refutation.get(1);
            DyadTMap refutingDyads = (refuType.equals("missingCB") ? lrnDT.dyadsUndefined : lrnDT.dyadsDefined);
            if (refuType.equals("extraCB")) {
                refuKinTerm = "no__term";  //  default if this language has no term for this kin type
                boolean foundIt = false;
                Iterator ktIter = sourceDT.theory.entrySet().iterator();
                while (ktIter.hasNext() && !foundIt) {  // search for KTD containing this kin type
                    Map.Entry entry = (Map.Entry) ktIter.next();
                    KinTermDef ktd = (KinTermDef) entry.getValue();
                    ArrayList<Object> kinTypes = null;
                    if (lrnDT.printableTerm(ktd)) {
                        kinTypes = ktd.decodeString(ktd.eqcSigExact);
                    }
                    if (kinTypes != null && kinTypes.contains(cb.pcString)) {
                        for (int i = 0; i < ktd.expandedDefs.size(); i++) {
                            ClauseBody claws = (ClauseBody) ktd.expandedDefs.get(i);
                            if (cb.isEquivalent(claws)) {
                                i = ktd.expandedDefs.size();
                                foundIt = true;
                                refuKinTerm = (String) entry.getKey();
                            }  //  end of they're equivalent
                        }  //  end of loop thru expDefs
                    }  //  end of kin types contains pcString
                }  //  end of search for KTD containing this kin type
            }  //  end of refuType equals "extraCB"
            Individual ego = (Individual) egoBag.remove(0);
            for (int j = 0; j < MainPane.NUMBER_OF_EGOS; j++) {
                lrnDT.ctxt.changeEgoTo(ego);
                egoBag.add(0, ego);
                Dyad dyad = lrnDT.makeExampleDyad(cb, lrnDT.ctxt, egoBag);
                dyad.kinTerm = refuKinTerm;
                refutingDyads.dyAdd(dyad);
                ego = MainPane.topPane.randomEgo(lrnDT.ctxt, egoBag, ego.gender);
            }  //  end of loop thru egos
            Context.simulation = oldVal;
        }  //  end of method refute

//     public String getCites() {
//         String cites = "Suggested by these known definitions: ";
//         for (Object o : eqc.members) {
//             Library.KTD_Ptr ptr = (Library.KTD_Ptr) o;
//             try {
//                 KinTermDef ptd = ptr.getKTD();
//                 cites += "'" + ptd.kinTerm + "' in the " + ptd.domTh.languageName + " language. ";
//                 if (ptd.domTh.citation != null) {
//                     cites += "See " + ptd.domTh.citation + ". ";
//                 }
//             } catch (Exception ex) {
//             }
//         }
//         return cites;
//     }

     public String toThyString() {
            String s = "(";
            // insert guts of method here
            return s + ")";
        }

        public void toSILKFile(PrintWriter pw) {
            String spacer = "\t", dblSpacer = "\t\t";
            pw.println(spacer + "<proposed-def kinTerm=\"" + kinTerm + "\">");
            if (processed) {
                pw.println(dblSpacer + "<processed>true</processed>");
            }
            pw.println(ktd.toSILKString(dblSpacer));
            pw.println(eqc.toSILKString(dblSpacer));
            pw.println(dblSpacer + "<request-date value=\"" + getDate() + "\"/>\n");
            pw.println(spacer + "</proposed-def>\n");
        }

        public String toString() {
            String rep = "ProposedDef re: " + kinTerm;
            String mult1 = (eqc.members.size() > 1 ? "group of " + eqc.members.size() + " " : ""),
                    pl = (eqc.members.size() > 1 ? "s" : "");
            rep += "\n\tBased on a " + mult1 + "definition" + pl + ".\n";
            rep += "A typical term is " + ktd.kinTerm + " from " + ktd.domTh.languageName + ".\n";
            if (eqc.misFits == null || eqc.misFits.isEmpty()) {
                rep += "\tA perfect fit.";
            } else {
                rep += "\n\tHas " + eqc.misFits.size() + " clauses for kin types not yet seen:";
                for (int i = 0; i < Math.min(3, eqc.misFits.size()); i++) {
                    Integer clawsNum = (Integer) eqc.misFits.get(i);
                    ClauseBody cb = (ClauseBody) ktd.expandedDefs.get(clawsNum.intValue());
                    rep += "\n\t\t" + cb.pcString;
                }
                if (eqc.misFits.size() > 3) {
                    rep += "\n\t\t...";
                }
            }
            if (eqc.baseMisFits == null || eqc.baseMisFits.isEmpty()) {
                rep += "\n\tAll base clauses hit at least 1 dyad.";
            } else {
                rep += "\n\tHas " + eqc.baseMisFits.size() + " base clauses for kin types not yet seen:";
                if (ktd.definitions.isEmpty()) {
                    rep += "\n\t\tNumbers: " + eqc.baseMisFits;
                } else {
                    for (int i = 0; i < Math.min(3, eqc.baseMisFits.size()); i++) {
                        Integer clawsNum = (Integer) eqc.baseMisFits.get(i);
                        ClauseBody cb = (ClauseBody) ktd.definitions.get(clawsNum.intValue());
                        rep += "\n\t\t" + cb;
                    }
                }
                if (!ktd.definitions.isEmpty() && eqc.baseMisFits.size() > 3) {
                    rep += "\n\t\t...";
                }
            }
            return rep + "\n";
        }  // end of over-riding toString

        public void removeChallengedDyads() {
            return;
        }

        public void presentToUser() throws KSParsingErrorException, JavaSystemException,
                KSInternalErrorException, KSConstraintInconsistency {
            ktd = eqc.prototype.getKTD();
            System.out.println(toString());  //  for now, until GUI completed.
        }  //  end of method presentToUser
    }  //  end of inner class ProposedDef
