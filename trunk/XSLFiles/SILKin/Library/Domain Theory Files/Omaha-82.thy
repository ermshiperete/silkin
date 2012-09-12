;;  Horn Clause Representation of Omaha-82 Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Omaha-82") (author, "James Owen Dorsey") (date, "1882-01-01") (citation, "James Dorsey, Omaha Sociology in ANNUAL REPORT #3, ed. US Bureau of Ethnology, 1882, US Gov't Printing Office") 
(non_term, [aux], [eq], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, false) (address, false) (recursiveLevels, 1)
(overlaps, (indadi, (witiga)), (innanha, (witucpa)), (wijance, (witucpa, witange)), (wijange, (witucpa)), (wijince, (witucpa, wisanga)), (wijinge, (witucpa)), (winegi, (witiga, witucpa)), (wisanga, (wijince, witucpa, witinu)), (witancka, (witucpa)), (witange, (wijance, witucpa)), (witiga, (indadi, winegi)), (witijan, (witucpa)), (witinu, (wisanga, witucpa)), (witucka, (witucpa)), (witucpa, (innanha, wijance, wijange, wijince, wijinge, winegi, wisanga, witancka, witange, witijan, witinu, witucka, witujange)), (witujange, (witucpa)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

brother(Alter, Ego) :-  sibling(Alter, Ego), male(Alter).
;; 0
%brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).


brother[eq](Alter, Ego) :-  brother(Alter, Ego).
                        |   father(A, Ego), brother[eq]a(B, A), son(Alter, B).
                        |   mother(A, Ego), sister[eq]1(B, A), son(Alter, B).
                        |   mother(A, Ego), father(B, A), sister[eq](C, B), son(Alter, C).
;; 0
%brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 3
%brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 4
%brother[eq]:1, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 5
%brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 6
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F).
;; 7
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 8
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 9
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 10
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 11
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 12
%brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(Alter, E).
;; 13
%brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(Alter, E).
;; 14
%brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 15
%brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 16
%brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 17
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 18
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 19
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 20
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 21
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 22
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 23
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 24
%brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 25
%brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(Alter, G).
;; 26
%brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 27
%brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 28
%brother[eq]:3, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 29
%brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), son(Alter, F).
;; 30
%brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), son(Alter, F).
;; 31
%brother[eq]:3, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).


brother[eq]1(Alter, Ego) :-  brother[eq](Alter, Ego).
                         |   brother[eq]1a(A, Ego), son(Alter, A).
;; 0
%brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%brother[eq]1:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%brother[eq]1:0, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 3
%brother[eq]1:0, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 4
%brother[eq]1:0, brother[eq]:1, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 5
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 6
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F).
;; 7
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 8
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 9
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 10
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 11
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 12
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(Alter, E).
;; 13
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(Alter, E).
;; 14
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 15
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 16
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 17
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 18
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 19
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 20
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 21
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 22
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 23
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 24
%brother[eq]1:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 25
%brother[eq]1:0, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(Alter, G).
;; 26
%brother[eq]1:0, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 27
%brother[eq]1:0, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 28
%brother[eq]1:0, brother[eq]:3, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 29
%brother[eq]1:0, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), son(Alter, F).
;; 30
%brother[eq]1:0, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), son(Alter, F).
;; 31
%brother[eq]1:0, brother[eq]:3, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 32
%brother[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 33
%brother[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 34
%brother[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 35
%brother[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 36
%brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(Alter, D).
;; 37
%brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 38
%brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 39
%brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).


brother[eq]1a(Alter, Ego) :-  brother[eq]a(Alter, Ego).
                          |   brother[eq]1a(A, Ego), son(Alter, A).
;; 0
%brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 3
%brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 4
%brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 5
%brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 6
%brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 7
%brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).


brother[eq]a(Alter, Ego) :-  brother(Alter, Ego).
                         |   father(A, Ego), brother(B, A), son(Alter, B).
                         |   mother(A, Ego), sister(B, A), son(Alter, B).
                         |   mother(A, Ego), brother(B, A), daughter(C, B), son(Alter, C).
;; 0
%brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 3
%brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).


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


father[eq](Alter, Ego) :-  father(Alter, Ego).
                       |   father(A, Ego), brother[eq](Alter, A).
;; 0
%father[eq]:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(Alter, Ego).
;; 1
%father[eq]:1, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%father[eq]:1, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 3
%father[eq]:1, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 4
%father[eq]:1, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 5
%father[eq]:1, brother[eq]:1, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 6
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 7
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(Alter, G).
;; 8
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 9
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 10
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 11
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), son(Alter, F).
;; 12
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), son(Alter, F).
;; 13
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 14
%father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 15
%father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 16
%father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 17
%father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 18
%father[eq]:1, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 19
%father[eq]:1, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), son(Alter, H).
;; 20
%father[eq]:1, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), son(Alter, G).
;; 21
%father[eq]:1, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), son(Alter, G).
;; 22
%father[eq]:1, brother[eq]:3, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).


gen_dn[aux]37(Alter, Ego) :-  children(Alter, Ego).
                          |   children(A, Ego), children(Alter, A).
;; 0
%gen_dn[aux]37:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Alter, Ego).
;; 1
%gen_dn[aux]37:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Alter, Ego).
;; 2
%gen_dn[aux]37:1, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), son(Alter, A).
;; 3
%gen_dn[aux]37:1, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), daughter(Alter, A).
;; 4
%gen_dn[aux]37:1, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), son(Alter, A).
;; 5
%gen_dn[aux]37:1, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), daughter(Alter, A).


gen_up[aux]37(Alter, Ego) :-  father(Alter, Ego).
                          |   mother(Alter, Ego).
                          |   gen_up[aux]37(A, Ego), father(Alter, A).
                          |   gen_up[aux]37(A, Ego), mother(Alter, A).
;; 0
%gen_up[aux]37:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(Alter, Ego).
;; 1
%gen_up[aux]37:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(Alter, Ego).
;; 2
%gen_up[aux]37:2, gen_up[aux]37:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(Alter, A).
;; 3
%gen_up[aux]37:2, gen_up[aux]37:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(Alter, A).
;; 4
%gen_up[aux]37:3, gen_up[aux]37:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(Alter, A).
;; 5
%gen_up[aux]37:3, gen_up[aux]37:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(Alter, A).


generation[aux]37(Alter, Ego) :-  sibling(Alter, Ego).
                              |   parents(A, Ego), generation[aux]37gs(B, A), child(Alter, B).
;; 0
%generation[aux]37:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%generation[aux]37:1, parents:0, generation[aux]37gs:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 4
%generation[aux]37:1, parents:0, generation[aux]37gs:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 5
%generation[aux]37:1, parents:0, generation[aux]37gs:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 6
%generation[aux]37:1, parents:0, generation[aux]37gs:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 7
%generation[aux]37:1, parents:0, generation[aux]37gs:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 8
%generation[aux]37:1, parents:0, generation[aux]37gs:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 9
%generation[aux]37:1, parents:0, generation[aux]37gs:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 10
%generation[aux]37:1, parents:0, generation[aux]37gs:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 11
%generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 12
%generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 13
%generation[aux]37:1, parents:1, generation[aux]37gs:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 14
%generation[aux]37:1, parents:1, generation[aux]37gs:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 15
%generation[aux]37:1, parents:1, generation[aux]37gs:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 16
%generation[aux]37:1, parents:1, generation[aux]37gs:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 17
%generation[aux]37:1, parents:1, generation[aux]37gs:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 18
%generation[aux]37:1, parents:1, generation[aux]37gs:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 19
%generation[aux]37:1, parents:1, generation[aux]37gs:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 20
%generation[aux]37:1, parents:1, generation[aux]37gs:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).


generation[aux]37gs(Alter, Ego) :-  siblings(Alter, Ego).
                                |   parents(A, Ego), generation[aux]37gs(B, A), children(Alter, B).
;; 0
%generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%generation[aux]37gs:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%generation[aux]37gs:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%generation[aux]37gs:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%generation[aux]37gs:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%generation[aux]37gs:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 7
%generation[aux]37gs:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 8
%generation[aux]37gs:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 9
%generation[aux]37gs:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


generation[aux]37smallGS(Alter, Ego) :-  siblings(Alter, Ego).
                                     |   parents(A, Ego), siblings(B, A), children(Alter, B).
;; 0
%generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 7
%generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 8
%generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 9
%generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


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


indadi(Alter, Ego) :-  father[eq](Alter, Ego).
                   |   mother(A, Ego), sister[eq]1(B, A), husband(Alter, B).
{"Fa_FaBro_FaFaBroSo_FaFaFaBroSoSo_FaFaMoBroDaSoSo_FaFaMoSisSoSo_FaMoBroDaSo_FaMoBroSoDaSo_FaMoFaBroDaSo_FaMoFaBroSoDaSo_FaMoFaFaBroDaSo_FaMoFaHsisSo_FaMoFaMoSisDaSo_FaMoFaSisSo_FaMoHsisSo_FaMoMoBroDaDaSo_FaMoMoHsisDaSo_FaMoMoSisDaSo_FaMoMoSisSoDaSo_FaMoSisSo_MoBroDaHu_MoBroSoDaHu_MoFaBroDaHu_MoFaBroSoDaHu_MoFaBroSoSoDaHu_MoFaFaBroSoDaHu_MoFaMoSisSoDaHu_MoHsisHu_MoMoBroDaDaHu_MoMoBroDaSoDaHu_MoMoBroSoDaDaHu_MoMoFaBroDaDaHu_MoMoHsisDaHu_MoMoSisDaHu_MoMoSisSoDaHu_MoMoSisSoSoDaHu_MoSisHu"}
;; 0
%indadi:0, father[eq]:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).
;; 1
%indadi:0, father[eq]:1, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%indadi:0, father[eq]:1, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 3
%indadi:0, father[eq]:1, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 4
%indadi:0, father[eq]:1, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 5
%indadi:0, father[eq]:1, brother[eq]:1, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 6
%indadi:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 7
%indadi:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(Alter, G).
;; 8
%indadi:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoHsisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 9
%indadi:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoHsisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 10
%indadi:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 11
%indadi:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoHsisSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), son(Alter, F).
;; 12
%indadi:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoHsisSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), son(Alter, F).
;; 13
%indadi:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 14
%indadi:0, father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 15
%indadi:0, father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 16
%indadi:0, father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 17
%indadi:0, father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 18
%indadi:0, father[eq]:1, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 19
%indadi:0, father[eq]:1, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaMoSisDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), son(Alter, H).
;; 20
%indadi:0, father[eq]:1, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=2,  PC=8, S=1, Star=0,  {FaMoFaHsisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), son(Alter, G).
;; 21
%indadi:0, father[eq]:1, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=2,  PC=8, S=1, Star=0,  {FaMoFaHsisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), son(Alter, G).
;; 22
%indadi:0, father[eq]:1, brother[eq]:3, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaFaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 23
%indadi:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 24
%indadi:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoSisDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), husband(Alter, F).
;; 25
%indadi:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=7, S=2, Star=0,  {MoMoHsisDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), husband(Alter, G).
;; 26
%indadi:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=7, S=2, Star=0,  {MoMoHsisDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), husband(Alter, G).
;; 27
%indadi:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoFaBroDaDaHu}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), husband(Alter, H).
;; 28
%indadi:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), husband(Alter, G).
;; 29
%indadi:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroSoDaDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), husband(Alter, H).
;; 30
%indadi:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=5, S=2, Star=0,  {MoHsisHu}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), husband(Alter, E).
;; 31
%indadi:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=5, S=2, Star=0,  {MoHsisHu}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), husband(Alter, E).
;; 32
%indadi:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaBroDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), husband(Alter, F).
;; 33
%indadi:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaFaBroSoDaHu}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), husband(Alter, H).
;; 34
%indadi:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoSisSoDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), husband(Alter, H).
;; 35
%indadi:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E).
;; 36
%indadi:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), husband(Alter, G).
;; 37
%indadi:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), husband(Alter, G).
;; 38
%indadi:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroDaSoDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), husband(Alter, H).
;; 39
%indadi:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroSoDaHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), husband(Alter, F).
;; 40
%indadi:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoSoDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), husband(Alter, H).
;; 41
%indadi:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoSoDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), husband(Alter, H).


innanha(Alter, Ego) :-  mother(Alter, Ego).
                    |   father[eq](A, Ego), wife(Alter, A).
                    |   mother(A, Ego), sister[eq]1(Alter, A).
                    |   mother(A, Ego), father(B, A), sister(Alter, B).
{"FaBroWi_FaFaBroSoWi_FaFaFaBroSoSoWi_FaFaMoSisSoSoWi_FaMoBroDaSoWi_FaMoBroSoDaSoWi_FaMoFaBroDaSoWi_FaMoFaHsisSoWi_FaMoFaMoSisDaSoWi_FaMoFaSisSoWi_FaMoHsisSoWi_FaMoMoBroDaDaSoWi_FaMoMoSisDaSoWi_FaMoSisSoWi_Mo_MoBroDa_MoBroSoDa_MoFaBroDa_MoFaBroSoDa_MoFaBroSoSoDa_MoFaFaBroSoDa_MoFaMoBroDaSoDa_MoFaMoSisSoDa_MoFaSis_MoHsis_MoMoBroDaDa_MoMoBroDaSoDa_MoMoBroDaSoSoDa_MoMoBroSoDaDa_MoMoFaBroDaDa_MoMoHsisDa_MoMoSisDa_MoMoSisSoDa_MoMoSisSoSoDa_MoSis"}
;; 0
%innanha:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).
;; 1
%innanha:1, father[eq]:0%
 Lvl=1,  PC=1, S=1, Star=0,  {Mo}  
 father(A, Ego), wife(Alter, A).
;; 2
%innanha:1, father[eq]:1, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 3
%innanha:1, father[eq]:1, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaBroSoWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), wife(Alter, F).
;; 4
%innanha:1, father[eq]:1, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaFaBroSoSoWi}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), wife(Alter, H).
;; 5
%innanha:1, father[eq]:1, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoSisSoSoWi}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), wife(Alter, H).
;; 6
%innanha:1, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), wife(Alter, F).
;; 7
%innanha:1, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoSisDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(H, G), wife(Alter, H).
;; 8
%innanha:1, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoBroDaDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(I, H), wife(Alter, I).
;; 9
%innanha:1, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=7, S=2, Star=0,  {FaMoHsisSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), son(G, F), wife(Alter, G).
;; 10
%innanha:1, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=7, S=2, Star=0,  {FaMoHsisSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), son(G, F), wife(Alter, G).
;; 11
%innanha:1, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoFaBroDaSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), wife(Alter, H).
;; 12
%innanha:1, father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), wife(Alter, G).
;; 13
%innanha:1, father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroSoDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 14
%innanha:1, father[eq]:1, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {FaMoFaSisSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), wife(Alter, G).
;; 15
%innanha:1, father[eq]:1, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=10, S=1, Star=0,  {FaMoFaMoSisDaSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), son(I, H), wife(Alter, I).
;; 16
%innanha:1, father[eq]:1, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=2,  PC=8, S=2, Star=0,  {FaMoFaHsisSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), son(H, G), wife(Alter, H).
;; 17
%innanha:1, father[eq]:1, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=2,  PC=8, S=2, Star=0,  {FaMoFaHsisSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), son(H, G), wife(Alter, H).
;; 18
%innanha:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 19
%innanha:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E), not(equal(Alter, A)).
;; 20
%innanha:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoHsisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(Alter, F), not(equal(Alter, A)).
;; 21
%innanha:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoHsisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(Alter, F), not(equal(Alter, A)).
;; 22
%innanha:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 23
%innanha:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, A)).
;; 24
%innanha:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 25
%innanha:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoHsis}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(Alter, D), daughter(Alter, C), not(equal(D, B)).
;; 26
%innanha:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=5, S=1, Star=0,  {MoHsis}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(Alter, D), daughter(Alter, B), not(equal(D, C)).
;; 27
%innanha:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 28
%innanha:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 29
%innanha:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 30
%innanha:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 31
%innanha:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 32
%innanha:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 33
%innanha:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 34
%innanha:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 35
%innanha:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 36
%innanha:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 37
%innanha:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 38
%innanha:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 39
%innanha:3, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).


mother[eq](Alter, Ego) :-  father[eq](A, Ego), wife(Alter, A).
                       |   mother(A, Ego), sister[eq]1(Alter, A).
;; 0
%mother[eq]:0, father[eq]:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), wife(Alter, A).
;; 1
%mother[eq]:0, father[eq]:1, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 2
%mother[eq]:0, father[eq]:1, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), wife(Alter, F).
;; 3
%mother[eq]:0, father[eq]:1, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), wife(Alter, H).
;; 4
%mother[eq]:0, father[eq]:1, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), wife(Alter, H).
;; 5
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), wife(Alter, F).
;; 6
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(H, G), wife(Alter, H).
;; 7
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(I, H), wife(Alter, I).
;; 8
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), son(G, F), wife(Alter, G).
;; 9
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), son(G, F), wife(Alter, G).
;; 10
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), wife(Alter, H).
;; 11
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), wife(Alter, G).
;; 12
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 13
%mother[eq]:0, father[eq]:1, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), wife(Alter, G).
;; 14
%mother[eq]:0, father[eq]:1, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), son(I, H), wife(Alter, I).
;; 15
%mother[eq]:0, father[eq]:1, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), son(H, G), wife(Alter, H).
;; 16
%mother[eq]:0, father[eq]:1, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), son(H, G), wife(Alter, H).
;; 17
%mother[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 18
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E), not(equal(Alter, A)).
;; 19
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(Alter, F), not(equal(Alter, A)).
;; 20
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(Alter, F), not(equal(Alter, A)).
;; 21
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 22
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, A)).
;; 23
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 24
%mother[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(Alter, D), daughter(Alter, C), not(equal(D, B)).
;; 25
%mother[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(Alter, D), daughter(Alter, B), not(equal(D, C)).
;; 26
%mother[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 27
%mother[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 28
%mother[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 29
%mother[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 30
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 31
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 32
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 33
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 34
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 35
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 36
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 37
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).


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


sister[eq](Alter, Ego) :-  sister(Alter, Ego).
                       |   mother(A, Ego), sister[eq]1(B, A), daughter(Alter, B), not(equal(Alter, Ego)).
                       |   half_sister(Alter, Ego).
                       |   father(A, Ego), brother[eq]a(B, A), daughter(Alter, B).
;; 0
%sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), not(equal(Alter, Ego)).
;; 2
%sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(Alter, G), not(equal(Alter, Ego)).
;; 3
%sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H), not(equal(Alter, Ego)).
;; 4
%sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(Alter, E), not(equal(Alter, Ego)).
;; 5
%sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(Alter, E), not(equal(Alter, Ego)).
;; 6
%sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 7
%sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E), not(equal(Alter, Ego)).
;; 8
%sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)).
;; 9
%sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)).
;; 10
%sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 11
%sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), wife(C, B), daughter(Alter, C), daughter(Alter, B), not(equal(C, A)).
;; 12
%sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), husband(C, A), daughter(Alter, C), daughter(Alter, A), not(equal(C, B)).
;; 13
%sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 14
%sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 15
%sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 16
%sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).


sister[eq]1(Alter, Ego) :-  sister[eq](Alter, Ego).
                        |   brother[eq]1a(A, Ego), daughter(Alter, A).
;; 0
%sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), not(equal(Alter, Ego)).
;; 2
%sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(Alter, E), not(equal(Alter, Ego)).
;; 3
%sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(Alter, E), not(equal(Alter, Ego)).
;; 4
%sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 5
%sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E), not(equal(Alter, Ego)).
;; 6
%sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)).
;; 7
%sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)).
;; 8
%sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 9
%sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), wife(C, B), daughter(Alter, C), daughter(Alter, B), not(equal(C, A)).
;; 10
%sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), husband(C, A), daughter(Alter, C), daughter(Alter, A), not(equal(C, B)).
;; 11
%sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 12
%sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 13
%sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 14
%sister[eq]1:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 15
%sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 16
%sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 17
%sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 18
%sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 19
%sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(Alter, D).
;; 20
%sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 21
%sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 22
%sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).


sister[eq]2(Alter, Ego) :-  sister[eq](Alter, Ego).
                        |   father(A, Ego), sister[eq]2(Alter, A).
;; 0
%sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), not(equal(Alter, Ego)).
;; 2
%sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(Alter, G), not(equal(Alter, Ego)).
;; 3
%sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H), not(equal(Alter, Ego)).
;; 4
%sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(Alter, E), not(equal(Alter, Ego)).
;; 5
%sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(Alter, E), not(equal(Alter, Ego)).
;; 6
%sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 7
%sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E), not(equal(Alter, Ego)).
;; 8
%sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)).
;; 9
%sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)).
;; 10
%sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 11
%sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), wife(C, B), daughter(Alter, C), daughter(Alter, B), not(equal(C, A)).
;; 12
%sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), husband(C, A), daughter(Alter, C), daughter(Alter, A), not(equal(C, B)).
;; 13
%sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 14
%sister[eq]2:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 15
%sister[eq]2:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 16
%sister[eq]2:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 17
%sister[eq]2:1, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 18
%sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E), not(equal(Alter, A)).
;; 19
%sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(Alter, H), not(equal(Alter, A)).
;; 20
%sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(Alter, F), not(equal(Alter, A)).
;; 21
%sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(Alter, F), not(equal(Alter, A)).
;; 22
%sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 23
%sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, A)).
;; 24
%sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 25
%sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(Alter, D), daughter(Alter, C), not(equal(D, B)).
;; 26
%sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(Alter, D), daughter(Alter, B), not(equal(D, C)).
;; 27
%sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 28
%sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 29
%sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 30
%sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).


sister[eq]2a(Alter, Ego) :-  sister[eq](Alter, Ego).
                         |   father(A, Ego), sister(Alter, A).
;; 0
%sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), not(equal(Alter, Ego)).
;; 2
%sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(Alter, G), not(equal(Alter, Ego)).
;; 3
%sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H), not(equal(Alter, Ego)).
;; 4
%sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(Alter, E), not(equal(Alter, Ego)).
;; 5
%sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(Alter, E), not(equal(Alter, Ego)).
;; 6
%sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 7
%sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E), not(equal(Alter, Ego)).
;; 8
%sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)).
;; 9
%sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)).
;; 10
%sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 11
%sister[eq]2a:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), wife(C, B), daughter(Alter, C), daughter(Alter, B), not(equal(C, A)).
;; 12
%sister[eq]2a:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), husband(C, A), daughter(Alter, C), daughter(Alter, A), not(equal(C, B)).
;; 13
%sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 14
%sister[eq]2a:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 15
%sister[eq]2a:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 16
%sister[eq]2a:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 17
%sister[eq]2a:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


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


wicie(Alter, Ego) :-  husband(A, Ego), brother[eq](Alter, A).
{"HuBro_HuFaBroSo_HuFaFaBroSoSo_HuFaMoBroDaSoSo_HuFaMoSisSoSo_HuMoBroDaSo_HuMoBroSoDaSo_HuMoFaBroDaSo_HuMoFaBroSoDaSo_HuMoFaFaBroDaSo_HuMoFaHsisSo_HuMoFaMoSisDaSo_HuMoFaSisSo_HuMoHsisSo_HuMoMoBroDaDaSo_HuMoMoHsisDaSo_HuMoMoSisDaSo_HuMoMoSisSoDaSo_HuMoSisSo"}
;; 0
%wicie:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%wicie:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 2
%wicie:0, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroSoSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 3
%wicie:0, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 4
%wicie:0, brother[eq]:1, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoBroDaSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 5
%wicie:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 6
%wicie:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(Alter, G).
;; 7
%wicie:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoHsisDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 8
%wicie:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoHsisDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 9
%wicie:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoBroDaDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 10
%wicie:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuMoHsisSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), son(Alter, F).
;; 11
%wicie:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=6, S=2, Star=0,  {HuMoHsisSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), son(Alter, F).
;; 12
%wicie:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroDaSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 13
%wicie:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 14
%wicie:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoFaBroSoDaSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 15
%wicie:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoSisSoDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 16
%wicie:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroSoDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 17
%wicie:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoFaSisSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 18
%wicie:0, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuMoFaMoSisDaSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), son(Alter, H).
;; 19
%wicie:0, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=7, S=2, Star=0,  {HuMoFaHsisSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), son(Alter, G).
;; 20
%wicie:0, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=7, S=2, Star=0,  {HuMoFaHsisSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), son(Alter, G).
;; 21
%wicie:0, brother[eq]:3, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuMoFaFaBroDaSo}  
 husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).


wicikan(Alter, Ego) :-  husband(A, Ego), sister[eq](Alter, A).
{"HuFaBroDa_HuFaFaBroSoDa_HuFaMoBroDaSoDa_HuFaMoSisSoDa_HuHsis_HuMoBroDaDa_HuMoBroSoDaDa_HuMoFaBroDaDa_HuMoHsisDa_HuMoMoBroDaDaDa_HuMoSisDa_HuSis"}
;; 0
%wicikan:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%wicikan:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E), not(equal(Alter, A)).
;; 2
%wicikan:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoBroDaDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(Alter, H), not(equal(Alter, A)).
;; 3
%wicikan:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuMoHsisDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(Alter, F), not(equal(Alter, A)).
;; 4
%wicikan:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=6, S=2, Star=0,  {HuMoHsisDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(Alter, F), not(equal(Alter, A)).
;; 5
%wicikan:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroDaDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 6
%wicikan:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, A)).
;; 7
%wicikan:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroSoDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 8
%wicikan:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {HuHsis}  
 husband(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(Alter, D), daughter(Alter, C), not(equal(D, B)).
;; 9
%wicikan:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {HuHsis}  
 husband(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(Alter, D), daughter(Alter, B), not(equal(D, C)).
;; 10
%wicikan:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 11
%wicikan:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroSoDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 12
%wicikan:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 13
%wicikan:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoBroDaSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).


wiegcange(Alter, Ego) :-  husband(Alter, Ego).
                      |   wife(A, Ego), sister(B, A), husband(Alter, B).
                      |   wife(A, Ego), father(B, A), sister(C, B), husband(Alter, C).
{"Hu_WiFaSisHu_WiSisHu"}
;; 0
%wiegcange:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).
;; 1
%wiegcange:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {WiSisHu}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 2
%wiegcange:2, sister:0, sibling:0%
 Lvl=1,  PC=5, S=2, Star=0,  {WiFaSisHu}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).


wigaqcan(Alter, Ego) :-  wife(Alter, Ego).
                     |   husband(A, Ego), brother[eq](B, A), wife(Alter, B).
{"HuBroWi_HuFaBroSoWi_HuFaFaBroSoSoWi_HuFaMoSisSoSoWi_HuMoBroDaSoWi_HuMoBroSoDaSoWi_HuMoFaBroDaSoWi_HuMoFaHsisSoWi_HuMoFaMoSisDaSoWi_HuMoFaSisSoWi_HuMoHsisSoWi_HuMoMoBroDaDaSoWi_HuMoMoSisDaSoWi_HuMoSisSoWi_Wi"}
;; 0
%wigaqcan:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).
;; 1
%wigaqcan:1, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {HuBroWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 2
%wigaqcan:1, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaBroSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), wife(Alter, F).
;; 3
%wigaqcan:1, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaBroSoSoWi}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), wife(Alter, H).
;; 4
%wigaqcan:1, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoSisSoSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), wife(Alter, H).
;; 5
%wigaqcan:1, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuMoSisSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), wife(Alter, F).
;; 6
%wigaqcan:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoSisDaSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(H, G), wife(Alter, H).
;; 7
%wigaqcan:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=2, Star=0,  {HuMoMoBroDaDaSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(I, H), wife(Alter, I).
;; 8
%wigaqcan:1, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=6, S=3, Star=0,  {HuMoHsisSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), son(G, F), wife(Alter, G).
;; 9
%wigaqcan:1, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=6, S=3, Star=0,  {HuMoHsisSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), son(G, F), wife(Alter, G).
;; 10
%wigaqcan:1, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaBroDaSoWi}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), wife(Alter, H).
;; 11
%wigaqcan:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuMoBroDaSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), wife(Alter, G).
;; 12
%wigaqcan:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoBroSoDaSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 13
%wigaqcan:1, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=2, Star=0,  {HuMoFaSisSoWi}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), wife(Alter, G).
;; 14
%wigaqcan:1, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=2, Star=0,  {HuMoFaMoSisDaSoWi}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), son(I, H), wife(Alter, I).
;; 15
%wigaqcan:1, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=7, S=3, Star=0,  {HuMoFaHsisSoWi}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), son(H, G), wife(Alter, H).
;; 16
%wigaqcan:1, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=7, S=3, Star=0,  {HuMoFaHsisSoWi}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), son(H, G), wife(Alter, H).


wihanga(Alter, Ego) :-  wife(A, Ego), sister[eq]1(Alter, A).
                    |   wife(A, Ego), father(B, A), sister[eq]1(Alter, B).
{"WiBroDa_WiBroSoDa_WiFaBroDa_WiFaBroSoDa_WiFaBroSoSoDa_WiFaFaBroDa_WiFaFaBroSoDa_WiFaFaBroSoSoDa_WiFaFaFaBroSoDa_WiFaFaMoSisSoDa_WiFaHsis_WiFaMoBroDaDa_WiFaMoBroDaSoDa_WiFaMoHsisDa_WiFaMoSisDa_WiFaMoSisSoDa_WiFaMoSisSoSoDa_WiFaSis_WiHsis_WiMoBroDaDa_WiMoBroDaSoDa_WiMoBroDaSoSoDa_WiMoBroSoDaDa_WiMoFaBroDaDa_WiMoHsisDa_WiMoSisDa_WiMoSisSoDa_WiMoSisSoSoDa_WiSis"}
;; 0
%wihanga:0, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%wihanga:0, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E), not(equal(Alter, A)).
;; 2
%wihanga:0, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=6, S=2, Star=0,  {WiMoHsisDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(Alter, F), not(equal(Alter, A)).
;; 3
%wihanga:0, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=6, S=2, Star=0,  {WiMoHsisDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(Alter, F), not(equal(Alter, A)).
;; 4
%wihanga:0, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroDaDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 5
%wihanga:0, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, A)).
;; 6
%wihanga:0, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroSoDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 7
%wihanga:0, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {WiHsis}  
 wife(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(Alter, D), daughter(Alter, C), not(equal(D, B)).
;; 8
%wihanga:0, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {WiHsis}  
 wife(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(Alter, D), daughter(Alter, B), not(equal(D, C)).
;; 9
%wihanga:0, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 10
%wihanga:0, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroSoDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 11
%wihanga:0, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 12
%wihanga:0, sister[eq]1:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoBroDaSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 13
%wihanga:0, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 14
%wihanga:0, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 15
%wihanga:0, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 16
%wihanga:0, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroDaSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 17
%wihanga:0, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroSoDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 18
%wihanga:0, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroSoSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 19
%wihanga:0, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisSoSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 20
%wihanga:0, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroDaSoSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 21
%wihanga:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaSis}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 22
%wihanga:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaMoSisDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F), not(equal(Alter, B)).
;; 23
%wihanga:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=7, S=2, Star=0,  {WiFaMoHsisDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(Alter, G), not(equal(Alter, B)).
;; 24
%wihanga:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=7, S=2, Star=0,  {WiFaMoHsisDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(Alter, G), not(equal(Alter, B)).
;; 25
%wihanga:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, B)).
;; 26
%wihanga:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=5, S=2, Star=0,  {WiFaHsis}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), wife(E, D), daughter(Alter, E), daughter(Alter, D), not(equal(E, C)).
;; 27
%wihanga:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=5, S=2, Star=0,  {WiFaHsis}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), husband(E, C), daughter(Alter, E), daughter(Alter, C), not(equal(E, D)).
;; 28
%wihanga:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaFaBroDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 29
%wihanga:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaFaBroSoDa}  
 wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 30
