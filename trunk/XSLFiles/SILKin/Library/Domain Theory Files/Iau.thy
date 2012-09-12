;;  Horn Clause Representation of Iau Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Iau") (author, "Janet Bateman") (date, "1983-01-01") (citation, "Janet Bateman in GODS, HEROES, KINSMEN pp. 191-220") 
(non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, true) (address, false) (recursiveLevels, 2)
(overlaps, (ai, (aui, boi, fvy, y)), (aui, (ai, boi, y)), (be, (fu)), (boi, (ai, aui, fvy, y)), (fu, (be)), (fvy, (ai, boi, y)), (y, (ai, aui, boi, fvy)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

aa(Alter, Ego) :-  father(Alter, Ego).
               |  [ext],  father(A, Ego), generation[aux]21gs(Alter, A).
{"Fa_FaBro_FaFaBroDa_FaFaBroSo_FaFaFaBroDaDa_FaFaFaBroDaSo_FaFaFaBroSoDa_FaFaFaBroSoSo_FaFaFaSisDaDa_FaFaFaSisDaSo_FaFaFaSisSoDa_FaFaFaSisSoSo_FaFaMoBroDaDa_FaFaMoBroDaSo_FaFaMoBroSoDa_FaFaMoBroSoSo_FaFaMoSisDaDa_FaFaMoSisDaSo_FaFaMoSisSoDa_FaFaMoSisSoSo_FaFaSisDa_FaFaSisSo_FaMoBroDa_FaMoBroSo_FaMoFaBroDaDa_FaMoFaBroDaSo_FaMoFaBroSoDa_FaMoFaBroSoSo_FaMoFaSisDaDa_FaMoFaSisDaSo_FaMoFaSisSoDa_FaMoFaSisSoSo_FaMoMoBroDaDa_FaMoMoBroDaSo_FaMoMoBroSoDa_FaMoMoBroSoSo_FaMoMoSisDaDa_FaMoMoSisDaSo_FaMoMoSisSoDa_FaMoMoSisSoSo_FaMoSisDa_FaMoSisSo_FaSis"}
;; 0
%aa:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).
;; 1
%aa:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%aa:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 3
%aa:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 4
%aa:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 5
%aa:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 6
%aa:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 7
%aa:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 8
%aa:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 9
%aa:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 10
%aa:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G).
;; 11
%aa:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 12
%aa:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 13
%aa:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).
;; 14
%aa:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).
;; 15
%aa:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 16
%aa:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 17
%aa:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 18
%aa:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G).
;; 19
%aa:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 20
%aa:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 21
%aa:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).
;; 22
%aa:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).
;; 23
%aa:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 24
%aa:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 25
%aa:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 26
%aa:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 27
%aa:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 28
%aa:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 29
%aa:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 30
%aa:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G).
;; 31
%aa:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 32
%aa:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 33
%aa:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).
;; 34
%aa:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).
;; 35
%aa:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 36
%aa:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 37
%aa:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 38
%aa:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G).
;; 39
%aa:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 40
%aa:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 41
%aa:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).
;; 42
%aa:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).


ai(Alter, Ego) :-  parents(A, Ego), sibling(B, A), children(Alter, B), gender(C, A), gender(D, B), not(equal(C, D)).
               |  [ext],  parents(A, Ego), generation[aux]21(B, A), children(Alter, B), gender(C, A), gender(D, B), not(equal(C, D)).
{"FaFaBroDaDa_FaFaBroDaSo_FaFaSisDaDa_FaFaSisDaSo_FaMoBroDaDa_FaMoBroDaSo_FaMoSisDaDa_FaMoSisDaSo_FaSisDa_FaSisSo_MoBroDa_MoBroSo_MoFaBroSoDa_MoFaBroSoSo_MoFaSisSoDa_MoFaSisSoSo_MoMoBroSoDa_MoMoBroSoSo_MoMoSisSoDa_MoMoSisSoSo"}
;; 0
%ai:0, parents:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 1
%ai:0, parents:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 2
%ai:0, parents:1, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 3
%ai:0, parents:1, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 4
%ai:1, parents:0, generation[aux]21:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 5
%ai:1, parents:0, generation[aux]21:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 6
%ai:1, parents:0, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), son(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 7
%ai:1, parents:0, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), daughter(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 8
%ai:1, parents:0, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), son(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 9
%ai:1, parents:0, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), daughter(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 10
%ai:1, parents:0, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), son(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 11
%ai:1, parents:0, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), daughter(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 12
%ai:1, parents:0, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), son(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 13
%ai:1, parents:0, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), daughter(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 14
%ai:1, parents:1, generation[aux]21:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 15
%ai:1, parents:1, generation[aux]21:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 16
%ai:1, parents:1, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), son(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 17
%ai:1, parents:1, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), daughter(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 18
%ai:1, parents:1, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), son(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 19
%ai:1, parents:1, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), daughter(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 20
%ai:1, parents:1, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), son(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 21
%ai:1, parents:1, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), daughter(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 22
%ai:1, parents:1, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), son(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 23
%ai:1, parents:1, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), daughter(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).


aty(Alter, Ego) :-  mother(Alter, Ego).
                |  [ext],  mother(A, Ego), generation[aux]21(Alter, A), female(Alter).
{"Mo_MoFaBroDa_MoFaFaBroDaDa_MoFaFaBroSoDa_MoFaFaSisDaDa_MoFaFaSisSoDa_MoFaMoBroDaDa_MoFaMoBroSoDa_MoFaMoSisDaDa_MoFaMoSisSoDa_MoFaSisDa_MoMoBroDa_MoMoFaBroDaDa_MoMoFaBroSoDa_MoMoFaSisDaDa_MoMoFaSisSoDa_MoMoMoBroDaDa_MoMoMoBroSoDa_MoMoMoSisDaDa_MoMoMoSisSoDa_MoMoSisDa_MoSis"}
;; 0
%aty:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).
;; 1
%aty:1, generation[aux]21:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%aty:1, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 3
%aty:1, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 4
%aty:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 5
%aty:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 6
%aty:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 7
%aty:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 8
%aty:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 9
%aty:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 10
%aty:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 11
%aty:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 12
%aty:1, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 13
%aty:1, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 14
%aty:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 15
%aty:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 16
%aty:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 17
%aty:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 18
%aty:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 19
%aty:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 20
%aty:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 21
%aty:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).


aui(Alter, Ego) :-  male(Ego), sister(Alter, Ego).
                |  [ext],  male(Ego), generation[aux]21(Alter, Ego), female(Alter).
{"FaBroDa_FaFaBroDaDa_FaFaBroSoDa_FaFaFaBroDaDaDa_FaFaFaBroDaSoDa_FaFaFaBroSoDaDa_FaFaFaBroSoSoDa_FaFaFaSisDaDaDa_FaFaFaSisDaSoDa_FaFaFaSisSoDaDa_FaFaFaSisSoSoDa_FaFaMoBroDaDaDa_FaFaMoBroDaSoDa_FaFaMoBroSoDaDa_FaFaMoBroSoSoDa_FaFaMoSisDaDaDa_FaFaMoSisDaSoDa_FaFaMoSisSoDaDa_FaFaMoSisSoSoDa_FaFaSisDaDa_FaFaSisSoDa_FaMoBroDaDa_FaMoBroSoDa_FaMoFaBroDaDaDa_FaMoFaBroDaSoDa_FaMoFaBroSoDaDa_FaMoFaBroSoSoDa_FaMoFaSisDaDaDa_FaMoFaSisDaSoDa_FaMoFaSisSoDaDa_FaMoFaSisSoSoDa_FaMoMoBroDaDaDa_FaMoMoBroDaSoDa_FaMoMoBroSoDaDa_FaMoMoBroSoSoDa_FaMoMoSisDaDaDa_FaMoMoSisDaSoDa_FaMoMoSisSoDaDa_FaMoMoSisSoSoDa_FaMoSisDaDa_FaMoSisSoDa_FaSisDa_MoBroDa_MoFaBroDaDa_MoFaBroSoDa_MoFaFaBroDaDaDa_MoFaFaBroDaSoDa_MoFaFaBroSoDaDa_MoFaFaBroSoSoDa_MoFaFaSisDaDaDa_MoFaFaSisDaSoDa_MoFaFaSisSoDaDa_MoFaFaSisSoSoDa_MoFaMoBroDaDaDa_MoFaMoBroDaSoDa_MoFaMoBroSoDaDa_MoFaMoBroSoSoDa_MoFaMoSisDaDaDa_MoFaMoSisDaSoDa_MoFaMoSisSoDaDa_MoFaMoSisSoSoDa_MoFaSisDaDa_MoFaSisSoDa_MoMoBroDaDa_MoMoBroSoDa_MoMoFaBroDaDaDa_MoMoFaBroDaSoDa_MoMoFaBroSoDaDa_MoMoFaBroSoSoDa_MoMoFaSisDaDaDa_MoMoFaSisDaSoDa_MoMoFaSisSoDaDa_MoMoFaSisSoSoDa_MoMoMoBroDaDaDa_MoMoMoBroDaSoDa_MoMoMoBroSoDaDa_MoMoMoBroSoSoDa_MoMoMoSisDaDaDa_MoMoMoSisDaSoDa_MoMoMoSisSoDaDa_MoMoMoSisSoSoDa_MoMoSisDaDa_MoMoSisSoDa_MoSisDa_Sis"}
;; 0
%aui:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%aui:1, generation[aux]21:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), female(Alter).
;; 3
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), female(Alter).
;; 4
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter).
;; 5
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Alter).
;; 6
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Alter).
;; 7
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Alter).
;; 8
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 9
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 10
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 11
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 12
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 13
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 14
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 15
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 16
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 17
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 18
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 19
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 20
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 21
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 22
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 23
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 24
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter).
;; 25
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Alter).
;; 26
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Alter).
;; 27
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Alter).
;; 28
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 29
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 30
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 31
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 32
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 33
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 34
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 35
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 36
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 37
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 38
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 39
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 40
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 41
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 42
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 43
%aui:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 44
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), female(Alter).
;; 45
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), female(Alter).
;; 46
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter).
;; 47
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Alter).
;; 48
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Alter).
;; 49
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Alter).
;; 50
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 51
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 52
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 53
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 54
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 55
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 56
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 57
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 58
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 59
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 60
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 61
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 62
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 63
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 64
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 65
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 66
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter).
;; 67
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Alter).
;; 68
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Alter).
;; 69
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Alter).
;; 70
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 71
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 72
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 73
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 74
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 75
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 76
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 77
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 78
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 79
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 80
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 81
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 82
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter).
;; 83
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter).
;; 84
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter).
;; 85
%aui:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter).


be(Alter, Ego) :-  husband(Ego, A), father(Alter, A).
               |  [ext],  male(Ego), sibling(Ego, A), husband(A, B), father(Alter, B).
               |  [ext],  female(Ego), sibling(Ego, A), husband(A, B), father(Alter, B).
               |  [ext],  husband(Ego, A), father(B, A), siblings(Alter, B).
               |  [ext],  male(Ego), sibling(Ego, A), husband(A, B), father(C, B), siblings(Alter, C).
               |  [ext],  female(Ego), sibling(Ego, A), husband(A, B), father(C, B), siblings(Alter, C).
{"BroWiFa_BroWiFaBro_BroWiFaSis_WiFa_WiFaBro_WiFaSis"}
;; 0
%be:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 husband(Ego, A), father(Alter, A).
;; 1
%be:1, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {BroWiFa}  
[ext],  male(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), father(Alter, D).
;; 2
%be:2, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {BroWiFa}  
[ext],  female(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), father(Alter, D).
;; 3
%be:3, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaBro}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 4
%be:3, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaSis}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 5
%be:4, sibling:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {BroWiFaBro}  
[ext],  male(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), father(E, D), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), male(Alter).
;; 6
%be:4, sibling:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {BroWiFaSis}  
[ext],  male(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), father(E, D), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), female(Alter).
;; 7
%be:5, sibling:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {BroWiFaBro}  
[ext],  female(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), father(E, D), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), male(Alter).
;; 8
%be:5, sibling:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {BroWiFaSis}  
[ext],  female(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), father(E, D), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), female(Alter).


