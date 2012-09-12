;;  Horn Clause Representation of Oneida Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Oneida") (author, "L. H. Morgan") (date, "1871-01-01") (citation, "871 (reprint 1997), University of Nebraska Press, Lincoln") 
(non_term, [aux], [eq], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, false) (address, false) (recursiveLevels, 2)
(overlaps, (ahkjeha, (kagaah)), (kagaah, (ahkjeha, legaah)), (lakjeha, (legaah)), (legaah, (kagaah, lakjeha)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

ahkjeha(Alter, Ego) :-  sister(Alter, Ego), elder(Alter, Ego).
                    |  [ext],  step_sister(Alter, Ego), elder(Alter, Ego).
                    |  [ext],  parallelups[aux]38(A, Ego), daughter(Alter, A), elder(Alter, Ego).
{"FaBroDa_FaFaBroSoDa_FaMoSisSoDa_MoFaBroDaDa_MoMoSisDaDa_MoSisDa_Sis_Stsis"}
;; 0
%ahkjeha:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).
;; 1
%ahkjeha:1, step_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
[ext],  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C), elder(Alter, Ego).
;; 2
%ahkjeha:1, step_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
[ext],  father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C), elder(Alter, Ego).
;; 3
%ahkjeha:2, parallelups[aux]38:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), daughter(Alter, E), elder(Alter, Ego).
;; 4
%ahkjeha:2, parallelups[aux]38:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), daughter(Alter, E), elder(Alter, Ego).
;; 5
%ahkjeha:2, parallelups[aux]38:1, parents:0, parallelups[aux]38:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), daughter(Alter, H), elder(Alter, Ego).
;; 6
%ahkjeha:2, parallelups[aux]38:1, parents:0, parallelups[aux]38:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), daughter(Alter, H), elder(Alter, Ego).
;; 7
%ahkjeha:2, parallelups[aux]38:1, parents:1, parallelups[aux]38:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), daughter(Alter, H), elder(Alter, Ego).
;; 8
%ahkjeha:2, parallelups[aux]38:1, parents:1, parallelups[aux]38:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), daughter(Alter, H), elder(Alter, Ego).


ahknoleha(Alter, Ego) :-  mother(Alter, Ego).
                      |   parents(A, Ego), gen[aux]38n1(Alter, A), female(Alter).
                      |   father(A, Ego), brother(B, A), wife(Alter, B).
{"FaBroWi_FaFaBroDa_FaFaFaBroDaDa_FaFaFaBroSoDa_FaFaFaSisDaDa_FaFaFaSisSoDa_FaFaMoBroDaDa_FaFaMoBroSoDa_FaFaMoSisDaDa_FaFaMoSisSoDa_FaFaSisDa_FaMoBroDa_FaMoFaBroDaDa_FaMoFaBroSoDa_FaMoFaSisDaDa_FaMoFaSisSoDa_FaMoMoBroDaDa_FaMoMoBroSoDa_FaMoMoSisDaDa_FaMoMoSisSoDa_FaMoSisDa_FaSis_Mo_MoFaBroDa_MoFaFaBroDaDa_MoFaFaBroSoDa_MoFaFaSisDaDa_MoFaFaSisSoDa_MoFaMoBroDaDa_MoFaMoBroSoDa_MoFaMoSisDaDa_MoFaMoSisSoDa_MoFaSisDa_MoMoBroDa_MoMoFaBroDaDa_MoMoFaBroSoDa_MoMoFaSisDaDa_MoMoFaSisSoDa_MoMoMoBroDaDa_MoMoMoBroSoDa_MoMoMoSisDaDa_MoMoMoSisSoDa_MoMoSisDa_MoSis"}
;; 0
%ahknoleha:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).
;; 1
%ahknoleha:1, parents:0, gen[aux]38n1:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%ahknoleha:1, parents:0, gen[aux]38n1:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 3
%ahknoleha:1, parents:0, gen[aux]38n1:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 4
%ahknoleha:1, parents:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 5
%ahknoleha:1, parents:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 6
%ahknoleha:1, parents:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 7
%ahknoleha:1, parents:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 8
%ahknoleha:1, parents:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 9
%ahknoleha:1, parents:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 10
%ahknoleha:1, parents:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 11
%ahknoleha:1, parents:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 12
%ahknoleha:1, parents:0, gen[aux]38n1:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 13
%ahknoleha:1, parents:0, gen[aux]38n1:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 14
%ahknoleha:1, parents:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 15
%ahknoleha:1, parents:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 16
%ahknoleha:1, parents:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 17
%ahknoleha:1, parents:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 18
%ahknoleha:1, parents:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 19
%ahknoleha:1, parents:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 20
%ahknoleha:1, parents:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 21
%ahknoleha:1, parents:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 22
%ahknoleha:1, parents:1, gen[aux]38n1:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 23
%ahknoleha:1, parents:1, gen[aux]38n1:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 24
%ahknoleha:1, parents:1, gen[aux]38n1:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 25
%ahknoleha:1, parents:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 26
%ahknoleha:1, parents:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 27
%ahknoleha:1, parents:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 28
%ahknoleha:1, parents:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 29
%ahknoleha:1, parents:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 30
%ahknoleha:1, parents:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 31
%ahknoleha:1, parents:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 32
%ahknoleha:1, parents:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 33
%ahknoleha:1, parents:1, gen[aux]38n1:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 34
%ahknoleha:1, parents:1, gen[aux]38n1:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 35
%ahknoleha:1, parents:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 36
%ahknoleha:1, parents:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 37
%ahknoleha:1, parents:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 38
%ahknoleha:1, parents:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 39
%ahknoleha:1, parents:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 40
%ahknoleha:1, parents:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 41
%ahknoleha:1, parents:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 42
%ahknoleha:1, parents:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 43
%ahknoleha:2, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


ahksoteha(Alter, Ego) :-  gen_up[aux]38(A, Ego), mother(Alter, A).
                      |  [ext],  gen_up[aux]38(A, Ego), parents(B, A), sister(Alter, B).
                      |  [ext],  parents(A, Ego), parents(B, A), parents(C, B), siblings(D, C), daughter(Alter, D).
{"FaFaFaBroDa_FaFaFaSis_FaFaFaSisDa_FaFaMo_FaFaMoBroDa_FaFaMoSis_FaFaMoSisDa_FaFaSis_FaMo_FaMoFaBroDa_FaMoFaSis_FaMoFaSisDa_FaMoMo_FaMoMoBroDa_FaMoMoSis_FaMoMoSisDa_FaMoSis_MoFaFaBroDa_MoFaFaSis_MoFaFaSisDa_MoFaMo_MoFaMoBroDa_MoFaMoSis_MoFaMoSisDa_MoFaSis_MoMo_MoMoFaBroDa_MoMoFaSis_MoMoFaSisDa_MoMoMo_MoMoMoBroDa_MoMoMoSis_MoMoMoSisDa_MoMoSis"}
;; 0
%ahksoteha:0, gen_up[aux]38:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 1
%ahksoteha:0, gen_up[aux]38:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).
;; 2
%ahksoteha:0, gen_up[aux]38:1, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
 mother(A, Ego), mother(B, A), mother(Alter, B).
;; 3
%ahksoteha:0, gen_up[aux]38:1, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
 mother(A, Ego), father(B, A), mother(Alter, B).
;; 4
%ahksoteha:0, gen_up[aux]38:1, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
 father(A, Ego), mother(B, A), mother(Alter, B).
;; 5
%ahksoteha:0, gen_up[aux]38:1, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
 father(A, Ego), father(B, A), mother(Alter, B).
;; 6
%ahksoteha:1, gen_up[aux]38:0, parents:0, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 7
%ahksoteha:1, gen_up[aux]38:0, parents:0, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 8
%ahksoteha:1, gen_up[aux]38:0, parents:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 9
%ahksoteha:1, gen_up[aux]38:0, parents:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 10
%ahksoteha:1, gen_up[aux]38:1, parents:0, parents:0, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 11
%ahksoteha:1, gen_up[aux]38:1, parents:0, parents:0, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaSis}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 12
%ahksoteha:1, gen_up[aux]38:1, parents:0, parents:1, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 13
%ahksoteha:1, gen_up[aux]38:1, parents:0, parents:1, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaSis}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 14
%ahksoteha:1, gen_up[aux]38:1, parents:1, parents:0, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 15
%ahksoteha:1, gen_up[aux]38:1, parents:1, parents:0, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaSis}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 16
%ahksoteha:1, gen_up[aux]38:1, parents:1, parents:1, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 17
%ahksoteha:1, gen_up[aux]38:1, parents:1, parents:1, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaSis}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 18
%ahksoteha:2, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 19
%ahksoteha:2, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 20
%ahksoteha:2, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 21
%ahksoteha:2, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 22
%ahksoteha:2, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 23
%ahksoteha:2, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 24
%ahksoteha:2, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 25
%ahksoteha:2, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 26
%ahksoteha:2, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 27
%ahksoteha:2, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 28
%ahksoteha:2, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 29
%ahksoteha:2, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 30
%ahksoteha:2, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 31
%ahksoteha:2, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 32
%ahksoteha:2, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 33
%ahksoteha:2, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).


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