%wihanga:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaMoSisSoDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 31
%wihanga:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 32
%wihanga:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroSoDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 33
%wihanga:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 34
%wihanga:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoBroDaSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 35
%wihanga:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 36
%wihanga:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaFaBroSoSoDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(Alter, H).
;; 37
%wihanga:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoSisSoSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(Alter, H).


wijance(Alter, Ego) :-  female(Ego), mother(A, Ego), sister[eq]1(B, A), daughter(Alter, B), elder(Alter, Ego).
                    |   female(Ego), father(A, Ego), brother[eq]a(B, A), daughter(Alter, B), elder(Alter, Ego).
                    |   female(Ego), mother(A, Ego), sister[eq]2(B, A), daughter(Alter, B), elder(Alter, Ego).
{"FaBroDa_FaFaBroSoDa_FaMoBroDaSoDa_FaMoSisSoDa_MoBroDaDa_MoBroSoDaDa_MoFaBroDaDa_MoFaBroSoDaDa_MoFaBroSoSoDaDa_MoFaFaBroDaDa_MoFaFaBroSoDaDa_MoFaHsisDa_MoFaMoBroDaDaDa_MoFaMoBroDaSoDaDa_MoFaMoBroSoDaDaDa_MoFaMoHsisDaDa_MoFaMoSisDaDa_MoFaMoSisSoDaDa_MoFaSisDa_MoHsisDa_MoMoBroDaDaDa_MoMoBroDaSoDaDa_MoMoBroDaSoSoDaDa_MoMoBroSoDaDaDa_MoMoFaBroDaDaDa_MoMoFaBroSoDaDaDa_MoMoHsisDaDa_MoMoMoSisSoDaDaDa_MoMoSisDaDa_MoMoSisSoDaDa_MoMoSisSoSoDaDa_MoSisDa"}
;; 0
%wijance:0, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), elder(Alter, Ego).
;; 1
%wijance:0, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(Alter, F), elder(Alter, Ego).
;; 2
%wijance:0, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoHsisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), daughter(Alter, G), elder(Alter, Ego).
;; 3
%wijance:0, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoHsisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), daughter(Alter, G), elder(Alter, Ego).
;; 4
%wijance:0, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H), elder(Alter, Ego).
;; 5
%wijance:0, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(Alter, G), elder(Alter, Ego).
;; 6
%wijance:0, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), daughter(Alter, I), elder(Alter, Ego).
;; 7
%wijance:0, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), daughter(Alter, I), elder(Alter, Ego).
;; 8
%wijance:0, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H), elder(Alter, Ego).
;; 9
%wijance:0, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoHsisDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(Alter, E), elder(Alter, Ego).
;; 10
%wijance:0, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=6, S=1, Star=0,  {MoHsisDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(Alter, E), elder(Alter, Ego).
;; 11
%wijance:0, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 12
%wijance:0, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H), elder(Alter, Ego).
;; 13
%wijance:0, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(Alter, H), elder(Alter, Ego).
;; 14
%wijance:0, sister[eq]1:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I), elder(Alter, Ego).
;; 15
%wijance:0, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E), elder(Alter, Ego).
;; 16
%wijance:0, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), elder(Alter, Ego).
;; 17
%wijance:0, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G), elder(Alter, Ego).
;; 18
%wijance:0, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H), elder(Alter, Ego).
;; 19
%wijance:0, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 20
%wijance:0, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H), elder(Alter, Ego).
;; 21
%wijance:0, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H), elder(Alter, Ego).
;; 22
%wijance:0, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaSoSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I), elder(Alter, Ego).
;; 23
%wijance:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D), elder(Alter, Ego).
;; 24
%wijance:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 25
%wijance:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 26
%wijance:1, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G), elder(Alter, Ego).
;; 27
%wijance:2, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), elder(Alter, Ego).
;; 28
%wijance:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(Alter, F), elder(Alter, Ego).
;; 29
%wijance:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoHsisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), daughter(Alter, G), elder(Alter, Ego).
;; 30
%wijance:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoHsisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), daughter(Alter, G), elder(Alter, Ego).
;; 31
%wijance:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H), elder(Alter, Ego).
;; 32
%wijance:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(Alter, G), elder(Alter, Ego).
;; 33
%wijance:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), daughter(Alter, I), elder(Alter, Ego).
;; 34
%wijance:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), daughter(Alter, I), elder(Alter, Ego).
;; 35
%wijance:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H), elder(Alter, Ego).
;; 36
%wijance:2, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoHsisDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(Alter, E), elder(Alter, Ego).
;; 37
%wijance:2, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=6, S=1, Star=0,  {MoHsisDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(Alter, E), elder(Alter, Ego).
;; 38
%wijance:2, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 39
%wijance:2, sister[eq]2:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H), elder(Alter, Ego).
;; 40
%wijance:2, sister[eq]2:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(Alter, H), elder(Alter, Ego).
;; 41
%wijance:2, sister[eq]2:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I), elder(Alter, Ego).
;; 42
%wijance:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E), elder(Alter, Ego).
;; 43
%wijance:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), daughter(Alter, G), elder(Alter, Ego).
;; 44
%wijance:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoHsisDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(H, G), not(equal(H, B)), daughter(Alter, H), elder(Alter, Ego).
;; 45
%wijance:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoHsisDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(H, G), not(equal(H, B)), daughter(Alter, H), elder(Alter, Ego).
;; 46
%wijance:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(Alter, H), elder(Alter, Ego).
;; 47
%wijance:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, B)), daughter(Alter, I), elder(Alter, Ego).
;; 48
%wijance:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaHsisDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(Alter, F), elder(Alter, Ego).
;; 49
%wijance:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaHsisDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(Alter, F), elder(Alter, Ego).
;; 50
%wijance:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), elder(Alter, Ego).


wijange(Alter, Ego) :-  daughter(Alter, Ego).
                    |   male(Ego), brother[eq](A, Ego), daughter(Alter, A).
                    |   female(Ego), sister[eq]2(A, Ego), daughter(Alter, A).
                    |   female(Ego), mother(A, Ego), sister[eq]2(B, A), daughter(C, B), daughter(Alter, C).
                    |   female(Ego), sister[eq]1(A, Ego), daughter(Alter, A).
                    |   wife(A, Ego), sister[eq]2(B, A), daughter(Alter, B).
                    |   wife(A, Ego), sister[eq]1(B, A), daughter(Alter, B).
                    |   husband(A, Ego), brother[eq](B, A), daughter(Alter, B).
{"BroDa_BroDaDa_BroSoDaDa_Da_FaBroDaDa_FaBroSoDa_FaBroSoDaDa_FaBroSoSoDaDa_FaFaBroDaDa_FaFaBroSoDaDa_FaFaBroSoSoDa_FaFaFaBroSoDaDa_FaFaMoBroDaSoDaDa_FaFaMoSisSoDaDa_FaHsisDa_FaMoBroDaDaDa_FaMoBroDaSoDaDa_FaMoBroDaSoSoDa_FaMoBroSoDaDaDa_FaMoFaBroDaDaDa_FaMoFaBroSoDaDaDa_FaMoFaBroSoSoDaDaDa_FaMoHsisDaDa_FaMoMoBroDaDaDaDa_FaMoMoBroDaSoDaDaDa_FaMoMoSisSoDaDaDa_FaMoMoSisSoSoDaDaDa_FaMoSisDaDa_FaMoSisSoDaDa_FaMoSisSoSoDa_FaSisDa_HsisDa_HuBroDa_HuFaBroSoDa_HuFaFaBroSoSoDa_HuFaMoSisSoSoDa_HuMoBroDaSoDa_HuMoBroSoDaSoDa_HuMoFaBroDaSoDa_HuMoFaHsisSoDa_HuMoFaMoSisDaSoDa_HuMoFaSisSoDa_HuMoHsisSoDa_HuMoMoBroDaDaSoDa_HuMoMoSisDaSoDa_HuMoSisSoDa_MoBroDaDaDa_MoBroDaSoDa_MoBroDaSoDaDa_MoBroDaSoSoDaDa_MoBroSoDaDaDa_MoBroSoDaSoDa_MoFaBroDaDaDa_MoFaBroDaSoDa_MoFaBroSoDaDaDa_MoFaBroSoDaSoDa_MoFaBroSoSoDaDaDa_MoFaBroSoSoDaSoDa_MoFaFaBroDaDaDa_MoFaFaBroDaSoDa_MoFaFaBroSoDaDaDa_MoFaFaBroSoDaSoDa_MoFaHsisDaDa_MoFaHsisSoDa_MoFaMoBroDaDaDaDa_MoFaMoBroDaDaSoDa_MoFaMoBroDaSoDaDaDa_MoFaMoBroDaSoDaSoDa_MoFaMoBroSoDaDaDaDa_MoFaMoBroSoDaDaSoDa_MoFaMoHsisDaDaDa_MoFaMoHsisDaSoDa_MoFaMoSisDaDaDa_MoFaMoSisDaSoDa_MoFaMoSisSoDaDaDa_MoFaMoSisSoDaSoDa_MoFaSisDaDa_MoFaSisSoDa_MoHsisDaDa_MoHsisSoDa_MoMoBroDaDaDaDa_MoMoBroDaDaSoDa_MoMoBroDaSoDaDaDa_MoMoBroDaSoDaSoDa_MoMoBroDaSoSoDaDaDa_MoMoBroDaSoSoDaSoDa_MoMoBroSoDaDaDaDa_MoMoBroSoDaDaSoDa_MoMoFaBroDaDaDaDa_MoMoFaBroDaDaSoDa_MoMoFaBroSoDaDaDaDa_MoMoFaBroSoDaDaSoDa_MoMoHsisDaDaDa_MoMoHsisDaSoDa_MoMoMoSisSoDaDaDaDa_MoMoMoSisSoDaDaSoDa_MoMoSisDaDaDa_MoMoSisDaSoDa_MoMoSisSoDaDaDa_MoMoSisSoDaSoDa_MoMoSisSoSoDaDaDa_MoMoSisSoSoDaSoDa_MoSisDaDa_MoSisSoDa_MoSisSoDaDa_MoSisSoSoDaDa_SisDa_WiBroDaDa_WiBroSoDaDa_WiFaBroDaDa_WiFaBroSoDaDa_WiFaBroSoSoDaDa_WiFaFaBroDaDa_WiFaFaBroSoDaDa_WiFaHsisDa_WiFaMoBroDaDaDa_WiFaMoHsisDaDa_WiFaMoSisDaDa_WiFaMoSisSoDaDa_WiFaSisDa_WiHsisDa_WiMoBroDaDaDa_WiMoBroDaSoDaDa_WiMoBroSoDaDaDa_WiMoFaBroDaDaDa_WiMoHsisDaDa_WiMoMoBroDaDaDaDa_WiMoSisDaDa_WiMoSisSoDaDa_WiMoSisSoSoDaDa_WiSisDa"}
;; 0
%wijange:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).
;; 1
%wijange:1, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 2
%wijange:1, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 3
%wijange:1, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 4
%wijange:1, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 5
%wijange:1, brother[eq]:1, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 6
%wijange:1, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 7
%wijange:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), daughter(Alter, G).
;; 8
%wijange:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoHsisDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), son(H, G), daughter(Alter, H).
;; 9
%wijange:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoHsisDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), son(H, G), daughter(Alter, H).
;; 10
%wijange:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(Alter, I).
;; 11
%wijange:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), daughter(Alter, H).
;; 12
%wijange:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoFaBroSoDaDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(J, I), daughter(Alter, J).
;; 13
%wijange:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoMoSisSoDaDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(J, I), daughter(Alter, J).
;; 14
%wijange:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroSoDaDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(Alter, I).
;; 15
%wijange:1, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoHsisSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), daughter(Alter, F).
;; 16
%wijange:1, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoHsisSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), daughter(Alter, F).
;; 17
%wijange:1, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 18
%wijange:1, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 19
%wijange:1, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 20
%wijange:1, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoFaMoBroDaSoDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), son(J, I), daughter(Alter, J).
;; 21
%wijange:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 22
%wijange:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 23
%wijange:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 24
%wijange:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaSoDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 25
%wijange:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 26
%wijange:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroSoSoDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 27
%wijange:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisSoSoDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 28
%wijange:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaSoSoDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(I, H), son(J, I), daughter(Alter, J).
;; 29
%wijange:1, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 30
%wijange:1, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(H, G), daughter(Alter, H).
;; 31
%wijange:1, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoHsisDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(H, G), not(equal(H, B)), son(I, H), daughter(Alter, I).
;; 32
%wijange:1, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoHsisDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(H, G), not(equal(H, B)), son(I, H), daughter(Alter, I).
;; 33
%wijange:1, brother[eq]:3, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(I, H), daughter(Alter, I).
;; 34
%wijange:1, brother[eq]:3, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoFaMoBroSoDaDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, B)), son(J, I), daughter(Alter, J).
;; 35
%wijange:1, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaHsisSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), son(G, F), daughter(Alter, G).
;; 36
%wijange:1, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaHsisSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), son(G, F), daughter(Alter, G).
;; 37
%wijange:1, brother[eq]:3, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 38
%wijange:2, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 39
%wijange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), daughter(Alter, E).
;; 40
%wijange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), daughter(Alter, H).
;; 41
%wijange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroSoDaDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), not(equal(I, Ego)), daughter(Alter, I).
;; 42
%wijange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoHsisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), not(equal(F, Ego)), daughter(Alter, F).
;; 43
%wijange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoHsisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), not(equal(F, Ego)), daughter(Alter, F).
;; 44
%wijange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(Alter, G).
;; 45
%wijange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), daughter(Alter, I).
;; 46
%wijange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), daughter(Alter, I).
;; 47
%wijange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoFaMoBroDaSoDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, Ego)), daughter(Alter, J).
;; 48
%wijange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), daughter(Alter, F).
;; 49
%wijange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(Alter, H).
;; 50
%wijange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(Alter, H).
;; 51
%wijange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaSoDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), daughter(Alter, I).
;; 52
%wijange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(Alter, G).
;; 53
%wijange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroSoSoDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), daughter(Alter, I).
;; 54
%wijange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisSoSoDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), daughter(Alter, I).
;; 55
%wijange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaSoSoDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, Ego)), daughter(Alter, J).
;; 56
%wijange:2, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HsisDa}  
 female(Ego), mother(A, Ego), father(B, Ego), wife(C, B), daughter(D, C), daughter(D, B), not(equal(C, A)), daughter(Alter, D).
;; 57
%wijange:2, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {HsisDa}  
 female(Ego), mother(A, Ego), father(B, Ego), husband(C, A), daughter(D, C), daughter(D, A), not(equal(C, B)), daughter(Alter, D).
;; 58
%wijange:2, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 59
%wijange:2, sister[eq]2:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 60
%wijange:2, sister[eq]2:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 61
%wijange:2, sister[eq]2:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 62
%wijange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 63
%wijange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(Alter, F).
;; 64
%wijange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), not(equal(I, A)), daughter(Alter, I).
;; 65
%wijange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoHsisDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), daughter(Alter, G).
;; 66
%wijange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoHsisDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), daughter(Alter, G).
;; 67
%wijange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H).
;; 68
%wijange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(Alter, G).
;; 69
%wijange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), daughter(Alter, I).
;; 70
%wijange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), daughter(Alter, I).
;; 71
%wijange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoMoBroDaSoDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, A)), daughter(Alter, J).
;; 72
%wijange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H).
;; 73
%wijange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoFaBroSoSoDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, A)), daughter(Alter, J).
;; 74
%wijange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoMoSisSoSoDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, A)), daughter(Alter, J).
;; 75
%wijange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaHsisDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(Alter, E).
;; 76
%wijange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=6, S=1, Star=0,  {FaHsisDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(Alter, E).
;; 77
%wijange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 78
%wijange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoDaDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 79
%wijange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 80
%wijange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaSoDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 81
%wijange:3, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 82
%wijange:3, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), daughter(Alter, G).
;; 83
%wijange:3, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoHsisDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), daughter(H, G), daughter(Alter, H).
;; 84
%wijange:3, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoHsisDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), daughter(H, G), daughter(Alter, H).
;; 85
%wijange:3, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(Alter, I).
;; 86
%wijange:3, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), daughter(Alter, H).
;; 87
%wijange:3, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoFaBroSoDaDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), daughter(J, I), daughter(Alter, J).
;; 88
%wijange:3, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoMoSisSoDaDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), daughter(J, I), daughter(Alter, J).
;; 89
%wijange:3, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroSoDaDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(Alter, I).
;; 90
%wijange:3, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoHsisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), daughter(Alter, F).
;; 91
%wijange:3, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoHsisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), daughter(Alter, F).
;; 92
%wijange:3, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 93
%wijange:3, sister[eq]2:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 94
%wijange:3, sister[eq]2:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 95
%wijange:3, sister[eq]2:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoFaMoBroDaSoDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(J, I), daughter(Alter, J).
;; 96
%wijange:3, sister[eq]2:1, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 97
%wijange:3, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), daughter(H, G), daughter(Alter, H).
;; 98
%wijange:3, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoHsisDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(H, G), not(equal(H, B)), daughter(I, H), daughter(Alter, I).
;; 99
%wijange:3, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoHsisDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(H, G), not(equal(H, B)), daughter(I, H), daughter(Alter, I).
;; 100
%wijange:3, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), daughter(Alter, I).
;; 101
%wijange:3, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoFaMoBroSoDaDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, B)), daughter(J, I), daughter(Alter, J).
;; 102
%wijange:3, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaHsisDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), daughter(Alter, G).
;; 103
%wijange:3, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaHsisDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), daughter(Alter, G).
;; 104
%wijange:3, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 105
%wijange:4, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 106
%wijange:4, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), daughter(Alter, E).
;; 107
%wijange:4, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoHsisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), not(equal(F, Ego)), daughter(Alter, F).
;; 108
%wijange:4, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoHsisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), not(equal(F, Ego)), daughter(Alter, F).
;; 109
%wijange:4, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(Alter, G).
;; 110
%wijange:4, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), daughter(Alter, I).
;; 111
%wijange:4, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), daughter(Alter, I).
;; 112
%wijange:4, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoFaMoBroDaSoDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, Ego)), daughter(Alter, J).
;; 113
%wijange:4, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), daughter(Alter, F).
;; 114
%wijange:4, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(Alter, H).
;; 115
%wijange:4, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(Alter, H).
;; 116
%wijange:4, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaSoDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), daughter(Alter, I).
;; 117
%wijange:4, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(Alter, G).
;; 118
%wijange:4, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroSoSoDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), daughter(Alter, I).
;; 119
%wijange:4, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisSoSoDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), daughter(Alter, I).
;; 120
%wijange:4, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaSoSoDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, Ego)), daughter(Alter, J).
;; 121
%wijange:4, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HsisDa}  
 female(Ego), mother(A, Ego), father(B, Ego), wife(C, B), daughter(D, C), daughter(D, B), not(equal(C, A)), daughter(Alter, D).
;; 122
%wijange:4, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {HsisDa}  
 female(Ego), mother(A, Ego), father(B, Ego), husband(C, A), daughter(D, C), daughter(D, A), not(equal(C, B)), daughter(Alter, D).
;; 123
%wijange:4, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 124
%wijange:4, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 125
%wijange:4, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 126
%wijange:4, sister[eq]1:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 127
%wijange:4, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(Alter, D).
;; 128
%wijange:4, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 129
%wijange:4, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 130
%wijange:4, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 131
%wijange:4, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 132
%wijange:4, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 133
%wijange:4, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 134
%wijange:4, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 135
%wijange:5, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 136
%wijange:5, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(Alter, F).
;; 137
%wijange:5, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {WiMoMoBroDaDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), not(equal(I, A)), daughter(Alter, I).
;; 138
%wijange:5, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {WiMoHsisDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), daughter(Alter, G).
;; 139
%wijange:5, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {WiMoHsisDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), daughter(Alter, G).
;; 140
%wijange:5, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaBroDaDaDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H).
;; 141
%wijange:5, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(Alter, G).
;; 142
%wijange:5, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroSoDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H).
;; 143
%wijange:5, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {WiHsisDa}  
 wife(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(Alter, E).
;; 144
%wijange:5, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=5, S=2, Star=0,  {WiHsisDa}  
 wife(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(Alter, E).
;; 145
%wijange:5, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 146
%wijange:5, sister[eq]2:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaFaBroSoDaDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 147
%wijange:5, sister[eq]2:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoSisSoDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 148
%wijange:5, sister[eq]2:1, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaSisDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 149
%wijange:5, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), daughter(Alter, G).
;; 150
%wijange:5, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaMoHsisDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(H, G), not(equal(H, B)), daughter(Alter, H).
;; 151
%wijange:5, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaMoHsisDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(H, G), not(equal(H, B)), daughter(Alter, H).
;; 152
%wijange:5, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoBroDaDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(Alter, H).
;; 153
%wijange:5, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=6, S=2, Star=0,  {WiFaHsisDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(Alter, F).
;; 154
%wijange:5, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=6, S=2, Star=0,  {WiFaHsisDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(Alter, F).
;; 155
%wijange:5, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroDaDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G).
;; 156
%wijange:6, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 157
%wijange:6, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(Alter, F).
;; 158
%wijange:6, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {WiMoHsisDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), daughter(Alter, G).
;; 159
%wijange:6, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {WiMoHsisDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), daughter(Alter, G).
;; 160
%wijange:6, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaBroDaDaDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H).
;; 161
%wijange:6, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(Alter, G).
;; 162
%wijange:6, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroSoDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H).
;; 163
%wijange:6, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {WiHsisDa}  
 wife(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(Alter, E).
;; 164
%wijange:6, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=5, S=2, Star=0,  {WiHsisDa}  
 wife(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(Alter, E).
;; 165
%wijange:6, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 166
%wijange:6, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaFaBroSoDaDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 167
%wijange:6, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoSisSoDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 168
%wijange:6, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroDaDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 169
%wijange:6, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroSoDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 170
%wijange:6, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisSoDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 171
%wijange:6, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroDaSoDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 172
%wijange:6, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroSoDaDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 173
%wijange:6, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroSoSoDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 174
%wijange:6, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisSoSoDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 175
%wijange:7, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 176
%wijange:7, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 177
%wijange:7, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaFaBroSoSoDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(Alter, H).
;; 178
%wijange:7, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoSisSoSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(Alter, H).
;; 179
%wijange:7, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 180
%wijange:7, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoSisDaSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(H, G), daughter(Alter, H).
;; 181
%wijange:7, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {HuMoMoBroDaDaSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(I, H), daughter(Alter, I).
;; 182
%wijange:7, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuMoHsisSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), son(G, F), daughter(Alter, G).
;; 183
%wijange:7, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuMoHsisSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), son(G, F), daughter(Alter, G).
;; 184
%wijange:7, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoFaBroDaSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 185
%wijange:7, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroDaSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 186
%wijange:7, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroSoDaSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 187
%wijange:7, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 188
%wijange:7, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuMoFaMoSisDaSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), son(I, H), daughter(Alter, I).
;; 189
%wijange:7, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaHsisSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), son(H, G), daughter(Alter, H).
;; 190
%wijange:7, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaHsisSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), son(H, G), daughter(Alter, H).


wijince(Alter, Ego) :-  male(Ego), brother[eq](Alter, Ego), elder(Alter, Ego).
{"Bro_FaBroSo_FaFaBroSoSo_FaMoBroDaSoSo_FaMoSisSoSo_MoBroDaSo_MoBroSoDaSo_MoFaBroDaSo_MoFaBroSoDaSo_MoFaBroSoSoDaSo_MoFaFaBroDaSo_MoFaFaBroSoDaSo_MoFaHsisSo_MoFaMoBroDaDaSo_MoFaMoBroDaSoDaSo_MoFaMoBroSoDaDaSo_MoFaMoHsisDaSo_MoFaMoSisDaSo_MoFaMoSisSoDaSo_MoFaSisSo_MoHsisSo_MoMoBroDaDaSo_MoMoBroDaSoDaSo_MoMoBroDaSoSoDaSo_MoMoBroSoDaDaSo_MoMoFaBroDaDaSo_MoMoFaBroSoDaDaSo_MoMoHsisDaSo_MoMoMoSisSoDaDaSo_MoMoSisDaSo_MoMoSisSoDaSo_MoMoSisSoSoDaSo_MoSisSo"}
;; 0
%wijince:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%wijince:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D), elder(Alter, Ego).
;; 2
%wijince:0, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 3
%wijince:0, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 4
%wijince:0, brother[eq]:1, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G), elder(Alter, Ego).
;; 5
%wijince:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D), elder(Alter, Ego).
;; 6
%wijince:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F), elder(Alter, Ego).
;; 7
%wijince:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoHsisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), son(Alter, G), elder(Alter, Ego).
;; 8
%wijince:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoHsisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), son(Alter, G), elder(Alter, Ego).
;; 9
%wijince:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H), elder(Alter, Ego).
;; 10
%wijince:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(Alter, G), elder(Alter, Ego).
;; 11
%wijince:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(Alter, I), elder(Alter, Ego).
;; 12
%wijince:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(Alter, I), elder(Alter, Ego).
;; 13
%wijince:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H), elder(Alter, Ego).
;; 14
%wijince:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoHsisSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(Alter, E), elder(Alter, Ego).
;; 15
%wijince:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=6, S=1, Star=0,  {MoHsisSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(Alter, E), elder(Alter, Ego).
;; 16
%wijince:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 17
%wijince:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 18
%wijince:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 19
%wijince:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I), elder(Alter, Ego).
;; 20
%wijince:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E), elder(Alter, Ego).
;; 21
%wijince:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G), elder(Alter, Ego).
;; 22
%wijince:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G), elder(Alter, Ego).
;; 23
%wijince:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 24
%wijince:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 25
%wijince:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 26
%wijince:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 27
%wijince:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaSoSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(I, H), son(Alter, I), elder(Alter, Ego).
;; 28
%wijince:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E), elder(Alter, Ego).
;; 29
%wijince:0, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(Alter, G), elder(Alter, Ego).
;; 30
%wijince:0, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoHsisDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(H, G), not(equal(H, B)), son(Alter, H), elder(Alter, Ego).
;; 31
%wijince:0, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoHsisDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(H, G), not(equal(H, B)), son(Alter, H), elder(Alter, Ego).
;; 32
%wijince:0, brother[eq]:3, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H), elder(Alter, Ego).
;; 33
%wijince:0, brother[eq]:3, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, B)), son(Alter, I), elder(Alter, Ego).
;; 34
%wijince:0, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaHsisSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), son(Alter, F), elder(Alter, Ego).
;; 35
%wijince:0, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaHsisSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), son(Alter, F), elder(Alter, Ego).
;; 36
%wijince:0, brother[eq]:3, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G), elder(Alter, Ego).