bi(Alter, Ego) :-  children(A, Ego), children(Alter, A).
               |  [ext],  generation[aux]21smallGS(A, Ego), children(B, A), children(Alter, B).
               |  [ext],  bi(A, Ego), children(Alter, A).
{"BroDaDa_BroDaDaDa_BroDaDaDaDa_BroDaDaDaSo_BroDaDaSo_BroDaDaSoDa_BroDaDaSoSo_BroDaSo_BroDaSoDa_BroDaSoDaDa_BroDaSoDaSo_BroDaSoSo_BroDaSoSoDa_BroDaSoSoSo_BroSoDa_BroSoDaDa_BroSoDaDaDa_BroSoDaDaSo_BroSoDaSo_BroSoDaSoDa_BroSoDaSoSo_BroSoSo_BroSoSoDa_BroSoSoDaDa_BroSoSoDaSo_BroSoSoSo_BroSoSoSoDa_BroSoSoSoSo_DaDa_DaDaDa_DaDaDaDa_DaDaDaSo_DaDaSo_DaDaSoDa_DaDaSoSo_DaSo_DaSoDa_DaSoDaDa_DaSoDaSo_DaSoSo_DaSoSoDa_DaSoSoSo_FaBroDaDaDa_FaBroDaDaDaDa_FaBroDaDaDaDaDa_FaBroDaDaDaDaSo_FaBroDaDaDaSo_FaBroDaDaDaSoDa_FaBroDaDaDaSoSo_FaBroDaDaSo_FaBroDaDaSoDa_FaBroDaDaSoDaDa_FaBroDaDaSoDaSo_FaBroDaDaSoSo_FaBroDaDaSoSoDa_FaBroDaDaSoSoSo_FaBroDaSoDa_FaBroDaSoDaDa_FaBroDaSoDaDaDa_FaBroDaSoDaDaSo_FaBroDaSoDaSo_FaBroDaSoDaSoDa_FaBroDaSoDaSoSo_FaBroDaSoSo_FaBroDaSoSoDa_FaBroDaSoSoDaDa_FaBroDaSoSoDaSo_FaBroDaSoSoSo_FaBroDaSoSoSoDa_FaBroDaSoSoSoSo_FaBroSoDaDa_FaBroSoDaDaDa_FaBroSoDaDaDaDa_FaBroSoDaDaDaSo_FaBroSoDaDaSo_FaBroSoDaDaSoDa_FaBroSoDaDaSoSo_FaBroSoDaSo_FaBroSoDaSoDa_FaBroSoDaSoDaDa_FaBroSoDaSoDaSo_FaBroSoDaSoSo_FaBroSoDaSoSoDa_FaBroSoDaSoSoSo_FaBroSoSoDa_FaBroSoSoDaDa_FaBroSoSoDaDaDa_FaBroSoSoDaDaSo_FaBroSoSoDaSo_FaBroSoSoDaSoDa_FaBroSoSoDaSoSo_FaBroSoSoSo_FaBroSoSoSoDa_FaBroSoSoSoDaDa_FaBroSoSoSoDaSo_FaBroSoSoSoSo_FaBroSoSoSoSoDa_FaBroSoSoSoSoSo_FaSisDaDaDa_FaSisDaDaDaDa_FaSisDaDaDaDaDa_FaSisDaDaDaDaSo_FaSisDaDaDaSo_FaSisDaDaDaSoDa_FaSisDaDaDaSoSo_FaSisDaDaSo_FaSisDaDaSoDa_FaSisDaDaSoDaDa_FaSisDaDaSoDaSo_FaSisDaDaSoSo_FaSisDaDaSoSoDa_FaSisDaDaSoSoSo_FaSisDaSoDa_FaSisDaSoDaDa_FaSisDaSoDaDaDa_FaSisDaSoDaDaSo_FaSisDaSoDaSo_FaSisDaSoDaSoDa_FaSisDaSoDaSoSo_FaSisDaSoSo_FaSisDaSoSoDa_FaSisDaSoSoDaDa_FaSisDaSoSoDaSo_FaSisDaSoSoSo_FaSisDaSoSoSoDa_FaSisDaSoSoSoSo_FaSisSoDaDa_FaSisSoDaDaDa_FaSisSoDaDaDaDa_FaSisSoDaDaDaSo_FaSisSoDaDaSo_FaSisSoDaDaSoDa_FaSisSoDaDaSoSo_FaSisSoDaSo_FaSisSoDaSoDa_FaSisSoDaSoDaDa_FaSisSoDaSoDaSo_FaSisSoDaSoSo_FaSisSoDaSoSoDa_FaSisSoDaSoSoSo_FaSisSoSoDa_FaSisSoSoDaDa_FaSisSoSoDaDaDa_FaSisSoSoDaDaSo_FaSisSoSoDaSo_FaSisSoSoDaSoDa_FaSisSoSoDaSoSo_FaSisSoSoSo_FaSisSoSoSoDa_FaSisSoSoSoDaDa_FaSisSoSoSoDaSo_FaSisSoSoSoSo_FaSisSoSoSoSoDa_FaSisSoSoSoSoSo_MoBroDaDaDa_MoBroDaDaDaDa_MoBroDaDaDaDaDa_MoBroDaDaDaDaSo_MoBroDaDaDaSo_MoBroDaDaDaSoDa_MoBroDaDaDaSoSo_MoBroDaDaSo_MoBroDaDaSoDa_MoBroDaDaSoDaDa_MoBroDaDaSoDaSo_MoBroDaDaSoSo_MoBroDaDaSoSoDa_MoBroDaDaSoSoSo_MoBroDaSoDa_MoBroDaSoDaDa_MoBroDaSoDaDaDa_MoBroDaSoDaDaSo_MoBroDaSoDaSo_MoBroDaSoDaSoDa_MoBroDaSoDaSoSo_MoBroDaSoSo_MoBroDaSoSoDa_MoBroDaSoSoDaDa_MoBroDaSoSoDaSo_MoBroDaSoSoSo_MoBroDaSoSoSoDa_MoBroDaSoSoSoSo_MoBroSoDaDa_MoBroSoDaDaDa_MoBroSoDaDaDaDa_MoBroSoDaDaDaSo_MoBroSoDaDaSo_MoBroSoDaDaSoDa_MoBroSoDaDaSoSo_MoBroSoDaSo_MoBroSoDaSoDa_MoBroSoDaSoDaDa_MoBroSoDaSoDaSo_MoBroSoDaSoSo_MoBroSoDaSoSoDa_MoBroSoDaSoSoSo_MoBroSoSoDa_MoBroSoSoDaDa_MoBroSoSoDaDaDa_MoBroSoSoDaDaSo_MoBroSoSoDaSo_MoBroSoSoDaSoDa_MoBroSoSoDaSoSo_MoBroSoSoSo_MoBroSoSoSoDa_MoBroSoSoSoDaDa_MoBroSoSoSoDaSo_MoBroSoSoSoSo_MoBroSoSoSoSoDa_MoBroSoSoSoSoSo_MoSisDaDaDa_MoSisDaDaDaDa_MoSisDaDaDaDaDa_MoSisDaDaDaDaSo_MoSisDaDaDaSo_MoSisDaDaDaSoDa_MoSisDaDaDaSoSo_MoSisDaDaSo_MoSisDaDaSoDa_MoSisDaDaSoDaDa_MoSisDaDaSoDaSo_MoSisDaDaSoSo_MoSisDaDaSoSoDa_MoSisDaDaSoSoSo_MoSisDaSoDa_MoSisDaSoDaDa_MoSisDaSoDaDaDa_MoSisDaSoDaDaSo_MoSisDaSoDaSo_MoSisDaSoDaSoDa_MoSisDaSoDaSoSo_MoSisDaSoSo_MoSisDaSoSoDa_MoSisDaSoSoDaDa_MoSisDaSoSoDaSo_MoSisDaSoSoSo_MoSisDaSoSoSoDa_MoSisDaSoSoSoSo_MoSisSoDaDa_MoSisSoDaDaDa_MoSisSoDaDaDaDa_MoSisSoDaDaDaSo_MoSisSoDaDaSo_MoSisSoDaDaSoDa_MoSisSoDaDaSoSo_MoSisSoDaSo_MoSisSoDaSoDa_MoSisSoDaSoDaDa_MoSisSoDaSoDaSo_MoSisSoDaSoSo_MoSisSoDaSoSoDa_MoSisSoDaSoSoSo_MoSisSoSoDa_MoSisSoSoDaDa_MoSisSoSoDaDaDa_MoSisSoSoDaDaSo_MoSisSoSoDaSo_MoSisSoSoDaSoDa_MoSisSoSoDaSoSo_MoSisSoSoSo_MoSisSoSoSoDa_MoSisSoSoSoDaDa_MoSisSoSoSoDaSo_MoSisSoSoSoSo_MoSisSoSoSoSoDa_MoSisSoSoSoSoSo_SisDaDa_SisDaDaDa_SisDaDaDaDa_SisDaDaDaSo_SisDaDaSo_SisDaDaSoDa_SisDaDaSoSo_SisDaSo_SisDaSoDa_SisDaSoDaDa_SisDaSoDaSo_SisDaSoSo_SisDaSoSoDa_SisDaSoSoSo_SisSoDa_SisSoDaDa_SisSoDaDaDa_SisSoDaDaSo_SisSoDaSo_SisSoDaSoDa_SisSoDaSoSo_SisSoSo_SisSoSoDa_SisSoSoDaDa_SisSoSoDaSo_SisSoSoSo_SisSoSoSoDa_SisSoSoSoSo_SoDa_SoDaDa_SoDaDaDa_SoDaDaSo_SoDaSo_SoDaSoDa_SoDaSoSo_SoSo_SoSoDa_SoSoDaDa_SoSoDaSo_SoSoSo_SoSoSoDa_SoSoSoSo"}
;; 0
%bi:0, children:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).
;; 1
%bi:0, children:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).
;; 2
%bi:0, children:1, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).
;; 3
%bi:0, children:1, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).
;; 4
%bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(Alter, D).
;; 5
%bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(Alter, D).
;; 6
%bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(Alter, D).
;; 7
%bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(Alter, D).
;; 8
%bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(Alter, D).
;; 9
%bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(Alter, D).
;; 10
%bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(Alter, D).
;; 11
%bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(Alter, D).
;; 12
%bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 13
%bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 14
%bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 15
%bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 16
%bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 17
%bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 18
%bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 19
%bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 20
%bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 21
%bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 22
%bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 23
%bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 24
%bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 25
%bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 26
%bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 27
%bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 28
%bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 29
%bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 30
%bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 31
%bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 32
%bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 33
%bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 34
%bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 35
%bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 36
%bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 37
%bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 38
%bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 39
%bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 40
%bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 41
%bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 42
%bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 43
%bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 44
%bi:2, bi:0, children:0, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
[ext],  son(A, Ego), son(B, A), son(Alter, B).
;; 45
%bi:2, bi:0, children:0, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
[ext],  son(A, Ego), son(B, A), daughter(Alter, B).
;; 46
%bi:2, bi:0, children:0, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
[ext],  son(A, Ego), daughter(B, A), son(Alter, B).
;; 47
%bi:2, bi:0, children:0, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
[ext],  son(A, Ego), daughter(B, A), daughter(Alter, B).
;; 48
%bi:2, bi:0, children:1, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
[ext],  daughter(A, Ego), son(B, A), son(Alter, B).
;; 49
%bi:2, bi:0, children:1, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
[ext],  daughter(A, Ego), son(B, A), daughter(Alter, B).
;; 50
%bi:2, bi:0, children:1, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
[ext],  daughter(A, Ego), daughter(B, A), son(Alter, B).
;; 51
%bi:2, bi:0, children:1, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
[ext],  daughter(A, Ego), daughter(B, A), daughter(Alter, B).
;; 52
%bi:2, bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), son(Alter, E).
;; 53
%bi:2, bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), daughter(Alter, E).
;; 54
%bi:2, bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), son(Alter, E).
;; 55
%bi:2, bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 56
%bi:2, bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), son(Alter, E).
;; 57
%bi:2, bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 58
%bi:2, bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 59
%bi:2, bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), daughter(Alter, E).
;; 60
%bi:2, bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), son(Alter, E).
;; 61
%bi:2, bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), daughter(Alter, E).
;; 62
%bi:2, bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), son(Alter, E).
;; 63
%bi:2, bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 64
%bi:2, bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), son(Alter, E).
;; 65
%bi:2, bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 66
%bi:2, bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 67
%bi:2, bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), daughter(Alter, E).
;; 68
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 69
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 70
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 71
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 72
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 73
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 74
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 75
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 76
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 77
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 78
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 79
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 80
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 81
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 82
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 83
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 84
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 85
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 86
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 87
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 88
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 89
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 90
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 91
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 92
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 93
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 94
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 95
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 96
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 97
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 98
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 99
%bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 100
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 101
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 102
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 103
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 104
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 105
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 106
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 107
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 108
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 109
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 110
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 111
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 112
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 113
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 114
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 115
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 116
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 117
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 118
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 119
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 120
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 121
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 122
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 123
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 124
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 125
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 126
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 127
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 128
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 129
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 130
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 131
%bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 132
%bi:2, bi:2, bi:0, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoSo}  
[ext], [ext],  son(A, Ego), son(B, A), son(C, B), son(Alter, C).
;; 133
%bi:2, bi:2, bi:0, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoDa}  
[ext], [ext],  son(A, Ego), son(B, A), son(C, B), daughter(Alter, C).
;; 134
%bi:2, bi:2, bi:0, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaSo}  
[ext], [ext],  son(A, Ego), son(B, A), daughter(C, B), son(Alter, C).
;; 135
%bi:2, bi:2, bi:0, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaDa}  
[ext], [ext],  son(A, Ego), son(B, A), daughter(C, B), daughter(Alter, C).
;; 136
%bi:2, bi:2, bi:0, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoSo}  
[ext], [ext],  son(A, Ego), daughter(B, A), son(C, B), son(Alter, C).
;; 137
%bi:2, bi:2, bi:0, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoDa}  
[ext], [ext],  son(A, Ego), daughter(B, A), son(C, B), daughter(Alter, C).
;; 138
%bi:2, bi:2, bi:0, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaSo}  
[ext], [ext],  son(A, Ego), daughter(B, A), daughter(C, B), son(Alter, C).
;; 139
%bi:2, bi:2, bi:0, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaDa}  
[ext], [ext],  son(A, Ego), daughter(B, A), daughter(C, B), daughter(Alter, C).
;; 140
%bi:2, bi:2, bi:0, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoSo}  
[ext], [ext],  daughter(A, Ego), son(B, A), son(C, B), son(Alter, C).
;; 141
%bi:2, bi:2, bi:0, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoDa}  
[ext], [ext],  daughter(A, Ego), son(B, A), son(C, B), daughter(Alter, C).
;; 142
%bi:2, bi:2, bi:0, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaSo}  
[ext], [ext],  daughter(A, Ego), son(B, A), daughter(C, B), son(Alter, C).
;; 143
%bi:2, bi:2, bi:0, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaDa}  
[ext], [ext],  daughter(A, Ego), son(B, A), daughter(C, B), daughter(Alter, C).
;; 144
%bi:2, bi:2, bi:0, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoSo}  
[ext], [ext],  daughter(A, Ego), daughter(B, A), son(C, B), son(Alter, C).
;; 145
%bi:2, bi:2, bi:0, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoDa}  
[ext], [ext],  daughter(A, Ego), daughter(B, A), son(C, B), daughter(Alter, C).
;; 146
%bi:2, bi:2, bi:0, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaSo}  
[ext], [ext],  daughter(A, Ego), daughter(B, A), daughter(C, B), son(Alter, C).
;; 147
%bi:2, bi:2, bi:0, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaDa}  
[ext], [ext],  daughter(A, Ego), daughter(B, A), daughter(C, B), daughter(Alter, C).
;; 148
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoSoSo}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), son(F, E), son(Alter, F).
;; 149
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoSoDa}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), son(F, E), daughter(Alter, F).
;; 150
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoDaSo}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), daughter(F, E), son(Alter, F).
;; 151
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoDaDa}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), daughter(F, E), daughter(Alter, F).
;; 152
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaSoSo}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), son(F, E), son(Alter, F).
;; 153
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaSoDa}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), son(F, E), daughter(Alter, F).
;; 154
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaDaSo}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), daughter(F, E), son(Alter, F).
;; 155
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaDaDa}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 156
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoSoSo}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), son(F, E), son(Alter, F).
;; 157
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoSoDa}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), son(F, E), daughter(Alter, F).
;; 158
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoDaSo}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), daughter(F, E), son(Alter, F).
;; 159
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoDaDa}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), daughter(F, E), daughter(Alter, F).
;; 160
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaSoSo}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), son(F, E), son(Alter, F).
;; 161
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaSoDa}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), son(F, E), daughter(Alter, F).
;; 162
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaDaSo}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), daughter(F, E), son(Alter, F).
;; 163
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaDaDa}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 164
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoSoSo}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), son(F, E), son(Alter, F).
;; 165
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoSoDa}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), son(F, E), daughter(Alter, F).
;; 166
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoDaSo}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), daughter(F, E), son(Alter, F).
;; 167
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoDaDa}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), daughter(F, E), daughter(Alter, F).
;; 168
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaSoSo}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), son(F, E), son(Alter, F).
;; 169
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaSoDa}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), son(F, E), daughter(Alter, F).
;; 170
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaDaSo}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), daughter(F, E), son(Alter, F).
;; 171
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaDaDa}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 172
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoSoSo}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), son(F, E), son(Alter, F).
;; 173
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoSoDa}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), son(F, E), daughter(Alter, F).
;; 174
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoDaSo}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), daughter(F, E), son(Alter, F).
;; 175
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoDaDa}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), daughter(F, E), daughter(Alter, F).
;; 176
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaSoSo}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(F, E), son(Alter, F).
;; 177
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaSoDa}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(F, E), daughter(Alter, F).
;; 178
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaDaSo}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), daughter(F, E), son(Alter, F).
;; 179
%bi:2, bi:2, bi:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaDaDa}  
[ext], [ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 180
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoSoSoSoSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 181
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoSoSoSoDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 182
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoSoSoDaSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 183
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoSoSoDaDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 184
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoSoDaSoSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 185
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoSoDaSoDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 186
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoSoDaDaSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 187
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoSoDaDaDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 188
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoDaSoSoSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 189
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoDaSoSoDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 190
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoDaSoDaSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 191
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoDaSoDaDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 192
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoDaDaSoSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 193
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoDaDaSoDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 194
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoDaDaDaSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 195
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoDaDaDaDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 196
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoSoSoSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 197
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoSoSoDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 198
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoSoDaSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 199
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoSoDaDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 200
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoDaSoSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 201
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoDaSoDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 202
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoDaDaSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 203
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoDaDaDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 204
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaSoSoSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 205
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaSoSoDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 206
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaSoDaSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 207
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaSoDaDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 208
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaDaSoSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 209
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaDaSoDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 210
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaDaDaSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 211
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaDaDaDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 212
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoSoSoSoSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 213
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoSoSoSoDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 214
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoSoSoDaSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 215
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoSoSoDaDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 216
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoSoDaSoSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 217
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoSoDaSoDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 218
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoSoDaDaSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 219
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoSoDaDaDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 220
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoDaSoSoSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 221
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoDaSoSoDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 222
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoDaSoDaSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 223
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoDaSoDaDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 224
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoDaDaSoSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 225
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoDaDaSoDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 226
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoDaDaDaSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 227
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoDaDaDaDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 228
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaSoSoSoSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 229
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaSoSoSoDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 230
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaSoSoDaSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 231
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaSoSoDaDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 232
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaSoDaSoSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 233
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaSoDaSoDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 234
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaSoDaDaSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 235
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaSoDaDaDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 236
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaDaSoSoSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 237
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaDaSoSoDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 238
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaDaSoDaSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 239
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaDaSoDaDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 240
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaDaDaSoSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 241
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaDaDaSoDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 242
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaDaDaDaSo}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 243
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaDaDaDaDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 244
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoSoSoSoSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 245
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoSoSoSoDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 246
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoSoSoDaSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 247
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoSoSoDaDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 248
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoSoDaSoSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 249
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoSoDaSoDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 250
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoSoDaDaSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 251
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoSoDaDaDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 252
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoDaSoSoSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 253
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoDaSoSoDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 254
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoDaSoDaSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 255
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoDaSoDaDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 256
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoDaDaSoSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 257
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoDaDaSoDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 258
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoDaDaDaSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 259
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoDaDaDaDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 260
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaSoSoSoSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 261
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaSoSoSoDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 262
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaSoSoDaSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 263
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaSoSoDaDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 264
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaSoDaSoSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 265
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaSoDaSoDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 266
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaSoDaDaSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 267
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaSoDaDaDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 268
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaDaSoSoSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 269
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaDaSoSoDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 270
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaDaSoDaSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 271
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaDaSoDaDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 272
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaDaDaSoSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 273
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaDaDaSoDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 274
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaDaDaDaSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 275
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaDaDaDaDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 276
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoSoSoSoSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 277
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoSoSoSoDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 278
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoSoSoDaSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 279
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoSoSoDaDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 280
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoSoDaSoSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 281
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoSoDaSoDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 282
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoSoDaDaSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 283
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoSoDaDaDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 284
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoDaSoSoSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 285
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoDaSoSoDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 286
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoDaSoDaSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 287
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoDaSoDaDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 288
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoDaDaSoSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 289
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoDaDaSoDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 290
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoDaDaDaSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 291
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoDaDaDaDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 292
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaSoSoSoSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 293
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaSoSoSoDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 294
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaSoSoDaSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 295
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaSoSoDaDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 296
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaSoDaSoSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 297
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaSoDaSoDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 298
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaSoDaDaSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 299
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaSoDaDaDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 300
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaDaSoSoSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 301
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaDaSoSoDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 302
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaDaSoDaSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 303
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaDaSoDaDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 304
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaDaDaSoSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 305
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaDaDaSoDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 306
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaDaDaDaSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 307
%bi:2, bi:2, bi:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaDaDaDaDa}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).


