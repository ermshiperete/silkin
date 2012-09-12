;;  Horn Clause Representation of Tuscarora Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Tuscarora") (author, "L. H. Morgan") (date, "1871-01-01") (citation, "Lewis H. Morgan SYSTEMS OF CONSANGUINITY AND AFFINITY OF THE HUMAN FAMILY, 1871 (reprint 1997), University of Nebraska Press, Lincoln") 
(non_term, [aux], [eq], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, false) (address, false) (recursiveLevels, 2)
(overlaps, (ahkje, (kaga)), (ahkraje, (kaga)), (kaga, (ahkje, ahkraje)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

ackgara(Alter, Ego) :-  husband(A, Ego), brother(Alter, A).
                    |  [ext],  female(Ego), mother(A, Ego), sister(B, A), daughter(C, B), husband(Alter, C).
{"HuBro_MoSisDaHu"}
;; 0
%ackgara:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%ackgara:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E).


ackgareah(Alter, Ego) :-  husband(A, Ego), sister(Alter, A).
                      |   brother(A, Ego), wife(Alter, A).
                      |  [ext],  parents(A, Ego), siblings(B, A), son(C, B), wife(Alter, C).
{"BroWi_FaBroSoWi_FaSisSoWi_HuSis_MoBroSoWi_MoSisSoWi"}
;; 0
%ackgareah:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%ackgareah:1, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C).
;; 2
%ackgareah:2, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), wife(Alter, E).
;; 3
%ackgareah:2, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), wife(Alter, E).
;; 4
%ackgareah:2, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), wife(Alter, E).
;; 5
%ackgareah:2, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), wife(Alter, E).


ackgawnaah(Alter, Ego) :-  mother(A, Ego), brother(B, A), daughter(C, B), husband(Alter, C).
                       |   father(A, Ego), sister(B, A), daughter(C, B), husband(Alter, C).
{"FaSisDaHu_MoBroDaHu"}
;; 0
%ackgawnaah:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E).
;; 1
%ackgawnaah:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E).


ackgawnoah(Alter, Ego) :-  male(Ego), mother(A, Ego), sister(B, A), daughter(C, B), husband(Alter, C).
{"MoSisDaHu"}
;; 0
%ackgawnoah:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E).


ackgawwerio(Alter, Ego) :-  sister(A, Ego), husband(Alter, A).
{"SisHu"}
;; 0
%ackgawwerio:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).


ackgawwerioah(Alter, Ego) :-  wife(A, Ego), brother(Alter, A).
{"WiBro"}
;; 0
%ackgawwerioah:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


ackgownoah(Alter, Ego) :-  father(A, Ego), brother(B, A), daughter(C, B), husband(Alter, C).
{"FaBroDaHu"}
;; 0
%ackgownoah:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E).


ackwera(Alter, Ego) :-  step_father(Alter, Ego).
                    |  [ext],  parents(A, Ego), sister(B, A), husband(Alter, B).
{"FaSisHu_MoSisHu_Stfa"}
;; 0
%ackwera:0, step_father:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stfa}  
 father(A, Ego), mother(B, Ego), husband(Alter, B), not(equal(Alter, A)).
;; 1
%ackwera:1, parents:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 2
%ackwera:1, parents:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).


ahkgarasthar(Alter, Ego) :-  crossups[aux]52(A, Ego), children(Alter, A).
{"FaFaSisDaDa_FaFaSisDaSo_FaMoBroDaDa_FaMoBroDaSo_FaSisDa_FaSisSo_MoBroDa_MoBroSo_MoFaSisSoDa_MoFaSisSoSo_MoMoBroSoDa_MoMoBroSoSo"}
;; 0
%ahkgarasthar:0, crossups[aux]52:0, parents:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(F, E), not(equal(B, F)), son(Alter, E).
;; 1
%ahkgarasthar:0, crossups[aux]52:0, parents:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(F, E), not(equal(B, F)), daughter(Alter, E).
;; 2
%ahkgarasthar:0, crossups[aux]52:0, parents:1, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(F, E), not(equal(B, F)), son(Alter, E).
;; 3
%ahkgarasthar:0, crossups[aux]52:0, parents:1, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(F, E), not(equal(B, F)), daughter(Alter, E).
;; 4
%ahkgarasthar:0, crossups[aux]52:1, parents:0, crossups[aux]52:0, parents:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
 mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, J), child(J, G), not(equal(B, I)), son(Alter, J).
;; 5
%ahkgarasthar:0, crossups[aux]52:1, parents:0, crossups[aux]52:0, parents:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
 mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, J), child(J, G), not(equal(B, I)), daughter(Alter, J).
;; 6
%ahkgarasthar:0, crossups[aux]52:1, parents:0, crossups[aux]52:0, parents:1, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
 mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, J), child(J, G), not(equal(B, I)), son(Alter, J).
;; 7
%ahkgarasthar:0, crossups[aux]52:1, parents:0, crossups[aux]52:0, parents:1, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
 mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, J), child(J, G), not(equal(B, I)), daughter(Alter, J).
;; 8
%ahkgarasthar:0, crossups[aux]52:1, parents:1, crossups[aux]52:0, parents:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
 father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, J), child(J, G), not(equal(B, I)), son(Alter, J).
;; 9
%ahkgarasthar:0, crossups[aux]52:1, parents:1, crossups[aux]52:0, parents:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, J), child(J, G), not(equal(B, I)), daughter(Alter, J).
;; 10
%ahkgarasthar:0, crossups[aux]52:1, parents:1, crossups[aux]52:0, parents:1, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
 father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, J), child(J, G), not(equal(B, I)), son(Alter, J).
;; 11
%ahkgarasthar:0, crossups[aux]52:1, parents:1, crossups[aux]52:0, parents:1, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
 father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, J), child(J, G), not(equal(B, I)), daughter(Alter, J).


ahkje(Alter, Ego) :-  sister(Alter, Ego), elder(Alter, Ego).
                  |  [ext],  step_sister(Alter, Ego), elder(Alter, Ego).
                  |  [ext],  parallelups[aux]52(A, Ego), daughter(Alter, A), elder(Alter, Ego).
{"FaBroDa_FaFaBroSoDa_FaMoSisSoDa_MoFaBroDaDa_MoMoSisDaDa_MoSisDa_Sis_Stsis"}
;; 0
%ahkje:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).
;; 1
%ahkje:1, step_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
[ext],  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C), elder(Alter, Ego).
;; 2
%ahkje:1, step_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
[ext],  father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C), elder(Alter, Ego).
;; 3
%ahkje:2, parallelups[aux]52:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), daughter(Alter, E), elder(Alter, Ego).
;; 4
%ahkje:2, parallelups[aux]52:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), daughter(Alter, E), elder(Alter, Ego).
;; 5
%ahkje:2, parallelups[aux]52:1, parents:0, parallelups[aux]52:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), daughter(Alter, H), elder(Alter, Ego).
;; 6
%ahkje:2, parallelups[aux]52:1, parents:0, parallelups[aux]52:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), daughter(Alter, H), elder(Alter, Ego).
;; 7
%ahkje:2, parallelups[aux]52:1, parents:1, parallelups[aux]52:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), daughter(Alter, H), elder(Alter, Ego).
;; 8
%ahkje:2, parallelups[aux]52:1, parents:1, parallelups[aux]52:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), daughter(Alter, H), elder(Alter, Ego).


ahkkawrack(Alter, Ego) :-  father(A, Ego), gen[aux]52mf(Alter, A).
{"FaFaFaSisDaDa_FaFaSisDa_FaSis"}
;; 0
%ahkkawrack:0, gen[aux]52mf:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%ahkkawrack:0, gen[aux]52mf:1, gen[aux]52mf:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 2
%ahkkawrack:0, gen[aux]52mf:1, gen[aux]52mf:1, gen[aux]52mf:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).


ahkradonoreah(Alter, Ego) :-  mother(A, Ego), gen[aux]52fm(Alter, A).
{"MoBro_MoMoBroSo_MoMoMoBroSoSo"}
;; 0
%ahkradonoreah:0, gen[aux]52fm:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%ahkradonoreah:0, gen[aux]52fm:1, gen[aux]52fm:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 2
%ahkradonoreah:0, gen[aux]52fm:1, gen[aux]52fm:1, gen[aux]52fm:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).


