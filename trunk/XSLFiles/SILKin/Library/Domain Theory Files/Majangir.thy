;;  Horn Clause Representation of Majangir Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Majangir") (author, "Peter Unseth") (date, "1997-02-25") (non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, true) (address, false) (recursiveLevels, 3)
(synonyms, (keerek, imeykay))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

ape(Alter, Ego) :-  parents(A, Ego), father(Alter, A).
{"FaFa_MoFa"}
;; 0
%ape:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 1
%ape:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).


baabuy(Alter, Ego) :-  husband(Alter, Ego).
{"Hu"}
;; 0
%baabuy:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).


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


emes(Alter, Ego) :-  mother(Alter, Ego).
{"Mo"}
;; 0
%emes:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).


epen(Alter, Ego) :-  father(Alter, Ego).
{"Fa"}
;; 0
%epen:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).


generation[aux]28(Alter, Ego) :-  sibling(Alter, Ego).
                              |   parents(A, Ego), generation[aux]28(B, A), child(Alter, B).
;; 0
%generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 2
%generation[aux]28:1, parents:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 3
%generation[aux]28:1, parents:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(H, G), child(Alter, H).
;; 4
%generation[aux]28:1, parents:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(H, G), child(Alter, H).
;; 5
%generation[aux]28:1, parents:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 6
%generation[aux]28:1, parents:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(H, G), child(Alter, H).
;; 7
%generation[aux]28:1, parents:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(H, G), child(Alter, H).
;; 8
%generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 9
%generation[aux]28:1, parents:1, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 10
%generation[aux]28:1, parents:1, generation[aux]28:1, parents:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(H, G), child(Alter, H).
;; 11
%generation[aux]28:1, parents:1, generation[aux]28:1, parents:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(H, G), child(Alter, H).
;; 12
%generation[aux]28:1, parents:1, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 13
%generation[aux]28:1, parents:1, generation[aux]28:1, parents:1, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(H, G), child(Alter, H).
;; 14
%generation[aux]28:1, parents:1, generation[aux]28:1, parents:1, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(H, G), child(Alter, H).


generation[aux]28junior(Alter, Ego) :-  sibling(Alter, Ego), younger(Alter, Ego).
                                    |   parents(A, Ego), generation[aux]28junior(B, A), child(Alter, B).
;; 0
%generation[aux]28junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 1
%generation[aux]28junior:1, parents:0, generation[aux]28junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), child(Alter, D).
;; 2
%generation[aux]28junior:1, parents:0, generation[aux]28junior:1, parents:0, generation[aux]28junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 3
%generation[aux]28junior:1, parents:0, generation[aux]28junior:1, parents:0, generation[aux]28junior:1, parents:0, generation[aux]28junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), child(G, F), child(H, G), child(Alter, H).
;; 4
%generation[aux]28junior:1, parents:0, generation[aux]28junior:1, parents:0, generation[aux]28junior:1, parents:1, generation[aux]28junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), child(G, F), child(H, G), child(Alter, H).
;; 5
%generation[aux]28junior:1, parents:0, generation[aux]28junior:1, parents:1, generation[aux]28junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 6
%generation[aux]28junior:1, parents:0, generation[aux]28junior:1, parents:1, generation[aux]28junior:1, parents:0, generation[aux]28junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), child(G, F), child(H, G), child(Alter, H).
;; 7
%generation[aux]28junior:1, parents:0, generation[aux]28junior:1, parents:1, generation[aux]28junior:1, parents:1, generation[aux]28junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), child(G, F), child(H, G), child(Alter, H).
;; 8
%generation[aux]28junior:1, parents:1, generation[aux]28junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), child(Alter, D).
;; 9
%generation[aux]28junior:1, parents:1, generation[aux]28junior:1, parents:0, generation[aux]28junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 10
%generation[aux]28junior:1, parents:1, generation[aux]28junior:1, parents:0, generation[aux]28junior:1, parents:0, generation[aux]28junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), child(G, F), child(H, G), child(Alter, H).
;; 11
%generation[aux]28junior:1, parents:1, generation[aux]28junior:1, parents:0, generation[aux]28junior:1, parents:1, generation[aux]28junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), child(G, F), child(H, G), child(Alter, H).
;; 12
%generation[aux]28junior:1, parents:1, generation[aux]28junior:1, parents:1, generation[aux]28junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 13
%generation[aux]28junior:1, parents:1, generation[aux]28junior:1, parents:1, generation[aux]28junior:1, parents:0, generation[aux]28junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), child(G, F), child(H, G), child(Alter, H).
;; 14
%generation[aux]28junior:1, parents:1, generation[aux]28junior:1, parents:1, generation[aux]28junior:1, parents:1, generation[aux]28junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), child(G, F), child(H, G), child(Alter, H).


