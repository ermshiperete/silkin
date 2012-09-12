;;  Horn Clause Representation of Iroquois-7 Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Iroquois-7") (author, "L. H. Morgan") (date, "1871-01-01") (citation, "Lewis H. Morgan SYSTEMS OF CONSANGUINITY AND AFFINITY OF THE HUMAN FAMILY, 1871 (reprint 1997), University of Nebraska Press, Lincoln") 
(non_term, [aux], [eq], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, false) (address, false) (recursiveLevels, 2)
(overlaps, (akjeya, (kagaah)), (kagaah, (akjeya)), (legaah, (lokjeha)), (lokjeha, (legaah)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

ahganesetaha(Alter, Ego) :-  mother(Alter, Ego).
                         |   father(A, Ego), sister(Alter, A).
                         |   mother(A, Ego), sister(Alter, A).
                         |   male(Ego), father(A, Ego), father(B, A), sister(C, B), daughter(Alter, C).
                         |   mother(A, Ego), mother(B, A), sister(C, B), daughter(Alter, C).
{"FaFaSisDa_FaSis_Mo_MoMoSisDa_MoSis"}
;; 0
%ahganesetaha:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).
;; 1
%ahganesetaha:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%ahganesetaha:2, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 3
%ahganesetaha:3, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 4
%ahganesetaha:4, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).


ahgohakwa(Alter, Ego) :-  male(Ego), brother(A, Ego), wife(Alter, A).
                      |   spice(A, Ego), sister(Alter, A).
                      |   parents(A, Ego), siblings(B, A), son(C, B), wife(Alter, C).
                      |   mother(A, Ego), brother(B, A), wife(Alter, B).
{"BroWi_FaBroSoWi_FaSisSoWi_HuSis_MoBroSoWi_MoBroWi_MoSisSoWi_WiSis"}
;; 0
%ahgohakwa:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C).
;; 1
%ahgohakwa:1, spice:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%ahgohakwa:1, spice:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 3
%ahgohakwa:2, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), wife(Alter, E).
;; 4
%ahgohakwa:2, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), wife(Alter, E).
;; 5
%ahgohakwa:2, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), wife(Alter, E).
;; 6
%ahgohakwa:2, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), wife(Alter, E).
;; 7
%ahgohakwa:3, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


ahsoteha(Alter, Ego) :-  gen_up[aux]22(A, Ego), mother(Alter, A).
                     |   gen_up[aux]22(A, Ego), parents(B, A), sister(Alter, B).
                     |   parents(A, Ego), parents(B, A), parents(C, B), sister(D, C), daughter(Alter, D).
                     |   wife(A, Ego), parents(B, A), mother(Alter, B).
{"FaFaFaSis_FaFaFaSisDa_FaFaMo_FaFaMoSis_FaFaMoSisDa_FaFaSis_FaMo_FaMoFaSis_FaMoFaSisDa_FaMoMo_FaMoMoSis_FaMoMoSisDa_FaMoSis_MoFaFaSis_MoFaFaSisDa_MoFaMo_MoFaMoSis_MoFaMoSisDa_MoFaSis_MoMo_MoMoFaSis_MoMoFaSisDa_MoMoMo_MoMoMoSis_MoMoMoSisDa_MoMoSis_WiFaMo_WiMoMo"}
;; 0
%ahsoteha:0, gen_up[aux]22:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 1
%ahsoteha:0, gen_up[aux]22:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).
;; 2
%ahsoteha:0, gen_up[aux]22:1, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
 mother(A, Ego), mother(B, A), mother(Alter, B).
;; 3
%ahsoteha:0, gen_up[aux]22:1, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
 mother(A, Ego), father(B, A), mother(Alter, B).
;; 4
%ahsoteha:0, gen_up[aux]22:1, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
 father(A, Ego), mother(B, A), mother(Alter, B).
;; 5
%ahsoteha:0, gen_up[aux]22:1, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
 father(A, Ego), father(B, A), mother(Alter, B).
;; 6
%ahsoteha:1, gen_up[aux]22:0, parents:0, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 7
%ahsoteha:1, gen_up[aux]22:0, parents:0, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 8
%ahsoteha:1, gen_up[aux]22:0, parents:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 9
%ahsoteha:1, gen_up[aux]22:0, parents:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 10
%ahsoteha:1, gen_up[aux]22:1, parents:0, parents:0, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 11
%ahsoteha:1, gen_up[aux]22:1, parents:0, parents:0, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaSis}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 12
%ahsoteha:1, gen_up[aux]22:1, parents:0, parents:1, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoSis}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 13
%ahsoteha:1, gen_up[aux]22:1, parents:0, parents:1, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaSis}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 14
%ahsoteha:1, gen_up[aux]22:1, parents:1, parents:0, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 15
%ahsoteha:1, gen_up[aux]22:1, parents:1, parents:0, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaSis}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 16
%ahsoteha:1, gen_up[aux]22:1, parents:1, parents:1, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoSis}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 17
%ahsoteha:1, gen_up[aux]22:1, parents:1, parents:1, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaSis}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 18
%ahsoteha:2, parents:0, parents:0, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 19
%ahsoteha:2, parents:0, parents:0, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 20
%ahsoteha:2, parents:0, parents:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 21
%ahsoteha:2, parents:0, parents:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 22
%ahsoteha:2, parents:1, parents:0, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 23
%ahsoteha:2, parents:1, parents:0, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 24
%ahsoteha:2, parents:1, parents:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 25
%ahsoteha:2, parents:1, parents:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 26
%ahsoteha:3, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoMo}  
 wife(A, Ego), mother(B, A), mother(Alter, B).
;; 27
%ahsoteha:3, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaMo}  
 wife(A, Ego), father(B, A), mother(Alter, B).


akjeya(Alter, Ego) :-  gen[aux]22nnf(Alter, Ego), elder(Alter, Ego).
                   |   female(Ego), mother(A, Ego), gen[aux]22ff(B, A), daughter(Alter, B), elder(Alter, Ego).
                   |   female(Ego), mother(A, Ego), mother(B, A), brother(C, B), son(D, C), daughter(Alter, D), elder(Alter, Ego).
                   |   step_sister(Alter, Ego), elder(Alter, Ego).
{"FaBroDa_FaFaBroDaDa_FaFaSisDaDa_FaMoBroDaDa_FaMoSisDaDa_FaSisDa_MoBroDa_MoFaBroDaDa_MoFaSisDaDa_MoMoBroDaDa_MoMoBroSoDa_MoMoMoSisDaDaDa_MoMoSisDaDa_MoSisDa_Sis_Stsis"}
;; 0
%akjeya:0, gen[aux]22nnf:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).
;; 1
%akjeya:0, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D), elder(Alter, Ego).
;; 2
%akjeya:0, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), elder(Alter, Ego).
;; 3
%akjeya:0, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 4
%akjeya:0, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 5
%akjeya:0, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 6
%akjeya:0, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 7
%akjeya:0, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D), elder(Alter, Ego).
;; 8
%akjeya:0, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), elder(Alter, Ego).
;; 9
%akjeya:0, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 10
%akjeya:0, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 11
%akjeya:0, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 12
%akjeya:0, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 13
%akjeya:1, gen[aux]22ff:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), elder(Alter, Ego).
;; 14
%akjeya:1, gen[aux]22ff:1, gen[aux]22ff:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 15
%akjeya:1, gen[aux]22ff:1, gen[aux]22ff:1, gen[aux]22ff:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(Alter, H), elder(Alter, Ego).
;; 16
%akjeya:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 17
%akjeya:3, step_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C), elder(Alter, Ego).
;; 18
%akjeya:3, step_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C), elder(Alter, Ego).