wijinge(Alter, Ego) :-  son(Alter, Ego).
                    |   male(Ego), brother[eq](A, Ego), son(Alter, A).
                    |   female(Ego), sister[eq]2(A, Ego), son(Alter, A).
                    |   female(Ego), mother(A, Ego), sister[eq]2(B, A), daughter(C, B), son(Alter, C).
                    |   female(Ego), brother(A, Ego), daughter(B, A), son(Alter, B).
                    |   wife(A, Ego), sister[eq]2(B, A), son(Alter, B).
                    |   wife(A, Ego), sister[eq]1(B, A), son(Alter, B).
                    |   husband(A, Ego), brother[eq](B, A), son(Alter, B).
{"BroDaSo_BroSo_FaBroDaSo_FaBroSoSo_FaFaBroDaSo_FaFaBroSoDaSo_FaFaBroSoSoSo_FaFaFaBroSoDaSo_FaFaMoBroDaSoDaSo_FaFaMoSisSoDaSo_FaHsisSo_FaMoBroDaDaSo_FaMoBroDaSoDaSo_FaMoBroDaSoSoSo_FaMoBroSoDaDaSo_FaMoFaBroDaDaSo_FaMoFaBroSoDaDaSo_FaMoFaBroSoSoDaDaSo_FaMoHsisDaSo_FaMoMoBroDaDaDaSo_FaMoMoBroDaSoDaDaSo_FaMoMoSisSoDaDaSo_FaMoMoSisSoSoDaDaSo_FaMoSisDaSo_FaMoSisSoDaSo_FaMoSisSoSoSo_FaSisSo_HsisSo_HuBroSo_HuFaBroSoSo_HuFaFaBroSoSoSo_HuFaMoSisSoSoSo_HuMoBroDaSoSo_HuMoBroSoDaSoSo_HuMoFaBroDaSoSo_HuMoFaHsisSoSo_HuMoFaMoSisDaSoSo_HuMoFaSisSoSo_HuMoHsisSoSo_HuMoMoBroDaDaSoSo_HuMoMoSisDaSoSo_HuMoSisSoSo_MoBroDaDaSo_MoBroDaSoSo_MoBroSoDaDaSo_MoBroSoDaSoSo_MoFaBroDaDaSo_MoFaBroDaSoSo_MoFaBroSoDaDaSo_MoFaBroSoDaSoSo_MoFaBroSoSoDaDaSo_MoFaBroSoSoDaSoSo_MoFaFaBroDaDaSo_MoFaFaBroDaSoSo_MoFaFaBroSoDaDaSo_MoFaFaBroSoDaSoSo_MoFaHsisDaSo_MoFaHsisSoSo_MoFaMoBroDaDaDaSo_MoFaMoBroDaDaSoSo_MoFaMoBroDaSoDaDaSo_MoFaMoBroDaSoDaSoSo_MoFaMoBroSoDaDaDaSo_MoFaMoBroSoDaDaSoSo_MoFaMoHsisDaDaSo_MoFaMoHsisDaSoSo_MoFaMoSisDaDaSo_MoFaMoSisDaSoSo_MoFaMoSisSoDaDaSo_MoFaMoSisSoDaSoSo_MoFaSisDaSo_MoFaSisSoSo_MoHsisDaSo_MoHsisSoSo_MoMoBroDaDaDaSo_MoMoBroDaDaSoSo_MoMoBroDaSoDaDaSo_MoMoBroDaSoDaSoSo_MoMoBroDaSoSoDaDaSo_MoMoBroDaSoSoDaSoSo_MoMoBroSoDaDaDaSo_MoMoBroSoDaDaSoSo_MoMoFaBroDaDaDaSo_MoMoFaBroDaDaSoSo_MoMoFaBroSoDaDaDaSo_MoMoFaBroSoDaDaSoSo_MoMoHsisDaDaSo_MoMoHsisDaSoSo_MoMoMoSisSoDaDaDaSo_MoMoMoSisSoDaDaSoSo_MoMoSisDaDaSo_MoMoSisDaSoSo_MoMoSisSoDaDaSo_MoMoSisSoDaSoSo_MoMoSisSoSoDaDaSo_MoMoSisSoSoDaSoSo_MoSisDaSo_MoSisSoSo_SisSo_So_WiBroDaSo_WiBroSoDaSo_WiFaBroDaSo_WiFaBroSoDaSo_WiFaBroSoSoDaSo_WiFaFaBroDaSo_WiFaFaBroSoDaSo_WiFaHsisSo_WiFaMoBroDaDaSo_WiFaMoHsisDaSo_WiFaMoSisDaSo_WiFaMoSisSoDaSo_WiFaSisSo_WiHsisSo_WiMoBroDaDaSo_WiMoBroDaSoDaSo_WiMoBroSoDaDaSo_WiMoFaBroDaDaSo_WiMoHsisDaSo_WiMoMoBroDaDaDaSo_WiMoSisDaSo_WiMoSisSoDaSo_WiMoSisSoSoDaSo_WiSisSo"}
;; 0
%wijinge:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 1
%wijinge:1, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 2
%wijinge:1, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 3
%wijinge:1, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 4
%wijinge:1, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 5
%wijinge:1, brother[eq]:1, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 6
%wijinge:1, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 7
%wijinge:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), son(Alter, G).
;; 8
%wijinge:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoHsisDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), son(H, G), son(Alter, H).
;; 9
%wijinge:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoHsisDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), son(H, G), son(Alter, H).
;; 10
%wijinge:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(Alter, I).
;; 11
%wijinge:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), son(Alter, H).
;; 12
%wijinge:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoFaBroSoDaDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(J, I), son(Alter, J).
;; 13
%wijinge:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoMoSisSoDaDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(J, I), son(Alter, J).
;; 14
%wijinge:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroSoDaDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(Alter, I).
;; 15
%wijinge:1, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoHsisSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), son(Alter, F).
;; 16
%wijinge:1, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoHsisSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), son(Alter, F).
;; 17
%wijinge:1, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 18
%wijinge:1, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 19
%wijinge:1, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 20
%wijinge:1, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoFaMoBroDaSoDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), son(J, I), son(Alter, J).
;; 21
%wijinge:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 22
%wijinge:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 23
%wijinge:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 24
%wijinge:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaSoDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 25
%wijinge:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 26
%wijinge:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroSoSoDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 27
%wijinge:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisSoSoDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 28
%wijinge:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaSoSoDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(I, H), son(J, I), son(Alter, J).
;; 29
%wijinge:1, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 30
%wijinge:1, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(H, G), son(Alter, H).
;; 31
%wijinge:1, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoHsisDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(H, G), not(equal(H, B)), son(I, H), son(Alter, I).
;; 32
%wijinge:1, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoHsisDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(H, G), not(equal(H, B)), son(I, H), son(Alter, I).
;; 33
%wijinge:1, brother[eq]:3, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(I, H), son(Alter, I).
;; 34
%wijinge:1, brother[eq]:3, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoFaMoBroSoDaDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, B)), son(J, I), son(Alter, J).
;; 35
%wijinge:1, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaHsisSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), son(G, F), son(Alter, G).
;; 36
%wijinge:1, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaHsisSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), son(G, F), son(Alter, G).
;; 37
%wijinge:1, brother[eq]:3, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 38
%wijinge:2, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 39
%wijinge:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), son(Alter, E).
;; 40
%wijinge:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), son(Alter, H).
;; 41
%wijinge:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroSoDaDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), not(equal(I, Ego)), son(Alter, I).
;; 42
%wijinge:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoHsisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), not(equal(F, Ego)), son(Alter, F).
;; 43
%wijinge:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoHsisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), not(equal(F, Ego)), son(Alter, F).
;; 44
%wijinge:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(Alter, G).
;; 45
%wijinge:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), son(Alter, I).
;; 46
%wijinge:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), son(Alter, I).
;; 47
%wijinge:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoFaMoBroDaSoDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, Ego)), son(Alter, J).
;; 48
%wijinge:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), son(Alter, F).
;; 49
%wijinge:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(Alter, H).
;; 50
%wijinge:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(Alter, H).
;; 51
%wijinge:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaSoDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), son(Alter, I).
;; 52
%wijinge:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(Alter, G).
;; 53
%wijinge:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroSoSoDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), son(Alter, I).
;; 54
%wijinge:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisSoSoDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), son(Alter, I).
;; 55
%wijinge:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaSoSoDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, Ego)), son(Alter, J).
;; 56
%wijinge:2, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HsisSo}  
 female(Ego), mother(A, Ego), father(B, Ego), wife(C, B), daughter(D, C), daughter(D, B), not(equal(C, A)), son(Alter, D).
;; 57
%wijinge:2, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {HsisSo}  
 female(Ego), mother(A, Ego), father(B, Ego), husband(C, A), daughter(D, C), daughter(D, A), not(equal(C, B)), son(Alter, D).
;; 58
%wijinge:2, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 59
%wijinge:2, sister[eq]2:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 60
%wijinge:2, sister[eq]2:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 61
%wijinge:2, sister[eq]2:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 62
%wijinge:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 63
%wijinge:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F).
;; 64
%wijinge:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), not(equal(I, A)), son(Alter, I).
;; 65
%wijinge:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoHsisDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 66
%wijinge:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoHsisDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 67
%wijinge:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 68
%wijinge:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 69
%wijinge:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(Alter, I).
;; 70
%wijinge:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(Alter, I).
;; 71
%wijinge:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoMoBroDaSoDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, A)), son(Alter, J).
;; 72
%wijinge:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 73
%wijinge:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoFaBroSoSoDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, A)), son(Alter, J).
;; 74
%wijinge:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoMoSisSoSoDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, A)), son(Alter, J).
;; 75
%wijinge:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaHsisSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(Alter, E).
;; 76
%wijinge:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=6, S=1, Star=0,  {FaHsisSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(Alter, E).
;; 77
%wijinge:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 78
%wijinge:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoDaSo}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 79
%wijinge:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 80
%wijinge:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaSoDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 81
%wijinge:3, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 82
%wijinge:3, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), son(Alter, G).
;; 83
%wijinge:3, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoHsisDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), daughter(H, G), son(Alter, H).
;; 84
%wijinge:3, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoHsisDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), daughter(H, G), son(Alter, H).
;; 85
%wijinge:3, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(Alter, I).
;; 86
%wijinge:3, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), son(Alter, H).
;; 87
%wijinge:3, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoFaBroSoDaDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), daughter(J, I), son(Alter, J).
;; 88
%wijinge:3, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoMoSisSoDaDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), daughter(J, I), son(Alter, J).
;; 89
%wijinge:3, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroSoDaDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(Alter, I).
;; 90
%wijinge:3, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoHsisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), son(Alter, F).
;; 91
%wijinge:3, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoHsisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), son(Alter, F).
;; 92
%wijinge:3, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 93
%wijinge:3, sister[eq]2:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 94
%wijinge:3, sister[eq]2:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 95
%wijinge:3, sister[eq]2:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoFaMoBroDaSoDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(J, I), son(Alter, J).
;; 96
%wijinge:3, sister[eq]2:1, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 97
%wijinge:3, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), daughter(H, G), son(Alter, H).
;; 98
%wijinge:3, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoHsisDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(H, G), not(equal(H, B)), daughter(I, H), son(Alter, I).
;; 99
%wijinge:3, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoHsisDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(H, G), not(equal(H, B)), daughter(I, H), son(Alter, I).
;; 100
%wijinge:3, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), son(Alter, I).
;; 101
%wijinge:3, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoFaMoBroSoDaDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, B)), daughter(J, I), son(Alter, J).
;; 102
%wijinge:3, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaHsisDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), son(Alter, G).
;; 103
%wijinge:3, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaHsisDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), son(Alter, G).
;; 104
%wijinge:3, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 105
%wijinge:4, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(Alter, D).
;; 106
%wijinge:5, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 107
%wijinge:5, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F).
;; 108
%wijinge:5, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {WiMoMoBroDaDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), not(equal(I, A)), son(Alter, I).
;; 109
%wijinge:5, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {WiMoHsisDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 110
%wijinge:5, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {WiMoHsisDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 111
%wijinge:5, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaBroDaDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 112
%wijinge:5, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 113
%wijinge:5, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroSoDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 114
%wijinge:5, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {WiHsisSo}  
 wife(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(Alter, E).
;; 115
%wijinge:5, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=5, S=2, Star=0,  {WiHsisSo}  
 wife(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(Alter, E).
;; 116
%wijinge:5, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 117
%wijinge:5, sister[eq]2:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaFaBroSoDaSo}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 118
%wijinge:5, sister[eq]2:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoSisSoDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 119
%wijinge:5, sister[eq]2:1, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaSisSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 120
%wijinge:5, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(Alter, G).
;; 121
%wijinge:5, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaMoHsisDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 122
%wijinge:5, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaMoHsisDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 123
%wijinge:5, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoBroDaDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 124
%wijinge:5, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=6, S=2, Star=0,  {WiFaHsisSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), son(Alter, F).
;; 125
%wijinge:5, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=6, S=2, Star=0,  {WiFaHsisSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), son(Alter, F).
;; 126
%wijinge:5, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroDaSo}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 127
%wijinge:6, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 128
%wijinge:6, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F).
;; 129
%wijinge:6, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {WiMoHsisDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 130
%wijinge:6, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {WiMoHsisDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 131
%wijinge:6, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaBroDaDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 132
%wijinge:6, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 133
%wijinge:6, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroSoDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 134
%wijinge:6, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {WiHsisSo}  
 wife(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(Alter, E).
;; 135
%wijinge:6, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=5, S=2, Star=0,  {WiHsisSo}  
 wife(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(Alter, E).
;; 136
%wijinge:6, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 137
%wijinge:6, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaFaBroSoDaSo}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 138
%wijinge:6, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoSisSoDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 139
%wijinge:6, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroDaSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 140
%wijinge:6, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroSoDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 141
%wijinge:6, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisSoDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 142
%wijinge:6, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroDaSoDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 143
%wijinge:6, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroSoDaSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 144
%wijinge:6, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroSoSoDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 145
%wijinge:6, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisSoSoDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 146
%wijinge:7, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 147
%wijinge:7, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 148
%wijinge:7, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaFaBroSoSoSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 149
%wijinge:7, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoSisSoSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 150
%wijinge:7, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 151
%wijinge:7, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoSisDaSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(H, G), son(Alter, H).
;; 152
%wijinge:7, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {HuMoMoBroDaDaSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(I, H), son(Alter, I).
;; 153
%wijinge:7, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuMoHsisSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), son(G, F), son(Alter, G).
;; 154
%wijinge:7, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuMoHsisSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), son(G, F), son(Alter, G).
;; 155
%wijinge:7, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoFaBroDaSoSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 156
%wijinge:7, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroDaSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 157
%wijinge:7, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroSoDaSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 158
%wijinge:7, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisSoSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 159
%wijinge:7, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuMoFaMoSisDaSoSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), son(I, H), son(Alter, I).
;; 160
%wijinge:7, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaHsisSoSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), son(H, G), son(Alter, H).
;; 161
%wijinge:7, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaHsisSoSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), son(H, G), son(Alter, H).


wika(Alter, Ego) :-  gen_up[aux]37(A, Ego), mother(Alter, A).
                 |   father(A, Ego), gen_up[aux]37(B, A), generation[aux]37(Alter, B), female(Alter).
                 |   mother(A, Ego), father(B, A), parents(C, B), generation[aux]37smallGS(D, C), daughter(Alter, D).
                 |   mother(A, Ego), mother(B, A), generation[aux]37(Alter, B), female(Alter).
                 |   father(A, Ego), mother(B, A), brother[eq]1(C, B), daughter(Alter, C).
                 |   mother(A, Ego), mother(B, A), brother[eq]1(C, B), daughter(Alter, C).
                 |   father(A, Ego), mother(B, A), brother(C, B), wife(Alter, C).
                 |   mother(A, Ego), mother(B, A), sister[eq]1(Alter, B).
                 |   spice(A, Ego), mother(Alter, A).
                 |   spice(A, Ego), gen_up[aux]37(B, A), mother(Alter, B).
                 |   spice(A, Ego), mother(B, A), sister[eq]1(Alter, B).
                 |   spice(A, Ego), father(B, A), brother(C, B), wife(Alter, C).
                 |   husband(A, Ego), father(B, A), sister(Alter, B).
                 |   wife(A, Ego), mother(B, A), brother(C, B), wife(Alter, C).
                 |   son(A, Ego), wife(B, A), mother(Alter, B).
{"FaFaFaBroDa_FaFaFaFaBroDa_FaFaFaFaSisDa_FaFaFaMoBroDa_FaFaFaMoSisDa_FaFaFaSis_FaFaFaSisDa_FaFaMo_FaFaMoBroDa_FaFaMoFaBroDa_FaFaMoFaSisDa_FaFaMoMoBroDa_FaFaMoMoSisDa_FaFaMoSis_FaFaMoSisDa_FaFaSis_FaMo_FaMoBroDa_FaMoBroSoDa_FaMoBroSoSoDa_FaMoBroWi_FaMoFaBroDa_FaMoFaBroSoDa_FaMoFaBroSoSoDa_FaMoFaFaBroDa_FaMoFaFaSisDa_FaMoFaMoBroDa_FaMoFaMoSisDa_FaMoFaSis_FaMoFaSisDa_FaMoMo_FaMoMoBroDa_FaMoMoBroDaSoDa_FaMoMoFaBroDa_FaMoMoFaHsisSoDa_FaMoMoFaSisDa_FaMoMoFaSisSoDa_FaMoMoHsisSoDa_FaMoMoMoBroDa_FaMoMoMoSisDa_FaMoMoMoSisDaSoDa_FaMoMoSis_FaMoMoSisDa_FaMoMoSisSoDa_FaMoMoSisSoSoDa_FaMoSis_HuFaBroWi_HuFaFaMo_HuFaMo_HuFaMoMo_HuFaSis_HuMo_HuMoBroDa_HuMoBroSoDa_HuMoFaBroDa_HuMoFaBroSoDa_HuMoFaBroSoSoDa_HuMoFaFaBroSoDa_HuMoFaMo_HuMoFaMoSisSoDa_HuMoHsis_HuMoMo_HuMoMoBroDaDa_HuMoMoBroDaSoDa_HuMoMoHsisDa_HuMoMoMo_HuMoMoSisDa_HuMoMoSisSoDa_HuMoMoSisSoSoDa_HuMoSis_MoFaFaBroDa_MoFaFaFaBroDaDa_MoFaFaFaBroSoDa_MoFaFaFaSisDaDa_MoFaFaFaSisSoDa_MoFaFaMoBroDaDa_MoFaFaMoBroSoDa_MoFaFaMoSisDaDa_MoFaFaMoSisSoDa_MoFaFaSisDa_MoFaMo_MoFaMoBroDa_MoFaMoFaBroDaDa_MoFaMoFaBroSoDa_MoFaMoFaSisDaDa_MoFaMoFaSisSoDa_MoFaMoMoBroDaDa_MoFaMoMoBroSoDa_MoFaMoMoSisDaDa_MoFaMoMoSisSoDa_MoFaMoSisDa_MoMo_MoMoBroDa_MoMoBroSoDa_MoMoBroSoSoDa_MoMoFaBroDa_MoMoFaBroSoDa_MoMoFaBroSoSoDa_MoMoFaFaBroSoDa_MoMoFaMoSisSoDa_MoMoFaSisDa_MoMoHsis_MoMoMo_MoMoMoBroDa_MoMoMoBroDaDa_MoMoMoBroDaSoDa_MoMoMoFaHsisSoDa_MoMoMoFaSisSoDa_MoMoMoHsisDa_MoMoMoHsisSoDa_MoMoMoMoSisDaSoDa_MoMoMoSisDa_MoMoMoSisSoDa_MoMoMoSisSoSoDa_MoMoSis_SoWiMo_WiFaBroWi_WiFaFaMo_WiFaMo_WiFaMoMo_WiMo_WiMoBroDa_WiMoBroSoDa_WiMoBroWi_WiMoFaBroDa_WiMoFaBroSoDa_WiMoFaBroSoSoDa_WiMoFaFaBroSoDa_WiMoFaMo_WiMoFaMoSisSoDa_WiMoHsis_WiMoMo_WiMoMoBroDaDa_WiMoMoBroDaSoDa_WiMoMoHsisDa_WiMoMoMo_WiMoMoSisDa_WiMoMoSisSoDa_WiMoMoSisSoSoDa_WiMoSis"}
;; 0
%wika:0, gen_up[aux]37:0%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).
;; 1
%wika:0, gen_up[aux]37:1%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 2
%wika:0, gen_up[aux]37:2, gen_up[aux]37:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
 father(A, Ego), father(B, A), mother(Alter, B).
;; 3
%wika:0, gen_up[aux]37:2, gen_up[aux]37:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
 mother(A, Ego), father(B, A), mother(Alter, B).
;; 4
%wika:0, gen_up[aux]37:3, gen_up[aux]37:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
 father(A, Ego), mother(B, A), mother(Alter, B).
;; 5
%wika:0, gen_up[aux]37:3, gen_up[aux]37:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
 mother(A, Ego), mother(B, A), mother(Alter, B).
;; 6
%wika:1, gen_up[aux]37:0, generation[aux]37:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 7
%wika:1, gen_up[aux]37:0, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 8
%wika:1, gen_up[aux]37:0, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 9
%wika:1, gen_up[aux]37:0, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 10
%wika:1, gen_up[aux]37:0, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 11
%wika:1, gen_up[aux]37:1, generation[aux]37:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 12
%wika:1, gen_up[aux]37:1, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 13
%wika:1, gen_up[aux]37:1, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 14
%wika:1, gen_up[aux]37:1, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 15
%wika:1, gen_up[aux]37:1, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 16
%wika:1, gen_up[aux]37:2, gen_up[aux]37:0, generation[aux]37:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaSis}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 17
%wika:1, gen_up[aux]37:2, gen_up[aux]37:0, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoBroDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 18
%wika:1, gen_up[aux]37:2, gen_up[aux]37:0, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoSisDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 19
%wika:1, gen_up[aux]37:2, gen_up[aux]37:0, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaBroDa}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 20
%wika:1, gen_up[aux]37:2, gen_up[aux]37:0, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaSisDa}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 21
%wika:1, gen_up[aux]37:2, gen_up[aux]37:1, generation[aux]37:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaSis}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 22
%wika:1, gen_up[aux]37:2, gen_up[aux]37:1, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoBroDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 23
%wika:1, gen_up[aux]37:2, gen_up[aux]37:1, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoSisDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 24
%wika:1, gen_up[aux]37:2, gen_up[aux]37:1, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaBroDa}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 25
%wika:1, gen_up[aux]37:2, gen_up[aux]37:1, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaSisDa}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 26
%wika:1, gen_up[aux]37:3, gen_up[aux]37:0, generation[aux]37:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoSis}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 27
%wika:1, gen_up[aux]37:3, gen_up[aux]37:0, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoBroDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 28
%wika:1, gen_up[aux]37:3, gen_up[aux]37:0, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoSisDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 29
%wika:1, gen_up[aux]37:3, gen_up[aux]37:0, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaBroDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 30
%wika:1, gen_up[aux]37:3, gen_up[aux]37:0, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaSisDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 31
%wika:1, gen_up[aux]37:3, gen_up[aux]37:1, generation[aux]37:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 32
%wika:1, gen_up[aux]37:3, gen_up[aux]37:1, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoBroDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 33
%wika:1, gen_up[aux]37:3, gen_up[aux]37:1, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 34
%wika:1, gen_up[aux]37:3, gen_up[aux]37:1, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaBroDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 35
%wika:1, gen_up[aux]37:3, gen_up[aux]37:1, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 36
%wika:2, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 37
%wika:2, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 38
%wika:2, parents:0, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoMoBroSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 39
%wika:2, parents:0, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoMoBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 40
%wika:2, parents:0, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoMoSisSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 41
%wika:2, parents:0, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoMoSisDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 42
%wika:2, parents:0, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoFaBroSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 43
%wika:2, parents:0, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoFaBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 44
%wika:2, parents:0, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoFaSisSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 45
%wika:2, parents:0, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoFaSisDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 46
%wika:2, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 47
%wika:2, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 48
%wika:2, parents:1, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaMoBroSoDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 49
%wika:2, parents:1, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaMoBroDaDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 50
%wika:2, parents:1, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaMoSisSoDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 51
%wika:2, parents:1, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaMoSisDaDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 52
%wika:2, parents:1, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaFaBroSoDa}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 53
%wika:2, parents:1, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaFaBroDaDa}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 54
%wika:2, parents:1, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaFaSisSoDa}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 55
%wika:2, parents:1, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaFaSisDaDa}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 56
%wika:3, generation[aux]37:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 57
%wika:3, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 58
%wika:3, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 59
%wika:3, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 60
%wika:3, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 61
%wika:4, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 62
%wika:4, brother[eq]1:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 63
%wika:4, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 64
%wika:4, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoMoMoSisDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), son(I, H), daughter(Alter, I).
;; 65
%wika:4, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoHsisSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), son(H, G), daughter(Alter, H).
;; 66
%wika:4, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoHsisSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), son(H, G), daughter(Alter, H).
;; 67
%wika:4, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 68
%wika:4, brother[eq]1:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoFaSisSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 69
%wika:4, brother[eq]1:0, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=2,  PC=10, S=1, Star=0,  {FaMoMoFaHsisSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), wife(G, F), daughter(H, G), daughter(H, F), not(equal(G, E)), son(I, H), daughter(Alter, I).
;; 70
%wika:4, brother[eq]1:0, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=2,  PC=10, S=1, Star=0,  {FaMoMoFaHsisSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), husband(G, E), daughter(H, G), daughter(H, E), not(equal(G, F)), son(I, H), daughter(Alter, I).
;; 71
%wika:4, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 72
%wika:4, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(Alter, H).
;; 73
%wika:4, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(Alter, H).
;; 74
%wika:4, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 75
%wika:5, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 76
%wika:5, brother[eq]1:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 77
%wika:5, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 78
%wika:5, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoMoMoMoSisDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), son(I, H), daughter(Alter, I).
;; 79
%wika:5, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoHsisSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), son(H, G), daughter(Alter, H).
;; 80
%wika:5, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoHsisSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), son(H, G), daughter(Alter, H).
;; 81
%wika:5, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 82
%wika:5, brother[eq]1:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoFaSisSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 83
%wika:5, brother[eq]1:0, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=2,  PC=10, S=1, Star=0,  {MoMoMoFaHsisSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), wife(G, F), daughter(H, G), daughter(H, F), not(equal(G, E)), son(I, H), daughter(Alter, I).
;; 84
%wika:5, brother[eq]1:0, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=2,  PC=10, S=1, Star=0,  {MoMoMoFaHsisSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), husband(G, E), daughter(H, G), daughter(H, E), not(equal(G, F)), son(I, H), daughter(Alter, I).
;; 85
%wika:5, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 86
%wika:5, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(Alter, H).
;; 87
%wika:5, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(Alter, H).
;; 88
%wika:5, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 89
%wika:6, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {FaMoBroWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 90
%wika:7, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 91
%wika:7, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F), not(equal(Alter, B)).
;; 92
%wika:7, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=2,  PC=8, S=1, Star=0,  {MoMoMoHsisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(Alter, G), not(equal(Alter, B)).
;; 93
%wika:7, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=2,  PC=8, S=1, Star=0,  {MoMoMoHsisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(Alter, G), not(equal(Alter, B)).
;; 94
%wika:7, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, B)).
;; 95
%wika:7, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoMoHsis}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(Alter, E), daughter(Alter, D), not(equal(E, C)).
;; 96
%wika:7, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=2,  PC=6, S=1, Star=0,  {MoMoHsis}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(Alter, E), daughter(Alter, C), not(equal(E, D)).
;; 97
%wika:7, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 98
%wika:7, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaFaBroSoDa}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 99
%wika:7, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaMoSisSoDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 100
%wika:7, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 101
%wika:7, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 102
%wika:7, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 103
%wika:7, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 104
%wika:7, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 105
%wika:7, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(Alter, H).
;; 106
%wika:7, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(Alter, H).
;; 107
%wika:8, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 108
%wika:8, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).
;; 109
%wika:9, spice:0, gen_up[aux]37:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaMo}  
 husband(A, Ego), father(B, A), mother(Alter, B).
;; 110
%wika:9, spice:0, gen_up[aux]37:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoMo}  
 husband(A, Ego), mother(B, A), mother(Alter, B).
;; 111
%wika:9, spice:0, gen_up[aux]37:2, gen_up[aux]37:0%
 Lvl=3,  PC=3, S=1, Star=0,  {HuFaFaMo}  
 husband(A, Ego), father(B, A), father(C, B), mother(Alter, C).
;; 112
%wika:9, spice:0, gen_up[aux]37:2, gen_up[aux]37:1%
 Lvl=3,  PC=3, S=1, Star=0,  {HuMoFaMo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(Alter, C).
;; 113
%wika:9, spice:0, gen_up[aux]37:3, gen_up[aux]37:0%
 Lvl=3,  PC=3, S=1, Star=0,  {HuFaMoMo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(Alter, C).
;; 114
%wika:9, spice:0, gen_up[aux]37:3, gen_up[aux]37:1%
 Lvl=3,  PC=3, S=1, Star=0,  {HuMoMoMo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(Alter, C).
;; 115
%wika:9, spice:1, gen_up[aux]37:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaMo}  
 wife(A, Ego), father(B, A), mother(Alter, B).
;; 116
%wika:9, spice:1, gen_up[aux]37:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoMo}  
 wife(A, Ego), mother(B, A), mother(Alter, B).
;; 117
%wika:9, spice:1, gen_up[aux]37:2, gen_up[aux]37:0%
 Lvl=3,  PC=3, S=1, Star=0,  {WiFaFaMo}  
 wife(A, Ego), father(B, A), father(C, B), mother(Alter, C).
;; 118
%wika:9, spice:1, gen_up[aux]37:2, gen_up[aux]37:1%
 Lvl=3,  PC=3, S=1, Star=0,  {WiMoFaMo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(Alter, C).
;; 119
%wika:9, spice:1, gen_up[aux]37:3, gen_up[aux]37:0%
 Lvl=3,  PC=3, S=1, Star=0,  {WiFaMoMo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(Alter, C).
;; 120
%wika:9, spice:1, gen_up[aux]37:3, gen_up[aux]37:1%
 Lvl=3,  PC=3, S=1, Star=0,  {WiMoMoMo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(Alter, C).
;; 121
%wika:10, spice:0, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoSis}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 122
%wika:10, spice:0, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoMoSisDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F), not(equal(Alter, B)).
;; 123
%wika:10, spice:0, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=7, S=2, Star=0,  {HuMoMoHsisDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(Alter, G), not(equal(Alter, B)).
;; 124
%wika:10, spice:0, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=7, S=2, Star=0,  {HuMoMoHsisDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(Alter, G), not(equal(Alter, B)).
;; 125
%wika:10, spice:0, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, B)).
;; 126
%wika:10, spice:0, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=5, S=2, Star=0,  {HuMoHsis}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(Alter, E), daughter(Alter, D), not(equal(E, C)).
;; 127
%wika:10, spice:0, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=5, S=2, Star=0,  {HuMoHsis}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(Alter, E), daughter(Alter, C), not(equal(E, D)).
;; 128
%wika:10, spice:0, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoFaBroDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 129
%wika:10, spice:0, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuMoFaFaBroSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 130
%wika:10, spice:0, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuMoFaMoSisSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 131
%wika:10, spice:0, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 132
%wika:10, spice:0, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 133
%wika:10, spice:0, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 134
%wika:10, spice:0, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoBroDaSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 135
%wika:10, spice:0, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 136
%wika:10, spice:0, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoFaBroSoSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(Alter, H).
;; 137
%wika:10, spice:0, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoSisSoSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(Alter, H).
;; 138
%wika:10, spice:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoSis}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 139
%wika:10, spice:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoMoSisDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F), not(equal(Alter, B)).
;; 140
%wika:10, spice:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=7, S=2, Star=0,  {WiMoMoHsisDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(Alter, G), not(equal(Alter, B)).
;; 141
%wika:10, spice:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=7, S=2, Star=0,  {WiMoMoHsisDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(Alter, G), not(equal(Alter, B)).
;; 142
%wika:10, spice:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, B)).
;; 143
%wika:10, spice:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=5, S=2, Star=0,  {WiMoHsis}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(Alter, E), daughter(Alter, D), not(equal(E, C)).
;; 144
%wika:10, spice:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=5, S=2, Star=0,  {WiMoHsis}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(Alter, E), daughter(Alter, C), not(equal(E, D)).
;; 145
%wika:10, spice:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoFaBroDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 146
%wika:10, spice:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaFaBroSoDa}  
 wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 147
%wika:10, spice:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaMoSisSoDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 148
%wika:10, spice:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoBroDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 149
%wika:10, spice:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroSoDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 150
%wika:10, spice:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 151
%wika:10, spice:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoBroDaSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 152
%wika:10, spice:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 153
%wika:10, spice:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaBroSoSoDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(Alter, H).
;; 154
%wika:10, spice:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoSisSoSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(Alter, H).
;; 155
%wika:11, spice:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=2, Star=0,  {HuFaBroWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 156
%wika:11, spice:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=2, Star=0,  {WiFaBroWi}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 157
%wika:12, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuFaSis}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 158
%wika:13, brother:0, sibling:0%
 Lvl=1,  PC=5, S=2, Star=0,  {WiMoBroWi}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 159
%wika:14%
 Lvl=0,  PC=2, S=1, Star=0,  {SoWiMo}  
 son(A, Ego), wife(B, A), mother(Alter, B).


