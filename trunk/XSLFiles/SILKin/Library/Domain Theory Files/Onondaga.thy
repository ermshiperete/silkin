;;  Horn Clause Representation of Onondaga Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Onondaga") (author, "L. H. Morgan") (date, "1871-01-01") (citation, "Lewis H. Morgan SYSTEMS OF CONSANGUINITY AND AFFINITY OF THE HUMAN FAMILY, 1871 (reprint 1997), University of Nebraska Press, Lincoln") 
(non_term, [aux], [eq], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, false) (address, false) (recursiveLevels, 2)
(overlaps, (haga, (kuhjeah)), (kaga, (uhjeah)), (kuhjeah, (haga)), (uhjeah, (kaga)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

ahganeha(Alter, Ego) :-  mother(A, Ego), brother(B, A), wife(Alter, B).
{"MoBroWi"}
;; 0
%ahganeha:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


ahgareseh(Alter, Ego) :-  crossups[aux]39(A, Ego), children(Alter, A).
{"FaFaSisDaDa_FaFaSisDaSo_FaMoBroDaDa_FaMoBroDaSo_FaSisDa_FaSisSo_MoBroDa_MoBroSo_MoFaSisSoDa_MoFaSisSoSo_MoMoBroSoDa_MoMoBroSoSo"}
;; 0
%ahgareseh:0, crossups[aux]39:0, parents:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(F, E), not(equal(B, F)), son(Alter, E).
;; 1
%ahgareseh:0, crossups[aux]39:0, parents:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(F, E), not(equal(B, F)), daughter(Alter, E).
;; 2
%ahgareseh:0, crossups[aux]39:0, parents:1, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(F, E), not(equal(B, F)), son(Alter, E).
;; 3
%ahgareseh:0, crossups[aux]39:0, parents:1, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(F, E), not(equal(B, F)), daughter(Alter, E).
;; 4
%ahgareseh:0, crossups[aux]39:1, parents:0, crossups[aux]39:0, parents:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
 mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, J), child(J, G), not(equal(B, I)), son(Alter, J).
;; 5
%ahgareseh:0, crossups[aux]39:1, parents:0, crossups[aux]39:0, parents:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
 mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, J), child(J, G), not(equal(B, I)), daughter(Alter, J).
;; 6
%ahgareseh:0, crossups[aux]39:1, parents:0, crossups[aux]39:0, parents:1, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
 mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, J), child(J, G), not(equal(B, I)), son(Alter, J).
;; 7
%ahgareseh:0, crossups[aux]39:1, parents:0, crossups[aux]39:0, parents:1, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
 mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, J), child(J, G), not(equal(B, I)), daughter(Alter, J).
;; 8
%ahgareseh:0, crossups[aux]39:1, parents:1, crossups[aux]39:0, parents:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
 father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, J), child(J, G), not(equal(B, I)), son(Alter, J).
;; 9
%ahgareseh:0, crossups[aux]39:1, parents:1, crossups[aux]39:0, parents:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, J), child(J, G), not(equal(B, I)), daughter(Alter, J).
;; 10
%ahgareseh:0, crossups[aux]39:1, parents:1, crossups[aux]39:0, parents:1, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
 father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, J), child(J, G), not(equal(B, I)), son(Alter, J).
;; 11
%ahgareseh:0, crossups[aux]39:1, parents:1, crossups[aux]39:0, parents:1, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
 father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, J), child(J, G), not(equal(B, I)), daughter(Alter, J).


ahgeahdeo(Alter, Ego) :-  female(Ego), gen[aux]39n1(A, Ego), husband(Alter, A).
{"FaBroDaHu_FaFaBroDaDaHu_FaFaBroSoDaHu_FaFaSisDaDaHu_FaFaSisSoDaHu_FaMoBroDaDaHu_FaMoBroSoDaHu_FaMoSisDaDaHu_FaMoSisSoDaHu_FaSisDaHu_MoBroDaHu_MoFaBroDaDaHu_MoFaBroSoDaHu_MoFaSisDaDaHu_MoFaSisSoDaHu_MoMoBroDaDaHu_MoMoBroSoDaHu_MoMoSisDaDaHu_MoMoSisSoDaHu_MoSisDaHu_SisHu"}
;; 0
%ahgeahdeo:0, gen[aux]39n1:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), husband(Alter, C).
;; 1
%ahgeahdeo:0, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), husband(Alter, E).
;; 2
%ahgeahdeo:0, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), husband(Alter, E).
;; 3
%ahgeahdeo:0, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), husband(Alter, E).
;; 4
%ahgeahdeo:0, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), husband(Alter, E).
;; 5
%ahgeahdeo:0, gen[aux]39n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), husband(Alter, G).
;; 6
%ahgeahdeo:0, gen[aux]39n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), husband(Alter, G).
;; 7
%ahgeahdeo:0, gen[aux]39n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), husband(Alter, G).
;; 8
%ahgeahdeo:0, gen[aux]39n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), husband(Alter, G).
;; 9
%ahgeahdeo:0, gen[aux]39n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoDaHu}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), husband(Alter, G).
;; 10
%ahgeahdeo:0, gen[aux]39n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaDaHu}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), husband(Alter, G).
;; 11
%ahgeahdeo:0, gen[aux]39n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoDaHu}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), husband(Alter, G).
;; 12
%ahgeahdeo:0, gen[aux]39n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaDaHu}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), husband(Alter, G).
;; 13
%ahgeahdeo:0, gen[aux]39n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoDaHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), husband(Alter, G).
;; 14
%ahgeahdeo:0, gen[aux]39n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), husband(Alter, G).
;; 15
%ahgeahdeo:0, gen[aux]39n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoDaHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), husband(Alter, G).
;; 16
%ahgeahdeo:0, gen[aux]39n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), husband(Alter, G).
;; 17
%ahgeahdeo:0, gen[aux]39n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoDaHu}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), husband(Alter, G).
;; 18
%ahgeahdeo:0, gen[aux]39n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroDaDaHu}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), husband(Alter, G).
;; 19
%ahgeahdeo:0, gen[aux]39n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoDaHu}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), husband(Alter, G).
;; 20
%ahgeahdeo:0, gen[aux]39n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaDaHu}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), husband(Alter, G).


ahgeahneo(Alter, Ego) :-  gender(A, Ego), gen[aux]39n1(B, Ego), gender(C, B), not(equal(A, C)), spouse(Alter, B).
                      |   spice(A, Ego), gender(B, A), sibling(Alter, A), gender(C, Alter), not(equal(B, C)).
{"BroWi_FaBroDaHu_FaBroSoWi_FaFaBroDaDaHu_FaFaBroDaSoWi_FaFaBroSoDaHu_FaFaBroSoSoWi_FaFaSisDaDaHu_FaFaSisDaSoWi_FaFaSisSoDaHu_FaFaSisSoSoWi_FaMoBroDaDaHu_FaMoBroDaSoWi_FaMoBroSoDaHu_FaMoBroSoSoWi_FaMoSisDaDaHu_FaMoSisDaSoWi_FaMoSisSoDaHu_FaMoSisSoSoWi_FaSisDaHu_FaSisSoWi_HuSis_MoBroDaHu_MoBroSoWi_MoFaBroDaDaHu_MoFaBroDaSoWi_MoFaBroSoDaHu_MoFaBroSoSoWi_MoFaSisDaDaHu_MoFaSisDaSoWi_MoFaSisSoDaHu_MoFaSisSoSoWi_MoMoBroDaDaHu_MoMoBroDaSoWi_MoMoBroSoDaHu_MoMoBroSoSoWi_MoMoSisDaDaHu_MoMoSisDaSoWi_MoMoSisSoDaHu_MoMoSisSoSoWi_MoSisDaHu_MoSisSoWi_SisHu_WiBro"}
;; 0
%ahgeahneo:0, gen[aux]39n1:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 male(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(E, D), not(equal(A, E)), spouse(Alter, D).
;; 1
%ahgeahneo:0, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
 male(Ego), gender(A, Ego), mother(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), gender(G, F), not(equal(A, G)), spouse(Alter, F).
;; 2
%ahgeahneo:0, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
 male(Ego), gender(A, Ego), mother(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), gender(G, F), not(equal(A, G)), spouse(Alter, F).
;; 3
%ahgeahneo:0, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
 male(Ego), gender(A, Ego), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), gender(G, F), not(equal(A, G)), spouse(Alter, F).
;; 4
%ahgeahneo:0, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
 male(Ego), gender(A, Ego), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), gender(G, F), not(equal(A, G)), spouse(Alter, F).
;; 5
%ahgeahneo:0, gen[aux]39n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoDaHu}  
 male(Ego), gender(A, Ego), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 6
%ahgeahneo:0, gen[aux]39n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaDaHu}  
 male(Ego), gender(A, Ego), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 7
%ahgeahneo:0, gen[aux]39n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoDaHu}  
 male(Ego), gender(A, Ego), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 8
%ahgeahneo:0, gen[aux]39n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaDaHu}  
 male(Ego), gender(A, Ego), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 9
%ahgeahneo:0, gen[aux]39n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoDaHu}  
 male(Ego), gender(A, Ego), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 10
%ahgeahneo:0, gen[aux]39n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaDaHu}  
 male(Ego), gender(A, Ego), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 11
%ahgeahneo:0, gen[aux]39n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoDaHu}  
 male(Ego), gender(A, Ego), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 12
%ahgeahneo:0, gen[aux]39n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaDaHu}  
 male(Ego), gender(A, Ego), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 13
%ahgeahneo:0, gen[aux]39n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoDaHu}  
 male(Ego), gender(A, Ego), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 14
%ahgeahneo:0, gen[aux]39n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaDaHu}  
 male(Ego), gender(A, Ego), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 15
%ahgeahneo:0, gen[aux]39n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoDaHu}  
 male(Ego), gender(A, Ego), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 16
%ahgeahneo:0, gen[aux]39n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisDaDaHu}  
 male(Ego), gender(A, Ego), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 17
%ahgeahneo:0, gen[aux]39n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoDaHu}  
 male(Ego), gender(A, Ego), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 18
%ahgeahneo:0, gen[aux]39n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroDaDaHu}  
 male(Ego), gender(A, Ego), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 19
%ahgeahneo:0, gen[aux]39n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoDaHu}  
 male(Ego), gender(A, Ego), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 20
%ahgeahneo:0, gen[aux]39n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaDaHu}  
 male(Ego), gender(A, Ego), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 21
%ahgeahneo:1, spice:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), gender(B, A), mother(C, A), father(D, A), child(Alter, C), child(Alter, D), not(equal(Alter, A)), gender(E, Alter), not(equal(B, E)).
;; 22
%ahgeahneo:1, spice:1, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), gender(B, A), mother(C, A), father(D, A), child(Alter, C), child(Alter, D), not(equal(Alter, A)), gender(E, Alter), not(equal(B, E)).
;; 23
%ahgeahneo:0, gen[aux]39n1:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 female(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(E, D), not(equal(A, E)), spouse(Alter, D).
;; 24
%ahgeahneo:0, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
 female(Ego), gender(A, Ego), mother(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), gender(G, F), not(equal(A, G)), spouse(Alter, F).
;; 25
%ahgeahneo:0, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
 female(Ego), gender(A, Ego), mother(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), gender(G, F), not(equal(A, G)), spouse(Alter, F).
;; 26
%ahgeahneo:0, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
 female(Ego), gender(A, Ego), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), gender(G, F), not(equal(A, G)), spouse(Alter, F).
