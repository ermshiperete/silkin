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
import java.util.ArrayList;

public class Marriage  {
	final static int UNKNOWN=-1;
	public static int size=16;
	public int lsize=0;
	public static String refYear="";
	
	public static ArrayList<Family> knots = new ArrayList<Family>();
        // updated to ArrayList
	
	boolean drawn=false;
	
	static MarriageSymbol marSymbol= new MarriageSymbol();
	//static Hashtable marriageIDs=new Hashtable(300);
	static int marrID=0;
	String type="Marriage";
	String marriageYr="";
	String beginq="9";
	String divorceYr="";
	String endq="9";
	String comment="No Comment";
	String reason="NA";
	int id=knots.size() +1;
	int mid;
	int startyear=UNKNOWN;
	int endyear=UNKNOWN;
	LinkedList spouses=null; // three or more possible
	LinkedList sibset=null;
	Point location=null;
	
	public static final int NOLABEL=0;
	public static final int INITIALS=1;
	public static final int NAME = 2;
	public static final int TERMS = 3;

	public static int doLabel=NOLABEL;

	public Marriage() { } //  zero-arg constructor
	
	Marriage(Point l) {
		location = l;
		//mid = ++marrID;
		//marriageIDs.put(new Integer(mid), this);
	}
	public static Marriage areMarried(Individual p1, Individual p2) {
		return areMarried((Person) p1, (Person) p2); 
	}
	
	public static Marriage areMarried(Person p1, Person p2) {
		LinkedList m1, m2;
		if ((m1 = p1.getMarriages()) == null || (m2 = p2.getMarriages()) == null)
			return null;
		m1 = m2;
		for (;m1 != null;m1 = m1.hasMoreElements() ? (LinkedList) m1.nextElement():null) {
			if (m2.get(m1.getValue()) != null) {
				return (Marriage) m1.getValue();
			}
		}
		return null;
	}
	
	public LinkedList getSpouses() {
		return spouses;
	}
	
	public void setSpouses(LinkedList s) {
		spouses = s;
	}

	public boolean isSpouse(Individual p) {
		return isSpouse((Person) p); 
	}	
	public boolean isSpouse(Person p) {
		if (spouses == null) return false;
		return spouses.isHere(p);
	}
	
	public void addSpouse(Person p) {
		if (spouses == null) spouses = new LinkedList(p);
		else if (!spouses.isHere(p)) spouses.extend(p);
// update person		p.addMarriage(this);
		if (p.getMarriages() == null) p.setMarriages(new LinkedList(this));
		else if (!p.getMarriages().isHere(this)) p.getMarriages().extend(this);
	}
		
	public void delSpouse(Person p) {
		if (spouses != null) spouses = (LinkedList) spouses.remove(p);
// update person		p.delMarriage(this);
		if (p.getMarriages() != null && p.getMarriages().isHere(this)) 
			p.setMarriages((LinkedList) p.getMarriages().remove(this));
	}
	
	public String eligibleSpouse(Person p) {
	//  Added for SILKin: enforces rule that a marriage must
	//  have at most 1 husband and 1 wife.
	//  If adding p will violate rule, return message.
		if (spouses == null || spouses.isEmpty()) return "OK";
		if (spouses.size() > 1) return "bigamy";
		Person q = (Person)spouses.first().value;
		if (q.sex.equals(p.sex)) return "gay";
		else return "OK";
	}
	
	public boolean isSib(Person p) {
		if (sibset == null) return false;
		return sibset.isHere(p);
	}
	
	public void addSib(Person p) {
		if (sibset == null) sibset = new LinkedList(p);
		else if (!sibset.isHere(p)) {
			 sibset.extend(p);
		}
		if (p.getParents() != this) p.setParents(this);
	}

	public void delSib(Person p) {
		if (sibset != null) {
			if (sibset.isHere(p)) {
				sibset = (LinkedList) sibset.remove(p);
				//if (sibset == null) System.out.println("null");
				p.setParents(null);
			}
		}
	}
	
    public void delMarriage() {
        LinkedList sp = spouses;
        while ((sp = spouses) != null) {
            delSpouse((Person) sp.getValue());
            sp = sp.getNext();
        }
        sp = sibset;
        while ((sp = sibset) != null) {
            delSib((Person) sp.getValue());
            sp = sp.getNext();
        }
    }