boi(Alter, Ego) :-  siblings(Alter, Ego), elder(Alter, Ego).
                |  [ext],  parents(A, Ego), boi(B, A), children(Alter, B).
{"Bro_FaBroDa_FaBroSo_FaFaBroDaDa_FaFaBroDaSo_FaFaBroSoDa_FaFaBroSoSo_FaFaSisDaDa_FaFaSisDaSo_FaFaSisSoDa_FaFaSisSoSo_FaMoBroDaDa_FaMoBroDaSo_FaMoBroSoDa_FaMoBroSoSo_FaMoSisDaDa_FaMoSisDaSo_FaMoSisSoDa_FaMoSisSoSo_FaSisDa_FaSisSo_MoBroDa_MoBroSo_MoFaBroDaDa_MoFaBroDaSo_MoFaBroSoDa_MoFaBroSoSo_MoFaSisDaDa_MoFaSisDaSo_MoFaSisSoDa_MoFaSisSoSo_MoMoBroDaDa_MoMoBroDaSo_MoMoBroSoDa_MoMoBroSoSo_MoMoSisDaDa_MoMoSisDaSo_MoMoSisSoDa_MoMoSisSoSo_MoSisDa_MoSisSo_Sis"}
;; 0
%boi:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%boi:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).
;; 2
%boi:1, parents:0, boi:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), son(Alter, D).
;; 3
%boi:1, parents:0, boi:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), daughter(Alter, D).
;; 4
%boi:1, parents:0, boi:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), son(Alter, D).
;; 5
%boi:1, parents:0, boi:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), daughter(Alter, D).
;; 6
%boi:1, parents:0, boi:1, parents:0, boi:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), son(Alter, F).
;; 7
%boi:1, parents:0, boi:1, parents:0, boi:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), daughter(Alter, F).
;; 8
%boi:1, parents:0, boi:1, parents:0, boi:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), son(Alter, F).
;; 9
%boi:1, parents:0, boi:1, parents:0, boi:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), daughter(Alter, F).
;; 10
%boi:1, parents:0, boi:1, parents:0, boi:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), son(Alter, F).
;; 11
%boi:1, parents:0, boi:1, parents:0, boi:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), daughter(Alter, F).
;; 12
%boi:1, parents:0, boi:1, parents:0, boi:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), son(Alter, F).
;; 13
%boi:1, parents:0, boi:1, parents:0, boi:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), daughter(Alter, F).
;; 14
%boi:1, parents:0, boi:1, parents:1, boi:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), son(Alter, F).
;; 15
%boi:1, parents:0, boi:1, parents:1, boi:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), daughter(Alter, F).
;; 16
%boi:1, parents:0, boi:1, parents:1, boi:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), son(Alter, F).
;; 17
%boi:1, parents:0, boi:1, parents:1, boi:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), daughter(Alter, F).
;; 18
%boi:1, parents:0, boi:1, parents:1, boi:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), son(Alter, F).
;; 19
%boi:1, parents:0, boi:1, parents:1, boi:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), daughter(Alter, F).
;; 20
%boi:1, parents:0, boi:1, parents:1, boi:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), son(Alter, F).
;; 21
%boi:1, parents:0, boi:1, parents:1, boi:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), daughter(Alter, F).
;; 22
%boi:1, parents:1, boi:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), son(Alter, D).
;; 23
%boi:1, parents:1, boi:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), daughter(Alter, D).
;; 24
%boi:1, parents:1, boi:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), son(Alter, D).
;; 25
%boi:1, parents:1, boi:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), daughter(Alter, D).
;; 26
%boi:1, parents:1, boi:1, parents:0, boi:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), son(Alter, F).
;; 27
%boi:1, parents:1, boi:1, parents:0, boi:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), daughter(Alter, F).
;; 28
%boi:1, parents:1, boi:1, parents:0, boi:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), son(Alter, F).
;; 29
%boi:1, parents:1, boi:1, parents:0, boi:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), daughter(Alter, F).
;; 30
%boi:1, parents:1, boi:1, parents:0, boi:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), son(Alter, F).
;; 31
%boi:1, parents:1, boi:1, parents:0, boi:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), daughter(Alter, F).
;; 32
%boi:1, parents:1, boi:1, parents:0, boi:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), son(Alter, F).
;; 33
%boi:1, parents:1, boi:1, parents:0, boi:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), daughter(Alter, F).
;; 34
%boi:1, parents:1, boi:1, parents:1, boi:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), son(Alter, F).
;; 35
%boi:1, parents:1, boi:1, parents:1, boi:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), daughter(Alter, F).
;; 36
%boi:1, parents:1, boi:1, parents:1, boi:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), son(Alter, F).
;; 37
%boi:1, parents:1, boi:1, parents:1, boi:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), daughter(Alter, F).
;; 38
%boi:1, parents:1, boi:1, parents:1, boi:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), son(Alter, F).
;; 39
%boi:1, parents:1, boi:1, parents:1, boi:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), daughter(Alter, F).
;; 40
%boi:1, parents:1, boi:1, parents:1, boi:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), son(Alter, F).
;; 41
%boi:1, parents:1, boi:1, parents:1, boi:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), daughter(Alter, F).


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


