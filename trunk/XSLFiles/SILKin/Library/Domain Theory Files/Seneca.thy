;;  Horn Clause Representation of Seneca Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Seneca") (author, "Floyd Lounsbury") (date, "1964-01-01") (citation, "William Merrifield in GODS, HEROES, KINSMEN p. 178") 
(non_term, [aux], sibling, siblings, parents, children, brother, sister, brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, false) (address, false) (recursiveLevels, 2)
(overlaps, (ahtsi, (kheke)), (hahtsi, (heke)), (heke, (hahtsi)), (kheke, (ahtsi)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

ahtsi(Alter, Ego) :-  sister(Alter, Ego), elder(Alter, Ego).
                  |  [ext],  parents(A, Ego), generation[aux]44(B, A), daughter(Alter, B), gender(C, A), gender(C, B), elder(Alter, Ego).
{"FaBroDa_FaFaBroSoDa_FaFaSisSoDa_FaMoBroSoDa_FaMoSisSoDa_MoFaBroDaDa_MoFaSisDaDa_MoMoBroDaDa_MoMoSisDaDa_MoSisDa_Sis"}
;; 0
%ahtsi:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).
;; 1
%ahtsi:1, parents:0, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(E, D), elder(Alter, Ego).
;; 2
%ahtsi:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F), elder(Alter, Ego).
;; 3
%ahtsi:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F), elder(Alter, Ego).
;; 4
%ahtsi:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F), elder(Alter, Ego).
;; 5
%ahtsi:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F), elder(Alter, Ego).
;; 6
%ahtsi:1, parents:1, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(E, D), elder(Alter, Ego).
;; 7
%ahtsi:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F), elder(Alter, Ego).
;; 8
%ahtsi:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F), elder(Alter, Ego).
;; 9
%ahtsi:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F), elder(Alter, Ego).
;; 10
%ahtsi:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F), elder(Alter, Ego).


akehak(Alter, Ego) :-  father(A, Ego), generation[aux]44(Alter, A), female(Alter).
{"FaFaBroDa_FaFaFaBroDaDa_FaFaFaBroSoDa_FaFaFaSisDaDa_FaFaFaSisSoDa_FaFaMoBroDaDa_FaFaMoBroSoDa_FaFaMoSisDaDa_FaFaMoSisSoDa_FaFaSisDa_FaMoBroDa_FaMoFaBroDaDa_FaMoFaBroSoDa_FaMoFaSisDaDa_FaMoFaSisSoDa_FaMoMoBroDaDa_FaMoMoBroSoDa_FaMoMoSisDaDa_FaMoMoSisSoDa_FaMoSisDa_FaSis"}
;; 0
%akehak:0, generation[aux]44:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%akehak:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 2
%akehak:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 3
%akehak:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 4
%akehak:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 5
%akehak:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 6
%akehak:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 7
%akehak:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 8
%akehak:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 9
%akehak:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 10
%akehak:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 11
%akehak:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 12
%akehak:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 13
%akehak:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 14
%akehak:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 15
%akehak:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 16
%akehak:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 17
%akehak:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 18
%akehak:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 19
%akehak:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 20
%akehak:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).


aksot(Alter, Ego) :-  haksot[aux]44(Alter, Ego), female(Alter).
{"FaFaFaBroDa_FaFaFaFaBroDa_FaFaFaFaSisDa_FaFaFaMoBroDa_FaFaFaMoSisDa_FaFaFaSis_FaFaFaSisDa_FaFaMo_FaFaMoBroDa_FaFaMoFaBroDa_FaFaMoFaSisDa_FaFaMoMoBroDa_FaFaMoMoSisDa_FaFaMoSis_FaFaMoSisDa_FaFaSis_FaMo_FaMoFaBroDa_FaMoFaFaBroDa_FaMoFaFaSisDa_FaMoFaMoBroDa_FaMoFaMoSisDa_FaMoFaSis_FaMoFaSisDa_FaMoMo_FaMoMoBroDa_FaMoMoFaBroDa_FaMoMoFaSisDa_FaMoMoMoBroDa_FaMoMoMoSisDa_FaMoMoSis_FaMoMoSisDa_FaMoSis_MoFaFaBroDa_MoFaFaFaBroDa_MoFaFaFaSisDa_MoFaFaMoBroDa_MoFaFaMoSisDa_MoFaFaSis_MoFaFaSisDa_MoFaMo_MoFaMoBroDa_MoFaMoFaBroDa_MoFaMoFaSisDa_MoFaMoMoBroDa_MoFaMoMoSisDa_MoFaMoSis_MoFaMoSisDa_MoFaSis_MoMo_MoMoFaBroDa_MoMoFaFaBroDa_MoMoFaFaSisDa_MoMoFaMoBroDa_MoMoFaMoSisDa_MoMoFaSis_MoMoFaSisDa_MoMoMo_MoMoMoBroDa_MoMoMoFaBroDa_MoMoMoFaSisDa_MoMoMoMoBroDa_MoMoMoMoSisDa_MoMoMoSis_MoMoMoSisDa_MoMoSis"}
;; 0
%aksot:0, haksot[aux]44:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), parent(Alter, A), female(Alter).
;; 1
%aksot:0, haksot[aux]44:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), parent(Alter, A), female(Alter).
;; 2
%aksot:0, haksot[aux]44:1, parents:0, parents:0, generation[aux]44:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 3
%aksot:0, haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 4
%aksot:0, haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 5
%aksot:0, haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 6
%aksot:0, haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 7
%aksot:0, haksot[aux]44:1, parents:0, parents:1, generation[aux]44:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 8
%aksot:0, haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 9
%aksot:0, haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 10
%aksot:0, haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 11
%aksot:0, haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 12
%aksot:0, haksot[aux]44:1, parents:1, parents:0, generation[aux]44:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 13
%aksot:0, haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 14
%aksot:0, haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 15
%aksot:0, haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 16
%aksot:0, haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 17
%aksot:0, haksot[aux]44:1, parents:1, parents:1, generation[aux]44:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 18
%aksot:0, haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 19
%aksot:0, haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 20
%aksot:0, haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 21
%aksot:0, haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 22
%aksot:0, haksot[aux]44:2, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
[ext],  mother(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 23
%aksot:0, haksot[aux]44:2, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
[ext],  mother(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 24
%aksot:0, haksot[aux]44:2, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
[ext],  father(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 25
%aksot:0, haksot[aux]44:2, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
[ext],  father(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 26
%aksot:0, haksot[aux]44:3, parents:0, parents:0, parents:0, generation[aux]44:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 27
%aksot:0, haksot[aux]44:3, parents:0, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 28
%aksot:0, haksot[aux]44:3, parents:0, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 29
%aksot:0, haksot[aux]44:3, parents:0, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 30
%aksot:0, haksot[aux]44:3, parents:0, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 31
%aksot:0, haksot[aux]44:3, parents:0, parents:0, parents:1, generation[aux]44:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaSis}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 32
%aksot:0, haksot[aux]44:3, parents:0, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 33
%aksot:0, haksot[aux]44:3, parents:0, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 34
%aksot:0, haksot[aux]44:3, parents:0, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 35
%aksot:0, haksot[aux]44:3, parents:0, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 36
%aksot:0, haksot[aux]44:3, parents:0, parents:1, parents:0, generation[aux]44:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 37
%aksot:0, haksot[aux]44:3, parents:0, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 38
%aksot:0, haksot[aux]44:3, parents:0, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 39
%aksot:0, haksot[aux]44:3, parents:0, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 40
%aksot:0, haksot[aux]44:3, parents:0, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 41
%aksot:0, haksot[aux]44:3, parents:0, parents:1, parents:1, generation[aux]44:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaSis}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 42
%aksot:0, haksot[aux]44:3, parents:0, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoBroDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 43
%aksot:0, haksot[aux]44:3, parents:0, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoSisDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 44
%aksot:0, haksot[aux]44:3, parents:0, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaBroDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 45
%aksot:0, haksot[aux]44:3, parents:0, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaSisDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 46
%aksot:0, haksot[aux]44:3, parents:1, parents:0, parents:0, generation[aux]44:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 47
%aksot:0, haksot[aux]44:3, parents:1, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 48
%aksot:0, haksot[aux]44:3, parents:1, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 49
%aksot:0, haksot[aux]44:3, parents:1, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 50
%aksot:0, haksot[aux]44:3, parents:1, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 51
%aksot:0, haksot[aux]44:3, parents:1, parents:0, parents:1, generation[aux]44:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaSis}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 52
%aksot:0, haksot[aux]44:3, parents:1, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 53
%aksot:0, haksot[aux]44:3, parents:1, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 54
%aksot:0, haksot[aux]44:3, parents:1, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 55
%aksot:0, haksot[aux]44:3, parents:1, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 56
%aksot:0, haksot[aux]44:3, parents:1, parents:1, parents:0, generation[aux]44:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 57
%aksot:0, haksot[aux]44:3, parents:1, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 58
%aksot:0, haksot[aux]44:3, parents:1, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 59
%aksot:0, haksot[aux]44:3, parents:1, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 60
%aksot:0, haksot[aux]44:3, parents:1, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 61
%aksot:0, haksot[aux]44:3, parents:1, parents:1, parents:1, generation[aux]44:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaSis}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 62
%aksot:0, haksot[aux]44:3, parents:1, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoBroDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 63
%aksot:0, haksot[aux]44:3, parents:1, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoSisDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 64
%aksot:0, haksot[aux]44:3, parents:1, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaBroDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 65
%aksot:0, haksot[aux]44:3, parents:1, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaSisDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).