winegi(Alter, Ego) :-  mother(A, Ego), brother[eq]1(Alter, A).
{"MoBro_MoBroSo_MoBroSoSo_MoFaBroSo_MoFaBroSoSo_MoFaBroSoSoSo_MoFaFaBroSoSo_MoFaMoBroDaSoSo_MoFaMoSisSoSo_MoMoBroDaSo_MoMoBroDaSoSo_MoMoBroDaSoSoSo_MoMoBroSoDaSo_MoMoFaBroDaSo_MoMoFaBroSoDaSo_MoMoFaFaBroDaSo_MoMoFaHsisSo_MoMoFaMoSisDaSo_MoMoFaSisSo_MoMoHsisSo_MoMoMoBroDaDaSo_MoMoMoHsisDaSo_MoMoMoSisDaSo_MoMoMoSisSoDaSo_MoMoSisSo_MoMoSisSoSo_MoMoSisSoSoSo"}
;; 0
%winegi:0, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%winegi:0, brother[eq]1:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 2
%winegi:0, brother[eq]1:0, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 3
%winegi:0, brother[eq]1:0, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 4
%winegi:0, brother[eq]1:0, brother[eq]:1, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 5
%winegi:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 6
%winegi:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(Alter, G).
;; 7
%winegi:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoHsisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 8
%winegi:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoHsisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 9
%winegi:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 10
%winegi:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoHsisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), son(Alter, F).
;; 11
%winegi:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoHsisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), son(Alter, F).
;; 12
%winegi:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 13
%winegi:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 14
%winegi:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 15
%winegi:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 16
%winegi:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 17
%winegi:0, brother[eq]1:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 18
%winegi:0, brother[eq]1:0, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaMoSisDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), son(Alter, H).
;; 19
%winegi:0, brother[eq]1:0, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=2,  PC=8, S=1, Star=0,  {MoMoFaHsisSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), son(Alter, G).
;; 20
%winegi:0, brother[eq]1:0, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=2,  PC=8, S=1, Star=0,  {MoMoFaHsisSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), son(Alter, G).
;; 21
%winegi:0, brother[eq]1:0, brother[eq]:3, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaFaBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 22
%winegi:0, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 23
%winegi:0, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 24
%winegi:0, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 25
%winegi:0, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 26
%winegi:0, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 27
%winegi:0, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 28
%winegi:0, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 29
%winegi:0, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).


wisanga(Alter, Ego) :-  brother[eq](Alter, Ego), younger(Alter, Ego).
{"Bro_FaBroSo_FaFaBroSoSo_FaMoBroDaSoSo_FaMoSisSoSo_MoBroDaSo_MoBroSoDaSo_MoFaBroDaSo_MoFaBroSoDaSo_MoFaFaBroDaSo_MoFaHsisSo_MoFaMoBroDaDaSo_MoFaMoSisDaSo_MoFaSisSo_MoHsisSo_MoMoBroDaDaSo_MoMoBroSoDaDaSo_MoMoFaBroDaDaSo_MoMoHsisDaSo_MoMoSisDaSo_MoMoSisSoDaSo_MoSisSo"}
;; 0
%wisanga:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).
;; 1
%wisanga:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D), younger(Alter, Ego).
;; 2
%wisanga:0, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 3
%wisanga:0, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 4
%wisanga:0, brother[eq]:1, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G), younger(Alter, Ego).
;; 5
%wisanga:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D), younger(Alter, Ego).
;; 6
%wisanga:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F), younger(Alter, Ego).
;; 7
%wisanga:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoHsisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), son(Alter, G), younger(Alter, Ego).
;; 8
%wisanga:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoHsisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), son(Alter, G), younger(Alter, Ego).
;; 9
%wisanga:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H), younger(Alter, Ego).
;; 10
%wisanga:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(Alter, G), younger(Alter, Ego).
;; 11
%wisanga:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H), younger(Alter, Ego).
;; 12
%wisanga:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoHsisSo}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(Alter, E), younger(Alter, Ego).
;; 13
%wisanga:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=6, S=1, Star=0,  {MoHsisSo}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(Alter, E), younger(Alter, Ego).
;; 14
%wisanga:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 15
%wisanga:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E), younger(Alter, Ego).
;; 16
%wisanga:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G), younger(Alter, Ego).
;; 17
%wisanga:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G), younger(Alter, Ego).
;; 18
%wisanga:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 19
%wisanga:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E), younger(Alter, Ego).
;; 20
%wisanga:0, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(Alter, G), younger(Alter, Ego).
;; 21
%wisanga:0, brother[eq]:3, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H), younger(Alter, Ego).
;; 22
%wisanga:0, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaHsisSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), son(Alter, F), younger(Alter, Ego).
;; 23
%wisanga:0, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaHsisSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), son(Alter, F), younger(Alter, Ego).
;; 24
%wisanga:0, brother[eq]:3, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G), younger(Alter, Ego).


witaha(Alter, Ego) :-  wife(A, Ego), brother[eq]1(Alter, A).
{"WiBro_WiBroSo_WiBroSoSo_WiFaBroSo_WiFaBroSoSo_WiFaBroSoSoSo_WiFaFaBroSoSo_WiFaMoBroDaSoSo_WiFaMoSisSoSo_WiMoBroDaSo_WiMoBroDaSoSo_WiMoBroDaSoSoSo_WiMoBroSoDaSo_WiMoFaBroDaSo_WiMoFaBroSoDaSo_WiMoFaFaBroDaSo_WiMoFaHsisSo_WiMoFaMoSisDaSo_WiMoFaSisSo_WiMoHsisSo_WiMoMoBroDaDaSo_WiMoMoHsisDaSo_WiMoMoSisDaSo_WiMoMoSisSoDaSo_WiMoSisSo_WiMoSisSoSo_WiMoSisSoSoSo"}
;; 0
%witaha:0, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%witaha:0, brother[eq]1:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 2
%witaha:0, brother[eq]1:0, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroSoSo}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 3
%witaha:0, brother[eq]1:0, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 4
%witaha:0, brother[eq]1:0, brother[eq]:1, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoBroDaSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 5
%witaha:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 6
%witaha:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(Alter, G).
;; 7
%witaha:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoMoHsisDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 8
%witaha:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoMoHsisDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 9
%witaha:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoBroDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 10
%witaha:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=6, S=2, Star=0,  {WiMoHsisSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), son(Alter, F).
;; 11
%witaha:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=6, S=2, Star=0,  {WiMoHsisSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), son(Alter, F).
;; 12
%witaha:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 13
%witaha:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 14
%witaha:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaBroSoDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 15
%witaha:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoSisSoDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 16
%witaha:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroSoDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 17
%witaha:0, brother[eq]1:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoFaSisSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 18
%witaha:0, brother[eq]1:0, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaMoSisDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), son(Alter, H).
;; 19
%witaha:0, brother[eq]1:0, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=7, S=2, Star=0,  {WiMoFaHsisSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), son(Alter, G).
;; 20
%witaha:0, brother[eq]1:0, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=7, S=2, Star=0,  {WiMoFaHsisSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), son(Alter, G).
;; 21
%witaha:0, brother[eq]1:0, brother[eq]:3, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaFaBroDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 22
%witaha:0, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 23
%witaha:0, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 24
%witaha:0, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 25
%witaha:0, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroDaSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 26
%witaha:0, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroSoSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 27
%witaha:0, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroSoSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 28
%witaha:0, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisSoSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 29
%witaha:0, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroDaSoSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).


witancka(Alter, Ego) :-  male(Ego), sister[eq]2(A, Ego), son(Alter, A).
{"FaBroDaSo_FaFaBroDaSo_FaFaBroSoDaSo_FaFaFaBroSoDaSo_FaFaMoBroDaSoDaSo_FaFaMoSisSoDaSo_FaHsisSo_FaMoBroDaDaSo_FaMoBroDaSoDaSo_FaMoBroSoDaDaSo_FaMoFaBroDaDaSo_FaMoFaBroSoDaDaSo_FaMoFaBroSoSoDaDaSo_FaMoHsisDaSo_FaMoMoBroDaDaDaSo_FaMoMoBroDaSoDaDaSo_FaMoMoSisSoDaDaSo_FaMoMoSisSoSoDaDaSo_FaMoSisDaSo_FaMoSisSoDaSo_FaSisSo_HsisSo_MoBroDaDaSo_MoBroSoDaDaSo_MoFaBroDaDaSo_MoFaBroSoDaDaSo_MoFaBroSoSoDaDaSo_MoFaFaBroSoDaDaSo_MoFaMoBroDaSoDaDaSo_MoFaMoSisSoDaDaSo_MoHsisDaSo_MoMoBroDaDaDaSo_MoMoBroDaSoDaDaSo_MoMoBroDaSoSoDaDaSo_MoMoBroSoDaDaDaSo_MoMoSisSoDaDaSo_MoMoSisSoSoDaDaSo_MoSisDaSo_SisSo"}
;; 0
%witancka:0, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 1
%witancka:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), son(Alter, E).
;; 2
%witancka:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), son(Alter, H).
;; 3
%witancka:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroSoDaDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), not(equal(I, Ego)), son(Alter, I).
;; 4
%witancka:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoHsisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), not(equal(F, Ego)), son(Alter, F).
;; 5
%witancka:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoHsisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), not(equal(F, Ego)), son(Alter, F).
;; 6
%witancka:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(Alter, G).
;; 7
%witancka:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), son(Alter, I).
;; 8
%witancka:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), son(Alter, I).
;; 9
%witancka:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoFaMoBroDaSoDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, Ego)), son(Alter, J).
;; 10
%witancka:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), son(Alter, F).
;; 11
%witancka:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(Alter, H).
;; 12
%witancka:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(Alter, H).
;; 13
%witancka:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaSoDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), son(Alter, I).
;; 14
%witancka:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(Alter, G).
;; 15
%witancka:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroSoSoDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), son(Alter, I).
;; 16
%witancka:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisSoSoDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), son(Alter, I).
;; 17
%witancka:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaSoSoDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, Ego)), son(Alter, J).
;; 18
%witancka:0, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HsisSo}  
 male(Ego), mother(A, Ego), father(B, Ego), wife(C, B), daughter(D, C), daughter(D, B), not(equal(C, A)), son(Alter, D).
;; 19
%witancka:0, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {HsisSo}  
 male(Ego), mother(A, Ego), father(B, Ego), husband(C, A), daughter(D, C), daughter(D, A), not(equal(C, B)), son(Alter, D).
;; 20
%witancka:0, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 21
%witancka:0, sister[eq]2:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 22
%witancka:0, sister[eq]2:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 23
%witancka:0, sister[eq]2:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 24
%witancka:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 25
%witancka:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F).
;; 26
%witancka:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), not(equal(I, A)), son(Alter, I).
;; 27
%witancka:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoHsisDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 28
%witancka:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoHsisDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 29
%witancka:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 30
%witancka:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 31
%witancka:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(Alter, I).
;; 32
%witancka:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(Alter, I).
;; 33
%witancka:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoMoBroDaSoDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, A)), son(Alter, J).
;; 34
%witancka:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 35
%witancka:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoFaBroSoSoDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, A)), son(Alter, J).
;; 36
%witancka:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoMoSisSoSoDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, A)), son(Alter, J).
;; 37
%witancka:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaHsisSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(Alter, E).
;; 38
%witancka:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=6, S=1, Star=0,  {FaHsisSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(Alter, E).
;; 39
%witancka:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 40
%witancka:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 41
%witancka:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 42
%witancka:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).


witande(Alter, Ego) :-  daughter(A, Ego), husband(Alter, A).
                    |   children(A, Ego), daughter(B, A), husband(Alter, B).
                    |   daughter(A, Ego), husband(B, A), brother(Alter, B).
                    |   daughter(A, Ego), husband(B, A), father(Alter, B).
                    |   daughter(A, Ego), husband(B, A), father(C, B), father(Alter, C).
                    |   husband(A, Ego), sister(B, A), daughter(C, B), husband(Alter, C).
                    |   husband(A, Ego), father(B, A), sister(C, B), daughter(D, C), husband(Alter, D).
{"DaDaHu_DaHu_DaHuBro_DaHuFa_DaHuFaFa_HuFaSisDaHu_HuSisDaHu_SoDaHu"}
;; 0
%witande:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 daughter(A, Ego), husband(Alter, A).
;; 1
%witande:1, children:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {SoDaHu}  
 son(A, Ego), daughter(B, A), husband(Alter, B).
;; 2
%witande:1, children:1%
 Lvl=-2,  PC=2, S=1, Star=0,  {DaDaHu}  
 daughter(A, Ego), daughter(B, A), husband(Alter, B).
;; 3
%witande:2, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {DaHuBro}  
 daughter(A, Ego), husband(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 4
%witande:3%
 Lvl=0,  PC=2, S=1, Star=0,  {DaHuFa}  
 daughter(A, Ego), husband(B, A), father(Alter, B).
;; 5
%witande:4%
 Lvl=1,  PC=3, S=1, Star=0,  {DaHuFaFa}  
 daughter(A, Ego), husband(B, A), father(C, B), father(Alter, C).
;; 6
%witande:5, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {HuSisDaHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E).
;; 7
%witande:6, sister:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaSisDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), husband(Alter, F).


witange(Alter, Ego) :-  male(Ego), sister[eq](Alter, Ego).
                    |   female(Ego), sister[eq](Alter, Ego), younger(Alter, Ego).
                    |   female(Ego), mother(A, Ego), sister[eq]2(B, A), daughter(Alter, B), younger(Alter, Ego).
{"FaBroDa_FaFaBroSoDa_FaMoBroDaSoDa_FaMoSisSoDa_Hsis_MoBroDaDa_MoBroSoDaDa_MoFaBroDaDa_MoFaBroSoDaDa_MoFaBroSoSoDaDa_MoFaFaBroDaDa_MoFaFaBroSoDaDa_MoFaHsisDa_MoFaMoBroDaDaDa_MoFaMoBroDaSoDaDa_MoFaMoBroSoDaDaDa_MoFaMoHsisDaDa_MoFaMoSisDaDa_MoFaMoSisSoDaDa_MoFaSisDa_MoHsisDa_MoMoBroDaDaDa_MoMoBroDaSoDaDa_MoMoBroDaSoSoDaDa_MoMoBroSoDaDaDa_MoMoFaBroDaDaDa_MoMoFaBroSoDaDaDa_MoMoHsisDaDa_MoMoMoSisSoDaDaDa_MoMoSisDaDa_MoMoSisSoDaDa_MoMoSisSoSoDaDa_MoSisDa_Sis"}
;; 0
%witange:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%witange:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), not(equal(Alter, Ego)).
;; 2
%witange:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(Alter, G), not(equal(Alter, Ego)).
;; 3
%witange:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), daughter(Alter, I), not(equal(Alter, Ego)).
;; 4
%witange:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), daughter(Alter, I), not(equal(Alter, Ego)).
;; 5
%witange:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H), not(equal(Alter, Ego)).
;; 6
%witange:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoHsisDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(Alter, E), not(equal(Alter, Ego)).
;; 7
%witange:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=6, S=1, Star=0,  {MoHsisDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(Alter, E), not(equal(Alter, Ego)).
;; 8
%witange:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 9
%witange:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H), not(equal(Alter, Ego)).
;; 10
%witange:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(Alter, H), not(equal(Alter, Ego)).
;; 11
%witange:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I), not(equal(Alter, Ego)).
;; 12
%witange:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E), not(equal(Alter, Ego)).
;; 13
%witange:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)).
;; 14
%witange:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)).
;; 15
%witange:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H), not(equal(Alter, Ego)).
;; 16
%witange:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 17
%witange:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H), not(equal(Alter, Ego)).
;; 18
%witange:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H), not(equal(Alter, Ego)).
;; 19
%witange:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaSoSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I), not(equal(Alter, Ego)).
;; 20
%witange:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=4, S=1, Star=0,  {Hsis}  
 male(Ego), mother(A, Ego), father(B, Ego), wife(C, B), daughter(Alter, C), daughter(Alter, B), not(equal(C, A)).
;; 21
%witange:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=4, S=1, Star=0,  {Hsis}  
 male(Ego), mother(A, Ego), father(B, Ego), husband(C, A), daughter(Alter, C), daughter(Alter, A), not(equal(C, B)).
;; 22
%witange:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 23
%witange:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 24
%witange:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 25
%witange:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 26
%witange:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).
;; 27
%witange:1, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 28
%witange:1, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(Alter, G), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 29
%witange:1, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 30
%witange:1, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoHsisDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(Alter, E), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 31
%witange:1, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=6, S=1, Star=0,  {MoHsisDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(Alter, E), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 32
%witange:1, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 33
%witange:1, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 34
%witange:1, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(Alter, H), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 35
%witange:1, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 36
%witange:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 37
%witange:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 38
%witange:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 39
%witange:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 40
%witange:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 41
%witange:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 42
%witange:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 43
%witange:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaSoSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 44
%witange:1, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=4, S=1, Star=0,  {Hsis}  
 female(Ego), mother(A, Ego), father(B, Ego), wife(C, B), daughter(Alter, C), daughter(Alter, B), not(equal(C, A)), younger(Alter, Ego).
;; 45
%witange:1, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=4, S=1, Star=0,  {Hsis}  
 female(Ego), mother(A, Ego), father(B, Ego), husband(C, A), daughter(Alter, C), daughter(Alter, A), not(equal(C, B)), younger(Alter, Ego).
;; 46
%witange:1, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D), younger(Alter, Ego).
;; 47
%witange:1, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 48
%witange:1, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 49
%witange:1, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G), younger(Alter, Ego).
;; 50
%witange:2, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), younger(Alter, Ego).
;; 51
%witange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(Alter, F), younger(Alter, Ego).
;; 52
%witange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoHsisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), daughter(Alter, G), younger(Alter, Ego).
;; 53
%witange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoHsisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), daughter(Alter, G), younger(Alter, Ego).
;; 54
%witange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H), younger(Alter, Ego).
;; 55
%witange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(Alter, G), younger(Alter, Ego).
;; 56
%witange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), daughter(Alter, I), younger(Alter, Ego).
;; 57
%witange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), daughter(Alter, I), younger(Alter, Ego).
;; 58
%witange:2, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H), younger(Alter, Ego).
;; 59
%witange:2, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoHsisDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(Alter, E), younger(Alter, Ego).
;; 60
%witange:2, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=6, S=1, Star=0,  {MoHsisDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(Alter, E), younger(Alter, Ego).
;; 61
%witange:2, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 62
%witange:2, sister[eq]2:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H), younger(Alter, Ego).
;; 63
%witange:2, sister[eq]2:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(Alter, H), younger(Alter, Ego).
;; 64
%witange:2, sister[eq]2:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I), younger(Alter, Ego).
;; 65
%witange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E), younger(Alter, Ego).
;; 66
%witange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), daughter(Alter, G), younger(Alter, Ego).
;; 67
%witange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoHsisDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(H, G), not(equal(H, B)), daughter(Alter, H), younger(Alter, Ego).
;; 68
%witange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoHsisDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(H, G), not(equal(H, B)), daughter(Alter, H), younger(Alter, Ego).
;; 69
%witange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(Alter, H), younger(Alter, Ego).
;; 70
%witange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, B)), daughter(Alter, I), younger(Alter, Ego).
;; 71
%witange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaHsisDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(Alter, F), younger(Alter, Ego).
;; 72
%witange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaHsisDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(Alter, F), younger(Alter, Ego).
;; 73
%witange:2, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), younger(Alter, Ego).


witiga(Alter, Ego) :-  gen_up[aux]37(A, Ego), father(Alter, A).
                   |   father(A, Ego), gen_up[aux]37(B, A), generation[aux]37(Alter, B), male(Alter).
                   |   mother(A, Ego), gen_up[aux]37(B, A), generation[aux]37(Alter, B), male(Alter).
                   |   father(A, Ego), mother(B, A), brother[eq]1(Alter, B).
                   |   mother(A, Ego), mother(B, A), brother[eq]1(Alter, B).
                   |   spice(A, Ego), father(Alter, A).
                   |   spice(A, Ego), gen_up[aux]37(B, A), father(Alter, B).
                   |   wife(A, Ego), mother(B, A), brother[eq]1(Alter, B).
                   |   wife(A, Ego), mother(B, A), sister(C, B), husband(Alter, C).
                   |   husband(A, Ego), mother(B, A), brother(C, B), son(Alter, C).
                   |   husband(A, Ego), sister[eq]2(B, A), husband(Alter, B).
                   |   son(A, Ego), wife(B, A), father(Alter, B).
                   |   spice(A, Ego), gen_up[aux]37(B, A), brother(Alter, B).
{"FaFa_FaFaBro_FaFaFa_FaFaFaBro_FaFaFaBroSo_FaFaFaFaBroSo_FaFaFaFaSisSo_FaFaFaMoBroSo_FaFaFaMoSisSo_FaFaFaSisSo_FaFaMoBro_FaFaMoBroSo_FaFaMoFaBroSo_FaFaMoFaSisSo_FaFaMoMoBroSo_FaFaMoMoSisSo_FaFaMoSisSo_FaMoBro_FaMoBroSo_FaMoBroSoSo_FaMoFa_FaMoFaBro_FaMoFaBroSo_FaMoFaBroSoSo_FaMoFaBroSoSoSo_FaMoFaFaBroSo_FaMoFaFaBroSoSo_FaMoFaFaSisSo_FaMoFaMoBroSo_FaMoFaMoSisSo_FaMoFaMoSisSoSo_FaMoFaSisSo_FaMoMoBro_FaMoMoBroDaSo_FaMoMoBroDaSoSo_FaMoMoBroSo_FaMoMoBroSoDaSo_FaMoMoFaBroDaSo_FaMoMoFaBroSo_FaMoMoFaHsisSo_FaMoMoFaSisSo_FaMoMoHsisSo_FaMoMoMoBroSo_FaMoMoMoSisDaSo_FaMoMoMoSisSo_FaMoMoSisSo_FaMoMoSisSoSo_FaMoMoSisSoSoSo_HuFa_HuFaBro_HuFaBroDaHu_HuFaFa_HuFaFaBro_HuFaFaBroDaHu_HuFaFaBroSoDaHu_HuFaFaFa_HuFaHsisHu_HuFaMoBro_HuFaMoBroDaDaHu_HuFaMoFa_HuFaMoHsisDaHu_HuFaMoSisDaHu_HuFaMoSisSoDaHu_HuFaSisHu_HuHsisHu_HuMoBro_HuMoBroDaDaHu_HuMoBroSo_HuMoBroSoDaDaHu_HuMoFa_HuMoFaBro_HuMoFaBroDaDaHu_HuMoFaFa_HuMoHsisDaHu_HuMoMoBro_HuMoMoBroDaDaDaHu_HuMoMoFa_HuMoSisDaHu_HuSisHu_MoFa_MoFaBro_MoFaFa_MoFaFaBro_MoFaFaBroSo_MoFaFaFaBroSo_MoFaFaFaSisSo_MoFaFaMoBroSo_MoFaFaMoSisSo_MoFaFaSisSo_MoFaMoBro_MoFaMoBroSo_MoFaMoFaBroSo_MoFaMoFaSisSo_MoFaMoMoBroSo_MoFaMoMoSisSo_MoFaMoSisSo_MoMoBro_MoMoBroSo_MoMoBroSoSo_MoMoFa_MoMoFaBro_MoMoFaBroSo_MoMoFaBroSoSo_MoMoFaBroSoSoSo_MoMoFaFaBroSo_MoMoFaFaBroSoSo_MoMoFaFaSisSo_MoMoFaMoBroSo_MoMoFaMoSisSo_MoMoFaMoSisSoSo_MoMoFaSisSo_MoMoMoBro_MoMoMoBroDaSo_MoMoMoBroDaSoSo_MoMoMoBroSo_MoMoMoBroSoDaSo_MoMoMoFaBroDaSo_MoMoMoFaBroSo_MoMoMoFaHsisSo_MoMoMoFaSisSo_MoMoMoHsisSo_MoMoMoMoBroSo_MoMoMoMoSisDaSo_MoMoMoMoSisSo_MoMoMoSisSo_MoMoMoSisSoSo_MoMoMoSisSoSoSo_SoWiFa_WiFa_WiFaBro_WiFaFa_WiFaFaBro_WiFaFaFa_WiFaMoBro_WiFaMoFa_WiMoBro_WiMoBroSo_WiMoBroSoSo_WiMoFa_WiMoFaBro_WiMoFaBroSo_WiMoFaBroSoSo_WiMoFaBroSoSoSo_WiMoFaFa_WiMoFaFaBroSoSo_WiMoFaMoSisSoSo_WiMoMoBro_WiMoMoBroDaSo_WiMoMoBroDaSoSo_WiMoMoBroSoDaSo_WiMoMoFa_WiMoMoFaBroDaSo_WiMoMoFaHsisSo_WiMoMoFaSisSo_WiMoMoHsisSo_WiMoMoMoSisDaSo_WiMoMoSisSo_WiMoMoSisSoSo_WiMoMoSisSoSoSo_WiMoSisHu"}
;; 0
%witiga:0, gen_up[aux]37:0%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).
;; 1
%witiga:0, gen_up[aux]37:1%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 2
%witiga:0, gen_up[aux]37:2, gen_up[aux]37:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
 father(A, Ego), father(B, A), father(Alter, B).
;; 3
%witiga:0, gen_up[aux]37:2, gen_up[aux]37:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
 mother(A, Ego), father(B, A), father(Alter, B).
;; 4
%witiga:0, gen_up[aux]37:3, gen_up[aux]37:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
 father(A, Ego), mother(B, A), father(Alter, B).
;; 5
%witiga:0, gen_up[aux]37:3, gen_up[aux]37:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
 mother(A, Ego), mother(B, A), father(Alter, B).
;; 6
%witiga:1, gen_up[aux]37:0, generation[aux]37:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 7
%witiga:1, gen_up[aux]37:0, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 8
%witiga:1, gen_up[aux]37:0, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 9
%witiga:1, gen_up[aux]37:0, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 10
%witiga:1, gen_up[aux]37:0, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 11
%witiga:1, gen_up[aux]37:1, generation[aux]37:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 12
%witiga:1, gen_up[aux]37:1, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 13
%witiga:1, gen_up[aux]37:1, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 14
%witiga:1, gen_up[aux]37:1, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 15
%witiga:1, gen_up[aux]37:1, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 16
%witiga:1, gen_up[aux]37:2, gen_up[aux]37:0, generation[aux]37:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaBro}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 17
%witiga:1, gen_up[aux]37:2, gen_up[aux]37:0, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoBroSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 18
%witiga:1, gen_up[aux]37:2, gen_up[aux]37:0, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoSisSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 19
%witiga:1, gen_up[aux]37:2, gen_up[aux]37:0, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaBroSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 20
%witiga:1, gen_up[aux]37:2, gen_up[aux]37:0, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaSisSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 21
%witiga:1, gen_up[aux]37:2, gen_up[aux]37:1, generation[aux]37:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaBro}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 22
%witiga:1, gen_up[aux]37:2, gen_up[aux]37:1, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoBroSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 23
%witiga:1, gen_up[aux]37:2, gen_up[aux]37:1, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoSisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 24
%witiga:1, gen_up[aux]37:2, gen_up[aux]37:1, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaBroSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 25
%witiga:1, gen_up[aux]37:2, gen_up[aux]37:1, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaSisSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 26
%witiga:1, gen_up[aux]37:3, gen_up[aux]37:0, generation[aux]37:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoBro}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 27
%witiga:1, gen_up[aux]37:3, gen_up[aux]37:0, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoBroSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 28
%witiga:1, gen_up[aux]37:3, gen_up[aux]37:0, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoSisSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 29
%witiga:1, gen_up[aux]37:3, gen_up[aux]37:0, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaBroSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 30
%witiga:1, gen_up[aux]37:3, gen_up[aux]37:0, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaSisSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 31
%witiga:1, gen_up[aux]37:3, gen_up[aux]37:1, generation[aux]37:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 32
%witiga:1, gen_up[aux]37:3, gen_up[aux]37:1, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 33
%witiga:1, gen_up[aux]37:3, gen_up[aux]37:1, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 34
%witiga:1, gen_up[aux]37:3, gen_up[aux]37:1, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 35
%witiga:1, gen_up[aux]37:3, gen_up[aux]37:1, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 36
%witiga:2, gen_up[aux]37:0, generation[aux]37:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 37
%witiga:2, gen_up[aux]37:0, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 38
%witiga:2, gen_up[aux]37:0, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 39
%witiga:2, gen_up[aux]37:0, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 40
%witiga:2, gen_up[aux]37:0, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 41
%witiga:2, gen_up[aux]37:1, generation[aux]37:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 42
%witiga:2, gen_up[aux]37:1, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 43
%witiga:2, gen_up[aux]37:1, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 44
%witiga:2, gen_up[aux]37:1, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 45
%witiga:2, gen_up[aux]37:1, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 46
%witiga:2, gen_up[aux]37:2, gen_up[aux]37:0, generation[aux]37:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaBro}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 47
%witiga:2, gen_up[aux]37:2, gen_up[aux]37:0, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoBroSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 48
%witiga:2, gen_up[aux]37:2, gen_up[aux]37:0, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoSisSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 49
%witiga:2, gen_up[aux]37:2, gen_up[aux]37:0, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaBroSo}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 50
%witiga:2, gen_up[aux]37:2, gen_up[aux]37:0, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaSisSo}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 51
%witiga:2, gen_up[aux]37:2, gen_up[aux]37:1, generation[aux]37:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaBro}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 52
%witiga:2, gen_up[aux]37:2, gen_up[aux]37:1, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoBroSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 53
%witiga:2, gen_up[aux]37:2, gen_up[aux]37:1, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoSisSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 54
%witiga:2, gen_up[aux]37:2, gen_up[aux]37:1, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaBroSo}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 55
%witiga:2, gen_up[aux]37:2, gen_up[aux]37:1, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaSisSo}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 56
%witiga:2, gen_up[aux]37:3, gen_up[aux]37:0, generation[aux]37:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoBro}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 57
%witiga:2, gen_up[aux]37:3, gen_up[aux]37:0, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 58
%witiga:2, gen_up[aux]37:3, gen_up[aux]37:0, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 59
%witiga:2, gen_up[aux]37:3, gen_up[aux]37:0, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 60
%witiga:2, gen_up[aux]37:3, gen_up[aux]37:0, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 61
%witiga:2, gen_up[aux]37:3, gen_up[aux]37:1, generation[aux]37:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 62
%witiga:2, gen_up[aux]37:3, gen_up[aux]37:1, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 63
%witiga:2, gen_up[aux]37:3, gen_up[aux]37:1, generation[aux]37:1, parents:0, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 64
%witiga:2, gen_up[aux]37:3, gen_up[aux]37:1, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 65
%witiga:2, gen_up[aux]37:3, gen_up[aux]37:1, generation[aux]37:1, parents:1, generation[aux]37gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 66
%witiga:3, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 67
%witiga:3, brother[eq]1:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 68
%witiga:3, brother[eq]1:0, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaFaBroSoSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 69
%witiga:3, brother[eq]1:0, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaMoSisSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 70
%witiga:3, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 71
%witiga:3, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), son(Alter, H).
;; 72
%witiga:3, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=2,  PC=8, S=1, Star=0,  {FaMoMoHsisSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), son(Alter, G).
;; 73
%witiga:3, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=2,  PC=8, S=1, Star=0,  {FaMoMoHsisSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), son(Alter, G).
;; 74
%witiga:3, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoFaBroDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 75
%witiga:3, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 76
%witiga:3, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 77
%witiga:3, brother[eq]1:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 78
%witiga:3, brother[eq]1:0, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=3,  PC=9, S=1, Star=0,  {FaMoMoFaHsisSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), wife(G, F), daughter(H, G), daughter(H, F), not(equal(G, E)), son(Alter, H).
;; 79
%witiga:3, brother[eq]1:0, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=3,  PC=9, S=1, Star=0,  {FaMoMoFaHsisSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), husband(G, E), daughter(H, G), daughter(H, E), not(equal(G, F)), son(Alter, H).
;; 80
%witiga:3, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 81
%witiga:3, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 82
%witiga:3, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 83
%witiga:3, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 84
%witiga:3, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 85
%witiga:3, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 86
%witiga:3, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 87
%witiga:4, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 88
%witiga:4, brother[eq]1:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 89
%witiga:4, brother[eq]1:0, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaFaBroSoSo}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 90
%witiga:4, brother[eq]1:0, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaMoSisSoSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 91
%witiga:4, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 92
%witiga:4, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), son(Alter, H).
;; 93
%witiga:4, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=2,  PC=8, S=1, Star=0,  {MoMoMoHsisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), son(Alter, G).
;; 94
%witiga:4, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=2,  PC=8, S=1, Star=0,  {MoMoMoHsisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), son(Alter, G).
;; 95
%witiga:4, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoFaBroDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 96
%witiga:4, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 97
%witiga:4, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 98
%witiga:4, brother[eq]1:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 99
%witiga:4, brother[eq]1:0, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=3,  PC=9, S=1, Star=0,  {MoMoMoFaHsisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), wife(G, F), daughter(H, G), daughter(H, F), not(equal(G, E)), son(Alter, H).
;; 100
%witiga:4, brother[eq]1:0, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=3,  PC=9, S=1, Star=0,  {MoMoMoFaHsisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), husband(G, E), daughter(H, G), daughter(H, E), not(equal(G, F)), son(Alter, H).
;; 101
%witiga:4, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 102
%witiga:4, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 103
%witiga:4, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 104
%witiga:4, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 105
%witiga:4, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 106
%witiga:4, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 107
%witiga:4, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 108
%witiga:5, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).
;; 109
%witiga:5, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).
;; 110
%witiga:6, spice:0, gen_up[aux]37:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaFa}  
 husband(A, Ego), father(B, A), father(Alter, B).