aknonesekwa(Alter, Ego) :-  step_mother(Alter, Ego).
{"Stmo"}
;; 0
%aknonesekwa:0, step_mother:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stmo}  
 father(A, Ego), mother(B, Ego), wife(Alter, A), not(equal(Alter, B)).


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


dayaganetaro(Alter, Ego) :-  husband(Alter, Ego).
                         |   wife(Alter, Ego).
{"Hu_Wi"}
;; 0
%dayaganetaro:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).
;; 1
%dayaganetaro:1%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


deanhoseha(Alter, Ego) :-  siblings(A, Ego), daughter(B, A), husband(Alter, B).
{"BroDaHu_SisDaHu"}
;; 0
%deanhoseha:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), husband(Alter, D).
;; 1
%deanhoseha:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), husband(Alter, D).


gen[aux]22(Alter, Ego) :-  siblings(Alter, Ego).
                       |   parents(A, Ego), gen[aux]22(B, A), children(Alter, B).
;; 0
%gen[aux]22:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%gen[aux]22:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 7
%gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 8
%gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 9
%gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 10
%gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 11
%gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 12
%gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 13
%gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 14
%gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 15
%gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 16
%gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 17
%gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 18
%gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 19
%gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 20
%gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 21
%gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 22
%gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 23
%gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 24
%gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 25
%gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 26
%gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 27
%gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 28
%gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 29
%gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 30
%gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 31
%gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 32
%gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 33
%gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 34
%gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 35
%gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 36
%gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 37
%gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 38
%gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 39
%gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 40
%gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 41
%gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).


gen[aux]22ff(Alter, Ego) :-  sister(Alter, Ego).
                         |   mother(A, Ego), gen[aux]22ff(B, A), daughter(Alter, B).
;; 0
%gen[aux]22ff:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%gen[aux]22ff:1, gen[aux]22ff:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 2
%gen[aux]22ff:1, gen[aux]22ff:1, gen[aux]22ff:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).


gen[aux]22fm(Alter, Ego) :-  brother(Alter, Ego).
                         |   mother(A, Ego), gen[aux]22fm(B, A), son(Alter, B).
;; 0
%gen[aux]22fm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%gen[aux]22fm:1, gen[aux]22fm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%gen[aux]22fm:1, gen[aux]22fm:1, gen[aux]22fm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).


gen[aux]22mf(Alter, Ego) :-  sister(Alter, Ego).
                         |   father(A, Ego), gen[aux]22mf(B, A), daughter(Alter, B).
;; 0
%gen[aux]22mf:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%gen[aux]22mf:1, gen[aux]22mf:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 2
%gen[aux]22mf:1, gen[aux]22mf:1, gen[aux]22mf:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).


gen[aux]22mm(Alter, Ego) :-  brother(Alter, Ego).
                         |   father(A, Ego), gen[aux]22mm(B, A), son(Alter, B).
;; 0
%gen[aux]22mm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%gen[aux]22mm:1, gen[aux]22mm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%gen[aux]22mm:1, gen[aux]22mm:1, gen[aux]22mm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).


gen[aux]22nf(Alter, Ego) :-  sister(Alter, Ego).
                         |   parents(A, Ego), gen[aux]22nf(B, A), daughter(Alter, B).
;; 0
%gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%gen[aux]22nf:1, parents:0, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 2
%gen[aux]22nf:1, parents:0, gen[aux]22nf:1, parents:0, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 3
%gen[aux]22nf:1, parents:0, gen[aux]22nf:1, parents:1, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 4
%gen[aux]22nf:1, parents:1, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 5
%gen[aux]22nf:1, parents:1, gen[aux]22nf:1, parents:0, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 6
%gen[aux]22nf:1, parents:1, gen[aux]22nf:1, parents:1, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).


gen[aux]22nm(Alter, Ego) :-  brother(Alter, Ego).
                         |   parents(A, Ego), gen[aux]22nm(B, A), son(Alter, B).
;; 0
%gen[aux]22nm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%gen[aux]22nm:1, parents:0, gen[aux]22nm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%gen[aux]22nm:1, parents:0, gen[aux]22nm:1, parents:0, gen[aux]22nm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 3
%gen[aux]22nm:1, parents:0, gen[aux]22nm:1, parents:1, gen[aux]22nm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 4
%gen[aux]22nm:1, parents:1, gen[aux]22nm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 5
%gen[aux]22nm:1, parents:1, gen[aux]22nm:1, parents:0, gen[aux]22nm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 6
%gen[aux]22nm:1, parents:1, gen[aux]22nm:1, parents:1, gen[aux]22nm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).


gen[aux]22nnf(Alter, Ego) :-  sister(Alter, Ego).
                          |   parents(A, Ego), gen[aux]22nnf2(B, A), daughter(Alter, B).
;; 0
%gen[aux]22nnf:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 2
%gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 3
%gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 4
%gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 5
%gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 6
%gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 7
%gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 8
%gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 9
%gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 10
%gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 11
%gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 12
%gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 13
%gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 14
%gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 15
%gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 16
%gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 17
%gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 18
%gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 19
%gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 20
%gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 21
%gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 22
%gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 23
%gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 24
%gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 25
%gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 26
%gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 27
%gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 28
%gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(Alter, H).


gen[aux]22nnf2(Alter, Ego) :-  siblings(Alter, Ego).
                           |   parents(A, Ego), gen[aux]22nnf2(B, A), daughter(Alter, B).
;; 0
%gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 3
%gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 4
%gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 5
%gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 6
%gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 7
%gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 8
%gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 9
%gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 10
%gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 11
%gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 12
%gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 13
%gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).


gen[aux]22nnm(Alter, Ego) :-  brother(Alter, Ego).
                          |   parents(A, Ego), gen[aux]22nnm2(B, A), son(Alter, B).
;; 0
%gen[aux]22nnm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 3
%gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 4
%gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 5
%gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 6
%gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 7
%gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 8
%gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 9
%gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 10
%gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 11
%gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 12
%gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 13
%gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 14
%gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 15
%gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 16
%gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 17
%gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 18
%gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 19
%gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 20
%gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 21
%gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 22
%gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 23
%gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 24
%gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 25
%gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 26
%gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 27
%gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 28
%gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).


