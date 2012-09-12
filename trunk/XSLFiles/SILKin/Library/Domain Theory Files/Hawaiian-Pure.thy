;;  Horn Clause Representation of Hawaiian-Pure Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Hawaiian-Pure") (author, "E. S. Handy") (date, "1972-01-01") (citation, "E. S. Handy, THE POLYNESIAN FAMILY SYSTEM IN KA-'U, HAWAI'I, 1972, eHRAF for Culture=OV05 (Hawaii) and Topic=601 (kinship)") 
(non_term, [aux], [eq], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, false) (address, false) (recursiveLevels, 2)
(overlaps, (kaikaina, (kaikua_ana)), (kaikua_ana, (kaikaina)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

brother(Alter, Ego) :-  sibling(Alter, Ego), male(Alter).
;; 0
%brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).


children(Alter, Ego) :-  son(Alter, Ego).
                     |   daughter(Alter, Ego).
;; 0
%children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Alter, Ego).
;; 1
%children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Alter, Ego).


gen[aux]18(Alter, Ego) :-  siblings(Alter, Ego).
                       |   parents(A, Ego), gen[aux]18(B, A), children(Alter, B).
;; 0
%gen[aux]18:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%gen[aux]18:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 7
%gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 8
%gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 9
%gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 10
%gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 11
%gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 12
%gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 13
%gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 14
%gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 15
%gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 16
%gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 17
%gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 18
%gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 19
%gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 20
%gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 21
%gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 22
%gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 23
%gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 24
%gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 25
%gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 26
%gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 27
%gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 28
%gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 29
%gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 30
%gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 31
%gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 32
%gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 33
%gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 34
%gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 35
%gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 36
%gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 37
%gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 38
%gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 39
%gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 40
%gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 41
%gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).


gen[aux]18n1(Alter, Ego) :-  sibling(Alter, Ego).
                         |   parents(A, Ego), siblings(B, A), child(Alter, B).
                         |   parents(A, Ego), parents(B, A), siblings(C, B), children(D, C), child(Alter, D).
                         |   parents(A, Ego), parents(B, A), parents(C, B), siblings(D, C), children(E, D), children(F, E), child(Alter, F).
;; 0
%gen[aux]18n1:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%gen[aux]18n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%gen[aux]18n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%gen[aux]18n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 4
%gen[aux]18n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 5
%gen[aux]18n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 6
%gen[aux]18n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 7
%gen[aux]18n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 8
%gen[aux]18n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 9
%gen[aux]18n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 10
%gen[aux]18n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 11
%gen[aux]18n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 12
%gen[aux]18n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 13
%gen[aux]18n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 14
%gen[aux]18n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 15
%gen[aux]18n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 16
%gen[aux]18n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 17
%gen[aux]18n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 18
%gen[aux]18n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 19
%gen[aux]18n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 20
%gen[aux]18n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 21
%gen[aux]18n1:3, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 22
%gen[aux]18n1:3, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 23
%gen[aux]18n1:3, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 24
%gen[aux]18n1:3, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 25
%gen[aux]18n1:3, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 26
%gen[aux]18n1:3, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 27
%gen[aux]18n1:3, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 28
%gen[aux]18n1:3, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 29
%gen[aux]18n1:3, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 30
%gen[aux]18n1:3, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 31
%gen[aux]18n1:3, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 32
%gen[aux]18n1:3, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 33
%gen[aux]18n1:3, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 34
%gen[aux]18n1:3, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 35
%gen[aux]18n1:3, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 36
%gen[aux]18n1:3, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 37
%gen[aux]18n1:3, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 38
%gen[aux]18n1:3, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 39
%gen[aux]18n1:3, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 40
%gen[aux]18n1:3, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 41
%gen[aux]18n1:3, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 42
%gen[aux]18n1:3, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 43
%gen[aux]18n1:3, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 44
%gen[aux]18n1:3, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 45
%gen[aux]18n1:3, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 46
%gen[aux]18n1:3, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 47
%gen[aux]18n1:3, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 48
%gen[aux]18n1:3, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 49
%gen[aux]18n1:3, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 50
%gen[aux]18n1:3, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 51
%gen[aux]18n1:3, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 52
%gen[aux]18n1:3, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 53
%gen[aux]18n1:3, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 54
%gen[aux]18n1:3, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 55
%gen[aux]18n1:3, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 56
%gen[aux]18n1:3, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 57
%gen[aux]18n1:3, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 58
%gen[aux]18n1:3, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 59
%gen[aux]18n1:3, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 60
%gen[aux]18n1:3, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 61
%gen[aux]18n1:3, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 62
%gen[aux]18n1:3, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 63
%gen[aux]18n1:3, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 64
%gen[aux]18n1:3, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 65
%gen[aux]18n1:3, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 66
%gen[aux]18n1:3, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 67
%gen[aux]18n1:3, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 68
%gen[aux]18n1:3, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 69
%gen[aux]18n1:3, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 70
%gen[aux]18n1:3, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 71
%gen[aux]18n1:3, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 72
%gen[aux]18n1:3, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 73
%gen[aux]18n1:3, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 74
%gen[aux]18n1:3, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 75
%gen[aux]18n1:3, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 76
%gen[aux]18n1:3, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 77
%gen[aux]18n1:3, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 78
%gen[aux]18n1:3, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 79
%gen[aux]18n1:3, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 80
%gen[aux]18n1:3, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 81
%gen[aux]18n1:3, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 82
%gen[aux]18n1:3, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 83
%gen[aux]18n1:3, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 84
%gen[aux]18n1:3, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).


half_brother(Alter, Ego) :-  mother(A, Ego), father(B, Ego), wife(C, B), son(Alter, C), son(Alter, B), not(equal(C, A)).
                         |   mother(A, Ego), father(B, Ego), husband(C, A), son(Alter, C), son(Alter, A), not(equal(C, B)).
;; 0
%half_brother:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), wife(C, B), son(Alter, C), son(Alter, B), not(equal(C, A)).
;; 1
%half_brother:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), husband(C, A), son(Alter, C), son(Alter, A), not(equal(C, B)).


half_sister(Alter, Ego) :-  mother(A, Ego), father(B, Ego), wife(C, B), daughter(Alter, C), daughter(Alter, B), not(equal(C, A)).
                        |   mother(A, Ego), father(B, Ego), husband(C, A), daughter(Alter, C), daughter(Alter, A), not(equal(C, B)).
;; 0
%half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), wife(C, B), daughter(Alter, C), daughter(Alter, B), not(equal(C, A)).
;; 1
%half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), husband(C, A), daughter(Alter, C), daughter(Alter, A), not(equal(C, B)).