crossups[aux]38(Alter, Ego) :-  parents(A, Ego), gender(B, A), sibling(Alter, A), gender(C, Alter), not(equal(B, C)).
                            |   parents(A, Ego), gender(B, A), crossups[aux]38(C, A), gender(D, Alter), child(Alter, C), not(equal(B, D)).
;; 0
%crossups[aux]38:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(Alter, C), child(Alter, D), not(equal(Alter, A)), gender(E, Alter), not(equal(B, E)).
;; 1
%crossups[aux]38:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(Alter, C), child(Alter, D), not(equal(Alter, A)), gender(E, Alter), not(equal(B, E)).
;; 2
%crossups[aux]38:1, parents:0, crossups[aux]38:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, Alter), child(Alter, G), not(equal(B, I)).
;; 3
%crossups[aux]38:1, parents:0, crossups[aux]38:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, Alter), child(Alter, G), not(equal(B, I)).
;; 4
%crossups[aux]38:1, parents:1, crossups[aux]38:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, Alter), child(Alter, G), not(equal(B, I)).
;; 5
%crossups[aux]38:1, parents:1, crossups[aux]38:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, Alter), child(Alter, G), not(equal(B, I)).


dayakeneda(Alter, Ego) :-  spice(Alter, Ego).
{"Hu_Wi"}
;; 0
%dayakeneda:0, spice:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).
;; 1
%dayakeneda:0, spice:1%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


gen[aux]38(Alter, Ego) :-  siblings(Alter, Ego).
                       |   parents(A, Ego), gen[aux]38(B, A), children(Alter, B).
;; 0
%gen[aux]38:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%gen[aux]38:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 7
%gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 8
%gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 9
%gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 10
%gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 11
%gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 12
%gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 13
%gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 14
%gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 15
%gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 16
%gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 17
%gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 18
%gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 19
%gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 20
%gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 21
%gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 22
%gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 23
%gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 24
%gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 25
%gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 26
%gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 27
%gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 28
%gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 29
%gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 30
%gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 31
%gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 32
%gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 33
%gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 34
%gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 35
%gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 36
%gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 37
%gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 38
%gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 39
%gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 40
%gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 41
%gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).


gen[aux]38fm(Alter, Ego) :-  brother(Alter, Ego).
                         |   mother(A, Ego), gen[aux]38fm(B, A), son(Alter, B).
;; 0
%gen[aux]38fm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%gen[aux]38fm:1, gen[aux]38fm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%gen[aux]38fm:1, gen[aux]38fm:1, gen[aux]38fm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).


gen[aux]38mm(Alter, Ego) :-  brother(Alter, Ego).
                         |   father(A, Ego), gen[aux]38mm(B, A), son(Alter, B).
;; 0
%gen[aux]38mm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%gen[aux]38mm:1, gen[aux]38mm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%gen[aux]38mm:1, gen[aux]38mm:1, gen[aux]38mm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).


gen[aux]38n1(Alter, Ego) :-  sibling(Alter, Ego).
                         |   parents(A, Ego), gen[aux]38(B, A), child(Alter, B).
;; 0
%gen[aux]38n1:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%gen[aux]38n1:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%gen[aux]38n1:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 4
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 5
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 6
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 7
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 8
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 9
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 10
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 11
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 12
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 13
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 14
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 15
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 16
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 17
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 18
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 19
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 20
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 21
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 22
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 23
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 24
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 25
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 26
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 27
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 28
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 29
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 30
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 31
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 32
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 33
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 34
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 35
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 36
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 37
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 38
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 39
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 40
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 41
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 42
%gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 43
%gen[aux]38n1:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 44
%gen[aux]38n1:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 45
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 46
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 47
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 48
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 49
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 50
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 51
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 52
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 53
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 54
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 55
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 56
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 57
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 58
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 59
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 60
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 61
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 62
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 63
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 64
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 65
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 66
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 67
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 68
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 69
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 70
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 71
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 72
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 73
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 74
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 75
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 76
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 77
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 78
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 79
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 80
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 81
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 82
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 83
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 84
%gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).


gen_dn[aux]38(Alter, Ego) :-  children(Alter, Ego).
                          |   children(A, Ego), children(Alter, A).
;; 0
%gen_dn[aux]38:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Alter, Ego).
;; 1
%gen_dn[aux]38:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Alter, Ego).
;; 2
%gen_dn[aux]38:1, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), son(Alter, A).
;; 3
%gen_dn[aux]38:1, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), daughter(Alter, A).
;; 4
%gen_dn[aux]38:1, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), son(Alter, A).
;; 5
%gen_dn[aux]38:1, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), daughter(Alter, A).


gen_up[aux]38(Alter, Ego) :-  parents(Alter, Ego).
                          |   parents(A, Ego), parents(Alter, A).
;; 0
%gen_up[aux]38:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(Alter, Ego).
;; 1
%gen_up[aux]38:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(Alter, Ego).
;; 2
%gen_up[aux]38:1, parents:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(Alter, A).
;; 3
%gen_up[aux]38:1, parents:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(Alter, A).
;; 4
%gen_up[aux]38:1, parents:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(Alter, A).
;; 5
%gen_up[aux]38:1, parents:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(Alter, A).


hagwalehoseha(Alter, Ego) :-  spice(A, Ego), father(Alter, A).
                          |   spice(A, Ego), parents(B, A), father(Alter, B).
{"HuFa_HuFaFa_HuMoFa_WiFa_WiFaFa_WiMoFa"}
;; 0
%hagwalehoseha:0, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).
;; 1
%hagwalehoseha:0, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).
;; 2
%hagwalehoseha:1, spice:0, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoFa}  
 husband(A, Ego), mother(B, A), father(Alter, B).
;; 3
%hagwalehoseha:1, spice:0, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaFa}  
 husband(A, Ego), father(B, A), father(Alter, B).
;; 4
%hagwalehoseha:1, spice:1, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoFa}  
 wife(A, Ego), mother(B, A), father(Alter, B).
;; 5
%hagwalehoseha:1, spice:1, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaFa}  
 wife(A, Ego), father(B, A), father(Alter, B).


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


hayalehoseha(Alter, Ego) :-  daughter(A, Ego), husband(Alter, A).
                         |  [ext],  siblings(A, Ego), daughter(B, A), husband(Alter, B).
{"BroDaHu_DaHu_SisDaHu"}
;; 0
%hayalehoseha:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 daughter(A, Ego), husband(Alter, A).
;; 1
%hayalehoseha:1, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), husband(Alter, D).
;; 2
%hayalehoseha:1, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), husband(Alter, D).


hayawanda(Alter, Ego) :-  male(Ego), gen[aux]38n1(A, Ego), female(A), son(Alter, A).
{"FaBroDaSo_FaFaBroDaDaSo_FaFaBroSoDaSo_FaFaFaBroDaDaDaSo_FaFaFaBroDaSoDaSo_FaFaFaBroSoDaDaSo_FaFaFaBroSoSoDaSo_FaFaFaSisDaDaDaSo_FaFaFaSisDaSoDaSo_FaFaFaSisSoDaDaSo_FaFaFaSisSoSoDaSo_FaFaMoBroDaDaDaSo_FaFaMoBroDaSoDaSo_FaFaMoBroSoDaDaSo_FaFaMoBroSoSoDaSo_FaFaMoSisDaDaDaSo_FaFaMoSisDaSoDaSo_FaFaMoSisSoDaDaSo_FaFaMoSisSoSoDaSo_FaFaSisDaDaSo_FaFaSisSoDaSo_FaMoBroDaDaSo_FaMoBroSoDaSo_FaMoFaBroDaDaDaSo_FaMoFaBroDaSoDaSo_FaMoFaBroSoDaDaSo_FaMoFaBroSoSoDaSo_FaMoFaSisDaDaDaSo_FaMoFaSisDaSoDaSo_FaMoFaSisSoDaDaSo_FaMoFaSisSoSoDaSo_FaMoMoBroDaDaDaSo_FaMoMoBroDaSoDaSo_FaMoMoBroSoDaDaSo_FaMoMoBroSoSoDaSo_FaMoMoSisDaDaDaSo_FaMoMoSisDaSoDaSo_FaMoMoSisSoDaDaSo_FaMoMoSisSoSoDaSo_FaMoSisDaDaSo_FaMoSisSoDaSo_FaSisDaSo_MoBroDaSo_MoFaBroDaDaSo_MoFaBroSoDaSo_MoFaFaBroDaDaDaSo_MoFaFaBroDaSoDaSo_MoFaFaBroSoDaDaSo_MoFaFaBroSoSoDaSo_MoFaFaSisDaDaDaSo_MoFaFaSisDaSoDaSo_MoFaFaSisSoDaDaSo_MoFaFaSisSoSoDaSo_MoFaMoBroDaDaDaSo_MoFaMoBroDaSoDaSo_MoFaMoBroSoDaDaSo_MoFaMoBroSoSoDaSo_MoFaMoSisDaDaDaSo_MoFaMoSisDaSoDaSo_MoFaMoSisSoDaDaSo_MoFaMoSisSoSoDaSo_MoFaSisDaDaSo_MoFaSisSoDaSo_MoMoBroDaDaSo_MoMoBroSoDaSo_MoMoFaBroDaDaDaSo_MoMoFaBroDaSoDaSo_MoMoFaBroSoDaDaSo_MoMoFaBroSoSoDaSo_MoMoFaSisDaDaDaSo_MoMoFaSisDaSoDaSo_MoMoFaSisSoDaDaSo_MoMoFaSisSoSoDaSo_MoMoMoBroDaDaDaSo_MoMoMoBroDaSoDaSo_MoMoMoBroSoDaDaSo_MoMoMoBroSoSoDaSo_MoMoMoSisDaDaDaSo_MoMoMoSisDaSoDaSo_MoMoMoSisSoDaDaSo_MoMoMoSisSoSoDaSo_MoMoSisDaDaSo_MoMoSisSoDaSo_MoSisDaSo_SisSo"}
;; 0
%hayawanda:0, gen[aux]38n1:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 1
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), female(E), son(Alter, E).
;; 2
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), female(E), son(Alter, E).
;; 3
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 4
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), son(Alter, G).
;; 5
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 6
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), son(Alter, G).
;; 7
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 8
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 9
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 10
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 11
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 12
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 13
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 14
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 15
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 16
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 17
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 18
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 19
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 20
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 21
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 22
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 23
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 24
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), son(Alter, G).
;; 25
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 26
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), son(Alter, G).
;; 27
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 28
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 29
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 30
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 31
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 32
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 33
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 34
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 35
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 36
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 37
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 38
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 39
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 40
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 41
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 42
%hayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 43
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), female(E), son(Alter, E).
;; 44
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), female(E), son(Alter, E).
;; 45
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 46
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), son(Alter, G).
;; 47
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 48
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), son(Alter, G).
;; 49
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoSoDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 50
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 51
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaSoDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 52
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 53
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoSoDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 54
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 55
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaSoDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 56
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 57
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoSoDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 58
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 59
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaSoDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 60
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 61
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoSoDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 62
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 63
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaSoDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 64
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 65
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 66
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), son(Alter, G).
;; 67
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 68
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), son(Alter, G).
;; 69
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 70
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoDaDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 71
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 72
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaDaDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 73
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 74
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoDaDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 75
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 76
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaDaDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 77
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 78
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoDaDaSo}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 79
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 80
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaDaDaSo}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 81
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 82
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoDaDaSo}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 83
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 84
%hayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaDaDaSo}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).