akyase(Alter, Ego) :-  parents(A, Ego), sibling(B, A), children(Alter, B), gender(C, A), gender(D, B), not(equal(C, D)).
                   |  [ext],  parents(A, Ego), parents(B, A), generation[aux]44gs(C, B), child(D, C), children(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
{"FaFaBroDaDa_FaFaBroDaSo_FaFaSisDaDa_FaFaSisDaSo_FaMoBroDaDa_FaMoBroDaSo_FaMoSisDaDa_FaMoSisDaSo_FaSisDa_FaSisSo_MoBroDa_MoBroSo_MoFaBroSoDa_MoFaBroSoSo_MoFaSisSoDa_MoFaSisSoSo_MoMoBroSoDa_MoMoBroSoSo_MoMoSisSoDa_MoMoSisSoSo"}
;; 0
%akyase:0, parents:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 1
%akyase:0, parents:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 2
%akyase:0, parents:1, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 3
%akyase:0, parents:1, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 4
%akyase:1, parents:0, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), son(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 5
%akyase:1, parents:0, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), daughter(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 6
%akyase:1, parents:0, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), son(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 7
%akyase:1, parents:0, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), daughter(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 8
%akyase:1, parents:0, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), son(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 9
%akyase:1, parents:0, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), daughter(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 10
%akyase:1, parents:0, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), son(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 11
%akyase:1, parents:0, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), daughter(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 12
%akyase:1, parents:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), son(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 13
%akyase:1, parents:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), daughter(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 14
%akyase:1, parents:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), son(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 15
%akyase:1, parents:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), daughter(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 16
%akyase:1, parents:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), son(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 17
%akyase:1, parents:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), daughter(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 18
%akyase:1, parents:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), son(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 19
%akyase:1, parents:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), daughter(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).


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


generation[aux]44(Alter, Ego) :-  sibling(Alter, Ego).
                              |   parents(A, Ego), generation[aux]44gs(B, A), child(Alter, B).
;; 0
%generation[aux]44:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 4
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 5
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 6
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 7
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 8
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 9
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 10
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 11
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 12
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 13
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 14
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 15
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 16
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 17
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 18
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 19
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 20
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 21
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 22
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 23
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 24
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 25
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 26
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 27
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 28
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 29
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 30
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 31
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 32
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 33
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 34
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 35
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 36
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 37
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 38
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 39
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 40
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 41
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 42
%generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 43
%generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 44
%generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 45
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 46
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 47
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 48
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 49
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 50
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 51
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 52
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 53
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 54
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 55
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 56
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 57
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 58
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 59
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 60
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 61
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 62
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 63
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 64
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 65
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 66
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 67
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 68
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 69
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 70
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 71
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 72
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 73
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 74
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 75
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 76
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 77
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 78
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 79
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 80
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 81
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 82
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 83
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 84
%generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).


generation[aux]44gs(Alter, Ego) :-  siblings(Alter, Ego).
                                |   parents(A, Ego), generation[aux]44gs(B, A), children(Alter, B).
;; 0
%generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 7
%generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 8
%generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 9
%generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 10
%generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 11
%generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 12
%generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 13
%generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 14
%generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 15
%generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 16
%generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 17
%generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 18
%generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 19
%generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 20
%generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 21
%generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 22
%generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 23
%generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 24
%generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 25
%generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 26
%generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 27
%generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 28
%generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 29
%generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 30
%generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 31
%generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 32
%generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 33
%generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 34
%generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 35
%generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 36
%generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 37
%generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 38
%generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 39
%generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 40
%generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 41
%generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).


generation[aux]44junior(Alter, Ego) :-  sibling(Alter, Ego), younger(Alter, Ego).
                                    |   parents(A, Ego), generation[aux]44junior(B, A), child(Alter, B).
;; 0
%generation[aux]44junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 1
%generation[aux]44junior:1, parents:0, generation[aux]44junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), child(Alter, D).
;; 2
%generation[aux]44junior:1, parents:0, generation[aux]44junior:1, parents:0, generation[aux]44junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 3
%generation[aux]44junior:1, parents:0, generation[aux]44junior:1, parents:1, generation[aux]44junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 4
%generation[aux]44junior:1, parents:1, generation[aux]44junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), child(Alter, D).
;; 5
%generation[aux]44junior:1, parents:1, generation[aux]44junior:1, parents:0, generation[aux]44junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 6
%generation[aux]44junior:1, parents:1, generation[aux]44junior:1, parents:1, generation[aux]44junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).


generation[aux]44senior(Alter, Ego) :-  sibling(Alter, Ego), elder(Alter, Ego).
                                    |   parents(A, Ego), generation[aux]44senior(B, A), child(Alter, B).
;; 0
%generation[aux]44senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 1
%generation[aux]44senior:1, parents:0, generation[aux]44senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), child(Alter, D).
;; 2
%generation[aux]44senior:1, parents:0, generation[aux]44senior:1, parents:0, generation[aux]44senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 3
%generation[aux]44senior:1, parents:0, generation[aux]44senior:1, parents:1, generation[aux]44senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 4
%generation[aux]44senior:1, parents:1, generation[aux]44senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), child(Alter, D).
;; 5
%generation[aux]44senior:1, parents:1, generation[aux]44senior:1, parents:0, generation[aux]44senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 6
%generation[aux]44senior:1, parents:1, generation[aux]44senior:1, parents:1, generation[aux]44senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).


hahtsi(Alter, Ego) :-  brother(Alter, Ego), elder(Alter, Ego).
                   |  [ext],  parents(A, Ego), generation[aux]44(B, A), son(Alter, B), gender(C, A), gender(C, B), elder(Alter, Ego).
{"Bro_FaBroSo_FaFaBroSoSo_FaFaSisSoSo_FaMoBroSoSo_FaMoSisSoSo_MoFaBroDaSo_MoFaSisDaSo_MoMoBroDaSo_MoMoSisDaSo_MoSisSo"}
;; 0
%hahtsi:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%hahtsi:1, parents:0, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(E, D), elder(Alter, Ego).
;; 2
%hahtsi:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), son(Alter, F), gender(G, A), gender(G, F), elder(Alter, Ego).
;; 3
%hahtsi:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), son(Alter, F), gender(G, A), gender(G, F), elder(Alter, Ego).
;; 4
%hahtsi:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), son(Alter, F), gender(G, A), gender(G, F), elder(Alter, Ego).
;; 5
%hahtsi:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), son(Alter, F), gender(G, A), gender(G, F), elder(Alter, Ego).
;; 6
%hahtsi:1, parents:1, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(E, D), elder(Alter, Ego).
;; 7
%hahtsi:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), son(Alter, F), gender(G, A), gender(G, F), elder(Alter, Ego).
;; 8
%hahtsi:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), son(Alter, F), gender(G, A), gender(G, F), elder(Alter, Ego).
;; 9
%hahtsi:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), son(Alter, F), gender(G, A), gender(G, F), elder(Alter, Ego).
;; 10
%hahtsi:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), son(Alter, F), gender(G, A), gender(G, F), elder(Alter, Ego).


hakhnoseh(Alter, Ego) :-  mother(A, Ego), brother(Alter, A).
                      |  [ext],  mother(A, Ego), generation[aux]44(Alter, A), male(Alter).
{"MoBro_MoFaBroSo_MoFaFaBroDaSo_MoFaFaBroSoSo_MoFaFaSisDaSo_MoFaFaSisSoSo_MoFaMoBroDaSo_MoFaMoBroSoSo_MoFaMoSisDaSo_MoFaMoSisSoSo_MoFaSisSo_MoMoBroSo_MoMoFaBroDaSo_MoMoFaBroSoSo_MoMoFaSisDaSo_MoMoFaSisSoSo_MoMoMoBroDaSo_MoMoMoBroSoSo_MoMoMoSisDaSo_MoMoMoSisSoSo_MoMoSisSo"}
;; 0
%hakhnoseh:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%hakhnoseh:1, generation[aux]44:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%hakhnoseh:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 3
%hakhnoseh:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 4
%hakhnoseh:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 5
%hakhnoseh:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 6
%hakhnoseh:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 7
%hakhnoseh:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 8
%hakhnoseh:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 9
%hakhnoseh:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 10
%hakhnoseh:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 11
%hakhnoseh:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 12
%hakhnoseh:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 13
%hakhnoseh:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 14
%hakhnoseh:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 15
%hakhnoseh:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 16
%hakhnoseh:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 17
%hakhnoseh:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 18
%hakhnoseh:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 19
%hakhnoseh:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 20
%hakhnoseh:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 21
%hakhnoseh:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).