;; 27
%ahgeahneo:0, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
 female(Ego), gender(A, Ego), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), gender(G, F), not(equal(A, G)), spouse(Alter, F).
;; 28
%ahgeahneo:0, gen[aux]39n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoSoWi}  
 female(Ego), gender(A, Ego), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 29
%ahgeahneo:0, gen[aux]39n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaSoWi}  
 female(Ego), gender(A, Ego), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 30
%ahgeahneo:0, gen[aux]39n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoSoWi}  
 female(Ego), gender(A, Ego), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 31
%ahgeahneo:0, gen[aux]39n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaSoWi}  
 female(Ego), gender(A, Ego), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 32
%ahgeahneo:0, gen[aux]39n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoSoWi}  
 female(Ego), gender(A, Ego), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 33
%ahgeahneo:0, gen[aux]39n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaSoWi}  
 female(Ego), gender(A, Ego), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 34
%ahgeahneo:0, gen[aux]39n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoSoWi}  
 female(Ego), gender(A, Ego), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 35
%ahgeahneo:0, gen[aux]39n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaSoWi}  
 female(Ego), gender(A, Ego), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 36
%ahgeahneo:0, gen[aux]39n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoSoWi}  
 female(Ego), gender(A, Ego), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 37
%ahgeahneo:0, gen[aux]39n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaSoWi}  
 female(Ego), gender(A, Ego), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 38
%ahgeahneo:0, gen[aux]39n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoSoWi}  
 female(Ego), gender(A, Ego), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 39
%ahgeahneo:0, gen[aux]39n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisDaSoWi}  
 female(Ego), gender(A, Ego), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 40
%ahgeahneo:0, gen[aux]39n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoSoWi}  
 female(Ego), gender(A, Ego), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 41
%ahgeahneo:0, gen[aux]39n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroDaSoWi}  
 female(Ego), gender(A, Ego), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 42
%ahgeahneo:0, gen[aux]39n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoSoWi}  
 female(Ego), gender(A, Ego), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).
;; 43
%ahgeahneo:0, gen[aux]39n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaSoWi}  
 female(Ego), gender(A, Ego), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), gender(I, H), not(equal(A, I)), spouse(Alter, H).


ahgeahyeh(Alter, Ego) :-  male(Ego), gen[aux]39n1(A, Ego), wife(Alter, A).
                      |   spice(A, Ego), gender(B, A), sibling(Alter, A), gender(B, Alter).
{"BroWi_FaBroSoWi_FaFaBroDaSoWi_FaFaBroSoSoWi_FaFaSisDaSoWi_FaFaSisSoSoWi_FaMoBroDaSoWi_FaMoBroSoSoWi_FaMoSisDaSoWi_FaMoSisSoSoWi_FaSisSoWi_HuBro_MoBroSoWi_MoFaBroDaSoWi_MoFaBroSoSoWi_MoFaSisDaSoWi_MoFaSisSoSoWi_MoMoBroDaSoWi_MoMoBroSoSoWi_MoMoSisDaSoWi_MoMoSisSoSoWi_MoSisSoWi_WiSis"}
;; 0
%ahgeahyeh:0, gen[aux]39n1:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), wife(Alter, C).
;; 1
%ahgeahyeh:0, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), wife(Alter, E).
;; 2
%ahgeahyeh:0, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), wife(Alter, E).
;; 3
%ahgeahyeh:0, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), wife(Alter, E).
;; 4
%ahgeahyeh:0, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), wife(Alter, E).
;; 5
%ahgeahyeh:0, gen[aux]39n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), wife(Alter, G).
;; 6
%ahgeahyeh:0, gen[aux]39n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), wife(Alter, G).
;; 7
%ahgeahyeh:0, gen[aux]39n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), wife(Alter, G).
;; 8
%ahgeahyeh:0, gen[aux]39n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), wife(Alter, G).
;; 9
%ahgeahyeh:0, gen[aux]39n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoSoWi}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), wife(Alter, G).
;; 10
%ahgeahyeh:0, gen[aux]39n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaSoWi}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), wife(Alter, G).
;; 11
%ahgeahyeh:0, gen[aux]39n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoSoWi}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), wife(Alter, G).
;; 12
%ahgeahyeh:0, gen[aux]39n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaSoWi}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), wife(Alter, G).
;; 13
%ahgeahyeh:0, gen[aux]39n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoSoWi}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), wife(Alter, G).
;; 14
%ahgeahyeh:0, gen[aux]39n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaSoWi}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), wife(Alter, G).
;; 15
%ahgeahyeh:0, gen[aux]39n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoSoWi}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), wife(Alter, G).
;; 16
%ahgeahyeh:0, gen[aux]39n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisDaSoWi}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), wife(Alter, G).
;; 17
%ahgeahyeh:0, gen[aux]39n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoSoWi}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), wife(Alter, G).
;; 18
%ahgeahyeh:0, gen[aux]39n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroDaSoWi}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), wife(Alter, G).
;; 19
%ahgeahyeh:0, gen[aux]39n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoSoWi}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), wife(Alter, G).
;; 20
%ahgeahyeh:0, gen[aux]39n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaSoWi}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), wife(Alter, G).
;; 21
%ahgeahyeh:1, spice:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), gender(B, A), mother(C, A), father(D, A), child(Alter, C), child(Alter, D), not(equal(Alter, A)), gender(B, Alter).
;; 22
%ahgeahyeh:1, spice:1, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), gender(B, A), mother(C, A), father(D, A), child(Alter, C), child(Alter, D), not(equal(Alter, A)), gender(B, Alter).


ahgenoha(Alter, Ego) :-  mother(Alter, Ego).
                     |   parents(A, Ego), gen[aux]39n1(Alter, A), female(Alter).
{"FaFaBroDa_FaFaFaBroDaDa_FaFaFaBroSoDa_FaFaFaSisDaDa_FaFaFaSisSoDa_FaFaMoBroDaDa_FaFaMoBroSoDa_FaFaMoSisDaDa_FaFaMoSisSoDa_FaFaSisDa_FaMoBroDa_FaMoFaBroDaDa_FaMoFaBroSoDa_FaMoFaSisDaDa_FaMoFaSisSoDa_FaMoMoBroDaDa_FaMoMoBroSoDa_FaMoMoSisDaDa_FaMoMoSisSoDa_FaMoSisDa_FaSis_Mo_MoFaBroDa_MoFaFaBroDaDa_MoFaFaBroSoDa_MoFaFaSisDaDa_MoFaFaSisSoDa_MoFaMoBroDaDa_MoFaMoBroSoDa_MoFaMoSisDaDa_MoFaMoSisSoDa_MoFaSisDa_MoMoBroDa_MoMoFaBroDaDa_MoMoFaBroSoDa_MoMoFaSisDaDa_MoMoFaSisSoDa_MoMoMoBroDaDa_MoMoMoBroSoDa_MoMoMoSisDaDa_MoMoMoSisSoDa_MoMoSisDa_MoSis"}
;; 0
%ahgenoha:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).
;; 1
%ahgenoha:1, parents:0, gen[aux]39n1:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%ahgenoha:1, parents:0, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 3
%ahgenoha:1, parents:0, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 4
%ahgenoha:1, parents:0, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 5
%ahgenoha:1, parents:0, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 6
%ahgenoha:1, parents:0, gen[aux]39n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 7
%ahgenoha:1, parents:0, gen[aux]39n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 8
%ahgenoha:1, parents:0, gen[aux]39n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 9
%ahgenoha:1, parents:0, gen[aux]39n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 10
%ahgenoha:1, parents:0, gen[aux]39n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 11
%ahgenoha:1, parents:0, gen[aux]39n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 12
%ahgenoha:1, parents:0, gen[aux]39n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 13
%ahgenoha:1, parents:0, gen[aux]39n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 14
%ahgenoha:1, parents:0, gen[aux]39n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 15
%ahgenoha:1, parents:0, gen[aux]39n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 16
%ahgenoha:1, parents:0, gen[aux]39n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 17
%ahgenoha:1, parents:0, gen[aux]39n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 18
%ahgenoha:1, parents:0, gen[aux]39n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 19
%ahgenoha:1, parents:0, gen[aux]39n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 20
%ahgenoha:1, parents:0, gen[aux]39n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 21
%ahgenoha:1, parents:0, gen[aux]39n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 22
%ahgenoha:1, parents:1, gen[aux]39n1:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 23
%ahgenoha:1, parents:1, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 24
%ahgenoha:1, parents:1, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 25
%ahgenoha:1, parents:1, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 26
%ahgenoha:1, parents:1, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 27
%ahgenoha:1, parents:1, gen[aux]39n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 28
%ahgenoha:1, parents:1, gen[aux]39n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 29
%ahgenoha:1, parents:1, gen[aux]39n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 30
%ahgenoha:1, parents:1, gen[aux]39n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 31
%ahgenoha:1, parents:1, gen[aux]39n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 32
%ahgenoha:1, parents:1, gen[aux]39n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 33
%ahgenoha:1, parents:1, gen[aux]39n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 34
%ahgenoha:1, parents:1, gen[aux]39n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 35
%ahgenoha:1, parents:1, gen[aux]39n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 36
%ahgenoha:1, parents:1, gen[aux]39n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 37
%ahgenoha:1, parents:1, gen[aux]39n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 38
%ahgenoha:1, parents:1, gen[aux]39n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 39
%ahgenoha:1, parents:1, gen[aux]39n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 40
%ahgenoha:1, parents:1, gen[aux]39n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 41
%ahgenoha:1, parents:1, gen[aux]39n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 42
%ahgenoha:1, parents:1, gen[aux]39n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).


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


crossups[aux]39(Alter, Ego) :-  parents(A, Ego), gender(B, A), sibling(Alter, A), gender(C, Alter), not(equal(B, C)).
                            |   parents(A, Ego), gender(B, A), crossups[aux]39(C, A), gender(D, Alter), child(Alter, C), not(equal(B, D)).
;; 0
%crossups[aux]39:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(Alter, C), child(Alter, D), not(equal(Alter, A)), gender(E, Alter), not(equal(B, E)).
;; 1
%crossups[aux]39:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(Alter, C), child(Alter, D), not(equal(Alter, A)), gender(E, Alter), not(equal(B, E)).
;; 2
%crossups[aux]39:1, parents:0, crossups[aux]39:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, Alter), child(Alter, G), not(equal(B, I)).
;; 3
%crossups[aux]39:1, parents:0, crossups[aux]39:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, Alter), child(Alter, G), not(equal(B, I)).
;; 4
%crossups[aux]39:1, parents:1, crossups[aux]39:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, Alter), child(Alter, G), not(equal(B, I)).
;; 5
%crossups[aux]39:1, parents:1, crossups[aux]39:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, Alter), child(Alter, G), not(equal(B, I)).


dahagisnea(Alter, Ego) :-  husband(Alter, Ego).
{"Hu"}
;; 0
%dahagisnea:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).


dayogisnea(Alter, Ego) :-  wife(Alter, Ego).
{"Wi"}
;; 0
%dayogisnea:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


gen[aux]39(Alter, Ego) :-  siblings(Alter, Ego).
                       |   parents(A, Ego), gen[aux]39(B, A), children(Alter, B).