hocnonesekwa(Alter, Ego) :-  step_father(Alter, Ego).
{"Stfa"}
;; 0
%hocnonesekwa:0, step_father:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stfa}  
 father(A, Ego), mother(B, Ego), husband(Alter, B), not(equal(Alter, A)).


kagaah(Alter, Ego) :-  sister(Alter, Ego), younger(Alter, Ego).
                   |  [ext],  step_father(A, Ego), daughter(Alter, A), younger(Alter, Ego).
                   |  [ext],  step_mother(A, Ego), daughter(Alter, A), younger(Alter, Ego).
                   |  [ext],  parallelups[aux]38(A, Ego), daughter(Alter, A), younger(Alter, Ego).
{"FaBroDa_FaFaBroSoDa_FaMoSisSoDa_Hsis_MoFaBroDaDa_MoMoSisDaDa_MoSisDa_Sis"}
;; 0
%kagaah:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).
;; 1
%kagaah:1, step_father:0%
 Lvl=0,  PC=3, S=1, Star=0,  {Hsis}  
[ext],  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), daughter(Alter, C), younger(Alter, Ego).
;; 2
%kagaah:2, step_mother:0%
 Lvl=0,  PC=3, S=1, Star=0,  {Hsis}  
[ext],  father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), daughter(Alter, C), younger(Alter, Ego).
;; 3
%kagaah:3, parallelups[aux]38:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), daughter(Alter, E), younger(Alter, Ego).
;; 4
%kagaah:3, parallelups[aux]38:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), daughter(Alter, E), younger(Alter, Ego).
;; 5
%kagaah:3, parallelups[aux]38:1, parents:0, parallelups[aux]38:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), daughter(Alter, H), younger(Alter, Ego).
;; 6
%kagaah:3, parallelups[aux]38:1, parents:0, parallelups[aux]38:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), daughter(Alter, H), younger(Alter, Ego).
;; 7
%kagaah:3, parallelups[aux]38:1, parents:1, parallelups[aux]38:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), daughter(Alter, H), younger(Alter, Ego).
;; 8
%kagaah:3, parallelups[aux]38:1, parents:1, parallelups[aux]38:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), daughter(Alter, H), younger(Alter, Ego).


kano(Alter, Ego) :-  step_daughter(Alter, Ego).
{"Stda"}
;; 0
%kano:0, step_daughter:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stda}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(Alter, B), daughter(Alter, A).


kayadlaah(Alter, Ego) :-  gen_dn[aux]38(A, Ego), daughter(Alter, A).
                      |  [ext],  gen[aux]38(A, Ego), gen_dn[aux]38(B, A), daughter(Alter, B).
{"BroDaDa_BroDaDaDa_BroDaSoDa_BroSoDa_BroSoDaDa_BroSoSoDa_DaDa_DaDaDa_DaSoDa_FaBroDaDaDa_FaBroDaDaDaDa_FaBroDaDaSoDa_FaBroDaSoDa_FaBroDaSoDaDa_FaBroDaSoSoDa_FaBroSoDaDa_FaBroSoDaDaDa_FaBroSoDaSoDa_FaBroSoSoDa_FaBroSoSoDaDa_FaBroSoSoSoDa_FaFaBroDaDaDaDa_FaFaBroDaDaSoDa_FaFaBroDaSoDaDa_FaFaBroDaSoSoDa_FaFaBroSoDaDaDa_FaFaBroSoDaSoDa_FaFaBroSoSoDaDa_FaFaBroSoSoSoDa_FaFaSisDaDaDaDa_FaFaSisDaDaSoDa_FaFaSisDaSoDaDa_FaFaSisDaSoSoDa_FaFaSisSoDaDaDa_FaFaSisSoDaSoDa_FaFaSisSoSoDaDa_FaFaSisSoSoSoDa_FaMoBroDaDaDaDa_FaMoBroDaDaSoDa_FaMoBroDaSoDaDa_FaMoBroDaSoSoDa_FaMoBroSoDaDaDa_FaMoBroSoDaSoDa_FaMoBroSoSoDaDa_FaMoBroSoSoSoDa_FaMoSisDaDaDaDa_FaMoSisDaDaSoDa_FaMoSisDaSoDaDa_FaMoSisDaSoSoDa_FaMoSisSoDaDaDa_FaMoSisSoDaSoDa_FaMoSisSoSoDaDa_FaMoSisSoSoSoDa_FaSisDaDaDa_FaSisDaDaDaDa_FaSisDaDaSoDa_FaSisDaSoDa_FaSisDaSoDaDa_FaSisDaSoSoDa_FaSisSoDaDa_FaSisSoDaDaDa_FaSisSoDaSoDa_FaSisSoSoDa_FaSisSoSoDaDa_FaSisSoSoSoDa_MoBroDaDaDa_MoBroDaDaDaDa_MoBroDaDaSoDa_MoBroDaSoDa_MoBroDaSoDaDa_MoBroDaSoSoDa_MoBroSoDaDa_MoBroSoDaDaDa_MoBroSoDaSoDa_MoBroSoSoDa_MoBroSoSoDaDa_MoBroSoSoSoDa_MoFaBroDaDaDaDa_MoFaBroDaDaSoDa_MoFaBroDaSoDaDa_MoFaBroDaSoSoDa_MoFaBroSoDaDaDa_MoFaBroSoDaSoDa_MoFaBroSoSoDaDa_MoFaBroSoSoSoDa_MoFaSisDaDaDaDa_MoFaSisDaDaSoDa_MoFaSisDaSoDaDa_MoFaSisDaSoSoDa_MoFaSisSoDaDaDa_MoFaSisSoDaSoDa_MoFaSisSoSoDaDa_MoFaSisSoSoSoDa_MoMoBroDaDaDaDa_MoMoBroDaDaSoDa_MoMoBroDaSoDaDa_MoMoBroDaSoSoDa_MoMoBroSoDaDaDa_MoMoBroSoDaSoDa_MoMoBroSoSoDaDa_MoMoBroSoSoSoDa_MoMoSisDaDaDaDa_MoMoSisDaDaSoDa_MoMoSisDaSoDaDa_MoMoSisDaSoSoDa_MoMoSisSoDaDaDa_MoMoSisSoDaSoDa_MoMoSisSoSoDaDa_MoMoSisSoSoSoDa_MoSisDaDaDa_MoSisDaDaDaDa_MoSisDaDaSoDa_MoSisDaSoDa_MoSisDaSoDaDa_MoSisDaSoSoDa_MoSisSoDaDa_MoSisSoDaDaDa_MoSisSoDaSoDa_MoSisSoSoDa_MoSisSoSoDaDa_MoSisSoSoSoDa_SisDaDa_SisDaDaDa_SisDaSoDa_SisSoDa_SisSoDaDa_SisSoSoDa_SoDa_SoDaDa_SoSoDa"}
;; 0
%kayadlaah:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).
;; 1
%kayadlaah:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).
;; 2
%kayadlaah:0, gen_dn[aux]38:1, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
 son(A, Ego), son(B, A), daughter(Alter, B).