haksot(Alter, Ego) :-  haksot[aux]44(Alter, Ego), male(Alter).
{"FaFa_FaFaBro_FaFaFa_FaFaFaBro_FaFaFaBroSo_FaFaFaFaBroSo_FaFaFaFaSisSo_FaFaFaMoBroSo_FaFaFaMoSisSo_FaFaFaSisSo_FaFaMoBro_FaFaMoBroSo_FaFaMoFaBroSo_FaFaMoFaSisSo_FaFaMoMoBroSo_FaFaMoMoSisSo_FaFaMoSisSo_FaMoBro_FaMoFa_FaMoFaBro_FaMoFaBroSo_FaMoFaFaBroSo_FaMoFaFaSisSo_FaMoFaMoBroSo_FaMoFaMoSisSo_FaMoFaSisSo_FaMoMoBro_FaMoMoBroSo_FaMoMoFaBroSo_FaMoMoFaSisSo_FaMoMoMoBroSo_FaMoMoMoSisSo_FaMoMoSisSo_MoFa_MoFaBro_MoFaFa_MoFaFaBro_MoFaFaBroSo_MoFaFaFaBroSo_MoFaFaFaSisSo_MoFaFaMoBroSo_MoFaFaMoSisSo_MoFaFaSisSo_MoFaMoBro_MoFaMoBroSo_MoFaMoFaBroSo_MoFaMoFaSisSo_MoFaMoMoBroSo_MoFaMoMoSisSo_MoFaMoSisSo_MoMoBro_MoMoFa_MoMoFaBro_MoMoFaBroSo_MoMoFaFaBroSo_MoMoFaFaSisSo_MoMoFaMoBroSo_MoMoFaMoSisSo_MoMoFaSisSo_MoMoMoBro_MoMoMoBroSo_MoMoMoFaBroSo_MoMoMoFaSisSo_MoMoMoMoBroSo_MoMoMoMoSisSo_MoMoMoSisSo"}
;; 0
%haksot:0, haksot[aux]44:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), parent(Alter, A), male(Alter).
;; 1
%haksot:0, haksot[aux]44:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), parent(Alter, A), male(Alter).
;; 2
%haksot:0, haksot[aux]44:1, parents:0, parents:0, generation[aux]44:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 3
%haksot:0, haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 4
%haksot:0, haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 5
%haksot:0, haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 6
%haksot:0, haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 7
%haksot:0, haksot[aux]44:1, parents:0, parents:1, generation[aux]44:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 8
%haksot:0, haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 9
%haksot:0, haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 10
%haksot:0, haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 11
%haksot:0, haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 12
%haksot:0, haksot[aux]44:1, parents:1, parents:0, generation[aux]44:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 13
%haksot:0, haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 14
%haksot:0, haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 15
%haksot:0, haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 16
%haksot:0, haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 17
%haksot:0, haksot[aux]44:1, parents:1, parents:1, generation[aux]44:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 18
%haksot:0, haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 19
%haksot:0, haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 20
%haksot:0, haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 21
%haksot:0, haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 22
%haksot:0, haksot[aux]44:2, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
[ext],  mother(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 23
%haksot:0, haksot[aux]44:2, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
[ext],  mother(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 24
%haksot:0, haksot[aux]44:2, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
[ext],  father(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 25
%haksot:0, haksot[aux]44:2, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
[ext],  father(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 26
%haksot:0, haksot[aux]44:3, parents:0, parents:0, parents:0, generation[aux]44:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 27
%haksot:0, haksot[aux]44:3, parents:0, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 28
%haksot:0, haksot[aux]44:3, parents:0, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 29
%haksot:0, haksot[aux]44:3, parents:0, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 30
%haksot:0, haksot[aux]44:3, parents:0, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 31
%haksot:0, haksot[aux]44:3, parents:0, parents:0, parents:1, generation[aux]44:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaBro}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 32
%haksot:0, haksot[aux]44:3, parents:0, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 33
%haksot:0, haksot[aux]44:3, parents:0, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 34
%haksot:0, haksot[aux]44:3, parents:0, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 35
%haksot:0, haksot[aux]44:3, parents:0, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 36
%haksot:0, haksot[aux]44:3, parents:0, parents:1, parents:0, generation[aux]44:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 37
%haksot:0, haksot[aux]44:3, parents:0, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 38
%haksot:0, haksot[aux]44:3, parents:0, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 39
%haksot:0, haksot[aux]44:3, parents:0, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 40
%haksot:0, haksot[aux]44:3, parents:0, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 41
%haksot:0, haksot[aux]44:3, parents:0, parents:1, parents:1, generation[aux]44:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaBro}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 42
%haksot:0, haksot[aux]44:3, parents:0, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoBroSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 43
%haksot:0, haksot[aux]44:3, parents:0, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoSisSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 44
%haksot:0, haksot[aux]44:3, parents:0, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaBroSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 45
%haksot:0, haksot[aux]44:3, parents:0, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaSisSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 46
%haksot:0, haksot[aux]44:3, parents:1, parents:0, parents:0, generation[aux]44:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 47
%haksot:0, haksot[aux]44:3, parents:1, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 48
%haksot:0, haksot[aux]44:3, parents:1, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 49
%haksot:0, haksot[aux]44:3, parents:1, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 50
%haksot:0, haksot[aux]44:3, parents:1, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 51
%haksot:0, haksot[aux]44:3, parents:1, parents:0, parents:1, generation[aux]44:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaBro}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 52
%haksot:0, haksot[aux]44:3, parents:1, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 53
%haksot:0, haksot[aux]44:3, parents:1, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 54
%haksot:0, haksot[aux]44:3, parents:1, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 55
%haksot:0, haksot[aux]44:3, parents:1, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 56
%haksot:0, haksot[aux]44:3, parents:1, parents:1, parents:0, generation[aux]44:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 57
%haksot:0, haksot[aux]44:3, parents:1, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 58
%haksot:0, haksot[aux]44:3, parents:1, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 59
%haksot:0, haksot[aux]44:3, parents:1, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 60
%haksot:0, haksot[aux]44:3, parents:1, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 61
%haksot:0, haksot[aux]44:3, parents:1, parents:1, parents:1, generation[aux]44:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaBro}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 62
%haksot:0, haksot[aux]44:3, parents:1, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoBroSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 63
%haksot:0, haksot[aux]44:3, parents:1, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoSisSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 64
%haksot:0, haksot[aux]44:3, parents:1, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaBroSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 65
%haksot:0, haksot[aux]44:3, parents:1, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaSisSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).


haksot[aux]44(Alter, Ego) :-  parents(A, Ego), parent(Alter, A).
                          |  [ext],  parents(A, Ego), parents(B, A), generation[aux]44(Alter, B).
                          |  [ext],  parents(A, Ego), parents(B, A), parent(Alter, B).
                          |  [ext],  parents(A, Ego), parents(B, A), parents(C, B), generation[aux]44(Alter, C).
;; 0
%haksot[aux]44:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), parent(Alter, A).
;; 1
%haksot[aux]44:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), parent(Alter, A).
;; 2
%haksot[aux]44:1, parents:0, parents:0, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 3
%haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 4
%haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 5
%haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 6
%haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 7
%haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 8
%haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 9
%haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 10
%haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 11
%haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 12
%haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 13
%haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 14
%haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 15
%haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 16
%haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 17
%haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 18
%haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 19
%haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 20
%haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 21
%haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 22
%haksot[aux]44:1, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 23
%haksot[aux]44:1, parents:0, parents:1, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 24
%haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 25
%haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 26
%haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 27
%haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 28
%haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 29
%haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 30
%haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 31
%haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 32
%haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 33
%haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 34
%haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 35
%haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 36
%haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 37
%haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 38
%haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 39
%haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 40
%haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 41
%haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 42
%haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 43
%haksot[aux]44:1, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 44
%haksot[aux]44:1, parents:1, parents:0, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 45
%haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 46
%haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 47
%haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 48
%haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 49
%haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 50
%haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 51
%haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 52
%haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 53
%haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 54
%haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 55
%haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 56
%haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 57
%haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 58
%haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 59
%haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 60
%haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 61
%haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 62
%haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 63
%haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 64
%haksot[aux]44:1, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 65
%haksot[aux]44:1, parents:1, parents:1, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 66
%haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 67
%haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 68
%haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 69
%haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 70
%haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 71
%haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 72
%haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 73
%haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 74
%haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 75
%haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 76
%haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 77
%haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 78
%haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 79
%haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 80
%haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 81
%haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 82
%haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 83
%haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 84
%haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 85
%haksot[aux]44:1, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 86
%haksot[aux]44:2, parents:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), parent(Alter, B).
;; 87
%haksot[aux]44:2, parents:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), parent(Alter, B).
;; 88
%haksot[aux]44:2, parents:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), parent(Alter, B).
;; 89
%haksot[aux]44:2, parents:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), parent(Alter, B).
;; 90
%haksot[aux]44:3, parents:0, parents:0, parents:0, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 91
%haksot[aux]44:3, parents:0, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 92
%haksot[aux]44:3, parents:0, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 93
%haksot[aux]44:3, parents:0, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 94
%haksot[aux]44:3, parents:0, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 95
%haksot[aux]44:3, parents:0, parents:0, parents:1, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 96
%haksot[aux]44:3, parents:0, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 97
%haksot[aux]44:3, parents:0, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 98
%haksot[aux]44:3, parents:0, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 99
%haksot[aux]44:3, parents:0, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 100
%haksot[aux]44:3, parents:0, parents:1, parents:0, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 101
%haksot[aux]44:3, parents:0, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 102
%haksot[aux]44:3, parents:0, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 103
%haksot[aux]44:3, parents:0, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 104
%haksot[aux]44:3, parents:0, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 105
%haksot[aux]44:3, parents:0, parents:1, parents:1, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 106
%haksot[aux]44:3, parents:0, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 107
%haksot[aux]44:3, parents:0, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 108
%haksot[aux]44:3, parents:0, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 109
%haksot[aux]44:3, parents:0, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 110
%haksot[aux]44:3, parents:1, parents:0, parents:0, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 111
%haksot[aux]44:3, parents:1, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 112
%haksot[aux]44:3, parents:1, parents:0, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 113
%haksot[aux]44:3, parents:1, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 114
%haksot[aux]44:3, parents:1, parents:0, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 115
%haksot[aux]44:3, parents:1, parents:0, parents:1, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 116
%haksot[aux]44:3, parents:1, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 117
%haksot[aux]44:3, parents:1, parents:0, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 118
%haksot[aux]44:3, parents:1, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 119
%haksot[aux]44:3, parents:1, parents:0, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 120
%haksot[aux]44:3, parents:1, parents:1, parents:0, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 121
%haksot[aux]44:3, parents:1, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 122
%haksot[aux]44:3, parents:1, parents:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 123
%haksot[aux]44:3, parents:1, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 124
%haksot[aux]44:3, parents:1, parents:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 125
%haksot[aux]44:3, parents:1, parents:1, parents:1, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 126
%haksot[aux]44:3, parents:1, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 127
%haksot[aux]44:3, parents:1, parents:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 128
%haksot[aux]44:3, parents:1, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 129
%haksot[aux]44:3, parents:1, parents:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).


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