    public void deltaMove(int dx, int dy) {
        ArrayList<Individual> people = new ArrayList<Individual>();
        LinkedList sp = spouses;
        location.x -= dx;
        location.y -= dy;
        while (sp != null) {
            Person p = (Person) sp.getValue();
            p.location.x -= dx;
            p.location.y -= dy;
            people.add((Individual)p);
            sp = sp.getNext();
        }
        sp = sibset;
        while (sp != null) {
            Person p = (Person) sp.getValue();
            p.location.x -= dx;
            p.location.y -= dy;
            people.add((Individual)p);
            sp = sp.getNext();
        }
        KinEditPanel.parent.chart.delayedAreaCk(people);
    }

    public void lineageDeltaMove(int dx, int dy, ArrayList<Individual> people) {
        LinkedList sp = spouses;
        location.x -= dx;
        location.y -= dy;
        while (sp != null) {
            Person p = (Person) sp.getValue();
            p.location.x -= dx;
            p.location.y -= dy;
            people.add((Individual) p);
            sp = sp.getNext();
        }
        sp = sibset;
        while (sp != null) {
            Person p = (Person) sp.getValue();
            LinkedList mrg = p.getMarriages();
            if (mrg == null) {
                p.location.x -= dx;
                p.location.y -= dy;
                people.add((Individual) p);
            } else {
                while (mrg != null) {
                    ((Marriage) mrg.getValue()).lineageDeltaMove(dx, dy, people);
                    mrg = mrg.getNext();
                }
            }
            sp = sp.getNext();
        }
    }

    void adjustLocation(int extraWidth, int extraHeight) {
        location.x += extraWidth;
        location.y += extraHeight;
    }

    public LinkedList getSibset() {
		return sibset;
	}
	
    public void setSibset(LinkedList s) {
		sibset = s;
	}

	int midx=0;
	int midy=0;
	
	public void drawSpouseLines(Graphics g) {
		Rectangle xr = bounds();
		int xw = xr.width/2;
		int xh = xr.height;
		LinkedList sp = getSpouses();
		Person p;
		if (!hasBegun()) return;
		if (sp != null) {
			int minx=location.x;
			int maxx=location.x;
			int miny=9999;
			int maxy=-9999;
			int count=0;
			while (sp != null) {
				p = (Person) sp.getValue();
				if (minx > p.location.x) minx =  p.location.x;
				if (maxx < p.location.x) maxx =  p.location.x;
				if (miny > p.location.y) miny =  p.location.y;
				if (maxy < p.location.y) maxy =  p.location.y;
				count++;
				sp = (LinkedList) sp.getNext();
			}
			maxy += xh+4;
			minx += xw;
			maxx += xw;
			sp = getSpouses();
			g.drawLine(minx,maxy,maxx,maxy);
			midx = minx +(maxx-minx)/2;
			midy = maxy;
			while (sp != null) {
				p = (Person) sp.getValue();
				
				g.drawLine(p.location.x+xw,p.location.y+xh,p.location.x+xw,maxy);
				sp = (LinkedList) sp.getNext();
			}
		} else {
			midx = location.x;
			midy = location.y + xh+4;
		}
	}

	public void drawSibLines(Graphics g) { // call draSpouseLines at least once first
		LinkedList sp = getSibset();
		Person p;
		Rectangle xr = bounds();
		int xw = xr.width/2;
		int xh = xr.height;
		if (!hasBegun()) return;
		if (sp != null) {
			int minx=location.x;
			int maxx=location.x;
			int miny=9999;
			int maxy=-9999;
			int count=0;
			while (sp != null) {
				p = (Person) sp.getValue(); // next line kludge
				if (p.location.x != -100 && p.location.y != -100 && p.hasBegun()) {
					if (minx > p.location.x) minx =  p.location.x;
					if (maxx < p.location.x) maxx =  p.location.x;
					if (miny > p.location.y) miny =  p.location.y;
					if (maxy < p.location.y) maxy =  p.location.y;
					count++;
				}
				sp = (LinkedList) sp.getNext();
			}
			
			miny -= 5;
			minx += xw;
			maxx += xw;
			sp = getSibset();
			if (count == 0) return;
			g.drawLine(minx,miny,maxx,miny); // draw horizontal line as wide as needed
			g.drawLine(location.x+xw,miny,location.x+xw,midy); // draw vertical from center of union symbol to horiz line
			while (sp != null) {
				p = (Person) sp.getValue();
				if (p.location.x != -100 && p.location.y != -100 && p.hasBegun())
					g.drawLine(p.location.x+xw,p.location.y,p.location.x+xw,miny);
				sp = (LinkedList) sp.getNext();
			}
		}
	}
	