;; 3
%kayadlaah:0, gen_dn[aux]38:1, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
 son(A, Ego), daughter(B, A), daughter(Alter, B).
;; 4
%kayadlaah:0, gen_dn[aux]38:1, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
 daughter(A, Ego), son(B, A), daughter(Alter, B).
;; 5
%kayadlaah:0, gen_dn[aux]38:1, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
 daughter(A, Ego), daughter(B, A), daughter(Alter, B).
;; 6
%kayadlaah:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(Alter, D).
;; 7
%kayadlaah:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(Alter, D).
;; 8
%kayadlaah:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, gen_dn[aux]38:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), daughter(Alter, E).
;; 9
%kayadlaah:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, gen_dn[aux]38:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 10
%kayadlaah:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, gen_dn[aux]38:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 11
%kayadlaah:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, gen_dn[aux]38:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), daughter(Alter, E).
;; 12
%kayadlaah:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(Alter, D).
;; 13
%kayadlaah:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(Alter, D).
;; 14
%kayadlaah:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, gen_dn[aux]38:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), daughter(Alter, E).
;; 15
%kayadlaah:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, gen_dn[aux]38:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 16
%kayadlaah:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, gen_dn[aux]38:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 17
%kayadlaah:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, gen_dn[aux]38:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), daughter(Alter, E).
;; 18
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 19
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 20
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]38:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 21
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]38:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 22
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]38:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 23
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]38:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 24
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 25
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 26
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]38:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 27
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]38:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 28
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]38:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 29
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]38:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 30
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 31
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 32
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]38:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 33
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]38:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 34
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]38:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 35
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]38:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 36
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 37
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 38
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]38:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 39
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]38:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 40
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]38:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 41
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]38:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 42
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 43
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 44
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 45
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 46
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 47
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 48
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 49
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 50
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 51
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 52
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 53
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 54
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 55
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 56
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 57
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 58
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 59
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 60
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 61
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 62
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 63
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 64
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 65
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 66
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 67
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 68
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 69
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 70
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 71
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 72
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 73
%kayadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 74
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 75
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 76
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]38:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 77
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]38:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 78
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]38:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 79
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]38:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 80
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 81
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 82
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]38:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 83
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]38:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 84
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]38:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 85
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]38:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 86
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 87
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 88
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]38:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 89
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]38:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 90
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]38:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 91
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]38:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 92
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 93
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 94
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]38:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 95
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]38:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 96
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]38:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 97
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]38:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 98
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 99
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 100
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 101
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 102
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 103
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 104
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 105
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 106
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 107
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 108
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 109
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 110
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 111
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 112
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 113
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 114
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 115
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 116
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 117
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 118
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 119
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 120
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 121
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 122
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 123
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 124
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 125
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 126
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 127
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 128
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 129
%kayadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).


kayaha(Alter, Ego) :-  daughter(Alter, Ego).
                   |   male(Ego), gen[aux]38n1(A, Ego), male(A), daughter(Alter, A).
                   |   female(Ego), gen[aux]38(A, Ego), daughter(Alter, A).
{"BroDa_Da_FaBroDaDa_FaBroSoDa_FaFaBroDaDaDa_FaFaBroDaSoDa_FaFaBroSoDaDa_FaFaBroSoSoDa_FaFaFaBroDaDaSoDa_FaFaFaBroDaSoSoDa_FaFaFaBroSoDaSoDa_FaFaFaBroSoSoSoDa_FaFaFaSisDaDaSoDa_FaFaFaSisDaSoSoDa_FaFaFaSisSoDaSoDa_FaFaFaSisSoSoSoDa_FaFaMoBroDaDaSoDa_FaFaMoBroDaSoSoDa_FaFaMoBroSoDaSoDa_FaFaMoBroSoSoSoDa_FaFaMoSisDaDaSoDa_FaFaMoSisDaSoSoDa_FaFaMoSisSoDaSoDa_FaFaMoSisSoSoSoDa_FaFaSisDaDaDa_FaFaSisDaSoDa_FaFaSisSoDaDa_FaFaSisSoSoDa_FaMoBroDaDaDa_FaMoBroDaSoDa_FaMoBroSoDaDa_FaMoBroSoSoDa_FaMoFaBroDaDaSoDa_FaMoFaBroDaSoSoDa_FaMoFaBroSoDaSoDa_FaMoFaBroSoSoSoDa_FaMoFaSisDaDaSoDa_FaMoFaSisDaSoSoDa_FaMoFaSisSoDaSoDa_FaMoFaSisSoSoSoDa_FaMoMoBroDaDaSoDa_FaMoMoBroDaSoSoDa_FaMoMoBroSoDaSoDa_FaMoMoBroSoSoSoDa_FaMoMoSisDaDaSoDa_FaMoMoSisDaSoSoDa_FaMoMoSisSoDaSoDa_FaMoMoSisSoSoSoDa_FaMoSisDaDaDa_FaMoSisDaSoDa_FaMoSisSoDaDa_FaMoSisSoSoDa_FaSisDaDa_FaSisSoDa_MoBroDaDa_MoBroSoDa_MoFaBroDaDaDa_MoFaBroDaSoDa_MoFaBroSoDaDa_MoFaBroSoSoDa_MoFaFaBroDaDaSoDa_MoFaFaBroDaSoSoDa_MoFaFaBroSoDaSoDa_MoFaFaBroSoSoSoDa_MoFaFaSisDaDaSoDa_MoFaFaSisDaSoSoDa_MoFaFaSisSoDaSoDa_MoFaFaSisSoSoSoDa_MoFaMoBroDaDaSoDa_MoFaMoBroDaSoSoDa_MoFaMoBroSoDaSoDa_MoFaMoBroSoSoSoDa_MoFaMoSisDaDaSoDa_MoFaMoSisDaSoSoDa_MoFaMoSisSoDaSoDa_MoFaMoSisSoSoSoDa_MoFaSisDaDaDa_MoFaSisDaSoDa_MoFaSisSoDaDa_MoFaSisSoSoDa_MoMoBroDaDaDa_MoMoBroDaSoDa_MoMoBroSoDaDa_MoMoBroSoSoDa_MoMoFaBroDaDaSoDa_MoMoFaBroDaSoSoDa_MoMoFaBroSoDaSoDa_MoMoFaBroSoSoSoDa_MoMoFaSisDaDaSoDa_MoMoFaSisDaSoSoDa_MoMoFaSisSoDaSoDa_MoMoFaSisSoSoSoDa_MoMoMoBroDaDaSoDa_MoMoMoBroDaSoSoDa_MoMoMoBroSoDaSoDa_MoMoMoBroSoSoSoDa_MoMoMoSisDaDaSoDa_MoMoMoSisDaSoSoDa_MoMoMoSisSoDaSoDa_MoMoMoSisSoSoSoDa_MoMoSisDaDaDa_MoMoSisDaSoDa_MoMoSisSoDaDa_MoMoSisSoSoDa_MoSisDaDa_MoSisSoDa_SisDa"}
;; 0
%kayaha:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).
;; 1
%kayaha:1, gen[aux]38n1:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 2
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), male(E), daughter(Alter, E).
;; 3
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), male(E), daughter(Alter, E).
;; 4
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), male(G), daughter(Alter, G).
;; 5
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), male(G), daughter(Alter, G).
;; 6
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), male(G), daughter(Alter, G).
;; 7
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), male(G), daughter(Alter, G).
;; 8
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 9
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 10
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 11
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 12
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 13
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 14
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 15
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 16
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 17
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 18
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 19
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 20
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 21
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 22
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 23
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 24
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), male(G), daughter(Alter, G).
;; 25
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), male(G), daughter(Alter, G).
;; 26
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), male(G), daughter(Alter, G).
;; 27
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), male(G), daughter(Alter, G).
;; 28
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoSoSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 29
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 30
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaSoSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 31
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 32
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoSoSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 33
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 34
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSoSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 35
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 36
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoSoSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 37
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 38
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaSoSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 39
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 40
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoSoSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 41
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 42
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaSoSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 43
%kayaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 44
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), male(E), daughter(Alter, E).
;; 45
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), male(E), daughter(Alter, E).
;; 46
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), male(G), daughter(Alter, G).
;; 47
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), male(G), daughter(Alter, G).
;; 48
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), male(G), daughter(Alter, G).
;; 49
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), male(G), daughter(Alter, G).
;; 50
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 51
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 52
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 53
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 54
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 55
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 56
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 57
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 58
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 59
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 60
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 61
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 62
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 63
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 64
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 65
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 66
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), male(G), daughter(Alter, G).
;; 67
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), male(G), daughter(Alter, G).
;; 68
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), male(G), daughter(Alter, G).
;; 69
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), male(G), daughter(Alter, G).
;; 70
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 71
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 72
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 73
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 74
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 75
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 76
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 77
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 78
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 79
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 80
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 81
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 82
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 83
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 84
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 85
%kayaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 86
%kayaha:2, gen[aux]38:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 87
%kayaha:2, gen[aux]38:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 88
%kayaha:2, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 89
%kayaha:2, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 90
%kayaha:2, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 91
%kayaha:2, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 92
%kayaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 93
%kayaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 94
%kayaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 95
%kayaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 96
%kayaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 97
%kayaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 98
%kayaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 99
%kayaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 100
%kayaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 101
%kayaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 102
%kayaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 103
%kayaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 104
%kayaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 105
%kayaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 106
%kayaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 107
%kayaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 108
%kayaha:2, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 109
%kayaha:2, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 110
%kayaha:2, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 111
%kayaha:2, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 112
%kayaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 113
%kayaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 114
%kayaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 115
%kayaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 116
%kayaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 117
%kayaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 118
%kayaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 119
%kayaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 120
%kayaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 121
%kayaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 122
%kayaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 123
%kayaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 124
%kayaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 125
%kayaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 126
%kayaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 127
%kayaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).