hanih(Alter, Ego) :-  father(Alter, Ego).
                  |  [ext],  father(A, Ego), generation[aux]44(Alter, A), male(Alter).
{"Fa_FaBro_FaFaBroSo_FaFaFaBroDaSo_FaFaFaBroSoSo_FaFaFaSisDaSo_FaFaFaSisSoSo_FaFaMoBroDaSo_FaFaMoBroSoSo_FaFaMoSisDaSo_FaFaMoSisSoSo_FaFaSisSo_FaMoBroSo_FaMoFaBroDaSo_FaMoFaBroSoSo_FaMoFaSisDaSo_FaMoFaSisSoSo_FaMoMoBroDaSo_FaMoMoBroSoSo_FaMoMoSisDaSo_FaMoMoSisSoSo_FaMoSisSo"}
;; 0
%hanih:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).
;; 1
%hanih:1, generation[aux]44:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%hanih:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 3
%hanih:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 4
%hanih:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 5
%hanih:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 6
%hanih:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 7
%hanih:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 8
%hanih:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 9
%hanih:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 10
%hanih:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 11
%hanih:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 12
%hanih:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 13
%hanih:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 14
%hanih:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 15
%hanih:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 16
%hanih:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 17
%hanih:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 18
%hanih:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 19
%hanih:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 20
%hanih:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 21
%hanih:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).


heawak(Alter, Ego) :-  son(Alter, Ego).
                   |  [ext],  siblings(A, Ego), son(Alter, A), gender(B, Ego), gender(B, A).
                   |  [ext],  parents(A, Ego), generation[aux]44gs(B, A), children(C, B), son(Alter, C), gender(D, Ego), gender(D, C).
{"BroSo_FaBroDaSo_FaBroSoSo_FaFaBroDaDaSo_FaFaBroDaSoSo_FaFaBroSoDaSo_FaFaBroSoSoSo_FaFaSisDaDaSo_FaFaSisDaSoSo_FaFaSisSoDaSo_FaFaSisSoSoSo_FaMoBroDaDaSo_FaMoBroDaSoSo_FaMoBroSoDaSo_FaMoBroSoSoSo_FaMoSisDaDaSo_FaMoSisDaSoSo_FaMoSisSoDaSo_FaMoSisSoSoSo_FaSisDaSo_FaSisSoSo_MoBroDaSo_MoBroSoSo_MoFaBroDaDaSo_MoFaBroDaSoSo_MoFaBroSoDaSo_MoFaBroSoSoSo_MoFaSisDaDaSo_MoFaSisDaSoSo_MoFaSisSoDaSo_MoFaSisSoSoSo_MoMoBroDaDaSo_MoMoBroDaSoSo_MoMoBroSoDaSo_MoMoBroSoSoSo_MoMoSisDaDaSo_MoMoSisDaSoSo_MoMoSisSoDaSo_MoMoSisSoSoSo_MoSisDaSo_MoSisSoSo_SisSo_So"}
;; 0
%heawak:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 1
%heawak:1, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C), gender(D, Ego), gender(D, C).
;; 2
%heawak:1, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C), gender(D, Ego), gender(D, C).
;; 3
%heawak:2, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E), gender(F, Ego), gender(F, E).
;; 4
%heawak:2, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E), gender(F, Ego), gender(F, E).
;; 5
%heawak:2, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E), gender(F, Ego), gender(F, E).
;; 6
%heawak:2, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E), gender(F, Ego), gender(F, E).
;; 7
%heawak:2, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 8
%heawak:2, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 9
%heawak:2, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 10
%heawak:2, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 11
%heawak:2, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 12
%heawak:2, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 13
%heawak:2, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 14
%heawak:2, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 15
%heawak:2, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 16
%heawak:2, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 17
%heawak:2, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 18
%heawak:2, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 19
%heawak:2, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 20
%heawak:2, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 21
%heawak:2, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 22
%heawak:2, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 23
%heawak:2, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E), gender(F, Ego), gender(F, E).
;; 24
%heawak:2, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E), gender(F, Ego), gender(F, E).
;; 25
%heawak:2, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E), gender(F, Ego), gender(F, E).
;; 26
%heawak:2, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E), gender(F, Ego), gender(F, E).
;; 27
%heawak:2, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 28
%heawak:2, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 29
%heawak:2, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 30
%heawak:2, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 31
%heawak:2, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 32
%heawak:2, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 33
%heawak:2, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 34
%heawak:2, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 35
%heawak:2, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 36
%heawak:2, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 37
%heawak:2, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 38
%heawak:2, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 39
%heawak:2, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 40
%heawak:2, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 41
%heawak:2, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G), gender(H, Ego), gender(H, G).
;; 42
%heawak:2, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G), gender(H, Ego), gender(H, G).


hehsoneh(Alter, Ego) :-  female(Ego), brother(A, Ego), son(Alter, A).
                     |  [ext],  female(Ego), parents(A, Ego), generation[aux]44gs(B, A), son(C, B), son(Alter, C).
{"BroSo_FaBroSoSo_FaFaBroDaSoSo_FaFaBroSoSoSo_FaFaFaBroDaDaSoSo_FaFaFaBroDaSoSoSo_FaFaFaBroSoDaSoSo_FaFaFaBroSoSoSoSo_FaFaFaSisDaDaSoSo_FaFaFaSisDaSoSoSo_FaFaFaSisSoDaSoSo_FaFaFaSisSoSoSoSo_FaFaMoBroDaDaSoSo_FaFaMoBroDaSoSoSo_FaFaMoBroSoDaSoSo_FaFaMoBroSoSoSoSo_FaFaMoSisDaDaSoSo_FaFaMoSisDaSoSoSo_FaFaMoSisSoDaSoSo_FaFaMoSisSoSoSoSo_FaFaSisDaSoSo_FaFaSisSoSoSo_FaMoBroDaSoSo_FaMoBroSoSoSo_FaMoFaBroDaDaSoSo_FaMoFaBroDaSoSoSo_FaMoFaBroSoDaSoSo_FaMoFaBroSoSoSoSo_FaMoFaSisDaDaSoSo_FaMoFaSisDaSoSoSo_FaMoFaSisSoDaSoSo_FaMoFaSisSoSoSoSo_FaMoMoBroDaDaSoSo_FaMoMoBroDaSoSoSo_FaMoMoBroSoDaSoSo_FaMoMoBroSoSoSoSo_FaMoMoSisDaDaSoSo_FaMoMoSisDaSoSoSo_FaMoMoSisSoDaSoSo_FaMoMoSisSoSoSoSo_FaMoSisDaSoSo_FaMoSisSoSoSo_FaSisSoSo_MoBroSoSo_MoFaBroDaSoSo_MoFaBroSoSoSo_MoFaFaBroDaDaSoSo_MoFaFaBroDaSoSoSo_MoFaFaBroSoDaSoSo_MoFaFaBroSoSoSoSo_MoFaFaSisDaDaSoSo_MoFaFaSisDaSoSoSo_MoFaFaSisSoDaSoSo_MoFaFaSisSoSoSoSo_MoFaMoBroDaDaSoSo_MoFaMoBroDaSoSoSo_MoFaMoBroSoDaSoSo_MoFaMoBroSoSoSoSo_MoFaMoSisDaDaSoSo_MoFaMoSisDaSoSoSo_MoFaMoSisSoDaSoSo_MoFaMoSisSoSoSoSo_MoFaSisDaSoSo_MoFaSisSoSoSo_MoMoBroDaSoSo_MoMoBroSoSoSo_MoMoFaBroDaDaSoSo_MoMoFaBroDaSoSoSo_MoMoFaBroSoDaSoSo_MoMoFaBroSoSoSoSo_MoMoFaSisDaDaSoSo_MoMoFaSisDaSoSoSo_MoMoFaSisSoDaSoSo_MoMoFaSisSoSoSoSo_MoMoMoBroDaDaSoSo_MoMoMoBroDaSoSoSo_MoMoMoBroSoDaSoSo_MoMoMoBroSoSoSoSo_MoMoMoSisDaDaSoSo_MoMoMoSisDaSoSoSo_MoMoMoSisSoDaSoSo_MoMoMoSisSoSoSoSo_MoMoSisDaSoSo_MoMoSisSoSoSo_MoSisSoSo"}
;; 0
%hehsoneh:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 1
%hehsoneh:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 2
%hehsoneh:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 3
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 4
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 5
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 6
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 7
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 8
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoDaSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 9
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 10
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaDaSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 11
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 12
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 13
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 14
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 15
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 16
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 17
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 18
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 19
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 20
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoDaSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 21
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 22
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaDaSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 23
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 24
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 25
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 26
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 27
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoSoSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 28
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 29
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaSoSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 30
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 31
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoSoSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 32
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 33
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSoSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 34
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 35
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoSoSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 36
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 37
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaSoSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 38
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 39
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoSoSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 40
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 41
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaSoSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 42
%hehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 43
%hehsoneh:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 44
%hehsoneh:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 45
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 46
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 47
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 48
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 49
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoSoSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 50
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoDaSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 51
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaSoSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 52
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaDaSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 53
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoSoSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 54
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoDaSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 55
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaSoSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 56
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaDaSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 57
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoSoSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 58
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoDaSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 59
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaSoSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 60
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDaSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 61
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoSoSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 62
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoDaSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 63
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaSoSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 64
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaDaSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 65
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 66
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 67
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 68
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 69
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoSoSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 70
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoDaSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 71
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaSoSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 72
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaDaSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 73
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoSoSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 74
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoDaSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 75
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaSoSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 76
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaDaSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 77
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoSoSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 78
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoDaSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 79
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaSoSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 80
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaDaSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 81
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoSoSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 82
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoDaSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 83
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaSoSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 84
%hehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaDaSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).