;; 111
%witiga:6, spice:0, gen_up[aux]37:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoFa}  
 husband(A, Ego), mother(B, A), father(Alter, B).
;; 112
%witiga:6, spice:0, gen_up[aux]37:2, gen_up[aux]37:0%
 Lvl=3,  PC=3, S=1, Star=0,  {HuFaFaFa}  
 husband(A, Ego), father(B, A), father(C, B), father(Alter, C).
;; 113
%witiga:6, spice:0, gen_up[aux]37:2, gen_up[aux]37:1%
 Lvl=3,  PC=3, S=1, Star=0,  {HuMoFaFa}  
 husband(A, Ego), mother(B, A), father(C, B), father(Alter, C).
;; 114
%witiga:6, spice:0, gen_up[aux]37:3, gen_up[aux]37:0%
 Lvl=3,  PC=3, S=1, Star=0,  {HuFaMoFa}  
 husband(A, Ego), father(B, A), mother(C, B), father(Alter, C).
;; 115
%witiga:6, spice:0, gen_up[aux]37:3, gen_up[aux]37:1%
 Lvl=3,  PC=3, S=1, Star=0,  {HuMoMoFa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(Alter, C).
;; 116
%witiga:6, spice:1, gen_up[aux]37:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaFa}  
 wife(A, Ego), father(B, A), father(Alter, B).
;; 117
%witiga:6, spice:1, gen_up[aux]37:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoFa}  
 wife(A, Ego), mother(B, A), father(Alter, B).
;; 118
%witiga:6, spice:1, gen_up[aux]37:2, gen_up[aux]37:0%
 Lvl=3,  PC=3, S=1, Star=0,  {WiFaFaFa}  
 wife(A, Ego), father(B, A), father(C, B), father(Alter, C).
;; 119
%witiga:6, spice:1, gen_up[aux]37:2, gen_up[aux]37:1%
 Lvl=3,  PC=3, S=1, Star=0,  {WiMoFaFa}  
 wife(A, Ego), mother(B, A), father(C, B), father(Alter, C).
;; 120
%witiga:6, spice:1, gen_up[aux]37:3, gen_up[aux]37:0%
 Lvl=3,  PC=3, S=1, Star=0,  {WiFaMoFa}  
 wife(A, Ego), father(B, A), mother(C, B), father(Alter, C).
;; 121
%witiga:6, spice:1, gen_up[aux]37:3, gen_up[aux]37:1%
 Lvl=3,  PC=3, S=1, Star=0,  {WiMoMoFa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(Alter, C).
;; 122
%witiga:7, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoBro}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 123
%witiga:7, brother[eq]1:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoFaBroSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 124
%witiga:7, brother[eq]1:0, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaFaBroSoSo}  
 wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 125
%witiga:7, brother[eq]1:0, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaMoSisSoSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 126
%witiga:7, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoMoSisSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 127
%witiga:7, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoMoSisDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), son(Alter, H).
;; 128
%witiga:7, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=7, S=2, Star=0,  {WiMoMoHsisSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), son(Alter, G).
;; 129
%witiga:7, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=7, S=2, Star=0,  {WiMoMoHsisSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), son(Alter, G).
;; 130
%witiga:7, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoFaBroDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 131
%witiga:7, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 132
%witiga:7, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoBroSoDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 133
%witiga:7, brother[eq]1:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoMoFaSisSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 134
%witiga:7, brother[eq]1:0, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=2,  PC=8, S=2, Star=0,  {WiMoMoFaHsisSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), wife(G, F), daughter(H, G), daughter(H, F), not(equal(G, E)), son(Alter, H).
;; 135
%witiga:7, brother[eq]1:0, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=2,  PC=8, S=2, Star=0,  {WiMoMoFaHsisSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), husband(G, E), daughter(H, G), daughter(H, E), not(equal(G, F)), son(Alter, H).
;; 136
%witiga:7, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoBroSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 137
%witiga:7, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroSoSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 138
%witiga:7, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 139
%witiga:7, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoBroDaSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 140
%witiga:7, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 141
%witiga:7, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaBroSoSoSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 142
%witiga:7, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoSisSoSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 143
%witiga:8, sister:0, sibling:0%
 Lvl=1,  PC=5, S=2, Star=0,  {WiMoSisHu}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 144
%witiga:9, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 145
%witiga:10, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {HuSisHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 146
%witiga:10, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuMoSisDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), husband(Alter, F).
;; 147
%witiga:10, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=2, Star=0,  {HuMoMoBroDaDaDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), not(equal(I, A)), husband(Alter, I).
;; 148
%witiga:10, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=6, S=3, Star=0,  {HuMoHsisDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), husband(Alter, G).
;; 149
%witiga:10, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=6, S=3, Star=0,  {HuMoHsisDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), husband(Alter, G).
;; 150
%witiga:10, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaBroDaDaHu}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), husband(Alter, H).
;; 151
%witiga:10, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuMoBroDaDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), husband(Alter, G).
;; 152
%witiga:10, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoBroSoDaDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), husband(Alter, H).
;; 153
%witiga:10, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=4, S=3, Star=0,  {HuHsisHu}  
 husband(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), husband(Alter, E).
;; 154
%witiga:10, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=4, S=3, Star=0,  {HuHsisHu}  
 husband(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), husband(Alter, E).
;; 155
%witiga:10, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaBroDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), husband(Alter, F).
;; 156
%witiga:10, sister[eq]2:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaBroSoDaHu}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), husband(Alter, H).
;; 157
%witiga:10, sister[eq]2:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoSisSoDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), husband(Alter, H).
;; 158
%witiga:10, sister[eq]2:1, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=2, Star=0,  {HuFaSisHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 159
%witiga:10, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=2, Star=0,  {HuFaMoSisDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), husband(Alter, G).
;; 160
%witiga:10, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=7, S=3, Star=0,  {HuFaMoHsisDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(H, G), not(equal(H, B)), husband(Alter, H).
;; 161
%witiga:10, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=7, S=3, Star=0,  {HuFaMoHsisDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(H, G), not(equal(H, B)), husband(Alter, H).
;; 162
%witiga:10, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoBroDaDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), husband(Alter, H).
;; 163
%witiga:10, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=5, S=3, Star=0,  {HuFaHsisHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), husband(Alter, F).
;; 164
%witiga:10, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=5, S=3, Star=0,  {HuFaHsisHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), husband(Alter, F).
;; 165
%witiga:10, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=2, Star=0,  {HuFaFaBroDaHu}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), husband(Alter, G).
;; 166
%witiga:11%
 Lvl=0,  PC=2, S=1, Star=0,  {SoWiFa}  
 son(A, Ego), wife(B, A), father(Alter, B).
;; 167
%witiga:12, spice:0, gen_up[aux]37:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuFaBro}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 168
%witiga:12, spice:0, gen_up[aux]37:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoBro}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 169
%witiga:12, spice:0, gen_up[aux]37:2, gen_up[aux]37:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaFaBro}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 170
%witiga:12, spice:0, gen_up[aux]37:2, gen_up[aux]37:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoFaBro}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 171
%witiga:12, spice:0, gen_up[aux]37:3, gen_up[aux]37:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaMoBro}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 172
%witiga:12, spice:0, gen_up[aux]37:3, gen_up[aux]37:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoMoBro}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 173
%witiga:12, spice:1, gen_up[aux]37:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaBro}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 174
%witiga:12, spice:1, gen_up[aux]37:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoBro}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 175
%witiga:12, spice:1, gen_up[aux]37:2, gen_up[aux]37:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaFaBro}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 176
%witiga:12, spice:1, gen_up[aux]37:2, gen_up[aux]37:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoFaBro}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 177
%witiga:12, spice:1, gen_up[aux]37:3, gen_up[aux]37:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaMoBro}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 178
%witiga:12, spice:1, gen_up[aux]37:3, gen_up[aux]37:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoMoBro}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).


witijan(Alter, Ego) :-  male(Ego), sister[eq]2(A, Ego), daughter(Alter, A).
{"FaBroDaDa_FaFaBroDaDa_FaFaBroSoDaDa_FaFaFaBroSoDaDa_FaFaMoBroDaSoDaDa_FaFaMoSisSoDaDa_FaHsisDa_FaMoBroDaDaDa_FaMoBroDaSoDaDa_FaMoBroSoDaDaDa_FaMoFaBroDaDaDa_FaMoFaBroSoDaDaDa_FaMoFaBroSoSoDaDaDa_FaMoHsisDaDa_FaMoMoBroDaDaDaDa_FaMoMoBroDaSoDaDaDa_FaMoMoSisSoDaDaDa_FaMoMoSisSoSoDaDaDa_FaMoSisDaDa_FaMoSisSoDaDa_FaSisDa_HsisDa_MoBroDaDaDa_MoBroSoDaDaDa_MoFaBroDaDaDa_MoFaBroSoDaDaDa_MoFaBroSoSoDaDaDa_MoFaFaBroSoDaDaDa_MoFaMoBroDaSoDaDaDa_MoFaMoSisSoDaDaDa_MoHsisDaDa_MoMoBroDaDaDaDa_MoMoBroDaSoDaDaDa_MoMoBroDaSoSoDaDaDa_MoMoBroSoDaDaDaDa_MoMoSisSoDaDaDa_MoMoSisSoSoDaDaDa_MoSisDaDa_SisDa"}
;; 0
%witijan:0, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 1
%witijan:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), daughter(Alter, E).
;; 2
%witijan:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), daughter(Alter, H).
;; 3
%witijan:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroSoDaDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), not(equal(I, Ego)), daughter(Alter, I).
;; 4
%witijan:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoHsisDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), not(equal(F, Ego)), daughter(Alter, F).
;; 5
%witijan:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoHsisDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), not(equal(F, Ego)), daughter(Alter, F).
;; 6
%witijan:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(Alter, G).
;; 7
%witijan:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), daughter(Alter, I).
;; 8
%witijan:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), daughter(Alter, I).
;; 9
%witijan:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoFaMoBroDaSoDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, Ego)), daughter(Alter, J).
;; 10
%witijan:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), daughter(Alter, F).
;; 11
%witijan:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(Alter, H).
;; 12
%witijan:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(Alter, H).
;; 13
%witijan:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaSoDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), daughter(Alter, I).
;; 14
%witijan:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(Alter, G).
;; 15
%witijan:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroSoSoDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), daughter(Alter, I).
;; 16
%witijan:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisSoSoDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), daughter(Alter, I).
;; 17
%witijan:0, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaSoSoDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, Ego)), daughter(Alter, J).
;; 18
%witijan:0, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HsisDa}  
 male(Ego), mother(A, Ego), father(B, Ego), wife(C, B), daughter(D, C), daughter(D, B), not(equal(C, A)), daughter(Alter, D).
;; 19
%witijan:0, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {HsisDa}  
 male(Ego), mother(A, Ego), father(B, Ego), husband(C, A), daughter(D, C), daughter(D, A), not(equal(C, B)), daughter(Alter, D).
;; 20
%witijan:0, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 21
%witijan:0, sister[eq]2:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 22
%witijan:0, sister[eq]2:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 23
%witijan:0, sister[eq]2:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 24
%witijan:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 25
%witijan:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(Alter, F).
;; 26
%witijan:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), not(equal(I, A)), daughter(Alter, I).
;; 27
%witijan:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoHsisDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), daughter(Alter, G).
;; 28
%witijan:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoHsisDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), daughter(Alter, G).
;; 29
%witijan:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H).
;; 30
%witijan:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(Alter, G).
;; 31
%witijan:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), daughter(Alter, I).
;; 32
%witijan:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), daughter(Alter, I).
;; 33
%witijan:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoMoBroDaSoDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, A)), daughter(Alter, J).
;; 34
%witijan:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H).
;; 35
%witijan:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoFaBroSoSoDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, A)), daughter(Alter, J).
;; 36
%witijan:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoMoSisSoSoDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, A)), daughter(Alter, J).
;; 37
%witijan:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaHsisDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(Alter, E).
;; 38
%witijan:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=6, S=1, Star=0,  {FaHsisDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(Alter, E).
;; 39
%witijan:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 40
%witijan:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 41
%witijan:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 42
%witijan:0, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).


witimi(Alter, Ego) :-  father(A, Ego), sister[eq](Alter, A).
                   |   mother(A, Ego), brother[eq]1(B, A), wife(Alter, B).
{"FaFaBroDa_FaFaFaBroSoDa_FaFaMoBroDaSoDa_FaFaMoSisSoDa_FaHsis_FaMoBroDaDa_FaMoBroSoDaDa_FaMoFaBroDaDa_FaMoHsisDa_FaMoMoBroDaDaDa_FaMoSisDa_FaSis_MoBroSoSoWi_MoBroSoWi_MoBroWi_MoFaBroSoSoSoWi_MoFaBroSoSoWi_MoFaBroSoWi_MoFaFaBroSoSoWi_MoFaMoSisSoSoWi_MoMoBroDaSoSoWi_MoMoBroDaSoWi_MoMoBroSoDaSoWi_MoMoFaBroDaSoWi_MoMoFaHsisSoWi_MoMoFaMoSisDaSoWi_MoMoFaSisSoWi_MoMoHsisSoWi_MoMoMoBroDaDaSoWi_MoMoMoSisDaSoWi_MoMoSisSoSoSoWi_MoMoSisSoSoWi_MoMoSisSoWi"}
;; 0
%witimi:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%witimi:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E), not(equal(Alter, A)).
;; 2
%witimi:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(Alter, H), not(equal(Alter, A)).
;; 3
%witimi:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoHsisDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(Alter, F), not(equal(Alter, A)).
;; 4
%witimi:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoHsisDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(Alter, F), not(equal(Alter, A)).
;; 5
%witimi:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 6
%witimi:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, A)).
;; 7
%witimi:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 8
%witimi:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaHsis}  
 father(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(Alter, D), daughter(Alter, C), not(equal(D, B)).
;; 9
%witimi:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=5, S=1, Star=0,  {FaHsis}  
 father(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(Alter, D), daughter(Alter, B), not(equal(D, C)).
;; 10
%witimi:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 11
%witimi:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 12
%witimi:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 13
%witimi:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 14
%witimi:1, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 15
%witimi:1, brother[eq]1:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaBroSoWi}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), wife(Alter, F).
;; 16
%witimi:1, brother[eq]1:0, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaFaBroSoSoWi}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), wife(Alter, H).
;; 17
%witimi:1, brother[eq]1:0, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoSisSoSoWi}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), wife(Alter, H).
;; 18
%witimi:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoSisSoWi}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), wife(Alter, F).
;; 19
%witimi:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoSisDaSoWi}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(H, G), wife(Alter, H).
;; 20
%witimi:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoBroDaDaSoWi}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(I, H), wife(Alter, I).
;; 21
%witimi:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=7, S=2, Star=0,  {MoMoHsisSoWi}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), son(G, F), wife(Alter, G).
;; 22
%witimi:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=7, S=2, Star=0,  {MoMoHsisSoWi}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), son(G, F), wife(Alter, G).
;; 23
%witimi:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoFaBroDaSoWi}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), wife(Alter, H).
;; 24
%witimi:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaSoWi}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), wife(Alter, G).
;; 25
%witimi:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroSoDaSoWi}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 26
%witimi:1, brother[eq]1:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {MoMoFaSisSoWi}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), wife(Alter, G).
;; 27
%witimi:1, brother[eq]1:0, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=10, S=1, Star=0,  {MoMoFaMoSisDaSoWi}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), son(I, H), wife(Alter, I).
;; 28
%witimi:1, brother[eq]1:0, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=2,  PC=8, S=2, Star=0,  {MoMoFaHsisSoWi}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), son(H, G), wife(Alter, H).
;; 29
%witimi:1, brother[eq]1:0, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=2,  PC=8, S=2, Star=0,  {MoMoFaHsisSoWi}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), son(H, G), wife(Alter, H).
;; 30
%witimi:1, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), wife(Alter, E).
;; 31
%witimi:1, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoSoWi}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), wife(Alter, G).
;; 32
%witimi:1, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoSoWi}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), wife(Alter, G).
;; 33
%witimi:1, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroDaSoSoWi}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), wife(Alter, H).
;; 34
%witimi:1, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroSoSoWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), wife(Alter, F).
;; 35
%witimi:1, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoSoSoWi}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), wife(Alter, H).
;; 36
%witimi:1, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoSoSoWi}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), wife(Alter, H).


witini(Alter, Ego) :-  son(A, Ego), wife(Alter, A).
                   |   son(A, Ego), wife(B, A), sister(Alter, B).
                   |   son(A, Ego), wife(B, A), brother(C, B), daughter(Alter, C).
                   |   children(A, Ego), son(B, A), wife(Alter, B).
                   |   daughter(A, Ego), husband(B, A), mother(Alter, B).
                   |   husband(A, Ego), sister(B, A), son(C, B), wife(Alter, C).
                   |   husband(A, Ego), father(B, A), sister(C, B), son(D, C), wife(Alter, D).
                   |   wife(A, Ego), brother(B, A), wife(Alter, B).
{"DaHuMo_DaSoWi_HuFaSisSoWi_HuSisSoWi_SoSoWi_SoWi_SoWiBroDa_SoWiSis_WiBroWi"}
;; 0
%witini:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 son(A, Ego), wife(Alter, A).
;; 1
%witini:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SoWiSis}  
 son(A, Ego), wife(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 2
%witini:2, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SoWiBroDa}  
 son(A, Ego), wife(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 3
%witini:3, children:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {SoSoWi}  
 son(A, Ego), son(B, A), wife(Alter, B).
;; 4
%witini:3, children:1%
 Lvl=-2,  PC=2, S=1, Star=0,  {DaSoWi}  
 daughter(A, Ego), son(B, A), wife(Alter, B).
;; 5
%witini:4%
 Lvl=0,  PC=2, S=1, Star=0,  {DaHuMo}  
 daughter(A, Ego), husband(B, A), mother(Alter, B).
;; 6
%witini:5, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {HuSisSoWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), wife(Alter, E).
;; 7
%witini:6, sister:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaSisSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), wife(Alter, F).
;; 8
%witini:7, brother:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {WiBroWi}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


witinu(Alter, Ego) :-  female(Ego), brother[eq](Alter, Ego), elder(Alter, Ego).
{"Bro_FaBroSo_FaFaBroSoSo_FaMoBroDaSoSo_FaMoSisSoSo_MoBroDaSo_MoBroSoDaSo_MoFaBroDaSo_MoFaBroSoDaSo_MoFaBroSoSoDaSo_MoFaFaBroDaSo_MoFaFaBroSoDaSo_MoFaHsisSo_MoFaMoBroDaDaSo_MoFaMoBroDaSoDaSo_MoFaMoBroSoDaDaSo_MoFaMoHsisDaSo_MoFaMoSisDaSo_MoFaMoSisSoDaSo_MoFaSisSo_MoHsisSo_MoMoBroDaDaSo_MoMoBroDaSoDaSo_MoMoBroDaSoSoDaSo_MoMoBroSoDaDaSo_MoMoFaBroDaDaSo_MoMoFaBroSoDaDaSo_MoMoHsisDaSo_MoMoMoSisSoDaDaSo_MoMoSisDaSo_MoMoSisSoDaSo_MoMoSisSoSoDaSo_MoSisSo"}
;; 0
%witinu:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%witinu:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D), elder(Alter, Ego).
;; 2
%witinu:0, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 3
%witinu:0, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 4
%witinu:0, brother[eq]:1, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G), elder(Alter, Ego).
;; 5
%witinu:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D), elder(Alter, Ego).
;; 6
%witinu:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F), elder(Alter, Ego).
;; 7
%witinu:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoHsisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), son(Alter, G), elder(Alter, Ego).
;; 8
%witinu:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoHsisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), son(Alter, G), elder(Alter, Ego).
;; 9
%witinu:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H), elder(Alter, Ego).
;; 10
%witinu:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(Alter, G), elder(Alter, Ego).
;; 11
%witinu:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(Alter, I), elder(Alter, Ego).
;; 12
%witinu:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(Alter, I), elder(Alter, Ego).
;; 13
%witinu:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H), elder(Alter, Ego).
;; 14
%witinu:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoHsisSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(Alter, E), elder(Alter, Ego).
;; 15
%witinu:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=6, S=1, Star=0,  {MoHsisSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(Alter, E), elder(Alter, Ego).
;; 16
%witinu:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 17
%witinu:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 18
%witinu:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 19
%witinu:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaSoDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I), elder(Alter, Ego).
;; 20
%witinu:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E), elder(Alter, Ego).
;; 21
%witinu:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G), elder(Alter, Ego).
;; 22
%witinu:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G), elder(Alter, Ego).
;; 23
%witinu:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 24
%witinu:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 25
%witinu:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 26
%witinu:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 27
%witinu:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaSoSoDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(I, H), son(Alter, I), elder(Alter, Ego).
;; 28
%witinu:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E), elder(Alter, Ego).
;; 29
%witinu:0, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(Alter, G), elder(Alter, Ego).
;; 30
%witinu:0, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoHsisDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(H, G), not(equal(H, B)), son(Alter, H), elder(Alter, Ego).
;; 31
%witinu:0, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoHsisDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(H, G), not(equal(H, B)), son(Alter, H), elder(Alter, Ego).
;; 32
%witinu:0, brother[eq]:3, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H), elder(Alter, Ego).
;; 33
%witinu:0, brother[eq]:3, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, B)), son(Alter, I), elder(Alter, Ego).
;; 34
%witinu:0, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaHsisSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), son(Alter, F), elder(Alter, Ego).
;; 35
%witinu:0, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaHsisSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), son(Alter, F), elder(Alter, Ego).
;; 36
%witinu:0, brother[eq]:3, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G), elder(Alter, Ego).


witucka(Alter, Ego) :-  female(Ego), brother[eq](A, Ego), son(Alter, A).
                    |   husband(A, Ego), sister[eq]2(B, A), son(Alter, B).
{"BroSo_FaBroSoSo_FaFaBroSoSoSo_FaMoBroDaSoSoSo_FaMoSisSoSoSo_HuFaBroDaSo_HuFaFaBroDaSo_HuFaFaBroSoDaSo_HuFaHsisSo_HuFaMoBroDaDaSo_HuFaMoHsisDaSo_HuFaMoSisDaSo_HuFaMoSisSoDaSo_HuFaSisSo_HuHsisSo_HuMoBroDaDaSo_HuMoBroSoDaDaSo_HuMoFaBroDaDaSo_HuMoHsisDaSo_HuMoMoBroDaDaDaSo_HuMoSisDaSo_HuSisSo_MoBroDaSoSo_MoBroSoDaSoSo_MoFaBroDaSoSo_MoFaBroSoDaSoSo_MoFaBroSoSoDaSoSo_MoFaFaBroDaSoSo_MoFaFaBroSoDaSoSo_MoFaHsisSoSo_MoFaMoBroDaDaSoSo_MoFaMoBroDaSoDaSoSo_MoFaMoBroSoDaDaSoSo_MoFaMoHsisDaSoSo_MoFaMoSisDaSoSo_MoFaMoSisSoDaSoSo_MoFaSisSoSo_MoHsisSoSo_MoMoBroDaDaSoSo_MoMoBroDaSoDaSoSo_MoMoBroDaSoSoDaSoSo_MoMoBroSoDaDaSoSo_MoMoFaBroDaDaSoSo_MoMoFaBroSoDaDaSoSo_MoMoHsisDaSoSo_MoMoMoSisSoDaDaSoSo_MoMoSisDaSoSo_MoMoSisSoDaSoSo_MoMoSisSoSoDaSoSo_MoSisSoSo"}
;; 0
%witucka:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 1
%witucka:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 2
%witucka:0, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 3
%witucka:0, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 4
%witucka:0, brother[eq]:1, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 5
%witucka:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 6
%witucka:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), son(Alter, G).
;; 7
%witucka:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoHsisDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), son(H, G), son(Alter, H).
;; 8
%witucka:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoHsisDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), son(H, G), son(Alter, H).
;; 9
%witucka:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(Alter, I).
;; 10
%witucka:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), son(Alter, H).
;; 11
%witucka:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoFaBroSoDaDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(J, I), son(Alter, J).
;; 12
%witucka:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoMoSisSoDaDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(J, I), son(Alter, J).
;; 13
%witucka:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroSoDaDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(Alter, I).
;; 14
%witucka:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoHsisSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), son(Alter, F).
;; 15
%witucka:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoHsisSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), son(Alter, F).
;; 16
%witucka:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 17
%witucka:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 18
%witucka:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 19
%witucka:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoFaMoBroDaSoDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), son(J, I), son(Alter, J).
;; 20
%witucka:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 21
%witucka:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 22
%witucka:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 23
%witucka:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaSoDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 24
%witucka:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 25
%witucka:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroSoSoDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 26
%witucka:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisSoSoDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 27
%witucka:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaSoSoDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(I, H), son(J, I), son(Alter, J).
;; 28
%witucka:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 29
%witucka:0, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(H, G), son(Alter, H).
;; 30
%witucka:0, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoHsisDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(H, G), not(equal(H, B)), son(I, H), son(Alter, I).
;; 31
%witucka:0, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoHsisDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(H, G), not(equal(H, B)), son(I, H), son(Alter, I).
;; 32
%witucka:0, brother[eq]:3, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(I, H), son(Alter, I).
;; 33
%witucka:0, brother[eq]:3, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoFaMoBroSoDaDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, B)), son(J, I), son(Alter, J).
;; 34
%witucka:0, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaHsisSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), son(G, F), son(Alter, G).
;; 35
%witucka:0, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaHsisSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), son(G, F), son(Alter, G).
;; 36
%witucka:0, brother[eq]:3, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 37
%witucka:1, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 38
%witucka:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F).
;; 39
%witucka:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {HuMoMoBroDaDaDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), not(equal(I, A)), son(Alter, I).
;; 40
%witucka:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuMoHsisDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 41
%witucka:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuMoHsisDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 42
%witucka:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoFaBroDaDaSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 43
%witucka:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroDaDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 44
%witucka:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroSoDaDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 45
%witucka:1, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {HuHsisSo}  
 husband(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(Alter, E).
;; 46
%witucka:1, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=5, S=2, Star=0,  {HuHsisSo}  
 husband(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(Alter, E).
;; 47
%witucka:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 48
%witucka:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaFaBroSoDaSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 49
%witucka:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoSisSoDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 50
%witucka:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 51
%witucka:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(Alter, G).
;; 52
%witucka:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoHsisDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 53
%witucka:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoHsisDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 54
%witucka:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoBroDaDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 55
%witucka:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaHsisSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), son(Alter, F).
;; 56
%witucka:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaHsisSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), son(Alter, F).
;; 57
%witucka:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroDaSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).