gen[aux]22nnm2(Alter, Ego) :-  siblings(Alter, Ego).
                           |   parents(A, Ego), gen[aux]22nnm2(B, A), son(Alter, B).
;; 0
%gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 4
%gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 5
%gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 6
%gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 7
%gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 8
%gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 9
%gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 10
%gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 11
%gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 12
%gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 13
%gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).


gen_dn[aux]22(Alter, Ego) :-  children(Alter, Ego).
                          |   children(A, Ego), children(Alter, A).
;; 0
%gen_dn[aux]22:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Alter, Ego).
;; 1
%gen_dn[aux]22:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Alter, Ego).
;; 2
%gen_dn[aux]22:1, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), son(Alter, A).
;; 3
%gen_dn[aux]22:1, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), daughter(Alter, A).
;; 4
%gen_dn[aux]22:1, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), son(Alter, A).
;; 5
%gen_dn[aux]22:1, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), daughter(Alter, A).


gen_up[aux]22(Alter, Ego) :-  parents(Alter, Ego).
                          |   parents(A, Ego), parents(Alter, A).
;; 0
%gen_up[aux]22:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(Alter, Ego).
;; 1
%gen_up[aux]22:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(Alter, Ego).
;; 2
%gen_up[aux]22:1, parents:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(Alter, A).
;; 3
%gen_up[aux]22:1, parents:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(Alter, A).
;; 4
%gen_up[aux]22:1, parents:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(Alter, A).
;; 5
%gen_up[aux]22:1, parents:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(Alter, A).


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


kagaah(Alter, Ego) :-  gen[aux]22nnf(Alter, Ego), younger(Alter, Ego).
                   |   female(Ego), mother(A, Ego), gen[aux]22ff(B, A), daughter(Alter, B), younger(Alter, Ego).
                   |   female(Ego), mother(A, Ego), mother(B, A), brother(C, B), son(D, C), daughter(Alter, D), younger(Alter, Ego).
                   |   step_sister(Alter, Ego), younger(Alter, Ego).
{"FaBroDa_FaFaBroDaDa_FaFaSisDaDa_FaMoBroDaDa_FaMoSisDaDa_FaSisDa_MoBroDa_MoFaBroDaDa_MoFaSisDaDa_MoMoBroDaDa_MoMoBroSoDa_MoMoMoSisDaDaDa_MoMoSisDaDa_MoSisDa_Sis_Stsis"}
;; 0
%kagaah:0, gen[aux]22nnf:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).
;; 1
%kagaah:0, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D), younger(Alter, Ego).
;; 2
%kagaah:0, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), younger(Alter, Ego).
;; 3
%kagaah:0, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 4
%kagaah:0, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 5
%kagaah:0, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 6
%kagaah:0, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 7
%kagaah:0, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D), younger(Alter, Ego).
;; 8
%kagaah:0, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), younger(Alter, Ego).
;; 9
%kagaah:0, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 10
%kagaah:0, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 11
%kagaah:0, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 12
%kagaah:0, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 13
%kagaah:1, gen[aux]22ff:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), younger(Alter, Ego).
;; 14
%kagaah:1, gen[aux]22ff:1, gen[aux]22ff:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 15
%kagaah:1, gen[aux]22ff:1, gen[aux]22ff:1, gen[aux]22ff:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(Alter, H), younger(Alter, Ego).
;; 16
%kagaah:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 17
%kagaah:3, step_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C), younger(Alter, Ego).
;; 18
%kagaah:3, step_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C), younger(Alter, Ego).


kano(Alter, Ego) :-  step_daughter(Alter, Ego).
{"Stda"}
;; 0
%kano:0, step_daughter:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stda}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(Alter, B), daughter(Alter, A).


kasawa(Alter, Ego) :-  son(A, Ego), wife(Alter, A).
                   |   siblings(A, Ego), son(B, A), wife(Alter, B).
{"BroSoWi_SisSoWi_SoWi"}
;; 0
%kasawa:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 son(A, Ego), wife(Alter, A).
;; 1
%kasawa:1, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroSoWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), wife(Alter, D).
;; 2
%kasawa:1, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), wife(Alter, D).


kawadaah(Alter, Ego) :-  male(Ego), sister(A, Ego), daughter(Alter, A).
                     |   male(Ego), parents(A, Ego), siblings(B, A), daughter(C, B), daughter(Alter, C).
                     |   male(Ego), parents(A, Ego), gen[aux]22nf(B, A), daughter(C, B), daughter(Alter, C).
{"FaBroDaDa_FaFaFaSisDaDaDaDa_FaFaMoSisDaDaDaDa_FaFaSisDaDaDa_FaMoFaSisDaDaDaDa_FaMoMoSisDaDaDaDa_FaMoSisDaDaDa_FaSisDaDa_MoBroDaDa_MoFaFaSisDaDaDaDa_MoFaMoSisDaDaDaDa_MoFaSisDaDaDa_MoMoFaSisDaDaDaDa_MoMoMoSisDaDaDaDa_MoMoSisDaDaDa_MoSisDaDa_SisDa"}
;; 0
%kawadaah:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 1
%kawadaah:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 2
%kawadaah:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 3
%kawadaah:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 4
%kawadaah:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 5
%kawadaah:2, parents:0, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 6
%kawadaah:2, parents:0, gen[aux]22nf:1, parents:0, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 7
%kawadaah:2, parents:0, gen[aux]22nf:1, parents:0, gen[aux]22nf:1, parents:0, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 8
%kawadaah:2, parents:0, gen[aux]22nf:1, parents:0, gen[aux]22nf:1, parents:1, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 9
%kawadaah:2, parents:0, gen[aux]22nf:1, parents:1, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 10
%kawadaah:2, parents:0, gen[aux]22nf:1, parents:1, gen[aux]22nf:1, parents:0, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 11
%kawadaah:2, parents:0, gen[aux]22nf:1, parents:1, gen[aux]22nf:1, parents:1, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 12
%kawadaah:2, parents:1, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 13
%kawadaah:2, parents:1, gen[aux]22nf:1, parents:0, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 14
%kawadaah:2, parents:1, gen[aux]22nf:1, parents:0, gen[aux]22nf:1, parents:0, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 15
%kawadaah:2, parents:1, gen[aux]22nf:1, parents:0, gen[aux]22nf:1, parents:1, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 16
%kawadaah:2, parents:1, gen[aux]22nf:1, parents:1, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 17
%kawadaah:2, parents:1, gen[aux]22nf:1, parents:1, gen[aux]22nf:1, parents:0, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 18
%kawadaah:2, parents:1, gen[aux]22nf:1, parents:1, gen[aux]22nf:1, parents:1, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).