generation[aux]28senior(Alter, Ego) :-  sibling(Alter, Ego), elder(Alter, Ego).
                                    |   parents(A, Ego), generation[aux]28senior(B, A), child(Alter, B).
;; 0
%generation[aux]28senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 1
%generation[aux]28senior:1, parents:0, generation[aux]28senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), child(Alter, D).
;; 2
%generation[aux]28senior:1, parents:0, generation[aux]28senior:1, parents:0, generation[aux]28senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 3
%generation[aux]28senior:1, parents:0, generation[aux]28senior:1, parents:0, generation[aux]28senior:1, parents:0, generation[aux]28senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), child(G, F), child(H, G), child(Alter, H).
;; 4
%generation[aux]28senior:1, parents:0, generation[aux]28senior:1, parents:0, generation[aux]28senior:1, parents:1, generation[aux]28senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), child(G, F), child(H, G), child(Alter, H).
;; 5
%generation[aux]28senior:1, parents:0, generation[aux]28senior:1, parents:1, generation[aux]28senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 6
%generation[aux]28senior:1, parents:0, generation[aux]28senior:1, parents:1, generation[aux]28senior:1, parents:0, generation[aux]28senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), child(G, F), child(H, G), child(Alter, H).
;; 7
%generation[aux]28senior:1, parents:0, generation[aux]28senior:1, parents:1, generation[aux]28senior:1, parents:1, generation[aux]28senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), child(G, F), child(H, G), child(Alter, H).
;; 8
%generation[aux]28senior:1, parents:1, generation[aux]28senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), child(Alter, D).
;; 9
%generation[aux]28senior:1, parents:1, generation[aux]28senior:1, parents:0, generation[aux]28senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 10
%generation[aux]28senior:1, parents:1, generation[aux]28senior:1, parents:0, generation[aux]28senior:1, parents:0, generation[aux]28senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), child(G, F), child(H, G), child(Alter, H).
;; 11
%generation[aux]28senior:1, parents:1, generation[aux]28senior:1, parents:0, generation[aux]28senior:1, parents:1, generation[aux]28senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), child(G, F), child(H, G), child(Alter, H).
;; 12
%generation[aux]28senior:1, parents:1, generation[aux]28senior:1, parents:1, generation[aux]28senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 13
%generation[aux]28senior:1, parents:1, generation[aux]28senior:1, parents:1, generation[aux]28senior:1, parents:0, generation[aux]28senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), child(G, F), child(H, G), child(Alter, H).
;; 14
%generation[aux]28senior:1, parents:1, generation[aux]28senior:1, parents:1, generation[aux]28senior:1, parents:1, generation[aux]28senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), child(G, F), child(H, G), child(Alter, H).


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


imeykay(Alter, Ego) :-  keerek(Alter, Ego).
;; 0
%imeykay:0, keerek:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), spouse(Alter, A).
;; 1
%imeykay:0, keerek:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), spouse(Alter, A).
;; 2
%imeykay:0, keerek:1, spice:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 husband(A, Ego), mother(Alter, A).
;; 3
%imeykay:0, keerek:1, spice:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 husband(A, Ego), father(Alter, A).
;; 4
%imeykay:0, keerek:1, spice:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(A, Ego), mother(Alter, A).
;; 5
%imeykay:0, keerek:1, spice:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(A, Ego), father(Alter, A).


jarti(Alter, Ego) :-  wife(Alter, Ego).
{"Wi"}
;; 0
%jarti:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


kaake(Alter, Ego) :-  parents(A, Ego), mother(Alter, A).
                  |   children(A, Ego), children(Alter, A).
{"DaDa_DaSo_FaMo_MoMo_SoDa_SoSo"}
;; 0
%kaake:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 1
%kaake:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).
;; 2
%kaake:1, children:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).
;; 3
%kaake:1, children:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).
;; 4
%kaake:1, children:1, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).
;; 5
%kaake:1, children:1, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).


kaamay(Alter, Ego) :-  mother(A, Ego), siblings(B, A), children(Alter, B).
                   |   step_brother(Alter, Ego).
                   |   step_sister(Alter, Ego).
{"MoBroDa_MoBroSo_MoSisDa_MoSisSo_Stbro_Stsis"}
;; 0
%kaamay:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 1
%kaamay:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 2
%kaamay:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 3
%kaamay:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 4
%kaamay:1, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C).
;; 5
%kaamay:1, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C).
;; 6
%kaamay:2, step_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C).
;; 7
%kaamay:2, step_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C).