	public void drawLines(Graphics g) {
		drawSpouseLines(g);
		drawSibLines(g);
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
		if (!marriageYr.equals("NA") && !refYear.equals(""))
			return (marriageYr.compareTo(refYear) <= 0);
		else return true;
	}

        /* Modified this method for SILKin, since refYear is
         * not used. Original version below:
         *
         * if (!divorceYr.equals("NA") && !refYear.equals(""))
	 *	return(divorceYr.compareTo(refYear) <= 0);
	 *	else return false;
         */
	public boolean hasEnded() {
		if (!divorceYr.equals("NA") && !divorceYr.equals(""))
			return true;
		else return false;
	}

	public void drawSymbol(Graphics g, Rectangle pbounds) {
		Rectangle myBounds = bounds();
		// myBounds.translate(offset.x,offset.y);
		drawn=false;

		if (myBounds.intersects(pbounds)) {
			if (hasEnded()) {
				marSymbol.symbol.drawEndSymbol(g,myBounds);
				drawn = true;
			} else if (hasBegun()) {
				marSymbol.symbol.drawSymbol(g,myBounds);
				drawn=true;
			}
		}
	}
	
	/** Generates a string in XML format with details of this Marriage.
         *  Note that 2 LinkedLists, 'spouses' and 'siblings', are not written.
         *  These duplicate the information in the husband, wife, and children
         *  ArrayLists of the Family class.
         *  When a Marriage/Family object is loaded from disk, we re-create the
         *  'spouses' and 'siblings' LinkedLists from the Family information.
         */
        public String toXMLString() {
            String xml = "";
            xml += "  <location x=\"" + location.x + "\" y=\""
                    + location.y + "\"/>" + XFile.Eol;
            xml += "  <stats>"+XFile.Eol;
            if (marriageYr.equals("")) {
                marriageYr = "NA";
            }
            if (divorceYr.equals("")) {
                divorceYr = "NA";
            }
            xml += "    <begin>" + marriageYr.replace(' ','#') +
                    "</begin> <end>" + divorceYr.replace(' ','#') +
                    "</end>\n    <reason>" + (reason.equals("") ? "NA" : reason) +
                    "</reason> </stats>"+XFile.Eol;
            if (comment != null && comment.length() > 0) {
                xml += "  <comments txt=\"" + comment + "\"/>"+XFile.Eol;
            }
            return xml;
	}


	public static String allToXML() {
		PrintFormat pf = new PrintFormat();
		unionsToXML(pf);
		return pf.toString();
	}

	public void unionToXML(PrintFormat pf) {
		pf.printf("  <union>"+XFile.Eol+"    <id>%d</id><location><x>%d</x><y>%d</y></location>"+XFile.Eol,mid);
		pf.printF(location.x);
		pf.printF(location.y);
		if (comment.equals("")) {
			comment = "None";
		}
		if (marriageYr.equals("")) {
			marriageYr = "NA";
		}
		if (divorceYr.equals("")) {
			divorceYr = "NA";
		}
		if (reason.equals("")) {
			reason = "NA";
		}
		pf.printf("    <stats>"+XFile.Eol);
		pf.printf("        <begin q=\"%s\">%s</begin><end q=\"%s\">%s</end><reason>%s</reason></stats>"+XFile.Eol,
			beginq);
		pf.printF(marriageYr.replace(' ','#'));
		pf.printF(endq);
		pf.printF(divorceYr.replace(' ','#'));
		pf.printF(reason);
		LinkedList sp = spouses;
		if (sp != null) {
			pf.printf("    <partners>"+XFile.Eol);
			while(sp != null) {
				Person p = (Person) sp.getValue();
				pf.printf("      <partner>%d</partner>"+XFile.Eol,p.myId);
				sp = sp.getNext();
			}
			pf.printf("    </partners>"+XFile.Eol);
		}
		sp = sibset;
		if (sp != null) {
			pf.printf("    <siblings>"+XFile.Eol);
			while(sp != null) {
				Person p = (Person) sp.getValue();
				pf.printf("      <sibling>%d</sibling>"+XFile.Eol,p.myId);
				sp = sp.getNext();
			}
			pf.printf("    </siblings>"+XFile.Eol);
		}
		pf.printf("    <comment>%s</comment>"+XFile.Eol+"  </union>"+XFile.Eol,comment);
	}