kayaah(Alter, Ego) :-  brother(A, Ego), daughter(Alter, A).
                   |   female(Ego), sister(A, Ego), daughter(Alter, A).
                   |   father(A, Ego), brother(B, A), son(C, B), daughter(Alter, C).
                   |   female(Ego), father(A, Ego), brother(B, A), daughter(C, B), daughter(Alter, C).
                   |   female(Ego), father(A, Ego), sister(B, A), son(C, B), daughter(Alter, C).
                   |   female(Ego), mother(A, Ego), mother(B, A), sister(C, B), daughter(D, C), daughter(E, D), daughter(Alter, E).
                   |   male(Ego), mother(A, Ego), siblings(B, A), son(C, B), daughter(Alter, C).
{"BroDa_FaBroDaDa_FaBroSoDa_FaSisSoDa_MoBroSoDa_MoMoSisDaDaDa_MoSisSoDa_SisDa"}
;; 0
%kayaah:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 1
%kayaah:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 2
%kayaah:2, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 3
%kayaah:3, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 4
%kayaah:4, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 5
%kayaah:5, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 6
%kayaah:6, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 7
%kayaah:6, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).


kayaha(Alter, Ego) :-  daughter(Alter, Ego).
                   |   male(Ego), father(A, Ego), sister(B, A), son(C, B), daughter(Alter, C).
                   |   parents(A, Ego), parents(B, A), brother(C, B), son(D, C), son(E, D), daughter(Alter, E).
                   |   female(Ego), father(A, Ego), sister(B, A), daughter(C, B), daughter(Alter, C).
                   |   female(Ego), mother(A, Ego), siblings(B, A), children(C, B), daughter(Alter, C).
                   |   female(Ego), father(A, Ego), father(B, A), sister(C, B), daughter(D, C), daughter(E, D), daughter(Alter, E).
{"Da_FaFaBroSoSoDa_FaFaSisDaDaDa_FaMoBroSoSoDa_FaSisDaDa_FaSisSoDa_MoBroDaDa_MoBroSoDa_MoFaBroSoSoDa_MoMoBroSoSoDa_MoSisDaDa_MoSisSoDa"}
;; 0
%kayaha:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).
;; 1
%kayaha:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 2
%kayaha:2, parents:0, parents:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 3
%kayaha:2, parents:0, parents:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 4
%kayaha:2, parents:1, parents:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 5
%kayaha:2, parents:1, parents:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 6
%kayaha:3, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 7
%kayaha:4, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 8
%kayaha:4, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 9
%kayaha:4, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 10
%kayaha:4, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 11
%kayaha:5, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).


kayataraya(Alter, Ego) :-  gen_dn[aux]22(A, Ego), daughter(Alter, A).
                       |   gen[aux]22(A, Ego), gen_dn[aux]22(B, A), daughter(Alter, B).
{"BroDaDa_BroDaDaDa_BroDaSoDa_BroSoDa_BroSoDaDa_BroSoSoDa_DaDa_DaDaDa_DaSoDa_FaBroDaDaDa_FaBroDaDaDaDa_FaBroDaDaSoDa_FaBroDaSoDa_FaBroDaSoDaDa_FaBroDaSoSoDa_FaBroSoDaDa_FaBroSoDaDaDa_FaBroSoDaSoDa_FaBroSoSoDa_FaBroSoSoDaDa_FaBroSoSoSoDa_FaFaBroDaDaDaDa_FaFaBroDaDaSoDa_FaFaBroDaSoDaDa_FaFaBroDaSoSoDa_FaFaBroSoDaDaDa_FaFaBroSoDaSoDa_FaFaBroSoSoDaDa_FaFaBroSoSoSoDa_FaFaSisDaDaDaDa_FaFaSisDaDaSoDa_FaFaSisDaSoDaDa_FaFaSisDaSoSoDa_FaFaSisSoDaDaDa_FaFaSisSoDaSoDa_FaFaSisSoSoDaDa_FaFaSisSoSoSoDa_FaMoBroDaDaDaDa_FaMoBroDaDaSoDa_FaMoBroDaSoDaDa_FaMoBroDaSoSoDa_FaMoBroSoDaDaDa_FaMoBroSoDaSoDa_FaMoBroSoSoDaDa_FaMoBroSoSoSoDa_FaMoSisDaDaDaDa_FaMoSisDaDaSoDa_FaMoSisDaSoDaDa_FaMoSisDaSoSoDa_FaMoSisSoDaDaDa_FaMoSisSoDaSoDa_FaMoSisSoSoDaDa_FaMoSisSoSoSoDa_FaSisDaDaDa_FaSisDaDaDaDa_FaSisDaDaSoDa_FaSisDaSoDa_FaSisDaSoDaDa_FaSisDaSoSoDa_FaSisSoDaDa_FaSisSoDaDaDa_FaSisSoDaSoDa_FaSisSoSoDa_FaSisSoSoDaDa_FaSisSoSoSoDa_MoBroDaDaDa_MoBroDaDaDaDa_MoBroDaDaSoDa_MoBroDaSoDa_MoBroDaSoDaDa_MoBroDaSoSoDa_MoBroSoDaDa_MoBroSoDaDaDa_MoBroSoDaSoDa_MoBroSoSoDa_MoBroSoSoDaDa_MoBroSoSoSoDa_MoFaBroDaDaDaDa_MoFaBroDaDaSoDa_MoFaBroDaSoDaDa_MoFaBroDaSoSoDa_MoFaBroSoDaDaDa_MoFaBroSoDaSoDa_MoFaBroSoSoDaDa_MoFaBroSoSoSoDa_MoFaSisDaDaDaDa_MoFaSisDaDaSoDa_MoFaSisDaSoDaDa_MoFaSisDaSoSoDa_MoFaSisSoDaDaDa_MoFaSisSoDaSoDa_MoFaSisSoSoDaDa_MoFaSisSoSoSoDa_MoMoBroDaDaDaDa_MoMoBroDaDaSoDa_MoMoBroDaSoDaDa_MoMoBroDaSoSoDa_MoMoBroSoDaDaDa_MoMoBroSoDaSoDa_MoMoBroSoSoDaDa_MoMoBroSoSoSoDa_MoMoSisDaDaDaDa_MoMoSisDaDaSoDa_MoMoSisDaSoDaDa_MoMoSisDaSoSoDa_MoMoSisSoDaDaDa_MoMoSisSoDaSoDa_MoMoSisSoSoDaDa_MoMoSisSoSoSoDa_MoSisDaDaDa_MoSisDaDaDaDa_MoSisDaDaSoDa_MoSisDaSoDa_MoSisDaSoDaDa_MoSisDaSoSoDa_MoSisSoDaDa_MoSisSoDaDaDa_MoSisSoDaSoDa_MoSisSoSoDa_MoSisSoSoDaDa_MoSisSoSoSoDa_SisDaDa_SisDaDaDa_SisDaSoDa_SisSoDa_SisSoDaDa_SisSoSoDa_SoDa_SoDaDa_SoSoDa"}
;; 0
%kayataraya:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).
;; 1
%kayataraya:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).
;; 2
%kayataraya:0, gen_dn[aux]22:1, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
 son(A, Ego), son(B, A), daughter(Alter, B).