ahkraje(Alter, Ego) :-  brother(Alter, Ego), elder(Alter, Ego).
                    |  [ext],  step_brother(Alter, Ego), elder(Alter, Ego).
                    |  [ext],  parallelups[aux]52(A, Ego), son(Alter, A), elder(Alter, Ego).
{"Bro_FaBroSo_FaFaBroSoSo_FaMoSisSoSo_MoFaBroDaSo_MoMoSisDaSo_MoSisSo_Stbro"}
;; 0
%ahkraje:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%ahkraje:1, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
[ext],  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C), elder(Alter, Ego).
;; 2
%ahkraje:1, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
[ext],  father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C), elder(Alter, Ego).
;; 3
%ahkraje:2, parallelups[aux]52:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), son(Alter, E), elder(Alter, Ego).
;; 4
%ahkraje:2, parallelups[aux]52:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), son(Alter, E), elder(Alter, Ego).
;; 5
%ahkraje:2, parallelups[aux]52:1, parents:0, parallelups[aux]52:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), son(Alter, H), elder(Alter, Ego).
;; 6
%ahkraje:2, parallelups[aux]52:1, parents:0, parallelups[aux]52:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), son(Alter, H), elder(Alter, Ego).
;; 7
%ahkraje:2, parallelups[aux]52:1, parents:1, parallelups[aux]52:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), son(Alter, H), elder(Alter, Ego).
;; 8
%ahkraje:2, parallelups[aux]52:1, parents:1, parallelups[aux]52:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext],  father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), son(Alter, H), elder(Alter, Ego).


ahkrasote(Alter, Ego) :-  gen_up[aux]52(A, Ego), father(Alter, A).
                      |  [ext],  gen_up[aux]52(A, Ego), parents(B, A), brother(Alter, B).
                      |  [ext],  parents(A, Ego), parents(B, A), parents(C, B), brother(D, C), son(Alter, D).
                      |  [ext],  wife(A, Ego), parents(B, A), father(Alter, B).
{"FaFa_FaFaBro_FaFaFa_FaFaFaBro_FaFaFaBroSo_FaFaMoBro_FaFaMoBroSo_FaMoBro_FaMoFa_FaMoFaBro_FaMoFaBroSo_FaMoMoBro_FaMoMoBroSo_MoFa_MoFaBro_MoFaFa_MoFaFaBro_MoFaFaBroSo_MoFaMoBro_MoFaMoBroSo_MoMoBro_MoMoFa_MoMoFaBro_MoMoFaBroSo_MoMoMoBro_MoMoMoBroSo_WiFaFa_WiMoFa"}
;; 0
%ahkrasote:0, gen_up[aux]52:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 1
%ahkrasote:0, gen_up[aux]52:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).
;; 2
%ahkrasote:0, gen_up[aux]52:1, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
 mother(A, Ego), mother(B, A), father(Alter, B).
;; 3
%ahkrasote:0, gen_up[aux]52:1, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
 mother(A, Ego), father(B, A), father(Alter, B).
;; 4
%ahkrasote:0, gen_up[aux]52:1, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
 father(A, Ego), mother(B, A), father(Alter, B).
;; 5
%ahkrasote:0, gen_up[aux]52:1, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
 father(A, Ego), father(B, A), father(Alter, B).
;; 6
%ahkrasote:1, gen_up[aux]52:0, parents:0, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 7
%ahkrasote:1, gen_up[aux]52:0, parents:0, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 8
%ahkrasote:1, gen_up[aux]52:0, parents:1, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 9
%ahkrasote:1, gen_up[aux]52:0, parents:1, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 10
%ahkrasote:1, gen_up[aux]52:1, parents:0, parents:0, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 11
%ahkrasote:1, gen_up[aux]52:1, parents:0, parents:0, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaBro}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 12
%ahkrasote:1, gen_up[aux]52:1, parents:0, parents:1, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 13
%ahkrasote:1, gen_up[aux]52:1, parents:0, parents:1, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaBro}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 14
%ahkrasote:1, gen_up[aux]52:1, parents:1, parents:0, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 15
%ahkrasote:1, gen_up[aux]52:1, parents:1, parents:0, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaBro}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 16
%ahkrasote:1, gen_up[aux]52:1, parents:1, parents:1, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 17
%ahkrasote:1, gen_up[aux]52:1, parents:1, parents:1, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaBro}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 18
%ahkrasote:2, parents:0, parents:0, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 19
%ahkrasote:2, parents:0, parents:0, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 20
%ahkrasote:2, parents:0, parents:1, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 21
%ahkrasote:2, parents:0, parents:1, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 22
%ahkrasote:2, parents:1, parents:0, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 23
%ahkrasote:2, parents:1, parents:0, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 24
%ahkrasote:2, parents:1, parents:1, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 25
%ahkrasote:2, parents:1, parents:1, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 26
%ahkrasote:3, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoFa}  
[ext],  wife(A, Ego), mother(B, A), father(Alter, B).
;; 27
%ahkrasote:3, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaFa}  
[ext],  wife(A, Ego), father(B, A), father(Alter, B).


ahkreah(Alter, Ego) :-  father(Alter, Ego).
                    |   father(A, Ego), gen[aux]52mm(Alter, A).
{"Fa_FaBro_FaFaBroSo_FaFaFaBroSoSo"}
;; 0
%ahkreah:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).
;; 1
%ahkreah:1, gen[aux]52mm:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%ahkreah:1, gen[aux]52mm:1, gen[aux]52mm:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 3
%ahkreah:1, gen[aux]52mm:1, gen[aux]52mm:1, gen[aux]52mm:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).


ahksote(Alter, Ego) :-  gen_up[aux]52(A, Ego), mother(Alter, A).
                    |  [ext],  gen_up[aux]52(A, Ego), parents(B, A), sister(Alter, B).
                    |  [ext],  parents(A, Ego), parents(B, A), parents(C, B), sister(D, C), daughter(Alter, D).
                    |  [ext],  wife(A, Ego), parents(B, A), mother(Alter, B).
{"FaFaFaSis_FaFaFaSisDa_FaFaMo_FaFaMoSis_FaFaMoSisDa_FaFaSis_FaMo_FaMoFaSis_FaMoFaSisDa_FaMoMo_FaMoMoSis_FaMoMoSisDa_FaMoSis_MoFaFaSis_MoFaFaSisDa_MoFaMo_MoFaMoSis_MoFaMoSisDa_MoFaSis_MoMo_MoMoFaSis_MoMoFaSisDa_MoMoMo_MoMoMoSis_MoMoMoSisDa_MoMoSis_WiFaMo_WiMoMo"}
;; 0
%ahksote:0, gen_up[aux]52:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 1
%ahksote:0, gen_up[aux]52:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).
;; 2
%ahksote:0, gen_up[aux]52:1, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
 mother(A, Ego), mother(B, A), mother(Alter, B).
;; 3
%ahksote:0, gen_up[aux]52:1, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
 mother(A, Ego), father(B, A), mother(Alter, B).
;; 4
%ahksote:0, gen_up[aux]52:1, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
 father(A, Ego), mother(B, A), mother(Alter, B).
;; 5
%ahksote:0, gen_up[aux]52:1, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
 father(A, Ego), father(B, A), mother(Alter, B).
;; 6
%ahksote:1, gen_up[aux]52:0, parents:0, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 7
%ahksote:1, gen_up[aux]52:0, parents:0, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 8
%ahksote:1, gen_up[aux]52:0, parents:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 9
%ahksote:1, gen_up[aux]52:0, parents:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 10
%ahksote:1, gen_up[aux]52:1, parents:0, parents:0, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 11
%ahksote:1, gen_up[aux]52:1, parents:0, parents:0, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaSis}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 12
%ahksote:1, gen_up[aux]52:1, parents:0, parents:1, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 13
%ahksote:1, gen_up[aux]52:1, parents:0, parents:1, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaSis}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 14
%ahksote:1, gen_up[aux]52:1, parents:1, parents:0, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 15
%ahksote:1, gen_up[aux]52:1, parents:1, parents:0, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaSis}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 16
%ahksote:1, gen_up[aux]52:1, parents:1, parents:1, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 17
%ahksote:1, gen_up[aux]52:1, parents:1, parents:1, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaSis}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 18
%ahksote:2, parents:0, parents:0, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 19
%ahksote:2, parents:0, parents:0, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 20
%ahksote:2, parents:0, parents:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 21
%ahksote:2, parents:0, parents:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 22
%ahksote:2, parents:1, parents:0, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 23
%ahksote:2, parents:1, parents:0, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 24
%ahksote:2, parents:1, parents:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 25
%ahksote:2, parents:1, parents:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 26
%ahksote:3, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoMo}  
[ext],  wife(A, Ego), mother(B, A), mother(Alter, B).
;; 27
%ahksote:3, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaMo}  
[ext],  wife(A, Ego), father(B, A), mother(Alter, B).