;; 0
%gen[aux]39:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%gen[aux]39:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 7
%gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 8
%gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 9
%gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 10
%gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 11
%gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 12
%gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 13
%gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 14
%gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 15
%gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 16
%gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 17
%gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 18
%gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 19
%gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 20
%gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 21
%gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 22
%gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 23
%gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 24
%gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 25
%gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 26
%gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 27
%gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 28
%gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 29
%gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 30
%gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 31
%gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 32
%gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 33
%gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 34
%gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 35
%gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 36
%gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 37
%gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 38
%gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 39
%gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 40
%gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 41
%gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).


gen[aux]39fm(Alter, Ego) :-  brother(Alter, Ego).
                         |   mother(A, Ego), gen[aux]39fm(B, A), son(Alter, B).
;; 0
%gen[aux]39fm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%gen[aux]39fm:1, gen[aux]39fm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%gen[aux]39fm:1, gen[aux]39fm:1, gen[aux]39fm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).


gen[aux]39mm(Alter, Ego) :-  brother(Alter, Ego).
                         |   father(A, Ego), gen[aux]39mm(B, A), son(Alter, B).
;; 0
%gen[aux]39mm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%gen[aux]39mm:1, gen[aux]39mm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%gen[aux]39mm:1, gen[aux]39mm:1, gen[aux]39mm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).


gen[aux]39n1(Alter, Ego) :-  sibling(Alter, Ego).
                         |   parents(A, Ego), siblings(B, A), child(Alter, B).
                         |   parents(A, Ego), parents(B, A), siblings(C, B), children(D, C), child(Alter, D).
;; 0
%gen[aux]39n1:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 4
%gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 5
%gen[aux]39n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 6
%gen[aux]39n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 7
%gen[aux]39n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 8
%gen[aux]39n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 9
%gen[aux]39n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 10
%gen[aux]39n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 11
%gen[aux]39n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 12
%gen[aux]39n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 13
%gen[aux]39n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 14
%gen[aux]39n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 15
%gen[aux]39n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 16
%gen[aux]39n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 17
%gen[aux]39n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 18
%gen[aux]39n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 19
%gen[aux]39n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 20
%gen[aux]39n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).


gen_dn[aux]39(Alter, Ego) :-  children(Alter, Ego).
                          |   children(A, Ego), children(Alter, A).
;; 0
%gen_dn[aux]39:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Alter, Ego).
;; 1
%gen_dn[aux]39:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Alter, Ego).
;; 2
%gen_dn[aux]39:1, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), son(Alter, A).
;; 3
%gen_dn[aux]39:1, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), daughter(Alter, A).
;; 4
%gen_dn[aux]39:1, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), son(Alter, A).
;; 5
%gen_dn[aux]39:1, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), daughter(Alter, A).


gen_up[aux]39(Alter, Ego) :-  parents(Alter, Ego).
                          |   parents(A, Ego), parents(Alter, A).
;; 0
%gen_up[aux]39:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(Alter, Ego).
;; 1
%gen_up[aux]39:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(Alter, Ego).
;; 2
%gen_up[aux]39:1, parents:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(Alter, A).
;; 3
%gen_up[aux]39:1, parents:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(Alter, A).
;; 4
%gen_up[aux]39:1, parents:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(Alter, A).
;; 5
%gen_up[aux]39:1, parents:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(Alter, A).


genosaha(Alter, Ego) :-  mother(A, Ego), brother(Alter, A).
                     |   parents(A, Ego), crossups[aux]39(B, A), son(Alter, B).
{"FaFaFaSisDaSo_FaFaMoBroDaSo_FaFaSisSo_FaMoBroSo_FaMoFaSisSoSo_FaMoMoBroSoSo_MoBro_MoFaFaSisDaSo_MoFaMoBroDaSo_MoFaSisSo_MoMoBroSo_MoMoFaSisSoSo_MoMoMoBroSoSo"}
;; 0
%genosaha:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%genosaha:1, parents:0, crossups[aux]39:0, parents:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
 mother(A, Ego), mother(B, A), gender(C, B), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), gender(G, F), not(equal(C, G)), son(Alter, F).
;; 2
%genosaha:1, parents:0, crossups[aux]39:0, parents:1, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
 mother(A, Ego), father(B, A), gender(C, B), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), gender(G, F), not(equal(C, G)), son(Alter, F).
;; 3
%genosaha:1, parents:0, crossups[aux]39:1, parents:0, crossups[aux]39:0, parents:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoSo}  
 mother(A, Ego), mother(B, A), gender(C, B), mother(D, B), gender(E, D), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), gender(I, H), not(equal(E, I)), gender(J, K), child(K, H), not(equal(C, J)), son(Alter, K).
;; 4
%genosaha:1, parents:0, crossups[aux]39:1, parents:0, crossups[aux]39:0, parents:1, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoSo}  
 mother(A, Ego), mother(B, A), gender(C, B), father(D, B), gender(E, D), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), gender(I, H), not(equal(E, I)), gender(J, K), child(K, H), not(equal(C, J)), son(Alter, K).
;; 5
%genosaha:1, parents:0, crossups[aux]39:1, parents:1, crossups[aux]39:0, parents:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaSo}  
 mother(A, Ego), father(B, A), gender(C, B), mother(D, B), gender(E, D), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), gender(I, H), not(equal(E, I)), gender(J, K), child(K, H), not(equal(C, J)), son(Alter, K).
;; 6
%genosaha:1, parents:0, crossups[aux]39:1, parents:1, crossups[aux]39:0, parents:1, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaSo}  
 mother(A, Ego), father(B, A), gender(C, B), father(D, B), gender(E, D), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), gender(I, H), not(equal(E, I)), gender(J, K), child(K, H), not(equal(C, J)), son(Alter, K).
;; 7
%genosaha:1, parents:1, crossups[aux]39:0, parents:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
 father(A, Ego), mother(B, A), gender(C, B), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), gender(G, F), not(equal(C, G)), son(Alter, F).
;; 8
%genosaha:1, parents:1, crossups[aux]39:0, parents:1, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisSo}  
 father(A, Ego), father(B, A), gender(C, B), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), gender(G, F), not(equal(C, G)), son(Alter, F).
;; 9
%genosaha:1, parents:1, crossups[aux]39:1, parents:0, crossups[aux]39:0, parents:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoSo}  
 father(A, Ego), mother(B, A), gender(C, B), mother(D, B), gender(E, D), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), gender(I, H), not(equal(E, I)), gender(J, K), child(K, H), not(equal(C, J)), son(Alter, K).
;; 10
%genosaha:1, parents:1, crossups[aux]39:1, parents:0, crossups[aux]39:0, parents:1, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoSo}  
 father(A, Ego), mother(B, A), gender(C, B), father(D, B), gender(E, D), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), gender(I, H), not(equal(E, I)), gender(J, K), child(K, H), not(equal(C, J)), son(Alter, K).
;; 11
%genosaha:1, parents:1, crossups[aux]39:1, parents:1, crossups[aux]39:0, parents:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaSo}  
 father(A, Ego), father(B, A), gender(C, B), mother(D, B), gender(E, D), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), gender(I, H), not(equal(E, I)), gender(J, K), child(K, H), not(equal(C, J)), son(Alter, K).
;; 12
%genosaha:1, parents:1, crossups[aux]39:1, parents:1, crossups[aux]39:0, parents:1, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaSo}  
 father(A, Ego), father(B, A), gender(C, B), father(D, B), gender(E, D), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), gender(I, H), not(equal(E, I)), gender(J, K), child(K, H), not(equal(C, J)), son(Alter, K).


haga(Alter, Ego) :-  step_brother(Alter, Ego), younger(Alter, Ego).
                 |   brother(Alter, Ego), younger(Alter, Ego).
                 |   parallelups[aux]39(A, Ego), son(Alter, A), younger(Alter, Ego).
{"Bro_FaBroSo_FaFaBroSoSo_FaMoSisSoSo_MoFaBroDaSo_MoMoSisDaSo_MoSisSo_Stbro"}
;; 0
%haga:0, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C), younger(Alter, Ego).
;; 1
%haga:0, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C), younger(Alter, Ego).
;; 2
%haga:1, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).
;; 3
%haga:2, parallelups[aux]39:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), son(Alter, E), younger(Alter, Ego).
;; 4
%haga:2, parallelups[aux]39:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), son(Alter, E), younger(Alter, Ego).
;; 5
%haga:2, parallelups[aux]39:1, parents:0, parallelups[aux]39:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), son(Alter, H), younger(Alter, Ego).
;; 6
%haga:2, parallelups[aux]39:1, parents:0, parallelups[aux]39:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), son(Alter, H), younger(Alter, Ego).
;; 7
%haga:2, parallelups[aux]39:1, parents:1, parallelups[aux]39:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), son(Alter, H), younger(Alter, Ego).
;; 8
%haga:2, parallelups[aux]39:1, parents:1, parallelups[aux]39:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), son(Alter, H), younger(Alter, Ego).


hagananehose(Alter, Ego) :-  wife(A, Ego), father(Alter, A).
{"WiFa"}
;; 0
%hagananehose:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).


hageno(Alter, Ego) :-  father(A, Ego), sister(B, A), husband(Alter, B).
{"FaSisHu"}
;; 0
%hageno:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).


hagenoh(Alter, Ego) :-  mother(A, Ego), sister(B, A), husband(Alter, B).
                    |   step_father(Alter, Ego).
{"MoSisHu_Stfa"}
;; 0
%hagenoh:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 1
%hagenoh:1, step_father:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stfa}  
 father(A, Ego), mother(B, Ego), husband(Alter, B), not(equal(Alter, A)).


