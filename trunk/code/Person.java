//  KinshipEditor
//
//  Created by Michael D. Fischer on 11/07/2006.
//  Copyright (c) 2006, Centre for Social Anthropology and Computing, 
//  University of Kent. All rights reserved.
//
//
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions
//  are met:
//
//  Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//  Redistributions in binary form must reproduce the above copyright
//  notice, this list of conditions and the following disclaimer in the
//  documentation and/or other materials provided with the distribution.
//  Neither the name of the Centre for Social Anthropology and Computing,
//  University of Kent nor the names of its contributors may be used 
//  to endorse or promote products derived from this software without
//  specific prior written permission.  THIS SOFTWARE IS PROVIDED BY THE 
//  COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED
//  WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES 
//  OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE 
//  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS 
//  BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, 
//  OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
//  OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; 
//  OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF 
//  LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
//  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS 
//  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//  



import java.awt.*;
import java.util.StringTokenizer;
import java.util.*;

public class Person {
    public static int id_no = 0;
    public static int size = 16; // default size;
    public static String refYear = ""; // reference year for drawing genealology
    public static ArrayList<Individual> folks = null; // upgraded from an array of 1000
    //  public static int folkIndex = -1;	//  used in array
    public static int maxx = -20000, maxy = -20000, minx = 20000, miny = 20000;
    int lsize = 0; // if not zero use this one - local to this entity
    int myId = ++id_no;
    public boolean drawn = false; // was this symbol drawn last time?
    String name = "New";
    String comment = "";
    String birthYr = "";
    String yobq = "9";
    String deathYr = "";
    String yodq = "9";
    public Point location = new Point(0, 0);
    Kind sex = null;
    LinkedList marriages = null;
    Family parents = null;
    LinkedList parental_unions = null;
    public boolean selected = false;
    public static final int NOLABEL = 0;
    public static final int INITIALS = 1;
    public static final int FIRST = 2;
    public static final int LAST = 3;
    public static final int WHOLE = 4;
    public static final int NOKINTERM = 0;
    public static final int KINTERMREF = 1;
    public static final int KINTERMADR = 2;
    public static final int LETTERREF = 3;
    public static final int LETTERADR = 4;
    public static int nameLabel = INITIALS;
    public static int kinTermLabel = NOKINTERM;

    Person() {
    }// required expicit zero-arg constructor
	
	Person(Kind gend, Point l) {
		sex = gend;
		setLocation(l);
		name = "Person " + (myId -1);
	}

    void adjustLocation(int extraWidth, int extraHeight) {
        setLocation(location.x + extraWidth, 
                    location.y + extraHeight);
    }

    public void setLocation(Point p) {
      setLocation(p.x, p.y);
    }
    
    public void setLocation(int x, int y) {
      location.x = x;
      location.y = y;
      if (x > maxx) maxx = x;
      if (x < minx) minx = x;
      if (y > maxy) maxy = y;
      if (y < miny) miny = y;
    }
    
    public void setLocationX(int x) {
      setLocation(x,location.y);
    }
    
    public void setLocationY(int y) {
      setLocation(location.x,y);
    }

    public static void resetBoundingBox() {
      maxx=-20000; maxy=-20000; minx=20000; miny=20000;
      for (Individual p : folks) {
        if (p != null) {
          int x=p.location.x;
          int y=p.location.y;
          if (x > maxx) maxx = x;
          if (x < minx) minx = x;
          if (y > maxy) maxy = y;
          if (y < miny) miny = y;
        }
      }
    }

    public LinkedList getMarriages() {
		return marriages;
	}
		
	public void setMarriages(LinkedList m) {
		marriages = m;
	}
	
	public void addMarriage(Family f) { addMarriage((Marriage) f); } 

	
	public void addMarriage(Marriage p) {
		if (marriages == null) marriages = new LinkedList(p);
		else if (!marriages.isHere(p)) marriages.extend(p);
// update marriage
		if (p.getSpouses() == null) p.setSpouses(new LinkedList(this));
		else if (!p.getSpouses().isHere(this)) 
				p.getSpouses().extend(this);
	}

	
	public void delMarriage(Marriage p) {
		if (marriages != null && marriages.isHere(p)) {
			marriages = (LinkedList) marriages.remove(p);
			if (p.getSpouses() != null) 
				p.setSpouses((LinkedList) p.getSpouses().remove(this));
		}
	}
	 