ahkthaf(Alter, Ego) :-  son(A, Ego), wife(Alter, A).
                    |  [ext],  siblings(A, Ego), son(B, A), wife(Alter, B).
{"BroSoWi_SisSoWi_SoWi"}
;; 0
%ahkthaf:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 son(A, Ego), wife(Alter, A).
;; 1
%ahkthaf:1, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroSoWi}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), wife(Alter, D).
;; 2
%ahkthaf:1, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), wife(Alter, D).


ahkwera(Alter, Ego) :-  step_mother(Alter, Ego).
                    |  [ext],  parents(A, Ego), brother(B, A), wife(Alter, B).
{"FaBroWi_MoBroWi_Stmo"}
;; 0
%ahkwera:0, step_mother:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stmo}  
 father(A, Ego), mother(B, Ego), wife(Alter, A), not(equal(Alter, B)).
;; 1
%ahkwera:1, parents:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 2
%ahkwera:1, parents:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


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


crossups[aux]52(Alter, Ego) :-  parents(A, Ego), gender(B, A), sibling(Alter, A), gender(C, Alter), not(equal(B, C)).
                            |   parents(A, Ego), gender(B, A), crossups[aux]52(C, A), gender(D, Alter), child(Alter, C), not(equal(B, D)).
;; 0
%crossups[aux]52:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(Alter, C), child(Alter, D), not(equal(Alter, A)), gender(E, Alter), not(equal(B, E)).
;; 1
%crossups[aux]52:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(Alter, C), child(Alter, D), not(equal(Alter, A)), gender(E, Alter), not(equal(B, E)).
;; 2
%crossups[aux]52:1, parents:0, crossups[aux]52:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, Alter), child(Alter, G), not(equal(B, I)).
;; 3
%crossups[aux]52:1, parents:0, crossups[aux]52:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, Alter), child(Alter, G), not(equal(B, I)).
;; 4
%crossups[aux]52:1, parents:1, crossups[aux]52:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, Alter), child(Alter, G), not(equal(B, I)).
;; 5
%crossups[aux]52:1, parents:1, crossups[aux]52:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), not(equal(D, H)), gender(I, Alter), child(Alter, G), not(equal(B, I)).


gen[aux]52(Alter, Ego) :-  siblings(Alter, Ego).
                       |   parents(A, Ego), gen[aux]52(B, A), children(Alter, B).
;; 0
%gen[aux]52:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%gen[aux]52:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 7
%gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 8
%gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 9
%gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 10
%gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 11
%gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 12
%gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 13
%gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 14
%gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 15
%gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 16
%gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 17
%gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 18
%gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 19
%gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 20
%gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 21
%gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 22
%gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 23
%gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 24
%gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 25
%gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 26
%gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 27
%gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 28
%gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 29
%gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 30
%gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 31
%gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 32
%gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 33
%gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 34
%gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 35
%gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 36
%gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 37
%gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 38
%gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 39
%gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 40
%gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 41
%gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).


gen[aux]52ff(Alter, Ego) :-  sister(Alter, Ego).
                         |   mother(A, Ego), gen[aux]52ff(B, A), daughter(Alter, B).
;; 0
%gen[aux]52ff:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%gen[aux]52ff:1, gen[aux]52ff:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 2
%gen[aux]52ff:1, gen[aux]52ff:1, gen[aux]52ff:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).


gen[aux]52fm(Alter, Ego) :-  brother(Alter, Ego).
                         |   mother(A, Ego), gen[aux]52fm(B, A), son(Alter, B).
;; 0
%gen[aux]52fm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%gen[aux]52fm:1, gen[aux]52fm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%gen[aux]52fm:1, gen[aux]52fm:1, gen[aux]52fm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).


gen[aux]52mf(Alter, Ego) :-  sister(Alter, Ego).
                         |   father(A, Ego), gen[aux]52mf(B, A), daughter(Alter, B).
;; 0
%gen[aux]52mf:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%gen[aux]52mf:1, gen[aux]52mf:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 2
%gen[aux]52mf:1, gen[aux]52mf:1, gen[aux]52mf:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).


gen[aux]52mm(Alter, Ego) :-  brother(Alter, Ego).
                         |   father(A, Ego), gen[aux]52mm(B, A), son(Alter, B).
;; 0
%gen[aux]52mm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%gen[aux]52mm:1, gen[aux]52mm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%gen[aux]52mm:1, gen[aux]52mm:1, gen[aux]52mm:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).


gen[aux]52n1(Alter, Ego) :-  sibling(Alter, Ego).
                         |   parents(A, Ego), siblings(B, A), child(Alter, B).
                         |   parents(A, Ego), parents(B, A), siblings(C, B), children(D, C), child(Alter, D).
;; 0
%gen[aux]52n1:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%gen[aux]52n1:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%gen[aux]52n1:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%gen[aux]52n1:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 4
%gen[aux]52n1:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 5
%gen[aux]52n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 6
%gen[aux]52n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 7
%gen[aux]52n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 8
%gen[aux]52n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 9
%gen[aux]52n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 10
%gen[aux]52n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 11
%gen[aux]52n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 12
%gen[aux]52n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 13
%gen[aux]52n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 14
%gen[aux]52n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 15
%gen[aux]52n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 16
%gen[aux]52n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 17
%gen[aux]52n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 18
%gen[aux]52n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 19
%gen[aux]52n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 20
%gen[aux]52n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).


gen_up[aux]52(Alter, Ego) :-  parents(Alter, Ego).
                          |   parents(A, Ego), parents(Alter, A).
;; 0
%gen_up[aux]52:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(Alter, Ego).
;; 1
%gen_up[aux]52:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(Alter, Ego).
;; 2
%gen_up[aux]52:1, parents:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(Alter, A).
;; 3
%gen_up[aux]52:1, parents:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(Alter, A).
;; 4
%gen_up[aux]52:1, parents:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(Alter, A).
;; 5
%gen_up[aux]52:1, parents:1, parents:1%
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


