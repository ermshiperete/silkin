
import java.util.*;

/** If a symbol, string, or boolean value appears as an argument in a literal, it is a Constant.  The UserDefinedProperty
feature may employ constants.  The {@link Parser} can parse them.

@author		Gary Morris, Northern Virginia Community College		garymorris2245@verizon.net
 */
public class Constant extends Argument implements Symbol {

    public static final String stdConstantType = "Constant";

    /*  This zero-arg constructor is for use ONLY by Serialization  */
    Constant() {
        argName = "default";
        argType = stdConstantType;
        setVal(new ArrayList<Object>());
    }  // end of constructor

    Constant(String name) {
        argName = name;
        argType = stdConstantType;
        setVal(new ArrayList<Object>());
    }  // end of constructor

    public Argument copy() {
        Argument newArg = new Constant(argName);
        newArg.valueType = valueType;
        newArg.addVal(getVal());
        return newArg;
    }  // end of method copy

    public String printName() {
        return argName;
    }

    public String toString() { //  a Constant is represented by its value
        return ((ArrayList<Object>) getVal()).get(0).toString();
    }

    String toXML(String bacer) {
        String s = bacer + "<constant>";
        s += getVal().get(0).toString();
        s += "</constant>";
        return s;
    }

    String toSILKString(String bacer) {
        String s = bacer + "<constant>";
        s += getVal().get(0).toString();
        s += "</constant>";
        return s;
    }

    public Object bindingVal() {
        return getVal();
    }
}  // end of class Constant