kaika_mahine(Alter, Ego) :-  daughter(Alter, Ego).
                         |   gen[aux]18(A, Ego), daughter(Alter, A).
                         |   step_daughter(Alter, Ego).
{"BroDa_Da_FaBroDaDa_FaBroSoDa_FaFaBroDaDaDa_FaFaBroDaSoDa_FaFaBroSoDaDa_FaFaBroSoSoDa_FaFaSisDaDaDa_FaFaSisDaSoDa_FaFaSisSoDaDa_FaFaSisSoSoDa_FaMoBroDaDaDa_FaMoBroDaSoDa_FaMoBroSoDaDa_FaMoBroSoSoDa_FaMoSisDaDaDa_FaMoSisDaSoDa_FaMoSisSoDaDa_FaMoSisSoSoDa_FaSisDaDa_FaSisSoDa_MoBroDaDa_MoBroSoDa_MoFaBroDaDaDa_MoFaBroDaSoDa_MoFaBroSoDaDa_MoFaBroSoSoDa_MoFaSisDaDaDa_MoFaSisDaSoDa_MoFaSisSoDaDa_MoFaSisSoSoDa_MoMoBroDaDaDa_MoMoBroDaSoDa_MoMoBroSoDaDa_MoMoBroSoSoDa_MoMoSisDaDaDa_MoMoSisDaSoDa_MoMoSisSoDaDa_MoMoSisSoSoDa_MoSisDaDa_MoSisSoDa_SisDa_Stda"}
;; 0
%kaika_mahine:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).
;; 1
%kaika_mahine:1, gen[aux]18:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 2
%kaika_mahine:1, gen[aux]18:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 3
%kaika_mahine:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 4
%kaika_mahine:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 5
%kaika_mahine:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 6
%kaika_mahine:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 7
%kaika_mahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 8
%kaika_mahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 9
%kaika_mahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 10
%kaika_mahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 11
%kaika_mahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 12
%kaika_mahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 13
%kaika_mahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 14
%kaika_mahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 15
%kaika_mahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 16
%kaika_mahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 17
%kaika_mahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 18
%kaika_mahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 19
%kaika_mahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 20
%kaika_mahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 21
%kaika_mahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 22
%kaika_mahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 23
%kaika_mahine:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 24
%kaika_mahine:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 25
%kaika_mahine:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 26
%kaika_mahine:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 27
%kaika_mahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 28
%kaika_mahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 29
%kaika_mahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 30
%kaika_mahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 31
%kaika_mahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 32
%kaika_mahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 33
%kaika_mahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 34
%kaika_mahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 35
%kaika_mahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 36
%kaika_mahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 37
%kaika_mahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 38
%kaika_mahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 39
%kaika_mahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 40
%kaika_mahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 41
%kaika_mahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 42
%kaika_mahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 43
%kaika_mahine:2, step_daughter:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stda}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(Alter, B), daughter(Alter, A).


kaikaina(Alter, Ego) :-  gen[aux]18n1(Alter, Ego), gender(A, Ego), gender(A, Alter), younger(Alter, Ego).
{"Bro_FaBroDa_FaBroSo_FaFaBroDaDa_FaFaBroDaSo_FaFaBroSoDa_FaFaBroSoSo_FaFaSisDaDa_FaFaSisDaSo_FaFaSisSoDa_FaFaSisSoSo_FaMoBroDaDa_FaMoBroDaSo_FaMoBroSoDa_FaMoBroSoSo_FaMoSisDaDa_FaMoSisDaSo_FaMoSisSoDa_FaMoSisSoSo_FaSisDa_FaSisSo_MoBroDa_MoBroSo_MoFaBroDaDa_MoFaBroDaSo_MoFaBroSoDa_MoFaBroSoSo_MoFaSisDaDa_MoFaSisDaSo_MoFaSisSoDa_MoFaSisSoSo_MoMoBroDaDa_MoMoBroDaSo_MoMoBroSoDa_MoMoBroSoSo_MoMoSisDaDa_MoMoSisDaSo_MoMoSisSoDa_MoMoSisSoSo_MoSisDa_MoSisSo_Sis"}
;; 0
%kaikaina:0, gen[aux]18n1:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Ego), gender(C, Alter), younger(Alter, Ego).
;; 1
%kaikaina:0, gen[aux]18n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), gender(E, Ego), gender(E, Alter), younger(Alter, Ego).
;; 2
%kaikaina:0, gen[aux]18n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), gender(E, Ego), gender(E, Alter), younger(Alter, Ego).
;; 3
%kaikaina:0, gen[aux]18n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), gender(E, Ego), gender(E, Alter), younger(Alter, Ego).
;; 4
%kaikaina:0, gen[aux]18n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), gender(E, Ego), gender(E, Alter), younger(Alter, Ego).
;; 5
%kaikaina:0, gen[aux]18n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 6
%kaikaina:0, gen[aux]18n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 7
%kaikaina:0, gen[aux]18n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 8
%kaikaina:0, gen[aux]18n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 9
%kaikaina:0, gen[aux]18n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 10
%kaikaina:0, gen[aux]18n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 11
%kaikaina:0, gen[aux]18n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 12
%kaikaina:0, gen[aux]18n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 13
%kaikaina:0, gen[aux]18n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 14
%kaikaina:0, gen[aux]18n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 15
%kaikaina:0, gen[aux]18n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 16
%kaikaina:0, gen[aux]18n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 17
%kaikaina:0, gen[aux]18n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 18
%kaikaina:0, gen[aux]18n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 19
%kaikaina:0, gen[aux]18n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 20
%kaikaina:0, gen[aux]18n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 21
%kaikaina:0, gen[aux]18n1:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Ego), gender(C, Alter), younger(Alter, Ego).
;; 22
%kaikaina:0, gen[aux]18n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), gender(E, Ego), gender(E, Alter), younger(Alter, Ego).
;; 23
%kaikaina:0, gen[aux]18n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), gender(E, Ego), gender(E, Alter), younger(Alter, Ego).
;; 24
%kaikaina:0, gen[aux]18n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), gender(E, Ego), gender(E, Alter), younger(Alter, Ego).
;; 25
%kaikaina:0, gen[aux]18n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), gender(E, Ego), gender(E, Alter), younger(Alter, Ego).
;; 26
%kaikaina:0, gen[aux]18n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 27
%kaikaina:0, gen[aux]18n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 28
%kaikaina:0, gen[aux]18n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 29
%kaikaina:0, gen[aux]18n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 30
%kaikaina:0, gen[aux]18n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 31
%kaikaina:0, gen[aux]18n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 32
%kaikaina:0, gen[aux]18n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 33
%kaikaina:0, gen[aux]18n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 34
%kaikaina:0, gen[aux]18n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 35
%kaikaina:0, gen[aux]18n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 36
%kaikaina:0, gen[aux]18n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 37
%kaikaina:0, gen[aux]18n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 38
%kaikaina:0, gen[aux]18n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 39
%kaikaina:0, gen[aux]18n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 40
%kaikaina:0, gen[aux]18n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).
;; 41
%kaikaina:0, gen[aux]18n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), younger(Alter, Ego).