keerek(Alter, Ego) :-  children(A, Ego), spouse(Alter, A).
                   |   spice(A, Ego), parents(Alter, A).
{"DaHu_HuFa_HuMo_SoWi_WiFa_WiMo"}
;; 0
%keerek:0, children:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 son(A, Ego), spouse(Alter, A).
;; 1
%keerek:0, children:1%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 daughter(A, Ego), spouse(Alter, A).
;; 2
%keerek:1, spice:0, parents:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 3
%keerek:1, spice:0, parents:1%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).
;; 4
%keerek:1, spice:1, parents:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).
;; 5
%keerek:1, spice:1, parents:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).


kobe(Alter, Ego) :-  wife(A, Ego), sister(A, B), husband(Alter, B).
{"WiSisHu"}
;; 0
%kobe:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {WiSisHu}  
 wife(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), female(A), husband(Alter, C).


maali(Alter, Ego) :-  mother(A, Ego), brother(Alter, A).
{"MoBro"}
;; 0
%maali:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


maame(Alter, Ego) :-  parents(A, Ego), sister(Alter, A).
                  |   parents(A, Ego), brother(B, A), wife(Alter, B).
                  |   step_mother(Alter, Ego).
{"FaBroWi_FaSis_MoBroWi_MoSis_Stmo"}
;; 0
%maame:0, parents:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%maame:0, parents:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%maame:1, parents:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 3
%maame:1, parents:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 4
%maame:2, step_mother:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stmo}  
 father(A, Ego), mother(B, Ego), wife(Alter, A), not(equal(Alter, B)).


mana(Alter, Ego) :-  siblings(Alter, Ego).
                 |   mother(A, Ego), father(B, Ego), husband(C, A), children(Alter, C), child(Alter, A), not(equal(C, B)).
{"Bro_Hbro_Hsis_Sis"}
;; 0
%mana:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%mana:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%mana:1, children:0%
 Lvl=0,  PC=4, S=1, Star=0,  {Hbro}  
 mother(A, Ego), father(B, Ego), husband(C, A), son(Alter, C), child(Alter, A), not(equal(C, B)).
;; 3
%mana:1, children:1%
 Lvl=0,  PC=4, S=1, Star=0,  {Hsis}  
 mother(A, Ego), father(B, Ego), husband(C, A), daughter(Alter, C), child(Alter, A), not(equal(C, B)).


mert(Alter, Ego) :-  husband(A, Ego), brother(A, B), husband(B, Alter).
{"HuBroWi"}
;; 0
%mert:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {HuBroWi}  
 husband(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), male(A), husband(C, Alter).


naki(Alter, Ego) :-  husband(A, Ego), wife(Alter, A), not(equal(Ego, Alter)).
{"HuWi"}
;; 0
%naki:0%
 Lvl=0,  PC=0, S=2, Star=0,  {HuWi}  
 husband(A, Ego), wife(Alter, A), not(equal(Ego, Alter)).


oree(Alter, Ego) :-  parents(A, Ego), parents(B, A), parents(Alter, B).
{"FaFaFa_FaFaMo_FaMoFa_FaMoMo_MoFaFa_MoFaMo_MoMoFa_MoMoMo"}
;; 0
%oree:0, parents:0, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
 mother(A, Ego), mother(B, A), mother(Alter, B).
;; 1
%oree:0, parents:0, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
 mother(A, Ego), mother(B, A), father(Alter, B).
;; 2
%oree:0, parents:0, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
 mother(A, Ego), father(B, A), mother(Alter, B).
;; 3
%oree:0, parents:0, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
 mother(A, Ego), father(B, A), father(Alter, B).
;; 4
%oree:0, parents:1, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
 father(A, Ego), mother(B, A), mother(Alter, B).
;; 5
%oree:0, parents:1, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
 father(A, Ego), mother(B, A), father(Alter, B).
;; 6
%oree:0, parents:1, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
 father(A, Ego), father(B, A), mother(Alter, B).
;; 7
%oree:0, parents:1, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
 father(A, Ego), father(B, A), father(Alter, B).


pana(Alter, Ego) :-  father(A, Ego), children(Alter, A), mother(B, Ego), mother(C, Alter), not(equal(B, C)).
{"Hbro_Hsis"}
;; 0
%pana:0, children:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Hbro}  
 father(A, Ego), son(Alter, A), mother(B, Ego), mother(C, Alter), not(equal(B, C)).