hahawa(Alter, Ego) :-  son(Alter, Ego).
                   |   male(Ego), gen[aux]39n1(A, Ego), male(A), son(Alter, A).
                   |   female(Ego), gen[aux]39(A, Ego), son(Alter, A).
{"BroSo_FaBroDaSo_FaBroSoSo_FaFaBroDaDaSo_FaFaBroDaSoSo_FaFaBroSoDaSo_FaFaBroSoSoSo_FaFaSisDaDaSo_FaFaSisDaSoSo_FaFaSisSoDaSo_FaFaSisSoSoSo_FaMoBroDaDaSo_FaMoBroDaSoSo_FaMoBroSoDaSo_FaMoBroSoSoSo_FaMoSisDaDaSo_FaMoSisDaSoSo_FaMoSisSoDaSo_FaMoSisSoSoSo_FaSisDaSo_FaSisSoSo_MoBroDaSo_MoBroSoSo_MoFaBroDaDaSo_MoFaBroDaSoSo_MoFaBroSoDaSo_MoFaBroSoSoSo_MoFaSisDaDaSo_MoFaSisDaSoSo_MoFaSisSoDaSo_MoFaSisSoSoSo_MoMoBroDaDaSo_MoMoBroDaSoSo_MoMoBroSoDaSo_MoMoBroSoSoSo_MoMoSisDaDaSo_MoMoSisDaSoSo_MoMoSisSoDaSo_MoMoSisSoSoSo_MoSisDaSo_MoSisSoSo_SisSo_So"}
;; 0
%hahawa:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 1
%hahawa:1, gen[aux]39n1:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 2
%hahawa:1, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), male(E), son(Alter, E).
;; 3
%hahawa:1, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), male(E), son(Alter, E).
;; 4
%hahawa:1, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), male(E), son(Alter, E).
;; 5
%hahawa:1, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), male(E), son(Alter, E).
;; 6
%hahawa:1, gen[aux]39n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), male(G), son(Alter, G).
;; 7
%hahawa:1, gen[aux]39n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), male(G), son(Alter, G).
;; 8
%hahawa:1, gen[aux]39n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), male(G), son(Alter, G).
;; 9
%hahawa:1, gen[aux]39n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), male(G), son(Alter, G).
;; 10
%hahawa:1, gen[aux]39n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), male(G), son(Alter, G).
;; 11
%hahawa:1, gen[aux]39n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), male(G), son(Alter, G).
;; 12
%hahawa:1, gen[aux]39n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), male(G), son(Alter, G).
;; 13
%hahawa:1, gen[aux]39n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), male(G), son(Alter, G).
;; 14
%hahawa:1, gen[aux]39n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), male(G), son(Alter, G).
;; 15
%hahawa:1, gen[aux]39n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), male(G), son(Alter, G).
;; 16
%hahawa:1, gen[aux]39n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), male(G), son(Alter, G).
;; 17
%hahawa:1, gen[aux]39n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), male(G), son(Alter, G).
;; 18
%hahawa:1, gen[aux]39n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), male(G), son(Alter, G).
;; 19
%hahawa:1, gen[aux]39n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), male(G), son(Alter, G).
;; 20
%hahawa:1, gen[aux]39n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), male(G), son(Alter, G).
;; 21
%hahawa:1, gen[aux]39n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), male(G), son(Alter, G).
;; 22
%hahawa:2, gen[aux]39:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 23
%hahawa:2, gen[aux]39:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 24
%hahawa:2, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 25
%hahawa:2, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 26
%hahawa:2, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 27
%hahawa:2, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 28
%hahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 29
%hahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 30
%hahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 31
%hahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 32
%hahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 33
%hahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 34
%hahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 35
%hahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 36
%hahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 37
%hahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 38
%hahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 39
%hahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 40
%hahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 41
%hahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 42
%hahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 43
%hahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 44
%hahawa:2, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 45
%hahawa:2, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 46
%hahawa:2, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 47
%hahawa:2, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 48
%hahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 49
%hahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 50
%hahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 51
%hahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 52
%hahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 53
%hahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 54
%hahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 55
%hahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 56
%hahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 57
%hahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 58
%hahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 59
%hahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 60
%hahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 61
%hahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 62
%hahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 63
%hahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).


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


hananehose(Alter, Ego) :-  daughter(A, Ego), husband(Alter, A).
                       |   siblings(A, Ego), daughter(B, A), husband(Alter, B).
{"BroDaHu_DaHu_SisDaHu"}
;; 0
%hananehose:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 daughter(A, Ego), husband(Alter, A).
;; 1
%hananehose:1, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), husband(Alter, D).
;; 2
%hananehose:1, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), husband(Alter, D).


hanoh(Alter, Ego) :-  step_son(Alter, Ego).
{"Stso"}
;; 0
%hanoh:0, step_son:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stso}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(Alter, B), son(Alter, A).


hayada(Alter, Ego) :-  gen_dn[aux]39(A, Ego), son(Alter, A).
                   |  [ext],  gen[aux]39(A, Ego), gen_dn[aux]39(B, A), son(Alter, B).
{"BroDaDaSo_BroDaSo_BroDaSoSo_BroSoDaSo_BroSoSo_BroSoSoSo_DaDaSo_DaSo_DaSoSo_FaBroDaDaDaSo_FaBroDaDaSo_FaBroDaDaSoSo_FaBroDaSoDaSo_FaBroDaSoSo_FaBroDaSoSoSo_FaBroSoDaDaSo_FaBroSoDaSo_FaBroSoDaSoSo_FaBroSoSoDaSo_FaBroSoSoSo_FaBroSoSoSoSo_FaFaBroDaDaDaSo_FaFaBroDaDaSoSo_FaFaBroDaSoDaSo_FaFaBroDaSoSoSo_FaFaBroSoDaDaSo_FaFaBroSoDaSoSo_FaFaBroSoSoDaSo_FaFaBroSoSoSoSo_FaFaSisDaDaDaSo_FaFaSisDaDaSoSo_FaFaSisDaSoDaSo_FaFaSisDaSoSoSo_FaFaSisSoDaDaSo_FaFaSisSoDaSoSo_FaFaSisSoSoDaSo_FaFaSisSoSoSoSo_FaMoBroDaDaDaSo_FaMoBroDaDaSoSo_FaMoBroDaSoDaSo_FaMoBroDaSoSoSo_FaMoBroSoDaDaSo_FaMoBroSoDaSoSo_FaMoBroSoSoDaSo_FaMoBroSoSoSoSo_FaMoSisDaDaDaSo_FaMoSisDaDaSoSo_FaMoSisDaSoDaSo_FaMoSisDaSoSoSo_FaMoSisSoDaDaSo_FaMoSisSoDaSoSo_FaMoSisSoSoDaSo_FaMoSisSoSoSoSo_FaSisDaDaDaSo_FaSisDaDaSo_FaSisDaDaSoSo_FaSisDaSoDaSo_FaSisDaSoSo_FaSisDaSoSoSo_FaSisSoDaDaSo_FaSisSoDaSo_FaSisSoDaSoSo_FaSisSoSoDaSo_FaSisSoSoSo_FaSisSoSoSoSo_MoBroDaDaDaSo_MoBroDaDaSo_MoBroDaDaSoSo_MoBroDaSoDaSo_MoBroDaSoSo_MoBroDaSoSoSo_MoBroSoDaDaSo_MoBroSoDaSo_MoBroSoDaSoSo_MoBroSoSoDaSo_MoBroSoSoSo_MoBroSoSoSoSo_MoFaBroDaDaDaSo_MoFaBroDaDaSoSo_MoFaBroDaSoDaSo_MoFaBroDaSoSoSo_MoFaBroSoDaDaSo_MoFaBroSoDaSoSo_MoFaBroSoSoDaSo_MoFaBroSoSoSoSo_MoFaSisDaDaDaSo_MoFaSisDaDaSoSo_MoFaSisDaSoDaSo_MoFaSisDaSoSoSo_MoFaSisSoDaDaSo_MoFaSisSoDaSoSo_MoFaSisSoSoDaSo_MoFaSisSoSoSoSo_MoMoBroDaDaDaSo_MoMoBroDaDaSoSo_MoMoBroDaSoDaSo_MoMoBroDaSoSoSo_MoMoBroSoDaDaSo_MoMoBroSoDaSoSo_MoMoBroSoSoDaSo_MoMoBroSoSoSoSo_MoMoSisDaDaDaSo_MoMoSisDaDaSoSo_MoMoSisDaSoDaSo_MoMoSisDaSoSoSo_MoMoSisSoDaDaSo_MoMoSisSoDaSoSo_MoMoSisSoSoDaSo_MoMoSisSoSoSoSo_MoSisDaDaDaSo_MoSisDaDaSo_MoSisDaDaSoSo_MoSisDaSoDaSo_MoSisDaSoSo_MoSisDaSoSoSo_MoSisSoDaDaSo_MoSisSoDaSo_MoSisSoDaSoSo_MoSisSoSoDaSo_MoSisSoSoSo_MoSisSoSoSoSo_SisDaDaSo_SisDaSo_SisDaSoSo_SisSoDaSo_SisSoSo_SisSoSoSo_SoDaSo_SoSo_SoSoSo"}
;; 0
%hayada:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).
;; 1
%hayada:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).
;; 2
%hayada:0, gen_dn[aux]39:1, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
 son(A, Ego), son(B, A), son(Alter, B).
;; 3
%hayada:0, gen_dn[aux]39:1, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
 son(A, Ego), daughter(B, A), son(Alter, B).
;; 4
%hayada:0, gen_dn[aux]39:1, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
 daughter(A, Ego), son(B, A), son(Alter, B).
;; 5
%hayada:0, gen_dn[aux]39:1, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
 daughter(A, Ego), daughter(B, A), son(Alter, B).
;; 6
%hayada:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(Alter, D).
;; 7
%hayada:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(Alter, D).
;; 8
%hayada:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, gen_dn[aux]39:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), son(Alter, E).
;; 9
%hayada:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, gen_dn[aux]39:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), son(Alter, E).
;; 10
%hayada:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, gen_dn[aux]39:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), son(Alter, E).
;; 11
%hayada:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, gen_dn[aux]39:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 12
%hayada:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(Alter, D).
;; 13
%hayada:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(Alter, D).
;; 14
%hayada:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, gen_dn[aux]39:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), son(Alter, E).
;; 15
%hayada:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, gen_dn[aux]39:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), son(Alter, E).
;; 16
%hayada:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, gen_dn[aux]39:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), son(Alter, E).
;; 17
%hayada:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, gen_dn[aux]39:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 18
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 19
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 20
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]39:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 21
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]39:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 22
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]39:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 23
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]39:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 24
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 25
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 26
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]39:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 27
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]39:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 28
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]39:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 29
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]39:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 30
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 31
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 32
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]39:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 33
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]39:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 34
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]39:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 35
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]39:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 36
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 37
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 38
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]39:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 39
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]39:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 40
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]39:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 41
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]39:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 42
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 43
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 44
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 45
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 46
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 47
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 48
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 49
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 50
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 51
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 52
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 53
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 54
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 55
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 56
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 57
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 58
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 59
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 60
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 61
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 62
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 63
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 64
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 65
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 66
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 67
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 68
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 69
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 70
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 71
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 72
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 73
%hayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 74
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 75
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 76
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]39:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 77
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]39:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 78
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]39:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 79
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]39:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 80
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 81
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 82
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]39:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 83
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]39:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 84
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]39:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 85
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]39:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 86
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 87
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 88
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]39:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 89
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]39:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 90
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]39:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 91
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]39:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 92
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 93
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 94
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]39:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 95
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]39:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 96
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]39:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 97
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]39:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 98
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 99
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 100
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 101
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 102
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 103
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 104
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 105
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 106
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 107
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 108
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 109
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 110
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 111
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 112
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 113
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 114
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 115
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 116
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 117
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 118
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 119
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 120
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 121
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 122
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 123
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 124
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 125
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 126
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 127
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 128
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 129
%hayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).


hayawada(Alter, Ego) :-  male(Ego), gen[aux]39n1(A, Ego), female(A), son(Alter, A).
{"FaBroDaSo_FaFaBroDaDaSo_FaFaBroSoDaSo_FaFaSisDaDaSo_FaFaSisSoDaSo_FaMoBroDaDaSo_FaMoBroSoDaSo_FaMoSisDaDaSo_FaMoSisSoDaSo_FaSisDaSo_MoBroDaSo_MoFaBroDaDaSo_MoFaBroSoDaSo_MoFaSisDaDaSo_MoFaSisSoDaSo_MoMoBroDaDaSo_MoMoBroSoDaSo_MoMoSisDaDaSo_MoMoSisSoDaSo_MoSisDaSo_SisSo"}
;; 0
%hayawada:0, gen[aux]39n1:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 1
%hayawada:0, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), female(E), son(Alter, E).
;; 2
%hayawada:0, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), female(E), son(Alter, E).
;; 3
%hayawada:0, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), female(E), son(Alter, E).
;; 4
%hayawada:0, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), female(E), son(Alter, E).
;; 5
%hayawada:0, gen[aux]39n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 6
%hayawada:0, gen[aux]39n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), son(Alter, G).
;; 7
%hayawada:0, gen[aux]39n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 8
%hayawada:0, gen[aux]39n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), son(Alter, G).
;; 9
%hayawada:0, gen[aux]39n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 10
%hayawada:0, gen[aux]39n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), son(Alter, G).
;; 11
%hayawada:0, gen[aux]39n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 12
%hayawada:0, gen[aux]39n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), son(Alter, G).
;; 13
%hayawada:0, gen[aux]39n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 14
%hayawada:0, gen[aux]39n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), son(Alter, G).
;; 15
%hayawada:0, gen[aux]39n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 16
%hayawada:0, gen[aux]39n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), son(Alter, G).
;; 17
%hayawada:0, gen[aux]39n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 18
%hayawada:0, gen[aux]39n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), son(Alter, G).
;; 19
%hayawada:0, gen[aux]39n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 20
%hayawada:0, gen[aux]39n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), son(Alter, G).