kaga(Alter, Ego) :-  siblings(Alter, Ego), younger(Alter, Ego).
                 |  [ext],  step_sister(Alter, Ego), younger(Alter, Ego).
                 |  [ext],  step_brother(Alter, Ego), younger(Alter, Ego).
                 |  [ext],  parallelups[aux]52(A, Ego), children(Alter, A), younger(Alter, Ego).
{"Bro_FaBroDa_FaBroSo_FaFaBroSoDa_FaFaBroSoSo_FaMoSisSoDa_FaMoSisSoSo_MoFaBroDaDa_MoFaBroDaSo_MoMoSisDaDa_MoMoSisDaSo_MoSisDa_MoSisSo_Sis_Stbro_Stsis"}
;; 0
%kaga:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).
;; 1
%kaga:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).
;; 2
%kaga:1, step_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
[ext],  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C), younger(Alter, Ego).
;; 3
%kaga:1, step_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
[ext],  father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C), younger(Alter, Ego).
;; 4
%kaga:2, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
[ext],  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C), younger(Alter, Ego).
;; 5
%kaga:2, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
[ext],  father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C), younger(Alter, Ego).
;; 6
%kaga:3, parallelups[aux]52:0, parents:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), son(Alter, E), younger(Alter, Ego).
;; 7
%kaga:3, parallelups[aux]52:0, parents:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), daughter(Alter, E), younger(Alter, Ego).
;; 8
%kaga:3, parallelups[aux]52:0, parents:1, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), son(Alter, E), younger(Alter, Ego).
;; 9
%kaga:3, parallelups[aux]52:0, parents:1, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), daughter(Alter, E), younger(Alter, Ego).
;; 10
%kaga:3, parallelups[aux]52:1, parents:0, parallelups[aux]52:0, parents:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), son(Alter, H), younger(Alter, Ego).
;; 11
%kaga:3, parallelups[aux]52:1, parents:0, parallelups[aux]52:0, parents:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), daughter(Alter, H), younger(Alter, Ego).
;; 12
%kaga:3, parallelups[aux]52:1, parents:0, parallelups[aux]52:0, parents:1, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), son(Alter, H), younger(Alter, Ego).
;; 13
%kaga:3, parallelups[aux]52:1, parents:0, parallelups[aux]52:0, parents:1, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), daughter(Alter, H), younger(Alter, Ego).
;; 14
%kaga:3, parallelups[aux]52:1, parents:1, parallelups[aux]52:0, parents:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), son(Alter, H), younger(Alter, Ego).
;; 15
%kaga:3, parallelups[aux]52:1, parents:1, parallelups[aux]52:0, parents:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), daughter(Alter, H), younger(Alter, Ego).
;; 16
%kaga:3, parallelups[aux]52:1, parents:1, parallelups[aux]52:0, parents:1, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext],  father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), son(Alter, H), younger(Alter, Ego).
;; 17
%kaga:3, parallelups[aux]52:1, parents:1, parallelups[aux]52:0, parents:1, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(H, G), gender(B, H), daughter(Alter, H), younger(Alter, Ego).


kawera(Alter, Ego) :-  step_son(Alter, Ego).
                   |   step_daughter(Alter, Ego).
{"Stda_Stso"}
;; 0
%kawera:0, step_son:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stso}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(Alter, B), son(Alter, A).
;; 1
%kawera:1, step_daughter:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stda}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(Alter, B), daughter(Alter, A).


kayanona(Alter, Ego) :-  children(Alter, Ego).
                     |  [ext],  gen[aux]52n1(A, Ego), gender(B, Ego), gender(B, A), children(Alter, A).
{"BroDa_BroSo_Da_FaBroDaDa_FaBroDaSo_FaBroSoDa_FaBroSoSo_FaFaBroDaDaDa_FaFaBroDaDaSo_FaFaBroDaSoDa_FaFaBroDaSoSo_FaFaBroSoDaDa_FaFaBroSoDaSo_FaFaBroSoSoDa_FaFaBroSoSoSo_FaFaSisDaDaDa_FaFaSisDaDaSo_FaFaSisDaSoDa_FaFaSisDaSoSo_FaFaSisSoDaDa_FaFaSisSoDaSo_FaFaSisSoSoDa_FaFaSisSoSoSo_FaMoBroDaDaDa_FaMoBroDaDaSo_FaMoBroDaSoDa_FaMoBroDaSoSo_FaMoBroSoDaDa_FaMoBroSoDaSo_FaMoBroSoSoDa_FaMoBroSoSoSo_FaMoSisDaDaDa_FaMoSisDaDaSo_FaMoSisDaSoDa_FaMoSisDaSoSo_FaMoSisSoDaDa_FaMoSisSoDaSo_FaMoSisSoSoDa_FaMoSisSoSoSo_FaSisDaDa_FaSisDaSo_FaSisSoDa_FaSisSoSo_MoBroDaDa_MoBroDaSo_MoBroSoDa_MoBroSoSo_MoFaBroDaDaDa_MoFaBroDaDaSo_MoFaBroDaSoDa_MoFaBroDaSoSo_MoFaBroSoDaDa_MoFaBroSoDaSo_MoFaBroSoSoDa_MoFaBroSoSoSo_MoFaSisDaDaDa_MoFaSisDaDaSo_MoFaSisDaSoDa_MoFaSisDaSoSo_MoFaSisSoDaDa_MoFaSisSoDaSo_MoFaSisSoSoDa_MoFaSisSoSoSo_MoMoBroDaDaDa_MoMoBroDaDaSo_MoMoBroDaSoDa_MoMoBroDaSoSo_MoMoBroSoDaDa_MoMoBroSoDaSo_MoMoBroSoSoDa_MoMoBroSoSoSo_MoMoSisDaDaDa_MoMoSisDaDaSo_MoMoSisDaSoDa_MoMoSisDaSoSo_MoMoSisSoDaDa_MoMoSisSoDaSo_MoMoSisSoSoDa_MoMoSisSoSoSo_MoSisDaDa_MoSisDaSo_MoSisSoDa_MoSisSoSo_SisDa_SisSo_So"}
;; 0
%kayanona:0, children:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 1
%kayanona:0, children:1%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).
;; 2
%kayanona:1, gen[aux]52n1:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(D, C), son(Alter, C).
;; 3
%kayanona:1, gen[aux]52n1:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(D, C), daughter(Alter, C).
;; 4
%kayanona:1, gen[aux]52n1:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), gender(F, Ego), gender(F, E), son(Alter, E).
;; 5
%kayanona:1, gen[aux]52n1:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), gender(F, Ego), gender(F, E), daughter(Alter, E).
;; 6
%kayanona:1, gen[aux]52n1:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), gender(F, Ego), gender(F, E), son(Alter, E).
;; 7
%kayanona:1, gen[aux]52n1:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), gender(F, Ego), gender(F, E), daughter(Alter, E).
;; 8
%kayanona:1, gen[aux]52n1:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), gender(F, Ego), gender(F, E), son(Alter, E).
;; 9
%kayanona:1, gen[aux]52n1:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), gender(F, Ego), gender(F, E), daughter(Alter, E).
;; 10
%kayanona:1, gen[aux]52n1:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), gender(F, Ego), gender(F, E), son(Alter, E).
;; 11
%kayanona:1, gen[aux]52n1:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), gender(F, Ego), gender(F, E), daughter(Alter, E).
;; 12
%kayanona:1, gen[aux]52n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 13
%kayanona:1, gen[aux]52n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 14
%kayanona:1, gen[aux]52n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 15
%kayanona:1, gen[aux]52n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 16
%kayanona:1, gen[aux]52n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 17
%kayanona:1, gen[aux]52n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 18
%kayanona:1, gen[aux]52n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 19
%kayanona:1, gen[aux]52n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 20
%kayanona:1, gen[aux]52n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 21
%kayanona:1, gen[aux]52n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 22
%kayanona:1, gen[aux]52n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 23
%kayanona:1, gen[aux]52n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 24
%kayanona:1, gen[aux]52n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 25
%kayanona:1, gen[aux]52n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 26
%kayanona:1, gen[aux]52n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 27
%kayanona:1, gen[aux]52n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 28
%kayanona:1, gen[aux]52n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 29
%kayanona:1, gen[aux]52n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 30
%kayanona:1, gen[aux]52n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 31
%kayanona:1, gen[aux]52n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 32
%kayanona:1, gen[aux]52n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 33
%kayanona:1, gen[aux]52n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 34
%kayanona:1, gen[aux]52n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 35
%kayanona:1, gen[aux]52n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 36
%kayanona:1, gen[aux]52n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 37
%kayanona:1, gen[aux]52n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 38
%kayanona:1, gen[aux]52n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 39
%kayanona:1, gen[aux]52n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 40
%kayanona:1, gen[aux]52n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 41
%kayanona:1, gen[aux]52n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 42
%kayanona:1, gen[aux]52n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 43
%kayanona:1, gen[aux]52n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 44
%kayanona:1, gen[aux]52n1:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(D, C), son(Alter, C).
;; 45
%kayanona:1, gen[aux]52n1:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(D, C), daughter(Alter, C).
;; 46
%kayanona:1, gen[aux]52n1:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), gender(F, Ego), gender(F, E), son(Alter, E).
;; 47
%kayanona:1, gen[aux]52n1:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), gender(F, Ego), gender(F, E), daughter(Alter, E).
;; 48
%kayanona:1, gen[aux]52n1:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), gender(F, Ego), gender(F, E), son(Alter, E).
;; 49
%kayanona:1, gen[aux]52n1:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), gender(F, Ego), gender(F, E), daughter(Alter, E).
;; 50
%kayanona:1, gen[aux]52n1:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), gender(F, Ego), gender(F, E), son(Alter, E).
;; 51
%kayanona:1, gen[aux]52n1:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), gender(F, Ego), gender(F, E), daughter(Alter, E).
;; 52
%kayanona:1, gen[aux]52n1:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), gender(F, Ego), gender(F, E), son(Alter, E).
;; 53
%kayanona:1, gen[aux]52n1:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), gender(F, Ego), gender(F, E), daughter(Alter, E).
;; 54
%kayanona:1, gen[aux]52n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 55
%kayanona:1, gen[aux]52n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 56
%kayanona:1, gen[aux]52n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 57
%kayanona:1, gen[aux]52n1:2, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 58
%kayanona:1, gen[aux]52n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 59
%kayanona:1, gen[aux]52n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 60
%kayanona:1, gen[aux]52n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 61
%kayanona:1, gen[aux]52n1:2, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 62
%kayanona:1, gen[aux]52n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 63
%kayanona:1, gen[aux]52n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 64
%kayanona:1, gen[aux]52n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 65
%kayanona:1, gen[aux]52n1:2, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 66
%kayanona:1, gen[aux]52n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 67
%kayanona:1, gen[aux]52n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 68
%kayanona:1, gen[aux]52n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 69
%kayanona:1, gen[aux]52n1:2, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 70
%kayanona:1, gen[aux]52n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 71
%kayanona:1, gen[aux]52n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 72
%kayanona:1, gen[aux]52n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 73
%kayanona:1, gen[aux]52n1:2, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 74
%kayanona:1, gen[aux]52n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 75
%kayanona:1, gen[aux]52n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 76
%kayanona:1, gen[aux]52n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 77
%kayanona:1, gen[aux]52n1:2, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 78
%kayanona:1, gen[aux]52n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 79
%kayanona:1, gen[aux]52n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 80
%kayanona:1, gen[aux]52n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 81
%kayanona:1, gen[aux]52n1:2, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 82
%kayanona:1, gen[aux]52n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 83
%kayanona:1, gen[aux]52n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 84
%kayanona:1, gen[aux]52n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), son(Alter, G).
;; 85
%kayanona:1, gen[aux]52n1:2, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), gender(H, Ego), gender(H, G), daughter(Alter, G).