;; 3
%kayataraya:0, gen_dn[aux]22:1, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
 son(A, Ego), daughter(B, A), daughter(Alter, B).
;; 4
%kayataraya:0, gen_dn[aux]22:1, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
 daughter(A, Ego), son(B, A), daughter(Alter, B).
;; 5
%kayataraya:0, gen_dn[aux]22:1, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
 daughter(A, Ego), daughter(B, A), daughter(Alter, B).
;; 6
%kayataraya:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(Alter, D).
;; 7
%kayataraya:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(Alter, D).
;; 8
%kayataraya:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, gen_dn[aux]22:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), daughter(Alter, E).
;; 9
%kayataraya:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, gen_dn[aux]22:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 10
%kayataraya:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, gen_dn[aux]22:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 11
%kayataraya:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, gen_dn[aux]22:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), daughter(Alter, E).
;; 12
%kayataraya:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(Alter, D).
;; 13
%kayataraya:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(Alter, D).
;; 14
%kayataraya:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, gen_dn[aux]22:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), daughter(Alter, E).
;; 15
%kayataraya:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, gen_dn[aux]22:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 16
%kayataraya:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, gen_dn[aux]22:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 17
%kayataraya:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, gen_dn[aux]22:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), daughter(Alter, E).
;; 18
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 19
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 20
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]22:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 21
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]22:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 22
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]22:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 23
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]22:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 24
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 25
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 26
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]22:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 27
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]22:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 28
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]22:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 29
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]22:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 30
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 31
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 32
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]22:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 33
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]22:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 34
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]22:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 35
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]22:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 36
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 37
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 38
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]22:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 39
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]22:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 40
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]22:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 41
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]22:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 42
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 43
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 44
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 45
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 46
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 47
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 48
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 49
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 50
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 51
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 52
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 53
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 54
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 55
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 56
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 57
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 58
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 59
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 60
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 61
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 62
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 63
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 64
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 65
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 66
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 67
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 68
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 69
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 70
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 71
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 72
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 73
%kayataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 74
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 75
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 76
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]22:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 77
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]22:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 78
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]22:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 79
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]22:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 80
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 81
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 82
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]22:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 83
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]22:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 84
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]22:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 85
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]22:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 86
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 87
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 88
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]22:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 89
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]22:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 90
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]22:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 91
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]22:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 92
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 93
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 94
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]22:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 95
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]22:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 96
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]22:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 97
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]22:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 98
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 99
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 100
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 101
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 102
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 103
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 104
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 105
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 106
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 107
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 108
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 109
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 110
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 111
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 112
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 113
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 114
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 115
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 116
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 117
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 118
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 119
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 120
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 121
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 122
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 123
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 124
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 125
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 126
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 127
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 128
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 129
%kayataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).


laganeha(Alter, Ego) :-  father(Alter, Ego).
                     |   father(A, Ego), gen[aux]22mm(Alter, A).
                     |   mother(A, Ego), sister(B, A), husband(Alter, B).
{"Fa_FaBro_FaFaBroSo_FaFaFaBroSoSo_MoSisHu"}
;; 0
%laganeha:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).
;; 1
%laganeha:1, gen[aux]22mm:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%laganeha:1, gen[aux]22mm:1, gen[aux]22mm:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 3
%laganeha:1, gen[aux]22mm:1, gen[aux]22mm:1, gen[aux]22mm:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 4
%laganeha:2, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).


laganesetaha(Alter, Ego) :-  parents(A, Ego), parents(B, A), parents(C, B), sister(D, C), daughter(E, D), daughter(Alter, E).
{"FaFaFaSisDaDa_FaFaMoSisDaDa_FaMoFaSisDaDa_FaMoMoSisDaDa_MoFaFaSisDaDa_MoFaMoSisDaDa_MoMoFaSisDaDa_MoMoMoSisDaDa"}
;; 0
%laganesetaha:0, parents:0, parents:0, parents:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).
;; 1
%laganesetaha:0, parents:0, parents:0, parents:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).
;; 2
%laganesetaha:0, parents:0, parents:1, parents:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).
;; 3
%laganesetaha:0, parents:0, parents:1, parents:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).
;; 4
%laganesetaha:0, parents:1, parents:0, parents:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).
;; 5
%laganesetaha:0, parents:1, parents:0, parents:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).
;; 6
%laganesetaha:0, parents:1, parents:1, parents:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).
;; 7
%laganesetaha:0, parents:1, parents:1, parents:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).


laganohaah(Alter, Ego) :-  mother(A, Ego), gen[aux]22fm(Alter, A).
{"MoBro_MoMoBroSo_MoMoMoBroSoSo"}
;; 0
%laganohaah:0, gen[aux]22fm:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%laganohaah:0, gen[aux]22fm:1, gen[aux]22fm:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 2
%laganohaah:0, gen[aux]22fm:1, gen[aux]22fm:1, gen[aux]22fm:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).


lagohakwa(Alter, Ego) :-  husband(A, Ego), brother(Alter, A).
{"HuBro"}
;; 0
%lagohakwa:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


leanhose[aux]22(Alter, Ego) :-  wife(A, Ego), parents(Alter, A).
;; 0
%leanhose[aux]22:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(A, Ego), mother(Alter, A).
;; 1
%leanhose[aux]22:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(A, Ego), father(Alter, A).


leanhoseha(Alter, Ego) :-  leanhose[aux]22(Alter, Ego).
                       |   leanhose[aux]22(Ego, Alter).
                       |   father(A, Ego), sister(B, A), husband(Alter, B).
{"DaHu_FaSisHu_WiFa_WiMo"}
;; 0
%leanhoseha:0, leanhose[aux]22:0, parents:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).
;; 1
%leanhoseha:0, leanhose[aux]22:0, parents:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).
;; 2
%leanhoseha:1, leanhose[aux]22:0, parents:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 wife(A, Alter), mother(Ego, A).
;; 3
%leanhoseha:1, leanhose[aux]22:0, parents:1%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 wife(A, Alter), father(Ego, A).
;; 4
%leanhoseha:2, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).