hocsawa(Alter, Ego) :-  husband(A, Ego), father(Alter, A).
                    |   husband(A, Ego), parents(B, A), father(Alter, B).
{"HuFa_HuFaFa_HuMoFa"}
;; 0
%hocsawa:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).
;; 1
%hocsawa:1, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoFa}  
 husband(A, Ego), mother(B, A), father(Alter, B).
;; 2
%hocsawa:1, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaFa}  
 husband(A, Ego), father(B, A), father(Alter, B).


hocsodaha(Alter, Ego) :-  gen_up[aux]39(A, Ego), father(Alter, A).
                      |   parents(A, Ego), gen_up[aux]39(B, A), gen[aux]39n1(Alter, B), male(Alter).
                      |   wife(A, Ego), parents(B, A), father(Alter, B).
{"FaFa_FaFaBro_FaFaFa_FaFaFaBro_FaFaFaBroSo_FaFaFaFaBroSo_FaFaFaFaSisSo_FaFaFaMoBroSo_FaFaFaMoSisSo_FaFaFaSisSo_FaFaMoBro_FaFaMoBroSo_FaFaMoFaBroSo_FaFaMoFaSisSo_FaFaMoMoBroSo_FaFaMoMoSisSo_FaFaMoSisSo_FaMoBro_FaMoFa_FaMoFaBro_FaMoFaBroSo_FaMoFaFaBroSo_FaMoFaFaSisSo_FaMoFaMoBroSo_FaMoFaMoSisSo_FaMoFaSisSo_FaMoMoBro_FaMoMoBroSo_FaMoMoFaBroSo_FaMoMoFaSisSo_FaMoMoMoBroSo_FaMoMoMoSisSo_FaMoMoSisSo_MoFa_MoFaBro_MoFaFa_MoFaFaBro_MoFaFaBroSo_MoFaFaFaBroSo_MoFaFaFaSisSo_MoFaFaMoBroSo_MoFaFaMoSisSo_MoFaFaSisSo_MoFaMoBro_MoFaMoBroSo_MoFaMoFaBroSo_MoFaMoFaSisSo_MoFaMoMoBroSo_MoFaMoMoSisSo_MoFaMoSisSo_MoMoBro_MoMoFa_MoMoFaBro_MoMoFaBroSo_MoMoFaFaBroSo_MoMoFaFaSisSo_MoMoFaMoBroSo_MoMoFaMoSisSo_MoMoFaSisSo_MoMoMoBro_MoMoMoBroSo_MoMoMoFaBroSo_MoMoMoFaSisSo_MoMoMoMoBroSo_MoMoMoMoSisSo_MoMoMoSisSo_WiFaFa_WiMoFa"}
;; 0
%hocsodaha:0, gen_up[aux]39:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 1
%hocsodaha:0, gen_up[aux]39:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).
;; 2
%hocsodaha:0, gen_up[aux]39:1, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
 mother(A, Ego), mother(B, A), father(Alter, B).
;; 3
%hocsodaha:0, gen_up[aux]39:1, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
 mother(A, Ego), father(B, A), father(Alter, B).
;; 4
%hocsodaha:0, gen_up[aux]39:1, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
 father(A, Ego), mother(B, A), father(Alter, B).
;; 5
%hocsodaha:0, gen_up[aux]39:1, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
 father(A, Ego), father(B, A), father(Alter, B).
;; 6
%hocsodaha:1, parents:0, gen_up[aux]39:0, parents:0, gen[aux]39n1:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 7
%hocsodaha:1, parents:0, gen_up[aux]39:0, parents:0, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 8
%hocsodaha:1, parents:0, gen_up[aux]39:0, parents:0, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 9
%hocsodaha:1, parents:0, gen_up[aux]39:0, parents:0, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 10
%hocsodaha:1, parents:0, gen_up[aux]39:0, parents:0, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 11
%hocsodaha:1, parents:0, gen_up[aux]39:0, parents:1, gen[aux]39n1:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 12
%hocsodaha:1, parents:0, gen_up[aux]39:0, parents:1, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 13
%hocsodaha:1, parents:0, gen_up[aux]39:0, parents:1, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 14
%hocsodaha:1, parents:0, gen_up[aux]39:0, parents:1, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 15
%hocsodaha:1, parents:0, gen_up[aux]39:0, parents:1, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 16
%hocsodaha:1, parents:0, gen_up[aux]39:1, parents:0, parents:0, gen[aux]39n1:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 17
%hocsodaha:1, parents:0, gen_up[aux]39:1, parents:0, parents:0, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 18
%hocsodaha:1, parents:0, gen_up[aux]39:1, parents:0, parents:0, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 19
%hocsodaha:1, parents:0, gen_up[aux]39:1, parents:0, parents:0, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 20
%hocsodaha:1, parents:0, gen_up[aux]39:1, parents:0, parents:0, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 21
%hocsodaha:1, parents:0, gen_up[aux]39:1, parents:0, parents:1, gen[aux]39n1:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaBro}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 22
%hocsodaha:1, parents:0, gen_up[aux]39:1, parents:0, parents:1, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoBroSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 23
%hocsodaha:1, parents:0, gen_up[aux]39:1, parents:0, parents:1, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoSisSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 24
%hocsodaha:1, parents:0, gen_up[aux]39:1, parents:0, parents:1, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaBroSo}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 25
%hocsodaha:1, parents:0, gen_up[aux]39:1, parents:0, parents:1, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaSisSo}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 26
%hocsodaha:1, parents:0, gen_up[aux]39:1, parents:1, parents:0, gen[aux]39n1:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoBro}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 27
%hocsodaha:1, parents:0, gen_up[aux]39:1, parents:1, parents:0, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 28
%hocsodaha:1, parents:0, gen_up[aux]39:1, parents:1, parents:0, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 29
%hocsodaha:1, parents:0, gen_up[aux]39:1, parents:1, parents:0, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 30
%hocsodaha:1, parents:0, gen_up[aux]39:1, parents:1, parents:0, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 31
%hocsodaha:1, parents:0, gen_up[aux]39:1, parents:1, parents:1, gen[aux]39n1:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaBro}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 32
%hocsodaha:1, parents:0, gen_up[aux]39:1, parents:1, parents:1, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoBroSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 33
%hocsodaha:1, parents:0, gen_up[aux]39:1, parents:1, parents:1, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoSisSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 34
%hocsodaha:1, parents:0, gen_up[aux]39:1, parents:1, parents:1, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaBroSo}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 35
%hocsodaha:1, parents:0, gen_up[aux]39:1, parents:1, parents:1, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaSisSo}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 36
%hocsodaha:1, parents:1, gen_up[aux]39:0, parents:0, gen[aux]39n1:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 37
%hocsodaha:1, parents:1, gen_up[aux]39:0, parents:0, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 38
%hocsodaha:1, parents:1, gen_up[aux]39:0, parents:0, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 39
%hocsodaha:1, parents:1, gen_up[aux]39:0, parents:0, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 40
%hocsodaha:1, parents:1, gen_up[aux]39:0, parents:0, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 41
%hocsodaha:1, parents:1, gen_up[aux]39:0, parents:1, gen[aux]39n1:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 42
%hocsodaha:1, parents:1, gen_up[aux]39:0, parents:1, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 43
%hocsodaha:1, parents:1, gen_up[aux]39:0, parents:1, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 44
%hocsodaha:1, parents:1, gen_up[aux]39:0, parents:1, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 45
%hocsodaha:1, parents:1, gen_up[aux]39:0, parents:1, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 46
%hocsodaha:1, parents:1, gen_up[aux]39:1, parents:0, parents:0, gen[aux]39n1:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 47
%hocsodaha:1, parents:1, gen_up[aux]39:1, parents:0, parents:0, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 48
%hocsodaha:1, parents:1, gen_up[aux]39:1, parents:0, parents:0, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 49
%hocsodaha:1, parents:1, gen_up[aux]39:1, parents:0, parents:0, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 50
%hocsodaha:1, parents:1, gen_up[aux]39:1, parents:0, parents:0, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 51
%hocsodaha:1, parents:1, gen_up[aux]39:1, parents:0, parents:1, gen[aux]39n1:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaBro}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 52
%hocsodaha:1, parents:1, gen_up[aux]39:1, parents:0, parents:1, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoBroSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 53
%hocsodaha:1, parents:1, gen_up[aux]39:1, parents:0, parents:1, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoSisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 54
%hocsodaha:1, parents:1, gen_up[aux]39:1, parents:0, parents:1, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaBroSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 55
%hocsodaha:1, parents:1, gen_up[aux]39:1, parents:0, parents:1, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaSisSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 56
%hocsodaha:1, parents:1, gen_up[aux]39:1, parents:1, parents:0, gen[aux]39n1:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoBro}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 57
%hocsodaha:1, parents:1, gen_up[aux]39:1, parents:1, parents:0, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoBroSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 58
%hocsodaha:1, parents:1, gen_up[aux]39:1, parents:1, parents:0, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoSisSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 59
%hocsodaha:1, parents:1, gen_up[aux]39:1, parents:1, parents:0, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaBroSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 60
%hocsodaha:1, parents:1, gen_up[aux]39:1, parents:1, parents:0, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaSisSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 61
%hocsodaha:1, parents:1, gen_up[aux]39:1, parents:1, parents:1, gen[aux]39n1:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaBro}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 62
%hocsodaha:1, parents:1, gen_up[aux]39:1, parents:1, parents:1, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoBroSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 63
%hocsodaha:1, parents:1, gen_up[aux]39:1, parents:1, parents:1, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoSisSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 64
%hocsodaha:1, parents:1, gen_up[aux]39:1, parents:1, parents:1, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaBroSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 65
%hocsodaha:1, parents:1, gen_up[aux]39:1, parents:1, parents:1, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaSisSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 66
%hocsodaha:2, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoFa}  
 wife(A, Ego), mother(B, A), father(Alter, B).
;; 67
%hocsodaha:2, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaFa}  
 wife(A, Ego), father(B, A), father(Alter, B).


