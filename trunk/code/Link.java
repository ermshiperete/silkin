import java.util.*;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.Point;
import java.awt.Rectangle;
import java.io.Serializable;

/**
 * This class represents a pointer to an Individual. It is used to allow the
 * User to place a pointer to someone on Chart A when that Individual's "home
 * chart" is not A. For example: Sammy is a child of the Smith family of Chart
 * B. Sally is a child of the Forth family of Chart D. When Sammy marries Sally,
 * we decide which chart will contain the marriage (assume B here). The Union
 * symbol is added to chart B and Sammy is made a spouse in it. Then a Link to
 * Sally is added to Chart B and also made a spouse in the Union. Over on Chart
 * D, Sally's symbol is altered to indicate that she has been linked to. On
 * Chart B, the Link to Sally has a striated symbol to indicate a Link.
 *
 * @author	Gary Morris, Northern Virginia Community College         garymorris2245@verizon.net
 */
public class Link implements Locatable, Serializable {
    public static Color defaultColor = new Color(0, 120, 20);
    
    public Point location;
    Kind sex;
    String dataChangeDate, dataAuthor, homeChart = "";
    int serialNmbr;
    Individual personPointedTo;
    boolean drawn = false, deleted = false;
    
    public Link(Context ctxt) {
        serialNmbr = ctxt.linkSerNumGen++;
        ctxt.linkCensus.add(this);
    }
    
    public Link(Individual ind, String chart, Point loc) {
        personPointedTo = ind;
        if (ind.links == null) {
            ind.links = new ArrayList<Link>();
        }
        ind.links.add(this);
        sex = ind.sex;
        homeChart = chart;
        location = loc;
        serialNmbr = Context.current.linkSerNumGen++;
        dataChangeDate = UDate.today();
        dataAuthor = Library.currDataAuthor;
        Context.current.linkCensus.add(this);
    }

    public Point getLocation() { return location; }
    
    public int getLocationX() { return location.x; }

    public int getLocationY() { return location.y; }

    public void setLocation(Point p) {
      setLocation(p.x, p.y);
    }
    
    public void setLocation(int x, int y) {
      location.x = x;
      location.y = y;
    }
    
    public void setLocationX(int x) {
      setLocation(x,location.y);
    }
    
    public void setLocationY(int y) {
      setLocation(location.x,y);
    }
    
    public void adjustLocation(int extraWidth, int extraHeight) {
        setLocation(location.x + extraWidth, 
                    location.y + extraHeight);
    }
    
    public void drawLabel(Graphics g, Rectangle theBounds) {
        personPointedTo.drawLabel(g, theBounds);
    }

    public void drawSymbol(Graphics g, Rectangle pbounds) {
        Rectangle myBounds = bounds();
        // myBounds is used to compute the size of the symbol
        drawn = false;
        if (pbounds.contains(location)) {
            sex.symbol.drawSymbol(g, myBounds);
            drawLabel(g, myBounds);
            drawn = true;
        }
    }

    public void drawSymbol(Graphics g, Rectangle pbounds, Color c) {
		Color x = g.getColor();
		g.setColor(c);
		drawSymbol(g,pbounds);
		g.setColor(x);
	}
	
    public Rectangle bounds() {
        int siz = personPointedTo.getSize();
        return new Rectangle(location.x, location.y, siz, siz);
    }

    static int findLink(int x, int y) {
        if (Context.current == null || Context.current.linkCensus.isEmpty()) {
            return -1;
        }
        int size = Context.current.linkCensus.size();
        for (int i = size - 1; i >= 0; i--) {
            Link lk = Context.current.linkCensus.get(i);
            if (lk.bounds().contains(x, y) && 
                    lk.homeChart.equals(Context.current.currentChart)) {
                return i;
            }
        }
        return -1;
    }
    
    static void delete(Link lk) {
        if (lk.serialNmbr == Context.current.linkCensus.size() -1) {
            Context.current.linkCensus.remove(lk);
            Context.current.linkSerNumGen--;
        }else {
            lk.deleted = true;
            lk.homeChart = "";
            lk.location = new Point(-100, -100);
        }
    }

    public String toSILKString() {
        String s = "<link person=\"";
        s += personPointedTo.serialNmbr +  "\" deleted=\"";
        s += deleted + "\" gender=\"";
        s += personPointedTo.gender + "\" homeChart=\"";
        s += homeChart + "\" locationX=\"";
        s += location.x + "\" locationY=\"";
        s += location.y + "\" serial=\"";
        s += serialNmbr + "\" author=\"";
        s += dataAuthor + "\" chgDate=\"" + dataChangeDate + "\">";
        return s;
    }
    
    public String toString() {
        return toSILKString();
    }
    
    public int getSize() { return 16; }
}