kaiki(Alter, Ego) :-  son(Alter, Ego).
                  |   gen[aux]18(A, Ego), son(Alter, A).
                  |   step_son(Alter, Ego).
{"BroSo_FaBroDaSo_FaBroSoSo_FaFaBroDaDaSo_FaFaBroDaSoSo_FaFaBroSoDaSo_FaFaBroSoSoSo_FaFaSisDaDaSo_FaFaSisDaSoSo_FaFaSisSoDaSo_FaFaSisSoSoSo_FaMoBroDaDaSo_FaMoBroDaSoSo_FaMoBroSoDaSo_FaMoBroSoSoSo_FaMoSisDaDaSo_FaMoSisDaSoSo_FaMoSisSoDaSo_FaMoSisSoSoSo_FaSisDaSo_FaSisSoSo_MoBroDaSo_MoBroSoSo_MoFaBroDaDaSo_MoFaBroDaSoSo_MoFaBroSoDaSo_MoFaBroSoSoSo_MoFaSisDaDaSo_MoFaSisDaSoSo_MoFaSisSoDaSo_MoFaSisSoSoSo_MoMoBroDaDaSo_MoMoBroDaSoSo_MoMoBroSoDaSo_MoMoBroSoSoSo_MoMoSisDaDaSo_MoMoSisDaSoSo_MoMoSisSoDaSo_MoMoSisSoSoSo_MoSisDaSo_MoSisSoSo_SisSo_So_Stso"}
;; 0
%kaiki:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 1
%kaiki:1, gen[aux]18:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 2
%kaiki:1, gen[aux]18:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 3
%kaiki:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 4
%kaiki:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 5
%kaiki:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 6
%kaiki:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 7
%kaiki:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 8
%kaiki:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 9
%kaiki:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 10
%kaiki:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 11
%kaiki:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 12
%kaiki:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 13
%kaiki:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 14
%kaiki:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 15
%kaiki:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 16
%kaiki:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 17
%kaiki:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 18
%kaiki:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 19
%kaiki:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 20
%kaiki:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 21
%kaiki:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 22
%kaiki:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 23
%kaiki:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 24
%kaiki:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 25
%kaiki:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 26
%kaiki:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 27
%kaiki:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 28
%kaiki:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 29
%kaiki:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 30
%kaiki:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 31
%kaiki:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 32
%kaiki:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 33
%kaiki:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 34
%kaiki:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 35
%kaiki:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 36
%kaiki:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 37
%kaiki:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 38
%kaiki:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 39
%kaiki:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 40
%kaiki:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 41
%kaiki:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 42
%kaiki:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 43
%kaiki:2, step_son:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stso}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(Alter, B), son(Alter, A).


kaiku_ahine(Alter, Ego) :-  male(Ego), gen[aux]18n1(Alter, Ego), female(Alter).
                        |   male(Ego), step_sister(Alter, Ego).
{"FaBroDa_FaFaBroDaDa_FaFaBroSoDa_FaFaFaBroDaDaDa_FaFaFaBroDaSoDa_FaFaFaBroSoDaDa_FaFaFaBroSoSoDa_FaFaFaSisDaDaDa_FaFaFaSisDaSoDa_FaFaFaSisSoDaDa_FaFaFaSisSoSoDa_FaFaMoBroDaDaDa_FaFaMoBroDaSoDa_FaFaMoBroSoDaDa_FaFaMoBroSoSoDa_FaFaMoSisDaDaDa_FaFaMoSisDaSoDa_FaFaMoSisSoDaDa_FaFaMoSisSoSoDa_FaFaSisDaDa_FaFaSisSoDa_FaMoBroDaDa_FaMoBroSoDa_FaMoFaBroDaDaDa_FaMoFaBroDaSoDa_FaMoFaBroSoDaDa_FaMoFaBroSoSoDa_FaMoFaSisDaDaDa_FaMoFaSisDaSoDa_FaMoFaSisSoDaDa_FaMoFaSisSoSoDa_FaMoMoBroDaDaDa_FaMoMoBroDaSoDa_FaMoMoBroSoDaDa_FaMoMoBroSoSoDa_FaMoMoSisDaDaDa_FaMoMoSisDaSoDa_FaMoMoSisSoDaDa_FaMoMoSisSoSoDa_FaMoSisDaDa_FaMoSisSoDa_FaSisDa_MoBroDa_MoFaBroDaDa_MoFaBroSoDa_MoFaFaBroDaDaDa_MoFaFaBroDaSoDa_MoFaFaBroSoDaDa_MoFaFaBroSoSoDa_MoFaFaSisDaDaDa_MoFaFaSisDaSoDa_MoFaFaSisSoDaDa_MoFaFaSisSoSoDa_MoFaMoBroDaDaDa_MoFaMoBroDaSoDa_MoFaMoBroSoDaDa_MoFaMoBroSoSoDa_MoFaMoSisDaDaDa_MoFaMoSisDaSoDa_MoFaMoSisSoDaDa_MoFaMoSisSoSoDa_MoFaSisDaDa_MoFaSisSoDa_MoMoBroDaDa_MoMoBroSoDa_MoMoFaBroDaDaDa_MoMoFaBroDaSoDa_MoMoFaBroSoDaDa_MoMoFaBroSoSoDa_MoMoFaSisDaDaDa_MoMoFaSisDaSoDa_MoMoFaSisSoDaDa_MoMoFaSisSoSoDa_MoMoMoBroDaDaDa_MoMoMoBroDaSoDa_MoMoMoBroSoDaDa_MoMoMoBroSoSoDa_MoMoMoSisDaDaDa_MoMoMoSisDaSoDa_MoMoMoSisSoDaDa_MoMoMoSisSoSoDa_MoMoSisDaDa_MoMoSisSoDa_MoSisDa_Sis_Stsis"}
;; 0
%kaiku_ahine:0, gen[aux]18n1:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%kaiku_ahine:0, gen[aux]18n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), female(Alter).
;; 2
%kaiku_ahine:0, gen[aux]18n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), female(Alter).
;; 3
%kaiku_ahine:0, gen[aux]18n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), female(Alter).
;; 4
%kaiku_ahine:0, gen[aux]18n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), female(Alter).
;; 5
%kaiku_ahine:0, gen[aux]18n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter).
;; 6
%kaiku_ahine:0, gen[aux]18n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Alter).
;; 7
%kaiku_ahine:0, gen[aux]18n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Alter).
;; 8
%kaiku_ahine:0, gen[aux]18n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Alter).
;; 9
%kaiku_ahine:0, gen[aux]18n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter).
;; 10
%kaiku_ahine:0, gen[aux]18n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Alter).
;; 11
%kaiku_ahine:0, gen[aux]18n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Alter).
;; 12
%kaiku_ahine:0, gen[aux]18n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Alter).
;; 13
%kaiku_ahine:0, gen[aux]18n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter).
;; 14
%kaiku_ahine:0, gen[aux]18n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Alter).
;; 15
%kaiku_ahine:0, gen[aux]18n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Alter).
;; 16
%kaiku_ahine:0, gen[aux]18n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Alter).
;; 17
%kaiku_ahine:0, gen[aux]18n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter).
;; 18
%kaiku_ahine:0, gen[aux]18n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Alter).
;; 19
%kaiku_ahine:0, gen[aux]18n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Alter).
;; 20
%kaiku_ahine:0, gen[aux]18n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Alter).
;; 21
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 22
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 23
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 24
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 25
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 26
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 27
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 28
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 29
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 30
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 31
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 32
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 33
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 34
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 35
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 36
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 37
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 38
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 39
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 40
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 41
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 42
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 43
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 44
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 45
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 46
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 47
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 48
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 49
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 50
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 51
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 52
%kaiku_ahine:0, gen[aux]18n1:3, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 53
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 54
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 55
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 56
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 57
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 58
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 59
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 60
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 61
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 62
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 63
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 64
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 65
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 66
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 67
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 68
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 69
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 70
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 71
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 72
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 73
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 74
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 75
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 76
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 77
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 78
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 79
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 80
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 81
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 82
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 83
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 84
%kaiku_ahine:0, gen[aux]18n1:3, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 85
%kaiku_ahine:1, step_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C).
;; 86
%kaiku_ahine:1, step_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C).