dv(Alter, Ego) :-  be(Ego, Alter).
               |   fu(Ego, Alter).
{"BroDaHu_BroDaHuBro_BroDaHuSis_DaHu_DaHuBro_DaHuSis_SisDaHu_SisDaHuBro_SisDaHuSis"}
;; 0
%dv:0, be:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 husband(Alter, A), father(Ego, A).
;; 1
%dv:0, be:1, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {DaHuBro}  
[ext],  male(Alter), mother(A, B), father(C, B), child(Alter, A), child(Alter, C), not(equal(Alter, B)), husband(B, D), father(Ego, D).
;; 2
%dv:0, be:2, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {DaHuSis}  
[ext],  female(Alter), mother(A, B), father(C, B), child(Alter, A), child(Alter, C), not(equal(Alter, B)), husband(B, D), father(Ego, D).
;; 3
%dv:0, be:3, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
[ext],  husband(Alter, A), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego).
;; 4
%dv:0, be:3, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
[ext],  husband(Alter, A), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego).
;; 5
%dv:0, be:4, sibling:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {BroDaHuBro}  
[ext],  male(Alter), mother(A, B), father(C, B), child(Alter, A), child(Alter, C), not(equal(Alter, B)), husband(B, D), father(E, D), mother(F, E), father(G, E), child(Ego, F), child(Ego, G), not(equal(Ego, E)), male(Ego).
;; 6
%dv:0, be:4, sibling:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {BroDaHuBro}  
[ext],  male(Alter), mother(A, B), father(C, B), child(Alter, A), child(Alter, C), not(equal(Alter, B)), husband(B, D), father(E, D), mother(F, E), father(G, E), child(Ego, F), child(Ego, G), not(equal(Ego, E)), female(Ego).
;; 7
%dv:0, be:5, sibling:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {BroDaHuSis}  
[ext],  female(Alter), mother(A, B), father(C, B), child(Alter, A), child(Alter, C), not(equal(Alter, B)), husband(B, D), father(E, D), mother(F, E), father(G, E), child(Ego, F), child(Ego, G), not(equal(Ego, E)), male(Ego).
;; 8
%dv:0, be:5, sibling:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {BroDaHuSis}  
[ext],  female(Alter), mother(A, B), father(C, B), child(Alter, A), child(Alter, C), not(equal(Alter, B)), husband(B, D), father(E, D), mother(F, E), father(G, E), child(Ego, F), child(Ego, G), not(equal(Ego, E)), female(Ego).
;; 9
%dv:1, fu:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 husband(Alter, A), mother(Ego, A).
;; 10
%dv:1, fu:1, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {DaHuBro}  
[ext],  male(Alter), mother(A, B), father(C, B), child(Alter, A), child(Alter, C), not(equal(Alter, B)), husband(B, D), mother(Ego, D).
;; 11
%dv:1, fu:2, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {DaHuSis}  
[ext],  female(Alter), mother(A, B), father(C, B), child(Alter, A), child(Alter, C), not(equal(Alter, B)), husband(B, D), mother(Ego, D).
;; 12
%dv:1, fu:3, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
[ext],  husband(Alter, A), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego).
;; 13
%dv:1, fu:3, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
[ext],  husband(Alter, A), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego).
;; 14
%dv:1, fu:4, sibling:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {SisDaHuBro}  
[ext],  male(Alter), mother(A, B), father(C, B), child(Alter, A), child(Alter, C), not(equal(Alter, B)), husband(B, D), mother(E, D), mother(F, E), father(G, E), child(Ego, F), child(Ego, G), not(equal(Ego, E)), male(Ego).
;; 15
%dv:1, fu:4, sibling:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {SisDaHuBro}  
[ext],  male(Alter), mother(A, B), father(C, B), child(Alter, A), child(Alter, C), not(equal(Alter, B)), husband(B, D), mother(E, D), mother(F, E), father(G, E), child(Ego, F), child(Ego, G), not(equal(Ego, E)), female(Ego).
;; 16
%dv:1, fu:5, sibling:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {SisDaHuSis}  
[ext],  female(Alter), mother(A, B), father(C, B), child(Alter, A), child(Alter, C), not(equal(Alter, B)), husband(B, D), mother(E, D), mother(F, E), father(G, E), child(Ego, F), child(Ego, G), not(equal(Ego, E)), male(Ego).
;; 17
%dv:1, fu:5, sibling:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {SisDaHuSis}  
[ext],  female(Alter), mother(A, B), father(C, B), child(Alter, A), child(Alter, C), not(equal(Alter, B)), husband(B, D), mother(E, D), mother(F, E), father(G, E), child(Ego, F), child(Ego, G), not(equal(Ego, E)), female(Ego).