legaah(Alter, Ego) :-  gen[aux]22nnm(Alter, Ego), younger(Alter, Ego).
                   |   step_brother(Alter, Ego), younger(Alter, Ego).
                   |   male(Ego), father(A, Ego), father(B, A), sister(C, B), daughter(D, C), son(Alter, D), younger(Alter, Ego).
{"Bro_FaBroSo_FaFaBroSoSo_FaFaSisDaSo_FaFaSisSoSo_FaMoBroSoSo_FaMoSisSoSo_FaSisSo_MoBroSo_MoFaBroSoSo_MoFaSisSoSo_MoMoBroSoSo_MoMoSisSoSo_MoSisSo_Stbro"}
;; 0
%legaah:0, gen[aux]22nnm:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).
;; 1
%legaah:0, gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D), younger(Alter, Ego).
;; 2
%legaah:0, gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D), younger(Alter, Ego).
;; 3
%legaah:0, gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 4
%legaah:0, gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 5
%legaah:0, gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 6
%legaah:0, gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 7
%legaah:0, gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D), younger(Alter, Ego).
;; 8
%legaah:0, gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D), younger(Alter, Ego).
;; 9
%legaah:0, gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 10
%legaah:0, gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 11
%legaah:0, gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 12
%legaah:0, gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 13
%legaah:1, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C), younger(Alter, Ego).
;; 14
%legaah:1, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C), younger(Alter, Ego).
;; 15
%legaah:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F), younger(Alter, Ego).


leno(Alter, Ego) :-  step_son(Alter, Ego).
{"Stso"}
;; 0
%leno:0, step_son:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stso}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(Alter, B), son(Alter, A).


lewadaah(Alter, Ego) :-  male(Ego), sister(A, Ego), son(Alter, A).
                     |   male(Ego), parents(A, Ego), siblings(B, A), daughter(C, B), son(Alter, C).
                     |   male(Ego), parents(A, Ego), gen[aux]22nf(B, A), daughter(C, B), son(Alter, C).
{"FaBroDaSo_FaFaFaSisDaDaDaSo_FaFaMoSisDaDaDaSo_FaFaSisDaDaSo_FaMoFaSisDaDaDaSo_FaMoMoSisDaDaDaSo_FaMoSisDaDaSo_FaSisDaSo_MoBroDaSo_MoFaFaSisDaDaDaSo_MoFaMoSisDaDaDaSo_MoFaSisDaDaSo_MoMoFaSisDaDaDaSo_MoMoMoSisDaDaDaSo_MoMoSisDaDaSo_MoSisDaSo_SisSo"}
;; 0
%lewadaah:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 1
%lewadaah:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 2
%lewadaah:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 3
%lewadaah:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 4
%lewadaah:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 5
%lewadaah:2, parents:0, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 6
%lewadaah:2, parents:0, gen[aux]22nf:1, parents:0, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 7
%lewadaah:2, parents:0, gen[aux]22nf:1, parents:0, gen[aux]22nf:1, parents:0, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 8
%lewadaah:2, parents:0, gen[aux]22nf:1, parents:0, gen[aux]22nf:1, parents:1, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 9
%lewadaah:2, parents:0, gen[aux]22nf:1, parents:1, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 10
%lewadaah:2, parents:0, gen[aux]22nf:1, parents:1, gen[aux]22nf:1, parents:0, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 11
%lewadaah:2, parents:0, gen[aux]22nf:1, parents:1, gen[aux]22nf:1, parents:1, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 12
%lewadaah:2, parents:1, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 13
%lewadaah:2, parents:1, gen[aux]22nf:1, parents:0, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 14
%lewadaah:2, parents:1, gen[aux]22nf:1, parents:0, gen[aux]22nf:1, parents:0, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 15
%lewadaah:2, parents:1, gen[aux]22nf:1, parents:0, gen[aux]22nf:1, parents:1, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 16
%lewadaah:2, parents:1, gen[aux]22nf:1, parents:1, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 17
%lewadaah:2, parents:1, gen[aux]22nf:1, parents:1, gen[aux]22nf:1, parents:0, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaDaDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 18
%lewadaah:2, parents:1, gen[aux]22nf:1, parents:1, gen[aux]22nf:1, parents:1, gen[aux]22nf:0, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaDaDaSo}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).


leyaah(Alter, Ego) :-  son(Alter, Ego).
                   |   brother(A, Ego), son(Alter, A).
                   |   parents(A, Ego), siblings(B, A), son(C, B), son(Alter, C).
                   |   parents(A, Ego), gen[aux]22nm(B, A), son(C, B), son(Alter, C).
                   |   female(Ego), gen[aux]22nnf(A, Ego), son(Alter, A).
{"BroSo_FaBroDaSo_FaBroSoSo_FaFaBroDaDaSo_FaFaBroSoSoSo_FaFaFaBroDaDaDaSo_FaFaFaSisDaDaDaSo_FaFaMoBroDaDaDaSo_FaFaMoSisDaDaDaSo_FaFaSisDaDaSo_FaMoBroDaDaSo_FaMoBroSoSoSo_FaMoFaBroDaDaDaSo_FaMoFaSisDaDaDaSo_FaMoMoBroDaDaDaSo_FaMoMoSisDaDaDaSo_FaMoSisDaDaSo_FaSisDaSo_FaSisSoSo_MoBroDaSo_MoBroSoSo_MoFaBroDaDaSo_MoFaBroSoSoSo_MoFaFaBroDaDaDaSo_MoFaFaSisDaDaDaSo_MoFaMoBroDaDaDaSo_MoFaMoSisDaDaDaSo_MoFaSisDaDaSo_MoMoBroDaDaSo_MoMoBroSoSoSo_MoMoFaBroDaDaDaSo_MoMoFaSisDaDaDaSo_MoMoMoBroDaDaDaSo_MoMoMoSisDaDaDaSo_MoMoSisDaDaSo_MoSisDaSo_MoSisSoSo_SisSo_So"}
;; 0
%leyaah:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 1
%leyaah:1, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 2
%leyaah:2, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 3
%leyaah:2, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 4
%leyaah:2, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 5
%leyaah:2, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 6
%leyaah:3, parents:0, gen[aux]22nm:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 7
%leyaah:3, parents:0, gen[aux]22nm:1, parents:0, gen[aux]22nm:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 8
%leyaah:3, parents:0, gen[aux]22nm:1, parents:1, gen[aux]22nm:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 9
%leyaah:3, parents:1, gen[aux]22nm:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 10
%leyaah:3, parents:1, gen[aux]22nm:1, parents:0, gen[aux]22nm:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 11
%leyaah:3, parents:1, gen[aux]22nm:1, parents:1, gen[aux]22nm:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 12
%leyaah:4, gen[aux]22nnf:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 13
%leyaah:4, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 14
%leyaah:4, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 15
%leyaah:4, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 16
%leyaah:4, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 17
%leyaah:4, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 18
%leyaah:4, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 19
%leyaah:4, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 20
%leyaah:4, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 21
%leyaah:4, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 22
%leyaah:4, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 23
%leyaah:4, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 24
%leyaah:4, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 25
%leyaah:4, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 26
%leyaah:4, gen[aux]22nnf:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 27
%leyaah:4, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 28
%leyaah:4, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 29
%leyaah:4, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 30
%leyaah:4, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 31
%leyaah:4, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 32
%leyaah:4, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 33
%leyaah:4, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 34
%leyaah:4, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 35
%leyaah:4, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 36
%leyaah:4, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 37
%leyaah:4, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaDaDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 38
%leyaah:4, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:1, parents:0, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaDaDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 39
%leyaah:4, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaDaDaSo}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 40
%leyaah:4, gen[aux]22nnf:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:1, parents:1, gen[aux]22nnf2:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaDaDaSo}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).