witucpa(Alter, Ego) :-  children(A, Ego), gen_dn[aux]37(Alter, A).
                    |   sister[eq]2a(A, Ego), children(B, A), gen_dn[aux]37(Alter, B).
                    |   mother(A, Ego), sister[eq]2a(B, A), children(C, B), children(D, C), gen_dn[aux]37(Alter, D).
                    |   male(Ego), brother[eq]a(A, Ego), children(B, A), gen_dn[aux]37(Alter, B).
                    |   female(Ego), brother(A, Ego), son(B, A), children(Alter, B).
                    |   parents(A, Ego), generation[aux]37smallGS(B, A), children(C, B), children(D, C), gen_dn[aux]37(Alter, D).
                    |   son(A, Ego), wife(B, A), brother[eq]1(Alter, B).
                    |   daughter(A, Ego), husband(B, A), sister(Alter, B).
                    |   daughter(A, Ego), husband(B, A), father(C, B), sister(Alter, C).
                    |   husband(A, Ego), brother[eq]a(B, A), children(C, B), gen_dn[aux]37(Alter, C).
                    |   husband(A, Ego), sister[eq]2a(B, A), children(C, B), gen_dn[aux]37(Alter, C).
                    |   wife(A, Ego), sister[eq]2a(B, A), children(C, B), gen_dn[aux]37(Alter, C).
{"BroDaDa_BroDaDaDa_BroDaDaSo_BroDaSo_BroDaSoDa_BroDaSoSo_BroSoDa_BroSoDaDa_BroSoDaSo_BroSoSo_BroSoSoDa_BroSoSoSo_DaDa_DaDaDa_DaDaSo_DaHuFaSis_DaHuSis_DaSo_DaSoDa_DaSoSo_FaBroDaDaDa_FaBroDaDaDaDa_FaBroDaDaDaSo_FaBroDaDaSo_FaBroDaDaSoDa_FaBroDaDaSoSo_FaBroDaSoDa_FaBroDaSoDaDa_FaBroDaSoDaSo_FaBroDaSoSo_FaBroDaSoSoDa_FaBroDaSoSoSo_FaBroSoDaDa_FaBroSoDaDaDa_FaBroSoDaDaSo_FaBroSoDaSo_FaBroSoDaSoDa_FaBroSoDaSoSo_FaBroSoSoDa_FaBroSoSoDaDa_FaBroSoSoDaSo_FaBroSoSoSo_FaBroSoSoSoDa_FaBroSoSoSoSo_FaFaBroDaDaDaDa_FaFaBroDaDaDaSo_FaFaBroDaDaSoDa_FaFaBroDaDaSoSo_FaFaBroDaSoDaDa_FaFaBroDaSoDaSo_FaFaBroDaSoSoDa_FaFaBroDaSoSoSo_FaFaBroSoDaDaDa_FaFaBroSoDaDaSo_FaFaBroSoDaSoDa_FaFaBroSoDaSoSo_FaFaBroSoSoDaDa_FaFaBroSoSoDaSo_FaFaBroSoSoSoDa_FaFaBroSoSoSoSo_FaFaSisDaDaDaDa_FaFaSisDaDaDaSo_FaFaSisDaDaSoDa_FaFaSisDaDaSoSo_FaFaSisDaSoDaDa_FaFaSisDaSoDaSo_FaFaSisDaSoSoDa_FaFaSisDaSoSoSo_FaFaSisSoDaDaDa_FaFaSisSoDaDaSo_FaFaSisSoDaSoDa_FaFaSisSoDaSoSo_FaFaSisSoSoDaDa_FaFaSisSoSoDaSo_FaFaSisSoSoSoDa_FaFaSisSoSoSoSo_FaMoBroDaDaDaDa_FaMoBroDaDaDaSo_FaMoBroDaDaSoDa_FaMoBroDaDaSoSo_FaMoBroDaSoDaDa_FaMoBroDaSoDaSo_FaMoBroDaSoSoDa_FaMoBroDaSoSoSo_FaMoBroSoDaDaDa_FaMoBroSoDaDaSo_FaMoBroSoDaSoDa_FaMoBroSoDaSoSo_FaMoBroSoSoDaDa_FaMoBroSoSoDaSo_FaMoBroSoSoSoDa_FaMoBroSoSoSoSo_FaMoSisDaDaDaDa_FaMoSisDaDaDaSo_FaMoSisDaDaSoDa_FaMoSisDaDaSoSo_FaMoSisDaSoDaDa_FaMoSisDaSoDaSo_FaMoSisDaSoSoDa_FaMoSisDaSoSoSo_FaMoSisSoDaDaDa_FaMoSisSoDaDaSo_FaMoSisSoDaSoDa_FaMoSisSoDaSoSo_FaMoSisSoSoDaDa_FaMoSisSoSoDaSo_FaMoSisSoSoSoDa_FaMoSisSoSoSoSo_FaSisDaDa_FaSisDaDaDa_FaSisDaDaDaDa_FaSisDaDaDaSo_FaSisDaDaSo_FaSisDaDaSoDa_FaSisDaDaSoSo_FaSisDaSo_FaSisDaSoDa_FaSisDaSoDaDa_FaSisDaSoDaSo_FaSisDaSoSo_FaSisDaSoSoDa_FaSisDaSoSoSo_FaSisSoDa_FaSisSoDaDa_FaSisSoDaDaDa_FaSisSoDaDaSo_FaSisSoDaSo_FaSisSoDaSoDa_FaSisSoDaSoSo_FaSisSoSo_FaSisSoSoDa_FaSisSoSoDaDa_FaSisSoSoDaSo_FaSisSoSoSo_FaSisSoSoSoDa_FaSisSoSoSoSo_HsisDaDa_HsisDaDaDa_HsisDaDaSo_HsisDaSo_HsisDaSoDa_HsisDaSoSo_HsisSoDa_HsisSoDaDa_HsisSoDaSo_HsisSoSo_HsisSoSoDa_HsisSoSoSo_HuBroDaDa_HuBroDaDaDa_HuBroDaDaSo_HuBroDaSo_HuBroDaSoDa_HuBroDaSoSo_HuBroSoDa_HuBroSoDaDa_HuBroSoDaSo_HuBroSoSo_HuBroSoSoDa_HuBroSoSoSo_HuFaBroDaDaDa_HuFaBroDaDaDaDa_HuFaBroDaDaDaSo_HuFaBroDaDaSo_HuFaBroDaDaSoDa_HuFaBroDaDaSoSo_HuFaBroDaSoDa_HuFaBroDaSoDaDa_HuFaBroDaSoDaSo_HuFaBroDaSoSo_HuFaBroDaSoSoDa_HuFaBroDaSoSoSo_HuFaBroSoDaDa_HuFaBroSoDaDaDa_HuFaBroSoDaDaSo_HuFaBroSoDaSo_HuFaBroSoDaSoDa_HuFaBroSoDaSoSo_HuFaBroSoSoDa_HuFaBroSoSoDaDa_HuFaBroSoSoDaSo_HuFaBroSoSoSo_HuFaBroSoSoSoDa_HuFaBroSoSoSoSo_HuFaSisDaDa_HuFaSisDaDaDa_HuFaSisDaDaSo_HuFaSisDaSo_HuFaSisDaSoDa_HuFaSisDaSoSo_HuFaSisSoDa_HuFaSisSoDaDa_HuFaSisSoDaSo_HuFaSisSoSo_HuFaSisSoSoDa_HuFaSisSoSoSo_HuHsisDaDa_HuHsisDaDaDa_HuHsisDaDaSo_HuHsisDaSo_HuHsisDaSoDa_HuHsisDaSoSo_HuHsisSoDa_HuHsisSoDaDa_HuHsisSoDaSo_HuHsisSoSo_HuHsisSoSoDa_HuHsisSoSoSo_HuMoBroDaDaDaDa_HuMoBroDaDaDaDaDa_HuMoBroDaDaDaDaSo_HuMoBroDaDaDaSo_HuMoBroDaDaDaSoDa_HuMoBroDaDaDaSoSo_HuMoBroDaDaSoDa_HuMoBroDaDaSoDaDa_HuMoBroDaDaSoDaSo_HuMoBroDaDaSoSo_HuMoBroDaDaSoSoDa_HuMoBroDaDaSoSoSo_HuMoBroDaSoDaDa_HuMoBroDaSoDaSo_HuMoBroDaSoSoDa_HuMoBroDaSoSoSo_HuMoBroSoDaDaDaDa_HuMoBroSoDaDaDaDaDa_HuMoBroSoDaDaDaDaSo_HuMoBroSoDaDaDaSo_HuMoBroSoDaDaDaSoDa_HuMoBroSoDaDaDaSoSo_HuMoBroSoDaDaSoDa_HuMoBroSoDaDaSoDaDa_HuMoBroSoDaDaSoDaSo_HuMoBroSoDaDaSoSo_HuMoBroSoDaDaSoSoDa_HuMoBroSoDaDaSoSoSo_HuMoFaBroDaDaDaDa_HuMoFaBroDaDaDaDaDa_HuMoFaBroDaDaDaDaSo_HuMoFaBroDaDaDaSo_HuMoFaBroDaDaDaSoDa_HuMoFaBroDaDaDaSoSo_HuMoFaBroDaDaSoDa_HuMoFaBroDaDaSoDaDa_HuMoFaBroDaDaSoDaSo_HuMoFaBroDaDaSoSo_HuMoFaBroDaDaSoSoDa_HuMoFaBroDaDaSoSoSo_HuMoHsisDaDaDa_HuMoHsisDaDaSo_HuMoHsisDaSoDa_HuMoHsisDaSoSo_HuMoMoBroDaDaDaDaDa_HuMoMoBroDaDaDaDaSo_HuMoMoBroDaDaDaSoDa_HuMoMoBroDaDaDaSoSo_HuMoSisDaDaDa_HuMoSisDaDaDaDa_HuMoSisDaDaDaSo_HuMoSisDaDaSo_HuMoSisDaDaSoDa_HuMoSisDaDaSoSo_HuMoSisDaSoDa_HuMoSisDaSoDaDa_HuMoSisDaSoDaSo_HuMoSisDaSoSo_HuMoSisDaSoSoDa_HuMoSisDaSoSoSo_HuMoSisSoDaDa_HuMoSisSoDaDaDa_HuMoSisSoDaDaSo_HuMoSisSoDaSo_HuMoSisSoDaSoDa_HuMoSisSoDaSoSo_HuMoSisSoSoDa_HuMoSisSoSoDaDa_HuMoSisSoSoDaSo_HuMoSisSoSoSo_HuMoSisSoSoSoDa_HuMoSisSoSoSoSo_HuSisDaDa_HuSisDaDaDa_HuSisDaDaSo_HuSisDaSo_HuSisDaSoDa_HuSisDaSoSo_HuSisSoDa_HuSisSoDaDa_HuSisSoDaSo_HuSisSoSo_HuSisSoSoDa_HuSisSoSoSo_MoBroDaDaDa_MoBroDaDaDaDa_MoBroDaDaDaDaDa_MoBroDaDaDaDaSo_MoBroDaDaDaSo_MoBroDaDaDaSoDa_MoBroDaDaDaSoSo_MoBroDaDaSo_MoBroDaDaSoDa_MoBroDaDaSoDaDa_MoBroDaDaSoDaSo_MoBroDaDaSoSo_MoBroDaDaSoSoDa_MoBroDaDaSoSoSo_MoBroDaSoDa_MoBroDaSoDaDa_MoBroDaSoDaDaDa_MoBroDaSoDaDaSo_MoBroDaSoDaSo_MoBroDaSoDaSoDa_MoBroDaSoDaSoSo_MoBroDaSoSo_MoBroDaSoSoDa_MoBroDaSoSoDaDa_MoBroDaSoSoDaSo_MoBroDaSoSoSo_MoBroDaSoSoSoDa_MoBroDaSoSoSoSo_MoBroSoDaDa_MoBroSoDaDaDa_MoBroSoDaDaDaDa_MoBroSoDaDaDaDaDa_MoBroSoDaDaDaDaSo_MoBroSoDaDaDaSo_MoBroSoDaDaDaSoDa_MoBroSoDaDaDaSoSo_MoBroSoDaDaSo_MoBroSoDaDaSoDa_MoBroSoDaDaSoDaDa_MoBroSoDaDaSoDaSo_MoBroSoDaDaSoSo_MoBroSoDaDaSoSoDa_MoBroSoDaDaSoSoSo_MoBroSoDaSo_MoBroSoDaSoDa_MoBroSoDaSoSo_MoBroSoSoDa_MoBroSoSoDaDa_MoBroSoSoDaSo_MoBroSoSoSo_MoBroSoSoSoDa_MoBroSoSoSoSo_MoFaBroDaDaDaDa_MoFaBroDaDaDaDaDa_MoFaBroDaDaDaDaSo_MoFaBroDaDaDaSo_MoFaBroDaDaDaSoDa_MoFaBroDaDaDaSoSo_MoFaBroDaDaSoDa_MoFaBroDaDaSoDaDa_MoFaBroDaDaSoDaSo_MoFaBroDaDaSoSo_MoFaBroDaDaSoSoDa_MoFaBroDaDaSoSoSo_MoFaBroDaSoDaDa_MoFaBroDaSoDaSo_MoFaBroDaSoSoDa_MoFaBroDaSoSoSo_MoFaBroSoDaDaDa_MoFaBroSoDaDaDaDa_MoFaBroSoDaDaDaDaDa_MoFaBroSoDaDaDaDaSo_MoFaBroSoDaDaDaSo_MoFaBroSoDaDaDaSoDa_MoFaBroSoDaDaDaSoSo_MoFaBroSoDaDaSo_MoFaBroSoDaDaSoDa_MoFaBroSoDaDaSoDaDa_MoFaBroSoDaDaSoDaSo_MoFaBroSoDaDaSoSo_MoFaBroSoDaDaSoSoDa_MoFaBroSoDaDaSoSoSo_MoFaBroSoDaSoDa_MoFaBroSoDaSoSo_MoFaBroSoSoDaDa_MoFaBroSoSoDaSo_MoFaBroSoSoSoDa_MoFaBroSoSoSoSo_MoFaSisDaDaDa_MoFaSisDaDaDaDa_MoFaSisDaDaDaSo_MoFaSisDaDaSo_MoFaSisDaDaSoDa_MoFaSisDaDaSoSo_MoFaSisDaSoDa_MoFaSisDaSoDaDa_MoFaSisDaSoDaSo_MoFaSisDaSoSo_MoFaSisDaSoSoDa_MoFaSisDaSoSoSo_MoFaSisSoDaDa_MoFaSisSoDaDaDa_MoFaSisSoDaDaSo_MoFaSisSoDaSo_MoFaSisSoDaSoDa_MoFaSisSoDaSoSo_MoFaSisSoSoDa_MoFaSisSoSoDaDa_MoFaSisSoSoDaSo_MoFaSisSoSoSo_MoFaSisSoSoSoDa_MoFaSisSoSoSoSo_MoHsisDaDaDa_MoHsisDaDaDaDa_MoHsisDaDaDaSo_MoHsisDaDaSo_MoHsisDaDaSoDa_MoHsisDaDaSoSo_MoHsisDaSoDa_MoHsisDaSoDaDa_MoHsisDaSoDaSo_MoHsisDaSoSo_MoHsisDaSoSoDa_MoHsisDaSoSoSo_MoHsisSoDaDa_MoHsisSoDaDaDa_MoHsisSoDaDaSo_MoHsisSoDaSo_MoHsisSoDaSoDa_MoHsisSoDaSoSo_MoHsisSoSoDa_MoHsisSoSoDaDa_MoHsisSoSoDaSo_MoHsisSoSoSo_MoHsisSoSoSoDa_MoHsisSoSoSoSo_MoMoBroDaDaDaDa_MoMoBroDaDaDaDaDa_MoMoBroDaDaDaDaDaDa_MoMoBroDaDaDaDaDaSo_MoMoBroDaDaDaDaSo_MoMoBroDaDaDaDaSoDa_MoMoBroDaDaDaDaSoSo_MoMoBroDaDaDaSo_MoMoBroDaDaDaSoDa_MoMoBroDaDaDaSoDaDa_MoMoBroDaDaDaSoDaSo_MoMoBroDaDaDaSoSo_MoMoBroDaDaDaSoSoDa_MoMoBroDaDaDaSoSoSo_MoMoBroDaDaSoDa_MoMoBroDaDaSoDaDa_MoMoBroDaDaSoDaDaDa_MoMoBroDaDaSoDaDaSo_MoMoBroDaDaSoDaSo_MoMoBroDaDaSoDaSoDa_MoMoBroDaDaSoDaSoSo_MoMoBroDaDaSoSo_MoMoBroDaDaSoSoDa_MoMoBroDaDaSoSoDaDa_MoMoBroDaDaSoSoDaSo_MoMoBroDaDaSoSoSo_MoMoBroDaDaSoSoSoDa_MoMoBroDaDaSoSoSoSo_MoMoBroDaSoDaDa_MoMoBroDaSoDaSo_MoMoBroDaSoSoDa_MoMoBroDaSoSoSo_MoMoBroSoDaDaDa_MoMoBroSoDaDaDaDaDa_MoMoBroSoDaDaDaDaDaDa_MoMoBroSoDaDaDaDaDaSo_MoMoBroSoDaDaDaDaSo_MoMoBroSoDaDaDaDaSoDa_MoMoBroSoDaDaDaDaSoSo_MoMoBroSoDaDaDaSoDa_MoMoBroSoDaDaDaSoDaDa_MoMoBroSoDaDaDaSoDaSo_MoMoBroSoDaDaDaSoSo_MoMoBroSoDaDaDaSoSoDa_MoMoBroSoDaDaDaSoSoSo_MoMoBroSoDaDaSo_MoMoBroSoDaDaSoDaDa_MoMoBroSoDaDaSoDaDaDa_MoMoBroSoDaDaSoDaDaSo_MoMoBroSoDaDaSoDaSo_MoMoBroSoDaDaSoDaSoDa_MoMoBroSoDaDaSoDaSoSo_MoMoBroSoDaDaSoSoDa_MoMoBroSoDaDaSoSoDaDa_MoMoBroSoDaDaSoSoDaSo_MoMoBroSoDaDaSoSoSo_MoMoBroSoDaDaSoSoSoDa_MoMoBroSoDaDaSoSoSoSo_MoMoBroSoDaSoDa_MoMoBroSoDaSoSo_MoMoBroSoSoDaDa_MoMoBroSoSoDaSo_MoMoBroSoSoSoDa_MoMoBroSoSoSoSo_MoMoFaBroDaDaDaDaDa_MoMoFaBroDaDaDaDaDaDa_MoMoFaBroDaDaDaDaDaSo_MoMoFaBroDaDaDaDaSo_MoMoFaBroDaDaDaDaSoDa_MoMoFaBroDaDaDaDaSoSo_MoMoFaBroDaDaDaSoDa_MoMoFaBroDaDaDaSoDaDa_MoMoFaBroDaDaDaSoDaSo_MoMoFaBroDaDaDaSoSo_MoMoFaBroDaDaDaSoSoDa_MoMoFaBroDaDaDaSoSoSo_MoMoFaBroDaDaSoDaDa_MoMoFaBroDaDaSoDaDaDa_MoMoFaBroDaDaSoDaDaSo_MoMoFaBroDaDaSoDaSo_MoMoFaBroDaDaSoDaSoDa_MoMoFaBroDaDaSoDaSoSo_MoMoFaBroDaDaSoSoDa_MoMoFaBroDaDaSoSoDaDa_MoMoFaBroDaDaSoSoDaSo_MoMoFaBroDaDaSoSoSo_MoMoFaBroDaDaSoSoSoDa_MoMoFaBroDaDaSoSoSoSo_MoMoSisDaDaDaDa_MoMoSisDaDaDaDaDa_MoMoSisDaDaDaDaSo_MoMoSisDaDaDaSo_MoMoSisDaDaDaSoDa_MoMoSisDaDaDaSoSo_MoMoSisDaDaSoDa_MoMoSisDaDaSoDaDa_MoMoSisDaDaSoDaSo_MoMoSisDaDaSoSo_MoMoSisDaDaSoSoDa_MoMoSisDaDaSoSoSo_MoMoSisDaSoDaDa_MoMoSisDaSoDaDaDa_MoMoSisDaSoDaDaSo_MoMoSisDaSoDaSo_MoMoSisDaSoDaSoDa_MoMoSisDaSoDaSoSo_MoMoSisDaSoSoDa_MoMoSisDaSoSoDaDa_MoMoSisDaSoSoDaSo_MoMoSisDaSoSoSo_MoMoSisDaSoSoSoDa_MoMoSisDaSoSoSoSo_MoMoSisSoDaDaDa_MoMoSisSoDaDaDaDa_MoMoSisSoDaDaDaDaDa_MoMoSisSoDaDaDaDaSo_MoMoSisSoDaDaDaSo_MoMoSisSoDaDaDaSoDa_MoMoSisSoDaDaDaSoSo_MoMoSisSoDaDaSo_MoMoSisSoDaDaSoDa_MoMoSisSoDaDaSoDaDa_MoMoSisSoDaDaSoDaSo_MoMoSisSoDaDaSoSo_MoMoSisSoDaDaSoSoDa_MoMoSisSoDaDaSoSoSo_MoMoSisSoDaSoDa_MoMoSisSoDaSoSo_MoMoSisSoSoDaDa_MoMoSisSoSoDaSo_MoMoSisSoSoSoDa_MoMoSisSoSoSoSo_MoSisDaDaDa_MoSisDaDaDaDa_MoSisDaDaDaSo_MoSisDaDaSo_MoSisDaDaSoDa_MoSisDaDaSoSo_MoSisDaSoDa_MoSisDaSoDaDa_MoSisDaSoDaSo_MoSisDaSoSo_MoSisDaSoSoDa_MoSisDaSoSoSo_MoSisSoDaDa_MoSisSoDaDaDa_MoSisSoDaDaSo_MoSisSoDaSo_MoSisSoDaSoDa_MoSisSoDaSoSo_MoSisSoSoDa_MoSisSoSoDaDa_MoSisSoSoDaSo_MoSisSoSoSo_MoSisSoSoSoDa_MoSisSoSoSoSo_SisDaDa_SisDaDaDa_SisDaDaSo_SisDaSo_SisDaSoDa_SisDaSoSo_SisSoDa_SisSoDaDa_SisSoDaSo_SisSoSo_SisSoSoDa_SisSoSoSo_SoDa_SoDaDa_SoDaSo_SoSo_SoSoDa_SoSoSo_SoWiBro_SoWiBroSo_SoWiBroSoSo_SoWiFaBroSo_SoWiFaBroSoSo_SoWiFaBroSoSoSo_SoWiFaFaBroSoSo_SoWiFaMoSisSoSo_SoWiMoBroDaSo_SoWiMoBroDaSoSo_SoWiMoBroSoDaSo_SoWiMoFaBroDaSo_SoWiMoFaHsisSo_SoWiMoFaSisSo_SoWiMoHsisSo_SoWiMoMoSisDaSo_SoWiMoSisSo_SoWiMoSisSoSo_SoWiMoSisSoSoSo_WiFaBroDaDaDa_WiFaBroDaDaDaDa_WiFaBroDaDaDaSo_WiFaBroDaDaSo_WiFaBroDaDaSoDa_WiFaBroDaDaSoSo_WiFaBroDaSoDa_WiFaBroDaSoDaDa_WiFaBroDaSoDaSo_WiFaBroDaSoSo_WiFaBroDaSoSoDa_WiFaBroDaSoSoSo_WiFaSisDaDa_WiFaSisDaDaDa_WiFaSisDaDaSo_WiFaSisDaSo_WiFaSisDaSoDa_WiFaSisDaSoSo_WiFaSisSoDa_WiFaSisSoDaDa_WiFaSisSoDaSo_WiFaSisSoSo_WiFaSisSoSoDa_WiFaSisSoSoSo_WiHsisDaDa_WiHsisDaDaDa_WiHsisDaDaSo_WiHsisDaSo_WiHsisDaSoDa_WiHsisDaSoSo_WiHsisSoDa_WiHsisSoDaDa_WiHsisSoDaSo_WiHsisSoSo_WiHsisSoSoDa_WiHsisSoSoSo_WiMoBroDaDaDaDa_WiMoBroDaDaDaDaDa_WiMoBroDaDaDaDaSo_WiMoBroDaDaDaSo_WiMoBroDaDaDaSoDa_WiMoBroDaDaDaSoSo_WiMoBroDaDaSoDa_WiMoBroDaDaSoDaDa_WiMoBroDaDaSoDaSo_WiMoBroDaDaSoSo_WiMoBroDaDaSoSoDa_WiMoBroDaDaSoSoSo_WiMoBroSoDaDaDaDa_WiMoBroSoDaDaDaDaDa_WiMoBroSoDaDaDaDaSo_WiMoBroSoDaDaDaSo_WiMoBroSoDaDaDaSoDa_WiMoBroSoDaDaDaSoSo_WiMoBroSoDaDaSoDa_WiMoBroSoDaDaSoDaDa_WiMoBroSoDaDaSoDaSo_WiMoBroSoDaDaSoSo_WiMoBroSoDaDaSoSoDa_WiMoBroSoDaDaSoSoSo_WiMoFaBroDaDaDaDa_WiMoFaBroDaDaDaDaDa_WiMoFaBroDaDaDaDaSo_WiMoFaBroDaDaDaSo_WiMoFaBroDaDaDaSoDa_WiMoFaBroDaDaDaSoSo_WiMoFaBroDaDaSoDa_WiMoFaBroDaDaSoDaDa_WiMoFaBroDaDaSoDaSo_WiMoFaBroDaDaSoSo_WiMoFaBroDaDaSoSoDa_WiMoFaBroDaDaSoSoSo_WiMoHsisDaDaDa_WiMoHsisDaDaSo_WiMoHsisDaSoDa_WiMoHsisDaSoSo_WiMoMoBroDaDaDaDaDa_WiMoMoBroDaDaDaDaSo_WiMoMoBroDaDaDaSoDa_WiMoMoBroDaDaDaSoSo_WiMoSisDaDaDa_WiMoSisDaDaDaDa_WiMoSisDaDaDaSo_WiMoSisDaDaSo_WiMoSisDaDaSoDa_WiMoSisDaDaSoSo_WiMoSisDaSoDa_WiMoSisDaSoDaDa_WiMoSisDaSoDaSo_WiMoSisDaSoSo_WiMoSisDaSoSoDa_WiMoSisDaSoSoSo_WiSisDaDa_WiSisDaDaDa_WiSisDaDaSo_WiSisDaSo_WiSisDaSoDa_WiSisDaSoSo_WiSisSoDa_WiSisSoDaDa_WiSisSoDaSo_WiSisSoSo_WiSisSoSoDa_WiSisSoSoSo"}
;; 0
%witucpa:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).
;; 1
%witucpa:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).
;; 2
%witucpa:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
 son(A, Ego), son(B, A), son(Alter, B).
;; 3
%witucpa:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
 son(A, Ego), son(B, A), daughter(Alter, B).
;; 4
%witucpa:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
 son(A, Ego), daughter(B, A), son(Alter, B).
;; 5
%witucpa:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
 son(A, Ego), daughter(B, A), daughter(Alter, B).
;; 6
%witucpa:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).
;; 7
%witucpa:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).
;; 8
%witucpa:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
 daughter(A, Ego), son(B, A), son(Alter, B).
;; 9
%witucpa:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
 daughter(A, Ego), son(B, A), daughter(Alter, B).
;; 10
%witucpa:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
 daughter(A, Ego), daughter(B, A), son(Alter, B).
;; 11
%witucpa:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
 daughter(A, Ego), daughter(B, A), daughter(Alter, B).
;; 12
%witucpa:1, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(Alter, D).
;; 13
%witucpa:1, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(Alter, D).
;; 14
%witucpa:1, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), son(Alter, E).
;; 15
%witucpa:1, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), daughter(Alter, E).
;; 16
%witucpa:1, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), son(Alter, E).
;; 17
%witucpa:1, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 18
%witucpa:1, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(Alter, D).
;; 19
%witucpa:1, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(Alter, D).
;; 20
%witucpa:1, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), son(Alter, E).
;; 21
%witucpa:1, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 22
%witucpa:1, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 23
%witucpa:1, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), daughter(Alter, E).
;; 24
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), son(F, E), son(Alter, F).
;; 25
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), son(F, E), daughter(Alter, F).
;; 26
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), son(F, E), son(G, F), son(Alter, G).
;; 27
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), son(F, E), son(G, F), daughter(Alter, G).
;; 28
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), son(F, E), daughter(G, F), son(Alter, G).
;; 29
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), son(F, E), daughter(G, F), daughter(Alter, G).
;; 30
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), daughter(F, E), son(Alter, F).
;; 31
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), daughter(F, E), daughter(Alter, F).
;; 32
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), daughter(F, E), son(G, F), son(Alter, G).
;; 33
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), daughter(F, E), son(G, F), daughter(Alter, G).
;; 34
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), daughter(F, E), daughter(G, F), son(Alter, G).
;; 35
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 36
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), son(I, H), son(Alter, I).
;; 37
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaDaDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), son(I, H), daughter(Alter, I).
;; 38
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaDaSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), son(I, H), son(J, I), son(Alter, J).
;; 39
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaDaSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), son(I, H), son(J, I), daughter(Alter, J).
;; 40
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaDaSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), son(I, H), daughter(J, I), son(Alter, J).
;; 41
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaDaSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), son(I, H), daughter(J, I), daughter(Alter, J).
;; 42
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), daughter(I, H), son(Alter, I).
;; 43
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), daughter(I, H), daughter(Alter, I).
;; 44
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), daughter(I, H), son(J, I), son(Alter, J).
;; 45
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaDaDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), daughter(I, H), son(J, I), daughter(Alter, J).
;; 46
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), daughter(I, H), daughter(J, I), son(Alter, J).
;; 47
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), daughter(I, H), daughter(J, I), daughter(Alter, J).
;; 48
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroSoDaDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), not(equal(I, Ego)), son(J, I), son(Alter, J).
;; 49
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroSoDaDaDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), not(equal(I, Ego)), son(J, I), daughter(Alter, J).
;; 50
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroSoDaDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), not(equal(I, Ego)), daughter(J, I), son(Alter, J).
;; 51
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroSoDaDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), not(equal(I, Ego)), daughter(J, I), daughter(Alter, J).
;; 52
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoHsisDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), not(equal(F, Ego)), son(G, F), son(Alter, G).
;; 53
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoHsisDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), not(equal(F, Ego)), son(G, F), daughter(Alter, G).
;; 54
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), not(equal(F, Ego)), son(G, F), son(H, G), son(Alter, H).
;; 55
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), not(equal(F, Ego)), son(G, F), son(H, G), daughter(Alter, H).
;; 56
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), not(equal(F, Ego)), son(G, F), daughter(H, G), son(Alter, H).
;; 57
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), not(equal(F, Ego)), son(G, F), daughter(H, G), daughter(Alter, H).
;; 58
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoHsisDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), not(equal(F, Ego)), daughter(G, F), son(Alter, G).
;; 59
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoHsisDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), not(equal(F, Ego)), daughter(G, F), daughter(Alter, G).
;; 60
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), not(equal(F, Ego)), daughter(G, F), son(H, G), son(Alter, H).
;; 61
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), not(equal(F, Ego)), daughter(G, F), son(H, G), daughter(Alter, H).
;; 62
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), not(equal(F, Ego)), daughter(G, F), daughter(H, G), son(Alter, H).
;; 63
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), not(equal(F, Ego)), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 64
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoHsisDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), not(equal(F, Ego)), son(G, F), son(Alter, G).
;; 65
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoHsisDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), not(equal(F, Ego)), son(G, F), daughter(Alter, G).
;; 66
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), not(equal(F, Ego)), son(G, F), son(H, G), son(Alter, H).
;; 67
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), not(equal(F, Ego)), son(G, F), son(H, G), daughter(Alter, H).
;; 68
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), not(equal(F, Ego)), son(G, F), daughter(H, G), son(Alter, H).
;; 69
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), not(equal(F, Ego)), son(G, F), daughter(H, G), daughter(Alter, H).
;; 70
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoHsisDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), not(equal(F, Ego)), daughter(G, F), son(Alter, G).
;; 71
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoHsisDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), not(equal(F, Ego)), daughter(G, F), daughter(Alter, G).
;; 72
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), not(equal(F, Ego)), daughter(G, F), son(H, G), son(Alter, H).
;; 73
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), not(equal(F, Ego)), daughter(G, F), son(H, G), daughter(Alter, H).
;; 74
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), not(equal(F, Ego)), daughter(G, F), daughter(H, G), son(Alter, H).
;; 75
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), not(equal(F, Ego)), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 76
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(H, G), son(Alter, H).
;; 77
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(H, G), daughter(Alter, H).
;; 78
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(H, G), son(I, H), son(Alter, I).
;; 79
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(H, G), son(I, H), daughter(Alter, I).
;; 80
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(H, G), daughter(I, H), son(Alter, I).
;; 81
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(H, G), daughter(I, H), daughter(Alter, I).
;; 82
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), son(Alter, H).
;; 83
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), daughter(Alter, H).
;; 84
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), son(I, H), son(Alter, I).
;; 85
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), son(I, H), daughter(Alter, I).
;; 86
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), daughter(I, H), son(Alter, I).
;; 87
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 88
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), son(G, F), son(Alter, G).
;; 89
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), son(G, F), daughter(Alter, G).
;; 90
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), son(G, F), son(H, G), son(Alter, H).
;; 91
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), son(G, F), son(H, G), daughter(Alter, H).
;; 92
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), son(G, F), daughter(H, G), son(Alter, H).
;; 93
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), son(G, F), daughter(H, G), daughter(Alter, H).
;; 94
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), daughter(G, F), son(Alter, G).
;; 95
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), daughter(G, F), daughter(Alter, G).
;; 96
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), daughter(G, F), son(H, G), son(Alter, H).
;; 97
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), daughter(G, F), son(H, G), daughter(Alter, H).
;; 98
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), daughter(G, F), daughter(H, G), son(Alter, H).
;; 99
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 100
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroSoDaDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(I, H), son(Alter, I).
;; 101
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroSoDaDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(I, H), daughter(Alter, I).
;; 102
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoFaBroSoDaDaSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(I, H), son(J, I), son(Alter, J).
;; 103
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoFaBroSoDaDaSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(I, H), son(J, I), daughter(Alter, J).
;; 104
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoFaBroSoDaDaSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(I, H), daughter(J, I), son(Alter, J).
;; 105
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoFaBroSoDaDaSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(I, H), daughter(J, I), daughter(Alter, J).
;; 106
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroSoDaDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(I, H), son(Alter, I).
;; 107
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroSoDaDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(I, H), daughter(Alter, I).
;; 108
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoFaBroSoDaDaDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(I, H), son(J, I), son(Alter, J).
;; 109
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoFaBroSoDaDaDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(I, H), son(J, I), daughter(Alter, J).
;; 110
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoFaBroSoDaDaDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(I, H), daughter(J, I), son(Alter, J).
;; 111
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoFaBroSoDaDaDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(I, H), daughter(J, I), daughter(Alter, J).
;; 112
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisSoDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(I, H), son(Alter, I).
;; 113
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisSoDaDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(I, H), daughter(Alter, I).
;; 114
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoSisSoDaDaSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(I, H), son(J, I), son(Alter, J).
;; 115
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoSisSoDaDaSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(I, H), son(J, I), daughter(Alter, J).
;; 116
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoSisSoDaDaSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(I, H), daughter(J, I), son(Alter, J).
;; 117
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoSisSoDaDaSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(I, H), daughter(J, I), daughter(Alter, J).
;; 118
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisSoDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(I, H), son(Alter, I).
;; 119
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisSoDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(I, H), daughter(Alter, I).
;; 120
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoSisSoDaDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(I, H), son(J, I), son(Alter, J).
;; 121
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoSisSoDaDaDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(I, H), son(J, I), daughter(Alter, J).
;; 122
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoSisSoDaDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(I, H), daughter(J, I), son(Alter, J).
;; 123
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoSisSoDaDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(I, H), daughter(J, I), daughter(Alter, J).
;; 124
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(H, G), son(Alter, H).
;; 125
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(H, G), daughter(Alter, H).
;; 126
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-5,  PC=11, S=0, Star=0,  {MoBroSoDaDaSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(H, G), son(I, H), son(Alter, I).
;; 127
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-5,  PC=11, S=0, Star=0,  {MoBroSoDaDaSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(H, G), son(I, H), daughter(Alter, I).
;; 128
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-5,  PC=11, S=0, Star=0,  {MoBroSoDaDaSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(H, G), daughter(I, H), son(Alter, I).
;; 129
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-5,  PC=11, S=0, Star=0,  {MoBroSoDaDaSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(H, G), daughter(I, H), daughter(Alter, I).
;; 130
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), son(Alter, H).
;; 131
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), daughter(Alter, H).
;; 132
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-5,  PC=11, S=0, Star=0,  {MoBroSoDaDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), son(I, H), son(Alter, I).
;; 133
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-5,  PC=11, S=0, Star=0,  {MoBroSoDaDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), son(I, H), daughter(Alter, I).
;; 134
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-5,  PC=11, S=0, Star=0,  {MoBroSoDaDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), daughter(I, H), son(Alter, I).
;; 135
%witucpa:1, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-5,  PC=11, S=0, Star=0,  {MoBroSoDaDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 136
%witucpa:1, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HsisSoSo}  
 mother(A, Ego), father(B, Ego), wife(C, B), daughter(D, C), daughter(D, B), not(equal(C, A)), son(E, D), son(Alter, E).
;; 137
%witucpa:1, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {HsisSoDa}  
 mother(A, Ego), father(B, Ego), wife(C, B), daughter(D, C), daughter(D, B), not(equal(C, A)), son(E, D), daughter(Alter, E).
;; 138
%witucpa:1, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HsisSoSoSo}  
 mother(A, Ego), father(B, Ego), wife(C, B), daughter(D, C), daughter(D, B), not(equal(C, A)), son(E, D), son(F, E), son(Alter, F).
;; 139
%witucpa:1, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HsisSoSoDa}  
 mother(A, Ego), father(B, Ego), wife(C, B), daughter(D, C), daughter(D, B), not(equal(C, A)), son(E, D), son(F, E), daughter(Alter, F).