e(Alter, Ego) :-  parents(A, Ego), parents(Alter, A).
              |  [ext],  parents(A, Ego), parents(B, A), generation[aux]21smallGS(Alter, B).
              |  [ext],  parents(A, Ego), e(Alter, A).
{"FaFa_FaFaBro_FaFaFa_FaFaFaBro_FaFaFaBroDa_FaFaFaBroSo_FaFaFaFa_FaFaFaFaBro_FaFaFaFaBroDa_FaFaFaFaBroSo_FaFaFaFaSis_FaFaFaFaSisDa_FaFaFaFaSisSo_FaFaFaMo_FaFaFaMoBro_FaFaFaMoBroDa_FaFaFaMoBroSo_FaFaFaMoSis_FaFaFaMoSisDa_FaFaFaMoSisSo_FaFaFaSis_FaFaFaSisDa_FaFaFaSisSo_FaFaMo_FaFaMoBro_FaFaMoBroDa_FaFaMoBroSo_FaFaMoFa_FaFaMoFaBro_FaFaMoFaBroDa_FaFaMoFaBroSo_FaFaMoFaSis_FaFaMoFaSisDa_FaFaMoFaSisSo_FaFaMoMo_FaFaMoMoBro_FaFaMoMoBroDa_FaFaMoMoBroSo_FaFaMoMoSis_FaFaMoMoSisDa_FaFaMoMoSisSo_FaFaMoSis_FaFaMoSisDa_FaFaMoSisSo_FaFaSis_FaMo_FaMoBro_FaMoFa_FaMoFaBro_FaMoFaBroDa_FaMoFaBroSo_FaMoFaFa_FaMoFaFaBro_FaMoFaFaBroDa_FaMoFaFaBroSo_FaMoFaFaSis_FaMoFaFaSisDa_FaMoFaFaSisSo_FaMoFaMo_FaMoFaMoBro_FaMoFaMoBroDa_FaMoFaMoBroSo_FaMoFaMoSis_FaMoFaMoSisDa_FaMoFaMoSisSo_FaMoFaSis_FaMoFaSisDa_FaMoFaSisSo_FaMoMo_FaMoMoBro_FaMoMoBroDa_FaMoMoBroSo_FaMoMoFa_FaMoMoFaBro_FaMoMoFaBroDa_FaMoMoFaBroSo_FaMoMoFaSis_FaMoMoFaSisDa_FaMoMoFaSisSo_FaMoMoMo_FaMoMoMoBro_FaMoMoMoBroDa_FaMoMoMoBroSo_FaMoMoMoSis_FaMoMoMoSisDa_FaMoMoMoSisSo_FaMoMoSis_FaMoMoSisDa_FaMoMoSisSo_FaMoSis_MoFa_MoFaBro_MoFaFa_MoFaFaBro_MoFaFaBroDa_MoFaFaBroSo_MoFaFaFa_MoFaFaFaBro_MoFaFaFaBroDa_MoFaFaFaBroSo_MoFaFaFaSis_MoFaFaFaSisDa_MoFaFaFaSisSo_MoFaFaMo_MoFaFaMoBro_MoFaFaMoBroDa_MoFaFaMoBroSo_MoFaFaMoSis_MoFaFaMoSisDa_MoFaFaMoSisSo_MoFaFaSis_MoFaFaSisDa_MoFaFaSisSo_MoFaMo_MoFaMoBro_MoFaMoBroDa_MoFaMoBroSo_MoFaMoFa_MoFaMoFaBro_MoFaMoFaBroDa_MoFaMoFaBroSo_MoFaMoFaSis_MoFaMoFaSisDa_MoFaMoFaSisSo_MoFaMoMo_MoFaMoMoBro_MoFaMoMoBroDa_MoFaMoMoBroSo_MoFaMoMoSis_MoFaMoMoSisDa_MoFaMoMoSisSo_MoFaMoSis_MoFaMoSisDa_MoFaMoSisSo_MoFaSis_MoMo_MoMoBro_MoMoFa_MoMoFaBro_MoMoFaBroDa_MoMoFaBroSo_MoMoFaFa_MoMoFaFaBro_MoMoFaFaBroDa_MoMoFaFaBroSo_MoMoFaFaSis_MoMoFaFaSisDa_MoMoFaFaSisSo_MoMoFaMo_MoMoFaMoBro_MoMoFaMoBroDa_MoMoFaMoBroSo_MoMoFaMoSis_MoMoFaMoSisDa_MoMoFaMoSisSo_MoMoFaSis_MoMoFaSisDa_MoMoFaSisSo_MoMoMo_MoMoMoBro_MoMoMoBroDa_MoMoMoBroSo_MoMoMoFa_MoMoMoFaBro_MoMoMoFaBroDa_MoMoMoFaBroSo_MoMoMoFaSis_MoMoMoFaSisDa_MoMoMoFaSisSo_MoMoMoMo_MoMoMoMoBro_MoMoMoMoBroDa_MoMoMoMoBroSo_MoMoMoMoSis_MoMoMoMoSisDa_MoMoMoMoSisSo_MoMoMoSis_MoMoMoSisDa_MoMoMoSisSo_MoMoSis"}
;; 0
%e:0, parents:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 1
%e:0, parents:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 2
%e:0, parents:1, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).
;; 3
%e:0, parents:1, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).
;; 4
%e:1, parents:0, parents:0, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 5
%e:1, parents:0, parents:0, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 6
%e:1, parents:0, parents:0, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 7
%e:1, parents:0, parents:0, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 8
%e:1, parents:0, parents:0, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 9
%e:1, parents:0, parents:0, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 10
%e:1, parents:0, parents:0, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 11
%e:1, parents:0, parents:0, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 12
%e:1, parents:0, parents:0, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 13
%e:1, parents:0, parents:0, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 14
%e:1, parents:0, parents:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 15
%e:1, parents:0, parents:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 16
%e:1, parents:0, parents:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 17
%e:1, parents:0, parents:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 18
%e:1, parents:0, parents:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 19
%e:1, parents:0, parents:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 20
%e:1, parents:0, parents:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 21
%e:1, parents:0, parents:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 22
%e:1, parents:0, parents:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 23
%e:1, parents:0, parents:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 24
%e:1, parents:1, parents:0, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 25
%e:1, parents:1, parents:0, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 26
%e:1, parents:1, parents:0, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 27
%e:1, parents:1, parents:0, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 28
%e:1, parents:1, parents:0, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 29
%e:1, parents:1, parents:0, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 30
%e:1, parents:1, parents:0, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 31
%e:1, parents:1, parents:0, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 32
%e:1, parents:1, parents:0, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 33
%e:1, parents:1, parents:0, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 34
%e:1, parents:1, parents:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 35
%e:1, parents:1, parents:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 36
%e:1, parents:1, parents:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 37
%e:1, parents:1, parents:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 38
%e:1, parents:1, parents:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 39
%e:1, parents:1, parents:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 40
%e:1, parents:1, parents:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 41
%e:1, parents:1, parents:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 42
%e:1, parents:1, parents:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 43
%e:1, parents:1, parents:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 44
%e:2, parents:0, e:0, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
[ext],  mother(A, Ego), mother(B, A), mother(Alter, B).
;; 45
%e:2, parents:0, e:0, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
[ext],  mother(A, Ego), mother(B, A), father(Alter, B).
;; 46
%e:2, parents:0, e:0, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
[ext],  mother(A, Ego), father(B, A), mother(Alter, B).
;; 47
%e:2, parents:0, e:0, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
[ext],  mother(A, Ego), father(B, A), father(Alter, B).
;; 48
%e:2, parents:0, e:1, parents:0, parents:0, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoBro}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 49
%e:2, parents:0, e:1, parents:0, parents:0, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoSis}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 50
%e:2, parents:0, e:1, parents:0, parents:0, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoBroSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 51
%e:2, parents:0, e:1, parents:0, parents:0, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoBroDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 52
%e:2, parents:0, e:1, parents:0, parents:0, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoSisSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 53
%e:2, parents:0, e:1, parents:0, parents:0, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoSisDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 54
%e:2, parents:0, e:1, parents:0, parents:0, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaBroSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 55
%e:2, parents:0, e:1, parents:0, parents:0, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaBroDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 56
%e:2, parents:0, e:1, parents:0, parents:0, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaSisSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 57
%e:2, parents:0, e:1, parents:0, parents:0, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaSisDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 58
%e:2, parents:0, e:1, parents:0, parents:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaBro}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 59
%e:2, parents:0, e:1, parents:0, parents:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaSis}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 60
%e:2, parents:0, e:1, parents:0, parents:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoBroSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 61
%e:2, parents:0, e:1, parents:0, parents:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoBroDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 62
%e:2, parents:0, e:1, parents:0, parents:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoSisSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 63
%e:2, parents:0, e:1, parents:0, parents:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoSisDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 64
%e:2, parents:0, e:1, parents:0, parents:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaBroSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 65
%e:2, parents:0, e:1, parents:0, parents:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaBroDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 66
%e:2, parents:0, e:1, parents:0, parents:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaSisSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 67
%e:2, parents:0, e:1, parents:0, parents:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaSisDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 68
%e:2, parents:0, e:1, parents:1, parents:0, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoBro}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 69
%e:2, parents:0, e:1, parents:1, parents:0, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoSis}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 70
%e:2, parents:0, e:1, parents:1, parents:0, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoBroSo}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 71
%e:2, parents:0, e:1, parents:1, parents:0, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoBroDa}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 72
%e:2, parents:0, e:1, parents:1, parents:0, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoSisSo}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 73
%e:2, parents:0, e:1, parents:1, parents:0, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoSisDa}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 74
%e:2, parents:0, e:1, parents:1, parents:0, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaBroSo}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 75
%e:2, parents:0, e:1, parents:1, parents:0, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaBroDa}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 76
%e:2, parents:0, e:1, parents:1, parents:0, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaSisSo}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 77
%e:2, parents:0, e:1, parents:1, parents:0, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaSisDa}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 78
%e:2, parents:0, e:1, parents:1, parents:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaBro}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 79
%e:2, parents:0, e:1, parents:1, parents:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaSis}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 80
%e:2, parents:0, e:1, parents:1, parents:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoBroSo}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 81
%e:2, parents:0, e:1, parents:1, parents:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoBroDa}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 82
%e:2, parents:0, e:1, parents:1, parents:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoSisSo}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 83
%e:2, parents:0, e:1, parents:1, parents:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoSisDa}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 84
%e:2, parents:0, e:1, parents:1, parents:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaBroSo}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 85
%e:2, parents:0, e:1, parents:1, parents:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaBroDa}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 86
%e:2, parents:0, e:1, parents:1, parents:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaSisSo}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 87
%e:2, parents:0, e:1, parents:1, parents:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaSisDa}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 88
%e:2, parents:0, e:2, parents:0, e:0, parents:0, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoMoMo}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(Alter, C).
;; 89
%e:2, parents:0, e:2, parents:0, e:0, parents:0, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoMoFa}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(Alter, C).
;; 90
%e:2, parents:0, e:2, parents:0, e:0, parents:1, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoFaMo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(Alter, C).
;; 91
%e:2, parents:0, e:2, parents:0, e:0, parents:1, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoFaFa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), father(Alter, C).
;; 92
%e:2, parents:0, e:2, parents:0, e:1, parents:0, parents:0, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoMoBro}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 93
%e:2, parents:0, e:2, parents:0, e:1, parents:0, parents:0, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoMoSis}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 94
%e:2, parents:0, e:2, parents:0, e:1, parents:0, parents:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoFaBro}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 95
%e:2, parents:0, e:2, parents:0, e:1, parents:0, parents:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoFaSis}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 96
%e:2, parents:0, e:2, parents:0, e:1, parents:1, parents:0, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaMoBro}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 97
%e:2, parents:0, e:2, parents:0, e:1, parents:1, parents:0, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaMoSis}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 98
%e:2, parents:0, e:2, parents:0, e:1, parents:1, parents:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaFaBro}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 99
%e:2, parents:0, e:2, parents:0, e:1, parents:1, parents:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaFaSis}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 100
%e:2, parents:0, e:2, parents:1, e:0, parents:0, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaMoMo}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(Alter, C).
;; 101
%e:2, parents:0, e:2, parents:1, e:0, parents:0, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaMoFa}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(Alter, C).
;; 102
%e:2, parents:0, e:2, parents:1, e:0, parents:1, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaFaMo}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(Alter, C).
;; 103
%e:2, parents:0, e:2, parents:1, e:0, parents:1, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaFaFa}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), father(Alter, C).
;; 104
%e:2, parents:0, e:2, parents:1, e:1, parents:0, parents:0, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoMoBro}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 105
%e:2, parents:0, e:2, parents:1, e:1, parents:0, parents:0, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoMoSis}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 106
%e:2, parents:0, e:2, parents:1, e:1, parents:0, parents:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoFaBro}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 107
%e:2, parents:0, e:2, parents:1, e:1, parents:0, parents:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoFaSis}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 108
%e:2, parents:0, e:2, parents:1, e:1, parents:1, parents:0, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaMoBro}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 109
%e:2, parents:0, e:2, parents:1, e:1, parents:1, parents:0, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaMoSis}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 110
%e:2, parents:0, e:2, parents:1, e:1, parents:1, parents:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaFaBro}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 111
%e:2, parents:0, e:2, parents:1, e:1, parents:1, parents:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaFaSis}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 112
%e:2, parents:1, e:0, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
[ext],  father(A, Ego), mother(B, A), mother(Alter, B).
;; 113
%e:2, parents:1, e:0, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
[ext],  father(A, Ego), mother(B, A), father(Alter, B).
;; 114
%e:2, parents:1, e:0, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
[ext],  father(A, Ego), father(B, A), mother(Alter, B).
;; 115
%e:2, parents:1, e:0, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
[ext],  father(A, Ego), father(B, A), father(Alter, B).
;; 116
%e:2, parents:1, e:1, parents:0, parents:0, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoBro}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 117
%e:2, parents:1, e:1, parents:0, parents:0, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoSis}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 118
%e:2, parents:1, e:1, parents:0, parents:0, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoBroSo}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 119
%e:2, parents:1, e:1, parents:0, parents:0, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoBroDa}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 120
%e:2, parents:1, e:1, parents:0, parents:0, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoSisSo}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 121
%e:2, parents:1, e:1, parents:0, parents:0, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoSisDa}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 122
%e:2, parents:1, e:1, parents:0, parents:0, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaBroSo}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 123
%e:2, parents:1, e:1, parents:0, parents:0, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaBroDa}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 124
%e:2, parents:1, e:1, parents:0, parents:0, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaSisSo}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 125
%e:2, parents:1, e:1, parents:0, parents:0, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaSisDa}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 126
%e:2, parents:1, e:1, parents:0, parents:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaBro}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 127
%e:2, parents:1, e:1, parents:0, parents:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaSis}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 128
%e:2, parents:1, e:1, parents:0, parents:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoBroSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 129
%e:2, parents:1, e:1, parents:0, parents:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoBroDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 130
%e:2, parents:1, e:1, parents:0, parents:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoSisSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 131
%e:2, parents:1, e:1, parents:0, parents:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoSisDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 132
%e:2, parents:1, e:1, parents:0, parents:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaBroSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 133
%e:2, parents:1, e:1, parents:0, parents:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaBroDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 134
%e:2, parents:1, e:1, parents:0, parents:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaSisSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 135
%e:2, parents:1, e:1, parents:0, parents:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaSisDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 136
%e:2, parents:1, e:1, parents:1, parents:0, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoBro}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 137
%e:2, parents:1, e:1, parents:1, parents:0, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoSis}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 138
%e:2, parents:1, e:1, parents:1, parents:0, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoBroSo}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 139
%e:2, parents:1, e:1, parents:1, parents:0, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoBroDa}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 140
%e:2, parents:1, e:1, parents:1, parents:0, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoSisSo}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 141
%e:2, parents:1, e:1, parents:1, parents:0, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoSisDa}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 142
%e:2, parents:1, e:1, parents:1, parents:0, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaBroSo}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 143
%e:2, parents:1, e:1, parents:1, parents:0, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaBroDa}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 144
%e:2, parents:1, e:1, parents:1, parents:0, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaSisSo}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 145
%e:2, parents:1, e:1, parents:1, parents:0, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaSisDa}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 146
%e:2, parents:1, e:1, parents:1, parents:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaBro}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 147
%e:2, parents:1, e:1, parents:1, parents:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaSis}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 148
%e:2, parents:1, e:1, parents:1, parents:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoBroSo}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 149
%e:2, parents:1, e:1, parents:1, parents:1, generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoBroDa}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 150
%e:2, parents:1, e:1, parents:1, parents:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoSisSo}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 151
%e:2, parents:1, e:1, parents:1, parents:1, generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoSisDa}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 152
%e:2, parents:1, e:1, parents:1, parents:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaBroSo}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 153
%e:2, parents:1, e:1, parents:1, parents:1, generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaBroDa}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 154
%e:2, parents:1, e:1, parents:1, parents:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaSisSo}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 155
%e:2, parents:1, e:1, parents:1, parents:1, generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaSisDa}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 156
%e:2, parents:1, e:2, parents:0, e:0, parents:0, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoMoMo}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(Alter, C).
;; 157
%e:2, parents:1, e:2, parents:0, e:0, parents:0, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoMoFa}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(Alter, C).
;; 158
%e:2, parents:1, e:2, parents:0, e:0, parents:1, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoFaMo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(Alter, C).
;; 159
%e:2, parents:1, e:2, parents:0, e:0, parents:1, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoFaFa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), father(Alter, C).
;; 160
%e:2, parents:1, e:2, parents:0, e:1, parents:0, parents:0, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoMoBro}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 161
%e:2, parents:1, e:2, parents:0, e:1, parents:0, parents:0, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoMoSis}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 162
%e:2, parents:1, e:2, parents:0, e:1, parents:0, parents:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoFaBro}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 163
%e:2, parents:1, e:2, parents:0, e:1, parents:0, parents:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoFaSis}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 164
%e:2, parents:1, e:2, parents:0, e:1, parents:1, parents:0, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaMoBro}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 165
%e:2, parents:1, e:2, parents:0, e:1, parents:1, parents:0, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaMoSis}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 166
%e:2, parents:1, e:2, parents:0, e:1, parents:1, parents:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaFaBro}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 167
%e:2, parents:1, e:2, parents:0, e:1, parents:1, parents:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaFaSis}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 168
%e:2, parents:1, e:2, parents:1, e:0, parents:0, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaMoMo}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(Alter, C).
;; 169
%e:2, parents:1, e:2, parents:1, e:0, parents:0, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaMoFa}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(Alter, C).
;; 170
%e:2, parents:1, e:2, parents:1, e:0, parents:1, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaFaMo}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(Alter, C).
;; 171
%e:2, parents:1, e:2, parents:1, e:0, parents:1, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaFaFa}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), father(Alter, C).
;; 172
%e:2, parents:1, e:2, parents:1, e:1, parents:0, parents:0, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoMoBro}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 173
%e:2, parents:1, e:2, parents:1, e:1, parents:0, parents:0, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoMoSis}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 174
%e:2, parents:1, e:2, parents:1, e:1, parents:0, parents:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoFaBro}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 175
%e:2, parents:1, e:2, parents:1, e:1, parents:0, parents:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoFaSis}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 176
%e:2, parents:1, e:2, parents:1, e:1, parents:1, parents:0, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaMoBro}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 177
%e:2, parents:1, e:2, parents:1, e:1, parents:1, parents:0, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaMoSis}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 178
%e:2, parents:1, e:2, parents:1, e:1, parents:1, parents:1, generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaFaBro}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 179
%e:2, parents:1, e:2, parents:1, e:1, parents:1, parents:1, generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaFaSis}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).


