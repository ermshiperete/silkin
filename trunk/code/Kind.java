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

public class Kind implements java.io.Serializable {

    SymbolDraw symbol; /* which symbol or linetype */
    String name;
}

class SymbolDraw implements java.io.Serializable {

    public void drawSymbol(Graphics g, Rectangle bounds) {
    }

    public void drawSymbol(Graphics g, Rectangle bounds, Color c) {
    }

    public void drawEndSymbol(Graphics g, Rectangle bounds) {
        Polygon p = new Polygon();
        drawSymbol(g, bounds);
        p.addPoint(bounds.x, bounds.y - 3);
        p.addPoint(bounds.x + 2, bounds.y - 3);
        p.addPoint(bounds.x + bounds.width, bounds.y + bounds.height + 5);
        p.addPoint(bounds.x + bounds.width - 2, bounds.y + bounds.height + 5);
        p.addPoint(bounds.x, bounds.y - 3);
        g.fillPolygon(p);
    }

    public void drawEndSymbol(Graphics g, Rectangle bounds, Color c) {
        Color save = g.getColor();
        Polygon p = new Polygon();
        g.setColor(c);
        drawSymbol(g, bounds);
        drawEndSymbol(g, bounds);
        g.setColor(save);
    }
}

class drawCircle extends SymbolDraw {

    public void drawSymbol(Graphics g, Rectangle bounds) {
        g.fillOval(bounds.x, bounds.y, bounds.width, bounds.height);
    }

    public void drawSymbol(Graphics g, Rectangle bounds, Color c) {
        Color save = g.getColor();
        g.setColor(c);
        g.fillOval(bounds.x, bounds.y, bounds.width, bounds.height);
        g.setColor(save);
    }
}

class drawSquare extends SymbolDraw {

    public void drawSymbol(Graphics g, Rectangle bounds) {
        g.fillRect(bounds.x, bounds.y, bounds.width, bounds.height);
    }

    public void drawSymbol(Graphics g, Rectangle bounds, Color c) {
        Color save = g.getColor();
        g.setColor(c);
        g.fillRect(bounds.x, bounds.y, bounds.width, bounds.height);
        g.setColor(save);
    }
}

class drawTriangle extends SymbolDraw {

    public void drawSymbol(Graphics g, Rectangle bounds) {
        fillTriangle(g, bounds.x, bounds.y, bounds.width, bounds.height);
    }

    public void drawSymbol(Graphics g, Rectangle bounds, Color c) {
        Color save = g.getColor();
        g.setColor(c);
        fillTriangle(g, bounds.x, bounds.y, bounds.width, bounds.height);
        g.setColor(save);
    }

    void fillTriangle(Graphics g, int x, int y, int w, int h) {
        int x1 = x + w / 2;
        int xs[] = {x1, x, x + w, x1};
        int ys[] = {y, y + h, y + h, y};
        g.fillPolygon(xs, ys, 4);
    }
}

class drawEquals extends SymbolDraw {

    public void drawSymbol(Graphics g, Rectangle bounds) {
        fillEqual(g, bounds.x, bounds.y, bounds.width, bounds.height);
    }

    public void drawSymbol(Graphics g, Rectangle bounds, Color c) {
        Color save = g.getColor();
        g.setColor(c);
        fillEqual(g, bounds.x, bounds.y, bounds.width, bounds.height);
        g.setColor(save);
    }

    void fillEqual(Graphics g, int x, int y, int w, int h) {
        int yh = 4;
        int yo = yh + 4;
        y += 4;

        int xs[] = {x, x + w, x + w, x, x};
        int ys[] = {y, y, y + yh, y + yh, y};
        g.fillPolygon(xs, ys, 5);

        int qxs[] = {x, x + w, x + w, x, x};
        int qys[] = {y + yo, y + yo, y + yo + yh, y + yo + yh, y + yo};
        g.fillPolygon(qxs, qys, 5);
    }
}

class MarriageSymbol extends Kind {

    public MarriageSymbol() {
        symbol = new drawEquals();
        name = "Marriage";
    }
}
