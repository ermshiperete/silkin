/**
 * This class is part of the SILKin program's Utilities. It handles all date
 * processing and enforces the date format conventions followed in SILKin.
 *
 * Default date format is xsd: date     YYYY-MM-DD.
 * We also accept xsd: gYear            YYYY
 * and xsf: gYearMonth                  YYYY-MM
 *
 * When parsing a date string, we also try US-Medium and native date formats. 
 *
 * All methods are static.
 *
 * @author Gary Morris, Northern Virginia Community College
 */


import java.util.Date;
import java.util.Locale;
import java.text.ParseException;
import java.text.DateFormat;

public class UDate {

    public static DateFormat dfMedium =
            DateFormat.getDateInstance(DateFormat.MEDIUM, Locale.US);
    public static DateFormat dfNative =
            DateFormat.getDateInstance(DateFormat.MEDIUM);
    public static DateFormat dfShort =
            DateFormat.getDateInstance(DateFormat.SHORT, Locale.US);
    private static String today,
                          shortToday = dfShort.format(new Date());
    private static String[] monthNames = { "", "Jan", "Feb", "Mar", "Apr", "May", "Jun",
                                    "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" };
    private static int[] monthLengths = {0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

    /**Creates today's date as an XSD formatted String, e.g. "2012-12-25"
     *
     * @return  today's date
     */
    public static String today() {
        String shortFormat = dfShort.format(new Date());
        if (today != null && shortFormat.equals(shortToday)) {
        // We've already computed today's date, and it is still the same day
            return today;
        }
        String mediumFormat = dfMedium.format(new Date());
        int slash1 = shortFormat.indexOf("/"),
            slash2 = shortFormat.indexOf("/", slash1 +1),
            comma = mediumFormat.lastIndexOf(",");
        String output = mediumFormat.substring(comma +2);
        String zero = "0";
        int mo = Integer.parseInt(shortFormat.substring(0, slash1));
        if (mo > 9) {
            zero = "";
        }
        output += "-" + zero + shortFormat.substring(0, slash1) + "-";
        int da = Integer.parseInt(shortFormat.substring(slash1 +1, slash2));
        if (da > 9) {
            zero = "";
        }else {
            zero = "0";
        }
        today = output + zero + shortFormat.substring(slash1 +1, slash2);
        return today;
    }

    static boolean valiDate(String yyyy, String mm, String dd, Object obj, boolean stop)
            throws KSDateParseException {
        //  We must make a valid date string and post it to obj.
        boolean valid = false;
        yyyy = yyyy.trim();
        mm = mm.trim();
        dd = dd.trim();
        if (yyyy.equals("NA")) yyyy = ""; 
        if (mm.length() == 1) mm = "0" + mm;
        if (dd.length() == 1) dd = "0" + dd;
        String em, wh, fullDate = yyyy + "-" + mm + "-" + dd,
               usDate = mm + " " + dd + ", " + yyyy,
               nativeDate = dd + " " + mm + ", " + yyyy;
        int end = fullDate.length() -1;
        if (fullDate.substring(end).equals("-")) {
            fullDate = fullDate.substring(0, end);
            if (fullDate.substring(--end).equals("-")) {
                fullDate = fullDate.substring(0, end);
            }
        }
        if (yyyy.equals("") && mm.equals("") && dd.equals("")) {
            valid = true;  //  All blanks is fine.
            setDateFor(obj, "", stop);
        } else if (yyyy.equals("") && (!mm.equals("") || !dd.equals(""))) {
            em = "Month or day requires non-blank year. Input = " + fullDate;
            throw new KSDateParseException(em);
        } else if (mm.equals("") && !dd.equals("")) {
            em = "Day requires non-blank month. Input = " + fullDate;
            throw new KSDateParseException(em);
        } else if (validXSD(fullDate)) {
            valid = true;
            setDateFor(obj, fullDate, stop);
        } else if (validUS(usDate)) {
            valid = true;
            setDateFor(obj, medToXSD(usDate), stop);
        } else if (validNative(nativeDate)) {
            valid = true;
            try {
            setDateFor(obj, nativeToXSD(nativeDate), stop);
            }catch(ParseException pe) {
                em = "Cannot parse native date: " + nativeDate;
                throw new KSDateParseException(em);
            }
        }else {
            em = "Cannot parse: yyyy = " + yyyy + ", mm = " + mm + ", dd = " + dd;
            throw new KSDateParseException(em);
        }
        return valid;
    }

    /**Sets the begin/end date for an Individual or Family object to
     * <code>date</code>. The date string must be in XSD format or a
     * run-time exception (index out of range) will be thrown.
     *
     * @param obj   an Individual or Family
     * @param date  the date in XSD format (yyyy-mm-dd)
     * @param stop  if true, death or divorce date; else birth or marriage date.
     */static void setDateFor(Object obj, String date, boolean stop) {
        if (obj instanceof Individual) {
            Individual ind = (Individual)obj;
            if (stop) {
                ind.setDateOfDeath(date);
            }else {
                ind.setDateOfBirth(date);
            }
        }else {
            Family fam = (Family)obj;
            if (stop) {
                fam.setDivorceDate(date);
            }else {
                fam.setMarriageDate(date);
            }
        }
    }

     /**Format a date as XSD.
      *
      * @param d    the date object to be formatted
      * @return     an XSD representation of that date
      */
     public static String formatAsXSD(Date d) {
         if (d == null) return "";
         String med = dfMedium.format(d);
         String shorty = dfShort.format(d);
         int slash1 = shorty.indexOf("/"),
             slash2 = shorty.lastIndexOf("/"),
             comma = med.indexOf(",");
         String xsd = med.substring(comma +1).trim() + "-";
         String mm = shorty.substring(0,slash1);
         if (mm.length() == 1) mm = "0" + mm;
         xsd += mm + "-";
         String dd = shorty.substring(slash1 +1, slash2);
         if (dd.length() == 1) dd = "0" + dd;
         return xsd + dd;
     }

     /**Format these 3 component fields as a valid XSD date string, allowing
      * any of them to be blank.
      *
      * @param yyyy the 4-digit year
      * @param mm   the month digits
      * @param dd   the day digits
      * @return     an XSD formatted date string
      */
    public static String formatAsXSD(String yyyy, String mm, String dd)
                throws KSDateParseException  {
        String dat = "";
        if (yyyy == null || yyyy.equals("NA")) {
            yyyy = "";
        } else yyyy = yyyy.trim();
        if (mm == null) {
            mm = "";
        } else mm = mm.trim();
        if (dd == null) {
            dd = "";
        }  else dd = dd.trim();
        if (yyyy.equals("") && mm.equals("") && dd.equals("")) {
            return dat;
        }
        dat += yyyy;
        if (mm.equals("") && dd.equals("")) {
            return dat;
        }
        if (mm.length() > 0 && Character.isJavaIdentifierStart(mm.charAt(0))) {
            String us = mm + " " + dd + ", " + yyyy,
                   nat = dd + " " + mm + ", " + yyyy;
            if (validUS(us)) {
                return medToXSD(us);
            }else if (validNative(nat)) {
                try {
                    dat = nativeToXSD(nat);
                }catch(ParseException pe) {
                //  We just tested the native format,
                //  so we know no exception will be thrown
                }
                return dat;
            }else {
                dat = "Invalid date: yyyy = " + yyyy + " mm = " + mm + " dd = " + dd;
                throw new KSDateParseException(dat);
            }
        }
        if (mm.length() == 1) {
            mm = "0" + mm;
        }
        dat += "-" + mm;
        if (dd.equals("")) {
            if (validXSD(dat)) {
                return dat;
            }else {
                dat = "Invalid date: yyyy = " + yyyy + " mm = " + mm + " dd = " + dd;
                throw new KSDateParseException(dat);
            }
        }
        if (dd.length() == 1) {
            dd = "0" + dd;
        }
        dat += "-" + dd;
        if (validXSD(dat)) {
            return dat;
        }else {
            dat = "Invalid date: yyyy = " + yyyy + " mm = " + mm + " dd = " + dd;
            throw new KSDateParseException(dat);
        }
    }

     public static String[] readXSDComponents(String ds) {
         String yyyy = "", mm = "", dd = "";
         String[] components = { yyyy, mm, dd };
         if (ds.length() < 4) return components;
         components[0] = ds.substring(0,4);
         if (ds.length() < 7) return components;
         components[1] = ds.substring(5,7);
         if (ds.length() < 10) return components;
         components[2] = ds.substring(8);
         return components;
     }

    /**Is this string a valid date in XSD format? Allows for year-only
     * ("1978") or year-month ("2001-09") or full ("2001-09-11").
     * 
     * @param ds    the date string to be tested
     * @return  true if it fits one of the allowed formats.
     */
    public static boolean validXSD(String ds) {
        if (ds == null) {
            return false;
        }
        int len = ds.length();
        if (ds.equals("")) return true;
        try {
            if (len < 4) {
                return false;
            }
            Integer.parseInt(ds.substring(0, 4));
            if (len == 4) {
                return true;
            }
            if (len < 7 || ds.charAt(4) != '-') {
                return false;
            }
            int mo = Integer.parseInt(ds.substring(5, 7));
            if (mo < 1 || mo > 12) {
                return false;
            }
            if (len == 7) {
                return true;
            }
            if (len != 10 || ds.charAt(7) != '-') {
                return false;
            }
            int da = Integer.parseInt(ds.substring(8));
            if (da < 1 || da > monthLengths[mo]) {
                return false;
            }
        } catch (NumberFormatException nfe) {
            return false;
        }
        return true;
    }

    public static boolean validNative(String ds) {
        try {
            dfNative.parse(ds);
        }catch(Exception exc) {
            return false;
        }
        return true;
    }

    public static boolean validUS(String ds) {
        try {
            dfMedium.parse(ds);
        }catch(Exception exc) {
            return false;
        }
        return true;
    }
    
    /**Converts a date string in XSD format to European format (dd-MMM-yyy.
     * NOTE: We assume ds is a valid XSD date string. If not sure of that,
     * call <code>validXSD(ds)</code> to verify.
     *
     * @param ds    the XSD format string
     * @return      the MEDIUM format string
     * @throws KSDateParseException I think?!?
     */
    public static String xsdToEuropean(String ds) {
        String dd, mm, yyyy;
        int len = ds.length();
        yyyy = ds.substring(0,4);
        mm = monthNames[1].toUpperCase();
        dd = "01";
        if (len > 6) {
            int mo = Integer.parseInt(ds.substring(5,7));
            mm = monthNames[mo].toUpperCase();
        }
        if (len == 10) {
            dd = ds.substring(8);
        }
        return dd + " " + mm + " " + yyyy;
    }
    
    public static String europeanToXSD(String ds) throws KSDateParseException {
        String xsd = "", month = "", day = "", year = "", pad;
        int moStart = -1, yrStart = -1;
        for (int i=0; i < ds.length(); i++) {
            char ch = ds.charAt(i);
            if (! Character.isDigit(ch)) {
                moStart = i;
                break;
            }
        }
        if (moStart == -1 && ds.trim().length() == 4) {
            return formatAsXSD(ds.trim(), month, day);
        }
        day = ds.substring(0, moStart);
        for (int i = moStart; i < ds.length(); i++) {
            char ch = ds.charAt(i);
            if (Character.isDigit(ch)) {
                yrStart = i;
                break;
            }
        }
        month = ds.substring(moStart, yrStart);
        month = month.replace(",", "").trim();
        year = ds.substring(yrStart);        
        return formatAsXSD(year, month, day);
    }

    /**Converts a date string in XSD format to Java DateFormat.MEDIUM format.
     * NOTE: We assume ds is a valid XSD date string. If not sure of that,
     * call <code>validXSD(ds)</code> to verify.
     *
     * @param ds    the XSD format string
     * @return      the MEDIUM format string
     * @throws KSDateParseException I think?!?
     */
    public static String xsdToMed(String ds) {
        String dd, mm, yyyy;
        int len = ds.length();
        yyyy = ds.substring(0,4);
        mm = monthNames[1];
        dd = "01";
        if (len > 6) {
            int mo = Integer.parseInt(ds.substring(5,7));
            mm = monthNames[mo];
        }
        if (len == 10) {
            dd = ds.substring(8);
        }
        return mm + " " + dd + ", " + yyyy;
    }

    /**Converts a valid date in Java Medium format (US)
     * to XSD format.
     *
     * @param ds    a date string in US Medium format
     * @return      the date in XSD format
     */public static String medToXSD(String ds) {
        int comma = ds.indexOf(",");
        String xsd = ds.substring(comma +1).trim() + "-";
        String mm = getMonthNmbr(ds.substring(0,3));
        String dd = ds.substring(4,comma);
        if (dd.length() == 1) {
            dd = "0" + dd;
        }
        xsd += mm + "-" + dd;
        return xsd;
    }

    public static String getMonthNmbr(String mon) {
        String nmbr;
        for (int i=0; i < 13; i++) {
            if (monthNames[i].equalsIgnoreCase(mon)) {
                nmbr = (i < 10 ? "0" : "") + i;
                return nmbr;
            }
        }
        return "00";
    }

    public static String nativeToXSD(String nativDate) throws ParseException {
        Date dat = dfNative.parse(nativDate);
        String shortForm = dfShort.format(dat);
        int beg = nativDate.length(), end = beg - 4;
        String xsd = nativDate.substring(beg, end) + "-";
        int slash1 = nativDate.indexOf("/"),
            slash2 = nativDate.lastIndexOf("/");
        String mon = shortForm.substring(0,slash1);
        if (mon.length() == 1) {
            mon = "0" + mon;
        }
        String day = shortForm.substring(slash1 +1, slash2);
        if (day.length() == 1) {
            day = "0" + day;
        }
        return xsd + mon + "-" + day;
    }

    static void error(String ds, String details) throws KSDateParseException {
        throw new KSDateParseException("Cannot parse '" + ds + 
                "' as a date.\n" + details);
    }

    public static String convertToXSD(String ds) throws KSDateParseException {
        if (ds == null) {
            return "";
        }
        Date d = parse(ds);
        return formatAsXSD(d);
    }

    /**Convert this date-string to a Date object representing that date.
     * The date-string may be in any valid XSD format, or Java DateFormat.MEDIUM
     * for the JVM native locale, or for Locale = US.
     *
     * @param ds    the date-string to be parsed
     * @return      the Date object.
     */
    public static Date parse(String ds) throws KSDateParseException {
        Date date = null;
        if (ds.equals("NA")) { ds = ""; }
        if (ds.equals("")) return null;
        char ch = ds.charAt(0);
        if (validNative(ds)) {
            try {
                date = dfNative.parse(ds);
            } catch (Exception exc) {
                error(ds, exc.toString());
            }
        } else if (Character.isDigit(ch)) {
            if (validXSD(ds)) {
                date = parseXSD(ds);
            } else {
                error(ds, "");
            }
        } else if (Character.isJavaIdentifierStart(ch)) {
            try {
                date = dfMedium.parse(ds);
            } catch (Exception exc) {
                error(ds, exc.toString());
            }
        } else {
            error(ds, "");
        }
        return date;
    }

    static Date parseXSD(String ds) throws KSDateParseException {
        Date date = null;
        try {
        date = dfMedium.parse(xsdToMed(ds));
        }catch(Exception exc) {
            error(ds, exc.toString());
        }
        return date;
    }


    public static void main(String[] args) {  // for testing
        boolean yup = validXSD("2011-11-03");
//        yup = validXSD("2011-11");
//        yup = validXSD("2011");
//        yup = validXSD("2011-");
//        yup = validXSD("2011-02-30");
//        yup = validXSD("2011-2-3");
//        yup = validXSD("2011/02/30");
//        yup = validXSD("2011-22-30");
//        yup = validXSD("0966-03-03");
//        yup = validXSD("966-03-03");
        String test = xsdToMed("2011-02-10");
        Date d = null;
        try {
            test = dfMedium.format(new Date());
            d = parse(test);
            String out = formatAsXSD(d);
            out = formatAsXSD("2001", "04", "24");
            out = formatAsXSD("2001", "04", "");
            out = formatAsXSD("2001", "", "");
            out = medToXSD(dfMedium.format(new Date()));
            String[] sa = readXSDComponents(out);
            for (String s : sa) {
                System.out.println(s);
            }
            Individual ind = new Individual();
            yup = valiDate("2001", "04", "24", ind, false);
            setDateFor(ind, "2011-02-10", true);
            Family fam = new Family();
            yup = valiDate("1001", "04", "21", fam, true);
            d = parse("2012-02-17");
//            d = parse("October 1, 1974");
//            d = parse("2011/02/30");
        }catch(Exception e) {
            System.err.println("Ooops -- " + e.toString());
        }
    }
    
}
