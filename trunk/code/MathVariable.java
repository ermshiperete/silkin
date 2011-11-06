
import java.util.*;

/**  This class defines a math variable in Prolog syntax.  Its name (by convention) must
begin with a capitol letter; that convention is NOT enforced.  This sub-class of Variable
is for arguments that will be bound to numbers, booleans, or strings, not Individuals.
In Example-Generation, constraints on the value of this variable are stored in its fields.

@author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
 */
public class MathVariable extends Variable {

    public static final String stdMathVarType = "MathVariable";
    //  These lists hold the variables that this variable is compared with.  For example, if the literal
    //  'lessThan(X,Y)' appears in a clause, the MathVariable object for X will have Y in its lessThan list.
    //  Inotherwords, this is assumed to be arg0, and these lists hold arg1.
    public ArrayList<Object> lessThan, greaterThan, lessOrEql, greaterOrEql, notEqual, contains;
    public UserDefinedProperty linkedTo;  // This holds the UDP to which this MathVar has been linked via a star-predicate

    /**  This cloning constructor copies all fields in the input Variable, including value

    @param	vari	the Variable to be cloned
     */
    public MathVariable(Variable vari) {
        super(vari.argName);
        argType = stdMathVarType;
        addVal(vari.getVal());
        valueType = vari.valueType;
    }

    /** Return a clone of this MathVariable.

    @return		a clone with the type {@link Argument}.
     */
    public Argument copy() {
        MathVariable mv = new MathVariable(this);
        mv.neuterOK = neuterOK;
        mv.lastGenderTried = lastGenderTried;
        mv.linkedTo = linkedTo;
        if (linkedTo != null) {
            mv.setVal(linkedTo.value);
        }
        return mv;
    }  // end of method copy

    public Object bindingVal() {
        return getVal();
    }

    public void link(UserDefinedProperty udp) throws KSInternalErrorException {
        if (udp.typ != valueType) {
            throw new KSInternalErrorException("Type mis-match: UDP type = " + udp.typ + " but MathVar.valueType = " + valueType);
        }
        if (getVal().size() > 0) {  //  this MathVar already has a value
            //  we must merge udp's value (if any) with this MathVar's value
            for (int i = 0; i < getVal().size(); i++) {
                if (!udp.value.contains(getVal().get(i))) {
                    udp.value.add(getVal().get(i));
                }
            }
            if ((udp.value.size() > 1) && udp.singleValue) {
                throw new KSInternalErrorException("TILT!  Assigned multiple values to single-valued UDP " + udp);
            }
        }
        linkedTo = udp;
        setVal(udp.value);  //  we assume udp's value has been checked against constraints elsewhere
    }  //  end of method link

    public UserDefinedProperty unLink() {
        UserDefinedProperty oldUDP = linkedTo;
        linkedTo = null;
        setVal(new ArrayList<Object>());
        return oldUDP;
    }

    public void addVal(Object obj) {
        //  we assume this object meets all constraints for this MathVar; verified elsewhere
        if (linkedTo != null) {
            linkedTo.value.add(obj);
        } else {
            super.addVal(obj);
        }
    }

    public void clearVal() {
        if (linkedTo != null) {
            linkedTo.value.clear();
        } else {
            super.clearVal();
        }
    }

    String toXML(String spacer) {
        return spacer + "<mathVar>" + argName + "</mathVar>\n";
    }

    String toSILKString(String spacer) {
        return spacer + "<mathVar>" + argName + "</mathVar>\n";
    }
}  //  end of class MathVariable