heke(Alter, Ego) :-  brother(Alter, Ego), younger(Alter, Ego).
                 |  [ext],  parents(A, Ego), generation[aux]44(B, A), son(Alter, B), gender(C, A), gender(C, B), younger(Alter, Ego).
{"Bro_FaBroSo_FaFaBroSoSo_FaFaSisSoSo_FaMoBroSoSo_FaMoSisSoSo_MoFaBroDaSo_MoFaSisDaSo_MoMoBroDaSo_MoMoSisDaSo_MoSisSo"}
;; 0
%heke:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).
;; 1
%heke:1, parents:0, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(E, D), younger(Alter, Ego).
;; 2
%heke:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), son(Alter, F), gender(G, A), gender(G, F), younger(Alter, Ego).
;; 3
%heke:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), son(Alter, F), gender(G, A), gender(G, F), younger(Alter, Ego).
;; 4
%heke:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), son(Alter, F), gender(G, A), gender(G, F), younger(Alter, Ego).
;; 5
%heke:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), son(Alter, F), gender(G, A), gender(G, F), younger(Alter, Ego).
;; 6
%heke:1, parents:1, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(E, D), younger(Alter, Ego).
;; 7
%heke:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), son(Alter, F), gender(G, A), gender(G, F), younger(Alter, Ego).
;; 8
%heke:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), son(Alter, F), gender(G, A), gender(G, F), younger(Alter, Ego).
;; 9
%heke:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), son(Alter, F), gender(G, A), gender(G, F), younger(Alter, Ego).
;; 10
%heke:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), son(Alter, F), gender(G, A), gender(G, F), younger(Alter, Ego).


heyate(Alter, Ego) :-  heyate[aux]44(Alter, Ego), male(Alter).
{"BroDaSo_BroSoSo_DaDaSo_DaSo_DaSoSo_FaBroDaDaSo_FaBroDaSoSo_FaBroSoDaSo_FaBroSoSoSo_FaSisDaDaSo_FaSisDaSoSo_FaSisSoDaSo_FaSisSoSoSo_MoBroDaDaSo_MoBroDaSoSo_MoBroSoDaSo_MoBroSoSoSo_MoSisDaDaSo_MoSisDaSoSo_MoSisSoDaSo_MoSisSoSoSo_SisDaSo_SisSoSo_SoDaSo_SoSo_SoSoSo"}
;; 0
%heyate:0, heyate[aux]44:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), child(Alter, A), male(Alter).
;; 1
%heyate:0, heyate[aux]44:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), child(Alter, A), male(Alter).
;; 2
%heyate:0, heyate[aux]44:1, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
[ext],  son(A, Ego), son(B, A), child(Alter, B), male(Alter).
;; 3
%heyate:0, heyate[aux]44:1, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
[ext],  son(A, Ego), daughter(B, A), child(Alter, B), male(Alter).
;; 4
%heyate:0, heyate[aux]44:1, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
[ext],  daughter(A, Ego), son(B, A), child(Alter, B), male(Alter).
;; 5
%heyate:0, heyate[aux]44:1, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
[ext],  daughter(A, Ego), daughter(B, A), child(Alter, B), male(Alter).
;; 6
%heyate:0, heyate[aux]44:2, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), child(Alter, D), male(Alter).
;; 7
%heyate:0, heyate[aux]44:2, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), child(Alter, D), male(Alter).
;; 8
%heyate:0, heyate[aux]44:2, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), child(Alter, D), male(Alter).
;; 9
%heyate:0, heyate[aux]44:2, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), child(Alter, D), male(Alter).
;; 10
%heyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), male(Alter).
;; 11
%heyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 12
%heyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter).
;; 13
%heyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 14
%heyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), male(Alter).
;; 15
%heyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 16
%heyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter).
;; 17
%heyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 18
%heyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), male(Alter).
;; 19
%heyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 20
%heyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter).
;; 21
%heyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 22
%heyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), male(Alter).
;; 23
%heyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 24
%heyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter).
;; 25
%heyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter).


heyate[aux]44(Alter, Ego) :-  children(A, Ego), child(Alter, A).
                          |  [ext],  children(A, Ego), children(B, A), child(Alter, B).
                          |  [ext],  generation[aux]44gs(A, Ego), children(B, A), child(Alter, B).
;; 0
%heyate[aux]44:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), child(Alter, A).
;; 1
%heyate[aux]44:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), child(Alter, A).
;; 2
%heyate[aux]44:1, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), son(B, A), child(Alter, B).
;; 3
%heyate[aux]44:1, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), daughter(B, A), child(Alter, B).
;; 4
%heyate[aux]44:1, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), son(B, A), child(Alter, B).
;; 5
%heyate[aux]44:1, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), daughter(B, A), child(Alter, B).
;; 6
%heyate[aux]44:2, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), child(Alter, D).
;; 7
%heyate[aux]44:2, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), child(Alter, D).
;; 8
%heyate[aux]44:2, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), child(Alter, D).
;; 9
%heyate[aux]44:2, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), child(Alter, D).
;; 10
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F).
;; 11
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F).
;; 12
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F).
;; 13
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F).
;; 14
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F).
;; 15
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F).
;; 16
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F).
;; 17
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F).
;; 18
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), child(Alter, H).
;; 19
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), child(Alter, H).
;; 20
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), child(Alter, H).
;; 21
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), child(Alter, H).
;; 22
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), child(Alter, H).
;; 23
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), child(Alter, H).
;; 24
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), child(Alter, H).
;; 25
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), child(Alter, H).
;; 26
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), child(Alter, H).
;; 27
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), child(Alter, H).
;; 28
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), child(Alter, H).
;; 29
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), child(Alter, H).
;; 30
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), child(Alter, H).
;; 31
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), child(Alter, H).
;; 32
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), child(Alter, H).
;; 33
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), child(Alter, H).
;; 34
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), child(Alter, H).
;; 35
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), child(Alter, H).
;; 36
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), child(Alter, H).
;; 37
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), child(Alter, H).
;; 38
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), child(Alter, H).
;; 39
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), child(Alter, H).
;; 40
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), child(Alter, H).
;; 41
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), child(Alter, H).
;; 42
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), child(Alter, H).
;; 43
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), child(Alter, H).
;; 44
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), child(Alter, H).
;; 45
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), child(Alter, H).
;; 46
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), child(Alter, H).
;; 47
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), child(Alter, H).
;; 48
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), child(Alter, H).
;; 49
%heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), child(Alter, H).
;; 50
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F).
;; 51
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F).
;; 52
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F).
;; 53
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F).
;; 54
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F).
;; 55
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F).
;; 56
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F).
;; 57
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F).
;; 58
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), child(Alter, H).
;; 59
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), child(Alter, H).
;; 60
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), child(Alter, H).
;; 61
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), child(Alter, H).
;; 62
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), child(Alter, H).
;; 63
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), child(Alter, H).
;; 64
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), child(Alter, H).
;; 65
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), child(Alter, H).
;; 66
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), child(Alter, H).
;; 67
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), child(Alter, H).
;; 68
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), child(Alter, H).
;; 69
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), child(Alter, H).
;; 70
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), child(Alter, H).
;; 71
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), child(Alter, H).
;; 72
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), child(Alter, H).
;; 73
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), child(Alter, H).
;; 74
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), child(Alter, H).
;; 75
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), child(Alter, H).
;; 76
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), child(Alter, H).
;; 77
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), child(Alter, H).
;; 78
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), child(Alter, H).
;; 79
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), child(Alter, H).
;; 80
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), child(Alter, H).
;; 81
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), child(Alter, H).
;; 82
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), child(Alter, H).
;; 83
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), child(Alter, H).
;; 84
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), child(Alter, H).
;; 85
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), child(Alter, H).
;; 86
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), child(Alter, H).
;; 87
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), child(Alter, H).
;; 88
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), child(Alter, H).
;; 89
%heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), child(Alter, H).