kaiku_nane(Alter, Ego) :-  female(Ego), gen[aux]18n1(Alter, Ego), male(Alter).
                       |   female(Ego), step_brother(Alter, Ego).
{"Bro_FaBroSo_FaFaBroDaSo_FaFaBroSoSo_FaFaFaBroDaDaSo_FaFaFaBroDaSoSo_FaFaFaBroSoDaSo_FaFaFaBroSoSoSo_FaFaFaSisDaDaSo_FaFaFaSisDaSoSo_FaFaFaSisSoDaSo_FaFaFaSisSoSoSo_FaFaMoBroDaDaSo_FaFaMoBroDaSoSo_FaFaMoBroSoDaSo_FaFaMoBroSoSoSo_FaFaMoSisDaDaSo_FaFaMoSisDaSoSo_FaFaMoSisSoDaSo_FaFaMoSisSoSoSo_FaFaSisDaSo_FaFaSisSoSo_FaMoBroDaSo_FaMoBroSoSo_FaMoFaBroDaDaSo_FaMoFaBroDaSoSo_FaMoFaBroSoDaSo_FaMoFaBroSoSoSo_FaMoFaSisDaDaSo_FaMoFaSisDaSoSo_FaMoFaSisSoDaSo_FaMoFaSisSoSoSo_FaMoMoBroDaDaSo_FaMoMoBroDaSoSo_FaMoMoBroSoDaSo_FaMoMoBroSoSoSo_FaMoMoSisDaDaSo_FaMoMoSisDaSoSo_FaMoMoSisSoDaSo_FaMoMoSisSoSoSo_FaMoSisDaSo_FaMoSisSoSo_FaSisSo_MoBroSo_MoFaBroDaSo_MoFaBroSoSo_MoFaFaBroDaDaSo_MoFaFaBroDaSoSo_MoFaFaBroSoDaSo_MoFaFaBroSoSoSo_MoFaFaSisDaDaSo_MoFaFaSisDaSoSo_MoFaFaSisSoDaSo_MoFaFaSisSoSoSo_MoFaMoBroDaDaSo_MoFaMoBroDaSoSo_MoFaMoBroSoDaSo_MoFaMoBroSoSoSo_MoFaMoSisDaDaSo_MoFaMoSisDaSoSo_MoFaMoSisSoDaSo_MoFaMoSisSoSoSo_MoFaSisDaSo_MoFaSisSoSo_MoMoBroDaSo_MoMoBroSoSo_MoMoFaBroDaDaSo_MoMoFaBroDaSoSo_MoMoFaBroSoDaSo_MoMoFaBroSoSoSo_MoMoFaSisDaDaSo_MoMoFaSisDaSoSo_MoMoFaSisSoDaSo_MoMoFaSisSoSoSo_MoMoMoBroDaDaSo_MoMoMoBroDaSoSo_MoMoMoBroSoDaSo_MoMoMoBroSoSoSo_MoMoMoSisDaDaSo_MoMoMoSisDaSoSo_MoMoMoSisSoDaSo_MoMoMoSisSoSoSo_MoMoSisDaSo_MoMoSisSoSo_MoSisSo_Stbro"}
;; 0
%kaiku_nane:0, gen[aux]18n1:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%kaiku_nane:0, gen[aux]18n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), male(Alter).
;; 2
%kaiku_nane:0, gen[aux]18n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), male(Alter).
;; 3
%kaiku_nane:0, gen[aux]18n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), male(Alter).
;; 4
%kaiku_nane:0, gen[aux]18n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), male(Alter).
;; 5
%kaiku_nane:0, gen[aux]18n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter).
;; 6
%kaiku_nane:0, gen[aux]18n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter).
;; 7
%kaiku_nane:0, gen[aux]18n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter).
;; 8
%kaiku_nane:0, gen[aux]18n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter).
;; 9
%kaiku_nane:0, gen[aux]18n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter).
;; 10
%kaiku_nane:0, gen[aux]18n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter).
;; 11
%kaiku_nane:0, gen[aux]18n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter).
;; 12
%kaiku_nane:0, gen[aux]18n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter).
;; 13
%kaiku_nane:0, gen[aux]18n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter).
;; 14
%kaiku_nane:0, gen[aux]18n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter).
;; 15
%kaiku_nane:0, gen[aux]18n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter).
;; 16
%kaiku_nane:0, gen[aux]18n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter).
;; 17
%kaiku_nane:0, gen[aux]18n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter).
;; 18
%kaiku_nane:0, gen[aux]18n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter).
;; 19
%kaiku_nane:0, gen[aux]18n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter).
;; 20
%kaiku_nane:0, gen[aux]18n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter).
;; 21
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 22
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 23
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 24
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 25
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 26
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 27
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 28
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 29
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 30
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 31
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 32
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 33
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 34
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 35
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 36
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 37
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 38
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 39
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 40
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 41
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 42
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 43
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 44
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 45
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoSoSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 46
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 47
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 48
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 49
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoSoSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 50
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoDaSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 51
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 52
%kaiku_nane:0, gen[aux]18n1:3, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 53
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 54
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 55
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 56
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 57
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 58
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 59
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 60
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 61
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 62
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 63
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 64
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 65
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 66
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 67
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 68
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 69
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 70
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 71
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 72
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 73
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 74
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 75
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 76
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 77
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoSo}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 78
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoDaSo}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 79
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaSoSo}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 80
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaDaSo}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 81
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoSoSo}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 82
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoDaSo}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 83
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaSoSo}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 84
%kaiku_nane:0, gen[aux]18n1:3, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaDaSo}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 85
%kaiku_nane:1, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 female(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C).
;; 86
%kaiku_nane:1, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 female(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C).


kaikua_ana(Alter, Ego) :-  gen[aux]18n1(Alter, Ego), gender(A, Ego), gender(A, Alter), elder(Alter, Ego).
                       |   gender(A, Ego), step_mother(B, Ego), child(Alter, B), gender(A, Alter).
                       |   gender(A, Ego), step_father(B, Ego), child(Alter, B), gender(A, Alter).
{"Bro_FaBroDa_FaBroSo_FaFaBroDaDa_FaFaBroDaSo_FaFaBroSoDa_FaFaBroSoSo_FaFaSisDaDa_FaFaSisDaSo_FaFaSisSoDa_FaFaSisSoSo_FaMoBroDaDa_FaMoBroDaSo_FaMoBroSoDa_FaMoBroSoSo_FaMoSisDaDa_FaMoSisDaSo_FaMoSisSoDa_FaMoSisSoSo_FaSisDa_FaSisSo_Hbro_Hsis_MoBroDa_MoBroSo_MoFaBroDaDa_MoFaBroDaSo_MoFaBroSoDa_MoFaBroSoSo_MoFaSisDaDa_MoFaSisDaSo_MoFaSisSoDa_MoFaSisSoSo_MoMoBroDaDa_MoMoBroDaSo_MoMoBroSoDa_MoMoBroSoSo_MoMoSisDaDa_MoMoSisDaSo_MoMoSisSoDa_MoMoSisSoSo_MoSisDa_MoSisSo_Sis"}
;; 0
%kaikua_ana:0, gen[aux]18n1:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Ego), gender(C, Alter), elder(Alter, Ego).
;; 1
%kaikua_ana:0, gen[aux]18n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), gender(E, Ego), gender(E, Alter), elder(Alter, Ego).
;; 2
%kaikua_ana:0, gen[aux]18n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), gender(E, Ego), gender(E, Alter), elder(Alter, Ego).
;; 3
%kaikua_ana:0, gen[aux]18n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), gender(E, Ego), gender(E, Alter), elder(Alter, Ego).
;; 4
%kaikua_ana:0, gen[aux]18n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), gender(E, Ego), gender(E, Alter), elder(Alter, Ego).
;; 5
%kaikua_ana:0, gen[aux]18n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 6
%kaikua_ana:0, gen[aux]18n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 7
%kaikua_ana:0, gen[aux]18n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 8
%kaikua_ana:0, gen[aux]18n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 9
%kaikua_ana:0, gen[aux]18n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 10
%kaikua_ana:0, gen[aux]18n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 11
%kaikua_ana:0, gen[aux]18n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 12
%kaikua_ana:0, gen[aux]18n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 13
%kaikua_ana:0, gen[aux]18n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 14
%kaikua_ana:0, gen[aux]18n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 15
%kaikua_ana:0, gen[aux]18n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 16
%kaikua_ana:0, gen[aux]18n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 17
%kaikua_ana:0, gen[aux]18n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 18
%kaikua_ana:0, gen[aux]18n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 19
%kaikua_ana:0, gen[aux]18n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 20
%kaikua_ana:0, gen[aux]18n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 21
%kaikua_ana:1, step_mother:0%
 Lvl=0,  PC=3, S=1, Star=0,  {Hbro}  
 male(Ego), gender(A, Ego), father(B, Ego), mother(C, Ego), wife(D, B), not(equal(D, C)), child(Alter, D), gender(A, Alter).