	public static void unionsToXML(PrintFormat pf) {
		pf.printf("<unions>"+XFile.Eol);
		for (Family m : Marriage.knots) {
			if (m != null) m.unionToXML(pf);
		}
		pf.printf("</unions>"+XFile.Eol);
	}
	
	public static boolean readXML(XFile sFile) {
		int pid, locx, locy;
		String ntag[][];
		
		pid = new Integer(sFile.readTagValue("id")).intValue()-1;
		locx = new Integer(sFile.readTagValue("x")).intValue();
		locy = new Integer(sFile.readTagValue("y")).intValue();
		
		while (pid > knots.size()) knots.add(null);	//  insert nulls in empty slots
		Family newMar = new Family(new Point(locx,locy));
		newMar.mid = pid+1;
		sFile.readUntilTag("stats");
		ntag = sFile.readTag();
		//if (ntag[0][0].equals("stats")) ntag = sFile.readTag();
		if (ntag[0][0].equals("begin")) {
			newMar.marriageYr = sFile.readThisTagValue().replace('#',' ');
		} else System.out.println("Incorrect tag in Marriage.readXML: "+ntag[0][0]);
		
		//newMar.type = sFile.readTagValue("type").replace('#',' ');
		//newMar.marriageYr = sFile.readTagValue("marriageYr").replace('#',' ');
		if (sFile.attributes.length > 1) newMar.beginq = sFile.attributes[1][1];
		newMar.divorceYr = sFile.readTagValue("end").replace('#',' ');
		if (sFile.attributes.length > 1) newMar.endq = sFile.attributes[1][1];
		newMar.reason = sFile.readTagValue("reason");
		sFile.readUntilTag("/stats");
		String xx[][] = sFile.readTag();
		if (xx[0][0].equalsIgnoreCase("partners")) {
			//sFile.readUntilTag("partner");
			for(;;) {
				xx = sFile.readTag();
				if (xx[0][0].equalsIgnoreCase("/partners")) break;
				
				Person ns = (Person)Person.folks.get(Integer.parseInt(sFile.readThisTagValue())-1);
				String permit = newMar.eligibleSpouse(ns);
				if (permit.equals("OK")) newMar.addSpouse(ns);
				else System.out.println("Invalid marriage in Marriage.readXML: " + permit +
									"\n for MarrID # " + newMar.mid);
			}
			xx = sFile.readTag();
		}
		if (xx[0][0].equalsIgnoreCase("siblings")) {
			//sFile.readUntilTag("sibling");
			for(;;) {
				xx = sFile.readTag();
				if (xx[0][0].equalsIgnoreCase("/siblings")) break;
				newMar.addSib(Person.folks.get(Integer.parseInt(sFile.readThisTagValue())-1));
			}
			xx = sFile.readTag();
		}
		if (xx[0][0].equalsIgnoreCase("comment")) {
			newMar.comment = sFile.readThisTagValue();
		}
		xx = sFile.readTag();
		return true;
	}
	
	public static boolean readUnions(XFile sFile) {
		String [][] ntag;
		for(;;) {
			ntag = sFile.readTag();
			if (ntag[0][0].equalsIgnoreCase("/unions")) break;
			while (!ntag[0][0].equals("union")) {
				ntag = sFile.readTag();
			}
			if (!readXML(sFile)) {
				return false;
			}
		}
		return true;
	}
}