heyewote(Alter, Ego) :-  male(Ego), sister(A, Ego), son(Alter, A).
                     |  [ext],  male(Ego), parents(A, Ego), generation[aux]44gs(B, A), daughter(C, B), son(Alter, C).
{"FaBroDaSo_FaFaBroDaDaSo_FaFaBroSoDaSo_FaFaFaBroDaDaDaSo_FaFaFaBroDaSoDaSo_FaFaFaBroSoDaDaSo_FaFaFaBroSoSoDaSo_FaFaFaSisDaDaDaSo_FaFaFaSisDaSoDaSo_FaFaFaSisSoDaDaSo_FaFaFaSisSoSoDaSo_FaFaMoBroDaDaDaSo_FaFaMoBroDaSoDaSo_FaFaMoBroSoDaDaSo_FaFaMoBroSoSoDaSo_FaFaMoSisDaDaDaSo_FaFaMoSisDaSoDaSo_FaFaMoSisSoDaDaSo_FaFaMoSisSoSoDaSo_FaFaSisDaDaSo_FaFaSisSoDaSo_FaMoBroDaDaSo_FaMoBroSoDaSo_FaMoFaBroDaDaDaSo_FaMoFaBroDaSoDaSo_FaMoFaBroSoDaDaSo_FaMoFaBroSoSoDaSo_FaMoFaSisDaDaDaSo_FaMoFaSisDaSoDaSo_FaMoFaSisSoDaDaSo_FaMoFaSisSoSoDaSo_FaMoMoBroDaDaDaSo_FaMoMoBroDaSoDaSo_FaMoMoBroSoDaDaSo_FaMoMoBroSoSoDaSo_FaMoMoSisDaDaDaSo_FaMoMoSisDaSoDaSo_FaMoMoSisSoDaDaSo_FaMoMoSisSoSoDaSo_FaMoSisDaDaSo_FaMoSisSoDaSo_FaSisDaSo_MoBroDaSo_MoFaBroDaDaSo_MoFaBroSoDaSo_MoFaFaBroDaDaDaSo_MoFaFaBroDaSoDaSo_MoFaFaBroSoDaDaSo_MoFaFaBroSoSoDaSo_MoFaFaSisDaDaDaSo_MoFaFaSisDaSoDaSo_MoFaFaSisSoDaDaSo_MoFaFaSisSoSoDaSo_MoFaMoBroDaDaDaSo_MoFaMoBroDaSoDaSo_MoFaMoBroSoDaDaSo_MoFaMoBroSoSoDaSo_MoFaMoSisDaDaDaSo_MoFaMoSisDaSoDaSo_MoFaMoSisSoDaDaSo_MoFaMoSisSoSoDaSo_MoFaSisDaDaSo_MoFaSisSoDaSo_MoMoBroDaDaSo_MoMoBroSoDaSo_MoMoFaBroDaDaDaSo_MoMoFaBroDaSoDaSo_MoMoFaBroSoDaDaSo_MoMoFaBroSoSoDaSo_MoMoFaSisDaDaDaSo_MoMoFaSisDaSoDaSo_MoMoFaSisSoDaDaSo_MoMoFaSisSoSoDaSo_MoMoMoBroDaDaDaSo_MoMoMoBroDaSoDaSo_MoMoMoBroSoDaDaSo_MoMoMoBroSoSoDaSo_MoMoMoSisDaDaDaSo_MoMoMoSisDaSoDaSo_MoMoMoSisSoDaDaSo_MoMoMoSisSoSoDaSo_MoMoSisDaDaSo_MoMoSisSoDaSo_MoSisDaSo_SisSo"}
;; 0
%heyewote:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 1
%heyewote:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 2
%heyewote:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 3
%heyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 4
%heyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 5
%heyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 6
%heyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 7
%heyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 8
%heyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 9
%heyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 10
%heyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 11
%heyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 12
%heyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 13
%heyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 14
%heyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 15
%heyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 16
%heyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 17
%heyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 18
%heyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 19
%heyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 20
%heyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 21
%heyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 22
%heyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 23
%heyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 24
%heyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 25
%heyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 26
%heyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 27
%heyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 28
%heyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 29
%heyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 30
%heyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 31
%heyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 32
%heyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 33
%heyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 34
%heyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 35
%heyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 36
%heyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 37
%heyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 38
%heyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 39
%heyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 40
%heyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 41
%heyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 42
%heyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 43
%heyewote:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 44
%heyewote:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 45
%heyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 46
%heyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 47
%heyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 48
%heyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 49
%heyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 50
%heyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 51
%heyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 52
%heyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 53
%heyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 54
%heyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 55
%heyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 56
%heyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 57
%heyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 58
%heyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 59
%heyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 60
%heyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 61
%heyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 62
%heyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 63
%heyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 64
%heyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 65
%heyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 66
%heyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 67
%heyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 68
%heyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 69
%heyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 70
%heyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 71
%heyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 72
%heyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 73
%heyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 74
%heyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 75
%heyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 76
%heyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 77
%heyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 78
%heyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 79
%heyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 80
%heyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 81
%heyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 82
%heyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 83
%heyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 84
%heyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).


kheawak(Alter, Ego) :-  daughter(Alter, Ego).
                    |  [ext],  siblings(A, Ego), daughter(Alter, A), gender(B, Ego), gender(B, A).
                    |  [ext],  parents(A, Ego), generation[aux]44gs(B, A), children(C, B), daughter(Alter, C), gender(D, Ego), gender(D, C).
{"BroDa_Da_FaBroDaDa_FaBroSoDa_FaFaBroDaDaDa_FaFaBroDaSoDa_FaFaBroSoDaDa_FaFaBroSoSoDa_FaFaSisDaDaDa_FaFaSisDaSoDa_FaFaSisSoDaDa_FaFaSisSoSoDa_FaMoBroDaDaDa_FaMoBroDaSoDa_FaMoBroSoDaDa_FaMoBroSoSoDa_FaMoSisDaDaDa_FaMoSisDaSoDa_FaMoSisSoDaDa_FaMoSisSoSoDa_FaSisDaDa_FaSisSoDa_MoBroDaDa_MoBroSoDa_MoFaBroDaDaDa_MoFaBroDaSoDa_MoFaBroSoDaDa_MoFaBroSoSoDa_MoFaSisDaDaDa_MoFaSisDaSoDa_MoFaSisSoDaDa_MoFaSisSoSoDa_MoMoBroDaDaDa_MoMoBroDaSoDa_MoMoBroSoDaDa_MoMoBroSoSoDa_MoMoSisDaDaDa_MoMoSisDaSoDa_MoMoSisSoDaDa_MoMoSisSoSoDa_MoSisDaDa_MoSisSoDa_SisDa"}
;; 0
%kheawak:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).
;; 1
%kheawak:1, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C), gender(D, Ego), gender(D, C).
;; 2
%kheawak:1, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C), gender(D, Ego), gender(D, C).
;; 3
%kheawak:2, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E), gender(F, Ego), gender(F, E).
;; 4
%kheawak:2, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E), gender(F, Ego), gender(F, E).
;; 5
%kheawak:2, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E), gender(F, Ego), gender(F, E).
;; 6
%kheawak:2, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E), gender(F, Ego), gender(F, E).
;; 7
%kheawak:2, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 8
%kheawak:2, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 9
%kheawak:2, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 10
%kheawak:2, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 11
%kheawak:2, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 12
%kheawak:2, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 13
%kheawak:2, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 14
%kheawak:2, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 15
%kheawak:2, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 16
%kheawak:2, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 17
%kheawak:2, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 18
%kheawak:2, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 19
%kheawak:2, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 20
%kheawak:2, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 21
%kheawak:2, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 22
%kheawak:2, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 23
%kheawak:2, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E), gender(F, Ego), gender(F, E).
;; 24
%kheawak:2, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E), gender(F, Ego), gender(F, E).
;; 25
%kheawak:2, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E), gender(F, Ego), gender(F, E).
;; 26
%kheawak:2, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E), gender(F, Ego), gender(F, E).
;; 27
%kheawak:2, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 28
%kheawak:2, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 29
%kheawak:2, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 30
%kheawak:2, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 31
%kheawak:2, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 32
%kheawak:2, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 33
%kheawak:2, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 34
%kheawak:2, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 35
%kheawak:2, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 36
%kheawak:2, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 37
%kheawak:2, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 38
%kheawak:2, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 39
%kheawak:2, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 40
%kheawak:2, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 41
%kheawak:2, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).
;; 42
%kheawak:2, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G), gender(H, Ego), gender(H, G).