;; 22
%kaikua_ana:2, step_father:0%
 Lvl=0,  PC=3, S=1, Star=0,  {Hbro}  
 male(Ego), gender(A, Ego), father(B, Ego), mother(C, Ego), husband(D, C), not(equal(D, B)), child(Alter, D), gender(A, Alter).
;; 23
%kaikua_ana:0, gen[aux]18n1:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Ego), gender(C, Alter), elder(Alter, Ego).
;; 24
%kaikua_ana:0, gen[aux]18n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), gender(E, Ego), gender(E, Alter), elder(Alter, Ego).
;; 25
%kaikua_ana:0, gen[aux]18n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), gender(E, Ego), gender(E, Alter), elder(Alter, Ego).
;; 26
%kaikua_ana:0, gen[aux]18n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), gender(E, Ego), gender(E, Alter), elder(Alter, Ego).
;; 27
%kaikua_ana:0, gen[aux]18n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), gender(E, Ego), gender(E, Alter), elder(Alter, Ego).
;; 28
%kaikua_ana:0, gen[aux]18n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 29
%kaikua_ana:0, gen[aux]18n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 30
%kaikua_ana:0, gen[aux]18n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 31
%kaikua_ana:0, gen[aux]18n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 32
%kaikua_ana:0, gen[aux]18n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 33
%kaikua_ana:0, gen[aux]18n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 34
%kaikua_ana:0, gen[aux]18n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 35
%kaikua_ana:0, gen[aux]18n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 36
%kaikua_ana:0, gen[aux]18n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 37
%kaikua_ana:0, gen[aux]18n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 38
%kaikua_ana:0, gen[aux]18n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 39
%kaikua_ana:0, gen[aux]18n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 40
%kaikua_ana:0, gen[aux]18n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 41
%kaikua_ana:0, gen[aux]18n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 42
%kaikua_ana:0, gen[aux]18n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 43
%kaikua_ana:0, gen[aux]18n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), gender(G, Ego), gender(G, Alter), elder(Alter, Ego).
;; 44
%kaikua_ana:1, step_mother:0%
 Lvl=0,  PC=3, S=1, Star=0,  {Hsis}  
 female(Ego), gender(A, Ego), father(B, Ego), mother(C, Ego), wife(D, B), not(equal(D, C)), child(Alter, D), gender(A, Alter).
;; 45
%kaikua_ana:2, step_father:0%
 Lvl=0,  PC=3, S=1, Star=0,  {Hsis}  
 female(Ego), gender(A, Ego), father(B, Ego), mother(C, Ego), husband(D, C), not(equal(D, B)), child(Alter, D), gender(A, Alter).


kane(Alter, Ego) :-  husband(Alter, Ego).
{"Hu"}
;; 0
%kane:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).


kupuna_kane(Alter, Ego) :-  parents(A, Ego), parents(B, A), gen[aux]18n1(Alter, B), male(Alter).
                        |   parents(A, Ego), father(Alter, A).
                        |   husband(A, Ego), parents(B, A), father(Alter, B).
{"FaFa_FaFaBro_FaFaFaBroSo_FaFaFaSisSo_FaFaMoBroSo_FaFaMoSisSo_FaMoBro_FaMoFaBroSo_FaMoFaSisSo_FaMoMoBroSo_FaMoMoSisSo_HuFaFa_HuMoFa_MoFa_MoFaBro_MoFaFaBroSo_MoFaFaSisSo_MoFaMoBroSo_MoFaMoSisSo_MoMoBro_MoMoFaBroSo_MoMoFaSisSo_MoMoMoBroSo_MoMoMoSisSo"}
;; 0
%kupuna_kane:0, parents:0, parents:0, gen[aux]18n1:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 1
%kupuna_kane:0, parents:0, parents:0, gen[aux]18n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 2
%kupuna_kane:0, parents:0, parents:0, gen[aux]18n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 3
%kupuna_kane:0, parents:0, parents:0, gen[aux]18n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 4
%kupuna_kane:0, parents:0, parents:0, gen[aux]18n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 5
%kupuna_kane:0, parents:0, parents:1, gen[aux]18n1:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 6
%kupuna_kane:0, parents:0, parents:1, gen[aux]18n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 7
%kupuna_kane:0, parents:0, parents:1, gen[aux]18n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 8
%kupuna_kane:0, parents:0, parents:1, gen[aux]18n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 9
%kupuna_kane:0, parents:0, parents:1, gen[aux]18n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 10
%kupuna_kane:0, parents:1, parents:0, gen[aux]18n1:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 11
%kupuna_kane:0, parents:1, parents:0, gen[aux]18n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 12
%kupuna_kane:0, parents:1, parents:0, gen[aux]18n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 13
%kupuna_kane:0, parents:1, parents:0, gen[aux]18n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 14
%kupuna_kane:0, parents:1, parents:0, gen[aux]18n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 15
%kupuna_kane:0, parents:1, parents:1, gen[aux]18n1:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 16
%kupuna_kane:0, parents:1, parents:1, gen[aux]18n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 17
%kupuna_kane:0, parents:1, parents:1, gen[aux]18n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 18
%kupuna_kane:0, parents:1, parents:1, gen[aux]18n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 19
%kupuna_kane:0, parents:1, parents:1, gen[aux]18n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 20
%kupuna_kane:1, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 21
%kupuna_kane:1, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).
;; 22
%kupuna_kane:2, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoFa}  
 husband(A, Ego), mother(B, A), father(Alter, B).
;; 23
%kupuna_kane:2, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaFa}  
 husband(A, Ego), father(B, A), father(Alter, B).