fu(Alter, Ego) :-  husband(Ego, A), mother(Alter, A).
               |  [ext],  male(Ego), sibling(Ego, A), husband(A, B), mother(Alter, B).
               |  [ext],  female(Ego), sibling(Ego, A), husband(A, B), mother(Alter, B).
               |  [ext],  husband(Ego, A), mother(B, A), siblings(Alter, B).
               |  [ext],  male(Ego), sibling(Ego, A), husband(A, B), mother(C, B), siblings(Alter, C).
               |  [ext],  female(Ego), sibling(Ego, A), husband(A, B), mother(C, B), siblings(Alter, C).
{"BroWiMo_BroWiMoBro_BroWiMoSis_WiMo_WiMoBro_WiMoSis"}
;; 0
%fu:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 husband(Ego, A), mother(Alter, A).
;; 1
%fu:1, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {BroWiMo}  
[ext],  male(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), mother(Alter, D).
;; 2
%fu:2, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {BroWiMo}  
[ext],  female(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), mother(Alter, D).
;; 3
%fu:3, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoBro}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 4
%fu:3, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoSis}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 5
%fu:4, sibling:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {BroWiMoBro}  
[ext],  male(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), mother(E, D), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), male(Alter).
;; 6
%fu:4, sibling:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {BroWiMoSis}  
[ext],  male(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), mother(E, D), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), female(Alter).
;; 7
%fu:5, sibling:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {BroWiMoBro}  
[ext],  female(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), mother(E, D), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), male(Alter).
;; 8
%fu:5, sibling:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {BroWiMoSis}  
[ext],  female(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), mother(E, D), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), female(Alter).


fvy(Alter, Ego) :-  female(Ego), brother(Alter, Ego).
                |  [ext],  female(Ego), generation[aux]21(Alter, Ego), male(Alter).
{"Bro_FaBroSo_FaFaBroDaSo_FaFaBroSoSo_FaFaFaBroDaDaSo_FaFaFaBroDaSoSo_FaFaFaBroSoDaSo_FaFaFaBroSoSoSo_FaFaFaSisDaDaSo_FaFaFaSisDaSoSo_FaFaFaSisSoDaSo_FaFaFaSisSoSoSo_FaFaMoBroDaDaSo_FaFaMoBroDaSoSo_FaFaMoBroSoDaSo_FaFaMoBroSoSoSo_FaFaMoSisDaDaSo_FaFaMoSisDaSoSo_FaFaMoSisSoDaSo_FaFaMoSisSoSoSo_FaFaSisDaSo_FaFaSisSoSo_FaMoBroDaSo_FaMoBroSoSo_FaMoFaBroDaDaSo_FaMoFaBroDaSoSo_FaMoFaBroSoDaSo_FaMoFaBroSoSoSo_FaMoFaSisDaDaSo_FaMoFaSisDaSoSo_FaMoFaSisSoDaSo_FaMoFaSisSoSoSo_FaMoMoBroDaDaSo_FaMoMoBroDaSoSo_FaMoMoBroSoDaSo_FaMoMoBroSoSoSo_FaMoMoSisDaDaSo_FaMoMoSisDaSoSo_FaMoMoSisSoDaSo_FaMoMoSisSoSoSo_FaMoSisDaSo_FaMoSisSoSo_FaSisSo_MoBroSo_MoFaBroDaSo_MoFaBroSoSo_MoFaFaBroDaDaSo_MoFaFaBroDaSoSo_MoFaFaBroSoDaSo_MoFaFaBroSoSoSo_MoFaFaSisDaDaSo_MoFaFaSisDaSoSo_MoFaFaSisSoDaSo_MoFaFaSisSoSoSo_MoFaMoBroDaDaSo_MoFaMoBroDaSoSo_MoFaMoBroSoDaSo_MoFaMoBroSoSoSo_MoFaMoSisDaDaSo_MoFaMoSisDaSoSo_MoFaMoSisSoDaSo_MoFaMoSisSoSoSo_MoFaSisDaSo_MoFaSisSoSo_MoMoBroDaSo_MoMoBroSoSo_MoMoFaBroDaDaSo_MoMoFaBroDaSoSo_MoMoFaBroSoDaSo_MoMoFaBroSoSoSo_MoMoFaSisDaDaSo_MoMoFaSisDaSoSo_MoMoFaSisSoDaSo_MoMoFaSisSoSoSo_MoMoMoBroDaDaSo_MoMoMoBroDaSoSo_MoMoMoBroSoDaSo_MoMoMoBroSoSoSo_MoMoMoSisDaDaSo_MoMoMoSisDaSoSo_MoMoMoSisSoDaSo_MoMoMoSisSoSoSo_MoMoSisDaSo_MoMoSisSoSo_MoSisSo"}
;; 0
%fvy:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%fvy:1, generation[aux]21:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 2
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), male(Alter).
;; 3
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), male(Alter).
;; 4
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter).
;; 5
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter).
;; 6
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter).
;; 7
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter).
;; 8
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 9
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 10
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 11
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 12
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 13
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 14
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 15
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 16
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 17
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 18
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 19
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 20
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 21
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 22
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 23
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 24
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter).
;; 25
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter).
;; 26
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter).
;; 27
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter).
;; 28
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 29
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 30
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 31
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 32
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 33
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 34
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 35
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 36
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 37
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 38
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 39
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 40
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 41
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 42
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 43
%fvy:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 44
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), male(Alter).
;; 45
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), male(Alter).
;; 46
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter).
;; 47
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter).
;; 48
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter).
;; 49
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter).
;; 50
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 51
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 52
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 53
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 54
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 55
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 56
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 57
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 58
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 59
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 60
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 61
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 62
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 63
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 64
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 65
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 66
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter).
;; 67
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter).
;; 68
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter).
;; 69
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter).
;; 70
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 71
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 72
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 73
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 74
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 75
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 76
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 77
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 78
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 79
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 80
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 81
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 82
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), male(Alter).
;; 83
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), male(Alter).
;; 84
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), male(Alter).
;; 85
%fvy:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), male(Alter).


generation[aux]21(Alter, Ego) :-  sibling(Alter, Ego).
                              |   parents(A, Ego), generation[aux]21gs(B, A), child(Alter, B).
;; 0
%generation[aux]21:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 4
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 5
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 6
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 7
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 8
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 9
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 10
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 11
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 12
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 13
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 14
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 15
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 16
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 17
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 18
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 19
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 20
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 21
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 22
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 23
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 24
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 25
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 26
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 27
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 28
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 29
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 30
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 31
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 32
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 33
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 34
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 35
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 36
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 37
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 38
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 39
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 40
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 41
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 42
%generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 43
%generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 44
%generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 45
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 46
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 47
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 48
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 49
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 50
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 51
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 52
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 53
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 54
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 55
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 56
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 57
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 58
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 59
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 60
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 61
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 62
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 63
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 64
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 65
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 66
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 67
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 68
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 69
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 70
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 71
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 72
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 73
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 74
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 75
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 76
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 77
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 78
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 79
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 80
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 81
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 82
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 83
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 84
%generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).


generation[aux]21gs(Alter, Ego) :-  siblings(Alter, Ego).
                                |   parents(A, Ego), generation[aux]21gs(B, A), children(Alter, B).
;; 0
%generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 7
%generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 8
%generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 9
%generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 10
%generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 11
%generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 12
%generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 13
%generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 14
%generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 15
%generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 16
%generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 17
%generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 18
%generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 19
%generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 20
%generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 21
%generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 22
%generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 23
%generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 24
%generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 25
%generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 26
%generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 27
%generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 28
%generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 29
%generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 30
%generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 31
%generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 32
%generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 33
%generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 34
%generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 35
%generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 36
%generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 37
%generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 38
%generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 39
%generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 40
%generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 41
%generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).


generation[aux]21junior(Alter, Ego) :-  sibling(Alter, Ego), younger(Alter, Ego).
                                    |   parents(A, Ego), generation[aux]21junior(B, A), child(Alter, B).
;; 0
%generation[aux]21junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 1
%generation[aux]21junior:1, parents:0, generation[aux]21junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), child(Alter, D).
;; 2
%generation[aux]21junior:1, parents:0, generation[aux]21junior:1, parents:0, generation[aux]21junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 3
%generation[aux]21junior:1, parents:0, generation[aux]21junior:1, parents:1, generation[aux]21junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 4
%generation[aux]21junior:1, parents:1, generation[aux]21junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), child(Alter, D).
;; 5
%generation[aux]21junior:1, parents:1, generation[aux]21junior:1, parents:0, generation[aux]21junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 6
%generation[aux]21junior:1, parents:1, generation[aux]21junior:1, parents:1, generation[aux]21junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).


generation[aux]21senior(Alter, Ego) :-  sibling(Alter, Ego), elder(Alter, Ego).
                                    |   parents(A, Ego), generation[aux]21senior(B, A), child(Alter, B).
;; 0
%generation[aux]21senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 1
%generation[aux]21senior:1, parents:0, generation[aux]21senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), child(Alter, D).
;; 2
%generation[aux]21senior:1, parents:0, generation[aux]21senior:1, parents:0, generation[aux]21senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 3
%generation[aux]21senior:1, parents:0, generation[aux]21senior:1, parents:1, generation[aux]21senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 4
%generation[aux]21senior:1, parents:1, generation[aux]21senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), child(Alter, D).
;; 5
%generation[aux]21senior:1, parents:1, generation[aux]21senior:1, parents:0, generation[aux]21senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 6
%generation[aux]21senior:1, parents:1, generation[aux]21senior:1, parents:1, generation[aux]21senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).


generation[aux]21smallGS(Alter, Ego) :-  siblings(Alter, Ego).
                                     |   parents(A, Ego), siblings(B, A), children(Alter, B).
;; 0
%generation[aux]21smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%generation[aux]21smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%generation[aux]21smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%generation[aux]21smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 7
%generation[aux]21smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 8
%generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 9
%generation[aux]21smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
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