khehsoneh(Alter, Ego) :-  female(Ego), brother(A, Ego), daughter(Alter, A).
                      |  [ext],  female(Ego), parents(A, Ego), generation[aux]44gs(B, A), son(C, B), daughter(Alter, C).
{"BroDa_FaBroSoDa_FaFaBroDaSoDa_FaFaBroSoSoDa_FaFaFaBroDaDaSoDa_FaFaFaBroDaSoSoDa_FaFaFaBroSoDaSoDa_FaFaFaBroSoSoSoDa_FaFaFaSisDaDaSoDa_FaFaFaSisDaSoSoDa_FaFaFaSisSoDaSoDa_FaFaFaSisSoSoSoDa_FaFaMoBroDaDaSoDa_FaFaMoBroDaSoSoDa_FaFaMoBroSoDaSoDa_FaFaMoBroSoSoSoDa_FaFaMoSisDaDaSoDa_FaFaMoSisDaSoSoDa_FaFaMoSisSoDaSoDa_FaFaMoSisSoSoSoDa_FaFaSisDaSoDa_FaFaSisSoSoDa_FaMoBroDaSoDa_FaMoBroSoSoDa_FaMoFaBroDaDaSoDa_FaMoFaBroDaSoSoDa_FaMoFaBroSoDaSoDa_FaMoFaBroSoSoSoDa_FaMoFaSisDaDaSoDa_FaMoFaSisDaSoSoDa_FaMoFaSisSoDaSoDa_FaMoFaSisSoSoSoDa_FaMoMoBroDaDaSoDa_FaMoMoBroDaSoSoDa_FaMoMoBroSoDaSoDa_FaMoMoBroSoSoSoDa_FaMoMoSisDaDaSoDa_FaMoMoSisDaSoSoDa_FaMoMoSisSoDaSoDa_FaMoMoSisSoSoSoDa_FaMoSisDaSoDa_FaMoSisSoSoDa_FaSisSoDa_MoBroSoDa_MoFaBroDaSoDa_MoFaBroSoSoDa_MoFaFaBroDaDaSoDa_MoFaFaBroDaSoSoDa_MoFaFaBroSoDaSoDa_MoFaFaBroSoSoSoDa_MoFaFaSisDaDaSoDa_MoFaFaSisDaSoSoDa_MoFaFaSisSoDaSoDa_MoFaFaSisSoSoSoDa_MoFaMoBroDaDaSoDa_MoFaMoBroDaSoSoDa_MoFaMoBroSoDaSoDa_MoFaMoBroSoSoSoDa_MoFaMoSisDaDaSoDa_MoFaMoSisDaSoSoDa_MoFaMoSisSoDaSoDa_MoFaMoSisSoSoSoDa_MoFaSisDaSoDa_MoFaSisSoSoDa_MoMoBroDaSoDa_MoMoBroSoSoDa_MoMoFaBroDaDaSoDa_MoMoFaBroDaSoSoDa_MoMoFaBroSoDaSoDa_MoMoFaBroSoSoSoDa_MoMoFaSisDaDaSoDa_MoMoFaSisDaSoSoDa_MoMoFaSisSoDaSoDa_MoMoFaSisSoSoSoDa_MoMoMoBroDaDaSoDa_MoMoMoBroDaSoSoDa_MoMoMoBroSoDaSoDa_MoMoMoBroSoSoSoDa_MoMoMoSisDaDaSoDa_MoMoMoSisDaSoSoDa_MoMoMoSisSoDaSoDa_MoMoMoSisSoSoSoDa_MoMoSisDaSoDa_MoMoSisSoSoDa_MoSisSoDa"}
;; 0
%khehsoneh:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 1
%khehsoneh:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 2
%khehsoneh:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 3
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 4
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 5
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 6
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 7
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 8
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoDaSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 9
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 10
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaDaSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 11
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 12
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 13
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 14
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 15
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 16
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 17
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 18
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 19
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 20
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoDaSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 21
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 22
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaDaSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 23
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 24
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 25
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 26
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 27
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoSoSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 28
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 29
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaSoSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 30
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 31
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoSoSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 32
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 33
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSoSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 34
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 35
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoSoSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 36
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 37
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaSoSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 38
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 39
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoSoSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 40
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 41
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaSoSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 42
%khehsoneh:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 43
%khehsoneh:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 44
%khehsoneh:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 45
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 46
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 47
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 48
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 49
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoSoSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 50
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoDaSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 51
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaSoSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 52
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaDaSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 53
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoSoSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 54
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoDaSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 55
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaSoSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 56
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaDaSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 57
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoSoSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 58
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoDaSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 59
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaSoSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 60
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDaSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 61
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoSoSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 62
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoDaSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 63
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaSoSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 64
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaDaSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 65
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 66
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 67
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 68
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 69
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoSoSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 70
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoDaSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 71
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaSoSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 72
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaDaSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 73
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoSoSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 74
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoDaSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 75
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaSoSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 76
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaDaSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 77
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoSoSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 78
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoDaSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 79
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaSoSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 80
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaDaSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 81
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoSoSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 82
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoDaSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 83
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaSoSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 84
%khehsoneh:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaDaSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).


kheke(Alter, Ego) :-  sister(Alter, Ego), younger(Alter, Ego).
                  |  [ext],  parents(A, Ego), generation[aux]44(B, A), daughter(Alter, B), gender(C, A), gender(C, B), younger(Alter, Ego).
{"FaBroDa_FaFaBroSoDa_FaFaSisSoDa_FaMoBroSoDa_FaMoSisSoDa_MoFaBroDaDa_MoFaSisDaDa_MoMoBroDaDa_MoMoSisDaDa_MoSisDa_Sis"}
;; 0
%kheke:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).
;; 1
%kheke:1, parents:0, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(E, D), younger(Alter, Ego).
;; 2
%kheke:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F), younger(Alter, Ego).
;; 3
%kheke:1, parents:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F), younger(Alter, Ego).
;; 4
%kheke:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F), younger(Alter, Ego).
;; 5
%kheke:1, parents:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F), younger(Alter, Ego).
;; 6
%kheke:1, parents:1, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(E, D), younger(Alter, Ego).
;; 7
%kheke:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F), younger(Alter, Ego).
;; 8
%kheke:1, parents:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F), younger(Alter, Ego).
;; 9
%kheke:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F), younger(Alter, Ego).
;; 10
%kheke:1, parents:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F), younger(Alter, Ego).


kheyate(Alter, Ego) :-  heyate[aux]44(Alter, Ego), female(Alter).
{"BroDaDa_BroSoDa_DaDa_DaDaDa_DaSoDa_FaBroDaDaDa_FaBroDaSoDa_FaBroSoDaDa_FaBroSoSoDa_FaSisDaDaDa_FaSisDaSoDa_FaSisSoDaDa_FaSisSoSoDa_MoBroDaDaDa_MoBroDaSoDa_MoBroSoDaDa_MoBroSoSoDa_MoSisDaDaDa_MoSisDaSoDa_MoSisSoDaDa_MoSisSoSoDa_SisDaDa_SisSoDa_SoDa_SoDaDa_SoSoDa"}
;; 0
%kheyate:0, heyate[aux]44:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), child(Alter, A), female(Alter).
;; 1
%kheyate:0, heyate[aux]44:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), child(Alter, A), female(Alter).
;; 2
%kheyate:0, heyate[aux]44:1, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
[ext],  son(A, Ego), son(B, A), child(Alter, B), female(Alter).
;; 3
%kheyate:0, heyate[aux]44:1, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
[ext],  son(A, Ego), daughter(B, A), child(Alter, B), female(Alter).
;; 4
%kheyate:0, heyate[aux]44:1, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
[ext],  daughter(A, Ego), son(B, A), child(Alter, B), female(Alter).
;; 5
%kheyate:0, heyate[aux]44:1, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
[ext],  daughter(A, Ego), daughter(B, A), child(Alter, B), female(Alter).
;; 6
%kheyate:0, heyate[aux]44:2, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), child(Alter, D), female(Alter).
;; 7
%kheyate:0, heyate[aux]44:2, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), child(Alter, D), female(Alter).
;; 8
%kheyate:0, heyate[aux]44:2, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), child(Alter, D), female(Alter).
;; 9
%kheyate:0, heyate[aux]44:2, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), child(Alter, D), female(Alter).
;; 10
%kheyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), female(Alter).
;; 11
%kheyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 12
%kheyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), female(Alter).
;; 13
%kheyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 14
%kheyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), female(Alter).
;; 15
%kheyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 16
%kheyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), female(Alter).
;; 17
%kheyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 18
%kheyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), female(Alter).
;; 19
%kheyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 20
%kheyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), female(Alter).
;; 21
%kheyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 22
%kheyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), female(Alter).
;; 23
%kheyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 24
%kheyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), female(Alter).
;; 25
%kheyate:0, heyate[aux]44:2, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter).


kheyewote(Alter, Ego) :-  male(Ego), sister(A, Ego), daughter(Alter, A).
                      |  [ext],  male(Ego), parents(A, Ego), generation[aux]44gs(B, A), daughter(C, B), daughter(Alter, C).
{"FaBroDaDa_FaFaBroDaDaDa_FaFaBroSoDaDa_FaFaFaBroDaDaDaDa_FaFaFaBroDaSoDaDa_FaFaFaBroSoDaDaDa_FaFaFaBroSoSoDaDa_FaFaFaSisDaDaDaDa_FaFaFaSisDaSoDaDa_FaFaFaSisSoDaDaDa_FaFaFaSisSoSoDaDa_FaFaMoBroDaDaDaDa_FaFaMoBroDaSoDaDa_FaFaMoBroSoDaDaDa_FaFaMoBroSoSoDaDa_FaFaMoSisDaDaDaDa_FaFaMoSisDaSoDaDa_FaFaMoSisSoDaDaDa_FaFaMoSisSoSoDaDa_FaFaSisDaDaDa_FaFaSisSoDaDa_FaMoBroDaDaDa_FaMoBroSoDaDa_FaMoFaBroDaDaDaDa_FaMoFaBroDaSoDaDa_FaMoFaBroSoDaDaDa_FaMoFaBroSoSoDaDa_FaMoFaSisDaDaDaDa_FaMoFaSisDaSoDaDa_FaMoFaSisSoDaDaDa_FaMoFaSisSoSoDaDa_FaMoMoBroDaDaDaDa_FaMoMoBroDaSoDaDa_FaMoMoBroSoDaDaDa_FaMoMoBroSoSoDaDa_FaMoMoSisDaDaDaDa_FaMoMoSisDaSoDaDa_FaMoMoSisSoDaDaDa_FaMoMoSisSoSoDaDa_FaMoSisDaDaDa_FaMoSisSoDaDa_FaSisDaDa_MoBroDaDa_MoFaBroDaDaDa_MoFaBroSoDaDa_MoFaFaBroDaDaDaDa_MoFaFaBroDaSoDaDa_MoFaFaBroSoDaDaDa_MoFaFaBroSoSoDaDa_MoFaFaSisDaDaDaDa_MoFaFaSisDaSoDaDa_MoFaFaSisSoDaDaDa_MoFaFaSisSoSoDaDa_MoFaMoBroDaDaDaDa_MoFaMoBroDaSoDaDa_MoFaMoBroSoDaDaDa_MoFaMoBroSoSoDaDa_MoFaMoSisDaDaDaDa_MoFaMoSisDaSoDaDa_MoFaMoSisSoDaDaDa_MoFaMoSisSoSoDaDa_MoFaSisDaDaDa_MoFaSisSoDaDa_MoMoBroDaDaDa_MoMoBroSoDaDa_MoMoFaBroDaDaDaDa_MoMoFaBroDaSoDaDa_MoMoFaBroSoDaDaDa_MoMoFaBroSoSoDaDa_MoMoFaSisDaDaDaDa_MoMoFaSisDaSoDaDa_MoMoFaSisSoDaDaDa_MoMoFaSisSoSoDaDa_MoMoMoBroDaDaDaDa_MoMoMoBroDaSoDaDa_MoMoMoBroSoDaDaDa_MoMoMoBroSoSoDaDa_MoMoMoSisDaDaDaDa_MoMoMoSisDaSoDaDa_MoMoMoSisSoDaDaDa_MoMoMoSisSoSoDaDa_MoMoSisDaDaDa_MoMoSisSoDaDa_MoSisDaDa_SisDa"}
;; 0
%kheyewote:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 1
%kheyewote:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 2
%kheyewote:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 3
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 4
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 5
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 6
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 7
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 8
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 9
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 10
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 11
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 12
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 13
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 14
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 15
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 16
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 17
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 18
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 19
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 20
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 21
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 22
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 23
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 24
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 25
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 26
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 27
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 28
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 29
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 30
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 31
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 32
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 33
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 34
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 35
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 36
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 37
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 38
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 39
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 40
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 41
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 42
%kheyewote:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 43
%kheyewote:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 44
%kheyewote:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 45
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 46
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 47
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 48
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 49
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 50
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 51
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 52
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 53
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 54
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 55
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 56
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 57
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 58
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 59
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 60
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 61
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 62
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 63
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 64
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 65
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 66
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 67
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 68
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 69
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 70
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 71
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 72
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 73
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 74
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 75
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 76
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 77
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 78
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 79
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 80
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 81
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 82
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 83
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 84
%kheyewote:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).