kupuna_wahine(Alter, Ego) :-  parents(A, Ego), parents(B, A), gen[aux]18n1(Alter, B), female(Alter).
                          |   parents(A, Ego), mother(Alter, A).
                          |   husband(A, Ego), parents(B, A), mother(Alter, B).
{"FaFaFaBroDa_FaFaFaSisDa_FaFaMoBroDa_FaFaMoSisDa_FaFaSis_FaMo_FaMoFaBroDa_FaMoFaSisDa_FaMoMoBroDa_FaMoMoSisDa_FaMoSis_HuFaMo_HuMoMo_MoFaFaBroDa_MoFaFaSisDa_MoFaMoBroDa_MoFaMoSisDa_MoFaSis_MoMo_MoMoFaBroDa_MoMoFaSisDa_MoMoMoBroDa_MoMoMoSisDa_MoMoSis"}
;; 0
%kupuna_wahine:0, parents:0, parents:0, gen[aux]18n1:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 1
%kupuna_wahine:0, parents:0, parents:0, gen[aux]18n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 2
%kupuna_wahine:0, parents:0, parents:0, gen[aux]18n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 3
%kupuna_wahine:0, parents:0, parents:0, gen[aux]18n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 4
%kupuna_wahine:0, parents:0, parents:0, gen[aux]18n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 5
%kupuna_wahine:0, parents:0, parents:1, gen[aux]18n1:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 6
%kupuna_wahine:0, parents:0, parents:1, gen[aux]18n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 7
%kupuna_wahine:0, parents:0, parents:1, gen[aux]18n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 8
%kupuna_wahine:0, parents:0, parents:1, gen[aux]18n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 9
%kupuna_wahine:0, parents:0, parents:1, gen[aux]18n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 10
%kupuna_wahine:0, parents:1, parents:0, gen[aux]18n1:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 11
%kupuna_wahine:0, parents:1, parents:0, gen[aux]18n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 12
%kupuna_wahine:0, parents:1, parents:0, gen[aux]18n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 13
%kupuna_wahine:0, parents:1, parents:0, gen[aux]18n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 14
%kupuna_wahine:0, parents:1, parents:0, gen[aux]18n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 15
%kupuna_wahine:0, parents:1, parents:1, gen[aux]18n1:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 16
%kupuna_wahine:0, parents:1, parents:1, gen[aux]18n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 17
%kupuna_wahine:0, parents:1, parents:1, gen[aux]18n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 18
%kupuna_wahine:0, parents:1, parents:1, gen[aux]18n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 19
%kupuna_wahine:0, parents:1, parents:1, gen[aux]18n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 20
%kupuna_wahine:1, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 21
%kupuna_wahine:1, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).
;; 22
%kupuna_wahine:2, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoMo}  
 husband(A, Ego), mother(B, A), mother(Alter, B).
;; 23
%kupuna_wahine:2, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaMo}  
 husband(A, Ego), father(B, A), mother(Alter, B).


makua_kane(Alter, Ego) :-  father(Alter, Ego).
                       |   parents(A, Ego), gen[aux]18n1(Alter, A), male(Alter).
                       |   parents(A, Ego), sister(B, A), husband(Alter, B).
                       |   step_father(Alter, Ego).
                       |   spice(A, Ego), father(Alter, A).
{"Fa_FaBro_FaFaBroSo_FaFaFaBroDaSo_FaFaFaBroSoSo_FaFaFaSisDaSo_FaFaFaSisSoSo_FaFaMoBroDaSo_FaFaMoBroSoSo_FaFaMoSisDaSo_FaFaMoSisSoSo_FaFaSisSo_FaMoBroSo_FaMoFaBroDaSo_FaMoFaBroSoSo_FaMoFaSisDaSo_FaMoFaSisSoSo_FaMoMoBroDaSo_FaMoMoBroSoSo_FaMoMoSisDaSo_FaMoMoSisSoSo_FaMoSisSo_FaSisHu_HuFa_MoBro_MoFaBroSo_MoFaFaBroDaSo_MoFaFaBroSoSo_MoFaFaSisDaSo_MoFaFaSisSoSo_MoFaMoBroDaSo_MoFaMoBroSoSo_MoFaMoSisDaSo_MoFaMoSisSoSo_MoFaSisSo_MoMoBroSo_MoMoFaBroDaSo_MoMoFaBroSoSo_MoMoFaSisDaSo_MoMoFaSisSoSo_MoMoMoBroDaSo_MoMoMoBroSoSo_MoMoMoSisDaSo_MoMoMoSisSoSo_MoMoSisSo_MoSisHu_Stfa_WiFa"}
;; 0
%makua_kane:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).
;; 1
%makua_kane:1, parents:0, gen[aux]18n1:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%makua_kane:1, parents:0, gen[aux]18n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 3
%makua_kane:1, parents:0, gen[aux]18n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 4
%makua_kane:1, parents:0, gen[aux]18n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 5
%makua_kane:1, parents:0, gen[aux]18n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 6
%makua_kane:1, parents:0, gen[aux]18n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 7
%makua_kane:1, parents:0, gen[aux]18n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 8
%makua_kane:1, parents:0, gen[aux]18n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 9
%makua_kane:1, parents:0, gen[aux]18n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 10
%makua_kane:1, parents:0, gen[aux]18n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 11
%makua_kane:1, parents:0, gen[aux]18n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 12
%makua_kane:1, parents:0, gen[aux]18n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 13
%makua_kane:1, parents:0, gen[aux]18n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 14
%makua_kane:1, parents:0, gen[aux]18n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 15
%makua_kane:1, parents:0, gen[aux]18n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 16
%makua_kane:1, parents:0, gen[aux]18n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 17
%makua_kane:1, parents:0, gen[aux]18n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 18
%makua_kane:1, parents:0, gen[aux]18n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 19
%makua_kane:1, parents:0, gen[aux]18n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 20
%makua_kane:1, parents:0, gen[aux]18n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 21
%makua_kane:1, parents:0, gen[aux]18n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 22
%makua_kane:1, parents:1, gen[aux]18n1:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 23
%makua_kane:1, parents:1, gen[aux]18n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 24
%makua_kane:1, parents:1, gen[aux]18n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 25
%makua_kane:1, parents:1, gen[aux]18n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 26
%makua_kane:1, parents:1, gen[aux]18n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 27
%makua_kane:1, parents:1, gen[aux]18n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 28
%makua_kane:1, parents:1, gen[aux]18n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 29
%makua_kane:1, parents:1, gen[aux]18n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 30
%makua_kane:1, parents:1, gen[aux]18n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 31
%makua_kane:1, parents:1, gen[aux]18n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 32
%makua_kane:1, parents:1, gen[aux]18n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 33
%makua_kane:1, parents:1, gen[aux]18n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 34
%makua_kane:1, parents:1, gen[aux]18n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 35
%makua_kane:1, parents:1, gen[aux]18n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 36
%makua_kane:1, parents:1, gen[aux]18n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 37
%makua_kane:1, parents:1, gen[aux]18n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 38
%makua_kane:1, parents:1, gen[aux]18n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 39
%makua_kane:1, parents:1, gen[aux]18n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 40
%makua_kane:1, parents:1, gen[aux]18n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 41
%makua_kane:1, parents:1, gen[aux]18n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 42
%makua_kane:1, parents:1, gen[aux]18n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 43
%makua_kane:2, parents:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 44
%makua_kane:2, parents:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 45
%makua_kane:3, step_father:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stfa}  
 father(A, Ego), mother(B, Ego), husband(Alter, B), not(equal(Alter, A)).
;; 46
%makua_kane:4, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).
;; 47
%makua_kane:4, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).