kayawanda(Alter, Ego) :-  male(Ego), gen[aux]38n1(A, Ego), female(A), daughter(Alter, A).
{"FaBroDaDa_FaFaBroDaDaDa_FaFaBroSoDaDa_FaFaFaBroDaDaDaDa_FaFaFaBroDaSoDaDa_FaFaFaBroSoDaDaDa_FaFaFaBroSoSoDaDa_FaFaFaSisDaDaDaDa_FaFaFaSisDaSoDaDa_FaFaFaSisSoDaDaDa_FaFaFaSisSoSoDaDa_FaFaMoBroDaDaDaDa_FaFaMoBroDaSoDaDa_FaFaMoBroSoDaDaDa_FaFaMoBroSoSoDaDa_FaFaMoSisDaDaDaDa_FaFaMoSisDaSoDaDa_FaFaMoSisSoDaDaDa_FaFaMoSisSoSoDaDa_FaFaSisDaDaDa_FaFaSisSoDaDa_FaMoBroDaDaDa_FaMoBroSoDaDa_FaMoFaBroDaDaDaDa_FaMoFaBroDaSoDaDa_FaMoFaBroSoDaDaDa_FaMoFaBroSoSoDaDa_FaMoFaSisDaDaDaDa_FaMoFaSisDaSoDaDa_FaMoFaSisSoDaDaDa_FaMoFaSisSoSoDaDa_FaMoMoBroDaDaDaDa_FaMoMoBroDaSoDaDa_FaMoMoBroSoDaDaDa_FaMoMoBroSoSoDaDa_FaMoMoSisDaDaDaDa_FaMoMoSisDaSoDaDa_FaMoMoSisSoDaDaDa_FaMoMoSisSoSoDaDa_FaMoSisDaDaDa_FaMoSisSoDaDa_FaSisDaDa_MoBroDaDa_MoFaBroDaDaDa_MoFaBroSoDaDa_MoFaFaBroDaDaDaDa_MoFaFaBroDaSoDaDa_MoFaFaBroSoDaDaDa_MoFaFaBroSoSoDaDa_MoFaFaSisDaDaDaDa_MoFaFaSisDaSoDaDa_MoFaFaSisSoDaDaDa_MoFaFaSisSoSoDaDa_MoFaMoBroDaDaDaDa_MoFaMoBroDaSoDaDa_MoFaMoBroSoDaDaDa_MoFaMoBroSoSoDaDa_MoFaMoSisDaDaDaDa_MoFaMoSisDaSoDaDa_MoFaMoSisSoDaDaDa_MoFaMoSisSoSoDaDa_MoFaSisDaDaDa_MoFaSisSoDaDa_MoMoBroDaDaDa_MoMoBroSoDaDa_MoMoFaBroDaDaDaDa_MoMoFaBroDaSoDaDa_MoMoFaBroSoDaDaDa_MoMoFaBroSoSoDaDa_MoMoFaSisDaDaDaDa_MoMoFaSisDaSoDaDa_MoMoFaSisSoDaDaDa_MoMoFaSisSoSoDaDa_MoMoMoBroDaDaDaDa_MoMoMoBroDaSoDaDa_MoMoMoBroSoDaDaDa_MoMoMoBroSoSoDaDa_MoMoMoSisDaDaDaDa_MoMoMoSisDaSoDaDa_MoMoMoSisSoDaDaDa_MoMoMoSisSoSoDaDa_MoMoSisDaDaDa_MoMoSisSoDaDa_MoSisDaDa_SisDa"}
;; 0
%kayawanda:0, gen[aux]38n1:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 1
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), female(E), daughter(Alter, E).
;; 2
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), female(E), daughter(Alter, E).
;; 3
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 4
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), daughter(Alter, G).
;; 5
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 6
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), daughter(Alter, G).
;; 7
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 8
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 9
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 10
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 11
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 12
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 13
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 14
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 15
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 16
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 17
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 18
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 19
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 20
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 21
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 22
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 23
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 24
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), daughter(Alter, G).
;; 25
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 26
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), daughter(Alter, G).
;; 27
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 28
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 29
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 30
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 31
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 32
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 33
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 34
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 35
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 36
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 37
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 38
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 39
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 40
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 41
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 42
%kayawanda:0, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 43
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), female(E), daughter(Alter, E).
;; 44
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), female(E), daughter(Alter, E).
;; 45
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 46
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), daughter(Alter, G).
;; 47
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 48
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), daughter(Alter, G).
;; 49
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 50
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 51
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 52
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 53
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 54
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 55
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 56
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 57
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 58
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 59
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 60
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 61
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 62
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 63
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 64
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 65
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 66
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), daughter(Alter, G).
;; 67
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 68
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), daughter(Alter, G).
;; 69
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 70
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 71
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 72
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 73
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 74
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 75
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 76
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 77
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 78
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 79
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 80
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 81
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 82
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 83
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 84
%kayawanda:0, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).


kazawa(Alter, Ego) :-  son(A, Ego), wife(Alter, A).
                   |  [ext],  siblings(A, Ego), son(B, A), wife(Alter, B).
{"BroSoWi_SisSoWi_SoWi"}
;; 0
%kazawa:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 son(A, Ego), wife(Alter, A).
;; 1
%kazawa:1, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroSoWi}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), wife(Alter, D).
;; 2
%kazawa:1, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), wife(Alter, D).


laganih(Alter, Ego) :-  father(Alter, Ego).
                    |   father(A, Ego), sister(B, A), husband(Alter, B).
                    |   father(A, Ego), gen[aux]38mm(Alter, A).
{"Fa_FaBro_FaFaBroSo_FaFaFaBroSoSo_FaSisHu"}
;; 0
%laganih:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).
;; 1
%laganih:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 2
%laganih:2, gen[aux]38mm:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 3
%laganih:2, gen[aux]38mm:1, gen[aux]38mm:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 4
%laganih:2, gen[aux]38mm:1, gen[aux]38mm:1, gen[aux]38mm:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).


lagnoleha(Alter, Ego) :-  mother(A, Ego), brother(Alter, A).
                      |   mother(A, Ego), gen[aux]38fm(Alter, A).
{"MoBro_MoMoBroSo_MoMoMoBroSoSo"}
;; 0
%lagnoleha:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%lagnoleha:1, gen[aux]38fm:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%lagnoleha:1, gen[aux]38fm:1, gen[aux]38fm:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 3
%lagnoleha:1, gen[aux]38fm:1, gen[aux]38fm:1, gen[aux]38fm:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).


lakjeha(Alter, Ego) :-  brother(Alter, Ego), elder(Alter, Ego).
                    |  [ext],  step_brother(Alter, Ego), elder(Alter, Ego).
                    |  [ext],  parallelups[aux]38(A, Ego), son(Alter, A), elder(Alter, Ego).
{"Bro_FaBroSo_FaFaBroSoSo_FaMoSisSoSo_MoFaBroDaSo_MoMoSisDaSo_MoSisSo_Stbro"}
;; 0
%lakjeha:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%lakjeha:1, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
[ext],  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C), elder(Alter, Ego).
;; 2
%lakjeha:1, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
[ext],  father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C), elder(Alter, Ego).
;; 3
%lakjeha:2, parallelups[aux]38:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), son(Alter, E), elder(Alter, Ego).
;; 4
%lakjeha:2, parallelups[aux]38:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), son(Alter, E), elder(Alter, Ego).
;; 5
%lakjeha:2, parallelups[aux]38:1, parents:0, parallelups[aux]38:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), son(Alter, H), elder(Alter, Ego).
;; 6
%lakjeha:2, parallelups[aux]38:1, parents:0, parallelups[aux]38:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), son(Alter, H), elder(Alter, Ego).
;; 7
%lakjeha:2, parallelups[aux]38:1, parents:1, parallelups[aux]38:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), son(Alter, H), elder(Alter, Ego).
;; 8
%lakjeha:2, parallelups[aux]38:1, parents:1, parallelups[aux]38:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext],  father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), son(Alter, H), elder(Alter, Ego).