kayanonaah(Alter, Ego) :-  female(Ego), parents(A, Ego), gen[aux]52(B, A), son(C, B), children(Alter, C).
{"FaBroSoDa_FaBroSoSo_FaFaBroDaSoDa_FaFaBroDaSoSo_FaFaBroSoSoDa_FaFaBroSoSoSo_FaFaFaBroDaDaSoDa_FaFaFaBroDaDaSoSo_FaFaFaBroDaSoSoDa_FaFaFaBroDaSoSoSo_FaFaFaBroSoDaSoDa_FaFaFaBroSoDaSoSo_FaFaFaBroSoSoSoDa_FaFaFaBroSoSoSoSo_FaFaFaSisDaDaSoDa_FaFaFaSisDaDaSoSo_FaFaFaSisDaSoSoDa_FaFaFaSisDaSoSoSo_FaFaFaSisSoDaSoDa_FaFaFaSisSoDaSoSo_FaFaFaSisSoSoSoDa_FaFaFaSisSoSoSoSo_FaFaMoBroDaDaSoDa_FaFaMoBroDaDaSoSo_FaFaMoBroDaSoSoDa_FaFaMoBroDaSoSoSo_FaFaMoBroSoDaSoDa_FaFaMoBroSoDaSoSo_FaFaMoBroSoSoSoDa_FaFaMoBroSoSoSoSo_FaFaMoSisDaDaSoDa_FaFaMoSisDaDaSoSo_FaFaMoSisDaSoSoDa_FaFaMoSisDaSoSoSo_FaFaMoSisSoDaSoDa_FaFaMoSisSoDaSoSo_FaFaMoSisSoSoSoDa_FaFaMoSisSoSoSoSo_FaFaSisDaSoDa_FaFaSisDaSoSo_FaFaSisSoSoDa_FaFaSisSoSoSo_FaMoBroDaSoDa_FaMoBroDaSoSo_FaMoBroSoSoDa_FaMoBroSoSoSo_FaMoFaBroDaDaSoDa_FaMoFaBroDaDaSoSo_FaMoFaBroDaSoSoDa_FaMoFaBroDaSoSoSo_FaMoFaBroSoDaSoDa_FaMoFaBroSoDaSoSo_FaMoFaBroSoSoSoDa_FaMoFaBroSoSoSoSo_FaMoFaSisDaDaSoDa_FaMoFaSisDaDaSoSo_FaMoFaSisDaSoSoDa_FaMoFaSisDaSoSoSo_FaMoFaSisSoDaSoDa_FaMoFaSisSoDaSoSo_FaMoFaSisSoSoSoDa_FaMoFaSisSoSoSoSo_FaMoMoBroDaDaSoDa_FaMoMoBroDaDaSoSo_FaMoMoBroDaSoSoDa_FaMoMoBroDaSoSoSo_FaMoMoBroSoDaSoDa_FaMoMoBroSoDaSoSo_FaMoMoBroSoSoSoDa_FaMoMoBroSoSoSoSo_FaMoMoSisDaDaSoDa_FaMoMoSisDaDaSoSo_FaMoMoSisDaSoSoDa_FaMoMoSisDaSoSoSo_FaMoMoSisSoDaSoDa_FaMoMoSisSoDaSoSo_FaMoMoSisSoSoSoDa_FaMoMoSisSoSoSoSo_FaMoSisDaSoDa_FaMoSisDaSoSo_FaMoSisSoSoDa_FaMoSisSoSoSo_FaSisSoDa_FaSisSoSo_MoBroSoDa_MoBroSoSo_MoFaBroDaSoDa_MoFaBroDaSoSo_MoFaBroSoSoDa_MoFaBroSoSoSo_MoFaFaBroDaDaSoDa_MoFaFaBroDaDaSoSo_MoFaFaBroDaSoSoDa_MoFaFaBroDaSoSoSo_MoFaFaBroSoDaSoDa_MoFaFaBroSoDaSoSo_MoFaFaBroSoSoSoDa_MoFaFaBroSoSoSoSo_MoFaFaSisDaDaSoDa_MoFaFaSisDaDaSoSo_MoFaFaSisDaSoSoDa_MoFaFaSisDaSoSoSo_MoFaFaSisSoDaSoDa_MoFaFaSisSoDaSoSo_MoFaFaSisSoSoSoDa_MoFaFaSisSoSoSoSo_MoFaMoBroDaDaSoDa_MoFaMoBroDaDaSoSo_MoFaMoBroDaSoSoDa_MoFaMoBroDaSoSoSo_MoFaMoBroSoDaSoDa_MoFaMoBroSoDaSoSo_MoFaMoBroSoSoSoDa_MoFaMoBroSoSoSoSo_MoFaMoSisDaDaSoDa_MoFaMoSisDaDaSoSo_MoFaMoSisDaSoSoDa_MoFaMoSisDaSoSoSo_MoFaMoSisSoDaSoDa_MoFaMoSisSoDaSoSo_MoFaMoSisSoSoSoDa_MoFaMoSisSoSoSoSo_MoFaSisDaSoDa_MoFaSisDaSoSo_MoFaSisSoSoDa_MoFaSisSoSoSo_MoMoBroDaSoDa_MoMoBroDaSoSo_MoMoBroSoSoDa_MoMoBroSoSoSo_MoMoFaBroDaDaSoDa_MoMoFaBroDaDaSoSo_MoMoFaBroDaSoSoDa_MoMoFaBroDaSoSoSo_MoMoFaBroSoDaSoDa_MoMoFaBroSoDaSoSo_MoMoFaBroSoSoSoDa_MoMoFaBroSoSoSoSo_MoMoFaSisDaDaSoDa_MoMoFaSisDaDaSoSo_MoMoFaSisDaSoSoDa_MoMoFaSisDaSoSoSo_MoMoFaSisSoDaSoDa_MoMoFaSisSoDaSoSo_MoMoFaSisSoSoSoDa_MoMoFaSisSoSoSoSo_MoMoMoBroDaDaSoDa_MoMoMoBroDaDaSoSo_MoMoMoBroDaSoSoDa_MoMoMoBroDaSoSoSo_MoMoMoBroSoDaSoDa_MoMoMoBroSoDaSoSo_MoMoMoBroSoSoSoDa_MoMoMoBroSoSoSoSo_MoMoMoSisDaDaSoDa_MoMoMoSisDaDaSoSo_MoMoMoSisDaSoSoDa_MoMoMoSisDaSoSoSo_MoMoMoSisSoDaSoDa_MoMoMoSisSoDaSoSo_MoMoMoSisSoSoSoDa_MoMoMoSisSoSoSoSo_MoMoSisDaSoDa_MoMoSisDaSoSo_MoMoSisSoSoDa_MoMoSisSoSoSo_MoSisSoDa_MoSisSoSo"}
;; 0
%kayanonaah:0, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 1
%kayanonaah:0, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 2
%kayanonaah:0, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 3
%kayanonaah:0, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 4
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 5
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 6
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 7
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 8
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 9
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 10
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 11
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 12
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoSoSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 13
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 14
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 15
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 16
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaSoSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 17
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 18
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 19
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 20
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoSoSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 21
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 22
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 23
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 24
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaSoSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 25
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 26
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 27
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 28
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoSoSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 29
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 30
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 31
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 32
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaSoSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 33
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 34
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 35
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 36
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoSoSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 37
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 38
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 39
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 40
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaSoSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 41
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 42
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 43
%kayanonaah:0, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 44
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 45
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 46
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 47
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 48
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 49
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 50
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 51
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 52
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoSoSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 53
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoSoSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 54
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 55
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 56
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaSoSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 57
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaSoSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 58
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 59
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 60
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoSoSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 61
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoSoSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 62
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 63
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 64
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSoSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 65
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSoSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 66
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 67
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 68
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoSoSoSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 69
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoSoSoDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 70
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 71
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 72
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaSoSoSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 73
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaSoSoDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 74
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 75
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 76
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoSoSoSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 77
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoSoSoDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 78
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 79
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 80
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaSoSoSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 81
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaSoSoDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 82
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 83
%kayanonaah:0, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 84
%kayanonaah:0, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 85
%kayanonaah:0, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 86
%kayanonaah:0, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 87
%kayanonaah:0, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 88
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 89
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 90
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 91
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 92
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 93
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 94
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 95
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 96
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 97
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 98
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoDaSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 99
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 100
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 101
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 102
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaDaSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 103
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 104
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 105
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 106
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoDaSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 107
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 108
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 109
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 110
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaDaSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 111
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 112
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 113
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 114
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoDaSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 115
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 116
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 117
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 118
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDaSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 119
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 120
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 121
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 122
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoDaSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 123
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 124
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 125
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 126
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaDaSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 127
%kayanonaah:0, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 128
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 129
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 130
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 131
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 132
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 133
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 134
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 135
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 136
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoSoSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 137
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 138
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoDaSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 139
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoDaSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 140
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaSoSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 141
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 142
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaDaSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 143
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaDaSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 144
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoSoSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 145
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 146
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoDaSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 147
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoDaSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 148
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaSoSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 149
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 150
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaDaSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 151
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaDaSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 152
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoSoSoSo}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 153
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 154
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoDaSoSo}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 155
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoDaSoDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 156
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaSoSoSo}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 157
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 158
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaDaSoSo}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 159
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaDaSoDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 160
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoSoSoSo}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 161
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 162
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoDaSoSo}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 163
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoDaSoDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 164
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaSoSoSo}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 165
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 166
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaDaSoSo}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 167
%kayanonaah:0, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaDaSoDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).