	public void setParents(Marriage p) {
		if (p == null) {
			parents = null;
			return;
		}
		if (parental_unions == null) parental_unions = new LinkedList(p);
		else if (!parental_unions.isHere(p)) parental_unions.extend(p);
		Marriage k = parents;
		parents = (Family)p;
		if (k != null) {
			// k.delSib(this); // do nothing for now
		}
		if (p != null) p.addSib(this);
	}
	
	public void delParents(Marriage p) {
            Family k = parents;
            if (parental_unions != null && parental_unions.isHere(p)) {
                parental_unions = (LinkedList) parental_unions.remove(p);
                if (p.sibset != null) 
                    p.delSib(this);
            }
            if (parental_unions.isEmpty()) parents = null;
            else parents = (Family) parental_unions.last().getValue();
	}
	
	public Family getParents() {
		return parents;
	}
	
	public void delPerson() {
		Family k = parents;
		parents = null;
 		LinkedList pu = parental_unions;
		while (pu != null) {
			k = (Family) pu.getValue();
                        if (k != null) k.delSib(this);
			pu =  pu.getNext();
		}
                parental_unions=null;
		LinkedList m = marriages;
		while (m != null) {
			Family x = (Family) m.getValue();
			delMarriage(x);
			m =  m.getNext();
		}
                marriages=null;
	}
	
	public void marryTo(Individual p) {  marryTo((Person) p); }
	
	public void marryTo(Person p) {
		Family m;
		Point pt = null;
		m = new Family(pt);
		m.addSpouse(p);
		m.addSpouse(this);
		p.addMarriage(m);
		this.addMarriage(m);
	}


	public int getSize() {
		if (lsize > 0) return lsize;
		else return size;
	}

	public void setSize(int x) {
		lsize = x;
	}

	public Rectangle bounds() {
		return new Rectangle(location.x,location.y,getSize(),getSize());
	}
	
	public Point bottomHinge() {
		return new Point(location.x+ getSize()/2,location.y+getSize());
	}
	
	public Point topHinge() {
		return new Point(location.x+ getSize()/2,location.y);
	}
	