kaga(Alter, Ego) :-  sister(Alter, Ego), younger(Alter, Ego).
                 |  [ext],  step_sister(Alter, Ego), younger(Alter, Ego).
                 |  [ext],  parallelups[aux]39(A, Ego), daughter(Alter, A), younger(Alter, Ego).
{"FaBroDa_FaFaBroSoDa_FaMoSisSoDa_MoFaBroDaDa_MoMoSisDaDa_MoSisDa_Sis_Stsis"}
;; 0
%kaga:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).
;; 1
%kaga:1, step_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
[ext],  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C), younger(Alter, Ego).
;; 2
%kaga:1, step_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
[ext],  father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C), younger(Alter, Ego).
;; 3
%kaga:2, parallelups[aux]39:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), daughter(Alter, E), younger(Alter, Ego).
;; 4
%kaga:2, parallelups[aux]39:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), daughter(Alter, E), younger(Alter, Ego).
;; 5
%kaga:2, parallelups[aux]39:1, parents:0, parallelups[aux]39:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), daughter(Alter, H), younger(Alter, Ego).
;; 6
%kaga:2, parallelups[aux]39:1, parents:0, parallelups[aux]39:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), daughter(Alter, H), younger(Alter, Ego).
;; 7
%kaga:2, parallelups[aux]39:1, parents:1, parallelups[aux]39:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), daughter(Alter, H), younger(Alter, Ego).
;; 8
%kaga:2, parallelups[aux]39:1, parents:1, parallelups[aux]39:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), daughter(Alter, H), younger(Alter, Ego).


kahawa(Alter, Ego) :-  daughter(Alter, Ego).
                   |   male(Ego), gen[aux]39n1(A, Ego), male(A), daughter(Alter, A).
                   |   female(Ego), gen[aux]39(A, Ego), daughter(Alter, A).
{"BroDa_Da_FaBroDaDa_FaBroSoDa_FaFaBroDaDaDa_FaFaBroDaSoDa_FaFaBroSoDaDa_FaFaBroSoSoDa_FaFaSisDaDaDa_FaFaSisDaSoDa_FaFaSisSoDaDa_FaFaSisSoSoDa_FaMoBroDaDaDa_FaMoBroDaSoDa_FaMoBroSoDaDa_FaMoBroSoSoDa_FaMoSisDaDaDa_FaMoSisDaSoDa_FaMoSisSoDaDa_FaMoSisSoSoDa_FaSisDaDa_FaSisSoDa_MoBroDaDa_MoBroSoDa_MoFaBroDaDaDa_MoFaBroDaSoDa_MoFaBroSoDaDa_MoFaBroSoSoDa_MoFaSisDaDaDa_MoFaSisDaSoDa_MoFaSisSoDaDa_MoFaSisSoSoDa_MoMoBroDaDaDa_MoMoBroDaSoDa_MoMoBroSoDaDa_MoMoBroSoSoDa_MoMoSisDaDaDa_MoMoSisDaSoDa_MoMoSisSoDaDa_MoMoSisSoSoDa_MoSisDaDa_MoSisSoDa_SisDa"}
;; 0
%kahawa:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).
;; 1
%kahawa:1, gen[aux]39n1:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 2
%kahawa:1, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), male(E), daughter(Alter, E).
;; 3
%kahawa:1, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), male(E), daughter(Alter, E).
;; 4
%kahawa:1, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), male(E), daughter(Alter, E).
;; 5
%kahawa:1, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), male(E), daughter(Alter, E).
;; 6
%kahawa:1, gen[aux]39n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), male(G), daughter(Alter, G).
;; 7
%kahawa:1, gen[aux]39n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), male(G), daughter(Alter, G).
;; 8
%kahawa:1, gen[aux]39n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), male(G), daughter(Alter, G).
;; 9
%kahawa:1, gen[aux]39n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), male(G), daughter(Alter, G).
;; 10
%kahawa:1, gen[aux]39n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), male(G), daughter(Alter, G).
;; 11
%kahawa:1, gen[aux]39n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), male(G), daughter(Alter, G).
;; 12
%kahawa:1, gen[aux]39n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), male(G), daughter(Alter, G).
;; 13
%kahawa:1, gen[aux]39n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), male(G), daughter(Alter, G).
;; 14
%kahawa:1, gen[aux]39n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), male(G), daughter(Alter, G).
;; 15
%kahawa:1, gen[aux]39n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), male(G), daughter(Alter, G).
;; 16
%kahawa:1, gen[aux]39n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), male(G), daughter(Alter, G).
;; 17
%kahawa:1, gen[aux]39n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), male(G), daughter(Alter, G).
;; 18
%kahawa:1, gen[aux]39n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), male(G), daughter(Alter, G).
;; 19
%kahawa:1, gen[aux]39n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), male(G), daughter(Alter, G).
;; 20
%kahawa:1, gen[aux]39n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), male(G), daughter(Alter, G).
;; 21
%kahawa:1, gen[aux]39n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), male(G), daughter(Alter, G).
;; 22
%kahawa:2, gen[aux]39:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 23
%kahawa:2, gen[aux]39:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 24
%kahawa:2, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 25
%kahawa:2, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 26
%kahawa:2, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 27
%kahawa:2, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 28
%kahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 29
%kahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 30
%kahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 31
%kahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 32
%kahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 33
%kahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 34
%kahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 35
%kahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 36
%kahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 37
%kahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 38
%kahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 39
%kahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 40
%kahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 41
%kahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 42
%kahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 43
%kahawa:2, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 44
%kahawa:2, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 45
%kahawa:2, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 46
%kahawa:2, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 47
%kahawa:2, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 48
%kahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 49
%kahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 50
%kahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 51
%kahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 52
%kahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 53
%kahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 54
%kahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 55
%kahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 56
%kahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 57
%kahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 58
%kahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 59
%kahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 60
%kahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 61
%kahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 62
%kahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 63
%kahawa:2, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).


kanoh(Alter, Ego) :-  step_daughter(Alter, Ego).
{"Stda"}
;; 0
%kanoh:0, step_daughter:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stda}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(Alter, B), daughter(Alter, A).


kasawa(Alter, Ego) :-  son(A, Ego), wife(Alter, A).
                   |  [ext],  siblings(A, Ego), son(B, A), wife(Alter, B).
{"BroSoWi_SisSoWi_SoWi"}
;; 0
%kasawa:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 son(A, Ego), wife(Alter, A).
;; 1
%kasawa:1, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroSoWi}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), wife(Alter, D).
;; 2
%kasawa:1, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), wife(Alter, D).


kayada(Alter, Ego) :-  gen_dn[aux]39(A, Ego), daughter(Alter, A).
                   |  [ext],  gen[aux]39(A, Ego), gen_dn[aux]39(B, A), daughter(Alter, B).
{"BroDaDa_BroDaDaDa_BroDaSoDa_BroSoDa_BroSoDaDa_BroSoSoDa_DaDa_DaDaDa_DaSoDa_FaBroDaDaDa_FaBroDaDaDaDa_FaBroDaDaSoDa_FaBroDaSoDa_FaBroDaSoDaDa_FaBroDaSoSoDa_FaBroSoDaDa_FaBroSoDaDaDa_FaBroSoDaSoDa_FaBroSoSoDa_FaBroSoSoDaDa_FaBroSoSoSoDa_FaFaBroDaDaDaDa_FaFaBroDaDaSoDa_FaFaBroDaSoDaDa_FaFaBroDaSoSoDa_FaFaBroSoDaDaDa_FaFaBroSoDaSoDa_FaFaBroSoSoDaDa_FaFaBroSoSoSoDa_FaFaSisDaDaDaDa_FaFaSisDaDaSoDa_FaFaSisDaSoDaDa_FaFaSisDaSoSoDa_FaFaSisSoDaDaDa_FaFaSisSoDaSoDa_FaFaSisSoSoDaDa_FaFaSisSoSoSoDa_FaMoBroDaDaDaDa_FaMoBroDaDaSoDa_FaMoBroDaSoDaDa_FaMoBroDaSoSoDa_FaMoBroSoDaDaDa_FaMoBroSoDaSoDa_FaMoBroSoSoDaDa_FaMoBroSoSoSoDa_FaMoSisDaDaDaDa_FaMoSisDaDaSoDa_FaMoSisDaSoDaDa_FaMoSisDaSoSoDa_FaMoSisSoDaDaDa_FaMoSisSoDaSoDa_FaMoSisSoSoDaDa_FaMoSisSoSoSoDa_FaSisDaDaDa_FaSisDaDaDaDa_FaSisDaDaSoDa_FaSisDaSoDa_FaSisDaSoDaDa_FaSisDaSoSoDa_FaSisSoDaDa_FaSisSoDaDaDa_FaSisSoDaSoDa_FaSisSoSoDa_FaSisSoSoDaDa_FaSisSoSoSoDa_MoBroDaDaDa_MoBroDaDaDaDa_MoBroDaDaSoDa_MoBroDaSoDa_MoBroDaSoDaDa_MoBroDaSoSoDa_MoBroSoDaDa_MoBroSoDaDaDa_MoBroSoDaSoDa_MoBroSoSoDa_MoBroSoSoDaDa_MoBroSoSoSoDa_MoFaBroDaDaDaDa_MoFaBroDaDaSoDa_MoFaBroDaSoDaDa_MoFaBroDaSoSoDa_MoFaBroSoDaDaDa_MoFaBroSoDaSoDa_MoFaBroSoSoDaDa_MoFaBroSoSoSoDa_MoFaSisDaDaDaDa_MoFaSisDaDaSoDa_MoFaSisDaSoDaDa_MoFaSisDaSoSoDa_MoFaSisSoDaDaDa_MoFaSisSoDaSoDa_MoFaSisSoSoDaDa_MoFaSisSoSoSoDa_MoMoBroDaDaDaDa_MoMoBroDaDaSoDa_MoMoBroDaSoDaDa_MoMoBroDaSoSoDa_MoMoBroSoDaDaDa_MoMoBroSoDaSoDa_MoMoBroSoSoDaDa_MoMoBroSoSoSoDa_MoMoSisDaDaDaDa_MoMoSisDaDaSoDa_MoMoSisDaSoDaDa_MoMoSisDaSoSoDa_MoMoSisSoDaDaDa_MoMoSisSoDaSoDa_MoMoSisSoSoDaDa_MoMoSisSoSoSoDa_MoSisDaDaDa_MoSisDaDaDaDa_MoSisDaDaSoDa_MoSisDaSoDa_MoSisDaSoDaDa_MoSisDaSoSoDa_MoSisSoDaDa_MoSisSoDaDaDa_MoSisSoDaSoDa_MoSisSoSoDa_MoSisSoSoDaDa_MoSisSoSoSoDa_SisDaDa_SisDaDaDa_SisDaSoDa_SisSoDa_SisSoDaDa_SisSoSoDa_SoDa_SoDaDa_SoSoDa"}
;; 0
%kayada:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).
;; 1
%kayada:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).
;; 2
%kayada:0, gen_dn[aux]39:1, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
 son(A, Ego), son(B, A), daughter(Alter, B).
;; 3
%kayada:0, gen_dn[aux]39:1, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
 son(A, Ego), daughter(B, A), daughter(Alter, B).
;; 4
%kayada:0, gen_dn[aux]39:1, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
 daughter(A, Ego), son(B, A), daughter(Alter, B).
;; 5
%kayada:0, gen_dn[aux]39:1, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
 daughter(A, Ego), daughter(B, A), daughter(Alter, B).