leyataraya(Alter, Ego) :-  gen_dn[aux]22(A, Ego), son(Alter, A).
                       |   gen[aux]22(A, Ego), gen_dn[aux]22(B, A), son(Alter, B).
{"BroDaDaSo_BroDaSo_BroDaSoSo_BroSoDaSo_BroSoSo_BroSoSoSo_DaDaSo_DaSo_DaSoSo_FaBroDaDaDaSo_FaBroDaDaSo_FaBroDaDaSoSo_FaBroDaSoDaSo_FaBroDaSoSo_FaBroDaSoSoSo_FaBroSoDaDaSo_FaBroSoDaSo_FaBroSoDaSoSo_FaBroSoSoDaSo_FaBroSoSoSo_FaBroSoSoSoSo_FaFaBroDaDaDaSo_FaFaBroDaDaSoSo_FaFaBroDaSoDaSo_FaFaBroDaSoSoSo_FaFaBroSoDaDaSo_FaFaBroSoDaSoSo_FaFaBroSoSoDaSo_FaFaBroSoSoSoSo_FaFaSisDaDaDaSo_FaFaSisDaDaSoSo_FaFaSisDaSoDaSo_FaFaSisDaSoSoSo_FaFaSisSoDaDaSo_FaFaSisSoDaSoSo_FaFaSisSoSoDaSo_FaFaSisSoSoSoSo_FaMoBroDaDaDaSo_FaMoBroDaDaSoSo_FaMoBroDaSoDaSo_FaMoBroDaSoSoSo_FaMoBroSoDaDaSo_FaMoBroSoDaSoSo_FaMoBroSoSoDaSo_FaMoBroSoSoSoSo_FaMoSisDaDaDaSo_FaMoSisDaDaSoSo_FaMoSisDaSoDaSo_FaMoSisDaSoSoSo_FaMoSisSoDaDaSo_FaMoSisSoDaSoSo_FaMoSisSoSoDaSo_FaMoSisSoSoSoSo_FaSisDaDaDaSo_FaSisDaDaSo_FaSisDaDaSoSo_FaSisDaSoDaSo_FaSisDaSoSo_FaSisDaSoSoSo_FaSisSoDaDaSo_FaSisSoDaSo_FaSisSoDaSoSo_FaSisSoSoDaSo_FaSisSoSoSo_FaSisSoSoSoSo_MoBroDaDaDaSo_MoBroDaDaSo_MoBroDaDaSoSo_MoBroDaSoDaSo_MoBroDaSoSo_MoBroDaSoSoSo_MoBroSoDaDaSo_MoBroSoDaSo_MoBroSoDaSoSo_MoBroSoSoDaSo_MoBroSoSoSo_MoBroSoSoSoSo_MoFaBroDaDaDaSo_MoFaBroDaDaSoSo_MoFaBroDaSoDaSo_MoFaBroDaSoSoSo_MoFaBroSoDaDaSo_MoFaBroSoDaSoSo_MoFaBroSoSoDaSo_MoFaBroSoSoSoSo_MoFaSisDaDaDaSo_MoFaSisDaDaSoSo_MoFaSisDaSoDaSo_MoFaSisDaSoSoSo_MoFaSisSoDaDaSo_MoFaSisSoDaSoSo_MoFaSisSoSoDaSo_MoFaSisSoSoSoSo_MoMoBroDaDaDaSo_MoMoBroDaDaSoSo_MoMoBroDaSoDaSo_MoMoBroDaSoSoSo_MoMoBroSoDaDaSo_MoMoBroSoDaSoSo_MoMoBroSoSoDaSo_MoMoBroSoSoSoSo_MoMoSisDaDaDaSo_MoMoSisDaDaSoSo_MoMoSisDaSoDaSo_MoMoSisDaSoSoSo_MoMoSisSoDaDaSo_MoMoSisSoDaSoSo_MoMoSisSoSoDaSo_MoMoSisSoSoSoSo_MoSisDaDaDaSo_MoSisDaDaSo_MoSisDaDaSoSo_MoSisDaSoDaSo_MoSisDaSoSo_MoSisDaSoSoSo_MoSisSoDaDaSo_MoSisSoDaSo_MoSisSoDaSoSo_MoSisSoSoDaSo_MoSisSoSoSo_MoSisSoSoSoSo_SisDaDaSo_SisDaSo_SisDaSoSo_SisSoDaSo_SisSoSo_SisSoSoSo_SoDaSo_SoSo_SoSoSo"}
;; 0
%leyataraya:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).
;; 1
%leyataraya:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).
;; 2
%leyataraya:0, gen_dn[aux]22:1, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
 son(A, Ego), son(B, A), son(Alter, B).
;; 3
%leyataraya:0, gen_dn[aux]22:1, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
 son(A, Ego), daughter(B, A), son(Alter, B).
;; 4
%leyataraya:0, gen_dn[aux]22:1, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
 daughter(A, Ego), son(B, A), son(Alter, B).
;; 5
%leyataraya:0, gen_dn[aux]22:1, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
 daughter(A, Ego), daughter(B, A), son(Alter, B).
;; 6
%leyataraya:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(Alter, D).
;; 7
%leyataraya:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(Alter, D).
;; 8
%leyataraya:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, gen_dn[aux]22:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), son(Alter, E).
;; 9
%leyataraya:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, gen_dn[aux]22:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), son(Alter, E).
;; 10
%leyataraya:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, gen_dn[aux]22:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), son(Alter, E).
;; 11
%leyataraya:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, gen_dn[aux]22:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 12
%leyataraya:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(Alter, D).
;; 13
%leyataraya:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(Alter, D).
;; 14
%leyataraya:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, gen_dn[aux]22:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), son(Alter, E).
;; 15
%leyataraya:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, gen_dn[aux]22:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), son(Alter, E).
;; 16
%leyataraya:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, gen_dn[aux]22:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), son(Alter, E).
;; 17
%leyataraya:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, gen_dn[aux]22:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 18
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 19
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 20
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]22:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 21
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]22:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 22
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]22:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 23
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]22:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 24
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 25
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 26
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]22:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 27
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]22:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 28
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]22:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 29
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]22:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 30
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 31
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 32
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]22:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 33
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]22:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 34
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]22:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 35
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]22:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 36
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 37
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 38
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]22:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 39
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]22:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 40
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]22:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 41
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]22:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 42
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 43
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 44
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 45
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 46
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 47
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 48
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 49
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 50
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 51
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 52
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 53
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 54
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 55
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 56
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 57
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 58
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 59
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 60
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 61
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 62
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 63
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 64
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 65
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 66
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 67
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 68
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 69
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 70
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 71
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 72
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 73
%leyataraya:1, gen[aux]22:1, parents:0, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 74
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 75
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 76
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]22:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 77
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]22:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 78
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]22:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 79
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]22:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 80
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 81
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 82
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]22:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 83
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]22:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 84
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]22:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 85
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]22:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 86
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 87
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 88
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]22:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 89
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]22:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 90
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]22:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 91
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]22:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 92
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 93
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 94
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]22:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 95
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]22:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 96
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]22:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 97
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]22:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 98
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 99
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 100
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 101
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 102
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 103
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 104
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 105
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 106
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 107
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 108
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 109
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 110
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 111
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 112
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 113
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:0, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 114
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 115
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 116
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 117
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 118
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 119
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 120
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 121
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 122
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 123
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 124
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 125
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 126
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 127
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 128
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 129
%leyataraya:1, gen[aux]22:1, parents:1, gen[aux]22:1, parents:1, gen[aux]22:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]22:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).