	public void drawSymbol(Graphics g, Rectangle pbounds, Color c) {
		Color x = g.getColor();
		g.setColor(c);
		drawSymbol(g,pbounds);
		g.setColor(x);
	}
	public boolean hasBegun() {
		if (!birthYr.equals("") && !refYear.equals(""))
			return (birthYr.compareTo(refYear) <= 0);
		else return true;
	}
        /* Modified this method for SILKin, since refYear is
         * not used. Original version below:
         *
         * if (!deathYr.equals("") && !refYear.equals(""))
	 *	return(deathYr.compareTo(refYear) <= 0);
	 *	else return false;
         */
	public boolean hasEnded() {
		if (!deathYr.equals("") && !deathYr.equals(""))
			return true;
		else return false;
	}
	
	
    public void drawLabel(Graphics g, Rectangle theBounds) {
        String out = "", out1, outKTerm = "";
        StringTokenizer st = new StringTokenizer(name);
        DomainTheory dt = null;
        ArrayList<Object> terms = null;
        if (nameLabel == NOLABEL && kinTermLabel == NOKINTERM) {
            return;
        }
        if (nameLabel == FIRST) {
            if (st.hasMoreTokens()) {
                out = st.nextToken() + " ";
                while (st.hasMoreTokens()) {
                    out = out + st.nextToken().substring(0, 1);
                }
            } else {
                out = "<" + (myId -1) + ">";
            }
        } else if (nameLabel == LAST) {
            if (st.hasMoreTokens()) {
                out1 = st.nextToken();
                out = "";
                while (st.hasMoreTokens()) {
                    out = out + out1.substring(0, 1);
                    out1 = st.nextToken();
                }
                out += " " + out1;
            } else {
                out = "<" + (myId -1) + ">";
            }
        } else if (nameLabel == INITIALS) {
            if (st.hasMoreTokens()) {
                out = "";
                while (st.hasMoreTokens()) {
                    out += st.nextToken().substring(0, 1);
                }
            } else {
                out = "<" + (myId -1) + ">";
            }
        } else if (nameLabel == WHOLE) {
            out = name;
            if (out.equals("") || out.equals(" ")) {
                out = "<" + (myId -1) + ">";
            }
        }
        Individual ind = (Individual) this;
        if (kinTermLabel == NOKINTERM || ind.node == null) {
            outKTerm = "";
        } else {  // pick the kin term
            boolean ref = (kinTermLabel % 2) == 1;  // odd nmbrs are ref terms
            try {
                dt = (ref ? Context.current.domTheoryRef()
                        : Context.current.domTheoryAdr());
                terms = (ref ? ind.node.kinTermsRef()
                        : ind.node.kinTermsAddr());
            } catch (Exception e) { }  // Nothing can go wrong....
            if (terms.isEmpty()) {
                outKTerm = "";
            }else if (kinTermLabel < LETTERREF) {  // want actual kin terms
                if (terms != null && terms.size() > 0) {
                    outKTerm = (String)terms.get(0);
                }
            } else {  // want a letter
                if (terms.contains("Ego")) {
                    outKTerm = "Ego";
                } else {
                    TreeMap<String, String> letters = dt.getKTSymbols();
                    if (letters == null) {
                        outKTerm = "";
                    } else {
                        outKTerm = letters.get((String) terms.get(0));
                    }
                }
            }  // end of want-a-letter
        }  // end of kin term label picker

        if (out.equals("")) {  // don't print blank over a kin term
            out += (outKTerm != null ? outKTerm : "");
            outKTerm = null;
        }
        int w = g.getFontMetrics().stringWidth(out) / 2;
        int x = theBounds.x + theBounds.width / 2 - w;
        int y = theBounds.y + theBounds.height + 16;
        g.drawString(out, x, y);
        if (outKTerm != null && outKTerm.length() > 0) {
            w = g.getFontMetrics().stringWidth(outKTerm) / 2;
            x = theBounds.x + theBounds.width / 2 - w;
            y = theBounds.y + theBounds.height + 28;
            g.drawString(outKTerm, x, y);
        }
    }
	
	public void drawSymbol(Graphics g, Rectangle pbounds) {
		Rectangle myBounds = bounds();
		// myBounds.translate(offset.x,offset.y);
		drawn=false;

		if (myBounds.intersects(pbounds)) {
			if (hasEnded()) {
				sex.symbol.drawEndSymbol(g,myBounds);
				drawLabel(g,myBounds);
				drawn = true;
			} else if (hasBegun()) {
				sex.symbol.drawSymbol(g,myBounds);
				drawLabel(g,myBounds);
				drawn=true;
			}
		}
	}
	
	public void paint(Graphics g) {
		if (selected) sex.symbol.drawSymbol(g,bounds(), Color.red);
		else sex.symbol.drawSymbol(g,bounds());	
	}
	
	public String toXML() {
            //  Re-written so it works in Java 6.0. Used by SILKin.
            String image = "  <sex>";
            String gender = (sex instanceof Female ? "Female" : "Male");
            if (sex instanceof Female) image += "Female";
		else if (sex instanceof Male) image += "Male";
		else image += "Neuter";
            image += "</sex>"+XFile.Eol;
            // born and died blocks are written as 1-piece tags
            image += "  <stats> <born>" + birthYr + "</born>";
            image += " <died>" + deathYr + "</died>";
            image += " </stats>"+XFile.Eol;
            image += "  <location x=\"" + location.x + "\" y=\"" +
                    location.y + "\"/>"+XFile.Eol;
            if (comment != null && comment.length() > 0) {
                image += "  <comments txt=\"" + comment + "\"/>"+XFile.Eol;
            }
            return image;
	}

	public static String allToXML() {
		PrintFormat pf = new PrintFormat();
		personsToXML(pf);
		return pf.toString();
	}