kayara(Alter, Ego) :-  children(A, Ego), children(Alter, A).
                   |  [ext],  gen[aux]52(A, Ego), children(B, A), children(Alter, B).
{"BroDaDa_BroDaSo_BroSoDa_BroSoSo_DaDa_DaSo_FaBroDaDaDa_FaBroDaDaSo_FaBroDaSoDa_FaBroDaSoSo_FaBroSoDaDa_FaBroSoDaSo_FaBroSoSoDa_FaBroSoSoSo_FaFaBroDaDaDaDa_FaFaBroDaDaDaSo_FaFaBroDaDaSoDa_FaFaBroDaDaSoSo_FaFaBroDaSoDaDa_FaFaBroDaSoDaSo_FaFaBroDaSoSoDa_FaFaBroDaSoSoSo_FaFaBroSoDaDaDa_FaFaBroSoDaDaSo_FaFaBroSoDaSoDa_FaFaBroSoDaSoSo_FaFaBroSoSoDaDa_FaFaBroSoSoDaSo_FaFaBroSoSoSoDa_FaFaBroSoSoSoSo_FaFaSisDaDaDaDa_FaFaSisDaDaDaSo_FaFaSisDaDaSoDa_FaFaSisDaDaSoSo_FaFaSisDaSoDaDa_FaFaSisDaSoDaSo_FaFaSisDaSoSoDa_FaFaSisDaSoSoSo_FaFaSisSoDaDaDa_FaFaSisSoDaDaSo_FaFaSisSoDaSoDa_FaFaSisSoDaSoSo_FaFaSisSoSoDaDa_FaFaSisSoSoDaSo_FaFaSisSoSoSoDa_FaFaSisSoSoSoSo_FaMoBroDaDaDaDa_FaMoBroDaDaDaSo_FaMoBroDaDaSoDa_FaMoBroDaDaSoSo_FaMoBroDaSoDaDa_FaMoBroDaSoDaSo_FaMoBroDaSoSoDa_FaMoBroDaSoSoSo_FaMoBroSoDaDaDa_FaMoBroSoDaDaSo_FaMoBroSoDaSoDa_FaMoBroSoDaSoSo_FaMoBroSoSoDaDa_FaMoBroSoSoDaSo_FaMoBroSoSoSoDa_FaMoBroSoSoSoSo_FaMoSisDaDaDaDa_FaMoSisDaDaDaSo_FaMoSisDaDaSoDa_FaMoSisDaDaSoSo_FaMoSisDaSoDaDa_FaMoSisDaSoDaSo_FaMoSisDaSoSoDa_FaMoSisDaSoSoSo_FaMoSisSoDaDaDa_FaMoSisSoDaDaSo_FaMoSisSoDaSoDa_FaMoSisSoDaSoSo_FaMoSisSoSoDaDa_FaMoSisSoSoDaSo_FaMoSisSoSoSoDa_FaMoSisSoSoSoSo_FaSisDaDaDa_FaSisDaDaSo_FaSisDaSoDa_FaSisDaSoSo_FaSisSoDaDa_FaSisSoDaSo_FaSisSoSoDa_FaSisSoSoSo_MoBroDaDaDa_MoBroDaDaSo_MoBroDaSoDa_MoBroDaSoSo_MoBroSoDaDa_MoBroSoDaSo_MoBroSoSoDa_MoBroSoSoSo_MoFaBroDaDaDaDa_MoFaBroDaDaDaSo_MoFaBroDaDaSoDa_MoFaBroDaDaSoSo_MoFaBroDaSoDaDa_MoFaBroDaSoDaSo_MoFaBroDaSoSoDa_MoFaBroDaSoSoSo_MoFaBroSoDaDaDa_MoFaBroSoDaDaSo_MoFaBroSoDaSoDa_MoFaBroSoDaSoSo_MoFaBroSoSoDaDa_MoFaBroSoSoDaSo_MoFaBroSoSoSoDa_MoFaBroSoSoSoSo_MoFaSisDaDaDaDa_MoFaSisDaDaDaSo_MoFaSisDaDaSoDa_MoFaSisDaDaSoSo_MoFaSisDaSoDaDa_MoFaSisDaSoDaSo_MoFaSisDaSoSoDa_MoFaSisDaSoSoSo_MoFaSisSoDaDaDa_MoFaSisSoDaDaSo_MoFaSisSoDaSoDa_MoFaSisSoDaSoSo_MoFaSisSoSoDaDa_MoFaSisSoSoDaSo_MoFaSisSoSoSoDa_MoFaSisSoSoSoSo_MoMoBroDaDaDaDa_MoMoBroDaDaDaSo_MoMoBroDaDaSoDa_MoMoBroDaDaSoSo_MoMoBroDaSoDaDa_MoMoBroDaSoDaSo_MoMoBroDaSoSoDa_MoMoBroDaSoSoSo_MoMoBroSoDaDaDa_MoMoBroSoDaDaSo_MoMoBroSoDaSoDa_MoMoBroSoDaSoSo_MoMoBroSoSoDaDa_MoMoBroSoSoDaSo_MoMoBroSoSoSoDa_MoMoBroSoSoSoSo_MoMoSisDaDaDaDa_MoMoSisDaDaDaSo_MoMoSisDaDaSoDa_MoMoSisDaDaSoSo_MoMoSisDaSoDaDa_MoMoSisDaSoDaSo_MoMoSisDaSoSoDa_MoMoSisDaSoSoSo_MoMoSisSoDaDaDa_MoMoSisSoDaDaSo_MoMoSisSoDaSoDa_MoMoSisSoDaSoSo_MoMoSisSoSoDaDa_MoMoSisSoSoDaSo_MoMoSisSoSoSoDa_MoMoSisSoSoSoSo_MoSisDaDaDa_MoSisDaDaSo_MoSisDaSoDa_MoSisDaSoSo_MoSisSoDaDa_MoSisSoDaSo_MoSisSoSoDa_MoSisSoSoSo_SisDaDa_SisDaSo_SisSoDa_SisSoSo_SoDa_SoSo"}
;; 0
%kayara:0, children:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).
;; 1
%kayara:0, children:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).
;; 2
%kayara:0, children:1, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).
;; 3
%kayara:0, children:1, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).
;; 4
%kayara:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(Alter, D).
;; 5
%kayara:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(Alter, D).
;; 6
%kayara:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(Alter, D).
;; 7
%kayara:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(Alter, D).
;; 8
%kayara:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(Alter, D).
;; 9
%kayara:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(Alter, D).
;; 10
%kayara:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(Alter, D).
;; 11
%kayara:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(Alter, D).
;; 12
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 13
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 14
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 15
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 16
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 17
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 18
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 19
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 20
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 21
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 22
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 23
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 24
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 25
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 26
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 27
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 28
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 29
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 30
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 31
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 32
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 33
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 34
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 35
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 36
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 37
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 38
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 39
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 40
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 41
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 42
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 43
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 44
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 45
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 46
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 47
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 48
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 49
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 50
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 51
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 52
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 53
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 54
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 55
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 56
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 57
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 58
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 59
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 60
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 61
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 62
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 63
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 64
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 65
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 66
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 67
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 68
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 69
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 70
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 71
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 72
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 73
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 74
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 75
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 76
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 77
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 78
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 79
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 80
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 81
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 82
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 83
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 84
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 85
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 86
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 87
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 88
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 89
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 90
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 91
%kayara:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 92
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 93
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 94
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 95
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 96
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 97
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 98
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 99
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 100
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 101
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 102
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 103
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 104
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 105
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 106
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 107
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 108
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 109
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 110
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 111
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 112
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 113
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 114
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 115
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 116
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 117
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 118
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 119
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 120
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 121
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 122
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 123
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 124
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 125
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 126
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 127
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 128
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 129
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 130
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 131
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 132
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 133
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 134
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 135
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 136
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 137
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 138
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 139
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 140
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 141
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 142
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 143
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 144
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 145
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 146
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 147
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 148
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 149
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 150
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 151
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 152
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 153
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 154
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 155
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 156
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 157
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 158
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 159
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 160
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 161
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 162
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 163
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 164
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 165
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 166
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 167
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 168
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 169
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 170
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 171
%kayara:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).