legaah(Alter, Ego) :-  brother(Alter, Ego), younger(Alter, Ego).
                   |  [ext],  step_sister(Alter, Ego), younger(Alter, Ego).
                   |  [ext],  parallelups[aux]38(A, Ego), son(Alter, A), younger(Alter, Ego).
{"Bro_FaBroSo_FaFaBroSoSo_FaMoSisSoSo_MoFaBroDaSo_MoMoSisDaSo_MoSisSo_Stsis"}
;; 0
%legaah:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).
;; 1
%legaah:1, step_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
[ext],  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C), younger(Alter, Ego).
;; 2
%legaah:1, step_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
[ext],  father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C), younger(Alter, Ego).
;; 3
%legaah:2, parallelups[aux]38:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), son(Alter, E), younger(Alter, Ego).
;; 4
%legaah:2, parallelups[aux]38:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), son(Alter, E), younger(Alter, Ego).
;; 5
%legaah:2, parallelups[aux]38:1, parents:0, parallelups[aux]38:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), son(Alter, H), younger(Alter, Ego).
;; 6
%legaah:2, parallelups[aux]38:1, parents:0, parallelups[aux]38:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), son(Alter, H), younger(Alter, Ego).
;; 7
%legaah:2, parallelups[aux]38:1, parents:1, parallelups[aux]38:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), son(Alter, H), younger(Alter, Ego).
;; 8
%legaah:2, parallelups[aux]38:1, parents:1, parallelups[aux]38:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext],  father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), son(Alter, H), younger(Alter, Ego).


leno(Alter, Ego) :-  step_son(Alter, Ego).
{"Stso"}
;; 0
%leno:0, step_son:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stso}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(Alter, B), son(Alter, A).


leyadlaah(Alter, Ego) :-  gen_dn[aux]38(A, Ego), son(Alter, A).
                      |  [ext],  gen[aux]38(A, Ego), gen_dn[aux]38(B, A), son(Alter, B).
{"BroDaDaSo_BroDaSo_BroDaSoSo_BroSoDaSo_BroSoSo_BroSoSoSo_DaDaSo_DaSo_DaSoSo_FaBroDaDaDaSo_FaBroDaDaSo_FaBroDaDaSoSo_FaBroDaSoDaSo_FaBroDaSoSo_FaBroDaSoSoSo_FaBroSoDaDaSo_FaBroSoDaSo_FaBroSoDaSoSo_FaBroSoSoDaSo_FaBroSoSoSo_FaBroSoSoSoSo_FaFaBroDaDaDaSo_FaFaBroDaDaSoSo_FaFaBroDaSoDaSo_FaFaBroDaSoSoSo_FaFaBroSoDaDaSo_FaFaBroSoDaSoSo_FaFaBroSoSoDaSo_FaFaBroSoSoSoSo_FaFaSisDaDaDaSo_FaFaSisDaDaSoSo_FaFaSisDaSoDaSo_FaFaSisDaSoSoSo_FaFaSisSoDaDaSo_FaFaSisSoDaSoSo_FaFaSisSoSoDaSo_FaFaSisSoSoSoSo_FaMoBroDaDaDaSo_FaMoBroDaDaSoSo_FaMoBroDaSoDaSo_FaMoBroDaSoSoSo_FaMoBroSoDaDaSo_FaMoBroSoDaSoSo_FaMoBroSoSoDaSo_FaMoBroSoSoSoSo_FaMoSisDaDaDaSo_FaMoSisDaDaSoSo_FaMoSisDaSoDaSo_FaMoSisDaSoSoSo_FaMoSisSoDaDaSo_FaMoSisSoDaSoSo_FaMoSisSoSoDaSo_FaMoSisSoSoSoSo_FaSisDaDaDaSo_FaSisDaDaSo_FaSisDaDaSoSo_FaSisDaSoDaSo_FaSisDaSoSo_FaSisDaSoSoSo_FaSisSoDaDaSo_FaSisSoDaSo_FaSisSoDaSoSo_FaSisSoSoDaSo_FaSisSoSoSo_FaSisSoSoSoSo_MoBroDaDaDaSo_MoBroDaDaSo_MoBroDaDaSoSo_MoBroDaSoDaSo_MoBroDaSoSo_MoBroDaSoSoSo_MoBroSoDaDaSo_MoBroSoDaSo_MoBroSoDaSoSo_MoBroSoSoDaSo_MoBroSoSoSo_MoBroSoSoSoSo_MoFaBroDaDaDaSo_MoFaBroDaDaSoSo_MoFaBroDaSoDaSo_MoFaBroDaSoSoSo_MoFaBroSoDaDaSo_MoFaBroSoDaSoSo_MoFaBroSoSoDaSo_MoFaBroSoSoSoSo_MoFaSisDaDaDaSo_MoFaSisDaDaSoSo_MoFaSisDaSoDaSo_MoFaSisDaSoSoSo_MoFaSisSoDaDaSo_MoFaSisSoDaSoSo_MoFaSisSoSoDaSo_MoFaSisSoSoSoSo_MoMoBroDaDaDaSo_MoMoBroDaDaSoSo_MoMoBroDaSoDaSo_MoMoBroDaSoSoSo_MoMoBroSoDaDaSo_MoMoBroSoDaSoSo_MoMoBroSoSoDaSo_MoMoBroSoSoSoSo_MoMoSisDaDaDaSo_MoMoSisDaDaSoSo_MoMoSisDaSoDaSo_MoMoSisDaSoSoSo_MoMoSisSoDaDaSo_MoMoSisSoDaSoSo_MoMoSisSoSoDaSo_MoMoSisSoSoSoSo_MoSisDaDaDaSo_MoSisDaDaSo_MoSisDaDaSoSo_MoSisDaSoDaSo_MoSisDaSoSo_MoSisDaSoSoSo_MoSisSoDaDaSo_MoSisSoDaSo_MoSisSoDaSoSo_MoSisSoSoDaSo_MoSisSoSoSo_MoSisSoSoSoSo_SisDaDaSo_SisDaSo_SisDaSoSo_SisSoDaSo_SisSoSo_SisSoSoSo_SoDaSo_SoSo_SoSoSo"}
;; 0
%leyadlaah:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).
;; 1
%leyadlaah:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).
;; 2
%leyadlaah:0, gen_dn[aux]38:1, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
 son(A, Ego), son(B, A), son(Alter, B).
;; 3
%leyadlaah:0, gen_dn[aux]38:1, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
 son(A, Ego), daughter(B, A), son(Alter, B).
;; 4
%leyadlaah:0, gen_dn[aux]38:1, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
 daughter(A, Ego), son(B, A), son(Alter, B).
;; 5
%leyadlaah:0, gen_dn[aux]38:1, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
 daughter(A, Ego), daughter(B, A), son(Alter, B).
;; 6
%leyadlaah:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(Alter, D).
;; 7
%leyadlaah:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(Alter, D).
;; 8
%leyadlaah:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, gen_dn[aux]38:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), son(Alter, E).
;; 9
%leyadlaah:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, gen_dn[aux]38:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), son(Alter, E).
;; 10
%leyadlaah:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, gen_dn[aux]38:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), son(Alter, E).
;; 11
%leyadlaah:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, gen_dn[aux]38:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 12
%leyadlaah:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(Alter, D).
;; 13
%leyadlaah:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(Alter, D).
;; 14
%leyadlaah:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, gen_dn[aux]38:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), son(Alter, E).
;; 15
%leyadlaah:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, gen_dn[aux]38:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), son(Alter, E).
;; 16
%leyadlaah:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, gen_dn[aux]38:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), son(Alter, E).
;; 17
%leyadlaah:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, gen_dn[aux]38:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 18
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 19
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 20
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]38:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 21
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]38:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 22
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]38:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 23
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]38:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 24
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 25
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 26
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]38:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 27
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]38:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 28
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]38:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 29
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]38:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 30
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 31
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 32
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]38:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 33
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]38:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 34
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]38:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 35
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]38:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 36
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 37
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 38
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]38:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 39
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]38:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 40
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]38:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 41
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]38:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 42
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 43
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 44
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 45
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 46
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 47
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 48
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 49
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 50
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 51
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 52
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 53
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 54
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 55
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 56
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 57
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 58
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 59
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 60
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 61
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 62
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 63
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 64
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 65
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 66
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 67
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 68
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 69
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 70
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 71
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 72
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 73
%leyadlaah:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 74
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 75
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 76
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]38:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 77
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]38:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 78
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]38:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 79
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]38:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 80
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 81
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 82
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]38:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 83
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]38:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 84
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]38:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 85
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]38:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 86
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 87
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 88
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]38:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 89
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]38:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 90
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]38:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 91
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]38:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 92
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 93
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 94
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]38:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 95
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]38:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 96
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]38:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 97
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]38:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 98
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 99
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 100
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 101
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 102
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 103
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 104
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 105
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 106
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 107
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 108
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 109
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 110
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 111
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 112
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 113
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 114
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 115
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 116
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 117
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 118
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 119
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 120
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 121
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 122
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 123
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 124
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 125
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 126
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 127
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 128
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 129
%leyadlaah:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]38:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).


