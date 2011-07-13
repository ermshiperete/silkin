
import java.util.*;
import java.io.*;

/** A UserDefinedProperty is an optional, additional property (field) that will be assigned to each
{@link Individual} object created in the context of a particular {@link DomainTheory}.  The user defines a new
property with a declaration in the header area of a Horn Clause file defining a particular DomainTheory.  OR the
user may define a new property via the Data Gathering GUI.  Under either method, a 'template' for the new user-defined
property is stored on the DomainTheory object, and used each time an Individual is created.
<p>
A UserDefinedProperty is limited in the types of values it may contain; legal types are any one of the 
following Java built-in types (where 'xx{}' means 'a list objects of type of xx'):
<ul>
<li> int
<li> float
<li> string
<li> boolean
<li> Individual
<li> individual
<li> int{}
<li> float{}
<li> string{}
<li> boolean{}
<li> Individual{}
<li> individual{}
</ul>

@author		Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
 */
public class UserDefinedProperty implements Serializable {

    public String starName, typ;
    public boolean singleValue;
    public ArrayList<Object> value = new ArrayList<Object>();
    public ArrayList<Object> validEntries;
    public Object defaultValue;
    public Number minVal, maxVal;

    /**  Cloning constructor.
    
    @param  udp     another UserDefinedProperty object; the 'template' for this one.
     */
    public UserDefinedProperty(UserDefinedProperty udp, boolean useDefault) {
        starName = udp.starName;
        typ = udp.typ;
        singleValue = udp.singleValue;
        //  The value field will be a new empty list
        validEntries = udp.validEntries;
        defaultValue = udp.defaultValue;
        minVal = udp.minVal;
        maxVal = udp.maxVal;
        if (useDefault && defaultValue != null) {
            value.add(defaultValue);
        }
    }

    /**  Minimal constructor, using only the property's name.
    
    @param  nam     the name of this property
     */
    public UserDefinedProperty(String nam) {
        starName = nam;
    }

    /**
    Constructor with 0 arguments: for use ONLY by Serialization.  */
    public UserDefinedProperty() {
    }

    /**  This method returns true only if the <code>entry</code> is of the correct type for this property.

    @param  entry   a potential value for this property
    
    @return true    if type is correct  */
    public boolean typeCheck(Object entry) {
        if (entry instanceof Integer) {
            return (typ.equals("integer"));
        }
        if (entry instanceof Float) {
            return (typ.equals("float"));
        }
        if (entry instanceof String) {
            return (typ.equals("string"));
        }
        if (entry instanceof Boolean) {
            return (typ.equals("boolean"));
        }
        if (entry instanceof Individual) {
            return (typ.equals("individual"));
        }
        return false;
    }  //  end of method typeCheck

    /**  This method builds a string that represents a UDP in a SILKin data (_.silk) file.   */
    public String toSILKString(String size) {
        boolean full = size.equals("full");
        String result = "";
        if (full) {
            result += "  <typ>" + typ + "</typ>\n";
        }
        result += "  <value>";
        if (value != null) {
            for (int i = 0; i < value.size(); i++) {
                if (i > 0) {
                    result += ", ";
                }
                String val = value.get(i).toString();
                if (typ.equals("individual")) // replace full string with just the serial#
                {
                    val = val.substring(0, val.indexOf(":"));
                }
                result += val;
            }
        }  //  end of value != null
        result += " </value>";
        if (full) {
            result += "\n  <singleValue>"  + singleValue + "</singleValue>\n";
            result += "  <validEntries> ";
            if (validEntries != null && validEntries.size() > 0) {
                result += validEntries.get(0);
                for (int i = 1; i < validEntries.size(); i++) {
                    result += ", " + validEntries.get(i);
                }
            }  //  end of validEntries is non-null
            result += " </validEntries>\n";
            result += "  <defaultValue>";	//  DITTO FOR DEFAULT VALUE
            result += (defaultValue == null ? "" : defaultValue);
            result += "</defaultValue>\n";
            result += "  <minVal>" + (minVal == null ? "" : minVal) + "</minVal>\n";
            result += "  <maxVal>" + (maxVal == null ? "" : maxVal) + "</maxVal>";
        }
        return result;
    }  //  end of method toSILKString

    public String toString() {
        String image = starName + " = ";
        if (value.isEmpty()) {
            image += "<empty>";
        } else if (value.size() == 1) {
            image += truncate(value.get(0));
        } else {
            image += "{" + truncate(value.get(0));
            for (int i = 1; i < value.size(); i++) {
                image += ", " + truncate(value.get(i));
            }
            image += "}";
        }  //  end of multiple-values
        return image;
    }  //  end of over-riding method toString

    public String truncate(Object obj) {
        String shortOne = obj.toString();
        if ((shortOne.length() < 20) && (shortOne.indexOf("\n") == -1)) {
            return shortOne;
        }
        int end = shortOne.indexOf(".");
        if (end == -1) {
            end = Math.min(shortOne.length(), 20);
        }
        return shortOne.substring(0, end);
    }  //  end of method truncate

    public String getValidEntriesString() {
        String answer = "";
        if (typ.equals("string")) {
            Iterator valIter = validEntries.iterator();
            while (valIter.hasNext()) {
                answer += (String) valIter.next();
                if (valIter.hasNext()) {
                    answer += ", ";
                }
            }
        } //  end of typ = string
        else if (typ.equals("integer")) {
            Iterator valIter = validEntries.iterator();
            while (valIter.hasNext()) {
                answer += ((Integer) valIter.next()).toString();
                if (valIter.hasNext()) {
                    answer += ", ";
                }
            }
        } //  end of typ = int
        else if (typ.equals("float")) {
            Iterator valIter = validEntries.iterator();
            while (valIter.hasNext()) {
                answer += ((Float) valIter.next()).toString();
                if (valIter.hasNext()) {
                    answer += ", ";
                }
            }
        }  //  end of typ = float
        return answer;
    }  //  end of method getValidEntriesString
}  //  end of class UserDefinedProperty