sae(Alter, Ego) :-  sae[aux]21(Alter, Ego).
                |   sae[aux]21(Ego, Alter).
{"BroWiBro_BroWiFaBroSo_BroWiFaSisSo_BroWiMoBroSo_BroWiMoSisSo_FaBroDaHu_FaBroDaHuBro_FaBroDaHuSis_FaSisDaHu_FaSisDaHuBro_FaSisDaHuSis_MoBroDaHu_MoBroDaHuBro_MoBroDaHuSis_MoSisDaHu_MoSisDaHuBro_MoSisDaHuSis_SisHu_SisHuBro_SisHuSis_WiBro_WiFaBroSo_WiFaSisSo_WiMoBroSo_WiMoSisSo"}
;; 0
%sae:0, sae[aux]21:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 husband(Ego, A), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%sae:0, sae[aux]21:1, sibling:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {BroWiBro}  
[ext],  male(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 2
%sae:0, sae[aux]21:2, sibling:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {BroWiBro}  
[ext],  female(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 3
%sae:0, sae[aux]21:3, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroSo}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 4
%sae:0, sae[aux]21:3, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaSisSo}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 5
%sae:0, sae[aux]21:4, sibling:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {BroWiFaBroSo}  
[ext],  male(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(Alter, H).
;; 6
%sae:0, sae[aux]21:4, sibling:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {BroWiFaSisSo}  
[ext],  male(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Alter, H).
;; 7
%sae:0, sae[aux]21:5, sibling:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {BroWiFaBroSo}  
[ext],  female(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(Alter, H).
;; 8
%sae:0, sae[aux]21:5, sibling:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {BroWiFaSisSo}  
[ext],  female(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Alter, H).
;; 9
%sae:0, sae[aux]21:6, sibling:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {BroWiBro}  
[ext],  male(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 10
%sae:0, sae[aux]21:7, sibling:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {BroWiBro}  
[ext],  female(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 11
%sae:0, sae[aux]21:8, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoBroSo}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 12
%sae:0, sae[aux]21:8, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisSo}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 13
%sae:0, sae[aux]21:9, sibling:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {BroWiMoBroSo}  
[ext],  male(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(Alter, H).
;; 14
%sae:0, sae[aux]21:9, sibling:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {BroWiMoSisSo}  
[ext],  male(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Alter, H).
;; 15
%sae:0, sae[aux]21:10, sibling:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {BroWiMoBroSo}  
[ext],  female(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(Alter, H).
;; 16
%sae:0, sae[aux]21:10, sibling:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {BroWiMoSisSo}  
[ext],  female(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Alter, H).
;; 17
%sae:1, sae[aux]21:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 husband(Alter, A), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Ego).
;; 18
%sae:1, sae[aux]21:1, sibling:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {SisHuBro}  
[ext],  male(Alter), mother(A, B), father(C, B), child(Alter, A), child(Alter, C), not(equal(Alter, B)), husband(B, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego).
;; 19
%sae:1, sae[aux]21:2, sibling:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {SisHuSis}  
[ext],  female(Alter), mother(A, B), father(C, B), child(Alter, A), child(Alter, C), not(equal(Alter, B)), husband(B, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego).
;; 20
%sae:1, sae[aux]21:3, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
[ext],  husband(Alter, A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Ego, E).
;; 21
%sae:1, sae[aux]21:3, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
[ext],  husband(Alter, A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Ego, E).
;; 22
%sae:1, sae[aux]21:4, sibling:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaBroDaHuBro}  
[ext],  male(Alter), mother(A, B), father(C, B), child(Alter, A), child(Alter, C), not(equal(Alter, B)), husband(B, D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(Ego, H).
;; 23
%sae:1, sae[aux]21:4, sibling:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoBroDaHuBro}  
[ext],  male(Alter), mother(A, B), father(C, B), child(Alter, A), child(Alter, C), not(equal(Alter, B)), husband(B, D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Ego, H).
;; 24
%sae:1, sae[aux]21:5, sibling:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaBroDaHuSis}  
[ext],  female(Alter), mother(A, B), father(C, B), child(Alter, A), child(Alter, C), not(equal(Alter, B)), husband(B, D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(Ego, H).
;; 25
%sae:1, sae[aux]21:5, sibling:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoBroDaHuSis}  
[ext],  female(Alter), mother(A, B), father(C, B), child(Alter, A), child(Alter, C), not(equal(Alter, B)), husband(B, D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Ego, H).
;; 26
%sae:1, sae[aux]21:6, sibling:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {SisHuBro}  
[ext],  male(Alter), mother(A, B), father(C, B), child(Alter, A), child(Alter, C), not(equal(Alter, B)), husband(B, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego).
;; 27
%sae:1, sae[aux]21:7, sibling:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {SisHuSis}  
[ext],  female(Alter), mother(A, B), father(C, B), child(Alter, A), child(Alter, C), not(equal(Alter, B)), husband(B, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego).
;; 28
%sae:1, sae[aux]21:8, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
[ext],  husband(Alter, A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Ego, E).
;; 29
%sae:1, sae[aux]21:8, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
[ext],  husband(Alter, A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Ego, E).
;; 30
%sae:1, sae[aux]21:9, sibling:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaSisDaHuBro}  
[ext],  male(Alter), mother(A, B), father(C, B), child(Alter, A), child(Alter, C), not(equal(Alter, B)), husband(B, D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(Ego, H).
;; 31
%sae:1, sae[aux]21:9, sibling:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoSisDaHuBro}  
[ext],  male(Alter), mother(A, B), father(C, B), child(Alter, A), child(Alter, C), not(equal(Alter, B)), husband(B, D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Ego, H).
;; 32
%sae:1, sae[aux]21:10, sibling:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaSisDaHuSis}  
[ext],  female(Alter), mother(A, B), father(C, B), child(Alter, A), child(Alter, C), not(equal(Alter, B)), husband(B, D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(Ego, H).
;; 33
%sae:1, sae[aux]21:10, sibling:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoSisDaHuSis}  
[ext],  female(Alter), mother(A, B), father(C, B), child(Alter, A), child(Alter, C), not(equal(Alter, B)), husband(B, D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Ego, H).


sae[aux]21(Alter, Ego) :-  husband(Ego, A), brother(Alter, A).
                       |  [ext],  male(Ego), sibling(Ego, A), husband(A, B), brother(Alter, B).
                       |  [ext],  female(Ego), sibling(Ego, A), husband(A, B), brother(Alter, B).
                       |  [ext],  husband(Ego, A), father(B, A), siblings(C, B), son(Alter, C).
                       |  [ext],  male(Ego), sibling(Ego, A), husband(A, B), father(C, B), siblings(D, C), son(Alter, D).
                       |  [ext],  female(Ego), sibling(Ego, A), husband(A, B), father(C, B), siblings(D, C), son(Alter, D).
                       |  [ext],  male(Ego), sibling(Ego, A), husband(A, B), brother(Alter, B).
                       |  [ext],  female(Ego), sibling(Ego, A), husband(A, B), brother(Alter, B).
                       |  [ext],  husband(Ego, A), mother(B, A), siblings(C, B), son(Alter, C).
                       |  [ext],  male(Ego), sibling(Ego, A), husband(A, B), mother(C, B), siblings(D, C), son(Alter, D).
                       |  [ext],  female(Ego), sibling(Ego, A), husband(A, B), mother(C, B), siblings(D, C), son(Alter, D).