	public void personToXML(PrintFormat pf) {
		pf.printf("  <person>"+XFile.Eol+"    <name>%s</name><id>%d</id><sex>%s</sex>"+XFile.Eol, name);
		pf.printF(myId); // id
		if (sex instanceof Female) pf.printF("Female");
		else if (sex instanceof Male) pf.printF("Male");
		else pf.printF("Neuter");
                pf.printf("    <stats><born q=\"%s\">%s</born><died q=\"%s\">%s</died></stats>"+XFile.Eol,
		yobq);
		pf.printF(birthYr.replace(' ','#'));
		pf.printF(yodq);
		pf.printF(deathYr.replace(' ','#'));

		pf.printf("    <location><x>%d</x><y>%d</y></location>"+XFile.Eol,location.x);
		pf.printF(location.y);

		if (comment.equals("")) {
			comment = "None";
		}

		pf.printf("    <comment>%s</comment>"+XFile.Eol+"  </person>"+XFile.Eol+XFile.Eol,comment);
	}

	public static void personsToXML(PrintFormat pf) {
		pf.printf("<people>"+XFile.Eol);
		
		for(Individual p : folks) {
			if (p != null) p.personToXML(pf);
		}
		pf.printf("</people>"+XFile.Eol);
	}
	
	static Female fem = new Female();
	static Male	mem = new Male();
	static Neuter	nut = new Neuter();

	public static Individual readXML(XFile sFile) {
		String name, sex, born, died, comment;
		String bornqual="9", diedqual="9";
		int pid,locx,locy;
		Individual retp=null;
		
		name = sFile.readTagValue("name");
		pid = new Integer(sFile.readTagValue("id")).intValue();
		sex = sFile.readTagValue("sex");
		born = sFile.readTagValue("born").replace('#',' ');
		if (sFile.attributes.length > 1) bornqual = sFile.attributes[1][1];
		died = sFile.readTagValue("died").replace('#',' ');
		if (sFile.attributes.length > 1) diedqual = sFile.attributes[1][1];
		locx = new Integer(sFile.readTagValue("x")).intValue();
		locy = new Integer(sFile.readTagValue("y")).intValue();
		comment = sFile.readTagValue("comment");
		sFile.readUntilTag("/person");
		if (sex.equalsIgnoreCase("Female")) {
			retp = new Individual(fem, new Point(locx,locy));
		} else if (sex.equalsIgnoreCase("Male") || sex.equalsIgnoreCase("Neuter")) {
			retp = new Individual(mem, new Point(locx,locy));
		} else {
			System.out.println("Bad sex: " + sex);
			return null;
		}
		if (retp == null) {
			System.out.println("Odd error in Person.readXML: " + sex);
			return null;
		}
		retp.name = name;
		retp.myId = pid;
		retp.comment = comment;
		retp.birthYr = born;
		retp.deathYr = died;
		retp.yobq = bornqual;
		retp.yodq = diedqual;
		Person.id_no = pid; // Check this out!!!
		//  while (pid > folks.size()) folks.add(null);  
		//  insert nulls in empty slots - should never be needed 'cuz SIL keeps deleted people in their slots
		if (pid != folks.size()) {  //  in case things are really weird!
			System.out.println("Person's ID out of order in Person.readXML. \nID: " 
					+ pid + " in position " + folks.size());
			return null;
		}
		//  folks.add(retp);  //  Individual constructor inserts into folks
		return retp;
	}
	
	public static boolean readPeople(XFile sFile) {
		String[][] ntag;
		for(;;) {
			ntag = sFile.readTag();
			if (ntag[0][0].equalsIgnoreCase("/people")) break;
			if (!ntag[0][0].equalsIgnoreCase("person"))
				sFile.readUntilTag("person");
			Individual qp = readXML(sFile);
                        if (qp == null) {
                            return false;
			}
		}
		return true;
	}
		
	//  In SILKin we never remove a person from the census, we just mark their
	//  object 'deleted.' So I am changing KAES to not delete anyone.
	static public int findFreePerson() { return folks.size();  }

	static public int findPerson(int x, int y) {
		if (folks == null) return -1;
		for(int i=folks.size() -1; i>=0; i--) {
			if (folks.get(i) != null &&
				folks.get(i).bounds().inside(x,y)) return i;
		}
		return -1;
	}
}
