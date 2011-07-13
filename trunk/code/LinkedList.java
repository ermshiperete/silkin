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



import java.util.*;

public class LinkedList extends Dictionary implements Enumeration{
	LinkedList next=null;
	LinkedList prev=null;
	Object value=null;
	
	LinkedList() {
				
	}
	
	LinkedList(Object o) {
		this.value = o;
	}
	
	public Object clone() {
		LinkedList p = new LinkedList();
		p.value = this.value;
		return p;
	}

	public LinkedList cloneList() {
		LinkedList t;
		LinkedList f = first();
		LinkedList k = (LinkedList) f.clone();
		LinkedList nf = k;
		while (f.hasMoreElements() != false) {
			f = (LinkedList) f.nextElement();
			t = (LinkedList) f.clone();
			t.prev = k;
			k.next = t;
			k = t;
		};
		return nf;
	}

	public LinkedList allBut(Object key) {
		LinkedList t;
		LinkedList f = first();
		if (f.value.equals(key)) 
			if (f.next != null) f = f.next;
			else return null;
		LinkedList k = (LinkedList) f.clone();
		LinkedList nf = k;
		while (f.hasMoreElements() != false) {
			f = (LinkedList) f.nextElement();
			if (f.value.equals(key)) continue;
			t = (LinkedList) f.clone();
			t.prev = k;
			k.next = t;
			k = t;
		};
		return nf;
	}
	
	public void eraseList() {
		LinkedList t;
		LinkedList f = first();
		t = f.next;
		f.next = null; // remove references
		while (t != null) {
			f = t.next;
			t.prev = null;
			t.next = null;
			t = f;
		};
	}

	public LinkedList extend() {
		return append(new LinkedList());
	}

	public LinkedList extend(Object v) {
		LinkedList f = append(new LinkedList(v));
		return f;
	}

	public LinkedList append(LinkedList r) {
		LinkedList p=this;
		r.next = null;
		while (p.next != null) p=p.next;
		p.next = r;
		return (r.prev = p);
	}

	public LinkedList insert(LinkedList r) {
		r.prev = this;
		r.next = this.next;
		if (this.next != null) 
			this.next.prev = r;
		this.next = r;
		return r;
	}
	
	public LinkedList prepend(LinkedList r) {
		r.prev = this.prev;
		r.next = this;
		if (this.prev != null) 
			this.prev.next = r;
		this.prev = r;
		return r;
	}

	// removes this node from list
	// should not remove the first element without storing!!!!!
	public LinkedList xdetach() { // returns new head relative to this node
		if (this.prev != null) this.prev.next = this.next;
		if (this.next != null) this.next.prev = this.prev;
		if (this.prev == null && this.next == null) return null;
		else if (this.prev == null) return this.next;
		else return this.prev.first();
	}
	public LinkedList detach() { // returns new head relative to this node
		LinkedList p = prev,n=next;
		if (this == first()) {
			if (n != null) n.prev = null;
			next = null;
			return n;
		}
		if (this == last()) {
			if (p != null) p.next = null;
			prev = null;
			return p;
		}
		prev = null;
		next = null;
//		if (p == null && n == null) return null;
		if (p != null) p.next = n;
		if (n != null) n.prev = p;
		if (p == null) return n;
		else return p.first();
	}

	public LinkedList last() { // return last node
		if(next != null) return next.last();
		else return this;
	}
	
	public LinkedList first() { // return first node
		if(prev != null) return prev.first();
		else return this;
	}
	
	public boolean hasMoreElements() {
		if (next == null) return false;
		else return true;
	}
	
	public Object nextElement() {
		if (next == null) 
			throw new NoSuchElementException("In Linked List ... no next Element");
		else return next;
	}
	
		
	public LinkedList getNext() {
		return next;
	}
	
	public Object prevElement() {
		if (prev == null) 
			throw new NoSuchElementException("In Linked List ... no previous Element");
		else return prev;
	}

	public LinkedList getPrev() {
		return prev;
	}

	private LinkedList _nth_(int i) {
		if (i == 0) return this;
		else if (this.next == null) 
			throw new NoSuchElementException("In Linked List ... no such Element"); // throw exception
		else return this.next._nth_(i-1);
	}
	
	public LinkedList elementAt(int i) {
		return first()._nth_(i);
	}
	
	public Enumeration elements() {
		return this.first();
	}
	
	public Enumeration keys() { // are no real keys
		return this.first();
	}
	
	public Object get(Object key) { // unorthodox: find element whose value is key
		return this.first()._get_(key);
	}
	
	private LinkedList _get_(Object key) {
		if (value.equals(key)) return this;
		if (value == key) return this;
		else if (next != null) return next._get_(key);
		else return null;
	}
	
	public boolean isHere(Object key) {
		return (get(key) != null);
	}
	
	private int _count_() {
		if (next != null) return next._count_()+1;
		else return 1;
	}

	public int size() {
		return first()._count_();
	}
	
	public boolean isEmpty() { // can't be
		return false;
	}
	
	public Object put(Object key, Object value) { // replace key with value
		LinkedList f = first()._get_(key);
		if (f != null) f.value = value;
		else extend(value);
		return value;
	}
	
	public Object remove(Object key) {
		LinkedList f = first()._get_(key);
		if (f == null) return first();
		else {
			return f.detach();
		}
	}
	
	public Object getValue() {
		return value;
	}

	public void setValue(Object o) {
		value = o;
	}
}
