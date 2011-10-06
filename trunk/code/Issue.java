/*
 * Issue is the superclass containing all the types of issues the Learning
 * Module might present to the User
 */

/**
 *
 * @author  Gary Morris, University of Pennsylvania		garymorris2245@verizon.net
 */

import java.util.*;
import java.text.*;
import java.io.*;

 public abstract class Issue implements Serializable {

        String kinTerm;
        ArrayList<Object> questions = new ArrayList<Object>();
        boolean stillViable = true;
        boolean processed = false;

        public abstract void presentToUser() throws KSParsingErrorException, JavaSystemException,
                KSInternalErrorException, KSConstraintInconsistency;

        public abstract void removeChallengedDyads();

        public abstract void toSILKFile(PrintWriter p);

        public abstract String toThyString();

        public abstract String typeString();

        public String questionsToXML(String bacer) {
            String spacer = "\t";
            if (questions.isEmpty()) return "";
            String qns = bacer + "<questions>\n";
            for (Object o : questions) {
                qns += bacer + spacer + "<qn text=\"" + o.toString() + "\"/>\n";
            }
            qns += bacer + "</questions>";
            return qns;
        }

        public String questionsToSILKString(String bacer) {
            return questionsToXML(bacer);
        }

    }  //  end of class Issue