makuahine(Alter, Ego) :-  mother(Alter, Ego).
                      |   parents(A, Ego), gen[aux]18n1(Alter, A), female(Alter).
                      |   parents(A, Ego), brother(B, A), wife(Alter, B).
                      |   step_mother(Alter, Ego).
                      |   spice(A, Ego), mother(Alter, A).
{"FaBroWi_FaFaBroDa_FaFaFaBroDaDa_FaFaFaBroSoDa_FaFaFaSisDaDa_FaFaFaSisSoDa_FaFaMoBroDaDa_FaFaMoBroSoDa_FaFaMoSisDaDa_FaFaMoSisSoDa_FaFaSisDa_FaMoBroDa_FaMoFaBroDaDa_FaMoFaBroSoDa_FaMoFaSisDaDa_FaMoFaSisSoDa_FaMoMoBroDaDa_FaMoMoBroSoDa_FaMoMoSisDaDa_FaMoMoSisSoDa_FaMoSisDa_FaSis_HuMo_Mo_MoBroWi_MoFaBroDa_MoFaFaBroDaDa_MoFaFaBroSoDa_MoFaFaSisDaDa_MoFaFaSisSoDa_MoFaMoBroDaDa_MoFaMoBroSoDa_MoFaMoSisDaDa_MoFaMoSisSoDa_MoFaSisDa_MoMoBroDa_MoMoFaBroDaDa_MoMoFaBroSoDa_MoMoFaSisDaDa_MoMoFaSisSoDa_MoMoMoBroDaDa_MoMoMoBroSoDa_MoMoMoSisDaDa_MoMoMoSisSoDa_MoMoSisDa_MoSis_Stmo_WiMo"}
;; 0
%makuahine:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).
;; 1
%makuahine:1, parents:0, gen[aux]18n1:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%makuahine:1, parents:0, gen[aux]18n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 3
%makuahine:1, parents:0, gen[aux]18n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 4
%makuahine:1, parents:0, gen[aux]18n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 5
%makuahine:1, parents:0, gen[aux]18n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 6
%makuahine:1, parents:0, gen[aux]18n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 7
%makuahine:1, parents:0, gen[aux]18n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 8
%makuahine:1, parents:0, gen[aux]18n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 9
%makuahine:1, parents:0, gen[aux]18n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 10
%makuahine:1, parents:0, gen[aux]18n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 11
%makuahine:1, parents:0, gen[aux]18n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 12
%makuahine:1, parents:0, gen[aux]18n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 13
%makuahine:1, parents:0, gen[aux]18n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 14
%makuahine:1, parents:0, gen[aux]18n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 15
%makuahine:1, parents:0, gen[aux]18n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 16
%makuahine:1, parents:0, gen[aux]18n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 17
%makuahine:1, parents:0, gen[aux]18n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 18
%makuahine:1, parents:0, gen[aux]18n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 19
%makuahine:1, parents:0, gen[aux]18n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 20
%makuahine:1, parents:0, gen[aux]18n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 21
%makuahine:1, parents:0, gen[aux]18n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 22
%makuahine:1, parents:1, gen[aux]18n1:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 23
%makuahine:1, parents:1, gen[aux]18n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 24
%makuahine:1, parents:1, gen[aux]18n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 25
%makuahine:1, parents:1, gen[aux]18n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 26
%makuahine:1, parents:1, gen[aux]18n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 27
%makuahine:1, parents:1, gen[aux]18n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 28
%makuahine:1, parents:1, gen[aux]18n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 29
%makuahine:1, parents:1, gen[aux]18n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 30
%makuahine:1, parents:1, gen[aux]18n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 31
%makuahine:1, parents:1, gen[aux]18n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 32
%makuahine:1, parents:1, gen[aux]18n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 33
%makuahine:1, parents:1, gen[aux]18n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 34
%makuahine:1, parents:1, gen[aux]18n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 35
%makuahine:1, parents:1, gen[aux]18n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 36
%makuahine:1, parents:1, gen[aux]18n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 37
%makuahine:1, parents:1, gen[aux]18n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 38
%makuahine:1, parents:1, gen[aux]18n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 39
%makuahine:1, parents:1, gen[aux]18n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 40
%makuahine:1, parents:1, gen[aux]18n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 41
%makuahine:1, parents:1, gen[aux]18n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 42
%makuahine:1, parents:1, gen[aux]18n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 43
%makuahine:2, parents:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 44
%makuahine:2, parents:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 45
%makuahine:3, step_mother:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stmo}  
 father(A, Ego), mother(B, Ego), wife(Alter, A), not(equal(Alter, B)).
;; 46
%makuahine:4, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 47
%makuahine:4, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).


moopuna_kane(Alter, Ego) :-  children(A, Ego), son(Alter, A).
                         |   gen[aux]18(A, Ego), children(B, A), son(Alter, B).
{"BroDaSo_BroSoSo_DaSo_FaBroDaDaSo_FaBroDaSoSo_FaBroSoDaSo_FaBroSoSoSo_FaFaBroDaDaDaSo_FaFaBroDaDaSoSo_FaFaBroDaSoDaSo_FaFaBroDaSoSoSo_FaFaBroSoDaDaSo_FaFaBroSoDaSoSo_FaFaBroSoSoDaSo_FaFaBroSoSoSoSo_FaFaSisDaDaDaSo_FaFaSisDaDaSoSo_FaFaSisDaSoDaSo_FaFaSisDaSoSoSo_FaFaSisSoDaDaSo_FaFaSisSoDaSoSo_FaFaSisSoSoDaSo_FaFaSisSoSoSoSo_FaMoBroDaDaDaSo_FaMoBroDaDaSoSo_FaMoBroDaSoDaSo_FaMoBroDaSoSoSo_FaMoBroSoDaDaSo_FaMoBroSoDaSoSo_FaMoBroSoSoDaSo_FaMoBroSoSoSoSo_FaMoSisDaDaDaSo_FaMoSisDaDaSoSo_FaMoSisDaSoDaSo_FaMoSisDaSoSoSo_FaMoSisSoDaDaSo_FaMoSisSoDaSoSo_FaMoSisSoSoDaSo_FaMoSisSoSoSoSo_FaSisDaDaSo_FaSisDaSoSo_FaSisSoDaSo_FaSisSoSoSo_MoBroDaDaSo_MoBroDaSoSo_MoBroSoDaSo_MoBroSoSoSo_MoFaBroDaDaDaSo_MoFaBroDaDaSoSo_MoFaBroDaSoDaSo_MoFaBroDaSoSoSo_MoFaBroSoDaDaSo_MoFaBroSoDaSoSo_MoFaBroSoSoDaSo_MoFaBroSoSoSoSo_MoFaSisDaDaDaSo_MoFaSisDaDaSoSo_MoFaSisDaSoDaSo_MoFaSisDaSoSoSo_MoFaSisSoDaDaSo_MoFaSisSoDaSoSo_MoFaSisSoSoDaSo_MoFaSisSoSoSoSo_MoMoBroDaDaDaSo_MoMoBroDaDaSoSo_MoMoBroDaSoDaSo_MoMoBroDaSoSoSo_MoMoBroSoDaDaSo_MoMoBroSoDaSoSo_MoMoBroSoSoDaSo_MoMoBroSoSoSoSo_MoMoSisDaDaDaSo_MoMoSisDaDaSoSo_MoMoSisDaSoDaSo_MoMoSisDaSoSoSo_MoMoSisSoDaDaSo_MoMoSisSoDaSoSo_MoMoSisSoSoDaSo_MoMoSisSoSoSoSo_MoSisDaDaSo_MoSisDaSoSo_MoSisSoDaSo_MoSisSoSoSo_SisDaSo_SisSoSo_SoSo"}
;; 0
%moopuna_kane:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).
;; 1
%moopuna_kane:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).
;; 2
%moopuna_kane:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(Alter, D).
;; 3
%moopuna_kane:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(Alter, D).
;; 4
%moopuna_kane:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(Alter, D).
;; 5
%moopuna_kane:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(Alter, D).
;; 6
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 7
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 8
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 9
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 10
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 11
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 12
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 13
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 14
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 15
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 16
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 17
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 18
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 19
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 20
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 21
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 22
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 23
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 24
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 25
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 26
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 27
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 28
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 29
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 30
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 31
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 32
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 33
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 34
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 35
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 36
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 37
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 38
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 39
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 40
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 41
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 42
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 43
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 44
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 45
%moopuna_kane:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 46
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 47
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 48
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 49
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 50
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 51
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 52
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 53
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 54
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 55
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 56
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 57
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 58
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 59
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 60
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 61
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 62
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 63
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 64
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 65
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 66
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 67
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 68
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 69
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 70
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 71
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 72
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 73
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 74
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 75
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 76
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 77
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 78
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 79
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 80
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 81
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 82
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 83
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 84
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 85
%moopuna_kane:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).