;; 6
%kayada:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(Alter, D).
;; 7
%kayada:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(Alter, D).
;; 8
%kayada:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, gen_dn[aux]39:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), daughter(Alter, E).
;; 9
%kayada:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, gen_dn[aux]39:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 10
%kayada:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, gen_dn[aux]39:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 11
%kayada:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, gen_dn[aux]39:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), daughter(Alter, E).
;; 12
%kayada:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(Alter, D).
;; 13
%kayada:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(Alter, D).
;; 14
%kayada:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, gen_dn[aux]39:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), daughter(Alter, E).
;; 15
%kayada:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, gen_dn[aux]39:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 16
%kayada:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, gen_dn[aux]39:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 17
%kayada:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, gen_dn[aux]39:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), daughter(Alter, E).
;; 18
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 19
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 20
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]39:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 21
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]39:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 22
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]39:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 23
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]39:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 24
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 25
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 26
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]39:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 27
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]39:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 28
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]39:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 29
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]39:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 30
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 31
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 32
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]39:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 33
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]39:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 34
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]39:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 35
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]39:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 36
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 37
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 38
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]39:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 39
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]39:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 40
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]39:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 41
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]39:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 42
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 43
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 44
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 45
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 46
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 47
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 48
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 49
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 50
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 51
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 52
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 53
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 54
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 55
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 56
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 57
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 58
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 59
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 60
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 61
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 62
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 63
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 64
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 65
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 66
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 67
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 68
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 69
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 70
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 71
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 72
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 73
%kayada:1, gen[aux]39:1, parents:0, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 74
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 75
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 76
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]39:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 77
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]39:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 78
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]39:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 79
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, gen_dn[aux]39:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 80
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 81
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 82
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]39:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 83
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]39:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 84
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]39:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 85
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, gen_dn[aux]39:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 86
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 87
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 88
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]39:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 89
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]39:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 90
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]39:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 91
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, gen_dn[aux]39:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 92
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 93
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 94
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]39:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 95
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]39:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 96
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]39:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 97
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, gen_dn[aux]39:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 98
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 99
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 100
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 101
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 102
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 103
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 104
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 105
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 106
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 107
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 108
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 109
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 110
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 111
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 112
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 113
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:0, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 114
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 115
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 116
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 117
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 118
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 119
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 120
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 121
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:0, brother:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 122
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 123
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 124
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 125
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:0, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 126
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 127
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:0, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 128
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 129
%kayada:1, gen[aux]39:1, parents:1, gen[aux]39:1, parents:1, gen[aux]39:0, siblings:1, sister:0, sibling:0, children:1, children:1, gen_dn[aux]39:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).


kayawada(Alter, Ego) :-  male(Ego), gen[aux]39n1(A, Ego), female(A), daughter(Alter, A).
{"FaBroDaDa_FaFaBroDaDaDa_FaFaBroSoDaDa_FaFaSisDaDaDa_FaFaSisSoDaDa_FaMoBroDaDaDa_FaMoBroSoDaDa_FaMoSisDaDaDa_FaMoSisSoDaDa_FaSisDaDa_MoBroDaDa_MoFaBroDaDaDa_MoFaBroSoDaDa_MoFaSisDaDaDa_MoFaSisSoDaDa_MoMoBroDaDaDa_MoMoBroSoDaDa_MoMoSisDaDaDa_MoMoSisSoDaDa_MoSisDaDa_SisDa"}
;; 0
%kayawada:0, gen[aux]39n1:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 1
%kayawada:0, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), female(E), daughter(Alter, E).
;; 2
%kayawada:0, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), female(E), daughter(Alter, E).
;; 3
%kayawada:0, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), female(E), daughter(Alter, E).
;; 4
%kayawada:0, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), female(E), daughter(Alter, E).
;; 5
%kayawada:0, gen[aux]39n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 6
%kayawada:0, gen[aux]39n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), daughter(Alter, G).
;; 7
%kayawada:0, gen[aux]39n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 8
%kayawada:0, gen[aux]39n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), daughter(Alter, G).
;; 9
%kayawada:0, gen[aux]39n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 10
%kayawada:0, gen[aux]39n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), daughter(Alter, G).
;; 11
%kayawada:0, gen[aux]39n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 12
%kayawada:0, gen[aux]39n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), daughter(Alter, G).
;; 13
%kayawada:0, gen[aux]39n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 14
%kayawada:0, gen[aux]39n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), daughter(Alter, G).
;; 15
%kayawada:0, gen[aux]39n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 16
%kayawada:0, gen[aux]39n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), daughter(Alter, G).
;; 17
%kayawada:0, gen[aux]39n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 18
%kayawada:0, gen[aux]39n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), daughter(Alter, G).
;; 19
%kayawada:0, gen[aux]39n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 20
%kayawada:0, gen[aux]39n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), daughter(Alter, G).


kuhjeah(Alter, Ego) :-  brother(Alter, Ego), elder(Alter, Ego).
                    |  [ext],  step_brother(Alter, Ego), elder(Alter, Ego).
                    |  [ext],  parallelups[aux]39(A, Ego), son(Alter, A), elder(Alter, Ego).
{"Bro_FaBroSo_FaFaBroSoSo_FaMoSisSoSo_MoFaBroDaSo_MoMoSisDaSo_MoSisSo_Stbro"}
;; 0
%kuhjeah:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%kuhjeah:1, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
[ext],  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C), elder(Alter, Ego).
;; 2
%kuhjeah:1, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
[ext],  father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C), elder(Alter, Ego).
;; 3
%kuhjeah:2, parallelups[aux]39:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), son(Alter, E), elder(Alter, Ego).
;; 4
%kuhjeah:2, parallelups[aux]39:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), son(Alter, E), elder(Alter, Ego).
;; 5
%kuhjeah:2, parallelups[aux]39:1, parents:0, parallelups[aux]39:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), son(Alter, H), elder(Alter, Ego).
;; 6
%kuhjeah:2, parallelups[aux]39:1, parents:0, parallelups[aux]39:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), son(Alter, H), elder(Alter, Ego).
;; 7
%kuhjeah:2, parallelups[aux]39:1, parents:1, parallelups[aux]39:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), son(Alter, H), elder(Alter, Ego).
;; 8
%kuhjeah:2, parallelups[aux]39:1, parents:1, parallelups[aux]39:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext],  father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), son(Alter, H), elder(Alter, Ego).


kuhneha(Alter, Ego) :-  father(Alter, Ego).
                    |   parents(A, Ego), parallelups[aux]39(B, A), son(Alter, B).
{"Fa_FaFaBroSo_FaFaFaBroSoSo_FaFaMoSisSoSo_FaMoFaBroDaSo_FaMoMoSisDaSo_FaMoSisSo_MoFaBroSo_MoFaFaBroSoSo_MoFaMoSisSoSo_MoMoFaBroDaSo_MoMoMoSisDaSo_MoMoSisSo"}
;; 0
%kuhneha:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).
;; 1
%kuhneha:1, parents:0, parallelups[aux]39:0, parents:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
 mother(A, Ego), mother(B, A), gender(C, B), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), gender(C, F), son(Alter, F).
;; 2
%kuhneha:1, parents:0, parallelups[aux]39:0, parents:1, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 mother(A, Ego), father(B, A), gender(C, B), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), gender(C, F), son(Alter, F).
;; 3
%kuhneha:1, parents:0, parallelups[aux]39:1, parents:0, parallelups[aux]39:0, parents:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaSo}  
 mother(A, Ego), mother(B, A), gender(C, B), mother(D, B), gender(E, D), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), gender(E, H), child(I, H), gender(C, I), son(Alter, I).
;; 4
%kuhneha:1, parents:0, parallelups[aux]39:1, parents:0, parallelups[aux]39:0, parents:1, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaSo}  
 mother(A, Ego), mother(B, A), gender(C, B), father(D, B), gender(E, D), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), gender(E, H), child(I, H), gender(C, I), son(Alter, I).
;; 5
%kuhneha:1, parents:0, parallelups[aux]39:1, parents:1, parallelups[aux]39:0, parents:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoSo}  
 mother(A, Ego), father(B, A), gender(C, B), mother(D, B), gender(E, D), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), gender(E, H), child(I, H), gender(C, I), son(Alter, I).
;; 6
%kuhneha:1, parents:0, parallelups[aux]39:1, parents:1, parallelups[aux]39:0, parents:1, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoSo}  
 mother(A, Ego), father(B, A), gender(C, B), father(D, B), gender(E, D), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), gender(E, H), child(I, H), gender(C, I), son(Alter, I).
;; 7
%kuhneha:1, parents:1, parallelups[aux]39:0, parents:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
 father(A, Ego), mother(B, A), gender(C, B), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), gender(C, F), son(Alter, F).
;; 8
%kuhneha:1, parents:1, parallelups[aux]39:0, parents:1, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
 father(A, Ego), father(B, A), gender(C, B), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), gender(C, F), son(Alter, F).
;; 9
%kuhneha:1, parents:1, parallelups[aux]39:1, parents:0, parallelups[aux]39:0, parents:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaSo}  
 father(A, Ego), mother(B, A), gender(C, B), mother(D, B), gender(E, D), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), gender(E, H), child(I, H), gender(C, I), son(Alter, I).
;; 10
%kuhneha:1, parents:1, parallelups[aux]39:1, parents:0, parallelups[aux]39:0, parents:1, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
 father(A, Ego), mother(B, A), gender(C, B), father(D, B), gender(E, D), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), gender(E, H), child(I, H), gender(C, I), son(Alter, I).
;; 11
%kuhneha:1, parents:1, parallelups[aux]39:1, parents:1, parallelups[aux]39:0, parents:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoSo}  
 father(A, Ego), father(B, A), gender(C, B), mother(D, B), gender(E, D), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), gender(E, H), child(I, H), gender(C, I), son(Alter, I).
;; 12
%kuhneha:1, parents:1, parallelups[aux]39:1, parents:1, parallelups[aux]39:0, parents:1, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
 father(A, Ego), father(B, A), gender(C, B), father(D, B), gender(E, D), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), gender(E, H), child(I, H), gender(C, I), son(Alter, I).


ocsawa(Alter, Ego) :-  husband(A, Ego), mother(Alter, A).
                   |   husband(A, Ego), parents(B, A), mother(Alter, B).
{"HuFaMo_HuMo_HuMoMo"}
;; 0
%ocsawa:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 1
%ocsawa:1, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoMo}  
 husband(A, Ego), mother(B, A), mother(Alter, B).
;; 2
%ocsawa:1, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaMo}  
 husband(A, Ego), father(B, A), mother(Alter, B).


ocsodaha(Alter, Ego) :-  gen_up[aux]39(A, Ego), mother(Alter, A).
                     |   parents(A, Ego), gen_up[aux]39(B, A), gen[aux]39n1(Alter, B), female(Alter).
                     |   wife(A, Ego), parents(B, A), mother(Alter, B).
{"FaFaFaBroDa_FaFaFaFaBroDa_FaFaFaFaSisDa_FaFaFaMoBroDa_FaFaFaMoSisDa_FaFaFaSis_FaFaFaSisDa_FaFaMo_FaFaMoBroDa_FaFaMoFaBroDa_FaFaMoFaSisDa_FaFaMoMoBroDa_FaFaMoMoSisDa_FaFaMoSis_FaFaMoSisDa_FaFaSis_FaMo_FaMoFaBroDa_FaMoFaFaBroDa_FaMoFaFaSisDa_FaMoFaMoBroDa_FaMoFaMoSisDa_FaMoFaSis_FaMoFaSisDa_FaMoMo_FaMoMoBroDa_FaMoMoFaBroDa_FaMoMoFaSisDa_FaMoMoMoBroDa_FaMoMoMoSisDa_FaMoMoSis_FaMoMoSisDa_FaMoSis_MoFaFaBroDa_MoFaFaFaBroDa_MoFaFaFaSisDa_MoFaFaMoBroDa_MoFaFaMoSisDa_MoFaFaSis_MoFaFaSisDa_MoFaMo_MoFaMoBroDa_MoFaMoFaBroDa_MoFaMoFaSisDa_MoFaMoMoBroDa_MoFaMoMoSisDa_MoFaMoSis_MoFaMoSisDa_MoFaSis_MoMo_MoMoFaBroDa_MoMoFaFaBroDa_MoMoFaFaSisDa_MoMoFaMoBroDa_MoMoFaMoSisDa_MoMoFaSis_MoMoFaSisDa_MoMoMo_MoMoMoBroDa_MoMoMoFaBroDa_MoMoMoFaSisDa_MoMoMoMoBroDa_MoMoMoMoSisDa_MoMoMoSis_MoMoMoSisDa_MoMoSis_WiFaMo_WiMoMo"}
;; 0
%ocsodaha:0, gen_up[aux]39:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 1
%ocsodaha:0, gen_up[aux]39:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).
;; 2
%ocsodaha:0, gen_up[aux]39:1, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
 mother(A, Ego), mother(B, A), mother(Alter, B).
