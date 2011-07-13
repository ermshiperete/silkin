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





public class PrintFormat extends Object {
	StringBuffer theText= new StringBuffer(120);
	String formatStr=null;
	StringBuffer aux = new StringBuffer(32);
	int scanref=0;

	int nextElem=0; // 1 string 2 int 3 float
	int just=0; // 0 right numbers, left string 1 left 2 right
	int field=0; // space for number
	int decplaces=0; // aux for floating
	boolean keep=false;
	
	
	PrintFormat() {
		theText = new StringBuffer(128);
	}
	
	PrintFormat(boolean k) {
		theText = new StringBuffer(128);
		keep=k;
	}

	
	PrintFormat(int i) {
		theText = new StringBuffer(i);
	}

	PrintFormat(String f) {
		formatStr = f;
	}
	
	PrintFormat(int i, String f) {
		theText = new StringBuffer(i);
		formatStr = f;
	}


	public void setFormat(String f) {
		formatStr = f;
		if (keep == false) theText.setLength(0);
		repeatFormat();
	}
	
	public void repeatFormat() {
		if (formatStr == null) formatStr = "%s\n";
		scanref = 0;
		nextElem = 0;
		just = 0;
		field = 0;
		decplaces = 0;
	}
	
	public String printItem(String i) {
	
		int fieldwidth = field +((decplaces > 0) ? decplaces + 1 : 0);
		String aux =  new String("                                                                ".substring(0,fieldwidth));
		if (fieldwidth == 0) theText.append(i);
		else if (i.length() >= fieldwidth) theText.append(i.substring(0,fieldwidth));
		else {
			if (just == 3) {
				int x = fieldwidth - i.length();
				int y = fieldwidth / 2;
				theText.append(aux.substring(0,y + ((x & 1) == 1 ? 1:0)));
				theText.append(i);
				theText.append(aux.substring(0,y));
			} else if (((just== 0 || just == 2)&&nextElem > 1) || ( just == 2 && nextElem == 1)) {
				theText.append(aux.substring(0,fieldwidth-i.length()));
				theText.append(i);
			} else {
				theText.append(i);
				theText.append(aux.substring(0,fieldwidth-i.length()));
			}
		}
		scan();
		return theText.toString();
	}
	
	public String printOut() {
		repeatFormat();
		return theText.toString();
	}
	
	public String toString() {
		return theText.toString();
	}
	
	
	public void printf(Object i) {
		setFormat("%s");
		dispatchF(i);
	}

	public void printf(String f, Object[] o) {
		setFormat(f);
		for(int i = 0;i<o.length;i++) {
			dispatchF(o[i]);
		}
	}
	
	public void printf(String f, int i) {
		setFormat(f);
		printF(i);
	}
	
	public void printf(String f, float i) {
		setFormat(f);
		printF(i);
	}
	
		
	public void printf(String f, double i) {
		setFormat(f);
		printF(i);
	}

	public void printf(String f, long i) {
		setFormat(f);
		printF(i);
	}
	
	public void printf(String f, String i) {
		setFormat(f);
		dispatchF(i);
	}

	public void printf(String f, Object i) {
		setFormat(f);
		dispatchF(i);
	}

	private void dispatchF(Object i) {
		if (i == null) return;
		
		if (i instanceof String) printF((String) i);
		else if (i instanceof Integer) printF((Integer) i);
		else if (i instanceof Float) printF((Float) i);
		else if (i instanceof Long) printF((Long) i);
		else if (i instanceof Double) printF((Double) i);
		else printF(i.toString());
	}

	public void printF(int i) {
		if (nextElem == 0) scan();
		if (nextElem == 3) printF(new Float(i));
		else printItem(new Integer(i).toString());
	}

	public void printF(long i) {
		if (nextElem == 0) scan();
		if (nextElem == 3) printF(new Double(i));
		else printItem(new Long(i).toString());
	}

	public void printF(Integer i) {
		printF(i.intValue());
		//if (nextElem == 0) scan();
		//printItem(i.toString());
	}

	public void printF(Long i) {
		printF(i.longValue());
//		if (nextElem == 0) scan();
//		printItem(i.toString());
	}

	public void printF(String i) {
		if (nextElem == 0) scan();
		printItem(i);
	}