;; 0
%sae[aux]21:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 husband(Ego, A), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%sae[aux]21:1, sibling:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  male(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 2
%sae[aux]21:2, sibling:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  female(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 3
%sae[aux]21:3, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 4
%sae[aux]21:3, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 5
%sae[aux]21:4, sibling:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  male(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(Alter, H).
;; 6
%sae[aux]21:4, sibling:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  male(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Alter, H).
;; 7
%sae[aux]21:5, sibling:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  female(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(Alter, H).
;; 8
%sae[aux]21:5, sibling:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  female(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Alter, H).
;; 9
%sae[aux]21:6, sibling:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  male(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 10
%sae[aux]21:7, sibling:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  female(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 11
%sae[aux]21:8, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 12
%sae[aux]21:8, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 13
%sae[aux]21:9, sibling:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  male(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(Alter, H).
;; 14
%sae[aux]21:9, sibling:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  male(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Alter, H).
;; 15
%sae[aux]21:10, sibling:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  female(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(Alter, H).
;; 16
%sae[aux]21:10, sibling:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  female(Ego), mother(A, B), father(C, B), child(Ego, A), child(Ego, C), not(equal(Ego, B)), husband(B, D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Alter, H).


si(Alter, Ego) :-  wife(Alter, Ego).
{"Wi"}
;; 0
%si:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


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


so(Alter, Ego) :-  children(Alter, Ego).
               |  [ext],  generation[aux]21gs(A, Ego), children(Alter, A).
{"BroDa_BroSo_Da_FaBroDaDa_FaBroDaSo_FaBroSoDa_FaBroSoSo_FaFaBroDaDaDa_FaFaBroDaDaSo_FaFaBroDaSoDa_FaFaBroDaSoSo_FaFaBroSoDaDa_FaFaBroSoDaSo_FaFaBroSoSoDa_FaFaBroSoSoSo_FaFaSisDaDaDa_FaFaSisDaDaSo_FaFaSisDaSoDa_FaFaSisDaSoSo_FaFaSisSoDaDa_FaFaSisSoDaSo_FaFaSisSoSoDa_FaFaSisSoSoSo_FaMoBroDaDaDa_FaMoBroDaDaSo_FaMoBroDaSoDa_FaMoBroDaSoSo_FaMoBroSoDaDa_FaMoBroSoDaSo_FaMoBroSoSoDa_FaMoBroSoSoSo_FaMoSisDaDaDa_FaMoSisDaDaSo_FaMoSisDaSoDa_FaMoSisDaSoSo_FaMoSisSoDaDa_FaMoSisSoDaSo_FaMoSisSoSoDa_FaMoSisSoSoSo_FaSisDaDa_FaSisDaSo_FaSisSoDa_FaSisSoSo_MoBroDaDa_MoBroDaSo_MoBroSoDa_MoBroSoSo_MoFaBroDaDaDa_MoFaBroDaDaSo_MoFaBroDaSoDa_MoFaBroDaSoSo_MoFaBroSoDaDa_MoFaBroSoDaSo_MoFaBroSoSoDa_MoFaBroSoSoSo_MoFaSisDaDaDa_MoFaSisDaDaSo_MoFaSisDaSoDa_MoFaSisDaSoSo_MoFaSisSoDaDa_MoFaSisSoDaSo_MoFaSisSoSoDa_MoFaSisSoSoSo_MoMoBroDaDaDa_MoMoBroDaDaSo_MoMoBroDaSoDa_MoMoBroDaSoSo_MoMoBroSoDaDa_MoMoBroSoDaSo_MoMoBroSoSoDa_MoMoBroSoSoSo_MoMoSisDaDaDa_MoMoSisDaDaSo_MoMoSisDaSoDa_MoMoSisDaSoSo_MoMoSisSoDaDa_MoMoSisSoDaSo_MoMoSisSoSoDa_MoMoSisSoSoSo_MoSisDaDa_MoSisDaSo_MoSisSoDa_MoSisSoSo_SisDa_SisSo_So"}
;; 0
%so:0, children:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 1
%so:0, children:1%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).
;; 2
%so:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 3
%so:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 4
%so:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 5
%so:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 6
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 7
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 8
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 9
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 10
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 11
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 12
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 13
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 14
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 15
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 16
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 17
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 18
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 19
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 20
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 21
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 22
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 23
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 24
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 25
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 26
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 27
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 28
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 29
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 30
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 31
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 32
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 33
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 34
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 35
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 36
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 37
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 38
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 39
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 40
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 41
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 42
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 43
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 44
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 45
%so:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 46
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 47
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 48
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 49
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 50
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 51
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 52
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 53
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 54
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 55
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 56
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 57
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 58
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 59
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 60
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 61
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 62
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 63
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 64
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 65
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 66
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 67
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 68
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 69
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 70
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 71
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 72
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 73
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 74
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 75
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 76
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 77
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 78
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 79
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 80
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 81
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 82
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 83
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 84
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 85
%so:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).


soe(Alter, Ego) :-  mother(A, Ego), brother(Alter, A).
                |  [ext],  mother(A, Ego), generation[aux]21(Alter, A), male(Alter).
{"MoBro_MoFaBroSo_MoFaFaBroDaSo_MoFaFaBroSoSo_MoFaFaSisDaSo_MoFaFaSisSoSo_MoFaMoBroDaSo_MoFaMoBroSoSo_MoFaMoSisDaSo_MoFaMoSisSoSo_MoFaSisSo_MoMoBroSo_MoMoFaBroDaSo_MoMoFaBroSoSo_MoMoFaSisDaSo_MoMoFaSisSoSo_MoMoMoBroDaSo_MoMoMoBroSoSo_MoMoMoSisDaSo_MoMoMoSisSoSo_MoMoSisSo"}
;; 0
%soe:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%soe:1, generation[aux]21:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%soe:1, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 3
%soe:1, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 4
%soe:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 5
%soe:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 6
%soe:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 7
%soe:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 8
%soe:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 9
%soe:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 10
%soe:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 11
%soe:1, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 12
%soe:1, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 13
%soe:1, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 14
%soe:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 15
%soe:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 16
%soe:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 17
%soe:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 18
%soe:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 19
%soe:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 20
%soe:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 21
%soe:1, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).


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


square[aux]21(Alter, Ego) :-  generation[aux]21(Alter, Ego).
                          |   parent(Alter, Ego).
                          |   parents(A, Ego), square[aux]21(Alter, A).
;; 0
%square[aux]21:0, generation[aux]21:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 4
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 5
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 6
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 7
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 8
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 9
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 10
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 11
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 12
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 13
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 14
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 15
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 16
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 17
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 18
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 19
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 20
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 21
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 22
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 23
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 24
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 25
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 26
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 27
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 28
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 29
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 30
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 31
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 32
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 33
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 34
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 35
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 36
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 37
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 38
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 39
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 40
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 41
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 42
%square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 43
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 44
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 45
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 46
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 47
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 48
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 49
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 50
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 51
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 52
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 53
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 54
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 55
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 56
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 57
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 58
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 59
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 60
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 61
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 62
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 63
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 64
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 65
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 66
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 67
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 68
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 69
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 70
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 71
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 72
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 73
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 74
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 75
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 76
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 77
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 78
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 79
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 80
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 81
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 82
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 83
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 84
%square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 85
%square[aux]21:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(Alter, Ego).
;; 86
%square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 87
%square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 88
%square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 89
%square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 90
%square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 91
%square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 92
%square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 93
%square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 94
%square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 95
%square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 96
%square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 97
%square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 98
%square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 99
%square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 100
%square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 101
%square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 102
%square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 103
%square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 104
%square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 105
%square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 106
%square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 107
%square[aux]21:2, parents:0, square[aux]21:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), parent(Alter, A).
;; 108
%square[aux]21:2, parents:0, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 109
%square[aux]21:2, parents:0, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 110
%square[aux]21:2, parents:0, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 111
%square[aux]21:2, parents:0, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 112
%square[aux]21:2, parents:0, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 113
%square[aux]21:2, parents:0, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 114
%square[aux]21:2, parents:0, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 115
%square[aux]21:2, parents:0, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 116
%square[aux]21:2, parents:0, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 117
%square[aux]21:2, parents:0, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 118
%square[aux]21:2, parents:0, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 119
%square[aux]21:2, parents:0, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 120
%square[aux]21:2, parents:0, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 121
%square[aux]21:2, parents:0, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 122
%square[aux]21:2, parents:0, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 123
%square[aux]21:2, parents:0, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 124
%square[aux]21:2, parents:0, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 125
%square[aux]21:2, parents:0, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 126
%square[aux]21:2, parents:0, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 127
%square[aux]21:2, parents:0, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 128
%square[aux]21:2, parents:0, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 129
%square[aux]21:2, parents:0, square[aux]21:2, parents:0, square[aux]21:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), parent(Alter, B).
;; 130
%square[aux]21:2, parents:0, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 131
%square[aux]21:2, parents:0, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 132
%square[aux]21:2, parents:0, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 133
%square[aux]21:2, parents:0, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 134
%square[aux]21:2, parents:0, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 135
%square[aux]21:2, parents:0, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 136
%square[aux]21:2, parents:0, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 137
%square[aux]21:2, parents:0, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 138
%square[aux]21:2, parents:0, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 139
%square[aux]21:2, parents:0, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 140
%square[aux]21:2, parents:0, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 141
%square[aux]21:2, parents:0, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 142
%square[aux]21:2, parents:0, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 143
%square[aux]21:2, parents:0, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 144
%square[aux]21:2, parents:0, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 145
%square[aux]21:2, parents:0, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 146
%square[aux]21:2, parents:0, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 147
%square[aux]21:2, parents:0, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 148
%square[aux]21:2, parents:0, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 149
%square[aux]21:2, parents:0, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 150
%square[aux]21:2, parents:0, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 151
%square[aux]21:2, parents:0, square[aux]21:2, parents:1, square[aux]21:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), parent(Alter, B).
;; 152
%square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 153
%square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 154
%square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 155
%square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 156
%square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 157
%square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 158
%square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 159
%square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 160
%square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 161
%square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 162
%square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 163
%square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 164
%square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 165
%square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 166
%square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 167
%square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 168
%square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 169
%square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 170
%square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 171
%square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 172
%square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 173
%square[aux]21:2, parents:1, square[aux]21:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), parent(Alter, A).
;; 174
%square[aux]21:2, parents:1, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 175
%square[aux]21:2, parents:1, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 176
%square[aux]21:2, parents:1, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 177
%square[aux]21:2, parents:1, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 178
%square[aux]21:2, parents:1, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 179
%square[aux]21:2, parents:1, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 180
%square[aux]21:2, parents:1, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 181
%square[aux]21:2, parents:1, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 182
%square[aux]21:2, parents:1, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 183
%square[aux]21:2, parents:1, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 184
%square[aux]21:2, parents:1, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 185
%square[aux]21:2, parents:1, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 186
%square[aux]21:2, parents:1, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 187
%square[aux]21:2, parents:1, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 188
%square[aux]21:2, parents:1, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 189
%square[aux]21:2, parents:1, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 190
%square[aux]21:2, parents:1, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 191
%square[aux]21:2, parents:1, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 192
%square[aux]21:2, parents:1, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 193
%square[aux]21:2, parents:1, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 194
%square[aux]21:2, parents:1, square[aux]21:2, parents:0, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 195
%square[aux]21:2, parents:1, square[aux]21:2, parents:0, square[aux]21:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), parent(Alter, B).
;; 196
%square[aux]21:2, parents:1, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 197
%square[aux]21:2, parents:1, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 198
%square[aux]21:2, parents:1, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 199
%square[aux]21:2, parents:1, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 200
%square[aux]21:2, parents:1, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 201
%square[aux]21:2, parents:1, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 202
%square[aux]21:2, parents:1, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 203
%square[aux]21:2, parents:1, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 204
%square[aux]21:2, parents:1, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 205
%square[aux]21:2, parents:1, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 206
%square[aux]21:2, parents:1, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:0, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 207
%square[aux]21:2, parents:1, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 208
%square[aux]21:2, parents:1, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 209
%square[aux]21:2, parents:1, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 210
%square[aux]21:2, parents:1, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 211
%square[aux]21:2, parents:1, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 212
%square[aux]21:2, parents:1, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:0, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 213
%square[aux]21:2, parents:1, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 214
%square[aux]21:2, parents:1, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 215
%square[aux]21:2, parents:1, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 216
%square[aux]21:2, parents:1, square[aux]21:2, parents:1, square[aux]21:0, generation[aux]21:1, parents:1, generation[aux]21gs:1, parents:1, generation[aux]21gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 217
%square[aux]21:2, parents:1, square[aux]21:2, parents:1, square[aux]21:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), parent(Alter, B).


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


te(Alter, Ego) :-  husband(Alter, Ego).
{"Hu"}
;; 0
%te:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).


y(Alter, Ego) :-  siblings(Alter, Ego), younger(Alter, Ego).
              |  [ext],  parents(A, Ego), y(B, A), children(Alter, B).
{"Bro_FaBroDa_FaBroSo_FaFaBroDaDa_FaFaBroDaSo_FaFaBroSoDa_FaFaBroSoSo_FaFaSisDaDa_FaFaSisDaSo_FaFaSisSoDa_FaFaSisSoSo_FaMoBroDaDa_FaMoBroDaSo_FaMoBroSoDa_FaMoBroSoSo_FaMoSisDaDa_FaMoSisDaSo_FaMoSisSoDa_FaMoSisSoSo_FaSisDa_FaSisSo_MoBroDa_MoBroSo_MoFaBroDaDa_MoFaBroDaSo_MoFaBroSoDa_MoFaBroSoSo_MoFaSisDaDa_MoFaSisDaSo_MoFaSisSoDa_MoFaSisSoSo_MoMoBroDaDa_MoMoBroDaSo_MoMoBroSoDa_MoMoBroSoSo_MoMoSisDaDa_MoMoSisDaSo_MoMoSisSoDa_MoMoSisSoSo_MoSisDa_MoSisSo_Sis"}
;; 0
%y:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).
;; 1
%y:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).
;; 2
%y:1, parents:0, y:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), younger(D, A), son(Alter, D).
;; 3
%y:1, parents:0, y:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), younger(D, A), daughter(Alter, D).
;; 4
%y:1, parents:0, y:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), son(Alter, D).
;; 5
%y:1, parents:0, y:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), daughter(Alter, D).
;; 6
%y:1, parents:0, y:1, parents:0, y:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), son(F, E), son(Alter, F).
;; 7
%y:1, parents:0, y:1, parents:0, y:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), son(F, E), daughter(Alter, F).
;; 8
%y:1, parents:0, y:1, parents:0, y:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), daughter(F, E), son(Alter, F).
;; 9
%y:1, parents:0, y:1, parents:0, y:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), daughter(F, E), daughter(Alter, F).
;; 10
%y:1, parents:0, y:1, parents:0, y:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), son(F, E), son(Alter, F).
;; 11
%y:1, parents:0, y:1, parents:0, y:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), son(F, E), daughter(Alter, F).
;; 12
%y:1, parents:0, y:1, parents:0, y:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), daughter(F, E), son(Alter, F).
;; 13
%y:1, parents:0, y:1, parents:0, y:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), daughter(F, E), daughter(Alter, F).
;; 14
%y:1, parents:0, y:1, parents:1, y:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), son(F, E), son(Alter, F).
;; 15
%y:1, parents:0, y:1, parents:1, y:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), son(F, E), daughter(Alter, F).
;; 16
%y:1, parents:0, y:1, parents:1, y:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), daughter(F, E), son(Alter, F).
;; 17
%y:1, parents:0, y:1, parents:1, y:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), daughter(F, E), daughter(Alter, F).
;; 18
%y:1, parents:0, y:1, parents:1, y:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), son(F, E), son(Alter, F).
;; 19
%y:1, parents:0, y:1, parents:1, y:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), son(F, E), daughter(Alter, F).
;; 20
%y:1, parents:0, y:1, parents:1, y:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), daughter(F, E), son(Alter, F).
;; 21
%y:1, parents:0, y:1, parents:1, y:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), daughter(F, E), daughter(Alter, F).
;; 22
%y:1, parents:1, y:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), younger(D, A), son(Alter, D).
;; 23
%y:1, parents:1, y:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), younger(D, A), daughter(Alter, D).
;; 24
%y:1, parents:1, y:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), son(Alter, D).
;; 25
%y:1, parents:1, y:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), daughter(Alter, D).
;; 26
%y:1, parents:1, y:1, parents:0, y:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), son(F, E), son(Alter, F).
;; 27
%y:1, parents:1, y:1, parents:0, y:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), son(F, E), daughter(Alter, F).
;; 28
%y:1, parents:1, y:1, parents:0, y:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), daughter(F, E), son(Alter, F).
;; 29
%y:1, parents:1, y:1, parents:0, y:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), daughter(F, E), daughter(Alter, F).
;; 30
%y:1, parents:1, y:1, parents:0, y:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), son(F, E), son(Alter, F).
;; 31
%y:1, parents:1, y:1, parents:0, y:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), son(F, E), daughter(Alter, F).
;; 32
%y:1, parents:1, y:1, parents:0, y:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), daughter(F, E), son(Alter, F).
;; 33
%y:1, parents:1, y:1, parents:0, y:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), daughter(F, E), daughter(Alter, F).
;; 34
%y:1, parents:1, y:1, parents:1, y:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), son(F, E), son(Alter, F).
;; 35
%y:1, parents:1, y:1, parents:1, y:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), son(F, E), daughter(Alter, F).
;; 36
%y:1, parents:1, y:1, parents:1, y:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), daughter(F, E), son(Alter, F).
;; 37
%y:1, parents:1, y:1, parents:1, y:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), daughter(F, E), daughter(Alter, F).
;; 38
%y:1, parents:1, y:1, parents:1, y:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), son(F, E), son(Alter, F).
;; 39
%y:1, parents:1, y:1, parents:1, y:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), son(F, E), daughter(Alter, F).
;; 40
%y:1, parents:1, y:1, parents:1, y:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), daughter(F, E), son(Alter, F).
;; 41
%y:1, parents:1, y:1, parents:1, y:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), daughter(F, E), daughter(Alter, F).