noyeh(Alter, Ego) :-  mother(Alter, Ego).
                  |  [ext],  mother(A, Ego), generation[aux]44(Alter, A), female(Alter).
{"Mo_MoFaBroDa_MoFaFaBroDaDa_MoFaFaBroSoDa_MoFaFaSisDaDa_MoFaFaSisSoDa_MoFaMoBroDaDa_MoFaMoBroSoDa_MoFaMoSisDaDa_MoFaMoSisSoDa_MoFaSisDa_MoMoBroDa_MoMoFaBroDaDa_MoMoFaBroSoDa_MoMoFaSisDaDa_MoMoFaSisSoDa_MoMoMoBroDaDa_MoMoMoBroSoDa_MoMoMoSisDaDa_MoMoMoSisSoDa_MoMoSisDa_MoSis"}
;; 0
%noyeh:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).
;; 1
%noyeh:1, generation[aux]44:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%noyeh:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 3
%noyeh:1, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 4
%noyeh:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 5
%noyeh:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 6
%noyeh:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 7
%noyeh:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 8
%noyeh:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 9
%noyeh:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 10
%noyeh:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 11
%noyeh:1, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 12
%noyeh:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 13
%noyeh:1, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 14
%noyeh:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 15
%noyeh:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 16
%noyeh:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 17
%noyeh:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 18
%noyeh:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 19
%noyeh:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 20
%noyeh:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 21
%noyeh:1, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).


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


square[aux]44(Alter, Ego) :-  generation[aux]44(Alter, Ego).
                          |   parent(Alter, Ego).
                          |   parents(A, Ego), square[aux]44(Alter, A).
;; 0
%square[aux]44:0, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 4
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 5
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 6
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 7
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 8
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 9
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 10
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 11
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 12
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 13
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 14
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 15
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 16
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 17
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 18
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 19
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 20
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 21
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 22
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 23
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 24
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 25
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 26
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 27
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 28
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 29
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 30
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 31
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 32
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 33
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 34
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 35
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 36
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 37
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 38
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 39
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 40
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 41
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 42
%square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 43
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 44
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 45
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 46
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 47
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 48
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 49
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 50
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 51
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 52
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 53
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 54
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 55
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 56
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 57
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 58
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 59
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 60
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 61
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 62
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 63
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 64
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 65
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 66
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 67
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 68
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 69
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 70
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 71
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 72
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 73
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 74
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 75
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 76
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 77
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 78
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 79
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 80
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 81
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 82
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 83
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 84
%square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 85
%square[aux]44:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(Alter, Ego).
;; 86
%square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 87
%square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 88
%square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 89
%square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 90
%square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 91
%square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 92
%square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 93
%square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 94
%square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 95
%square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 96
%square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 97
%square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 98
%square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 99
%square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 100
%square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 101
%square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 102
%square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 103
%square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 104
%square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 105
%square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 106
%square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 107
%square[aux]44:2, parents:0, square[aux]44:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), parent(Alter, A).
;; 108
%square[aux]44:2, parents:0, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 109
%square[aux]44:2, parents:0, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 110
%square[aux]44:2, parents:0, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 111
%square[aux]44:2, parents:0, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 112
%square[aux]44:2, parents:0, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 113
%square[aux]44:2, parents:0, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 114
%square[aux]44:2, parents:0, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 115
%square[aux]44:2, parents:0, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 116
%square[aux]44:2, parents:0, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 117
%square[aux]44:2, parents:0, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 118
%square[aux]44:2, parents:0, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 119
%square[aux]44:2, parents:0, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 120
%square[aux]44:2, parents:0, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 121
%square[aux]44:2, parents:0, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 122
%square[aux]44:2, parents:0, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 123
%square[aux]44:2, parents:0, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 124
%square[aux]44:2, parents:0, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 125
%square[aux]44:2, parents:0, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 126
%square[aux]44:2, parents:0, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 127
%square[aux]44:2, parents:0, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 128
%square[aux]44:2, parents:0, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 129
%square[aux]44:2, parents:0, square[aux]44:2, parents:0, square[aux]44:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), parent(Alter, B).
;; 130
%square[aux]44:2, parents:0, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 131
%square[aux]44:2, parents:0, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 132
%square[aux]44:2, parents:0, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 133
%square[aux]44:2, parents:0, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 134
%square[aux]44:2, parents:0, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 135
%square[aux]44:2, parents:0, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 136
%square[aux]44:2, parents:0, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 137
%square[aux]44:2, parents:0, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 138
%square[aux]44:2, parents:0, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 139
%square[aux]44:2, parents:0, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 140
%square[aux]44:2, parents:0, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 141
%square[aux]44:2, parents:0, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 142
%square[aux]44:2, parents:0, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 143
%square[aux]44:2, parents:0, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 144
%square[aux]44:2, parents:0, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 145
%square[aux]44:2, parents:0, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 146
%square[aux]44:2, parents:0, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 147
%square[aux]44:2, parents:0, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 148
%square[aux]44:2, parents:0, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 149
%square[aux]44:2, parents:0, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 150
%square[aux]44:2, parents:0, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 151
%square[aux]44:2, parents:0, square[aux]44:2, parents:1, square[aux]44:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), parent(Alter, B).
;; 152
%square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 153
%square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 154
%square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 155
%square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 156
%square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 157
%square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 158
%square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 159
%square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 160
%square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 161
%square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 162
%square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 163
%square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 164
%square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 165
%square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 166
%square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 167
%square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 168
%square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 169
%square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 170
%square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 171
%square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 172
%square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 173
%square[aux]44:2, parents:1, square[aux]44:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), parent(Alter, A).
;; 174
%square[aux]44:2, parents:1, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 175
%square[aux]44:2, parents:1, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 176
%square[aux]44:2, parents:1, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 177
%square[aux]44:2, parents:1, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 178
%square[aux]44:2, parents:1, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 179
%square[aux]44:2, parents:1, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 180
%square[aux]44:2, parents:1, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 181
%square[aux]44:2, parents:1, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 182
%square[aux]44:2, parents:1, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 183
%square[aux]44:2, parents:1, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 184
%square[aux]44:2, parents:1, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 185
%square[aux]44:2, parents:1, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 186
%square[aux]44:2, parents:1, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 187
%square[aux]44:2, parents:1, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 188
%square[aux]44:2, parents:1, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 189
%square[aux]44:2, parents:1, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 190
%square[aux]44:2, parents:1, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 191
%square[aux]44:2, parents:1, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 192
%square[aux]44:2, parents:1, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 193
%square[aux]44:2, parents:1, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 194
%square[aux]44:2, parents:1, square[aux]44:2, parents:0, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 195
%square[aux]44:2, parents:1, square[aux]44:2, parents:0, square[aux]44:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), parent(Alter, B).
;; 196
%square[aux]44:2, parents:1, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 197
%square[aux]44:2, parents:1, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 198
%square[aux]44:2, parents:1, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 199
%square[aux]44:2, parents:1, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 200
%square[aux]44:2, parents:1, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 201
%square[aux]44:2, parents:1, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 202
%square[aux]44:2, parents:1, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 203
%square[aux]44:2, parents:1, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 204
%square[aux]44:2, parents:1, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 205
%square[aux]44:2, parents:1, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 206
%square[aux]44:2, parents:1, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:0, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 207
%square[aux]44:2, parents:1, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 208
%square[aux]44:2, parents:1, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 209
%square[aux]44:2, parents:1, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 210
%square[aux]44:2, parents:1, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 211
%square[aux]44:2, parents:1, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 212
%square[aux]44:2, parents:1, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:0, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 213
%square[aux]44:2, parents:1, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 214
%square[aux]44:2, parents:1, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 215
%square[aux]44:2, parents:1, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 216
%square[aux]44:2, parents:1, square[aux]44:2, parents:1, square[aux]44:0, generation[aux]44:1, parents:1, generation[aux]44gs:1, parents:1, generation[aux]44gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 217
%square[aux]44:2, parents:1, square[aux]44:2, parents:1, square[aux]44:1%
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