leyaha(Alter, Ego) :-  son(Alter, Ego).
                   |   male(Ego), gen[aux]38n1(A, Ego), male(A), son(Alter, A).
                   |   female(Ego), gen[aux]38(A, Ego), son(Alter, A).
{"BroSo_FaBroDaSo_FaBroSoSo_FaFaBroDaDaSo_FaFaBroDaSoSo_FaFaBroSoDaSo_FaFaBroSoSoSo_FaFaFaBroDaDaSoSo_FaFaFaBroDaSoSoSo_FaFaFaBroSoDaSoSo_FaFaFaBroSoSoSoSo_FaFaFaSisDaDaSoSo_FaFaFaSisDaSoSoSo_FaFaFaSisSoDaSoSo_FaFaFaSisSoSoSoSo_FaFaMoBroDaDaSoSo_FaFaMoBroDaSoSoSo_FaFaMoBroSoDaSoSo_FaFaMoBroSoSoSoSo_FaFaMoSisDaDaSoSo_FaFaMoSisDaSoSoSo_FaFaMoSisSoDaSoSo_FaFaMoSisSoSoSoSo_FaFaSisDaDaSo_FaFaSisDaSoSo_FaFaSisSoDaSo_FaFaSisSoSoSo_FaMoBroDaDaSo_FaMoBroDaSoSo_FaMoBroSoDaSo_FaMoBroSoSoSo_FaMoFaBroDaDaSoSo_FaMoFaBroDaSoSoSo_FaMoFaBroSoDaSoSo_FaMoFaBroSoSoSoSo_FaMoFaSisDaDaSoSo_FaMoFaSisDaSoSoSo_FaMoFaSisSoDaSoSo_FaMoFaSisSoSoSoSo_FaMoMoBroDaDaSoSo_FaMoMoBroDaSoSoSo_FaMoMoBroSoDaSoSo_FaMoMoBroSoSoSoSo_FaMoMoSisDaDaSoSo_FaMoMoSisDaSoSoSo_FaMoMoSisSoDaSoSo_FaMoMoSisSoSoSoSo_FaMoSisDaDaSo_FaMoSisDaSoSo_FaMoSisSoDaSo_FaMoSisSoSoSo_FaSisDaSo_FaSisSoSo_MoBroDaSo_MoBroSoSo_MoFaBroDaDaSo_MoFaBroDaSoSo_MoFaBroSoDaSo_MoFaBroSoSoSo_MoFaFaBroDaDaSoSo_MoFaFaBroDaSoSoSo_MoFaFaBroSoDaSoSo_MoFaFaBroSoSoSoSo_MoFaFaSisDaDaSoSo_MoFaFaSisDaSoSoSo_MoFaFaSisSoDaSoSo_MoFaFaSisSoSoSoSo_MoFaMoBroDaDaSoSo_MoFaMoBroDaSoSoSo_MoFaMoBroSoDaSoSo_MoFaMoBroSoSoSoSo_MoFaMoSisDaDaSoSo_MoFaMoSisDaSoSoSo_MoFaMoSisSoDaSoSo_MoFaMoSisSoSoSoSo_MoFaSisDaDaSo_MoFaSisDaSoSo_MoFaSisSoDaSo_MoFaSisSoSoSo_MoMoBroDaDaSo_MoMoBroDaSoSo_MoMoBroSoDaSo_MoMoBroSoSoSo_MoMoFaBroDaDaSoSo_MoMoFaBroDaSoSoSo_MoMoFaBroSoDaSoSo_MoMoFaBroSoSoSoSo_MoMoFaSisDaDaSoSo_MoMoFaSisDaSoSoSo_MoMoFaSisSoDaSoSo_MoMoFaSisSoSoSoSo_MoMoMoBroDaDaSoSo_MoMoMoBroDaSoSoSo_MoMoMoBroSoDaSoSo_MoMoMoBroSoSoSoSo_MoMoMoSisDaDaSoSo_MoMoMoSisDaSoSoSo_MoMoMoSisSoDaSoSo_MoMoMoSisSoSoSoSo_MoMoSisDaDaSo_MoMoSisDaSoSo_MoMoSisSoDaSo_MoMoSisSoSoSo_MoSisDaSo_MoSisSoSo_SisSo_So"}
;; 0
%leyaha:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 1
%leyaha:1, gen[aux]38n1:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 2
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), male(E), son(Alter, E).
;; 3
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), male(E), son(Alter, E).
;; 4
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), male(G), son(Alter, G).
;; 5
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), male(G), son(Alter, G).
;; 6
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), male(G), son(Alter, G).
;; 7
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), male(G), son(Alter, G).
;; 8
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoSoSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 9
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 10
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaSoSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 11
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 12
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoSoSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 13
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 14
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaSoSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 15
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 16
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoSoSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 17
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 18
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaSoSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 19
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 20
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoSoSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 21
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 22
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaSoSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 23
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 24
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), male(G), son(Alter, G).
;; 25
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), male(G), son(Alter, G).
;; 26
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), male(G), son(Alter, G).
;; 27
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), male(G), son(Alter, G).
;; 28
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoSoSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 29
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 30
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaSoSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 31
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 32
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoSoSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 33
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 34
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSoSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 35
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 36
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoSoSoSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 37
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 38
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaSoSoSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 39
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 40
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoSoSoSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 41
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 42
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaSoSoSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 43
%leyaha:1, gen[aux]38n1:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 44
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), male(E), son(Alter, E).
;; 45
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), male(E), son(Alter, E).
;; 46
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), male(G), son(Alter, G).
;; 47
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), male(G), son(Alter, G).
;; 48
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), male(G), son(Alter, G).
;; 49
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), male(G), son(Alter, G).
;; 50
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoSoSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 51
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 52
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaSoSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 53
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 54
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoSoSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 55
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 56
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaSoSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 57
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 58
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoSoSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 59
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 60
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaSoSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 61
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 62
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoSoSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 63
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 64
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaSoSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 65
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 66
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), male(G), son(Alter, G).
;; 67
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), male(G), son(Alter, G).
;; 68
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), male(G), son(Alter, G).
;; 69
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), male(G), son(Alter, G).
;; 70
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoSoSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 71
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoDaSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 72
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaSoSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 73
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaDaSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 74
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoSoSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 75
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoDaSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 76
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaSoSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 77
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaDaSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 78
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoSoSoSo}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 79
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoDaSoSo}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 80
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaSoSoSo}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 81
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaDaSoSo}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 82
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoSoSoSo}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 83
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoDaSoSo}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 84
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaSoSoSo}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 85
%leyaha:1, gen[aux]38n1:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaDaSoSo}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 86
%leyaha:2, gen[aux]38:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 87
%leyaha:2, gen[aux]38:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 88
%leyaha:2, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 89
%leyaha:2, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 90
%leyaha:2, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 91
%leyaha:2, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 92
%leyaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 93
%leyaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 94
%leyaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 95
%leyaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 96
%leyaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 97
%leyaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 98
%leyaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 99
%leyaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 100
%leyaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 101
%leyaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 102
%leyaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 103
%leyaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 104
%leyaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 105
%leyaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 106
%leyaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 107
%leyaha:2, gen[aux]38:1, parents:0, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 108
%leyaha:2, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 109
%leyaha:2, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 110
%leyaha:2, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 111
%leyaha:2, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 112
%leyaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 113
%leyaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 114
%leyaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 115
%leyaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 116
%leyaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 117
%leyaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 118
%leyaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 119
%leyaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:0, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 120
%leyaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 121
%leyaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 122
%leyaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 123
%leyaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 124
%leyaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 125
%leyaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 126
%leyaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 127
%leyaha:2, gen[aux]38:1, parents:1, gen[aux]38:1, parents:1, gen[aux]38:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).


loksoteha(Alter, Ego) :-  gen_up[aux]38(A, Ego), father(Alter, A).
                      |  [ext],  gen_up[aux]38(A, Ego), parents(B, A), brother(Alter, B).
                      |  [ext],  parents(A, Ego), parents(B, A), parents(C, B), siblings(D, C), son(Alter, D).
{"FaFa_FaFaBro_FaFaFa_FaFaFaBro_FaFaFaBroSo_FaFaFaSisSo_FaFaMoBro_FaFaMoBroSo_FaFaMoSisSo_FaMoBro_FaMoFa_FaMoFaBro_FaMoFaBroSo_FaMoFaSisSo_FaMoMoBro_FaMoMoBroSo_FaMoMoSisSo_MoFa_MoFaBro_MoFaFa_MoFaFaBro_MoFaFaBroSo_MoFaFaSisSo_MoFaMoBro_MoFaMoBroSo_MoFaMoSisSo_MoMoBro_MoMoFa_MoMoFaBro_MoMoFaBroSo_MoMoFaSisSo_MoMoMoBro_MoMoMoBroSo_MoMoMoSisSo"}
;; 0
%loksoteha:0, gen_up[aux]38:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 1
%loksoteha:0, gen_up[aux]38:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).
;; 2
%loksoteha:0, gen_up[aux]38:1, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
 mother(A, Ego), mother(B, A), father(Alter, B).
;; 3
%loksoteha:0, gen_up[aux]38:1, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
 mother(A, Ego), father(B, A), father(Alter, B).
;; 4
%loksoteha:0, gen_up[aux]38:1, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
 father(A, Ego), mother(B, A), father(Alter, B).