	public void printF(Float i) {
		printF(i.floatValue());
	//	if (nextElem == 0) scan();
	//	printItem(i.toString());
	}

	public void printF(Double i) {
		printF(i.doubleValue());
//		if (nextElem == 0) scan();
//		printItem(i.toString());
	}

	public void printF(float i) {
		int a;
		float b;
		int c;
		if (nextElem == 0) scan();
		if (nextElem == 1) {
			printItem(new Float(i).toString());
		} else if (nextElem == 2) {
			a= (int) i;
			printItem(new Integer(a).toString());
		} else {
			if (decplaces == 0) printItem(new Float(i).toString());
			else {
				a = (int) i;
				b = Math.abs(i) - Math.abs(a) + 1;
				c = (int) (b * Math.pow(10,decplaces) + 0.5);
				String cx = new Integer(c).toString();
				printItem(new Integer(a).toString()+"."+cx.substring(1,cx.length()));
				
//				printItem(new Integer(a).toString()+"."+new Integer(c).toString());
			}
		}
	}

	public void printF(double i) {
		long a;
		double b;
		long c;
		if (nextElem == 0) scan();
		if (nextElem == 1) {
			printItem(new Double(i).toString());
		} else if (nextElem == 2) {
			a= (long) i;
			printItem(new Long(a).toString());
		} else {
			if (decplaces == 0) printItem(new Double(i).toString());
			else {
				a = (long) i;
				b = Math.abs(i) - Math.abs(a) + 1;
				c = (long) (b * Math.pow(10,decplaces) + 0.5);
				String cx = new Long(c).toString();
				printItem(new Long(a).toString()+"."+cx.substring(1,cx.length()));
		//	printItem(new Long(a).toString()+"."+new Long(c).toString());
			}
		}
	}


	
	public boolean scan() {
		char p;
		int scanning=1;
		
		field = 0;
		decplaces = 0;
		just = 0;
		do {
			int lit=0;
	
			if (scanning == 1) {
				lit = 0;
				do {
					p = formatStr.charAt(scanref++);
					if (lit == 1) {
						switch(p) {
						//	case 'n':	theText.append('\n');
						//			break;	
						//	case 'r':	theText.append('\r');
						//			break;	
							default:	theText.append(p);
									break;	
							// do something about hex/octal constants
						}
						lit = 0;
						p=0; // to trick exit conditions
					} else if (p != '%') {
						if (p == '\\') lit=1;
						else theText.append(p);
					}
				} while (p != '%' && scanref < formatStr.length());
	
				if (scanref >= formatStr.length()-1) {
					nextElem = 0;
					scanning=0;
					scanref = 0; // formatStr.length()-1;
					return(false);
				} else scanning = 2;
			}
			if (scanning >= 2) {
				p = formatStr.charAt(scanref++);
				if (p=='%') {
					if (scanning == 2) theText.append('%');
					scanning = 1;
				} else if (p >= '0' && p <= '9') {
					field = getNumber(p);
				} else {
					switch (p) {
					case 's':	nextElem = 1;
								scanning = 0;
							break;
					case 'd':	nextElem = 2;
								scanning = 0;
							break;
								
					case 'f':	nextElem = 3;
								scanning = 0;
							break;
					case '-':	just = 1;
								field = getNumber();
							break;
					case '+':	just = 2;
								field = getNumber();
							break;
					case '=': 	just = 3;
								field = getNumber();
							break;
					case '.': 	decplaces = getNumber();
							break;
					default:	nextElem = 0;
								field = 0;
								decplaces = 0;
								just = 0;
					}
				}
			}
		} while (scanning != 0);
		return true;
	}
	
	private int getNumber() {
		char p;
		StringBuffer x = new StringBuffer(32);
		
		for(p = formatStr.charAt(scanref++);
			p >= '0' && p <= '9' && scanref < formatStr.length()+1;
			p = formatStr.charAt(scanref++)) {
			
			x.append(p);
		}
		if (scanref < formatStr.length()) scanref--;
		Integer a = new Integer(x.toString());
		return a.intValue();
	}
	
	private int getNumber(char p) {
		scanref--;
		return getNumber();
	}
	
//	public void sprintf(String

}