lokjeha(Alter, Ego) :-  gen[aux]22nnm(Alter, Ego), elder(Alter, Ego).
                    |   step_brother(Alter, Ego), elder(Alter, Ego).
                    |   male(Ego), father(A, Ego), father(B, A), sister(C, B), daughter(D, C), son(Alter, D), elder(Alter, Ego).
{"Bro_FaBroSo_FaFaBroSoSo_FaFaSisDaSo_FaFaSisSoSo_FaMoBroSoSo_FaMoSisSoSo_FaSisSo_MoBroSo_MoFaBroSoSo_MoFaSisSoSo_MoMoBroSoSo_MoMoSisSoSo_MoSisSo_Stbro"}
;; 0
%lokjeha:0, gen[aux]22nnm:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%lokjeha:0, gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D), elder(Alter, Ego).
;; 2
%lokjeha:0, gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D), elder(Alter, Ego).
;; 3
%lokjeha:0, gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 4
%lokjeha:0, gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 5
%lokjeha:0, gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 6
%lokjeha:0, gen[aux]22nnm:1, parents:0, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 7
%lokjeha:0, gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D), elder(Alter, Ego).
;; 8
%lokjeha:0, gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D), elder(Alter, Ego).
;; 9
%lokjeha:0, gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 10
%lokjeha:0, gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:1, parents:0, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 11
%lokjeha:0, gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 12
%lokjeha:0, gen[aux]22nnm:1, parents:1, gen[aux]22nnm2:1, parents:1, gen[aux]22nnm2:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 13
%lokjeha:1, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C), elder(Alter, Ego).
;; 14
%lokjeha:1, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C), elder(Alter, Ego).
;; 15
%lokjeha:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F), elder(Alter, Ego).


loknonesekwa(Alter, Ego) :-  step_father(Alter, Ego).
{"Stfa"}
;; 0
%loknonesekwa:0, step_father:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stfa}  
 father(A, Ego), mother(B, Ego), husband(Alter, B), not(equal(Alter, A)).


loksoteha(Alter, Ego) :-  gen_up[aux]22(A, Ego), father(Alter, A).
                      |   gen_up[aux]22(A, Ego), parents(B, A), brother(Alter, B).
                      |   parents(A, Ego), parents(B, A), parents(C, B), brother(D, C), son(Alter, D).
                      |   wife(A, Ego), parents(B, A), father(Alter, B).
{"FaFa_FaFaBro_FaFaFa_FaFaFaBro_FaFaFaBroSo_FaFaMoBro_FaFaMoBroSo_FaMoBro_FaMoFa_FaMoFaBro_FaMoFaBroSo_FaMoMoBro_FaMoMoBroSo_MoFa_MoFaBro_MoFaFa_MoFaFaBro_MoFaFaBroSo_MoFaMoBro_MoFaMoBroSo_MoMoBro_MoMoFa_MoMoFaBro_MoMoFaBroSo_MoMoMoBro_MoMoMoBroSo_WiFaFa_WiMoFa"}
;; 0
%loksoteha:0, gen_up[aux]22:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 1
%loksoteha:0, gen_up[aux]22:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).
;; 2
%loksoteha:0, gen_up[aux]22:1, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
 mother(A, Ego), mother(B, A), father(Alter, B).
;; 3
%loksoteha:0, gen_up[aux]22:1, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
 mother(A, Ego), father(B, A), father(Alter, B).
;; 4
%loksoteha:0, gen_up[aux]22:1, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
 father(A, Ego), mother(B, A), father(Alter, B).
;; 5
%loksoteha:0, gen_up[aux]22:1, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
 father(A, Ego), father(B, A), father(Alter, B).
;; 6
%loksoteha:1, gen_up[aux]22:0, parents:0, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 7
%loksoteha:1, gen_up[aux]22:0, parents:0, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 8
%loksoteha:1, gen_up[aux]22:0, parents:1, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 9
%loksoteha:1, gen_up[aux]22:0, parents:1, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 10
%loksoteha:1, gen_up[aux]22:1, parents:0, parents:0, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 11
%loksoteha:1, gen_up[aux]22:1, parents:0, parents:0, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaBro}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 12
%loksoteha:1, gen_up[aux]22:1, parents:0, parents:1, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoBro}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 13
%loksoteha:1, gen_up[aux]22:1, parents:0, parents:1, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaBro}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 14
%loksoteha:1, gen_up[aux]22:1, parents:1, parents:0, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 15
%loksoteha:1, gen_up[aux]22:1, parents:1, parents:0, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaBro}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 16
%loksoteha:1, gen_up[aux]22:1, parents:1, parents:1, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoBro}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 17
%loksoteha:1, gen_up[aux]22:1, parents:1, parents:1, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaBro}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 18
%loksoteha:2, parents:0, parents:0, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 19
%loksoteha:2, parents:0, parents:0, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 20
%loksoteha:2, parents:0, parents:1, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 21
%loksoteha:2, parents:0, parents:1, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 22
%loksoteha:2, parents:1, parents:0, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 23
%loksoteha:2, parents:1, parents:0, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 24
%loksoteha:2, parents:1, parents:1, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 25
%loksoteha:2, parents:1, parents:1, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 26
%loksoteha:3, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoFa}  
 wife(A, Ego), mother(B, A), father(Alter, B).
;; 27
%loksoteha:3, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaFa}  
 wife(A, Ego), father(B, A), father(Alter, B).


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


ujajoha(Alter, Ego) :-  wife(A, Ego), brother(Alter, A).
{"WiBro"}
;; 0
%ujajoha:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


unjagoha(Alter, Ego) :-  male(Ego), sister(A, Ego), husband(Alter, A).
                     |   parents(A, Ego), siblings(B, A), daughter(C, B), husband(Alter, C).
{"FaBroDaHu_FaSisDaHu_MoBroDaHu_MoSisDaHu_SisHu"}
;; 0
%unjagoha:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).
;; 1
%unjagoha:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E).
;; 2
%unjagoha:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E).
;; 3
%unjagoha:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E).
;; 4
%unjagoha:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E).