;; 140
%witucpa:1, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HsisSoDaSo}  
 mother(A, Ego), father(B, Ego), wife(C, B), daughter(D, C), daughter(D, B), not(equal(C, A)), son(E, D), daughter(F, E), son(Alter, F).
;; 141
%witucpa:1, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HsisSoDaDa}  
 mother(A, Ego), father(B, Ego), wife(C, B), daughter(D, C), daughter(D, B), not(equal(C, A)), son(E, D), daughter(F, E), daughter(Alter, F).
;; 142
%witucpa:1, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HsisDaSo}  
 mother(A, Ego), father(B, Ego), wife(C, B), daughter(D, C), daughter(D, B), not(equal(C, A)), daughter(E, D), son(Alter, E).
;; 143
%witucpa:1, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {HsisDaDa}  
 mother(A, Ego), father(B, Ego), wife(C, B), daughter(D, C), daughter(D, B), not(equal(C, A)), daughter(E, D), daughter(Alter, E).
;; 144
%witucpa:1, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HsisDaSoSo}  
 mother(A, Ego), father(B, Ego), wife(C, B), daughter(D, C), daughter(D, B), not(equal(C, A)), daughter(E, D), son(F, E), son(Alter, F).
;; 145
%witucpa:1, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HsisDaSoDa}  
 mother(A, Ego), father(B, Ego), wife(C, B), daughter(D, C), daughter(D, B), not(equal(C, A)), daughter(E, D), son(F, E), daughter(Alter, F).
;; 146
%witucpa:1, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HsisDaDaSo}  
 mother(A, Ego), father(B, Ego), wife(C, B), daughter(D, C), daughter(D, B), not(equal(C, A)), daughter(E, D), daughter(F, E), son(Alter, F).
;; 147
%witucpa:1, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HsisDaDaDa}  
 mother(A, Ego), father(B, Ego), wife(C, B), daughter(D, C), daughter(D, B), not(equal(C, A)), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 148
%witucpa:1, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HsisSoSo}  
 mother(A, Ego), father(B, Ego), husband(C, A), daughter(D, C), daughter(D, A), not(equal(C, B)), son(E, D), son(Alter, E).
;; 149
%witucpa:1, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {HsisSoDa}  
 mother(A, Ego), father(B, Ego), husband(C, A), daughter(D, C), daughter(D, A), not(equal(C, B)), son(E, D), daughter(Alter, E).
;; 150
%witucpa:1, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HsisSoSoSo}  
 mother(A, Ego), father(B, Ego), husband(C, A), daughter(D, C), daughter(D, A), not(equal(C, B)), son(E, D), son(F, E), son(Alter, F).
;; 151
%witucpa:1, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HsisSoSoDa}  
 mother(A, Ego), father(B, Ego), husband(C, A), daughter(D, C), daughter(D, A), not(equal(C, B)), son(E, D), son(F, E), daughter(Alter, F).
;; 152
%witucpa:1, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HsisSoDaSo}  
 mother(A, Ego), father(B, Ego), husband(C, A), daughter(D, C), daughter(D, A), not(equal(C, B)), son(E, D), daughter(F, E), son(Alter, F).
;; 153
%witucpa:1, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HsisSoDaDa}  
 mother(A, Ego), father(B, Ego), husband(C, A), daughter(D, C), daughter(D, A), not(equal(C, B)), son(E, D), daughter(F, E), daughter(Alter, F).
;; 154
%witucpa:1, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HsisDaSo}  
 mother(A, Ego), father(B, Ego), husband(C, A), daughter(D, C), daughter(D, A), not(equal(C, B)), daughter(E, D), son(Alter, E).
;; 155
%witucpa:1, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {HsisDaDa}  
 mother(A, Ego), father(B, Ego), husband(C, A), daughter(D, C), daughter(D, A), not(equal(C, B)), daughter(E, D), daughter(Alter, E).
;; 156
%witucpa:1, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HsisDaSoSo}  
 mother(A, Ego), father(B, Ego), husband(C, A), daughter(D, C), daughter(D, A), not(equal(C, B)), daughter(E, D), son(F, E), son(Alter, F).
;; 157
%witucpa:1, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HsisDaSoDa}  
 mother(A, Ego), father(B, Ego), husband(C, A), daughter(D, C), daughter(D, A), not(equal(C, B)), daughter(E, D), son(F, E), daughter(Alter, F).
;; 158
%witucpa:1, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HsisDaDaSo}  
 mother(A, Ego), father(B, Ego), husband(C, A), daughter(D, C), daughter(D, A), not(equal(C, B)), daughter(E, D), daughter(F, E), son(Alter, F).
;; 159
%witucpa:1, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HsisDaDaDa}  
 mother(A, Ego), father(B, Ego), husband(C, A), daughter(D, C), daughter(D, A), not(equal(C, B)), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 160