;; 3
%ocsodaha:0, gen_up[aux]39:1, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
 mother(A, Ego), father(B, A), mother(Alter, B).
;; 4
%ocsodaha:0, gen_up[aux]39:1, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
 father(A, Ego), mother(B, A), mother(Alter, B).
;; 5
%ocsodaha:0, gen_up[aux]39:1, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
 father(A, Ego), father(B, A), mother(Alter, B).
;; 6
%ocsodaha:1, parents:0, gen_up[aux]39:0, parents:0, gen[aux]39n1:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 7
%ocsodaha:1, parents:0, gen_up[aux]39:0, parents:0, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 8
%ocsodaha:1, parents:0, gen_up[aux]39:0, parents:0, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 9
%ocsodaha:1, parents:0, gen_up[aux]39:0, parents:0, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 10
%ocsodaha:1, parents:0, gen_up[aux]39:0, parents:0, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 11
%ocsodaha:1, parents:0, gen_up[aux]39:0, parents:1, gen[aux]39n1:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 12
%ocsodaha:1, parents:0, gen_up[aux]39:0, parents:1, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 13
%ocsodaha:1, parents:0, gen_up[aux]39:0, parents:1, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 14
%ocsodaha:1, parents:0, gen_up[aux]39:0, parents:1, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 15
%ocsodaha:1, parents:0, gen_up[aux]39:0, parents:1, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 16
%ocsodaha:1, parents:0, gen_up[aux]39:1, parents:0, parents:0, gen[aux]39n1:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 17
%ocsodaha:1, parents:0, gen_up[aux]39:1, parents:0, parents:0, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoBroDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 18
%ocsodaha:1, parents:0, gen_up[aux]39:1, parents:0, parents:0, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 19
%ocsodaha:1, parents:0, gen_up[aux]39:1, parents:0, parents:0, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaBroDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 20
%ocsodaha:1, parents:0, gen_up[aux]39:1, parents:0, parents:0, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 21
%ocsodaha:1, parents:0, gen_up[aux]39:1, parents:0, parents:1, gen[aux]39n1:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaSis}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 22
%ocsodaha:1, parents:0, gen_up[aux]39:1, parents:0, parents:1, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoBroDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 23
%ocsodaha:1, parents:0, gen_up[aux]39:1, parents:0, parents:1, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoSisDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 24
%ocsodaha:1, parents:0, gen_up[aux]39:1, parents:0, parents:1, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaBroDa}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 25
%ocsodaha:1, parents:0, gen_up[aux]39:1, parents:0, parents:1, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaSisDa}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 26
%ocsodaha:1, parents:0, gen_up[aux]39:1, parents:1, parents:0, gen[aux]39n1:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoSis}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 27
%ocsodaha:1, parents:0, gen_up[aux]39:1, parents:1, parents:0, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 28
%ocsodaha:1, parents:0, gen_up[aux]39:1, parents:1, parents:0, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 29
%ocsodaha:1, parents:0, gen_up[aux]39:1, parents:1, parents:0, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 30
%ocsodaha:1, parents:0, gen_up[aux]39:1, parents:1, parents:0, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 31
%ocsodaha:1, parents:0, gen_up[aux]39:1, parents:1, parents:1, gen[aux]39n1:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaSis}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 32
%ocsodaha:1, parents:0, gen_up[aux]39:1, parents:1, parents:1, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoBroDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 33
%ocsodaha:1, parents:0, gen_up[aux]39:1, parents:1, parents:1, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoSisDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 34
%ocsodaha:1, parents:0, gen_up[aux]39:1, parents:1, parents:1, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaBroDa}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 35
%ocsodaha:1, parents:0, gen_up[aux]39:1, parents:1, parents:1, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaSisDa}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 36
%ocsodaha:1, parents:1, gen_up[aux]39:0, parents:0, gen[aux]39n1:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 37
%ocsodaha:1, parents:1, gen_up[aux]39:0, parents:0, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 38
%ocsodaha:1, parents:1, gen_up[aux]39:0, parents:0, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 39
%ocsodaha:1, parents:1, gen_up[aux]39:0, parents:0, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 40
%ocsodaha:1, parents:1, gen_up[aux]39:0, parents:0, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 41
%ocsodaha:1, parents:1, gen_up[aux]39:0, parents:1, gen[aux]39n1:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 42
%ocsodaha:1, parents:1, gen_up[aux]39:0, parents:1, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 43
%ocsodaha:1, parents:1, gen_up[aux]39:0, parents:1, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 44
%ocsodaha:1, parents:1, gen_up[aux]39:0, parents:1, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 45
%ocsodaha:1, parents:1, gen_up[aux]39:0, parents:1, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 46
%ocsodaha:1, parents:1, gen_up[aux]39:1, parents:0, parents:0, gen[aux]39n1:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 47
%ocsodaha:1, parents:1, gen_up[aux]39:1, parents:0, parents:0, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoBroDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 48
%ocsodaha:1, parents:1, gen_up[aux]39:1, parents:0, parents:0, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 49
%ocsodaha:1, parents:1, gen_up[aux]39:1, parents:0, parents:0, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaBroDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 50
%ocsodaha:1, parents:1, gen_up[aux]39:1, parents:0, parents:0, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 51
%ocsodaha:1, parents:1, gen_up[aux]39:1, parents:0, parents:1, gen[aux]39n1:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaSis}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 52
%ocsodaha:1, parents:1, gen_up[aux]39:1, parents:0, parents:1, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoBroDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 53
%ocsodaha:1, parents:1, gen_up[aux]39:1, parents:0, parents:1, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoSisDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 54
%ocsodaha:1, parents:1, gen_up[aux]39:1, parents:0, parents:1, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaBroDa}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 55
%ocsodaha:1, parents:1, gen_up[aux]39:1, parents:0, parents:1, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaSisDa}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 56
%ocsodaha:1, parents:1, gen_up[aux]39:1, parents:1, parents:0, gen[aux]39n1:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoSis}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 57
%ocsodaha:1, parents:1, gen_up[aux]39:1, parents:1, parents:0, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoBroDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 58
%ocsodaha:1, parents:1, gen_up[aux]39:1, parents:1, parents:0, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoSisDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 59
%ocsodaha:1, parents:1, gen_up[aux]39:1, parents:1, parents:0, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaBroDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 60
%ocsodaha:1, parents:1, gen_up[aux]39:1, parents:1, parents:0, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaSisDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 61
%ocsodaha:1, parents:1, gen_up[aux]39:1, parents:1, parents:1, gen[aux]39n1:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaSis}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 62
%ocsodaha:1, parents:1, gen_up[aux]39:1, parents:1, parents:1, gen[aux]39n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoBroDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 63
%ocsodaha:1, parents:1, gen_up[aux]39:1, parents:1, parents:1, gen[aux]39n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoSisDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 64
%ocsodaha:1, parents:1, gen_up[aux]39:1, parents:1, parents:1, gen[aux]39n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaBroDa}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 65
%ocsodaha:1, parents:1, gen_up[aux]39:1, parents:1, parents:1, gen[aux]39n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaSisDa}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 66
%ocsodaha:2, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoMo}  
 wife(A, Ego), mother(B, A), mother(Alter, B).
;; 67
%ocsodaha:2, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaMo}  
 wife(A, Ego), father(B, A), mother(Alter, B).


ogananehose(Alter, Ego) :-  wife(A, Ego), mother(Alter, A).
{"WiMo"}
;; 0
%ogananehose:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).


parallelups[aux]39(Alter, Ego) :-  parents(A, Ego), gender(B, A), sibling(Alter, A), gender(B, Alter).
                               |   parents(A, Ego), gender(B, A), parallelups[aux]39(C, A), child(Alter, C), gender(B, Alter).
;; 0
%parallelups[aux]39:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(Alter, C), child(Alter, D), not(equal(Alter, A)), gender(B, Alter).
;; 1
%parallelups[aux]39:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(Alter, C), child(Alter, D), not(equal(Alter, A)), gender(B, Alter).
;; 2
%parallelups[aux]39:1, parents:0, parallelups[aux]39:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(Alter, G), gender(B, Alter).
;; 3
%parallelups[aux]39:1, parents:0, parallelups[aux]39:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(Alter, G), gender(B, Alter).
;; 4
%parallelups[aux]39:1, parents:1, parallelups[aux]39:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(Alter, G), gender(B, Alter).
;; 5
%parallelups[aux]39:1, parents:1, parallelups[aux]39:0, parents:1, sibling:0%
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


uhjeah(Alter, Ego) :-  sister(Alter, Ego), elder(Alter, Ego).
                   |  [ext],  step_sister(Alter, Ego), elder(Alter, Ego).
                   |  [ext],  parallelups[aux]39(A, Ego), daughter(Alter, A), elder(Alter, Ego).
{"FaBroDa_FaFaBroSoDa_FaMoSisSoDa_MoFaBroDaDa_MoMoSisDaDa_MoSisDa_Sis_Stsis"}
;; 0
%uhjeah:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).
;; 1
%uhjeah:1, step_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
[ext],  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C), elder(Alter, Ego).
;; 2
%uhjeah:1, step_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
[ext],  father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C), elder(Alter, Ego).
;; 3
%uhjeah:2, parallelups[aux]39:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), daughter(Alter, E), elder(Alter, Ego).
;; 4
%uhjeah:2, parallelups[aux]39:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), daughter(Alter, E), elder(Alter, Ego).
;; 5
%uhjeah:2, parallelups[aux]39:1, parents:0, parallelups[aux]39:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), daughter(Alter, H), elder(Alter, Ego).
;; 6
%uhjeah:2, parallelups[aux]39:1, parents:0, parallelups[aux]39:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), daughter(Alter, H), elder(Alter, Ego).
;; 7
%uhjeah:2, parallelups[aux]39:1, parents:1, parallelups[aux]39:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), daughter(Alter, H), elder(Alter, Ego).
;; 8
%uhjeah:2, parallelups[aux]39:1, parents:1, parallelups[aux]39:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), daughter(Alter, H), elder(Alter, Ego).


ungenoh(Alter, Ego) :-  father(A, Ego), brother(B, A), wife(Alter, B).
                    |   step_mother(Alter, Ego).
{"FaBroWi_Stmo"}
;; 0
%ungenoh:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 1
%ungenoh:1, step_mother:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stmo}  
 father(A, Ego), mother(B, Ego), wife(Alter, A), not(equal(Alter, B)).