kayawana(Alter, Ego) :-  sibling(A, Ego), gender(B, Ego), gender(C, A), not(equal(B, C)), children(Alter, A).
                     |  [ext],  male(Ego), parents(A, Ego), gen[aux]52(B, A), daughter(C, B), children(Alter, C).
{"BroDa_BroSo_FaBroDaDa_FaBroDaSo_FaFaBroDaDaDa_FaFaBroDaDaSo_FaFaBroSoDaDa_FaFaBroSoDaSo_FaFaFaBroDaDaDaDa_FaFaFaBroDaDaDaSo_FaFaFaBroDaSoDaDa_FaFaFaBroDaSoDaSo_FaFaFaBroSoDaDaDa_FaFaFaBroSoDaDaSo_FaFaFaBroSoSoDaDa_FaFaFaBroSoSoDaSo_FaFaFaSisDaDaDaDa_FaFaFaSisDaDaDaSo_FaFaFaSisDaSoDaDa_FaFaFaSisDaSoDaSo_FaFaFaSisSoDaDaDa_FaFaFaSisSoDaDaSo_FaFaFaSisSoSoDaDa_FaFaFaSisSoSoDaSo_FaFaMoBroDaDaDaDa_FaFaMoBroDaDaDaSo_FaFaMoBroDaSoDaDa_FaFaMoBroDaSoDaSo_FaFaMoBroSoDaDaDa_FaFaMoBroSoDaDaSo_FaFaMoBroSoSoDaDa_FaFaMoBroSoSoDaSo_FaFaMoSisDaDaDaDa_FaFaMoSisDaDaDaSo_FaFaMoSisDaSoDaDa_FaFaMoSisDaSoDaSo_FaFaMoSisSoDaDaDa_FaFaMoSisSoDaDaSo_FaFaMoSisSoSoDaDa_FaFaMoSisSoSoDaSo_FaFaSisDaDaDa_FaFaSisDaDaSo_FaFaSisSoDaDa_FaFaSisSoDaSo_FaMoBroDaDaDa_FaMoBroDaDaSo_FaMoBroSoDaDa_FaMoBroSoDaSo_FaMoFaBroDaDaDaDa_FaMoFaBroDaDaDaSo_FaMoFaBroDaSoDaDa_FaMoFaBroDaSoDaSo_FaMoFaBroSoDaDaDa_FaMoFaBroSoDaDaSo_FaMoFaBroSoSoDaDa_FaMoFaBroSoSoDaSo_FaMoFaSisDaDaDaDa_FaMoFaSisDaDaDaSo_FaMoFaSisDaSoDaDa_FaMoFaSisDaSoDaSo_FaMoFaSisSoDaDaDa_FaMoFaSisSoDaDaSo_FaMoFaSisSoSoDaDa_FaMoFaSisSoSoDaSo_FaMoMoBroDaDaDaDa_FaMoMoBroDaDaDaSo_FaMoMoBroDaSoDaDa_FaMoMoBroDaSoDaSo_FaMoMoBroSoDaDaDa_FaMoMoBroSoDaDaSo_FaMoMoBroSoSoDaDa_FaMoMoBroSoSoDaSo_FaMoMoSisDaDaDaDa_FaMoMoSisDaDaDaSo_FaMoMoSisDaSoDaDa_FaMoMoSisDaSoDaSo_FaMoMoSisSoDaDaDa_FaMoMoSisSoDaDaSo_FaMoMoSisSoSoDaDa_FaMoMoSisSoSoDaSo_FaMoSisDaDaDa_FaMoSisDaDaSo_FaMoSisSoDaDa_FaMoSisSoDaSo_FaSisDaDa_FaSisDaSo_MoBroDaDa_MoBroDaSo_MoFaBroDaDaDa_MoFaBroDaDaSo_MoFaBroSoDaDa_MoFaBroSoDaSo_MoFaFaBroDaDaDaDa_MoFaFaBroDaDaDaSo_MoFaFaBroDaSoDaDa_MoFaFaBroDaSoDaSo_MoFaFaBroSoDaDaDa_MoFaFaBroSoDaDaSo_MoFaFaBroSoSoDaDa_MoFaFaBroSoSoDaSo_MoFaFaSisDaDaDaDa_MoFaFaSisDaDaDaSo_MoFaFaSisDaSoDaDa_MoFaFaSisDaSoDaSo_MoFaFaSisSoDaDaDa_MoFaFaSisSoDaDaSo_MoFaFaSisSoSoDaDa_MoFaFaSisSoSoDaSo_MoFaMoBroDaDaDaDa_MoFaMoBroDaDaDaSo_MoFaMoBroDaSoDaDa_MoFaMoBroDaSoDaSo_MoFaMoBroSoDaDaDa_MoFaMoBroSoDaDaSo_MoFaMoBroSoSoDaDa_MoFaMoBroSoSoDaSo_MoFaMoSisDaDaDaDa_MoFaMoSisDaDaDaSo_MoFaMoSisDaSoDaDa_MoFaMoSisDaSoDaSo_MoFaMoSisSoDaDaDa_MoFaMoSisSoDaDaSo_MoFaMoSisSoSoDaDa_MoFaMoSisSoSoDaSo_MoFaSisDaDaDa_MoFaSisDaDaSo_MoFaSisSoDaDa_MoFaSisSoDaSo_MoMoBroDaDaDa_MoMoBroDaDaSo_MoMoBroSoDaDa_MoMoBroSoDaSo_MoMoFaBroDaDaDaDa_MoMoFaBroDaDaDaSo_MoMoFaBroDaSoDaDa_MoMoFaBroDaSoDaSo_MoMoFaBroSoDaDaDa_MoMoFaBroSoDaDaSo_MoMoFaBroSoSoDaDa_MoMoFaBroSoSoDaSo_MoMoFaSisDaDaDaDa_MoMoFaSisDaDaDaSo_MoMoFaSisDaSoDaDa_MoMoFaSisDaSoDaSo_MoMoFaSisSoDaDaDa_MoMoFaSisSoDaDaSo_MoMoFaSisSoSoDaDa_MoMoFaSisSoSoDaSo_MoMoMoBroDaDaDaDa_MoMoMoBroDaDaDaSo_MoMoMoBroDaSoDaDa_MoMoMoBroDaSoDaSo_MoMoMoBroSoDaDaDa_MoMoMoBroSoDaDaSo_MoMoMoBroSoSoDaDa_MoMoMoBroSoSoDaSo_MoMoMoSisDaDaDaDa_MoMoMoSisDaDaDaSo_MoMoMoSisDaSoDaDa_MoMoMoSisDaSoDaSo_MoMoMoSisSoDaDaDa_MoMoMoSisSoDaDaSo_MoMoMoSisSoSoDaDa_MoMoMoSisSoSoDaSo_MoMoSisDaDaDa_MoMoSisDaDaSo_MoMoSisSoDaDa_MoMoSisSoDaSo_MoSisDaDa_MoSisDaSo_SisDa_SisSo"}
;; 0
%kayawana:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(E, C), not(equal(D, E)), son(Alter, C).
;; 1
%kayawana:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(E, C), not(equal(D, E)), daughter(Alter, C).
;; 2
%kayawana:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 3
%kayawana:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 4
%kayawana:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 5
%kayawana:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 6
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 7
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 8
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 9
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 10
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 11
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 12
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 13
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 14
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 15
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 16
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 17
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 18
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 19
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 20
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 21
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 22
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 23
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 24
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 25
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 26
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 27
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 28
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 29
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 30
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 31
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 32
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 33
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 34
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 35
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 36
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 37
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 38
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 39
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 40
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 41
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 42
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 43
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 44
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 45
%kayawana:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 46
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 47
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 48
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 49
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 50
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 51
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 52
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 53
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 54
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 55
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 56
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 57
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 58
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 59
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 60
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 61
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 62
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 63
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 64
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 65
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 66
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 67
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 68
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 69
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 70
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 71
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 72
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 73
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 74
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 75
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 76
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 77
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 78
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 79
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 80
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 81
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 82
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 83
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 84
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 85
%kayawana:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 86
%kayawana:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 87
%kayawana:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 88
%kayawana:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 89
%kayawana:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 90
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 91
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 92
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 93
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 94
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 95
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 96
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 97
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 98
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 99
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 100
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 101
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 102
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 103
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 104
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 105
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 106
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 107
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 108
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 109
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 110
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 111
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 112
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 113
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 114
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 115
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 116
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 117
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 118
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 119
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 120
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 121
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 122
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 123
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 124
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 125
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 126
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 127
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 128
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 129
%kayawana:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 130
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 131
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 132
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 133
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 134
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 135
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 136
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 137
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 138
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 139
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 140
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 141
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 142
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 143
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 144
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 145
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 146
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 147
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 148
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 149
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 150
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 151
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 152
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 153
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:0, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 154
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 155
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 156
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 157
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 158
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 159
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 160
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 161
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 162
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 163
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 164
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 165
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 166
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 167
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 168
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 169
%kayawana:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:1, parents:1, gen[aux]52:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 170
%kayawana:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(E, C), not(equal(D, E)), son(Alter, C).
;; 171
%kayawana:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(E, C), not(equal(D, E)), daughter(Alter, C).