%witucpa:1, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 161
%witucpa:1, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 162
%witucpa:1, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 163
%witucpa:1, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 164
%witucpa:1, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 165
%witucpa:1, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 166
%witucpa:1, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 167
%witucpa:1, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 168
%witucpa:1, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 169
%witucpa:1, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 170
%witucpa:1, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 171
%witucpa:1, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 172
%witucpa:1, sister[eq]2a:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 173
%witucpa:1, sister[eq]2a:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 174
%witucpa:1, sister[eq]2a:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 175
%witucpa:1, sister[eq]2a:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 176
%witucpa:1, sister[eq]2a:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 177
%witucpa:1, sister[eq]2a:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 178
%witucpa:1, sister[eq]2a:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 179
%witucpa:1, sister[eq]2a:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 180
%witucpa:1, sister[eq]2a:1, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 181
%witucpa:1, sister[eq]2a:1, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 182
%witucpa:1, sister[eq]2a:1, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 183
%witucpa:1, sister[eq]2a:1, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 184
%witucpa:1, sister[eq]2a:1, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 185
%witucpa:1, sister[eq]2a:1, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 186
%witucpa:1, sister[eq]2a:1, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 187
%witucpa:1, sister[eq]2a:1, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 188
%witucpa:1, sister[eq]2a:1, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 189
%witucpa:1, sister[eq]2a:1, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 190
%witucpa:1, sister[eq]2a:1, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 191
%witucpa:1, sister[eq]2a:1, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 192
%witucpa:2, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 193
%witucpa:2, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 194
%witucpa:2, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 195
%witucpa:2, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 196
%witucpa:2, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 197
%witucpa:2, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 198
%witucpa:2, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 199
%witucpa:2, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 200
%witucpa:2, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 201
%witucpa:2, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 202
%witucpa:2, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 203
%witucpa:2, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 204
%witucpa:2, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 205
%witucpa:2, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 206
%witucpa:2, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 207
%witucpa:2, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 208
%witucpa:2, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 209
%witucpa:2, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 210
%witucpa:2, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 211
%witucpa:2, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 212
%witucpa:2, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 213
%witucpa:2, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 214
%witucpa:2, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 215
%witucpa:2, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 216
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), son(H, G), son(Alter, H).
;; 217
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), son(H, G), daughter(Alter, H).
;; 218
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaSoSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 219
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaSoSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 220
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaSoSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 221
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaSoSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 222
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), daughter(H, G), son(Alter, H).
;; 223
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), daughter(H, G), daughter(Alter, H).
;; 224
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaSoDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 225
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaSoDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 226
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaSoDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 227
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaSoDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 228
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), son(H, G), son(Alter, H).
;; 229
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), son(H, G), daughter(Alter, H).
;; 230
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaDaSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 231
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaDaSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 232
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaDaSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 233
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaDaSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 234
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), daughter(H, G), son(Alter, H).
;; 235
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 236
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 237
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaDaDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 238
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 239
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 240
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoFaBroDaDaSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(J, I), son(Alter, J).
;; 241
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoFaBroDaDaSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(J, I), daughter(Alter, J).
;; 242
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=13, S=0, Star=0,  {MoMoFaBroDaDaSoSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(J, I), son(K, J), son(Alter, K).
;; 243
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=13, S=0, Star=0,  {MoMoFaBroDaDaSoSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(J, I), son(K, J), daughter(Alter, K).
;; 244
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=13, S=0, Star=0,  {MoMoFaBroDaDaSoSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(J, I), daughter(K, J), son(Alter, K).
;; 245
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=13, S=0, Star=0,  {MoMoFaBroDaDaSoSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(J, I), daughter(K, J), daughter(Alter, K).
;; 246
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoFaBroDaDaSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(J, I), son(Alter, J).
;; 247
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoFaBroDaDaSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(J, I), daughter(Alter, J).
;; 248
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=13, S=0, Star=0,  {MoMoFaBroDaDaSoDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(J, I), son(K, J), son(Alter, K).
;; 249
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=13, S=0, Star=0,  {MoMoFaBroDaDaSoDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(J, I), son(K, J), daughter(Alter, K).
;; 250
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=13, S=0, Star=0,  {MoMoFaBroDaDaSoDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(J, I), daughter(K, J), son(Alter, K).
;; 251
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=13, S=0, Star=0,  {MoMoFaBroDaDaSoDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(J, I), daughter(K, J), daughter(Alter, K).
;; 252
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoFaBroDaDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(J, I), son(Alter, J).
;; 253
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoFaBroDaDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(J, I), daughter(Alter, J).
;; 254
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=13, S=0, Star=0,  {MoMoFaBroDaDaDaSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(J, I), son(K, J), son(Alter, K).
;; 255
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=13, S=0, Star=0,  {MoMoFaBroDaDaDaSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(J, I), son(K, J), daughter(Alter, K).
;; 256
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=13, S=0, Star=0,  {MoMoFaBroDaDaDaSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(J, I), daughter(K, J), son(Alter, K).
;; 257
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=13, S=0, Star=0,  {MoMoFaBroDaDaDaSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(J, I), daughter(K, J), daughter(Alter, K).
;; 258
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoFaBroDaDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(J, I), son(Alter, J).
;; 259
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoFaBroDaDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(J, I), daughter(Alter, J).
;; 260
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=13, S=0, Star=0,  {MoMoFaBroDaDaDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(J, I), son(K, J), son(Alter, K).
;; 261
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=13, S=0, Star=0,  {MoMoFaBroDaDaDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(J, I), son(K, J), daughter(Alter, K).
;; 262
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=13, S=0, Star=0,  {MoMoFaBroDaDaDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(J, I), daughter(K, J), son(Alter, K).
;; 263
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=13, S=0, Star=0,  {MoMoFaBroDaDaDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(J, I), daughter(K, J), daughter(Alter, K).
;; 264
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaDaSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), son(I, H), son(Alter, I).
;; 265
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaDaSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), son(I, H), daughter(Alter, I).
;; 266
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaSoSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), son(I, H), son(J, I), son(Alter, J).
;; 267
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaSoSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), son(I, H), son(J, I), daughter(Alter, J).
;; 268
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaSoSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), son(I, H), daughter(J, I), son(Alter, J).
;; 269
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaSoSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), son(I, H), daughter(J, I), daughter(Alter, J).
;; 270
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaDaSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), daughter(I, H), son(Alter, I).
;; 271
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaDaSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), daughter(I, H), daughter(Alter, I).
;; 272
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaSoDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), daughter(I, H), son(J, I), son(Alter, J).
;; 273
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaSoDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), daughter(I, H), son(J, I), daughter(Alter, J).
;; 274
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaSoDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), daughter(I, H), daughter(J, I), son(Alter, J).
;; 275
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaSoDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), daughter(I, H), daughter(J, I), daughter(Alter, J).
;; 276
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), son(I, H), son(Alter, I).
;; 277
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaDaDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), son(I, H), daughter(Alter, I).
;; 278
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaDaSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), son(I, H), son(J, I), son(Alter, J).
;; 279
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaDaSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), son(I, H), son(J, I), daughter(Alter, J).
;; 280
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaDaSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), son(I, H), daughter(J, I), son(Alter, J).
;; 281
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaDaSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), son(I, H), daughter(J, I), daughter(Alter, J).
;; 282
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), daughter(I, H), son(Alter, I).
;; 283
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 284
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), daughter(I, H), son(J, I), son(Alter, J).
;; 285
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaDaDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), daughter(I, H), son(J, I), daughter(Alter, J).
;; 286
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), daughter(I, H), daughter(J, I), son(Alter, J).
;; 287
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), daughter(I, H), daughter(J, I), daughter(Alter, J).
;; 288
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroSoDaDaSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(J, I), son(Alter, J).
;; 289
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroSoDaDaSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(J, I), daughter(Alter, J).
;; 290
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-5,  PC=13, S=0, Star=0,  {MoMoBroSoDaDaSoSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(J, I), son(K, J), son(Alter, K).
;; 291
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-5,  PC=13, S=0, Star=0,  {MoMoBroSoDaDaSoSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(J, I), son(K, J), daughter(Alter, K).
;; 292
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-5,  PC=13, S=0, Star=0,  {MoMoBroSoDaDaSoSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(J, I), daughter(K, J), son(Alter, K).
;; 293
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-5,  PC=13, S=0, Star=0,  {MoMoBroSoDaDaSoSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(J, I), daughter(K, J), daughter(Alter, K).
;; 294
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroSoDaDaSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(J, I), son(Alter, J).
;; 295
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroSoDaDaSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(J, I), daughter(Alter, J).
;; 296
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-5,  PC=13, S=0, Star=0,  {MoMoBroSoDaDaSoDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(J, I), son(K, J), son(Alter, K).
;; 297
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-5,  PC=13, S=0, Star=0,  {MoMoBroSoDaDaSoDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(J, I), son(K, J), daughter(Alter, K).
;; 298
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-5,  PC=13, S=0, Star=0,  {MoMoBroSoDaDaSoDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(J, I), daughter(K, J), son(Alter, K).
;; 299
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-5,  PC=13, S=0, Star=0,  {MoMoBroSoDaDaSoDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(J, I), daughter(K, J), daughter(Alter, K).
;; 300
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroSoDaDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(J, I), son(Alter, J).
;; 301
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroSoDaDaDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(J, I), daughter(Alter, J).
;; 302
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-5,  PC=13, S=0, Star=0,  {MoMoBroSoDaDaDaSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(J, I), son(K, J), son(Alter, K).
;; 303
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-5,  PC=13, S=0, Star=0,  {MoMoBroSoDaDaDaSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(J, I), son(K, J), daughter(Alter, K).
;; 304
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-5,  PC=13, S=0, Star=0,  {MoMoBroSoDaDaDaSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(J, I), daughter(K, J), son(Alter, K).
;; 305
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-5,  PC=13, S=0, Star=0,  {MoMoBroSoDaDaDaSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(J, I), daughter(K, J), daughter(Alter, K).
;; 306
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroSoDaDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(J, I), son(Alter, J).
;; 307
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroSoDaDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(J, I), daughter(Alter, J).
;; 308
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-5,  PC=13, S=0, Star=0,  {MoMoBroSoDaDaDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(J, I), son(K, J), son(Alter, K).
;; 309
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-5,  PC=13, S=0, Star=0,  {MoMoBroSoDaDaDaDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(J, I), son(K, J), daughter(Alter, K).
;; 310
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-5,  PC=13, S=0, Star=0,  {MoMoBroSoDaDaDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(J, I), daughter(K, J), son(Alter, K).
;; 311
%witucpa:2, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-5,  PC=13, S=0, Star=0,  {MoMoBroSoDaDaDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(J, I), daughter(K, J), daughter(Alter, K).
;; 312
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoHsisSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), son(G, F), son(Alter, G).
;; 313
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoHsisSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), son(G, F), daughter(Alter, G).
;; 314
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisSoSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 315
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisSoSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 316
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisSoSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 317
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisSoSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 318
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoHsisSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), daughter(G, F), son(Alter, G).
;; 319
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoHsisSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), daughter(G, F), daughter(Alter, G).
;; 320
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisSoDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 321
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisSoDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 322
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisSoDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 323
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisSoDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 324
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoHsisDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), son(G, F), son(Alter, G).
;; 325
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoHsisDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), son(G, F), daughter(Alter, G).
;; 326
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 327
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 328
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 329
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 330
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoHsisDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), daughter(G, F), son(Alter, G).
;; 331
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoHsisDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 332
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 333
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 334
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 335
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 336
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoHsisSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), son(G, F), son(Alter, G).
;; 337
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoHsisSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), son(G, F), daughter(Alter, G).
;; 338
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisSoSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 339
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisSoSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 340
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisSoSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 341
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisSoSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 342
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoHsisSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), daughter(G, F), son(Alter, G).
;; 343
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoHsisSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), daughter(G, F), daughter(Alter, G).
;; 344
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisSoDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 345
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisSoDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 346
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisSoDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 347
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisSoDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 348
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoHsisDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), son(G, F), son(Alter, G).
;; 349
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoHsisDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), son(G, F), daughter(Alter, G).
;; 350
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 351
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 352
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 353
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 354
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoHsisDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), daughter(G, F), son(Alter, G).
;; 355
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoHsisDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 356
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 357
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 358
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 359
%witucpa:2, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoHsisDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 360
%witucpa:2, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 361
%witucpa:2, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 362
%witucpa:2, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 363
%witucpa:2, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 364
%witucpa:2, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 365
%witucpa:2, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 366
%witucpa:2, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 367
%witucpa:2, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 368
%witucpa:2, sister[eq]2a:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 369
%witucpa:2, sister[eq]2a:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 370
%witucpa:2, sister[eq]2a:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 371
%witucpa:2, sister[eq]2a:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 372
%witucpa:2, sister[eq]2a:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 373
%witucpa:2, sister[eq]2a:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 374
%witucpa:2, sister[eq]2a:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 375
%witucpa:2, sister[eq]2a:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 376
%witucpa:2, sister[eq]2a:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 377
%witucpa:2, sister[eq]2a:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 378
%witucpa:2, sister[eq]2a:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 379
%witucpa:2, sister[eq]2a:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 380
%witucpa:2, sister[eq]2a:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 381
%witucpa:2, sister[eq]2a:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 382
%witucpa:2, sister[eq]2a:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 383
%witucpa:2, sister[eq]2a:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 384
%witucpa:2, sister[eq]2a:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 385
%witucpa:2, sister[eq]2a:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 386
%witucpa:2, sister[eq]2a:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 387
%witucpa:2, sister[eq]2a:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 388
%witucpa:2, sister[eq]2a:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 389
%witucpa:2, sister[eq]2a:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 390
%witucpa:2, sister[eq]2a:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 391
%witucpa:2, sister[eq]2a:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 392
%witucpa:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(Alter, D).
;; 393
%witucpa:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(Alter, D).
;; 394
%witucpa:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), son(Alter, E).
;; 395
%witucpa:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), daughter(Alter, E).
;; 396
%witucpa:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), son(Alter, E).
;; 397
%witucpa:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 398
%witucpa:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(Alter, D).
;; 399
%witucpa:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(Alter, D).
;; 400
%witucpa:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), son(Alter, E).
;; 401
%witucpa:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 402
%witucpa:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 403
%witucpa:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), daughter(Alter, E).
;; 404
%witucpa:3, brother[eq]a:1, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 405
%witucpa:3, brother[eq]a:1, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 406
%witucpa:3, brother[eq]a:1, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 407
%witucpa:3, brother[eq]a:1, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 408
%witucpa:3, brother[eq]a:1, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 409
%witucpa:3, brother[eq]a:1, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 410
%witucpa:3, brother[eq]a:1, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 411
%witucpa:3, brother[eq]a:1, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 412
%witucpa:3, brother[eq]a:1, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 413
%witucpa:3, brother[eq]a:1, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 414
%witucpa:3, brother[eq]a:1, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 415
%witucpa:3, brother[eq]a:1, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 416
%witucpa:3, brother[eq]a:2, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 417
%witucpa:3, brother[eq]a:2, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 418
%witucpa:3, brother[eq]a:2, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 419
%witucpa:3, brother[eq]a:2, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 420
%witucpa:3, brother[eq]a:2, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 421
%witucpa:3, brother[eq]a:2, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 422
%witucpa:3, brother[eq]a:2, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 423
%witucpa:3, brother[eq]a:2, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 424
%witucpa:3, brother[eq]a:2, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 425
%witucpa:3, brother[eq]a:2, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 426
%witucpa:3, brother[eq]a:2, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 427
%witucpa:3, brother[eq]a:2, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 428
%witucpa:3, brother[eq]a:3, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 429
%witucpa:3, brother[eq]a:3, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 430
%witucpa:3, brother[eq]a:3, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoSoSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 431
%witucpa:3, brother[eq]a:3, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 432
%witucpa:3, brother[eq]a:3, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 433
%witucpa:3, brother[eq]a:3, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 434
%witucpa:3, brother[eq]a:3, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 435
%witucpa:3, brother[eq]a:3, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 436
%witucpa:3, brother[eq]a:3, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 437
%witucpa:3, brother[eq]a:3, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 438
%witucpa:3, brother[eq]a:3, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 439
%witucpa:3, brother[eq]a:3, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 440
%witucpa:4, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(Alter, D).
;; 441
%witucpa:4, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(Alter, D).
;; 442
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 443
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 444
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 445
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 446
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 447
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 448
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 449
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 450
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 451
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 452
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 453
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 454
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 455
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 456
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 457
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 458
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 459
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 460
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 461
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 462
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 463
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 464
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 465
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 466
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 467
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 468
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 469
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 470
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 471
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 472
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 473
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 474
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 475
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 476
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 477
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 478
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 479
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 480
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 481
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 482
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 483
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 484
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 485
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 486
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 487
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 488
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 489
%witucpa:5, parents:0, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 490
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 491
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 492
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 493
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 494
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 495
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 496
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 497
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 498
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 499
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 500
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 501
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 502
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 503
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 504
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 505
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 506
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 507
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 508
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 509
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 510
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 511
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 512
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 513
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 514
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 515
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 516
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 517
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 518
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 519
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 520
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 521
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 522
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 523
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 524
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 525
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 526
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 527
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 528
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 529
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 530
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 531
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 532
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 533
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 534
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 535
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 536
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 537
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 538
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 539
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 540
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 541
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 542
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 543
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 544
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 545
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 546
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 547
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 548
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 549
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 550
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 551
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 552
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 553
%witucpa:5, parents:0, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 554
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 555
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 556
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 557
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 558
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 559
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 560
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 561
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 562
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 563
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 564
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 565
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 566
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 567
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 568
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 569
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 570
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 571
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 572
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 573
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 574
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 575
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 576
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 577
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 578
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 579
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 580
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 581
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 582
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 583
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 584
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 585
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 586
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 587
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 588
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 589
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 590
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 591
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 592
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 593
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 594
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 595
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 596
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 597
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 598
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 599
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 600
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 601
%witucpa:5, parents:1, generation[aux]37smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 602
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 603
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 604
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 605
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 606
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 607
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 608
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 609
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 610
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 611
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 612
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 613
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 614
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 615
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 616
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 617
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 618
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 619
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 620
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 621
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 622
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 623
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 624
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 625
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 626
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 627
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 628
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 629
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 630
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 631
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 632
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 633
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 634
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 635
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 636
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 637
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 638
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 639
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 640
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 641
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 642
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 643
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 644
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 645
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 646
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 647
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 648
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 649
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 650
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 651
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 652
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 653
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 654
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 655
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 656
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 657
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 658
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 659
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 660
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 661
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 662
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 663
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 664
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 665
%witucpa:5, parents:1, generation[aux]37smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 666
%witucpa:6, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SoWiBro}  
 son(A, Ego), wife(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 667
%witucpa:6, brother[eq]1:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {SoWiFaBroSo}  
 son(A, Ego), wife(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 668
%witucpa:6, brother[eq]1:0, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {SoWiFaFaBroSoSo}  
 son(A, Ego), wife(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 669
%witucpa:6, brother[eq]1:0, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {SoWiFaMoSisSoSo}  
 son(A, Ego), wife(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 670
%witucpa:6, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {SoWiMoSisSo}  
 son(A, Ego), wife(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 671
%witucpa:6, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {SoWiMoMoSisDaSo}  
 son(A, Ego), wife(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), son(Alter, H).
;; 672
%witucpa:6, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {SoWiMoHsisSo}  
 son(A, Ego), wife(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), son(Alter, G).
;; 673
%witucpa:6, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {SoWiMoHsisSo}  
 son(A, Ego), wife(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), son(Alter, G).
;; 674
%witucpa:6, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {SoWiMoFaBroDaSo}  
 son(A, Ego), wife(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 675
%witucpa:6, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {SoWiMoBroDaSo}  
 son(A, Ego), wife(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 676
%witucpa:6, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {SoWiMoBroSoDaSo}  
 son(A, Ego), wife(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 677
%witucpa:6, brother[eq]1:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {SoWiMoFaSisSo}  
 son(A, Ego), wife(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 678
%witucpa:6, brother[eq]1:0, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=2, Star=0,  {SoWiMoFaHsisSo}  
 son(A, Ego), wife(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), wife(G, F), daughter(H, G), daughter(H, F), not(equal(G, E)), son(Alter, H).
;; 679
%witucpa:6, brother[eq]1:0, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=2, Star=0,  {SoWiMoFaHsisSo}  
 son(A, Ego), wife(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), husband(G, E), daughter(H, G), daughter(H, E), not(equal(G, F)), son(Alter, H).
;; 680
%witucpa:6, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SoWiBroSo}  
 son(A, Ego), wife(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 681
%witucpa:6, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {SoWiFaBroSoSo}  
 son(A, Ego), wife(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 682
%witucpa:6, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {SoWiMoSisSoSo}  
 son(A, Ego), wife(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 683
%witucpa:6, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {SoWiMoBroDaSoSo}  
 son(A, Ego), wife(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 684
%witucpa:6, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SoWiBroSoSo}  
 son(A, Ego), wife(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 685
%witucpa:6, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {SoWiFaBroSoSoSo}  
 son(A, Ego), wife(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 686
%witucpa:6, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {SoWiMoSisSoSoSo}  
 son(A, Ego), wife(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 687
%witucpa:7, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {DaHuSis}  
 daughter(A, Ego), husband(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 688
%witucpa:8, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {DaHuFaSis}  
 daughter(A, Ego), husband(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 689
%witucpa:9, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroSoSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 690
%witucpa:9, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroSoDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 691
%witucpa:9, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroSoSoSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 692
%witucpa:9, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroSoSoDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 693
%witucpa:9, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroSoDaSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 694
%witucpa:9, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroSoDaDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 695
%witucpa:9, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroDaSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 696
%witucpa:9, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroDaDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 697
%witucpa:9, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroDaSoSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 698
%witucpa:9, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroDaSoDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 699
%witucpa:9, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroDaDaSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 700
%witucpa:9, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroDaDaDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 701
%witucpa:9, brother[eq]a:1, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroSoSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 702
%witucpa:9, brother[eq]a:1, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroSoSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 703
%witucpa:9, brother[eq]a:1, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroSoSoSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 704
%witucpa:9, brother[eq]a:1, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroSoSoSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 705
%witucpa:9, brother[eq]a:1, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroSoSoDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 706
%witucpa:9, brother[eq]a:1, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroSoSoDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 707
%witucpa:9, brother[eq]a:1, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroSoDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 708
%witucpa:9, brother[eq]a:1, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroSoDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 709
%witucpa:9, brother[eq]a:1, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroSoDaSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 710
%witucpa:9, brother[eq]a:1, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroSoDaSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 711
%witucpa:9, brother[eq]a:1, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroSoDaDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 712
%witucpa:9, brother[eq]a:1, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroSoDaDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 713
%witucpa:9, brother[eq]a:2, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisSoSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 714
%witucpa:9, brother[eq]a:2, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisSoSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 715
%witucpa:9, brother[eq]a:2, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisSoSoSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 716
%witucpa:9, brother[eq]a:2, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisSoSoSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 717
%witucpa:9, brother[eq]a:2, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisSoSoDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 718
%witucpa:9, brother[eq]a:2, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisSoSoDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 719
%witucpa:9, brother[eq]a:2, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisSoDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 720
%witucpa:9, brother[eq]a:2, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisSoDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 721
%witucpa:9, brother[eq]a:2, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisSoDaSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 722
%witucpa:9, brother[eq]a:2, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisSoDaSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 723
%witucpa:9, brother[eq]a:2, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisSoDaDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 724
%witucpa:9, brother[eq]a:2, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisSoDaDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 725
%witucpa:9, brother[eq]a:3, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroDaSoSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 726
%witucpa:9, brother[eq]a:3, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroDaSoSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 727
%witucpa:9, brother[eq]a:3, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroDaSoDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 728
%witucpa:9, brother[eq]a:3, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroDaSoDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 729
%witucpa:10, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisSoSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 730
%witucpa:10, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisSoDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 731
%witucpa:10, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisSoSoSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 732
%witucpa:10, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisSoSoDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 733
%witucpa:10, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisSoDaSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 734
%witucpa:10, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisSoDaDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 735
%witucpa:10, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisDaSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 736
%witucpa:10, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisDaDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 737
%witucpa:10, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisDaSoSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 738
%witucpa:10, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisDaSoDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 739
%witucpa:10, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisDaDaSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 740
%witucpa:10, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisDaDaDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 741
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisDaSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), son(Alter, G).
;; 742
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisDaSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), daughter(Alter, G).
;; 743
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisDaSoSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), son(H, G), son(Alter, H).
;; 744
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisDaSoSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), son(H, G), daughter(Alter, H).
;; 745
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisDaSoDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), daughter(H, G), son(Alter, H).
;; 746
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisDaSoDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), daughter(H, G), daughter(Alter, H).
;; 747
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisDaDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), son(Alter, G).
;; 748
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisDaDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), daughter(Alter, G).
;; 749
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisDaDaSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), son(H, G), son(Alter, H).
;; 750
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisDaDaSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), son(H, G), daughter(Alter, H).
;; 751
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisDaDaDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), daughter(H, G), son(Alter, H).
;; 752
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisDaDaDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 753
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-3,  PC=11, S=1, Star=0,  {HuMoMoBroDaDaDaSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), not(equal(I, A)), son(J, I), son(Alter, J).
;; 754
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-3,  PC=11, S=1, Star=0,  {HuMoMoBroDaDaDaSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), not(equal(I, A)), son(J, I), daughter(Alter, J).
;; 755
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-3,  PC=11, S=1, Star=0,  {HuMoMoBroDaDaDaDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), not(equal(I, A)), daughter(J, I), son(Alter, J).
;; 756
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-3,  PC=11, S=1, Star=0,  {HuMoMoBroDaDaDaDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), not(equal(I, A)), daughter(J, I), daughter(Alter, J).
;; 757
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoHsisDaSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), son(H, G), son(Alter, H).
;; 758
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoHsisDaSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), son(H, G), daughter(Alter, H).
;; 759
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoHsisDaDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), daughter(H, G), son(Alter, H).
;; 760
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoHsisDaDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), daughter(H, G), daughter(Alter, H).
;; 761
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoHsisDaSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), son(H, G), son(Alter, H).
;; 762
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoHsisDaSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), son(H, G), daughter(Alter, H).
;; 763
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoHsisDaDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), daughter(H, G), son(Alter, H).
;; 764
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoHsisDaDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), daughter(H, G), daughter(Alter, H).
;; 765
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {HuMoFaBroDaDaSoSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(Alter, I).
;; 766
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=1, Star=0,  {HuMoFaBroDaDaSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(Alter, I).
;; 767
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=11, S=1, Star=0,  {HuMoFaBroDaDaSoSoSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(J, I), son(Alter, J).
;; 768
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=11, S=1, Star=0,  {HuMoFaBroDaDaSoSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(J, I), daughter(Alter, J).
;; 769
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=11, S=1, Star=0,  {HuMoFaBroDaDaSoDaSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(J, I), son(Alter, J).
;; 770
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=11, S=1, Star=0,  {HuMoFaBroDaDaSoDaDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(J, I), daughter(Alter, J).
;; 771
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {HuMoFaBroDaDaDaSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(Alter, I).
;; 772
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=1, Star=0,  {HuMoFaBroDaDaDaDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(Alter, I).
;; 773
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=11, S=1, Star=0,  {HuMoFaBroDaDaDaSoSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(J, I), son(Alter, J).
;; 774
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=11, S=1, Star=0,  {HuMoFaBroDaDaDaSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(J, I), daughter(Alter, J).
;; 775
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=11, S=1, Star=0,  {HuMoFaBroDaDaDaDaSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(J, I), son(Alter, J).
;; 776
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=11, S=1, Star=0,  {HuMoFaBroDaDaDaDaDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(J, I), daughter(Alter, J).
;; 777
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroDaDaSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), son(Alter, H).
;; 778
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroDaDaSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), daughter(Alter, H).
;; 779
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-4,  PC=10, S=1, Star=0,  {HuMoBroDaDaSoSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), son(I, H), son(Alter, I).
;; 780
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-4,  PC=10, S=1, Star=0,  {HuMoBroDaDaSoSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), son(I, H), daughter(Alter, I).
;; 781
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-4,  PC=10, S=1, Star=0,  {HuMoBroDaDaSoDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), daughter(I, H), son(Alter, I).
;; 782
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-4,  PC=10, S=1, Star=0,  {HuMoBroDaDaSoDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), daughter(I, H), daughter(Alter, I).
;; 783
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroDaDaDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), son(Alter, H).
;; 784
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroDaDaDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), daughter(Alter, H).
;; 785
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-4,  PC=10, S=1, Star=0,  {HuMoBroDaDaDaSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), son(I, H), son(Alter, I).
;; 786
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-4,  PC=10, S=1, Star=0,  {HuMoBroDaDaDaSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), son(I, H), daughter(Alter, I).
;; 787
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-4,  PC=10, S=1, Star=0,  {HuMoBroDaDaDaDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), daughter(I, H), son(Alter, I).
;; 788
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-4,  PC=10, S=1, Star=0,  {HuMoBroDaDaDaDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 789
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-4,  PC=10, S=1, Star=0,  {HuMoBroSoDaDaSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(Alter, I).
;; 790
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-4,  PC=10, S=1, Star=0,  {HuMoBroSoDaDaSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(Alter, I).
;; 791
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-5,  PC=11, S=1, Star=0,  {HuMoBroSoDaDaSoSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(J, I), son(Alter, J).
;; 792
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-5,  PC=11, S=1, Star=0,  {HuMoBroSoDaDaSoSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(J, I), daughter(Alter, J).
;; 793
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-5,  PC=11, S=1, Star=0,  {HuMoBroSoDaDaSoDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(J, I), son(Alter, J).
;; 794
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-5,  PC=11, S=1, Star=0,  {HuMoBroSoDaDaSoDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(J, I), daughter(Alter, J).
;; 795
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-4,  PC=10, S=1, Star=0,  {HuMoBroSoDaDaDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(Alter, I).
;; 796
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-4,  PC=10, S=1, Star=0,  {HuMoBroSoDaDaDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(Alter, I).
;; 797
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-5,  PC=11, S=1, Star=0,  {HuMoBroSoDaDaDaSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(J, I), son(Alter, J).
;; 798
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-5,  PC=11, S=1, Star=0,  {HuMoBroSoDaDaDaSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(J, I), daughter(Alter, J).
;; 799
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-5,  PC=11, S=1, Star=0,  {HuMoBroSoDaDaDaDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(J, I), son(Alter, J).
;; 800
%witucpa:10, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-5,  PC=11, S=1, Star=0,  {HuMoBroSoDaDaDaDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(J, I), daughter(Alter, J).
;; 801
%witucpa:10, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {HuHsisSoSo}  
 husband(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), son(Alter, F).
;; 802
%witucpa:10, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {HuHsisSoDa}  
 husband(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), daughter(Alter, F).
;; 803
%witucpa:10, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuHsisSoSoSo}  
 husband(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), son(G, F), son(Alter, G).
;; 804
%witucpa:10, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuHsisSoSoDa}  
 husband(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), son(G, F), daughter(Alter, G).
;; 805
%witucpa:10, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuHsisSoDaSo}  
 husband(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), daughter(G, F), son(Alter, G).
;; 806
%witucpa:10, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuHsisSoDaDa}  
 husband(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), daughter(G, F), daughter(Alter, G).
;; 807
%witucpa:10, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {HuHsisDaSo}  
 husband(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), son(Alter, F).
;; 808
%witucpa:10, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {HuHsisDaDa}  
 husband(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), daughter(Alter, F).
;; 809
%witucpa:10, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuHsisDaSoSo}  
 husband(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), son(G, F), son(Alter, G).
;; 810
%witucpa:10, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuHsisDaSoDa}  
 husband(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), son(G, F), daughter(Alter, G).
;; 811
%witucpa:10, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuHsisDaDaSo}  
 husband(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), daughter(G, F), son(Alter, G).
;; 812
%witucpa:10, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuHsisDaDaDa}  
 husband(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 813
%witucpa:10, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {HuHsisSoSo}  
 husband(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), son(Alter, F).
;; 814
%witucpa:10, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {HuHsisSoDa}  
 husband(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), daughter(Alter, F).
;; 815
%witucpa:10, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuHsisSoSoSo}  
 husband(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), son(G, F), son(Alter, G).
;; 816
%witucpa:10, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuHsisSoSoDa}  
 husband(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), son(G, F), daughter(Alter, G).
;; 817
%witucpa:10, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuHsisSoDaSo}  
 husband(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), daughter(G, F), son(Alter, G).
;; 818
%witucpa:10, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuHsisSoDaDa}  
 husband(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), daughter(G, F), daughter(Alter, G).
;; 819
%witucpa:10, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {HuHsisDaSo}  
 husband(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), son(Alter, F).
;; 820
%witucpa:10, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {HuHsisDaDa}  
 husband(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), daughter(Alter, F).
;; 821
%witucpa:10, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuHsisDaSoSo}  
 husband(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), son(G, F), son(Alter, G).
;; 822
%witucpa:10, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuHsisDaSoDa}  
 husband(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), son(G, F), daughter(Alter, G).
;; 823
%witucpa:10, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuHsisDaDaSo}  
 husband(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), daughter(G, F), son(Alter, G).
;; 824
%witucpa:10, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuHsisDaDaDa}  
 husband(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 825
%witucpa:10, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroDaSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 826
%witucpa:10, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroDaSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 827
%witucpa:10, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroDaSoSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 828
%witucpa:10, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroDaSoSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 829
%witucpa:10, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroDaSoDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 830
%witucpa:10, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroDaSoDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 831
%witucpa:10, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroDaDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 832
%witucpa:10, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroDaDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 833
%witucpa:10, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroDaDaSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 834
%witucpa:10, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroDaDaSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 835
%witucpa:10, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroDaDaDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 836
%witucpa:10, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroDaDaDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 837
%witucpa:10, sister[eq]2a:1, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 838
%witucpa:10, sister[eq]2a:1, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 839
%witucpa:10, sister[eq]2a:1, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisSoSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 840
%witucpa:10, sister[eq]2a:1, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisSoSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 841
%witucpa:10, sister[eq]2a:1, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisSoDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 842
%witucpa:10, sister[eq]2a:1, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisSoDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 843
%witucpa:10, sister[eq]2a:1, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 844
%witucpa:10, sister[eq]2a:1, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 845
%witucpa:10, sister[eq]2a:1, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisDaSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 846
%witucpa:10, sister[eq]2a:1, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisDaSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 847
%witucpa:10, sister[eq]2a:1, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisDaDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 848
%witucpa:10, sister[eq]2a:1, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisDaDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 849
%witucpa:11, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisSoSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 850
%witucpa:11, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisSoDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 851
%witucpa:11, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisSoSoSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 852
%witucpa:11, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisSoSoDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 853
%witucpa:11, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisSoDaSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 854
%witucpa:11, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisSoDaDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 855
%witucpa:11, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisDaSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 856
%witucpa:11, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisDaDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 857
%witucpa:11, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisDaSoSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 858
%witucpa:11, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisDaSoDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 859
%witucpa:11, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisDaDaSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 860
%witucpa:11, sister[eq]2a:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisDaDaDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 861
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisDaSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), son(Alter, G).
;; 862
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisDaSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), daughter(Alter, G).
;; 863
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisDaSoSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), son(H, G), son(Alter, H).
;; 864
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisDaSoSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), son(H, G), daughter(Alter, H).
;; 865
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisDaSoDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), daughter(H, G), son(Alter, H).
;; 866
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisDaSoDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), daughter(H, G), daughter(Alter, H).
;; 867
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), son(Alter, G).
;; 868
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), daughter(Alter, G).
;; 869
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisDaDaSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), son(H, G), son(Alter, H).
;; 870
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisDaDaSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), son(H, G), daughter(Alter, H).
;; 871
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisDaDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), daughter(H, G), son(Alter, H).
;; 872
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisDaDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 873
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-3,  PC=11, S=1, Star=0,  {WiMoMoBroDaDaDaSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), not(equal(I, A)), son(J, I), son(Alter, J).
;; 874
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-3,  PC=11, S=1, Star=0,  {WiMoMoBroDaDaDaSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), not(equal(I, A)), son(J, I), daughter(Alter, J).
;; 875
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-3,  PC=11, S=1, Star=0,  {WiMoMoBroDaDaDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), not(equal(I, A)), daughter(J, I), son(Alter, J).
;; 876
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-3,  PC=11, S=1, Star=0,  {WiMoMoBroDaDaDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), not(equal(I, A)), daughter(J, I), daughter(Alter, J).
;; 877
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiMoHsisDaSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), son(H, G), son(Alter, H).
;; 878
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiMoHsisDaSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), son(H, G), daughter(Alter, H).
;; 879
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiMoHsisDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), daughter(H, G), son(Alter, H).
;; 880
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiMoHsisDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), daughter(H, G), daughter(Alter, H).
;; 881
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiMoHsisDaSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), son(H, G), son(Alter, H).
;; 882
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiMoHsisDaSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), son(H, G), daughter(Alter, H).
;; 883
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiMoHsisDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), daughter(H, G), son(Alter, H).
;; 884
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiMoHsisDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), daughter(H, G), daughter(Alter, H).
;; 885
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {WiMoFaBroDaDaSoSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(Alter, I).
;; 886
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=1, Star=0,  {WiMoFaBroDaDaSoDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(Alter, I).
;; 887
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=11, S=1, Star=0,  {WiMoFaBroDaDaSoSoSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(J, I), son(Alter, J).
;; 888
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=11, S=1, Star=0,  {WiMoFaBroDaDaSoSoDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(J, I), daughter(Alter, J).
;; 889
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=11, S=1, Star=0,  {WiMoFaBroDaDaSoDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(J, I), son(Alter, J).
;; 890
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=11, S=1, Star=0,  {WiMoFaBroDaDaSoDaDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(J, I), daughter(Alter, J).
;; 891
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {WiMoFaBroDaDaDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(Alter, I).
;; 892
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=10, S=1, Star=0,  {WiMoFaBroDaDaDaDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(Alter, I).
;; 893
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=11, S=1, Star=0,  {WiMoFaBroDaDaDaSoSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(J, I), son(Alter, J).
;; 894
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=11, S=1, Star=0,  {WiMoFaBroDaDaDaSoDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(J, I), daughter(Alter, J).
;; 895
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=11, S=1, Star=0,  {WiMoFaBroDaDaDaDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(J, I), son(Alter, J).
;; 896
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=11, S=1, Star=0,  {WiMoFaBroDaDaDaDaDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(J, I), daughter(Alter, J).
;; 897
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroDaDaSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), son(Alter, H).
;; 898
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroDaDaSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), daughter(Alter, H).
;; 899
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-4,  PC=10, S=1, Star=0,  {WiMoBroDaDaSoSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), son(I, H), son(Alter, I).
;; 900
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-4,  PC=10, S=1, Star=0,  {WiMoBroDaDaSoSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), son(I, H), daughter(Alter, I).
;; 901
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-4,  PC=10, S=1, Star=0,  {WiMoBroDaDaSoDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), daughter(I, H), son(Alter, I).
;; 902
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-4,  PC=10, S=1, Star=0,  {WiMoBroDaDaSoDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), daughter(I, H), daughter(Alter, I).
;; 903
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroDaDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), son(Alter, H).
;; 904
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroDaDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), daughter(Alter, H).
;; 905
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-4,  PC=10, S=1, Star=0,  {WiMoBroDaDaDaSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), son(I, H), son(Alter, I).
;; 906
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-4,  PC=10, S=1, Star=0,  {WiMoBroDaDaDaSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), son(I, H), daughter(Alter, I).
;; 907
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-4,  PC=10, S=1, Star=0,  {WiMoBroDaDaDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), daughter(I, H), son(Alter, I).
;; 908
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-4,  PC=10, S=1, Star=0,  {WiMoBroDaDaDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 909
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-4,  PC=10, S=1, Star=0,  {WiMoBroSoDaDaSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(Alter, I).
;; 910
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-4,  PC=10, S=1, Star=0,  {WiMoBroSoDaDaSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(Alter, I).
;; 911
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-5,  PC=11, S=1, Star=0,  {WiMoBroSoDaDaSoSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(J, I), son(Alter, J).
;; 912
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-5,  PC=11, S=1, Star=0,  {WiMoBroSoDaDaSoSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(J, I), daughter(Alter, J).
;; 913
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-5,  PC=11, S=1, Star=0,  {WiMoBroSoDaDaSoDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(J, I), son(Alter, J).
;; 914
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-5,  PC=11, S=1, Star=0,  {WiMoBroSoDaDaSoDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(J, I), daughter(Alter, J).
;; 915
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-4,  PC=10, S=1, Star=0,  {WiMoBroSoDaDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(Alter, I).
;; 916
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-4,  PC=10, S=1, Star=0,  {WiMoBroSoDaDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(Alter, I).
;; 917
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-5,  PC=11, S=1, Star=0,  {WiMoBroSoDaDaDaSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(J, I), son(Alter, J).
;; 918
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-5,  PC=11, S=1, Star=0,  {WiMoBroSoDaDaDaSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(J, I), daughter(Alter, J).
;; 919
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-5,  PC=11, S=1, Star=0,  {WiMoBroSoDaDaDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(J, I), son(Alter, J).
;; 920
%witucpa:11, sister[eq]2a:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-5,  PC=11, S=1, Star=0,  {WiMoBroSoDaDaDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(J, I), daughter(Alter, J).
;; 921
%witucpa:11, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {WiHsisSoSo}  
 wife(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), son(Alter, F).
;; 922
%witucpa:11, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {WiHsisSoDa}  
 wife(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), daughter(Alter, F).
;; 923
%witucpa:11, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiHsisSoSoSo}  
 wife(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), son(G, F), son(Alter, G).
;; 924
%witucpa:11, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiHsisSoSoDa}  
 wife(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), son(G, F), daughter(Alter, G).
;; 925
%witucpa:11, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiHsisSoDaSo}  
 wife(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), daughter(G, F), son(Alter, G).
;; 926
%witucpa:11, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiHsisSoDaDa}  
 wife(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), daughter(G, F), daughter(Alter, G).
;; 927
%witucpa:11, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {WiHsisDaSo}  
 wife(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), son(Alter, F).
;; 928
%witucpa:11, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {WiHsisDaDa}  
 wife(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), daughter(Alter, F).
;; 929
%witucpa:11, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiHsisDaSoSo}  
 wife(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), son(G, F), son(Alter, G).
;; 930
%witucpa:11, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiHsisDaSoDa}  
 wife(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), son(G, F), daughter(Alter, G).
;; 931
%witucpa:11, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiHsisDaDaSo}  
 wife(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), daughter(G, F), son(Alter, G).
;; 932
%witucpa:11, sister[eq]2a:0, sister[eq]:2, half_sister:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiHsisDaDaDa}  
 wife(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 933
%witucpa:11, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {WiHsisSoSo}  
 wife(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), son(Alter, F).
;; 934
%witucpa:11, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {WiHsisSoDa}  
 wife(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), daughter(Alter, F).
;; 935
%witucpa:11, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiHsisSoSoSo}  
 wife(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), son(G, F), son(Alter, G).
;; 936
%witucpa:11, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiHsisSoSoDa}  
 wife(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), son(G, F), daughter(Alter, G).
;; 937
%witucpa:11, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiHsisSoDaSo}  
 wife(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), daughter(G, F), son(Alter, G).
;; 938
%witucpa:11, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiHsisSoDaDa}  
 wife(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), daughter(G, F), daughter(Alter, G).
;; 939
%witucpa:11, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {WiHsisDaSo}  
 wife(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), son(Alter, F).
;; 940
%witucpa:11, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {WiHsisDaDa}  
 wife(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), daughter(Alter, F).
;; 941
%witucpa:11, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiHsisDaSoSo}  
 wife(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), son(G, F), son(Alter, G).
;; 942
%witucpa:11, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiHsisDaSoDa}  
 wife(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), son(G, F), daughter(Alter, G).
;; 943
%witucpa:11, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiHsisDaDaSo}  
 wife(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), daughter(G, F), son(Alter, G).
;; 944
%witucpa:11, sister[eq]2a:0, sister[eq]:2, half_sister:1, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiHsisDaDaDa}  
 wife(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 945
%witucpa:11, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroDaSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 946
%witucpa:11, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroDaSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 947
%witucpa:11, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroDaSoSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 948
%witucpa:11, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroDaSoSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 949
%witucpa:11, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroDaSoDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 950
%witucpa:11, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroDaSoDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 951
%witucpa:11, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroDaDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 952
%witucpa:11, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroDaDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 953
%witucpa:11, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroDaDaSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 954
%witucpa:11, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroDaDaSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 955
%witucpa:11, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroDaDaDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 956
%witucpa:11, sister[eq]2a:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroDaDaDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 957
%witucpa:11, sister[eq]2a:1, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 958
%witucpa:11, sister[eq]2a:1, sister:0, sibling:0, children:0, gen_dn[aux]37:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 959
%witucpa:11, sister[eq]2a:1, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisSoSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 960
%witucpa:11, sister[eq]2a:1, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisSoSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 961
%witucpa:11, sister[eq]2a:1, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisSoDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 962
%witucpa:11, sister[eq]2a:1, sister:0, sibling:0, children:0, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisSoDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 963
%witucpa:11, sister[eq]2a:1, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 964
%witucpa:11, sister[eq]2a:1, sister:0, sibling:0, children:1, gen_dn[aux]37:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 965
%witucpa:11, sister[eq]2a:1, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisDaSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 966
%witucpa:11, sister[eq]2a:1, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisDaSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 967
%witucpa:11, sister[eq]2a:1, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisDaDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 968
%witucpa:11, sister[eq]2a:1, sister:0, sibling:0, children:1, gen_dn[aux]37:1, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisDaDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).


witujange(Alter, Ego) :-  female(Ego), brother[eq](A, Ego), daughter(Alter, A).
                      |   husband(A, Ego), sister[eq]2(B, A), daughter(Alter, B).
{"BroDa_FaBroSoDa_FaFaBroSoSoDa_FaMoBroDaSoSoDa_FaMoSisSoSoDa_HuFaBroDaDa_HuFaFaBroDaDa_HuFaFaBroSoDaDa_HuFaHsisDa_HuFaMoBroDaDaDa_HuFaMoHsisDaDa_HuFaMoSisDaDa_HuFaMoSisSoDaDa_HuFaSisDa_HuHsisDa_HuMoBroDaDaDa_HuMoBroSoDaDaDa_HuMoFaBroDaDaDa_HuMoHsisDaDa_HuMoMoBroDaDaDaDa_HuMoSisDaDa_HuSisDa_MoBroDaSoDa_MoBroSoDaSoDa_MoFaBroDaSoDa_MoFaBroSoDaSoDa_MoFaBroSoSoDaSoDa_MoFaFaBroDaSoDa_MoFaFaBroSoDaSoDa_MoFaHsisSoDa_MoFaMoBroDaDaSoDa_MoFaMoBroDaSoDaSoDa_MoFaMoBroSoDaDaSoDa_MoFaMoHsisDaSoDa_MoFaMoSisDaSoDa_MoFaMoSisSoDaSoDa_MoFaSisSoDa_MoHsisSoDa_MoMoBroDaDaSoDa_MoMoBroDaSoDaSoDa_MoMoBroDaSoSoDaSoDa_MoMoBroSoDaDaSoDa_MoMoFaBroDaDaSoDa_MoMoFaBroSoDaDaSoDa_MoMoHsisDaSoDa_MoMoMoSisSoDaDaSoDa_MoMoSisDaSoDa_MoMoSisSoDaSoDa_MoMoSisSoSoDaSoDa_MoSisSoDa"}
;; 0
%witujange:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 1
%witujange:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 2
%witujange:0, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 3
%witujange:0, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 4
%witujange:0, brother[eq]:1, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 5
%witujange:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 6
%witujange:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), daughter(Alter, G).
;; 7
%witujange:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoHsisDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), son(H, G), daughter(Alter, H).
;; 8
%witujange:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoHsisDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), son(H, G), daughter(Alter, H).
;; 9
%witujange:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(Alter, I).
;; 10
%witujange:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), daughter(Alter, H).
;; 11
%witujange:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoFaBroSoDaDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(J, I), daughter(Alter, J).
;; 12
%witujange:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoMoSisSoDaDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(J, I), daughter(Alter, J).
;; 13
%witujange:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroSoDaDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(Alter, I).
;; 14
%witujange:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoHsisSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), son(F, E), daughter(Alter, F).
;; 15
%witujange:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoHsisSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), son(F, E), daughter(Alter, F).
;; 16
%witujange:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 17
%witujange:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 18
%witujange:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 19
%witujange:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoFaMoBroDaSoDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), son(J, I), daughter(Alter, J).
;; 20
%witujange:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 21
%witujange:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 22
%witujange:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 23
%witujange:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaSoDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 24
%witujange:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 25
%witujange:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroSoSoDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 26
%witujange:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisSoSoDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 27
%witujange:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:3, brother:0, sibling:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaSoSoDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(I, H), son(J, I), daughter(Alter, J).
;; 28
%witujange:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 29
%witujange:0, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(H, G), daughter(Alter, H).
;; 30
%witujange:0, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoHsisDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(H, G), not(equal(H, B)), son(I, H), daughter(Alter, I).
;; 31
%witujange:0, brother[eq]:3, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoHsisDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(H, G), not(equal(H, B)), son(I, H), daughter(Alter, I).
;; 32
%witujange:0, brother[eq]:3, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(I, H), daughter(Alter, I).
;; 33
%witujange:0, brother[eq]:3, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoFaMoBroSoDaDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, B)), son(J, I), daughter(Alter, J).
;; 34
%witujange:0, brother[eq]:3, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaHsisSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), son(G, F), daughter(Alter, G).
;; 35
%witujange:0, brother[eq]:3, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaHsisSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), son(G, F), daughter(Alter, G).
;; 36
%witujange:0, brother[eq]:3, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 37
%witujange:1, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 38
%witujange:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(Alter, F).
;; 39
%witujange:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {HuMoMoBroDaDaDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), not(equal(I, A)), daughter(Alter, I).
;; 40
%witujange:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuMoHsisDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(G, F), not(equal(G, A)), daughter(Alter, G).
;; 41
%witujange:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuMoHsisDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(G, F), not(equal(G, A)), daughter(Alter, G).
;; 42
%witujange:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoFaBroDaDaDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H).
;; 43
%witujange:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroDaDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(Alter, G).
;; 44
%witujange:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroSoDaDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H).
;; 45
%witujange:1, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {HuHsisDa}  
 husband(A, Ego), mother(B, A), father(C, A), wife(D, C), daughter(E, D), daughter(E, C), not(equal(D, B)), daughter(Alter, E).
;; 46
%witujange:1, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=-1,  PC=5, S=2, Star=0,  {HuHsisDa}  
 husband(A, Ego), mother(B, A), father(C, A), husband(D, B), daughter(E, D), daughter(E, B), not(equal(D, C)), daughter(Alter, E).
;; 47
%witujange:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 48
%witujange:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaFaBroSoDaDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 49
%witujange:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoSisSoDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 50
%witujange:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 51
%witujange:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), daughter(Alter, G).
;; 52
%witujange:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoHsisDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), wife(F, E), daughter(G, F), daughter(G, E), not(equal(F, D)), daughter(H, G), not(equal(H, B)), daughter(Alter, H).
;; 53
%witujange:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoHsisDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), husband(F, D), daughter(G, F), daughter(G, D), not(equal(F, E)), daughter(H, G), not(equal(H, B)), daughter(Alter, H).
;; 54
%witujange:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoBroDaDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(Alter, H).
;; 55
%witujange:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaHsisDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), wife(E, D), daughter(F, E), daughter(F, D), not(equal(E, C)), daughter(Alter, F).
;; 56
%witujange:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, half_sister:1%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaHsisDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), husband(E, C), daughter(F, E), daughter(F, C), not(equal(E, D)), daughter(Alter, F).
;; 57
%witujange:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroDaDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G).