;; 1
%pana:0, children:1%
 Lvl=0,  PC=4, S=0, Star=0,  {Hsis}  
 father(A, Ego), daughter(Alter, A), mother(B, Ego), mother(C, Alter), not(equal(B, C)).


pansokoy(Alter, Ego) :-  father(A, Ego), brother(B, A), children(Alter, B).
{"FaBroDa_FaBroSo"}
;; 0
%pansokoy:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 1
%pansokoy:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).


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


reeg(Alter, Ego) :-  brother(A, Ego), wife(Alter, A).
                 |   husband(A, Ego), sister(Alter, A).
{"BroWi_HuSis"}
;; 0
%reeg:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C).
;; 1
%reeg:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


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


square[aux]28(Alter, Ego) :-  generation[aux]28(Alter, Ego).
                          |   parents(Alter, Ego).
                          |   parents(A, Ego), square[aux]28(Alter, A).
;; 0
%square[aux]28:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 2
%square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 3
%square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(H, G), child(Alter, H).
;; 4
%square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(H, G), child(Alter, H).
;; 5
%square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 6
%square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(H, G), child(Alter, H).
;; 7
%square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(H, G), child(Alter, H).
;; 8
%square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 9
%square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 10
%square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(H, G), child(Alter, H).
;; 11
%square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(H, G), child(Alter, H).
;; 12
%square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 13
%square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:1, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(H, G), child(Alter, H).
;; 14
%square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:1, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(H, G), child(Alter, H).
;; 15
%square[aux]28:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(Alter, Ego).
;; 16
%square[aux]28:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(Alter, Ego).
;; 17
%square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 18
%square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E).
;; 19
%square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 20
%square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(I, H), child(Alter, I).
;; 21
%square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(I, H), child(Alter, I).
;; 22
%square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 23
%square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(I, H), child(Alter, I).
;; 24
%square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(I, H), child(Alter, I).
;; 25
%square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E).
;; 26
%square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 27
%square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(I, H), child(Alter, I).
;; 28
%square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(I, H), child(Alter, I).
;; 29
%square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 30
%square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:1, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(I, H), child(Alter, I).
;; 31
%square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:1, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(I, H), child(Alter, I).
;; 32
%square[aux]28:2, parents:0, square[aux]28:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(Alter, A).
;; 33
%square[aux]28:2, parents:0, square[aux]28:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(Alter, A).
;; 34
%square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 35
%square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 36
%square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 37
%square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 38
%square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 39
%square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 40
%square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 41
%square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(Alter, B).
;; 42
%square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(Alter, B).
;; 43
%square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 44
%square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(Alter, G).
;; 45
%square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(Alter, G).
;; 46
%square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(Alter, C).
;; 47
%square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(Alter, C).
;; 48
%square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 49
%square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(Alter, G).
;; 50
%square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(Alter, G).
;; 51
%square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(Alter, C).
;; 52
%square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(Alter, C).
;; 53
%square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 54
%square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 55
%square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 56
%square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 57
%square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 58
%square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 59
%square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 60
%square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(Alter, B).
;; 61
%square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(Alter, B).
;; 62
%square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 63
%square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(Alter, G).
;; 64
%square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(Alter, G).
;; 65
%square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(Alter, C).
;; 66
%square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(Alter, C).
;; 67
%square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 68
%square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(Alter, G).
;; 69
%square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(Alter, G).
;; 70
%square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(Alter, C).
;; 71
%square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(Alter, C).
;; 72
%square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 73
%square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E).
;; 74
%square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 75
%square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(I, H), child(Alter, I).
;; 76
%square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(I, H), child(Alter, I).
;; 77
%square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 78
%square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(I, H), child(Alter, I).
;; 79
%square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(I, H), child(Alter, I).
;; 80
%square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E).
;; 81
%square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 82
%square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(I, H), child(Alter, I).
;; 83
%square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(I, H), child(Alter, I).
;; 84
%square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 85
%square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:1, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(I, H), child(Alter, I).
;; 86
%square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:1, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(I, H), child(Alter, I).
;; 87
%square[aux]28:2, parents:1, square[aux]28:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(Alter, A).
;; 88
%square[aux]28:2, parents:1, square[aux]28:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(Alter, A).
;; 89
%square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 90
%square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 91
%square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 92
%square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 93
%square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 94
%square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 95
%square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 96
%square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(Alter, B).
;; 97
%square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(Alter, B).
;; 98
%square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 99
%square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(Alter, G).
;; 100
%square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(Alter, G).
;; 101
%square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(Alter, C).
;; 102
%square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:2, parents:0, square[aux]28:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(Alter, C).
;; 103
%square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 104
%square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(Alter, G).
;; 105
%square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(Alter, G).
;; 106
%square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(Alter, C).
;; 107
%square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:2, parents:1, square[aux]28:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(Alter, C).
;; 108
%square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 109
%square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 110
%square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 111
%square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 112
%square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 113
%square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 114
%square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 115
%square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(Alter, B).
;; 116
%square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(Alter, B).
;; 117
%square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 118
%square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(Alter, G).
;; 119
%square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(Alter, G).
;; 120
%square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(Alter, C).
;; 121
%square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:2, parents:0, square[aux]28:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(Alter, C).
;; 122
%square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 123
%square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:0, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(Alter, G).
;; 124
%square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:0, generation[aux]28:1, parents:1, generation[aux]28:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(Alter, G).
;; 125
%square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(Alter, C).
;; 126
%square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:2, parents:1, square[aux]28:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(Alter, C).


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