moopuna_wahine(Alter, Ego) :-  children(A, Ego), daughter(Alter, A).
                           |   gen[aux]18(A, Ego), children(B, A), daughter(Alter, B).
{"BroDaDa_BroSoDa_DaDa_FaBroDaDaDa_FaBroDaSoDa_FaBroSoDaDa_FaBroSoSoDa_FaFaBroDaDaDaDa_FaFaBroDaDaSoDa_FaFaBroDaSoDaDa_FaFaBroDaSoSoDa_FaFaBroSoDaDaDa_FaFaBroSoDaSoDa_FaFaBroSoSoDaDa_FaFaBroSoSoSoDa_FaFaSisDaDaDaDa_FaFaSisDaDaSoDa_FaFaSisDaSoDaDa_FaFaSisDaSoSoDa_FaFaSisSoDaDaDa_FaFaSisSoDaSoDa_FaFaSisSoSoDaDa_FaFaSisSoSoSoDa_FaMoBroDaDaDaDa_FaMoBroDaDaSoDa_FaMoBroDaSoDaDa_FaMoBroDaSoSoDa_FaMoBroSoDaDaDa_FaMoBroSoDaSoDa_FaMoBroSoSoDaDa_FaMoBroSoSoSoDa_FaMoSisDaDaDaDa_FaMoSisDaDaSoDa_FaMoSisDaSoDaDa_FaMoSisDaSoSoDa_FaMoSisSoDaDaDa_FaMoSisSoDaSoDa_FaMoSisSoSoDaDa_FaMoSisSoSoSoDa_FaSisDaDaDa_FaSisDaSoDa_FaSisSoDaDa_FaSisSoSoDa_MoBroDaDaDa_MoBroDaSoDa_MoBroSoDaDa_MoBroSoSoDa_MoFaBroDaDaDaDa_MoFaBroDaDaSoDa_MoFaBroDaSoDaDa_MoFaBroDaSoSoDa_MoFaBroSoDaDaDa_MoFaBroSoDaSoDa_MoFaBroSoSoDaDa_MoFaBroSoSoSoDa_MoFaSisDaDaDaDa_MoFaSisDaDaSoDa_MoFaSisDaSoDaDa_MoFaSisDaSoSoDa_MoFaSisSoDaDaDa_MoFaSisSoDaSoDa_MoFaSisSoSoDaDa_MoFaSisSoSoSoDa_MoMoBroDaDaDaDa_MoMoBroDaDaSoDa_MoMoBroDaSoDaDa_MoMoBroDaSoSoDa_MoMoBroSoDaDaDa_MoMoBroSoDaSoDa_MoMoBroSoSoDaDa_MoMoBroSoSoSoDa_MoMoSisDaDaDaDa_MoMoSisDaDaSoDa_MoMoSisDaSoDaDa_MoMoSisDaSoSoDa_MoMoSisSoDaDaDa_MoMoSisSoDaSoDa_MoMoSisSoSoDaDa_MoMoSisSoSoSoDa_MoSisDaDaDa_MoSisDaSoDa_MoSisSoDaDa_MoSisSoSoDa_SisDaDa_SisSoDa_SoDa"}
;; 0
%moopuna_wahine:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).
;; 1
%moopuna_wahine:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).
;; 2
%moopuna_wahine:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(Alter, D).
;; 3
%moopuna_wahine:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(Alter, D).
;; 4
%moopuna_wahine:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(Alter, D).
;; 5
%moopuna_wahine:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(Alter, D).
;; 6
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 7
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 8
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 9
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 10
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 11
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 12
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 13
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 14
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 15
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 16
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 17
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 18
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 19
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 20
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 21
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 22
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 23
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 24
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 25
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 26
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 27
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 28
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 29
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 30
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 31
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 32
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 33
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 34
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 35
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 36
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 37
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 38
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 39
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 40
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 41
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 42
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 43
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 44
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 45
%moopuna_wahine:1, gen[aux]18:1, parents:0, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 46
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 47
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 48
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 49
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 50
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 51
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 52
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 53
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 54
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 55
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 56
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 57
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 58
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 59
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 60
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 61
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 62
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 63
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 64
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 65
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 66
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 67
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 68
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 69
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:0, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 70
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 71
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 72
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 73
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 74
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 75
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 76
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 77
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 78
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 79
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 80
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 81
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 82
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 83
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 84
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 85
%moopuna_wahine:1, gen[aux]18:1, parents:1, gen[aux]18:1, parents:1, gen[aux]18:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).


parents(Alter, Ego) :-  mother(Alter, Ego).
                    |   father(Alter, Ego).
;; 0
%parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(Alter, Ego).
;; 1
%parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(Alter, Ego).


sibling(Alter, Ego) :-  mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 0
%sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).


siblings(Alter, Ego) :-  brother(Alter, Ego).
                     |   sister(Alter, Ego).
;; 0
%siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).


sister(Alter, Ego) :-  sibling(Alter, Ego), female(Alter).
;; 0
%sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).


spice(Alter, Ego) :-  husband(Alter, Ego).
                  |   wife(Alter, Ego).
;; 0
%spice:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 husband(Alter, Ego).
;; 1
%spice:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(Alter, Ego).


step_brother(Alter, Ego) :-  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C).
                         |   father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C).
;; 0
%step_brother:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C).
;; 1
%step_brother:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C).


step_daughter(Alter, Ego) :-  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(Alter, B), daughter(Alter, A).
;; 0
%step_daughter:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(Alter, B), daughter(Alter, A).


step_father(Alter, Ego) :-  father(A, Ego), mother(B, Ego), husband(Alter, B), not(equal(Alter, A)).
;; 0
%step_father:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), husband(Alter, B), not(equal(Alter, A)).


step_mother(Alter, Ego) :-  father(A, Ego), mother(B, Ego), wife(Alter, A), not(equal(Alter, B)).
;; 0
%step_mother:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), wife(Alter, A), not(equal(Alter, B)).


step_sister(Alter, Ego) :-  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C).
                        |   father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C).
;; 0
%step_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C).
;; 1
%step_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C).


step_son(Alter, Ego) :-  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(Alter, B), son(Alter, A).
;; 0
%step_son:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(Alter, B), son(Alter, A).


wahine(Alter, Ego) :-  wife(Alter, Ego).
{"Wi"}
;; 0
%wahine:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).