;; 5
%loksoteha:0, gen_up[aux]38:1, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
 father(A, Ego), father(B, A), father(Alter, B).
;; 6
%loksoteha:1, gen_up[aux]38:0, parents:0, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 7
%loksoteha:1, gen_up[aux]38:0, parents:0, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 8
%loksoteha:1, gen_up[aux]38:0, parents:1, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 9
%loksoteha:1, gen_up[aux]38:0, parents:1, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 10
%loksoteha:1, gen_up[aux]38:1, parents:0, parents:0, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 11
%loksoteha:1, gen_up[aux]38:1, parents:0, parents:0, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaBro}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 12
%loksoteha:1, gen_up[aux]38:1, parents:0, parents:1, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 13
%loksoteha:1, gen_up[aux]38:1, parents:0, parents:1, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaBro}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 14
%loksoteha:1, gen_up[aux]38:1, parents:1, parents:0, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 15
%loksoteha:1, gen_up[aux]38:1, parents:1, parents:0, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaBro}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 16
%loksoteha:1, gen_up[aux]38:1, parents:1, parents:1, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 17
%loksoteha:1, gen_up[aux]38:1, parents:1, parents:1, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaBro}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 18
%loksoteha:2, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 19
%loksoteha:2, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 20
%loksoteha:2, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 21
%loksoteha:2, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 22
%loksoteha:2, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 23
%loksoteha:2, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 24
%loksoteha:2, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 25
%loksoteha:2, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 26
%loksoteha:2, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 27
%loksoteha:2, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 28
%loksoteha:2, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 29
%loksoteha:2, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 30
%loksoteha:2, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 31
%loksoteha:2, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 32
%loksoteha:2, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 33
%loksoteha:2, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).


ocnonesekwa(Alter, Ego) :-  mother(A, Ego), siblings(B, A), spouse(Alter, B).
                        |   step_mother(Alter, Ego).
{"MoBroWi_MoSisHu_Stmo"}
;; 0
%ocnonesekwa:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), spouse(Alter, D).
;; 1
%ocnonesekwa:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), spouse(Alter, D).
;; 2
%ocnonesekwa:1, step_mother:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stmo}  
 father(A, Ego), mother(B, Ego), wife(Alter, A), not(equal(Alter, B)).


parallelups[aux]38(Alter, Ego) :-  parents(A, Ego), gender(B, A), sibling(Alter, A), gender(B, Alter).
                               |   parents(A, Ego), gender(B, A), parallelups[aux]38(C, A), child(Alter, C), gender(B, Alter).
;; 0
%parallelups[aux]38:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(Alter, C), child(Alter, D), not(equal(Alter, A)), gender(B, Alter).
;; 1
%parallelups[aux]38:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(Alter, C), child(Alter, D), not(equal(Alter, A)), gender(B, Alter).
;; 2
%parallelups[aux]38:1, parents:0, parallelups[aux]38:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(Alter, G), gender(B, Alter).
;; 3
%parallelups[aux]38:1, parents:0, parallelups[aux]38:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(Alter, G), gender(B, Alter).
;; 4
%parallelups[aux]38:1, parents:1, parallelups[aux]38:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(Alter, G), gender(B, Alter).
;; 5
%parallelups[aux]38:1, parents:1, parallelups[aux]38:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(Alter, G), gender(B, Alter).


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


uhgeahleo(Alter, Ego) :-  mother(A, Ego), brother(B, A), daughter(C, B), husband(Alter, C).
{"MoBroDaHu"}
;; 0
%uhgeahleo:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E).


ungadeoha(Alter, Ego) :-  wife(A, Ego), brother(Alter, A).
{"WiBro"}
;; 0
%ungadeoha:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


ungalaseh(Alter, Ego) :-  crossups[aux]38(A, Ego), children(Alter, A).
{"FaFaSisDaDa_FaFaSisDaSo_FaMoBroDaDa_FaMoBroDaSo_FaSisDa_FaSisSo_MoBroDa_MoBroSo_MoFaSisSoDa_MoFaSisSoSo_MoMoBroSoDa_MoMoBroSoSo"}
;; 0
%ungalaseh:0, crossups[aux]38:0, parents:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(F, E), not(equal(B, F)), son(Alter, E).
;; 1
%ungalaseh:0, crossups[aux]38:0, parents:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(F, E), not(equal(B, F)), daughter(Alter, E).
;; 2
%ungalaseh:0, crossups[aux]38:0, parents:1, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(F, E), not(equal(B, F)), son(Alter, E).
;; 3
%ungalaseh:0, crossups[aux]38:0, parents:1, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(F, E), not(equal(B, F)), daughter(Alter, E).
;; 4
%ungalaseh:0, crossups[aux]38:1, parents:0, crossups[aux]38:0, parents:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
 mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, J), child(J, G), not(equal(B, I)), son(Alter, J).
;; 5
%ungalaseh:0, crossups[aux]38:1, parents:0, crossups[aux]38:0, parents:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
 mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, J), child(J, G), not(equal(B, I)), daughter(Alter, J).
;; 6
%ungalaseh:0, crossups[aux]38:1, parents:0, crossups[aux]38:0, parents:1, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
 mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, J), child(J, G), not(equal(B, I)), son(Alter, J).
;; 7
%ungalaseh:0, crossups[aux]38:1, parents:0, crossups[aux]38:0, parents:1, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
 mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, J), child(J, G), not(equal(B, I)), daughter(Alter, J).
;; 8
%ungalaseh:0, crossups[aux]38:1, parents:1, crossups[aux]38:0, parents:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
 father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, J), child(J, G), not(equal(B, I)), son(Alter, J).
;; 9
%ungalaseh:0, crossups[aux]38:1, parents:1, crossups[aux]38:0, parents:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, J), child(J, G), not(equal(B, I)), daughter(Alter, J).
;; 10
%ungalaseh:0, crossups[aux]38:1, parents:1, crossups[aux]38:0, parents:1, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
 father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, J), child(J, G), not(equal(B, I)), son(Alter, J).
;; 11
%ungalaseh:0, crossups[aux]38:1, parents:1, crossups[aux]38:0, parents:1, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
 father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, J), child(J, G), not(equal(B, I)), daughter(Alter, J).


ungaleaha(Alter, Ego) :-  husband(A, Ego), brother(Alter, A).
{"HuBro"}
;; 0
%ungaleaha:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


ungeahdeo(Alter, Ego) :-  male(Ego), sister(A, Ego), husband(Alter, A).
                      |   male(Ego), father(A, Ego), siblings(B, A), daughter(C, B), husband(Alter, C).
                      |   male(Ego), mother(A, Ego), sister(B, A), daughter(C, B), husband(Alter, C).
{"FaBroDaHu_FaSisDaHu_MoSisDaHu_SisHu"}
;; 0
%ungeahdeo:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).
;; 1
%ungeahdeo:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E).
;; 2
%ungeahdeo:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E).
;; 3
%ungeahdeo:2, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E).


ungeahlea(Alter, Ego) :-  spice(A, Ego), sister(Alter, A).
                      |   brother(A, Ego), wife(Alter, A).
                      |   parents(A, Ego), siblings(B, A), son(C, B), wife(Alter, C).
{"BroWi_FaBroSoWi_FaSisSoWi_HuSis_MoBroSoWi_MoSisSoWi_WiSis"}
;; 0
%ungeahlea:0, spice:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%ungeahlea:0, spice:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%ungeahlea:1, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C).
;; 3
%ungeahlea:2, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), wife(Alter, E).
;; 4
%ungeahlea:2, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), wife(Alter, E).
;; 5
%ungeahlea:2, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), wife(Alter, E).
;; 6
%ungeahlea:2, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), wife(Alter, E).


ungeahleo(Alter, Ego) :-  female(Ego), sister(A, Ego), husband(Alter, A).
                      |   female(Ego), father(A, Ego), siblings(B, A), daughter(C, B), husband(Alter, C).
                      |   female(Ego), mother(A, Ego), sister(B, A), daughter(C, B), husband(Alter, C).
{"FaBroDaHu_FaSisDaHu_MoSisDaHu_SisHu"}
;; 0
%ungeahleo:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).
;; 1
%ungeahleo:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E).
;; 2
%ungeahleo:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E).
;; 3
%ungeahleo:2, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E).


ungwalehoseha(Alter, Ego) :-  spice(A, Ego), mother(Alter, A).
                          |   spice(A, Ego), parents(B, A), mother(Alter, B).
{"HuFaMo_HuMo_HuMoMo_WiFaMo_WiMo_WiMoMo"}
;; 0
%ungwalehoseha:0, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 1
%ungwalehoseha:0, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).
;; 2
%ungwalehoseha:1, spice:0, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoMo}  
 husband(A, Ego), mother(B, A), mother(Alter, B).
;; 3
%ungwalehoseha:1, spice:0, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaMo}  
 husband(A, Ego), father(B, A), mother(Alter, B).
;; 4
%ungwalehoseha:1, spice:1, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoMo}  
 wife(A, Ego), mother(B, A), mother(Alter, B).
;; 5
%ungwalehoseha:1, spice:1, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaMo}  
 wife(A, Ego), father(B, A), mother(Alter, B).