tekan(Alter, Ego) :-  sister(A, Ego), husband(Alter, A).
                  |   wife(A, Ego), siblings(Alter, A).
{"SisHu_WiBro_WiSis"}
;; 0
%tekan:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).
;; 1
%tekan:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%tekan:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


toon(Alter, Ego) :-  children(Alter, Ego).
{"Da_So"}
;; 0
%toon:0, children:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 1
%toon:0, children:1%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).


waaji(Alter, Ego) :-  parents(A, Ego), parents(B, A), parents(C, B), parents(Alter, C).
{"FaFaFaFa_FaFaFaMo_FaFaMoFa_FaFaMoMo_FaMoFaFa_FaMoFaMo_FaMoMoFa_FaMoMoMo_MoFaFaFa_MoFaFaMo_MoFaMoFa_MoFaMoMo_MoMoFaFa_MoMoFaMo_MoMoMoFa_MoMoMoMo"}
;; 0
%waaji:0, parents:0, parents:0, parents:0, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoMoMo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(Alter, C).
;; 1
%waaji:0, parents:0, parents:0, parents:0, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoMoFa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(Alter, C).
;; 2
%waaji:0, parents:0, parents:0, parents:1, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoFaMo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(Alter, C).
;; 3
%waaji:0, parents:0, parents:0, parents:1, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoFaFa}  
 mother(A, Ego), mother(B, A), father(C, B), father(Alter, C).
;; 4
%waaji:0, parents:0, parents:1, parents:0, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaMoMo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(Alter, C).
;; 5
%waaji:0, parents:0, parents:1, parents:0, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaMoFa}  
 mother(A, Ego), father(B, A), mother(C, B), father(Alter, C).
;; 6
%waaji:0, parents:0, parents:1, parents:1, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaFaMo}  
 mother(A, Ego), father(B, A), father(C, B), mother(Alter, C).
;; 7
%waaji:0, parents:0, parents:1, parents:1, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaFaFa}  
 mother(A, Ego), father(B, A), father(C, B), father(Alter, C).
;; 8
%waaji:0, parents:1, parents:0, parents:0, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoMoMo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(Alter, C).
;; 9
%waaji:0, parents:1, parents:0, parents:0, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoMoFa}  
 father(A, Ego), mother(B, A), mother(C, B), father(Alter, C).
;; 10
%waaji:0, parents:1, parents:0, parents:1, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoFaMo}  
 father(A, Ego), mother(B, A), father(C, B), mother(Alter, C).
;; 11
%waaji:0, parents:1, parents:0, parents:1, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoFaFa}  
 father(A, Ego), mother(B, A), father(C, B), father(Alter, C).
;; 12
%waaji:0, parents:1, parents:1, parents:0, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaMoMo}  
 father(A, Ego), father(B, A), mother(C, B), mother(Alter, C).
;; 13
%waaji:0, parents:1, parents:1, parents:0, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaMoFa}  
 father(A, Ego), father(B, A), mother(C, B), father(Alter, C).
;; 14
%waaji:0, parents:1, parents:1, parents:1, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaFaMo}  
 father(A, Ego), father(B, A), father(C, B), mother(Alter, C).
;; 15
%waaji:0, parents:1, parents:1, parents:1, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaFaFa}  
 father(A, Ego), father(B, A), father(C, B), father(Alter, C).


wasil(Alter, Ego) :-  father(A, Ego), brother(Alter, A).
                  |   step_father(Alter, Ego).
                  |   mother(A, Ego), sister(B, A), husband(Alter, B).
{"FaBro_MoSisHu_Stfa"}
;; 0
%wasil:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%wasil:1, step_father:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stfa}  
 father(A, Ego), mother(B, Ego), husband(Alter, B), not(equal(Alter, A)).
;; 2
%wasil:2, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).

