/** An AcceptedKTD is a KinTermDef with added fields for the Suggestion (Issue)
 *  that gave rise to it.

@author		Gary Morris, University of Pennsylvania		missionary.nerd@verizon.net
 */
public class AcceptedKTD extends KinTermDef {
    Issue origin;
    
    public AcceptedKTD(ProposedDef propDef) {
        super(propDef.kinTerm);
        origin = propDef;
    }


}