ohna(Alter, Ego) :-  mother(Alter, Ego).
                 |   mother(A, Ego), gen[aux]52ff(Alter, A).
{"Mo_MoMoMoSisDaDa_MoMoSisDa_MoSis"}
;; 0
%ohna:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).
;; 1
%ohna:1, gen[aux]52ff:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%ohna:1, gen[aux]52ff:1, gen[aux]52ff:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 3
%ohna:1, gen[aux]52ff:1, gen[aux]52ff:1, gen[aux]52ff:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).


parallelups[aux]52(Alter, Ego) :-  parents(A, Ego), gender(B, A), sibling(Alter, A), gender(B, Alter).
                               |   parents(A, Ego), gender(B, A), parallelups[aux]52(C, A), child(Alter, C), gender(B, Alter).
;; 0
%parallelups[aux]52:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(Alter, C), child(Alter, D), not(equal(Alter, A)), gender(B, Alter).
;; 1
%parallelups[aux]52:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(Alter, C), child(Alter, D), not(equal(Alter, A)), gender(B, Alter).
;; 2
%parallelups[aux]52:1, parents:0, parallelups[aux]52:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(Alter, G), gender(B, Alter).
;; 3
%parallelups[aux]52:1, parents:0, parallelups[aux]52:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(Alter, G), gender(B, Alter).
;; 4
%parallelups[aux]52:1, parents:1, parallelups[aux]52:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(D, G), child(Alter, G), gender(B, Alter).
;; 5
%parallelups[aux]52:1, parents:1, parallelups[aux]52:0, parents:1, sibling:0%
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


wakdakga(Alter, Ego) :-  spice(Alter, Ego).
{"Hu_Wi"}
;; 0
%wakdakga:0, spice:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).
;; 1
%wakdakga:0, spice:1%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


yackgawwerioah(Alter, Ego) :-  wife(A, Ego), sister(Alter, A).
{"WiSis"}
;; 0
%yackgawwerioah:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


yakteheahtha(Alter, Ego) :-  daughter(A, Ego), husband(Alter, A).
                         |  [ext],  siblings(A, Ego), daughter(B, A), husband(Alter, B).
{"BroDaHu_DaHu_SisDaHu"}
;; 0
%yakteheahtha:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 daughter(A, Ego), husband(Alter, A).
;; 1
%yakteheahtha:1, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), husband(Alter, D).
;; 2
%yakteheahtha:1, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), husband(Alter, D).


yakteheatho(Alter, Ego) :-  wife(A, Ego), parents(Alter, A).
{"WiFa_WiMo"}
;; 0
%yakteheatho:0, parents:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).
;; 1
%yakteheatho:0, parents:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).


yathaf(Alter, Ego) :-  husband(A, Ego), gen_up[aux]52(Alter, A).
{"HuFa_HuFaFa_HuFaMo_HuMo_HuMoFa_HuMoMo"}
;; 0
%yathaf:0, gen_up[aux]52:0, parents:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 1
%yathaf:0, gen_up[aux]52:0, parents:1%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).
;; 2
%yathaf:0, gen_up[aux]52:1, parents:0, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoMo}  
 husband(A, Ego), mother(B, A), mother(Alter, B).
;; 3
%yathaf:0, gen_up[aux]52:1, parents:0, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoFa}  
 husband(A, Ego), mother(B, A), father(Alter, B).
;; 4
%yathaf:0, gen_up[aux]52:1, parents:1, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaMo}  
 husband(A, Ego), father(B, A), mother(Alter, B).
;; 5
%yathaf:0, gen_up[aux]52:1, parents:1, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaFa}  
 husband(A, Ego), father(B, A), father(Alter, B).

