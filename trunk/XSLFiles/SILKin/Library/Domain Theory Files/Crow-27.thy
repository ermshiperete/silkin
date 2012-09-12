;;  Horn Clause Representation of Crow-27 Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Crow-27") (author, "L. H. Morgan") (date, "1871-01-01") (citation, "Lewis H. Morgan SYSTEMS OF CONSANGUINITY AND AFFINITY OF THE HUMAN FAMILY, 1871 (reprint 1997), University of Nebraska Press, Lincoln") 
(non_term, [aux], [eq], sister, brother, sibling, brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, false) (address, false) (recursiveLevels, 2)
(overlaps, (ahha, (buspahea, menuphissaka)), (bachuka, (basana, menuphissaka, bazana, meeka)), (basakana, (ekea, mooaka, bosmeakunista)), (basana, (bachuka, bazana, meeka)), (bazana, (basana, menuphissaka)), (bosmeakunista, (basakana, mooaka)), (botsasa, (botsoka)), (botsoka, (botsasa)), (busbapeta, (nakmea)), (buspahea, (ahha, nakmea)), (ekea, (basakana)), (meeka, (basana, menuphissaka)), (menuphissaka, (ahha, bachuka, bazana, meeka)), (mooaka, (basakana, bosmeakunista)), (nakmea, (busbapeta, buspahea)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

ahha(Alter, Ego) :-  father(Alter, Ego).
                 |   father(A, Ego), brother[eq]1(Alter, A).
                 |   mother(A, Ego), sister[eq](B, A), husband(Alter, B).
                 |   father(A, Ego), sister[eq]1(B, A), husband(Alter, B).
                 |   husband(A, Ego), father(Alter, A).
{"Fa_FaBro_FaFaBroDaDaDaHu_FaFaBroDaDaDaSo_FaFaBroDaDaHu_FaFaBroDaDaSo_FaFaBroDaHu_FaFaBroDaSo_FaFaBroSo_FaFaFaBroSoDaHu_FaFaFaBroSoDaSo_FaFaFaBroSoSo_FaFaMoBroDaDaHu_FaFaMoBroDaDaSo_FaFaMoBroDaHu_FaFaMoBroDaSo_FaFaMoBroSo_FaFaMoMoBroSo_FaFaMoSisSoDaHu_FaFaMoSisSoDaSo_FaFaMoSisSoSo_FaFaMoStsisSoSo_FaMoBro_FaMoFaBroDaDaHu_FaMoFaBroDaDaSo_FaMoFaBroDaSo_FaMoFaBroSo_FaMoFaMoBroDaSo_FaMoMoBro_FaMoMoMoSisDaSo_FaMoMoSisDaDaHu_FaMoMoSisDaDaSo_FaMoMoSisDaSo_FaMoMoSisSo_FaMoSisDaDaDaHu_FaMoSisDaDaDaSo_FaMoSisDaDaHu_FaMoSisDaDaSo_FaMoSisDaHu_FaMoSisDaSo_FaMoSisSo_FaMoStsisSo_FaSisDaDaHu_FaSisDaDaSo_FaSisDaHu_FaSisDaSo_FaSisHu_FaSisSo_FaStbro_FaStsisDaDaHu_FaStsisDaDaSo_FaStsisDaHu_FaStsisDaSo_FaStsisHu_FaStsisSo_HuFa_MoFaBroDaHu_MoFaFaBroSoDaHu_MoFaMoBroDaHu_MoFaMoSisSoDaHu_MoMoFaBroDaDaHu_MoMoMoSisDaDaHu_MoMoSisDaHu_MoSisHu_MoStsisHu"}
;; 0
%ahha:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).
;; 1
%ahha:1, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%ahha:1, brother[eq]1:0, brother[eq]:1, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 3
%ahha:1, brother[eq]1:0, brother[eq]:2, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 4
%ahha:1, brother[eq]1:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 5
%ahha:1, brother[eq]1:0, brother[eq]:3, sister[eq]:9, step_sister:0%
 Lvl=1,  PC=9, S=2, Star=0,  {FaFaMoStsisSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), daughter(H, G), daughter(H, F), son(I, H), son(Alter, I).
;; 6
%ahha:1, brother[eq]1:0, brother[eq]:3, sister[eq]:9, step_sister:1%
 Lvl=1,  PC=9, S=2, Star=0,  {FaFaMoStsisSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), daughter(H, G), daughter(H, F), son(I, H), son(Alter, I).
;; 7
%ahha:1, brother[eq]1:0, brother[eq]:4, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 8
%ahha:1, brother[eq]1:0, brother[eq]:5, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoBroSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 9
%ahha:1, brother[eq]1:0, brother[eq]:6, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 10
%ahha:1, brother[eq]1:0, brother[eq]:6, sister[eq]:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).
;; 11
%ahha:1, brother[eq]1:0, brother[eq]:6, sister[eq]:4, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 12
%ahha:1, brother[eq]1:0, brother[eq]:6, sister[eq]:6, brother:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaMoBroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 13
%ahha:1, brother[eq]1:0, brother[eq]:6, sister[eq]:9, step_sister:0%
 Lvl=1,  PC=7, S=2, Star=0,  {FaMoStsisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(Alter, G).
;; 14
%ahha:1, brother[eq]1:0, brother[eq]:6, sister[eq]:9, step_sister:1%
 Lvl=1,  PC=7, S=2, Star=0,  {FaMoStsisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(Alter, G).
;; 15
%ahha:1, brother[eq]1:0, brother[eq]:7, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 16
%ahha:1, brother[eq]1:0, brother[eq]:8, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 17
%ahha:1, brother[eq]1:0, brother[eq]:9, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 18
%ahha:1, brother[eq]1:0, brother[eq]:10, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 19
%ahha:1, brother[eq]1:0, brother[eq]:11, sister:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 20
%ahha:1, brother[eq]1:0, brother[eq]:12, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 21
%ahha:1, brother[eq]1:0, brother[eq]:13, step_brother:0%
 Lvl=1,  PC=5, S=2, Star=0,  {FaStbro}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(Alter, E), son(Alter, D).
;; 22
%ahha:1, brother[eq]1:0, brother[eq]:13, step_brother:1%
 Lvl=1,  PC=5, S=2, Star=0,  {FaStbro}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(Alter, E), son(Alter, D).
;; 23
%ahha:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 24
%ahha:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 25
%ahha:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 26
%ahha:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 27
%ahha:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 28
%ahha:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 29
%ahha:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 30
%ahha:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 31
%ahha:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=6, S=2, Star=0,  {FaStsisSo}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(Alter, F).
;; 32
%ahha:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=6, S=2, Star=0,  {FaStsisSo}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(Alter, F).
;; 33
%ahha:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 34
%ahha:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 35
%ahha:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 36
%ahha:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 37
%ahha:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {FaStsisDaSo}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), daughter(G, F), son(Alter, G).
;; 38
%ahha:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {FaStsisDaSo}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), daughter(G, F), son(Alter, G).
;; 39
%ahha:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 40
%ahha:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 41
%ahha:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 42
%ahha:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {FaStsisDaDaSo}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), daughter(G, F), daughter(H, G), son(Alter, H).
;; 43
%ahha:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {FaStsisDaDaSo}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), daughter(G, F), daughter(H, G), son(Alter, H).
;; 44
%ahha:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 45
%ahha:2, sister[eq]:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoSisDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), husband(Alter, F).
;; 46
%ahha:2, sister[eq]:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoSisDaDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), husband(Alter, H).
;; 47
%ahha:2, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoFaBroDaDaHu}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), husband(Alter, H).
;; 48
%ahha:2, sister[eq]:4, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaBroDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), husband(Alter, F).
;; 49
%ahha:2, sister[eq]:5, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaFaBroSoDaHu}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), husband(Alter, H).
;; 50
%ahha:2, sister[eq]:6, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {MoFaMoBroDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), husband(Alter, G).
;; 51
%ahha:2, sister[eq]:8, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoSisSoDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), husband(Alter, H).
;; 52
%ahha:2, sister[eq]:9, step_sister:0%
 Lvl=1,  PC=5, S=3, Star=0,  {MoStsisHu}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), husband(Alter, F).
;; 53
%ahha:2, sister[eq]:9, step_sister:1%
 Lvl=1,  PC=5, S=3, Star=0,  {MoStsisHu}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), husband(Alter, F).
;; 54
%ahha:3, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 55
%ahha:3, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), husband(Alter, F).
;; 56
%ahha:3, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoSisDaDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), husband(Alter, H).
;; 57
%ahha:3, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoFaBroDaDaHu}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), husband(Alter, H).
;; 58
%ahha:3, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaBroDaHu}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), husband(Alter, F).
;; 59
%ahha:3, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaFaBroSoDaHu}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), husband(Alter, H).
;; 60
%ahha:3, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {FaFaMoBroDaHu}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), husband(Alter, G).
;; 61
%ahha:3, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoSisSoDaHu}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), husband(Alter, H).
;; 62
%ahha:3, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=1,  PC=5, S=3, Star=0,  {FaStsisHu}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), husband(Alter, F).
;; 63
%ahha:3, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=1,  PC=5, S=3, Star=0,  {FaStsisHu}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), husband(Alter, F).
;; 64
%ahha:3, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E).
;; 65
%ahha:3, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisDaDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), husband(Alter, G).
;; 66
%ahha:3, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroDaDaHu}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), husband(Alter, G).
;; 67
%ahha:3, sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoBroDaDaHu}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), husband(Alter, H).
;; 68
%ahha:3, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=6, S=3, Star=0,  {FaStsisDaHu}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), daughter(G, F), husband(Alter, G).
;; 69
%ahha:3, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=6, S=3, Star=0,  {FaStsisDaHu}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), daughter(G, F), husband(Alter, G).
;; 70
%ahha:3, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaDaHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), husband(Alter, F).
;; 71
%ahha:3, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisDaDaDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), husband(Alter, H).
;; 72
%ahha:3, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroDaDaDaHu}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), husband(Alter, H).
;; 73
%ahha:3, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=7, S=3, Star=0,  {FaStsisDaDaHu}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), daughter(G, F), daughter(H, G), husband(Alter, H).
;; 74
%ahha:3, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=7, S=3, Star=0,  {FaStsisDaDaHu}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), daughter(G, F), daughter(H, G), husband(Alter, H).
;; 75
%ahha:4%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).


bachena(Alter, Ego) :-  husband(Alter, Ego).
                    |   female(Ego), sister[eq](A, Ego), husband(Alter, A).
{"FaBroDaHu_FaFaBroSoDaHu_FaFaMoBroSoDaHu_FaMoBroDaHu_FaMoSisSoDaHu_Hu_MoFaBroDaDaHu_MoMoSisDaDaHu_MoSisDaHu_SisHu_StsisHu"}
;; 0
%bachena:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).
;; 1
%bachena:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).
;; 2
%bachena:1, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E).
;; 3
%bachena:1, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), husband(Alter, G).
;; 4
%bachena:1, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaDaHu}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), husband(Alter, G).
;; 5
%bachena:1, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E).
;; 6
%bachena:1, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoDaHu}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), husband(Alter, G).
;; 7
%bachena:1, sister[eq]:6, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoBroDaHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), husband(Alter, F).
;; 8
%bachena:1, sister[eq]:7, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoBroSoDaHu}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), husband(Alter, H).
;; 9
%bachena:1, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoDaHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), husband(Alter, G).
;; 10
%bachena:1, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=4, S=3, Star=0,  {StsisHu}  
 female(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), husband(Alter, E).
;; 11
%bachena:1, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=4, S=3, Star=0,  {StsisHu}  
 female(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), husband(Alter, E).


bachuka(Alter, Ego) :-  brother[eq](Alter, Ego), younger(Alter, Ego).
                    |   male(Ego), sister[eq](A, Ego), son(Alter, A).
{"Bro_FaBroDaSo_FaBroSo_FaFaBroSoDaSo_FaFaBroSoSo_FaFaMoBroSoDaSo_FaMoBroDaSo_FaMoBroSo_FaMoMoBroSo_FaMoSisSoDaSo_FaMoSisSoSo_FaMoStsisSoSo_MoBro_MoFaBroDaDaSo_MoFaBroDaSo_MoFaBroSo_MoFaMoBroDaSo_MoMoBro_MoMoMoSisDaSo_MoMoSisDaDaSo_MoMoSisDaSo_MoMoSisSo_MoSisDaSo_MoSisSo_MoStsisSo_SisSo_Stbro_StsisSo"}
;; 0
%bachuka:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).
;; 1
%bachuka:0, brother[eq]:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D), younger(Alter, Ego).
;; 2
%bachuka:0, brother[eq]:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 3
%bachuka:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 4
%bachuka:0, brother[eq]:3, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=8, S=2, Star=0,  {FaMoStsisSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(Alter, H), younger(Alter, Ego).
;; 5
%bachuka:0, brother[eq]:3, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=8, S=2, Star=0,  {FaMoStsisSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(Alter, H), younger(Alter, Ego).
;; 6
%bachuka:0, brother[eq]:4, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E), younger(Alter, Ego).
;; 7
%bachuka:0, brother[eq]:5, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F), younger(Alter, Ego).
;; 8
%bachuka:0, brother[eq]:6, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D), younger(Alter, Ego).
;; 9
%bachuka:0, brother[eq]:6, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 10
%bachuka:0, brother[eq]:6, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 11
%bachuka:0, brother[eq]:6, sister[eq]:6, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G), younger(Alter, Ego).
;; 12
%bachuka:0, brother[eq]:6, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=6, S=2, Star=0,  {MoStsisSo}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(Alter, F), younger(Alter, Ego).
;; 13
%bachuka:0, brother[eq]:6, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=6, S=2, Star=0,  {MoStsisSo}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(Alter, F), younger(Alter, Ego).
;; 14
%bachuka:0, brother[eq]:7, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), younger(Alter, Ego).
;; 15
%bachuka:0, brother[eq]:8, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter), younger(Alter, Ego).
;; 16
%bachuka:0, brother[eq]:9, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E), younger(Alter, Ego).
;; 17
%bachuka:0, brother[eq]:10, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E), younger(Alter, Ego).
;; 18
%bachuka:0, brother[eq]:11, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G), younger(Alter, Ego).
;; 19
%bachuka:0, brother[eq]:12, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E), younger(Alter, Ego).
;; 20
%bachuka:0, brother[eq]:13, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C), younger(Alter, Ego).
;; 21
%bachuka:0, brother[eq]:13, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C), younger(Alter, Ego).
;; 22
%bachuka:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 23
%bachuka:1, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 24
%bachuka:1, sister[eq]:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 25
%bachuka:1, sister[eq]:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 26
%bachuka:1, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 27
%bachuka:1, sister[eq]:5, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 28
%bachuka:1, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 29
%bachuka:1, sister[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 30
%bachuka:1, sister[eq]:8, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 31
%bachuka:1, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {StsisSo}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), son(Alter, E).
;; 32
%bachuka:1, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=5, S=2, Star=0,  {StsisSo}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), son(Alter, E).


bakooa(Alter, Ego) :-  husband(A, Ego), sister(Alter, A).
{"HuSis"}
;; 0
%bakooa:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


basachete(Alter, Ego) :-  male(Ego), sister[eq](Alter, Ego), younger(Alter, Ego).
{"FaBroDa_FaFaBroSoDa_FaFaMoBroSoDa_FaMoBroDa_FaMoSisSoDa_MoFaBroDaDa_MoMoSisDaDa_MoSisDa_Sis_Stsis"}
;; 0
%basachete:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).
;; 1
%basachete:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), younger(Alter, Ego).
;; 2
%basachete:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 3
%basachete:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 4
%basachete:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D), younger(Alter, Ego).
;; 5
%basachete:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 6
%basachete:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E), younger(Alter, Ego).
;; 7
%basachete:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G), younger(Alter, Ego).
;; 8
%basachete:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 9
%basachete:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C), younger(Alter, Ego).
;; 10
%basachete:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C), younger(Alter, Ego).


basakana(Alter, Ego) :-  gen_up[aux]09(A, Ego), mother(Alter, A).
                     |   father(A, Ego), gen_up[aux]09(B, A), parents(C, B), sister(D, C), daughter(Alter, D).
                     |   father(A, Ego), gen_up[aux]09(B, A), sister(Alter, B).
                     |   mother(A, Ego), gen_up[aux]09(B, A), parents(C, B), sister(D, C), daughter(Alter, D).
                     |   mother(A, Ego), gen_up[aux]09(B, A), sister(Alter, B).
                     |   gen_up[aux]09(A, Ego), generation[aux]09gs(B, A), mother(Alter, B).
{"FaFaBroWi_FaFaFaBroDa_FaFaFaBroSoWi_FaFaFaBroWi_FaFaFaFaBroWi_FaFaFaFaSis_FaFaFaFaSisDa_FaFaFaMo_FaFaFaMoBroWi_FaFaFaMoSis_FaFaFaMoSisDa_FaFaFaSis_FaFaFaSisDa_FaFaFaSisSoWi_FaFaMo_FaFaMoBroDa_FaFaMoBroSoWi_FaFaMoBroWi_FaFaMoFaBroWi_FaFaMoFaSis_FaFaMoFaSisDa_FaFaMoMo_FaFaMoMoBroWi_FaFaMoMoSis_FaFaMoMoSisDa_FaFaMoSis_FaFaMoSisDa_FaFaMoSisSoWi_FaFaSis_FaMo_FaMoBroWi_FaMoFaBroDa_FaMoFaBroSoWi_FaMoFaBroWi_FaMoFaFaBroWi_FaMoFaFaSis_FaMoFaFaSisDa_FaMoFaMo_FaMoFaMoBroWi_FaMoFaMoSis_FaMoFaMoSisDa_FaMoFaSis_FaMoFaSisDa_FaMoFaSisSoWi_FaMoMo_FaMoMoBroDa_FaMoMoBroSoWi_FaMoMoBroWi_FaMoMoFaBroWi_FaMoMoFaSis_FaMoMoFaSisDa_FaMoMoMo_FaMoMoMoBroWi_FaMoMoMoSis_FaMoMoMoSisDa_FaMoMoSis_FaMoMoSisDa_FaMoMoSisSoWi_FaMoSis_MoFaBroWi_MoFaFaBroDa_MoFaFaBroSoWi_MoFaFaBroWi_MoFaFaFaBroWi_MoFaFaFaSis_MoFaFaFaSisDa_MoFaFaMo_MoFaFaMoBroWi_MoFaFaMoSis_MoFaFaMoSisDa_MoFaFaSis_MoFaFaSisDa_MoFaFaSisSoWi_MoFaMo_MoFaMoBroDa_MoFaMoBroSoWi_MoFaMoBroWi_MoFaMoFaBroWi_MoFaMoFaSis_MoFaMoFaSisDa_MoFaMoMo_MoFaMoMoBroWi_MoFaMoMoSis_MoFaMoMoSisDa_MoFaMoSis_MoFaMoSisDa_MoFaMoSisSoWi_MoFaSis_MoMo_MoMoBroWi_MoMoFaBroDa_MoMoFaBroSoWi_MoMoFaBroWi_MoMoFaFaBroWi_MoMoFaFaSis_MoMoFaFaSisDa_MoMoFaMo_MoMoFaMoBroWi_MoMoFaMoSis_MoMoFaMoSisDa_MoMoFaSis_MoMoFaSisDa_MoMoFaSisSoWi_MoMoMo_MoMoMoBroDa_MoMoMoBroSoWi_MoMoMoBroWi_MoMoMoFaBroWi_MoMoMoFaSis_MoMoMoFaSisDa_MoMoMoMo_MoMoMoMoBroWi_MoMoMoMoSis_MoMoMoMoSisDa_MoMoMoSis_MoMoMoSisDa_MoMoMoSisSoWi_MoMoSis"}
;; 0
%basakana:0, gen_up[aux]09:0%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).
;; 1
%basakana:0, gen_up[aux]09:1%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 2
%basakana:0, gen_up[aux]09:2, gen_up[aux]09:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
 father(A, Ego), father(B, A), mother(Alter, B).
;; 3
%basakana:0, gen_up[aux]09:2, gen_up[aux]09:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
 mother(A, Ego), father(B, A), mother(Alter, B).
;; 4
%basakana:0, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaFaMo}  
 father(A, Ego), father(B, A), father(C, B), mother(Alter, C).
;; 5
%basakana:0, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaFaMo}  
 mother(A, Ego), father(B, A), father(C, B), mother(Alter, C).
;; 6
%basakana:0, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoFaMo}  
 father(A, Ego), mother(B, A), father(C, B), mother(Alter, C).
;; 7
%basakana:0, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoFaMo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(Alter, C).
;; 8
%basakana:0, gen_up[aux]09:3, gen_up[aux]09:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
 father(A, Ego), mother(B, A), mother(Alter, B).
;; 9
%basakana:0, gen_up[aux]09:3, gen_up[aux]09:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
 mother(A, Ego), mother(B, A), mother(Alter, B).
;; 10
%basakana:0, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaMoMo}  
 father(A, Ego), father(B, A), mother(C, B), mother(Alter, C).
;; 11
%basakana:0, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaMoMo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(Alter, C).
;; 12
%basakana:0, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoMoMo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(Alter, C).
;; 13
%basakana:0, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoMoMo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(Alter, C).
;; 14
%basakana:1, gen_up[aux]09:0, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 15
%basakana:1, gen_up[aux]09:0, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 16
%basakana:1, gen_up[aux]09:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 17
%basakana:1, gen_up[aux]09:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 18
%basakana:1, gen_up[aux]09:2, gen_up[aux]09:0, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoSisDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 19
%basakana:1, gen_up[aux]09:2, gen_up[aux]09:0, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaSisDa}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 20
%basakana:1, gen_up[aux]09:2, gen_up[aux]09:1, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoSisDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 21
%basakana:1, gen_up[aux]09:2, gen_up[aux]09:1, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaSisDa}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 22
%basakana:1, gen_up[aux]09:3, gen_up[aux]09:0, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoSisDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 23
%basakana:1, gen_up[aux]09:3, gen_up[aux]09:0, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaSisDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 24
%basakana:1, gen_up[aux]09:3, gen_up[aux]09:1, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 25
%basakana:1, gen_up[aux]09:3, gen_up[aux]09:1, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 26
%basakana:2, gen_up[aux]09:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 27
%basakana:2, gen_up[aux]09:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 28
%basakana:2, gen_up[aux]09:2, gen_up[aux]09:0, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaSis}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 29
%basakana:2, gen_up[aux]09:2, gen_up[aux]09:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaSis}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 30
%basakana:2, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaFaSis}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 31
%basakana:2, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaFaSis}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 32
%basakana:2, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoFaSis}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 33
%basakana:2, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoFaSis}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 34
%basakana:2, gen_up[aux]09:3, gen_up[aux]09:0, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoSis}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 35
%basakana:2, gen_up[aux]09:3, gen_up[aux]09:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 36
%basakana:2, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaMoSis}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 37
%basakana:2, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaMoSis}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 38
%basakana:2, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoMoSis}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 39
%basakana:2, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 40
%basakana:3, gen_up[aux]09:0, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 41
%basakana:3, gen_up[aux]09:0, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 42
%basakana:3, gen_up[aux]09:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 43
%basakana:3, gen_up[aux]09:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 44
%basakana:3, gen_up[aux]09:2, gen_up[aux]09:0, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoSisDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 45
%basakana:3, gen_up[aux]09:2, gen_up[aux]09:0, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaSisDa}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 46
%basakana:3, gen_up[aux]09:2, gen_up[aux]09:1, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoSisDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 47
%basakana:3, gen_up[aux]09:2, gen_up[aux]09:1, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaSisDa}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 48
%basakana:3, gen_up[aux]09:3, gen_up[aux]09:0, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 49
%basakana:3, gen_up[aux]09:3, gen_up[aux]09:0, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 50
%basakana:3, gen_up[aux]09:3, gen_up[aux]09:1, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 51
%basakana:3, gen_up[aux]09:3, gen_up[aux]09:1, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 52
%basakana:4, gen_up[aux]09:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 53
%basakana:4, gen_up[aux]09:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 54
%basakana:4, gen_up[aux]09:2, gen_up[aux]09:0, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaSis}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 55
%basakana:4, gen_up[aux]09:2, gen_up[aux]09:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaSis}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 56
%basakana:4, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaFaSis}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 57
%basakana:4, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaFaSis}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 58
%basakana:4, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 59
%basakana:4, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoFaSis}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 60
%basakana:4, gen_up[aux]09:3, gen_up[aux]09:0, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoSis}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 61
%basakana:4, gen_up[aux]09:3, gen_up[aux]09:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 62
%basakana:4, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaMoSis}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 63
%basakana:4, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaMoSis}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 64
%basakana:4, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoMoSis}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 65
%basakana:4, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 66
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(Alter, D).
;; 67
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), mother(Alter, D).
;; 68
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoBroWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(Alter, F).
;; 69
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoBroWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), mother(Alter, F).
;; 70
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(Alter, F).
;; 71
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), mother(Alter, F).
;; 72
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoBroSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(Alter, H).
;; 73
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoBroSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), mother(Alter, H).
;; 74
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoBroDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(Alter, H).
;; 75
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoBroDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), mother(Alter, H).
;; 76
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoSisSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(Alter, H).
;; 77
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoSisSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), mother(Alter, H).
;; 78
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), mother(Alter, H).
;; 79
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), mother(Alter, H).
;; 80
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaBroSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(Alter, H).
;; 81
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaBroSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), mother(Alter, H).
;; 82
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaBroDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(Alter, H).
;; 83
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaBroDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), mother(Alter, H).
;; 84
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaSisSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(Alter, H).
;; 85
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaSisSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), mother(Alter, H).
;; 86
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaSisDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), mother(Alter, H).
;; 87
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaSisDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), mother(Alter, H).
;; 88
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaBroWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(Alter, F).
;; 89
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaBroWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), mother(Alter, F).
;; 90
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaSis}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(Alter, F).
;; 91
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaSis}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), mother(Alter, F).
;; 92
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoBroSoWi}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(Alter, H).
;; 93
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoBroSoWi}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), mother(Alter, H).
;; 94
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoBroDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(Alter, H).
;; 95
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoBroDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), mother(Alter, H).
;; 96
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoSisSoWi}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(Alter, H).
;; 97
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoSisSoWi}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), mother(Alter, H).
;; 98
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoSisDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), mother(Alter, H).
;; 99
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoSisDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), mother(Alter, H).
;; 100
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaBroSoWi}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(Alter, H).
;; 101
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaBroSoWi}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), mother(Alter, H).
;; 102
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaBroDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(Alter, H).
;; 103
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaBroDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), mother(Alter, H).
;; 104
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaSisSoWi}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(Alter, H).
;; 105
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaSisSoWi}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), mother(Alter, H).
;; 106
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaSisDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), mother(Alter, H).
;; 107
%basakana:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaSisDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), mother(Alter, H).
;; 108
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(Alter, D).
;; 109
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), mother(Alter, D).
;; 110
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoBroWi}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(Alter, F).
;; 111
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoBroWi}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), mother(Alter, F).
;; 112
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(Alter, F).
;; 113
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), mother(Alter, F).
;; 114
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoBroSoWi}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(Alter, H).
;; 115
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoBroSoWi}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), mother(Alter, H).
;; 116
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoBroDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(Alter, H).
;; 117
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoBroDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), mother(Alter, H).
;; 118
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoSisSoWi}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(Alter, H).
;; 119
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoSisSoWi}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), mother(Alter, H).
;; 120
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), mother(Alter, H).
;; 121
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), mother(Alter, H).
;; 122
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaBroSoWi}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(Alter, H).
;; 123
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaBroSoWi}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), mother(Alter, H).
;; 124
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaBroDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(Alter, H).
;; 125
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaBroDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), mother(Alter, H).
;; 126
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaSisSoWi}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(Alter, H).
;; 127
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaSisSoWi}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), mother(Alter, H).
;; 128
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaSisDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), mother(Alter, H).
;; 129
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaSisDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), mother(Alter, H).
;; 130
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaBroWi}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(Alter, F).
;; 131
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaBroWi}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), mother(Alter, F).
;; 132
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(Alter, F).
;; 133
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), mother(Alter, F).
;; 134
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoBroSoWi}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(Alter, H).
;; 135
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoBroSoWi}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), mother(Alter, H).
;; 136
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(Alter, H).
;; 137
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), mother(Alter, H).
;; 138
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoSisSoWi}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(Alter, H).
;; 139
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoSisSoWi}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), mother(Alter, H).
;; 140
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), mother(Alter, H).
;; 141
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), mother(Alter, H).
;; 142
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaBroSoWi}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(Alter, H).
;; 143
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaBroSoWi}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), mother(Alter, H).
;; 144
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaBroDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(Alter, H).
;; 145
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaBroDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), mother(Alter, H).
;; 146
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaSisSoWi}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(Alter, H).
;; 147
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaSisSoWi}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), mother(Alter, H).
;; 148
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaSisDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), mother(Alter, H).
;; 149
%basakana:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaSisDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), mother(Alter, H).
;; 150
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(Alter, E).
;; 151
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), mother(Alter, E).
;; 152
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoBroWi}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(Alter, G).
;; 153
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoBroWi}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), mother(Alter, G).
;; 154
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoSis}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(Alter, G).
;; 155
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoSis}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), mother(Alter, G).
;; 156
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaBroWi}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(Alter, G).
;; 157
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaBroWi}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), mother(Alter, G).
;; 158
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaSis}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(Alter, G).
;; 159
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaSis}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), mother(Alter, G).
;; 160
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(Alter, E).
;; 161
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), mother(Alter, E).
;; 162
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoBroWi}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(Alter, G).
;; 163
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoBroWi}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), mother(Alter, G).
;; 164
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoSis}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(Alter, G).
;; 165
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoSis}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), mother(Alter, G).
;; 166
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaBroWi}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(Alter, G).
;; 167
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaBroWi}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), mother(Alter, G).
;; 168
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaSis}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(Alter, G).
;; 169
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaSis}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), mother(Alter, G).
;; 170
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaMo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), mother(Alter, F).
;; 171
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaMo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), mother(Alter, F).
;; 172
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaFaMoBroWi}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(Alter, H).
;; 173
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaFaMoBroWi}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), mother(Alter, H).
;; 174
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaFaMoSis}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(Alter, H).
;; 175
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaFaMoSis}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), mother(Alter, H).
;; 176
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaFaFaBroWi}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(Alter, H).
;; 177
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaFaFaBroWi}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), mother(Alter, H).
;; 178
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaFaFaSis}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(Alter, H).
;; 179
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaFaFaSis}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), mother(Alter, H).
;; 180
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaMo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), mother(Alter, F).
;; 181
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaMo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), mother(Alter, F).
;; 182
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaFaMoBroWi}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(Alter, H).
;; 183
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaFaMoBroWi}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), mother(Alter, H).
;; 184
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaFaMoSis}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(Alter, H).
;; 185
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaFaMoSis}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), mother(Alter, H).
;; 186
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaFaFaBroWi}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(Alter, H).
;; 187
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaFaFaBroWi}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), mother(Alter, H).
;; 188
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaFaFaSis}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(Alter, H).
;; 189
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaFaFaSis}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), mother(Alter, H).
;; 190
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaMo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), mother(Alter, F).
;; 191
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaMo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), mother(Alter, F).
;; 192
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoFaMoBroWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(Alter, H).
;; 193
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoFaMoBroWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), mother(Alter, H).
;; 194
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoFaMoSis}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(Alter, H).
;; 195
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoFaMoSis}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), mother(Alter, H).
;; 196
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoFaFaBroWi}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(Alter, H).
;; 197
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoFaFaBroWi}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), mother(Alter, H).
;; 198
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoFaFaSis}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(Alter, H).
;; 199
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoFaFaSis}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), mother(Alter, H).
;; 200
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaMo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), mother(Alter, F).
;; 201
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaMo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), mother(Alter, F).
;; 202
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoFaMoBroWi}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(Alter, H).
;; 203
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoFaMoBroWi}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), mother(Alter, H).
;; 204
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoFaMoSis}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(Alter, H).
;; 205
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoFaMoSis}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), mother(Alter, H).
;; 206
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoFaFaBroWi}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(Alter, H).
;; 207
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoFaFaBroWi}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), mother(Alter, H).
;; 208
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoFaFaSis}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(Alter, H).
;; 209
%basakana:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoFaFaSis}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), mother(Alter, H).
;; 210
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(Alter, E).
;; 211
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), mother(Alter, E).
;; 212
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoBroWi}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(Alter, G).
;; 213
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoBroWi}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), mother(Alter, G).
;; 214
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(Alter, G).
;; 215
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), mother(Alter, G).
;; 216
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaBroWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(Alter, G).
;; 217
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaBroWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), mother(Alter, G).
;; 218
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaSis}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(Alter, G).
;; 219
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaSis}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), mother(Alter, G).
;; 220
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(Alter, E).
;; 221
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), mother(Alter, E).
;; 222
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoBroWi}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(Alter, G).
;; 223
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoBroWi}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), mother(Alter, G).
;; 224
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(Alter, G).
;; 225
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), mother(Alter, G).
;; 226
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaBroWi}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(Alter, G).
;; 227
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaBroWi}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), mother(Alter, G).
;; 228
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaSis}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(Alter, G).
;; 229
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaSis}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), mother(Alter, G).
;; 230
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoMo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), mother(Alter, F).
;; 231
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoMo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), mother(Alter, F).
;; 232
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaMoMoBroWi}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(Alter, H).
;; 233
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaMoMoBroWi}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), mother(Alter, H).
;; 234
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaMoMoSis}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(Alter, H).
;; 235
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaMoMoSis}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), mother(Alter, H).
;; 236
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaMoFaBroWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(Alter, H).
;; 237
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaMoFaBroWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), mother(Alter, H).
;; 238
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaMoFaSis}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(Alter, H).
;; 239
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaMoFaSis}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), mother(Alter, H).
;; 240
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoMo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), mother(Alter, F).
;; 241
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoMo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), mother(Alter, F).
;; 242
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaMoMoBroWi}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(Alter, H).
;; 243
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaMoMoBroWi}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), mother(Alter, H).
;; 244
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaMoMoSis}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(Alter, H).
;; 245
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaMoMoSis}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), mother(Alter, H).
;; 246
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaMoFaBroWi}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(Alter, H).
;; 247
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaMoFaBroWi}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), mother(Alter, H).
;; 248
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaMoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(Alter, H).
;; 249
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaMoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), mother(Alter, H).
;; 250
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoMo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), mother(Alter, F).
;; 251
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoMo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), mother(Alter, F).
;; 252
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoMoMoBroWi}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(Alter, H).
;; 253
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoMoMoBroWi}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), mother(Alter, H).
;; 254
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoMoMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(Alter, H).
;; 255
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoMoMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), mother(Alter, H).
;; 256
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoMoFaBroWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(Alter, H).
;; 257
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoMoFaBroWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), mother(Alter, H).
;; 258
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoMoFaSis}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(Alter, H).
;; 259
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoMoFaSis}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), mother(Alter, H).
;; 260
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoMo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), mother(Alter, F).
;; 261
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoMo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), mother(Alter, F).
;; 262
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoMoMoBroWi}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(Alter, H).
;; 263
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoMoMoBroWi}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), mother(Alter, H).
;; 264
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoMoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(Alter, H).
;; 265
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoMoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), mother(Alter, H).
;; 266
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoMoFaBroWi}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(Alter, H).
;; 267
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoMoFaBroWi}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), mother(Alter, H).
;; 268
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoMoFaSis}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(Alter, H).
;; 269
%basakana:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoMoFaSis}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), mother(Alter, H).


basana(Alter, Ego) :-  mother(A, Ego), brother(Alter, A).
{"MoBro"}
;; 0
%basana:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


basoka(Alter, Ego) :-  female(Ego), sister[eq](Alter, Ego), younger(Alter, Ego).
                   |   male(Ego), sister(A, Ego), daughter(Alter, A).
{"FaBroDa_FaFaBroSoDa_FaFaMoBroSoDa_FaMoBroDa_FaMoSisSoDa_MoFaBroDaDa_MoMoSisDaDa_MoSisDa_Sis_SisDa_Stsis"}
;; 0
%basoka:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).
;; 1
%basoka:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), younger(Alter, Ego).
;; 2
%basoka:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 3
%basoka:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 4
%basoka:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D), younger(Alter, Ego).
;; 5
%basoka:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 6
%basoka:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E), younger(Alter, Ego).
;; 7
%basoka:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G), younger(Alter, Ego).
;; 8
%basoka:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 9
%basoka:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 female(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C), younger(Alter, Ego).
;; 10
%basoka:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 female(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C), younger(Alter, Ego).
;; 11
%basoka:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).


bazakat(Alter, Ego) :-  male(Ego), sister[eq](Alter, Ego), elder(Alter, Ego).
{"FaBroDa_FaFaBroSoDa_FaFaMoBroSoDa_FaMoBroDa_FaMoSisSoDa_MoFaBroDaDa_MoMoSisDaDa_MoSisDa_Sis_Stsis"}
;; 0
%bazakat:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).
;; 1
%bazakat:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), elder(Alter, Ego).
;; 2
%bazakat:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 3
%bazakat:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 4
%bazakat:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D), elder(Alter, Ego).
;; 5
%bazakat:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 6
%bazakat:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E), elder(Alter, Ego).
;; 7
%bazakat:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G), elder(Alter, Ego).
;; 8
%bazakat:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 9
%bazakat:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C), elder(Alter, Ego).
;; 10
%bazakat:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C), elder(Alter, Ego).


bazana(Alter, Ego) :-  female(Ego), brother[eq](Alter, Ego), elder(Alter, Ego).
{"Bro_FaBroSo_FaFaBroSoSo_FaMoBroSo_FaMoFaBroDaSoSo_FaMoMoBroSo_FaMoMoSisDaSoSo_FaMoSisSoSo_FaMoStsisSoSo_MoBro_MoFaBroDaSo_MoFaBroSo_MoFaFaBroSoDaSo_MoFaMoBroDaSo_MoFaMoSisSoDaSo_MoMoBro_MoMoFaBroDaDaSo_MoMoMoSisDaDaSo_MoMoMoSisDaSo_MoMoSisDaSo_MoMoSisSo_MoSisSo_MoStsisSo_Stbro"}
;; 0
%bazana:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%bazana:0, brother[eq]:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D), elder(Alter, Ego).
;; 2
%bazana:0, brother[eq]:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 3
%bazana:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 4
%bazana:0, brother[eq]:3, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H), elder(Alter, Ego).
;; 5
%bazana:0, brother[eq]:3, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H), elder(Alter, Ego).
;; 6
%bazana:0, brother[eq]:3, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=8, S=2, Star=0,  {FaMoStsisSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(Alter, H), elder(Alter, Ego).
;; 7
%bazana:0, brother[eq]:3, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=8, S=2, Star=0,  {FaMoStsisSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(Alter, H), elder(Alter, Ego).
;; 8
%bazana:0, brother[eq]:4, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E), elder(Alter, Ego).
;; 9
%bazana:0, brother[eq]:5, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F), elder(Alter, Ego).
;; 10
%bazana:0, brother[eq]:6, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D), elder(Alter, Ego).
;; 11
%bazana:0, brother[eq]:6, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 12
%bazana:0, brother[eq]:6, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 13
%bazana:0, brother[eq]:6, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 14
%bazana:0, brother[eq]:6, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 15
%bazana:0, brother[eq]:6, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 16
%bazana:0, brother[eq]:6, sister[eq]:6, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G), elder(Alter, Ego).
;; 17
%bazana:0, brother[eq]:6, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 18
%bazana:0, brother[eq]:6, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=6, S=2, Star=0,  {MoStsisSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(Alter, F), elder(Alter, Ego).
;; 19
%bazana:0, brother[eq]:6, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=6, S=2, Star=0,  {MoStsisSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(Alter, F), elder(Alter, Ego).
;; 20
%bazana:0, brother[eq]:7, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), elder(Alter, Ego).
;; 21
%bazana:0, brother[eq]:8, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter), elder(Alter, Ego).
;; 22
%bazana:0, brother[eq]:9, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E), elder(Alter, Ego).
;; 23
%bazana:0, brother[eq]:10, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E), elder(Alter, Ego).
;; 24
%bazana:0, brother[eq]:11, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G), elder(Alter, Ego).
;; 25
%bazana:0, brother[eq]:12, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E), elder(Alter, Ego).
;; 26
%bazana:0, brother[eq]:13, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 female(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C), elder(Alter, Ego).
;; 27
%bazana:0, brother[eq]:13, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 female(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C), elder(Alter, Ego).


boosha(Alter, Ego) :-  wife(A, Ego), father(Alter, A).
                   |   daughter(A, Ego), husband(Alter, A).
                   |   sister(A, Ego), daughter(B, A), husband(Alter, B).
                   |   brother[eq](A, Ego), daughter(B, A), husband(Alter, B).
{"BroDaHu_DaHu_FaBroSoDaHu_FaFaBroSoSoDaHu_FaMoBroSoDaHu_FaMoMoBroSoDaHu_FaMoSisSoSoDaHu_FaMoStsisSoSoDaHu_MoBroDaHu_MoFaBroDaSoDaHu_MoFaBroSoDaHu_MoMoBroDaHu_MoMoSisDaSoDaHu_MoMoSisSoDaHu_MoSisSoDaHu_MoStsisSoDaHu_SisDaHu_StbroDaHu_WiFa"}
;; 0
%boosha:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).
;; 1
%boosha:1%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 daughter(A, Ego), husband(Alter, A).
;; 2
%boosha:2, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), husband(Alter, D).
;; 3
%boosha:3, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), husband(Alter, D).
;; 4
%boosha:3, brother[eq]:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoDaHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), husband(Alter, F).
;; 5
%boosha:3, brother[eq]:2, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoSoDaHu}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), husband(Alter, H).
;; 6
%boosha:3, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoSoDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), husband(Alter, H).
;; 7
%boosha:3, brother[eq]:3, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=9, S=3, Star=0,  {FaMoStsisSoSoDaHu}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), daughter(J, I), husband(Alter, J).
;; 8
%boosha:3, brother[eq]:3, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=9, S=3, Star=0,  {FaMoStsisSoSoDaHu}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), daughter(J, I), husband(Alter, J).
;; 9
%boosha:3, brother[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), husband(Alter, G).
;; 10
%boosha:3, brother[eq]:5, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoBroSoDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), husband(Alter, H).
;; 11
%boosha:3, brother[eq]:6, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoDaHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), husband(Alter, F).
;; 12
%boosha:3, brother[eq]:6, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaSoDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), husband(Alter, H).
;; 13
%boosha:3, brother[eq]:6, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaSoDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), husband(Alter, H).
;; 14
%boosha:3, brother[eq]:6, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=7, S=3, Star=0,  {MoStsisSoDaHu}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(G, F), daughter(H, G), husband(Alter, H).
;; 15
%boosha:3, brother[eq]:6, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=7, S=3, Star=0,  {MoStsisSoDaHu}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(G, F), daughter(H, G), husband(Alter, H).
;; 16
%boosha:3, brother[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E).
;; 17
%boosha:3, brother[eq]:8, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoBroDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), husband(Alter, F).
;; 18
%boosha:3, brother[eq]:9, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), husband(Alter, G).
;; 19
%boosha:3, brother[eq]:10, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), husband(Alter, G).
;; 20
%boosha:3, brother[eq]:12, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), husband(Alter, G).
;; 21
%boosha:3, brother[eq]:13, step_brother:0%
 Lvl=-1,  PC=5, S=3, Star=0,  {StbroDaHu}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(E, D), son(E, C), daughter(F, E), husband(Alter, F).
;; 22
%boosha:3, brother[eq]:13, step_brother:1%
 Lvl=-1,  PC=5, S=3, Star=0,  {StbroDaHu}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(E, D), son(E, C), daughter(F, E), husband(Alter, F).


booshagana(Alter, Ego) :-  wife(A, Ego), mother(Alter, A).
{"WiMo"}
;; 0
%booshagana:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).


boscheta(Alter, Ego) :-  husband(A, Ego), brother(Alter, A).
{"HuBro"}
;; 0
%boscheta:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


bosmeakunista(Alter, Ego) :-  male(Ego), son(A, Ego), wife(Alter, A).
                          |   brother(A, Ego), son(B, A), wife(Alter, B).
                          |   female(Ego), brother[eq](A, Ego), son(B, A), wife(Alter, B).
                          |   female(Ego), brother[eq](A, Ego), wife(Alter, A).
{"BroSoWi_BroWi_FaBroSoSoWi_FaBroSoWi_FaFaBroSoSoSoWi_FaFaBroSoSoWi_FaMoBroSoSoWi_FaMoBroSoWi_FaMoFaBroDaSoSoSoWi_FaMoFaBroDaSoSoWi_FaMoMoBroSoSoWi_FaMoMoBroSoWi_FaMoMoSisDaSoSoSoWi_FaMoMoSisDaSoSoWi_FaMoSisSoSoSoWi_FaMoSisSoSoWi_FaMoStsisSoSoSoWi_FaMoStsisSoSoWi_MoBroSoWi_MoBroWi_MoFaBroDaSoSoWi_MoFaBroDaSoWi_MoFaBroSoSoWi_MoFaBroSoWi_MoFaFaBroSoDaSoSoWi_MoFaFaBroSoDaSoWi_MoFaMoBroDaSoSoWi_MoFaMoBroDaSoWi_MoFaMoSisSoDaSoSoWi_MoFaMoSisSoDaSoWi_MoMoBroSoWi_MoMoBroWi_MoMoFaBroDaDaSoSoWi_MoMoFaBroDaDaSoWi_MoMoMoSisDaDaSoSoWi_MoMoMoSisDaDaSoWi_MoMoMoSisDaSoSoWi_MoMoMoSisDaSoWi_MoMoSisDaSoSoWi_MoMoSisDaSoWi_MoMoSisSoSoWi_MoMoSisSoWi_MoSisSoSoWi_MoSisSoWi_MoStsisSoSoWi_MoStsisSoWi_SoWi_StbroSoWi_StbroWi"}
;; 0
%bosmeakunista:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 male(Ego), son(A, Ego), wife(Alter, A).
;; 1
%bosmeakunista:1, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroSoWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), wife(Alter, D).
;; 2
%bosmeakunista:2, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroSoWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), wife(Alter, D).
;; 3
%bosmeakunista:2, brother[eq]:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), wife(Alter, F).
;; 4
%bosmeakunista:2, brother[eq]:2, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoSoSoWi}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), wife(Alter, H).
;; 5
%bosmeakunista:2, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoSoSoWi}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), wife(Alter, H).
;; 6
%bosmeakunista:2, brother[eq]:3, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoMoSisDaSoSoSoWi}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), son(J, I), wife(Alter, J).
;; 7
%bosmeakunista:2, brother[eq]:3, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoFaBroDaSoSoSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), son(J, I), wife(Alter, J).
;; 8
%bosmeakunista:2, brother[eq]:3, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=9, S=3, Star=0,  {FaMoStsisSoSoSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), son(J, I), wife(Alter, J).
;; 9
%bosmeakunista:2, brother[eq]:3, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=9, S=3, Star=0,  {FaMoStsisSoSoSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), son(J, I), wife(Alter, J).
;; 10
%bosmeakunista:2, brother[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoSoWi}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), wife(Alter, G).
;; 11
%bosmeakunista:2, brother[eq]:5, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoBroSoSoWi}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), wife(Alter, H).
;; 12
%bosmeakunista:2, brother[eq]:6, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), wife(Alter, F).
;; 13
%bosmeakunista:2, brother[eq]:6, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaSoSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), wife(Alter, H).
;; 14
%bosmeakunista:2, brother[eq]:6, sister[eq]:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoMoSisDaDaSoSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), son(J, I), wife(Alter, J).
;; 15
%bosmeakunista:2, brother[eq]:6, sister[eq]:3, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoFaBroDaDaSoSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), son(J, I), wife(Alter, J).
;; 16
%bosmeakunista:2, brother[eq]:6, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaSoSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), wife(Alter, H).
;; 17
%bosmeakunista:2, brother[eq]:6, sister[eq]:5, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaFaBroSoDaSoSoWi}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), son(J, I), wife(Alter, J).
;; 18
%bosmeakunista:2, brother[eq]:6, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoBroDaSoSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), wife(Alter, I).
;; 19
%bosmeakunista:2, brother[eq]:6, sister[eq]:8, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaMoSisSoDaSoSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), son(J, I), wife(Alter, J).
;; 20
%bosmeakunista:2, brother[eq]:6, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=7, S=3, Star=0,  {MoStsisSoSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(G, F), son(H, G), wife(Alter, H).
;; 21
%bosmeakunista:2, brother[eq]:6, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=7, S=3, Star=0,  {MoStsisSoSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(G, F), son(H, G), wife(Alter, H).
;; 22
%bosmeakunista:2, brother[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), wife(Alter, E).
;; 23
%bosmeakunista:2, brother[eq]:8, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoBroSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), wife(Alter, F).
;; 24
%bosmeakunista:2, brother[eq]:9, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), wife(Alter, G).
;; 25
%bosmeakunista:2, brother[eq]:10, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), wife(Alter, G).
;; 26
%bosmeakunista:2, brother[eq]:11, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoSisDaSoSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), wife(Alter, I).
;; 27
%bosmeakunista:2, brother[eq]:12, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), wife(Alter, G).
;; 28
%bosmeakunista:2, brother[eq]:13, step_brother:0%
 Lvl=-1,  PC=5, S=3, Star=0,  {StbroSoWi}  
 female(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(E, D), son(E, C), son(F, E), wife(Alter, F).
;; 29
%bosmeakunista:2, brother[eq]:13, step_brother:1%
 Lvl=-1,  PC=5, S=3, Star=0,  {StbroSoWi}  
 female(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(E, D), son(E, C), son(F, E), wife(Alter, F).
;; 30
%bosmeakunista:3, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C).
;; 31
%bosmeakunista:3, brother[eq]:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), wife(Alter, E).
;; 32
%bosmeakunista:3, brother[eq]:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoSoWi}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), wife(Alter, G).
;; 33
%bosmeakunista:3, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoSoWi}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), wife(Alter, G).
;; 34
%bosmeakunista:3, brother[eq]:3, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoSisDaSoSoWi}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), wife(Alter, I).
;; 35
%bosmeakunista:3, brother[eq]:3, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaBroDaSoSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), wife(Alter, I).
;; 36
%bosmeakunista:3, brother[eq]:3, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=8, S=3, Star=0,  {FaMoStsisSoSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), wife(Alter, I).
;; 37
%bosmeakunista:3, brother[eq]:3, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=8, S=3, Star=0,  {FaMoStsisSoSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), wife(Alter, I).
;; 38
%bosmeakunista:3, brother[eq]:4, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoBroSoWi}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), wife(Alter, F).
;; 39
%bosmeakunista:3, brother[eq]:5, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {FaMoMoBroSoWi}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), wife(Alter, G).
;; 40
%bosmeakunista:3, brother[eq]:6, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), wife(Alter, E).
;; 41
%bosmeakunista:3, brother[eq]:6, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), wife(Alter, G).
;; 42
%bosmeakunista:3, brother[eq]:6, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoSisDaDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), wife(Alter, I).
;; 43
%bosmeakunista:3, brother[eq]:6, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaBroDaDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), wife(Alter, I).
;; 44
%bosmeakunista:3, brother[eq]:6, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), wife(Alter, G).
;; 45
%bosmeakunista:3, brother[eq]:6, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaBroSoDaSoWi}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), wife(Alter, I).
;; 46
%bosmeakunista:3, brother[eq]:6, sister[eq]:6, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoBroDaSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), wife(Alter, H).
;; 47
%bosmeakunista:3, brother[eq]:6, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoSisSoDaSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), wife(Alter, I).
;; 48
%bosmeakunista:3, brother[eq]:6, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=6, S=3, Star=0,  {MoStsisSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(G, F), wife(Alter, G).
;; 49
%bosmeakunista:3, brother[eq]:6, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=6, S=3, Star=0,  {MoStsisSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(G, F), wife(Alter, G).
;; 50
%bosmeakunista:3, brother[eq]:7, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 51
%bosmeakunista:3, brother[eq]:8, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoMoBroWi}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 52
%bosmeakunista:3, brother[eq]:9, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaBroSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), wife(Alter, F).
;; 53
%bosmeakunista:3, brother[eq]:10, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoSisSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), wife(Alter, F).
;; 54
%bosmeakunista:3, brother[eq]:11, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoSisDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), wife(Alter, H).
;; 55
%bosmeakunista:3, brother[eq]:12, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaBroSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), wife(Alter, F).
;; 56
%bosmeakunista:3, brother[eq]:13, step_brother:0%
 Lvl=0,  PC=4, S=3, Star=0,  {StbroWi}  
 female(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(E, D), son(E, C), wife(Alter, E).
;; 57
%bosmeakunista:3, brother[eq]:13, step_brother:1%
 Lvl=0,  PC=4, S=3, Star=0,  {StbroWi}  
 female(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(E, D), son(E, C), wife(Alter, E).


botsasa(Alter, Ego) :-  son(Alter, Ego).
                    |   female(Ego), sister[eq](A, Ego), son(Alter, A).
                    |   spice(A, Ego), spouse(B, A), not(equal(Ego, B)), son(Alter, B), son(Alter, A).
                    |   brother(A, Ego), son(Alter, A).
                    |   mother(A, Ego), sister(B, A), son(C, B), son(Alter, C).
{"BroSo_FaBroDaSo_FaFaBroSoDaSo_FaFaMoBroSoDaSo_FaMoBroDaSo_FaMoSisSoDaSo_MoFaBroDaDaSo_MoMoSisDaDaSo_MoSisDaSo_MoSisSoSo_SisSo_So_StsisSo_Stso"}
;; 0
%botsasa:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 1
%botsasa:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 2
%botsasa:1, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 3
%botsasa:1, sister[eq]:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 4
%botsasa:1, sister[eq]:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 5
%botsasa:1, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 6
%botsasa:1, sister[eq]:5, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 7
%botsasa:1, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 8
%botsasa:1, sister[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 9
%botsasa:1, sister[eq]:8, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 10
%botsasa:1, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {StsisSo}  
 female(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), son(Alter, E).
;; 11
%botsasa:1, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=5, S=2, Star=0,  {StsisSo}  
 female(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), son(Alter, E).
;; 12
%botsasa:2, spice:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stso}  
 husband(A, Ego), spouse(B, A), not(equal(Ego, B)), son(Alter, B), son(Alter, A).
;; 13
%botsasa:2, spice:1%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stso}  
 wife(A, Ego), spouse(B, A), not(equal(Ego, B)), son(Alter, B), son(Alter, A).
;; 14
%botsasa:3, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 15
%botsasa:4, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).


botsoka(Alter, Ego) :-  mother(A, Ego), brother(B, A), son(Alter, B).
                    |   father(A, Ego), brother(B, A), son(C, B), son(Alter, C).
                    |   female(Ego), father(A, Ego), brother(B, A), daughter(C, B), son(Alter, C).
{"FaBroDaSo_FaBroSoSo_MoBroSo"}
;; 0
%botsoka:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 1
%botsoka:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 2
%botsoka:2, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).


botzenopache(Alter, Ego) :-  spice(A, Ego), brother(B, A), wife(Alter, B).
{"HuBroWi_WiBroWi"}
;; 0
%botzenopache:0, spice:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {HuBroWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 1
%botzenopache:0, spice:1, brother:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {WiBroWi}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


brother(Alter, Ego) :-  sibling(Alter, Ego), male(Alter).
;; 0
%brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).


brother[eq](Alter, Ego) :-  brother(Alter, Ego).
                        |   father(A, Ego), brother(B, A), son(Alter, B).
                        |   father(A, Ego), father(B, A), brother(C, B), son(D, C), son(Alter, D).
                        |   father(A, Ego), mother(B, A), sister[eq](C, B), son(D, C), son(Alter, D).
                        |   father(A, Ego), mother(B, A), brother(C, B), son(Alter, C).
                        |   father(A, Ego), mother(B, A), mother(C, B), brother(D, C), son(Alter, D).
                        |   mother(A, Ego), sister[eq](B, A), son(Alter, B).
                        |   mother(A, Ego), brother(Alter, A).
                        |   mother(A, Ego), mother(B, A), brother(Alter, B).
                        |   mother(A, Ego), father(B, A), brother(C, B), son(Alter, C).
                        |   mother(A, Ego), mother(B, A), sister(C, B), son(Alter, C).
                        |   mother(A, Ego), mother(B, A), mother(C, B), sister(D, C), daughter(E, D), son(Alter, E).
                        |   mother(A, Ego), father(B, A), brother(C, B), son(Alter, C).
                        |   step_brother(Alter, Ego).
;; 0
%brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%brother[eq]:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%brother[eq]:2, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 3
%brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 4
%brother[eq]:3, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H).
;; 5
%brother[eq]:3, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 6
%brother[eq]:3, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(Alter, H).
;; 7
%brother[eq]:3, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(Alter, H).
;; 8
%brother[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 9
%brother[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 10
%brother[eq]:6, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 11
%brother[eq]:6, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 12
%brother[eq]:6, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 13
%brother[eq]:6, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 14
%brother[eq]:6, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 15
%brother[eq]:6, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 16
%brother[eq]:6, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 17
%brother[eq]:6, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 18
%brother[eq]:6, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(Alter, F).
;; 19
%brother[eq]:6, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(Alter, F).
;; 20
%brother[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 21
%brother[eq]:8, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 22
%brother[eq]:9, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 23
%brother[eq]:10, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 24
%brother[eq]:11, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).
;; 25
%brother[eq]:12, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 26
%brother[eq]:13, step_brother:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C).
;; 27
%brother[eq]:13, step_brother:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C).


brother[eq]1(Alter, Ego) :-  brother[eq](Alter, Ego).
                         |   sister[eq]1(A, Ego), son(Alter, A).
;; 0
%brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%brother[eq]1:0, brother[eq]:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%brother[eq]1:0, brother[eq]:2, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 3
%brother[eq]1:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 4
%brother[eq]1:0, brother[eq]:3, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H).
;; 5
%brother[eq]1:0, brother[eq]:3, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 6
%brother[eq]1:0, brother[eq]:3, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(Alter, H).
;; 7
%brother[eq]1:0, brother[eq]:3, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(Alter, H).
;; 8
%brother[eq]1:0, brother[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 9
%brother[eq]1:0, brother[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 10
%brother[eq]1:0, brother[eq]:6, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 11
%brother[eq]1:0, brother[eq]:6, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 12
%brother[eq]1:0, brother[eq]:6, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 13
%brother[eq]1:0, brother[eq]:6, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 14
%brother[eq]1:0, brother[eq]:6, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 15
%brother[eq]1:0, brother[eq]:6, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 16
%brother[eq]1:0, brother[eq]:6, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 17
%brother[eq]1:0, brother[eq]:6, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 18
%brother[eq]1:0, brother[eq]:6, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(Alter, F).
;; 19
%brother[eq]1:0, brother[eq]:6, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(Alter, F).
;; 20
%brother[eq]1:0, brother[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 21
%brother[eq]1:0, brother[eq]:8, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 22
%brother[eq]1:0, brother[eq]:9, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 23
%brother[eq]1:0, brother[eq]:10, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 24
%brother[eq]1:0, brother[eq]:11, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).
;; 25
%brother[eq]1:0, brother[eq]:12, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 26
%brother[eq]1:0, brother[eq]:13, step_brother:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C).
;; 27
%brother[eq]1:0, brother[eq]:13, step_brother:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C).
;; 28
%brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 29
%brother[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 30
%brother[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 31
%brother[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 32
%brother[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 33
%brother[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 34
%brother[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 35
%brother[eq]1:1, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 36
%brother[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 37
%brother[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), son(Alter, E).
;; 38
%brother[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), son(Alter, E).
;; 39
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(Alter, D).
;; 40
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 41
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 42
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 43
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 44
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 45
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 46
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 47
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(F, E), son(Alter, F).
;; 48
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(F, E), son(Alter, F).
;; 49
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 50
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 51
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 52
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 53
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(F, E), daughter(G, F), son(Alter, G).
;; 54
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(F, E), daughter(G, F), son(Alter, G).


busbapeta(Alter, Ego) :-  son(A, Ego), gen_dn[aux]09(Alter, A).
                      |   daughter(A, Ego), gen_dn[aux]09(Alter, A).
                      |   brother[eq](A, Ego), son(B, A), gen_dn[aux]09(Alter, B).
                      |   brother[eq](A, Ego), daughter(B, A), gen_dn[aux]09(Alter, B).
                      |   sister[eq](A, Ego), children(B, A), son(Alter, B).
                      |   female(Ego), sister[eq](A, Ego), gen_dn[aux]09(B, A), daughter(Alter, B).
                      |   female(Ego), sister(A, Ego), children(B, A), children(C, B), son(Alter, C).
                      |   mother(A, Ego), sister(B, A), children(C, B), children(D, C), gen_dn[aux]09(Alter, D).
                      |   father(A, Ego), brother(B, A), children(C, B), son(D, C), gen_dn[aux]09(Alter, D).
                      |   father(A, Ego), brother(B, A), children(C, B), daughter(D, C), gen_dn[aux]09(Alter, D).
{"BroDaDa_BroDaDaDa_BroDaDaSo_BroDaSo_BroDaSoDa_BroDaSoSo_BroSoDa_BroSoDaDa_BroSoDaSo_BroSoSo_BroSoSoDa_BroSoSoSo_DaDa_DaDaDa_DaDaSo_DaSo_DaSoDa_DaSoSo_FaBroDaDaDa_FaBroDaDaDaDa_FaBroDaDaDaSo_FaBroDaDaSo_FaBroDaDaSoDa_FaBroDaDaSoSo_FaBroDaSoDa_FaBroDaSoDaDa_FaBroDaSoDaSo_FaBroDaSoSo_FaBroDaSoSoDa_FaBroDaSoSoSo_FaBroSoDaDa_FaBroSoDaDaDa_FaBroSoDaDaSo_FaBroSoDaSo_FaBroSoDaSoDa_FaBroSoDaSoSo_FaBroSoSoDa_FaBroSoSoDaDa_FaBroSoSoDaSo_FaBroSoSoSo_FaBroSoSoSoDa_FaBroSoSoSoSo_FaFaBroSoDaDaDa_FaFaBroSoDaDaDaDa_FaFaBroSoDaDaSo_FaFaBroSoDaDaSoDa_FaFaBroSoDaSoDa_FaFaBroSoDaSoDaDa_FaFaBroSoDaSoSo_FaFaBroSoDaSoSoDa_FaFaBroSoSoDaDa_FaFaBroSoSoDaSo_FaFaBroSoSoSoDa_FaFaBroSoSoSoSo_FaFaMoBroSoDaDaDa_FaFaMoBroSoDaDaDaDa_FaFaMoBroSoDaDaSoDa_FaFaMoBroSoDaSoDa_FaFaMoBroSoDaSoDaDa_FaFaMoBroSoDaSoSoDa_FaMoBroDaDaDa_FaMoBroDaDaDaDa_FaMoBroDaDaSo_FaMoBroDaDaSoDa_FaMoBroDaSoDa_FaMoBroDaSoDaDa_FaMoBroDaSoSo_FaMoBroDaSoSoDa_FaMoBroSoDaDa_FaMoBroSoDaDaDa_FaMoBroSoDaDaSo_FaMoBroSoDaSo_FaMoBroSoDaSoDa_FaMoBroSoDaSoSo_FaMoBroSoSoDa_FaMoBroSoSoDaDa_FaMoBroSoSoDaSo_FaMoBroSoSoSo_FaMoBroSoSoSoDa_FaMoBroSoSoSoSo_FaMoMoBroSoDaDa_FaMoMoBroSoDaSo_FaMoMoBroSoSoDa_FaMoMoBroSoSoSo_FaMoSisSoDaDaDa_FaMoSisSoDaDaDaDa_FaMoSisSoDaDaSo_FaMoSisSoDaDaSoDa_FaMoSisSoDaSoDa_FaMoSisSoDaSoDaDa_FaMoSisSoDaSoSo_FaMoSisSoDaSoSoDa_FaMoSisSoSoDaDa_FaMoSisSoSoDaSo_FaMoSisSoSoSoDa_FaMoSisSoSoSoSo_FaMoStsisSoSoDaDa_FaMoStsisSoSoDaDaDa_FaMoStsisSoSoDaDaSo_FaMoStsisSoSoDaSo_FaMoStsisSoSoDaSoDa_FaMoStsisSoSoDaSoSo_FaMoStsisSoSoSoDa_FaMoStsisSoSoSoDaDa_FaMoStsisSoSoSoDaSo_FaMoStsisSoSoSoSo_FaMoStsisSoSoSoSoDa_FaMoStsisSoSoSoSoSo_MoBroDaDa_MoBroDaDaDa_MoBroDaDaSo_MoBroDaSo_MoBroDaSoDa_MoBroDaSoSo_MoBroSoDa_MoBroSoDaDa_MoBroSoDaSo_MoBroSoSo_MoBroSoSoDa_MoBroSoSoSo_MoFaBroDaDaDaDa_MoFaBroDaDaDaDaDa_MoFaBroDaDaDaSo_MoFaBroDaDaDaSoDa_MoFaBroDaDaSoDa_MoFaBroDaDaSoDaDa_MoFaBroDaDaSoSo_MoFaBroDaDaSoSoDa_MoFaBroDaSoDaDa_MoFaBroDaSoDaSo_MoFaBroDaSoSoDa_MoFaBroDaSoSoSo_MoFaBroSoDaDa_MoFaBroSoDaDaDa_MoFaBroSoDaDaSo_MoFaBroSoDaSo_MoFaBroSoDaSoDa_MoFaBroSoDaSoSo_MoFaBroSoSoDa_MoFaBroSoSoDaDa_MoFaBroSoSoDaSo_MoFaBroSoSoSo_MoFaBroSoSoSoDa_MoFaBroSoSoSoSo_MoMoBroDaDa_MoMoBroDaDaDa_MoMoBroDaDaSo_MoMoBroDaSo_MoMoBroDaSoDa_MoMoBroDaSoSo_MoMoBroSoDa_MoMoBroSoDaDa_MoMoBroSoDaSo_MoMoBroSoSo_MoMoBroSoSoDa_MoMoBroSoSoSo_MoMoSisDaDaDaDa_MoMoSisDaDaDaDaDa_MoMoSisDaDaDaSo_MoMoSisDaDaDaSoDa_MoMoSisDaDaSoDa_MoMoSisDaDaSoDaDa_MoMoSisDaDaSoSo_MoMoSisDaDaSoSoDa_MoMoSisDaSoDaDa_MoMoSisDaSoDaSo_MoMoSisDaSoSoDa_MoMoSisDaSoSoSo_MoMoSisSoDaDa_MoMoSisSoDaDaDa_MoMoSisSoDaDaSo_MoMoSisSoDaSo_MoMoSisSoDaSoDa_MoMoSisSoDaSoSo_MoMoSisSoSoDa_MoMoSisSoSoDaDa_MoMoSisSoSoDaSo_MoMoSisSoSoSo_MoMoSisSoSoSoDa_MoMoSisSoSoSoSo_MoSisDaDaDa_MoSisDaDaDaDa_MoSisDaDaDaSo_MoSisDaDaSo_MoSisDaDaSoDa_MoSisDaDaSoSo_MoSisDaSoDa_MoSisDaSoDaDa_MoSisDaSoDaSo_MoSisDaSoSo_MoSisDaSoSoDa_MoSisDaSoSoSo_MoSisSoDaDa_MoSisSoDaDaDa_MoSisSoDaDaSo_MoSisSoDaSo_MoSisSoDaSoDa_MoSisSoDaSoSo_MoSisSoSoDa_MoSisSoSoDaDa_MoSisSoSoDaSo_MoSisSoSoSo_MoSisSoSoSoDa_MoSisSoSoSoSo_MoStsisSoDaDa_MoStsisSoDaDaDa_MoStsisSoDaDaSo_MoStsisSoDaSo_MoStsisSoDaSoDa_MoStsisSoDaSoSo_MoStsisSoSoDa_MoStsisSoSoDaDa_MoStsisSoSoDaSo_MoStsisSoSoSo_MoStsisSoSoSoDa_MoStsisSoSoSoSo_SisDaDa_SisDaDaDa_SisDaDaSo_SisDaSo_SisDaSoDa_SisDaSoSo_SisSoDa_SisSoDaDa_SisSoDaSo_SisSoSo_SisSoSoDa_SisSoSoSo_SoDa_SoDaDa_SoDaSo_SoSo_SoSoDa_SoSoSo_StbroDaDa_StbroDaDaDa_StbroDaDaSo_StbroDaSo_StbroDaSoDa_StbroDaSoSo_StbroSoDa_StbroSoDaDa_StbroSoDaSo_StbroSoSo_StbroSoSoDa_StbroSoSoSo_StsisDaDa_StsisDaDaDa_StsisDaSo_StsisDaSoDa_StsisSoDa_StsisSoDaDa_StsisSoSo_StsisSoSoDa"}
;; 0
%busbapeta:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).
;; 1
%busbapeta:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).
;; 2
%busbapeta:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
 son(A, Ego), son(B, A), son(Alter, B).
;; 3
%busbapeta:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
 son(A, Ego), son(B, A), daughter(Alter, B).
;; 4
%busbapeta:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
 son(A, Ego), daughter(B, A), son(Alter, B).
;; 5
%busbapeta:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
 son(A, Ego), daughter(B, A), daughter(Alter, B).
;; 6
%busbapeta:1, gen_dn[aux]09:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).
;; 7
%busbapeta:1, gen_dn[aux]09:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).
;; 8
%busbapeta:1, gen_dn[aux]09:2%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
 daughter(A, Ego), son(B, A), son(Alter, B).
;; 9
%busbapeta:1, gen_dn[aux]09:3%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
 daughter(A, Ego), son(B, A), daughter(Alter, B).
;; 10
%busbapeta:1, gen_dn[aux]09:4%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
 daughter(A, Ego), daughter(B, A), son(Alter, B).
;; 11
%busbapeta:1, gen_dn[aux]09:5%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
 daughter(A, Ego), daughter(B, A), daughter(Alter, B).
;; 12
%busbapeta:2, brother[eq]:0, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(Alter, D).
;; 13
%busbapeta:2, brother[eq]:0, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(Alter, D).
;; 14
%busbapeta:2, brother[eq]:0, brother:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), son(Alter, E).
;; 15
%busbapeta:2, brother[eq]:0, brother:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), daughter(Alter, E).
;; 16
%busbapeta:2, brother[eq]:0, brother:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), son(Alter, E).
;; 17
%busbapeta:2, brother[eq]:0, brother:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 18
%busbapeta:2, brother[eq]:1, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 19
%busbapeta:2, brother[eq]:1, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 20
%busbapeta:2, brother[eq]:1, brother:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 21
%busbapeta:2, brother[eq]:1, brother:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 22
%busbapeta:2, brother[eq]:1, brother:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 23
%busbapeta:2, brother[eq]:1, brother:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 24
%busbapeta:2, brother[eq]:2, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 25
%busbapeta:2, brother[eq]:2, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 26
%busbapeta:2, brother[eq]:3, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 27
%busbapeta:2, brother[eq]:3, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 28
%busbapeta:2, brother[eq]:3, sister[eq]:9, step_sister:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=10, S=2, Star=0,  {FaMoStsisSoSoSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), son(J, I), son(Alter, J).
;; 29
%busbapeta:2, brother[eq]:3, sister[eq]:9, step_sister:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=10, S=2, Star=0,  {FaMoStsisSoSoSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), son(J, I), daughter(Alter, J).
;; 30
%busbapeta:2, brother[eq]:3, sister[eq]:9, step_sister:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=11, S=2, Star=0,  {FaMoStsisSoSoSoSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), son(J, I), son(K, J), son(Alter, K).
;; 31
%busbapeta:2, brother[eq]:3, sister[eq]:9, step_sister:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=11, S=2, Star=0,  {FaMoStsisSoSoSoSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), son(J, I), son(K, J), daughter(Alter, K).
;; 32
%busbapeta:2, brother[eq]:3, sister[eq]:9, step_sister:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=11, S=2, Star=0,  {FaMoStsisSoSoSoDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), son(J, I), daughter(K, J), son(Alter, K).
;; 33
%busbapeta:2, brother[eq]:3, sister[eq]:9, step_sister:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=11, S=2, Star=0,  {FaMoStsisSoSoSoDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), son(J, I), daughter(K, J), daughter(Alter, K).
;; 34
%busbapeta:2, brother[eq]:3, sister[eq]:9, step_sister:1, gen_dn[aux]09:0%
 Lvl=-2,  PC=10, S=2, Star=0,  {FaMoStsisSoSoSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), son(J, I), son(Alter, J).
;; 35
%busbapeta:2, brother[eq]:3, sister[eq]:9, step_sister:1, gen_dn[aux]09:1%
 Lvl=-2,  PC=10, S=2, Star=0,  {FaMoStsisSoSoSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), son(J, I), daughter(Alter, J).
;; 36
%busbapeta:2, brother[eq]:3, sister[eq]:9, step_sister:1, gen_dn[aux]09:2%
 Lvl=-3,  PC=11, S=2, Star=0,  {FaMoStsisSoSoSoSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), son(J, I), son(K, J), son(Alter, K).
;; 37
%busbapeta:2, brother[eq]:3, sister[eq]:9, step_sister:1, gen_dn[aux]09:3%
 Lvl=-3,  PC=11, S=2, Star=0,  {FaMoStsisSoSoSoSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), son(J, I), son(K, J), daughter(Alter, K).
;; 38
%busbapeta:2, brother[eq]:3, sister[eq]:9, step_sister:1, gen_dn[aux]09:4%
 Lvl=-3,  PC=11, S=2, Star=0,  {FaMoStsisSoSoSoDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), son(J, I), daughter(K, J), son(Alter, K).
;; 39
%busbapeta:2, brother[eq]:3, sister[eq]:9, step_sister:1, gen_dn[aux]09:5%
 Lvl=-3,  PC=11, S=2, Star=0,  {FaMoStsisSoSoSoDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), son(J, I), daughter(K, J), daughter(Alter, K).
;; 40
%busbapeta:2, brother[eq]:4, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 41
%busbapeta:2, brother[eq]:4, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 42
%busbapeta:2, brother[eq]:4, brother:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 43
%busbapeta:2, brother[eq]:4, brother:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 44
%busbapeta:2, brother[eq]:4, brother:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 45
%busbapeta:2, brother[eq]:4, brother:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 46
%busbapeta:2, brother[eq]:5, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 47
%busbapeta:2, brother[eq]:5, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(Alter, H).
;; 48
%busbapeta:2, brother[eq]:6, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 49
%busbapeta:2, brother[eq]:6, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 50
%busbapeta:2, brother[eq]:6, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 51
%busbapeta:2, brother[eq]:6, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 52
%busbapeta:2, brother[eq]:6, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 53
%busbapeta:2, brother[eq]:6, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 54
%busbapeta:2, brother[eq]:6, sister[eq]:1, sister:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 55
%busbapeta:2, brother[eq]:6, sister[eq]:1, sister:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 56
%busbapeta:2, brother[eq]:6, sister[eq]:4, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 57
%busbapeta:2, brother[eq]:6, sister[eq]:4, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 58
%busbapeta:2, brother[eq]:6, sister[eq]:9, step_sister:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {MoStsisSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(G, F), son(H, G), son(Alter, H).
;; 59
%busbapeta:2, brother[eq]:6, sister[eq]:9, step_sister:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {MoStsisSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(G, F), son(H, G), daughter(Alter, H).
;; 60
%busbapeta:2, brother[eq]:6, sister[eq]:9, step_sister:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=9, S=2, Star=0,  {MoStsisSoSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 61
%busbapeta:2, brother[eq]:6, sister[eq]:9, step_sister:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=9, S=2, Star=0,  {MoStsisSoSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 62
%busbapeta:2, brother[eq]:6, sister[eq]:9, step_sister:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=9, S=2, Star=0,  {MoStsisSoSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 63
%busbapeta:2, brother[eq]:6, sister[eq]:9, step_sister:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=9, S=2, Star=0,  {MoStsisSoSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 64
%busbapeta:2, brother[eq]:6, sister[eq]:9, step_sister:1, gen_dn[aux]09:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {MoStsisSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(G, F), son(H, G), son(Alter, H).
;; 65
%busbapeta:2, brother[eq]:6, sister[eq]:9, step_sister:1, gen_dn[aux]09:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {MoStsisSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(G, F), son(H, G), daughter(Alter, H).
;; 66
%busbapeta:2, brother[eq]:6, sister[eq]:9, step_sister:1, gen_dn[aux]09:2%
 Lvl=-3,  PC=9, S=2, Star=0,  {MoStsisSoSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(G, F), son(H, G), son(I, H), son(Alter, I).
;; 67
%busbapeta:2, brother[eq]:6, sister[eq]:9, step_sister:1, gen_dn[aux]09:3%
 Lvl=-3,  PC=9, S=2, Star=0,  {MoStsisSoSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 68
%busbapeta:2, brother[eq]:6, sister[eq]:9, step_sister:1, gen_dn[aux]09:4%
 Lvl=-3,  PC=9, S=2, Star=0,  {MoStsisSoSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(G, F), son(H, G), daughter(I, H), son(Alter, I).
;; 69
%busbapeta:2, brother[eq]:6, sister[eq]:9, step_sister:1, gen_dn[aux]09:5%
 Lvl=-3,  PC=9, S=2, Star=0,  {MoStsisSoSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 70
%busbapeta:2, brother[eq]:7, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 71
%busbapeta:2, brother[eq]:7, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 72
%busbapeta:2, brother[eq]:7, brother:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 73
%busbapeta:2, brother[eq]:7, brother:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 74
%busbapeta:2, brother[eq]:7, brother:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 75
%busbapeta:2, brother[eq]:7, brother:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 76
%busbapeta:2, brother[eq]:8, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 77
%busbapeta:2, brother[eq]:8, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 78
%busbapeta:2, brother[eq]:8, brother:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 79
%busbapeta:2, brother[eq]:8, brother:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 80
%busbapeta:2, brother[eq]:8, brother:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 81
%busbapeta:2, brother[eq]:8, brother:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 82
%busbapeta:2, brother[eq]:9, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 83
%busbapeta:2, brother[eq]:9, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 84
%busbapeta:2, brother[eq]:9, brother:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 85
%busbapeta:2, brother[eq]:9, brother:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 86
%busbapeta:2, brother[eq]:9, brother:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 87
%busbapeta:2, brother[eq]:9, brother:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 88
%busbapeta:2, brother[eq]:10, sister:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 89
%busbapeta:2, brother[eq]:10, sister:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 90
%busbapeta:2, brother[eq]:10, sister:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 91
%busbapeta:2, brother[eq]:10, sister:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 92
%busbapeta:2, brother[eq]:10, sister:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 93
%busbapeta:2, brother[eq]:10, sister:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 94
%busbapeta:2, brother[eq]:12, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 95
%busbapeta:2, brother[eq]:12, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 96
%busbapeta:2, brother[eq]:12, brother:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 97
%busbapeta:2, brother[eq]:12, brother:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 98
%busbapeta:2, brother[eq]:12, brother:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 99
%busbapeta:2, brother[eq]:12, brother:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 100
%busbapeta:2, brother[eq]:13, step_brother:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {StbroSoSo}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(E, D), son(E, C), son(F, E), son(Alter, F).
;; 101
%busbapeta:2, brother[eq]:13, step_brother:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {StbroSoDa}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(E, D), son(E, C), son(F, E), daughter(Alter, F).
;; 102
%busbapeta:2, brother[eq]:13, step_brother:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=7, S=2, Star=0,  {StbroSoSoSo}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(E, D), son(E, C), son(F, E), son(G, F), son(Alter, G).
;; 103
%busbapeta:2, brother[eq]:13, step_brother:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=7, S=2, Star=0,  {StbroSoSoDa}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(E, D), son(E, C), son(F, E), son(G, F), daughter(Alter, G).
;; 104
%busbapeta:2, brother[eq]:13, step_brother:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=7, S=2, Star=0,  {StbroSoDaSo}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(E, D), son(E, C), son(F, E), daughter(G, F), son(Alter, G).
;; 105
%busbapeta:2, brother[eq]:13, step_brother:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=7, S=2, Star=0,  {StbroSoDaDa}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(E, D), son(E, C), son(F, E), daughter(G, F), daughter(Alter, G).
;; 106
%busbapeta:2, brother[eq]:13, step_brother:1, gen_dn[aux]09:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {StbroSoSo}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(E, D), son(E, C), son(F, E), son(Alter, F).
;; 107
%busbapeta:2, brother[eq]:13, step_brother:1, gen_dn[aux]09:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {StbroSoDa}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(E, D), son(E, C), son(F, E), daughter(Alter, F).
;; 108
%busbapeta:2, brother[eq]:13, step_brother:1, gen_dn[aux]09:2%
 Lvl=-3,  PC=7, S=2, Star=0,  {StbroSoSoSo}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(E, D), son(E, C), son(F, E), son(G, F), son(Alter, G).
;; 109
%busbapeta:2, brother[eq]:13, step_brother:1, gen_dn[aux]09:3%
 Lvl=-3,  PC=7, S=2, Star=0,  {StbroSoSoDa}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(E, D), son(E, C), son(F, E), son(G, F), daughter(Alter, G).
;; 110
%busbapeta:2, brother[eq]:13, step_brother:1, gen_dn[aux]09:4%
 Lvl=-3,  PC=7, S=2, Star=0,  {StbroSoDaSo}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(E, D), son(E, C), son(F, E), daughter(G, F), son(Alter, G).
;; 111
%busbapeta:2, brother[eq]:13, step_brother:1, gen_dn[aux]09:5%
 Lvl=-3,  PC=7, S=2, Star=0,  {StbroSoDaDa}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(E, D), son(E, C), son(F, E), daughter(G, F), daughter(Alter, G).
;; 112
%busbapeta:3, brother[eq]:0, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(Alter, D).
;; 113
%busbapeta:3, brother[eq]:0, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(Alter, D).
;; 114
%busbapeta:3, brother[eq]:0, brother:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), son(Alter, E).
;; 115
%busbapeta:3, brother[eq]:0, brother:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 116
%busbapeta:3, brother[eq]:0, brother:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 117
%busbapeta:3, brother[eq]:0, brother:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), daughter(Alter, E).
;; 118
%busbapeta:3, brother[eq]:1, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 119
%busbapeta:3, brother[eq]:1, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 120
%busbapeta:3, brother[eq]:1, brother:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 121
%busbapeta:3, brother[eq]:1, brother:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 122
%busbapeta:3, brother[eq]:1, brother:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 123
%busbapeta:3, brother[eq]:1, brother:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 124
%busbapeta:3, brother[eq]:2, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 125
%busbapeta:3, brother[eq]:2, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 126
%busbapeta:3, brother[eq]:3, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 127
%busbapeta:3, brother[eq]:3, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 128
%busbapeta:3, brother[eq]:3, sister[eq]:9, step_sister:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=10, S=2, Star=0,  {FaMoStsisSoSoDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), daughter(J, I), son(Alter, J).
;; 129
%busbapeta:3, brother[eq]:3, sister[eq]:9, step_sister:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=10, S=2, Star=0,  {FaMoStsisSoSoDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), daughter(J, I), daughter(Alter, J).
;; 130
%busbapeta:3, brother[eq]:3, sister[eq]:9, step_sister:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=11, S=2, Star=0,  {FaMoStsisSoSoDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), daughter(J, I), son(K, J), son(Alter, K).
;; 131
%busbapeta:3, brother[eq]:3, sister[eq]:9, step_sister:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=11, S=2, Star=0,  {FaMoStsisSoSoDaSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), daughter(J, I), son(K, J), daughter(Alter, K).
;; 132
%busbapeta:3, brother[eq]:3, sister[eq]:9, step_sister:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=11, S=2, Star=0,  {FaMoStsisSoSoDaDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), daughter(J, I), daughter(K, J), son(Alter, K).
;; 133
%busbapeta:3, brother[eq]:3, sister[eq]:9, step_sister:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=11, S=2, Star=0,  {FaMoStsisSoSoDaDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), daughter(J, I), daughter(K, J), daughter(Alter, K).
;; 134
%busbapeta:3, brother[eq]:3, sister[eq]:9, step_sister:1, gen_dn[aux]09:0%
 Lvl=-2,  PC=10, S=2, Star=0,  {FaMoStsisSoSoDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), daughter(J, I), son(Alter, J).
;; 135
%busbapeta:3, brother[eq]:3, sister[eq]:9, step_sister:1, gen_dn[aux]09:1%
 Lvl=-2,  PC=10, S=2, Star=0,  {FaMoStsisSoSoDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), daughter(J, I), daughter(Alter, J).
;; 136
%busbapeta:3, brother[eq]:3, sister[eq]:9, step_sister:1, gen_dn[aux]09:2%
 Lvl=-3,  PC=11, S=2, Star=0,  {FaMoStsisSoSoDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), daughter(J, I), son(K, J), son(Alter, K).
;; 137
%busbapeta:3, brother[eq]:3, sister[eq]:9, step_sister:1, gen_dn[aux]09:3%
 Lvl=-3,  PC=11, S=2, Star=0,  {FaMoStsisSoSoDaSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), daughter(J, I), son(K, J), daughter(Alter, K).
;; 138
%busbapeta:3, brother[eq]:3, sister[eq]:9, step_sister:1, gen_dn[aux]09:4%
 Lvl=-3,  PC=11, S=2, Star=0,  {FaMoStsisSoSoDaDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), daughter(J, I), daughter(K, J), son(Alter, K).
;; 139
%busbapeta:3, brother[eq]:3, sister[eq]:9, step_sister:1, gen_dn[aux]09:5%
 Lvl=-3,  PC=11, S=2, Star=0,  {FaMoStsisSoSoDaDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), daughter(J, I), daughter(K, J), daughter(Alter, K).
;; 140
%busbapeta:3, brother[eq]:4, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 141
%busbapeta:3, brother[eq]:4, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 142
%busbapeta:3, brother[eq]:4, brother:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 143
%busbapeta:3, brother[eq]:4, brother:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 144
%busbapeta:3, brother[eq]:4, brother:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 145
%busbapeta:3, brother[eq]:4, brother:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 146
%busbapeta:3, brother[eq]:5, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 147
%busbapeta:3, brother[eq]:5, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 148
%busbapeta:3, brother[eq]:6, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 149
%busbapeta:3, brother[eq]:6, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 150
%busbapeta:3, brother[eq]:6, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 151
%busbapeta:3, brother[eq]:6, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 152
%busbapeta:3, brother[eq]:6, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 153
%busbapeta:3, brother[eq]:6, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 154
%busbapeta:3, brother[eq]:6, sister[eq]:1, sister:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 155
%busbapeta:3, brother[eq]:6, sister[eq]:1, sister:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 156
%busbapeta:3, brother[eq]:6, sister[eq]:4, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 157
%busbapeta:3, brother[eq]:6, sister[eq]:4, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 158
%busbapeta:3, brother[eq]:6, sister[eq]:9, step_sister:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {MoStsisSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(G, F), daughter(H, G), son(Alter, H).
;; 159
%busbapeta:3, brother[eq]:6, sister[eq]:9, step_sister:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {MoStsisSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(G, F), daughter(H, G), daughter(Alter, H).
;; 160
%busbapeta:3, brother[eq]:6, sister[eq]:9, step_sister:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=9, S=2, Star=0,  {MoStsisSoDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 161
%busbapeta:3, brother[eq]:6, sister[eq]:9, step_sister:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=9, S=2, Star=0,  {MoStsisSoDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 162
%busbapeta:3, brother[eq]:6, sister[eq]:9, step_sister:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=9, S=2, Star=0,  {MoStsisSoDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 163
%busbapeta:3, brother[eq]:6, sister[eq]:9, step_sister:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=9, S=2, Star=0,  {MoStsisSoDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 164
%busbapeta:3, brother[eq]:6, sister[eq]:9, step_sister:1, gen_dn[aux]09:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {MoStsisSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(G, F), daughter(H, G), son(Alter, H).
;; 165
%busbapeta:3, brother[eq]:6, sister[eq]:9, step_sister:1, gen_dn[aux]09:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {MoStsisSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(G, F), daughter(H, G), daughter(Alter, H).
;; 166
%busbapeta:3, brother[eq]:6, sister[eq]:9, step_sister:1, gen_dn[aux]09:2%
 Lvl=-3,  PC=9, S=2, Star=0,  {MoStsisSoDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 167
%busbapeta:3, brother[eq]:6, sister[eq]:9, step_sister:1, gen_dn[aux]09:3%
 Lvl=-3,  PC=9, S=2, Star=0,  {MoStsisSoDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 168
%busbapeta:3, brother[eq]:6, sister[eq]:9, step_sister:1, gen_dn[aux]09:4%
 Lvl=-3,  PC=9, S=2, Star=0,  {MoStsisSoDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I).
;; 169
%busbapeta:3, brother[eq]:6, sister[eq]:9, step_sister:1, gen_dn[aux]09:5%
 Lvl=-3,  PC=9, S=2, Star=0,  {MoStsisSoDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 170
%busbapeta:3, brother[eq]:7, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 171
%busbapeta:3, brother[eq]:7, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 172
%busbapeta:3, brother[eq]:7, brother:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 173
%busbapeta:3, brother[eq]:7, brother:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 174
%busbapeta:3, brother[eq]:7, brother:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 175
%busbapeta:3, brother[eq]:7, brother:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 176
%busbapeta:3, brother[eq]:8, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 177
%busbapeta:3, brother[eq]:8, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 178
%busbapeta:3, brother[eq]:8, brother:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 179
%busbapeta:3, brother[eq]:8, brother:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 180
%busbapeta:3, brother[eq]:8, brother:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 181
%busbapeta:3, brother[eq]:8, brother:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 182
%busbapeta:3, brother[eq]:9, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 183
%busbapeta:3, brother[eq]:9, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 184
%busbapeta:3, brother[eq]:9, brother:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 185
%busbapeta:3, brother[eq]:9, brother:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 186
%busbapeta:3, brother[eq]:9, brother:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 187
%busbapeta:3, brother[eq]:9, brother:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 188
%busbapeta:3, brother[eq]:10, sister:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 189
%busbapeta:3, brother[eq]:10, sister:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 190
%busbapeta:3, brother[eq]:10, sister:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 191
%busbapeta:3, brother[eq]:10, sister:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 192
%busbapeta:3, brother[eq]:10, sister:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 193
%busbapeta:3, brother[eq]:10, sister:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 194
%busbapeta:3, brother[eq]:12, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 195
%busbapeta:3, brother[eq]:12, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 196
%busbapeta:3, brother[eq]:12, brother:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 197
%busbapeta:3, brother[eq]:12, brother:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 198
%busbapeta:3, brother[eq]:12, brother:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 199
%busbapeta:3, brother[eq]:12, brother:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 200
%busbapeta:3, brother[eq]:13, step_brother:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {StbroDaSo}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(E, D), son(E, C), daughter(F, E), son(Alter, F).
;; 201
%busbapeta:3, brother[eq]:13, step_brother:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {StbroDaDa}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(E, D), son(E, C), daughter(F, E), daughter(Alter, F).
;; 202
%busbapeta:3, brother[eq]:13, step_brother:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=7, S=2, Star=0,  {StbroDaSoSo}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(E, D), son(E, C), daughter(F, E), son(G, F), son(Alter, G).
;; 203
%busbapeta:3, brother[eq]:13, step_brother:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=7, S=2, Star=0,  {StbroDaSoDa}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(E, D), son(E, C), daughter(F, E), son(G, F), daughter(Alter, G).
;; 204
%busbapeta:3, brother[eq]:13, step_brother:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=7, S=2, Star=0,  {StbroDaDaSo}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(E, D), son(E, C), daughter(F, E), daughter(G, F), son(Alter, G).
;; 205
%busbapeta:3, brother[eq]:13, step_brother:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=7, S=2, Star=0,  {StbroDaDaDa}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(E, D), son(E, C), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 206
%busbapeta:3, brother[eq]:13, step_brother:1, gen_dn[aux]09:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {StbroDaSo}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(E, D), son(E, C), daughter(F, E), son(Alter, F).
;; 207
%busbapeta:3, brother[eq]:13, step_brother:1, gen_dn[aux]09:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {StbroDaDa}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(E, D), son(E, C), daughter(F, E), daughter(Alter, F).
;; 208
%busbapeta:3, brother[eq]:13, step_brother:1, gen_dn[aux]09:2%
 Lvl=-3,  PC=7, S=2, Star=0,  {StbroDaSoSo}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(E, D), son(E, C), daughter(F, E), son(G, F), son(Alter, G).
;; 209
%busbapeta:3, brother[eq]:13, step_brother:1, gen_dn[aux]09:3%
 Lvl=-3,  PC=7, S=2, Star=0,  {StbroDaSoDa}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(E, D), son(E, C), daughter(F, E), son(G, F), daughter(Alter, G).
;; 210
%busbapeta:3, brother[eq]:13, step_brother:1, gen_dn[aux]09:4%
 Lvl=-3,  PC=7, S=2, Star=0,  {StbroDaDaSo}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(E, D), son(E, C), daughter(F, E), daughter(G, F), son(Alter, G).
;; 211
%busbapeta:3, brother[eq]:13, step_brother:1, gen_dn[aux]09:5%
 Lvl=-3,  PC=7, S=2, Star=0,  {StbroDaDaDa}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(E, D), son(E, C), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 212
%busbapeta:4, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(Alter, D).
;; 213
%busbapeta:4, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(Alter, D).
;; 214
%busbapeta:4, sister[eq]:1, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 215
%busbapeta:4, sister[eq]:1, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 216
%busbapeta:4, sister[eq]:2, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 217
%busbapeta:4, sister[eq]:2, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 218
%busbapeta:4, sister[eq]:3, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 219
%busbapeta:4, sister[eq]:3, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 220
%busbapeta:4, sister[eq]:4, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 221
%busbapeta:4, sister[eq]:4, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 222
%busbapeta:4, sister[eq]:5, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 223
%busbapeta:4, sister[eq]:5, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 224
%busbapeta:4, sister[eq]:6, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 225
%busbapeta:4, sister[eq]:6, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 226
%busbapeta:4, sister[eq]:8, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 227
%busbapeta:4, sister[eq]:8, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 228
%busbapeta:4, sister[eq]:9, step_sister:0, children:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {StsisSoSo}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), son(F, E), son(Alter, F).
;; 229
%busbapeta:4, sister[eq]:9, step_sister:0, children:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {StsisDaSo}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(F, E), son(Alter, F).
;; 230
%busbapeta:4, sister[eq]:9, step_sister:1, children:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {StsisSoSo}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), son(F, E), son(Alter, F).
;; 231
%busbapeta:4, sister[eq]:9, step_sister:1, children:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {StsisDaSo}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(F, E), son(Alter, F).
;; 232
%busbapeta:5, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(Alter, D).
;; 233
%busbapeta:5, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(Alter, D).
;; 234
%busbapeta:5, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), daughter(Alter, E).
;; 235
%busbapeta:5, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 236
%busbapeta:5, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 237
%busbapeta:5, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), daughter(Alter, E).
;; 238
%busbapeta:5, sister[eq]:1, sister:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 239
%busbapeta:5, sister[eq]:1, sister:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 240
%busbapeta:5, sister[eq]:1, sister:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 241
%busbapeta:5, sister[eq]:1, sister:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 242
%busbapeta:5, sister[eq]:1, sister:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 243
%busbapeta:5, sister[eq]:1, sister:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 244
%busbapeta:5, sister[eq]:2, sister:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 245
%busbapeta:5, sister[eq]:2, sister:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 246
%busbapeta:5, sister[eq]:2, sister:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaDaSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 247
%busbapeta:5, sister[eq]:2, sister:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaDaSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 248
%busbapeta:5, sister[eq]:2, sister:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaDaDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 249
%busbapeta:5, sister[eq]:2, sister:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaDaDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 250
%busbapeta:5, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 251
%busbapeta:5, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 252
%busbapeta:5, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaSoSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 253
%busbapeta:5, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 254
%busbapeta:5, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 255
%busbapeta:5, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 256
%busbapeta:5, sister[eq]:4, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 257
%busbapeta:5, sister[eq]:4, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 258
%busbapeta:5, sister[eq]:4, brother:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 259
%busbapeta:5, sister[eq]:4, brother:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 260
%busbapeta:5, sister[eq]:4, brother:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 261
%busbapeta:5, sister[eq]:4, brother:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 262
%busbapeta:5, sister[eq]:5, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 263
%busbapeta:5, sister[eq]:5, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 264
%busbapeta:5, sister[eq]:5, brother:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaFaBroSoDaSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 265
%busbapeta:5, sister[eq]:5, brother:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaFaBroSoDaSoDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 266
%busbapeta:5, sister[eq]:5, brother:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaFaBroSoDaDaSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 267
%busbapeta:5, sister[eq]:5, brother:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaFaBroSoDaDaDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 268
%busbapeta:5, sister[eq]:6, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 269
%busbapeta:5, sister[eq]:6, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 270
%busbapeta:5, sister[eq]:6, brother:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 271
%busbapeta:5, sister[eq]:6, brother:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 272
%busbapeta:5, sister[eq]:6, brother:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 273
%busbapeta:5, sister[eq]:6, brother:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 274
%busbapeta:5, sister[eq]:7, brother:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoDaSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 275
%busbapeta:5, sister[eq]:7, brother:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoDaDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 276
%busbapeta:5, sister[eq]:7, brother:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaFaMoBroSoDaSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), son(J, I), daughter(Alter, J).
;; 277
%busbapeta:5, sister[eq]:7, brother:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaFaMoBroSoDaSoDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(J, I), daughter(Alter, J).
;; 278
%busbapeta:5, sister[eq]:7, brother:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaFaMoBroSoDaDaSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), son(J, I), daughter(Alter, J).
;; 279
%busbapeta:5, sister[eq]:7, brother:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaFaMoBroSoDaDaDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(J, I), daughter(Alter, J).
;; 280
%busbapeta:5, sister[eq]:8, sister:0, sibling:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 281
%busbapeta:5, sister[eq]:8, sister:0, sibling:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 282
%busbapeta:5, sister[eq]:8, sister:0, sibling:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoSisSoDaSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 283
%busbapeta:5, sister[eq]:8, sister:0, sibling:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoSisSoDaSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(I, H), daughter(Alter, I).
;; 284
%busbapeta:5, sister[eq]:8, sister:0, sibling:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoSisSoDaDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 285
%busbapeta:5, sister[eq]:8, sister:0, sibling:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoSisSoDaDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 286
%busbapeta:5, sister[eq]:9, step_sister:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {StsisSoDa}  
 female(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), son(F, E), daughter(Alter, F).
;; 287
%busbapeta:5, sister[eq]:9, step_sister:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {StsisDaDa}  
 female(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(F, E), daughter(Alter, F).
;; 288
%busbapeta:5, sister[eq]:9, step_sister:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=7, S=2, Star=0,  {StsisSoSoDa}  
 female(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), son(F, E), son(G, F), daughter(Alter, G).
;; 289
%busbapeta:5, sister[eq]:9, step_sister:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=7, S=2, Star=0,  {StsisSoDaDa}  
 female(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), son(F, E), daughter(G, F), daughter(Alter, G).
;; 290
%busbapeta:5, sister[eq]:9, step_sister:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=7, S=2, Star=0,  {StsisDaSoDa}  
 female(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(F, E), son(G, F), daughter(Alter, G).
;; 291
%busbapeta:5, sister[eq]:9, step_sister:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=7, S=2, Star=0,  {StsisDaDaDa}  
 female(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 292
%busbapeta:5, sister[eq]:9, step_sister:1, gen_dn[aux]09:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {StsisSoDa}  
 female(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), son(F, E), daughter(Alter, F).
;; 293
%busbapeta:5, sister[eq]:9, step_sister:1, gen_dn[aux]09:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {StsisDaDa}  
 female(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(F, E), daughter(Alter, F).
;; 294
%busbapeta:5, sister[eq]:9, step_sister:1, gen_dn[aux]09:2%
 Lvl=-3,  PC=7, S=2, Star=0,  {StsisSoSoDa}  
 female(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), son(F, E), son(G, F), daughter(Alter, G).
;; 295
%busbapeta:5, sister[eq]:9, step_sister:1, gen_dn[aux]09:3%
 Lvl=-3,  PC=7, S=2, Star=0,  {StsisSoDaDa}  
 female(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), son(F, E), daughter(G, F), daughter(Alter, G).
;; 296
%busbapeta:5, sister[eq]:9, step_sister:1, gen_dn[aux]09:4%
 Lvl=-3,  PC=7, S=2, Star=0,  {StsisDaSoDa}  
 female(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(F, E), son(G, F), daughter(Alter, G).
;; 297
%busbapeta:5, sister[eq]:9, step_sister:1, gen_dn[aux]09:5%
 Lvl=-3,  PC=7, S=2, Star=0,  {StsisDaDaDa}  
 female(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 298
%busbapeta:6, sister:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), son(Alter, E).
;; 299
%busbapeta:6, sister:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), son(Alter, E).
;; 300
%busbapeta:6, sister:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), son(Alter, E).
;; 301
%busbapeta:6, sister:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 302
%busbapeta:7, sister:0, sibling:0, children:0, children:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 303
%busbapeta:7, sister:0, sibling:0, children:0, children:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 304
%busbapeta:7, sister:0, sibling:0, children:0, children:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 305
%busbapeta:7, sister:0, sibling:0, children:0, children:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 306
%busbapeta:7, sister:0, sibling:0, children:0, children:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 307
%busbapeta:7, sister:0, sibling:0, children:0, children:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 308
%busbapeta:7, sister:0, sibling:0, children:0, children:1, gen_dn[aux]09:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 309
%busbapeta:7, sister:0, sibling:0, children:0, children:1, gen_dn[aux]09:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 310
%busbapeta:7, sister:0, sibling:0, children:0, children:1, gen_dn[aux]09:2%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 311
%busbapeta:7, sister:0, sibling:0, children:0, children:1, gen_dn[aux]09:3%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 312
%busbapeta:7, sister:0, sibling:0, children:0, children:1, gen_dn[aux]09:4%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 313
%busbapeta:7, sister:0, sibling:0, children:0, children:1, gen_dn[aux]09:5%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 314
%busbapeta:7, sister:0, sibling:0, children:1, children:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 315
%busbapeta:7, sister:0, sibling:0, children:1, children:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 316
%busbapeta:7, sister:0, sibling:0, children:1, children:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 317
%busbapeta:7, sister:0, sibling:0, children:1, children:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 318
%busbapeta:7, sister:0, sibling:0, children:1, children:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 319
%busbapeta:7, sister:0, sibling:0, children:1, children:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 320
%busbapeta:7, sister:0, sibling:0, children:1, children:1, gen_dn[aux]09:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 321
%busbapeta:7, sister:0, sibling:0, children:1, children:1, gen_dn[aux]09:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 322
%busbapeta:7, sister:0, sibling:0, children:1, children:1, gen_dn[aux]09:2%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 323
%busbapeta:7, sister:0, sibling:0, children:1, children:1, gen_dn[aux]09:3%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 324
%busbapeta:7, sister:0, sibling:0, children:1, children:1, gen_dn[aux]09:4%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 325
%busbapeta:7, sister:0, sibling:0, children:1, children:1, gen_dn[aux]09:5%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 326
%busbapeta:8, brother:0, sibling:0, children:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 327
%busbapeta:8, brother:0, sibling:0, children:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 328
%busbapeta:8, brother:0, sibling:0, children:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 329
%busbapeta:8, brother:0, sibling:0, children:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 330
%busbapeta:8, brother:0, sibling:0, children:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 331
%busbapeta:8, brother:0, sibling:0, children:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 332
%busbapeta:8, brother:0, sibling:0, children:1, gen_dn[aux]09:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 333
%busbapeta:8, brother:0, sibling:0, children:1, gen_dn[aux]09:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 334
%busbapeta:8, brother:0, sibling:0, children:1, gen_dn[aux]09:2%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 335
%busbapeta:8, brother:0, sibling:0, children:1, gen_dn[aux]09:3%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 336
%busbapeta:8, brother:0, sibling:0, children:1, gen_dn[aux]09:4%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 337
%busbapeta:8, brother:0, sibling:0, children:1, gen_dn[aux]09:5%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 338
%busbapeta:9, brother:0, sibling:0, children:0, gen_dn[aux]09:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 339
%busbapeta:9, brother:0, sibling:0, children:0, gen_dn[aux]09:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 340
%busbapeta:9, brother:0, sibling:0, children:0, gen_dn[aux]09:2%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 341
%busbapeta:9, brother:0, sibling:0, children:0, gen_dn[aux]09:3%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 342
%busbapeta:9, brother:0, sibling:0, children:0, gen_dn[aux]09:4%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 343
%busbapeta:9, brother:0, sibling:0, children:0, gen_dn[aux]09:5%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 344
%busbapeta:9, brother:0, sibling:0, children:1, gen_dn[aux]09:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 345
%busbapeta:9, brother:0, sibling:0, children:1, gen_dn[aux]09:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 346
%busbapeta:9, brother:0, sibling:0, children:1, gen_dn[aux]09:2%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 347
%busbapeta:9, brother:0, sibling:0, children:1, gen_dn[aux]09:3%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 348
%busbapeta:9, brother:0, sibling:0, children:1, gen_dn[aux]09:4%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 349
%busbapeta:9, brother:0, sibling:0, children:1, gen_dn[aux]09:5%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).


buspahea(Alter, Ego) :-  male(Ego), sister(A, Ego), children(B, A), daughter(Alter, B).
                     |   father(A, Ego), sister(B, A), children(C, B), gen_dn[aux]09(Alter, C).
{"FaSisDaDa_FaSisDaDaDa_FaSisDaDaSo_FaSisDaSo_FaSisDaSoDa_FaSisDaSoSo_FaSisSoDa_FaSisSoDaDa_FaSisSoDaSo_FaSisSoSo_FaSisSoSoDa_FaSisSoSoSo_SisDaDa_SisSoDa"}
;; 0
%buspahea:0, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(Alter, D).
;; 1
%buspahea:0, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(Alter, D).
;; 2
%buspahea:1, sister:0, sibling:0, children:0, gen_dn[aux]09:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 3
%buspahea:1, sister:0, sibling:0, children:0, gen_dn[aux]09:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 4
%buspahea:1, sister:0, sibling:0, children:0, gen_dn[aux]09:2%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 5
%buspahea:1, sister:0, sibling:0, children:0, gen_dn[aux]09:3%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 6
%buspahea:1, sister:0, sibling:0, children:0, gen_dn[aux]09:4%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 7
%buspahea:1, sister:0, sibling:0, children:0, gen_dn[aux]09:5%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 8
%buspahea:1, sister:0, sibling:0, children:1, gen_dn[aux]09:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 9
%buspahea:1, sister:0, sibling:0, children:1, gen_dn[aux]09:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 10
%buspahea:1, sister:0, sibling:0, children:1, gen_dn[aux]09:2%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 11
%buspahea:1, sister:0, sibling:0, children:1, gen_dn[aux]09:3%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 12
%buspahea:1, sister:0, sibling:0, children:1, gen_dn[aux]09:4%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 13
%buspahea:1, sister:0, sibling:0, children:1, gen_dn[aux]09:5%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).


buswena(Alter, Ego) :-  female(Ego), sister[eq](Alter, Ego), elder(Alter, Ego).
{"FaBroDa_FaFaBroSoDa_FaFaMoBroSoDa_FaMoBroDa_FaMoSisSoDa_MoFaBroDaDa_MoMoSisDaDa_MoSisDa_Sis_Stsis"}
;; 0
%buswena:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).
;; 1
%buswena:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), elder(Alter, Ego).
;; 2
%buswena:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 3
%buswena:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 4
%buswena:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D), elder(Alter, Ego).
;; 5
%buswena:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 6
%buswena:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E), elder(Alter, Ego).
;; 7
%buswena:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G), elder(Alter, Ego).
;; 8
%buswena:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 9
%buswena:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 female(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C), elder(Alter, Ego).
;; 10
%buswena:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 female(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C), elder(Alter, Ego).


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


ekea(Alter, Ego) :-  mother[eq](Alter, Ego).
                 |   father(A, Ego), sister(Alter, A).
                 |   father(A, Ego), sister(B, A), daughter(Alter, B).
                 |   husband(A, Ego), mother(Alter, A).
{"FaBroWi_FaFaBroDaDaSoWi_FaFaBroDaSoWi_FaFaBroSoWi_FaFaFaBroSoSoWi_FaFaMoBroDaSoWi_FaFaMoBroSoWi_FaFaMoMoBroSoWi_FaFaMoSisSoSoWi_FaFaMoStsisSoSoWi_FaMoBroWi_FaMoFaBroDaSoWi_FaMoFaBroSoWi_FaMoMoBroWi_FaMoMoSisDaSoWi_FaMoMoSisSoWi_FaMoSisDaDaSoWi_FaMoSisDaSoWi_FaMoSisSoWi_FaMoStsisSoWi_FaSis_FaSisDa_FaSisDaDaSoWi_FaSisDaSoWi_FaSisSoWi_FaStbroWi_FaStsisDaDaSoWi_FaStsisDaSoWi_FaStsisSoWi_HuMo_Mo_MoFaBroDa_MoFaFaBroSoDa_MoFaFaMoBroSoDa_MoFaMoBroDa_MoFaMoSisSoDa_MoMoFaBroDaDa_MoMoMoSisDaDa_MoMoSisDa_MoSis_MoStsis_Stmo"}
;; 0
%ekea:0, mother[eq]:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).
;; 1
%ekea:0, mother[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%ekea:0, mother[eq]:1, sister[eq]:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 3
%ekea:0, mother[eq]:1, sister[eq]:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).
;; 4
%ekea:0, mother[eq]:1, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G).
;; 5
%ekea:0, mother[eq]:1, sister[eq]:4, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 6
%ekea:0, mother[eq]:1, sister[eq]:5, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 7
%ekea:0, mother[eq]:1, sister[eq]:6, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 8
%ekea:0, mother[eq]:1, sister[eq]:7, brother:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaMoBroSoDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 9
%ekea:0, mother[eq]:1, sister[eq]:8, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 10
%ekea:0, mother[eq]:1, sister[eq]:9, step_sister:0%
 Lvl=1,  PC=5, S=2, Star=0,  {MoStsis}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(Alter, E), daughter(Alter, D).
;; 11
%ekea:0, mother[eq]:1, sister[eq]:9, step_sister:1%
 Lvl=1,  PC=5, S=2, Star=0,  {MoStsis}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(Alter, E), daughter(Alter, D).
;; 12
%ekea:0, mother[eq]:2, step_mother:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stmo}  
 father(A, Ego), mother(B, Ego), wife(Alter, A), not(equal(Alter, B)).
;; 13
%ekea:0, mother[eq]:3, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 14
%ekea:0, mother[eq]:3, brother[eq]1:0, brother[eq]:1, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaBroSoWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), wife(Alter, F).
;; 15
%ekea:0, mother[eq]:3, brother[eq]1:0, brother[eq]:2, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaFaBroSoSoWi}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), wife(Alter, H).
;; 16
%ekea:0, mother[eq]:3, brother[eq]1:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoSisSoSoWi}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), wife(Alter, H).
;; 17
%ekea:0, mother[eq]:3, brother[eq]1:0, brother[eq]:3, sister[eq]:9, step_sister:0%
 Lvl=1,  PC=9, S=3, Star=0,  {FaFaMoStsisSoSoWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), daughter(H, G), daughter(H, F), son(I, H), son(J, I), wife(Alter, J).
;; 18
%ekea:0, mother[eq]:3, brother[eq]1:0, brother[eq]:3, sister[eq]:9, step_sister:1%
 Lvl=1,  PC=9, S=3, Star=0,  {FaFaMoStsisSoSoWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), daughter(H, G), daughter(H, F), son(I, H), son(J, I), wife(Alter, J).
;; 19
%ekea:0, mother[eq]:3, brother[eq]1:0, brother[eq]:4, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {FaFaMoBroSoWi}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), wife(Alter, G).
;; 20
%ekea:0, mother[eq]:3, brother[eq]1:0, brother[eq]:5, brother:0, sibling:0%
 Lvl=3,  PC=9, S=1, Star=0,  {FaFaMoMoBroSoWi}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), wife(Alter, H).
;; 21
%ekea:0, mother[eq]:3, brother[eq]1:0, brother[eq]:6, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), wife(Alter, F).
;; 22
%ekea:0, mother[eq]:3, brother[eq]1:0, brother[eq]:6, sister[eq]:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoSisDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), wife(Alter, H).
;; 23
%ekea:0, mother[eq]:3, brother[eq]1:0, brother[eq]:6, sister[eq]:4, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoFaBroDaSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), wife(Alter, H).
;; 24
%ekea:0, mother[eq]:3, brother[eq]1:0, brother[eq]:6, sister[eq]:9, step_sister:0%
 Lvl=1,  PC=7, S=3, Star=0,  {FaMoStsisSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), wife(Alter, H).
;; 25
%ekea:0, mother[eq]:3, brother[eq]1:0, brother[eq]:6, sister[eq]:9, step_sister:1%
 Lvl=1,  PC=7, S=3, Star=0,  {FaMoStsisSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), wife(Alter, H).
;; 26
%ekea:0, mother[eq]:3, brother[eq]1:0, brother[eq]:7, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {FaMoBroWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 27
%ekea:0, mother[eq]:3, brother[eq]1:0, brother[eq]:8, brother:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {FaMoMoBroWi}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), wife(Alter, F).
;; 28
%ekea:0, mother[eq]:3, brother[eq]1:0, brother[eq]:9, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {FaMoFaBroSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), wife(Alter, G).
;; 29
%ekea:0, mother[eq]:3, brother[eq]1:0, brother[eq]:10, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {FaMoMoSisSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), wife(Alter, G).
;; 30
%ekea:0, mother[eq]:3, brother[eq]1:0, brother[eq]:12, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {FaMoFaBroSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), wife(Alter, G).
;; 31
%ekea:0, mother[eq]:3, brother[eq]1:0, brother[eq]:13, step_brother:0%
 Lvl=1,  PC=5, S=3, Star=0,  {FaStbroWi}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(F, E), son(F, D), wife(Alter, F).
;; 32
%ekea:0, mother[eq]:3, brother[eq]1:0, brother[eq]:13, step_brother:1%
 Lvl=1,  PC=5, S=3, Star=0,  {FaStbroWi}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(F, E), son(F, D), wife(Alter, F).
;; 33
%ekea:0, mother[eq]:3, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), wife(Alter, E).
;; 34
%ekea:0, mother[eq]:3, brother[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), wife(Alter, G).
;; 35
%ekea:0, mother[eq]:3, brother[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroDaSoWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), wife(Alter, G).
;; 36
%ekea:0, mother[eq]:3, brother[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoBroDaSoWi}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), wife(Alter, H).
;; 37
%ekea:0, mother[eq]:3, brother[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=6, S=3, Star=0,  {FaStsisSoWi}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(G, F), wife(Alter, G).
;; 38
%ekea:0, mother[eq]:3, brother[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=6, S=3, Star=0,  {FaStsisSoWi}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(G, F), wife(Alter, G).
;; 39
%ekea:0, mother[eq]:3, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaSoWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), wife(Alter, F).
;; 40
%ekea:0, mother[eq]:3, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisDaDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 41
%ekea:0, mother[eq]:3, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroDaDaSoWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 42
%ekea:0, mother[eq]:3, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=7, S=3, Star=0,  {FaStsisDaSoWi}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), daughter(G, F), son(H, G), wife(Alter, H).
;; 43
%ekea:0, mother[eq]:3, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=7, S=3, Star=0,  {FaStsisDaSoWi}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), daughter(G, F), son(H, G), wife(Alter, H).
;; 44
%ekea:0, mother[eq]:3, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisDaDaSoWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), wife(Alter, G).
;; 45
%ekea:0, mother[eq]:3, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-2,  PC=8, S=3, Star=0,  {FaStsisDaDaSoWi}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), daughter(G, F), daughter(H, G), son(I, H), wife(Alter, I).
;; 46
%ekea:0, mother[eq]:3, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-2,  PC=8, S=3, Star=0,  {FaStsisDaDaSoWi}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), daughter(G, F), daughter(H, G), son(I, H), wife(Alter, I).
;; 47
%ekea:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 48
%ekea:2, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 49
%ekea:3%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).


esacheka(Alter, Ego) :-  step_father(Alter, Ego).
{"Stfa"}
;; 0
%esacheka:0, step_father:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stfa}  
 father(A, Ego), mother(B, Ego), husband(Alter, B), not(equal(Alter, A)).


father[eq](Alter, Ego) :-  father(Alter, Ego).
                       |   mother(A, Ego), sister(B, A), husband(Alter, B).
                       |   father(A, Ego), brother[eq]1(Alter, A).
                       |   step_father(Alter, Ego).
;; 0
%father[eq]:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(Alter, Ego).
;; 1
%father[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 2
%father[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 3
%father[eq]:2, brother[eq]1:0, brother[eq]:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 4
%father[eq]:2, brother[eq]1:0, brother[eq]:2, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 5
%father[eq]:2, brother[eq]1:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 6
%father[eq]:2, brother[eq]1:0, brother[eq]:3, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), daughter(H, G), daughter(H, F), son(I, H), son(Alter, I).
;; 7
%father[eq]:2, brother[eq]1:0, brother[eq]:3, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), daughter(H, G), daughter(H, F), son(I, H), son(Alter, I).
;; 8
%father[eq]:2, brother[eq]1:0, brother[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 9
%father[eq]:2, brother[eq]1:0, brother[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 10
%father[eq]:2, brother[eq]1:0, brother[eq]:6, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 11
%father[eq]:2, brother[eq]1:0, brother[eq]:6, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).
;; 12
%father[eq]:2, brother[eq]1:0, brother[eq]:6, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 13
%father[eq]:2, brother[eq]1:0, brother[eq]:6, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 14
%father[eq]:2, brother[eq]1:0, brother[eq]:6, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(Alter, G).
;; 15
%father[eq]:2, brother[eq]1:0, brother[eq]:6, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(Alter, G).
;; 16
%father[eq]:2, brother[eq]1:0, brother[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 17
%father[eq]:2, brother[eq]1:0, brother[eq]:8, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 18
%father[eq]:2, brother[eq]1:0, brother[eq]:9, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 19
%father[eq]:2, brother[eq]1:0, brother[eq]:10, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 20
%father[eq]:2, brother[eq]1:0, brother[eq]:11, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 21
%father[eq]:2, brother[eq]1:0, brother[eq]:12, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 22
%father[eq]:2, brother[eq]1:0, brother[eq]:13, step_brother:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(Alter, E), son(Alter, D).
;; 23
%father[eq]:2, brother[eq]1:0, brother[eq]:13, step_brother:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(Alter, E), son(Alter, D).
;; 24
%father[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 25
%father[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 26
%father[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 27
%father[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 28
%father[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 29
%father[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 30
%father[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 31
%father[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 32
%father[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(Alter, F).
;; 33
%father[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(Alter, F).
;; 34
%father[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 35
%father[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 36
%father[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 37
%father[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 38
%father[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), daughter(G, F), son(Alter, G).
;; 39
%father[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), daughter(G, F), son(Alter, G).
;; 40
%father[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 41
%father[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 42
%father[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 43
%father[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), daughter(G, F), daughter(H, G), son(Alter, H).
;; 44
%father[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), daughter(G, F), daughter(H, G), son(Alter, H).
;; 45
%father[eq]:3, step_father:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), husband(Alter, B), not(equal(Alter, A)).


gen_dn[aux]09(Alter, Ego) :-  son(Alter, Ego).
                          |   daughter(Alter, Ego).
                          |   son(A, Ego), son(Alter, A).
                          |   son(A, Ego), daughter(Alter, A).
                          |   daughter(A, Ego), son(Alter, A).
                          |   daughter(A, Ego), daughter(Alter, A).
;; 0
%gen_dn[aux]09:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Alter, Ego).
;; 1
%gen_dn[aux]09:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Alter, Ego).
;; 2
%gen_dn[aux]09:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), son(Alter, A).
;; 3
%gen_dn[aux]09:3%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), daughter(Alter, A).
;; 4
%gen_dn[aux]09:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), son(Alter, A).
;; 5
%gen_dn[aux]09:5%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), daughter(Alter, A).


gen_up[aux]09(Alter, Ego) :-  father(Alter, Ego).
                          |   mother(Alter, Ego).
                          |   gen_up[aux]09(A, Ego), father(Alter, A).
                          |   gen_up[aux]09(A, Ego), mother(Alter, A).
;; 0
%gen_up[aux]09:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(Alter, Ego).
;; 1
%gen_up[aux]09:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(Alter, Ego).
;; 2
%gen_up[aux]09:2, gen_up[aux]09:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(Alter, A).
;; 3
%gen_up[aux]09:2, gen_up[aux]09:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(Alter, A).
;; 4
%gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(Alter, B).
;; 5
%gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(Alter, B).
;; 6
%gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(Alter, B).
;; 7
%gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(Alter, B).
;; 8
%gen_up[aux]09:3, gen_up[aux]09:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(Alter, A).
;; 9
%gen_up[aux]09:3, gen_up[aux]09:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(Alter, A).
;; 10
%gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(Alter, B).
;; 11
%gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(Alter, B).
;; 12
%gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(Alter, B).
;; 13
%gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(Alter, B).


generation[aux]09(Alter, Ego) :-  sibling(Alter, Ego).
                              |   parents(A, Ego), generation[aux]09(B, A), child(Alter, B).
;; 0
%generation[aux]09:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]09:1, parents:0, generation[aux]09:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 2
%generation[aux]09:1, parents:0, generation[aux]09:1, parents:0, generation[aux]09:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 3
%generation[aux]09:1, parents:0, generation[aux]09:1, parents:1, generation[aux]09:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 4
%generation[aux]09:1, parents:1, generation[aux]09:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 5
%generation[aux]09:1, parents:1, generation[aux]09:1, parents:0, generation[aux]09:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 6
%generation[aux]09:1, parents:1, generation[aux]09:1, parents:1, generation[aux]09:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).


generation[aux]09gs(Alter, Ego) :-  siblings(Alter, Ego).
                                |   parents(A, Ego), generation[aux]09gs(B, A), children(Alter, B).
;; 0
%generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 7
%generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 8
%generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 9
%generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 10
%generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 11
%generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 12
%generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 13
%generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 14
%generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 15
%generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 16
%generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 17
%generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 18
%generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 19
%generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 20
%generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 21
%generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 22
%generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 23
%generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 24
%generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 25
%generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 26
%generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 27
%generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 28
%generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 29
%generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 30
%generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 31
%generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 32
%generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 33
%generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 34
%generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 35
%generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 36
%generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 37
%generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 38
%generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 39
%generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 40
%generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 41
%generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).


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


manaka(Alter, Ego) :-  female(Ego), son(A, Ego), wife(Alter, A).
                   |   female(Ego), sister[eq](A, Ego), son(B, A), wife(Alter, B).
{"FaBroDaSoWi_FaFaBroSoDaSoWi_FaFaMoBroSoDaSoWi_FaMoBroDaSoWi_FaMoSisSoDaSoWi_MoFaBroDaDaSoWi_MoMoSisDaDaSoWi_MoSisDaSoWi_SisSoWi_SoWi_StsisSoWi"}
;; 0
%manaka:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 female(Ego), son(A, Ego), wife(Alter, A).
;; 1
%manaka:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), wife(Alter, D).
;; 2
%manaka:1, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), wife(Alter, F).
;; 3
%manaka:1, sister[eq]:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 4
%manaka:1, sister[eq]:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaDaSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 5
%manaka:1, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), wife(Alter, F).
;; 6
%manaka:1, sister[eq]:5, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoDaSoWi}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 7
%manaka:1, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaSoWi}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), wife(Alter, G).
;; 8
%manaka:1, sister[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoBroSoDaSoWi}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), wife(Alter, I).
;; 9
%manaka:1, sister[eq]:8, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoDaSoWi}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 10
%manaka:1, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=5, S=3, Star=0,  {StsisSoWi}  
 female(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), son(F, E), wife(Alter, F).
;; 11
%manaka:1, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=5, S=3, Star=0,  {StsisSoWi}  
 female(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), son(F, E), wife(Alter, F).


manazha(Alter, Ego) :-  male(Ego), sister[eq](A, Ego), husband(Alter, A).
{"FaBroDaHu_FaFaBroSoDaHu_FaFaMoBroSoDaHu_FaMoBroDaHu_FaMoSisSoDaHu_MoFaBroDaDaHu_MoMoSisDaDaHu_MoSisDaHu_SisHu_StsisHu"}
;; 0
%manazha:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).
;; 1
%manazha:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E).
;; 2
%manazha:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), husband(Alter, G).
;; 3
%manazha:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaDaHu}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), husband(Alter, G).
;; 4
%manazha:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E).
;; 5
%manazha:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoDaHu}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), husband(Alter, G).
;; 6
%manazha:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoBroDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), husband(Alter, F).
;; 7
%manazha:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoBroSoDaHu}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), husband(Alter, H).
;; 8
%manazha:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), husband(Alter, G).
;; 9
%manazha:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=4, S=3, Star=0,  {StsisHu}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), husband(Alter, E).
;; 10
%manazha:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=4, S=3, Star=0,  {StsisHu}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), husband(Alter, E).


mazhe(Alter, Ego) :-  wife(A, Ego), brother(Alter, A).
{"WiBro"}
;; 0
%mazhe:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


meeka(Alter, Ego) :-  male(Ego), brother[eq](Alter, Ego), elder(Alter, Ego).
{"Bro_FaBroSo_FaFaBroSoSo_FaMoBroSo_FaMoFaBroDaSoSo_FaMoMoBroSo_FaMoMoSisDaSoSo_FaMoSisSoSo_FaMoStsisSoSo_MoBro_MoFaBroDaSo_MoFaBroSo_MoFaFaBroSoDaSo_MoFaMoBroDaSo_MoFaMoSisSoDaSo_MoMoBro_MoMoFaBroDaDaSo_MoMoMoSisDaDaSo_MoMoMoSisDaSo_MoMoSisDaSo_MoMoSisSo_MoSisSo_MoStsisSo_Stbro"}
;; 0
%meeka:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%meeka:0, brother[eq]:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D), elder(Alter, Ego).
;; 2
%meeka:0, brother[eq]:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 3
%meeka:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 4
%meeka:0, brother[eq]:3, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H), elder(Alter, Ego).
;; 5
%meeka:0, brother[eq]:3, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H), elder(Alter, Ego).
;; 6
%meeka:0, brother[eq]:3, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=8, S=2, Star=0,  {FaMoStsisSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(Alter, H), elder(Alter, Ego).
;; 7
%meeka:0, brother[eq]:3, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=8, S=2, Star=0,  {FaMoStsisSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(Alter, H), elder(Alter, Ego).
;; 8
%meeka:0, brother[eq]:4, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E), elder(Alter, Ego).
;; 9
%meeka:0, brother[eq]:5, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F), elder(Alter, Ego).
;; 10
%meeka:0, brother[eq]:6, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D), elder(Alter, Ego).
;; 11
%meeka:0, brother[eq]:6, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 12
%meeka:0, brother[eq]:6, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 13
%meeka:0, brother[eq]:6, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 14
%meeka:0, brother[eq]:6, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 15
%meeka:0, brother[eq]:6, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 16
%meeka:0, brother[eq]:6, sister[eq]:6, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G), elder(Alter, Ego).
;; 17
%meeka:0, brother[eq]:6, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 18
%meeka:0, brother[eq]:6, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=6, S=2, Star=0,  {MoStsisSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(Alter, F), elder(Alter, Ego).
;; 19
%meeka:0, brother[eq]:6, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=6, S=2, Star=0,  {MoStsisSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(Alter, F), elder(Alter, Ego).
;; 20
%meeka:0, brother[eq]:7, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), elder(Alter, Ego).
;; 21
%meeka:0, brother[eq]:8, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter), elder(Alter, Ego).
;; 22
%meeka:0, brother[eq]:9, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E), elder(Alter, Ego).
;; 23
%meeka:0, brother[eq]:10, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E), elder(Alter, Ego).
;; 24
%meeka:0, brother[eq]:11, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G), elder(Alter, Ego).
;; 25
%meeka:0, brother[eq]:12, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E), elder(Alter, Ego).
;; 26
%meeka:0, brother[eq]:13, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C), elder(Alter, Ego).
;; 27
%meeka:0, brother[eq]:13, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C), elder(Alter, Ego).


menuphissaka(Alter, Ego) :-  gen_up[aux]09(A, Ego), father(Alter, A).
                         |   father(A, Ego), gen_up[aux]09(B, A), parents(C, B), brother(D, C), son(Alter, D).
                         |   father(A, Ego), gen_up[aux]09(B, A), brother(Alter, B).
                         |   mother(A, Ego), gen_up[aux]09(B, A), parents(C, B), brother(D, C), son(Alter, D).
                         |   mother(A, Ego), gen_up[aux]09(B, A), brother(Alter, B).
                         |   gen_up[aux]09(A, Ego), generation[aux]09gs(B, A), father(Alter, B).
{"FaFa_FaFaBro_FaFaFa_FaFaFaBro_FaFaFaBroDaHu_FaFaFaBroSo_FaFaFaFa_FaFaFaFaBro_FaFaFaFaBroSo_FaFaFaFaSisHu_FaFaFaMoBro_FaFaFaMoBroSo_FaFaFaMoSisHu_FaFaFaSisDaHu_FaFaFaSisHu_FaFaFaSisSo_FaFaMoBro_FaFaMoBroDaHu_FaFaMoBroSo_FaFaMoFa_FaFaMoFaBro_FaFaMoFaBroSo_FaFaMoFaSisHu_FaFaMoMoBro_FaFaMoMoBroSo_FaFaMoMoSisHu_FaFaMoSisDaHu_FaFaMoSisHu_FaFaMoSisSo_FaFaSisHu_FaMoBro_FaMoFa_FaMoFaBro_FaMoFaBroDaHu_FaMoFaBroSo_FaMoFaFa_FaMoFaFaBro_FaMoFaFaBroSo_FaMoFaFaSisHu_FaMoFaMoBro_FaMoFaMoBroSo_FaMoFaMoSisHu_FaMoFaSisDaHu_FaMoFaSisHu_FaMoFaSisSo_FaMoMoBro_FaMoMoBroDaHu_FaMoMoBroSo_FaMoMoFa_FaMoMoFaBro_FaMoMoFaBroSo_FaMoMoFaSisHu_FaMoMoMoBro_FaMoMoMoBroSo_FaMoMoMoSisHu_FaMoMoSisDaHu_FaMoMoSisHu_FaMoMoSisSo_FaMoSisHu_MoFa_MoFaBro_MoFaFa_MoFaFaBro_MoFaFaBroDaHu_MoFaFaBroSo_MoFaFaFa_MoFaFaFaBro_MoFaFaFaBroSo_MoFaFaFaSisHu_MoFaFaMoBro_MoFaFaMoBroSo_MoFaFaMoSisHu_MoFaFaSisDaHu_MoFaFaSisHu_MoFaFaSisSo_MoFaMoBro_MoFaMoBroDaHu_MoFaMoBroSo_MoFaMoFa_MoFaMoFaBro_MoFaMoFaBroSo_MoFaMoFaSisHu_MoFaMoMoBro_MoFaMoMoBroSo_MoFaMoMoSisHu_MoFaMoSisDaHu_MoFaMoSisHu_MoFaMoSisSo_MoFaSisHu_MoMoBro_MoMoFa_MoMoFaBro_MoMoFaBroDaHu_MoMoFaBroSo_MoMoFaFa_MoMoFaFaBro_MoMoFaFaBroSo_MoMoFaFaSisHu_MoMoFaMoBro_MoMoFaMoBroSo_MoMoFaMoSisHu_MoMoFaSisDaHu_MoMoFaSisHu_MoMoFaSisSo_MoMoMoBro_MoMoMoBroDaHu_MoMoMoBroSo_MoMoMoFa_MoMoMoFaBro_MoMoMoFaBroSo_MoMoMoFaSisHu_MoMoMoMoBro_MoMoMoMoBroSo_MoMoMoMoSisHu_MoMoMoSisDaHu_MoMoMoSisHu_MoMoMoSisSo_MoMoSisHu"}
;; 0
%menuphissaka:0, gen_up[aux]09:0%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).
;; 1
%menuphissaka:0, gen_up[aux]09:1%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 2
%menuphissaka:0, gen_up[aux]09:2, gen_up[aux]09:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
 father(A, Ego), father(B, A), father(Alter, B).
;; 3
%menuphissaka:0, gen_up[aux]09:2, gen_up[aux]09:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
 mother(A, Ego), father(B, A), father(Alter, B).
;; 4
%menuphissaka:0, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaFaFa}  
 father(A, Ego), father(B, A), father(C, B), father(Alter, C).
;; 5
%menuphissaka:0, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaFaFa}  
 mother(A, Ego), father(B, A), father(C, B), father(Alter, C).
;; 6
%menuphissaka:0, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoFaFa}  
 father(A, Ego), mother(B, A), father(C, B), father(Alter, C).
;; 7
%menuphissaka:0, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoFaFa}  
 mother(A, Ego), mother(B, A), father(C, B), father(Alter, C).
;; 8
%menuphissaka:0, gen_up[aux]09:3, gen_up[aux]09:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
 father(A, Ego), mother(B, A), father(Alter, B).
;; 9
%menuphissaka:0, gen_up[aux]09:3, gen_up[aux]09:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
 mother(A, Ego), mother(B, A), father(Alter, B).
;; 10
%menuphissaka:0, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaMoFa}  
 father(A, Ego), father(B, A), mother(C, B), father(Alter, C).
;; 11
%menuphissaka:0, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaMoFa}  
 mother(A, Ego), father(B, A), mother(C, B), father(Alter, C).
;; 12
%menuphissaka:0, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoMoFa}  
 father(A, Ego), mother(B, A), mother(C, B), father(Alter, C).
;; 13
%menuphissaka:0, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoMoFa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(Alter, C).
;; 14
%menuphissaka:1, gen_up[aux]09:0, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 15
%menuphissaka:1, gen_up[aux]09:0, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 16
%menuphissaka:1, gen_up[aux]09:1, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 17
%menuphissaka:1, gen_up[aux]09:1, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 18
%menuphissaka:1, gen_up[aux]09:2, gen_up[aux]09:0, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoBroSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 19
%menuphissaka:1, gen_up[aux]09:2, gen_up[aux]09:0, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaBroSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 20
%menuphissaka:1, gen_up[aux]09:2, gen_up[aux]09:1, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoBroSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 21
%menuphissaka:1, gen_up[aux]09:2, gen_up[aux]09:1, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaBroSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 22
%menuphissaka:1, gen_up[aux]09:3, gen_up[aux]09:0, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoBroSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 23
%menuphissaka:1, gen_up[aux]09:3, gen_up[aux]09:0, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaBroSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 24
%menuphissaka:1, gen_up[aux]09:3, gen_up[aux]09:1, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 25
%menuphissaka:1, gen_up[aux]09:3, gen_up[aux]09:1, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 26
%menuphissaka:2, gen_up[aux]09:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 27
%menuphissaka:2, gen_up[aux]09:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 28
%menuphissaka:2, gen_up[aux]09:2, gen_up[aux]09:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaBro}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 29
%menuphissaka:2, gen_up[aux]09:2, gen_up[aux]09:1, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaBro}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 30
%menuphissaka:2, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaFaBro}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 31
%menuphissaka:2, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaFaBro}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 32
%menuphissaka:2, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoFaBro}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 33
%menuphissaka:2, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoFaBro}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 34
%menuphissaka:2, gen_up[aux]09:3, gen_up[aux]09:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoBro}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 35
%menuphissaka:2, gen_up[aux]09:3, gen_up[aux]09:1, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 36
%menuphissaka:2, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaMoBro}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 37
%menuphissaka:2, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaMoBro}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 38
%menuphissaka:2, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoMoBro}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 39
%menuphissaka:2, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 40
%menuphissaka:3, gen_up[aux]09:0, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 41
%menuphissaka:3, gen_up[aux]09:0, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 42
%menuphissaka:3, gen_up[aux]09:1, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 43
%menuphissaka:3, gen_up[aux]09:1, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 44
%menuphissaka:3, gen_up[aux]09:2, gen_up[aux]09:0, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoBroSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 45
%menuphissaka:3, gen_up[aux]09:2, gen_up[aux]09:0, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaBroSo}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 46
%menuphissaka:3, gen_up[aux]09:2, gen_up[aux]09:1, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoBroSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 47
%menuphissaka:3, gen_up[aux]09:2, gen_up[aux]09:1, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaBroSo}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 48
%menuphissaka:3, gen_up[aux]09:3, gen_up[aux]09:0, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 49
%menuphissaka:3, gen_up[aux]09:3, gen_up[aux]09:0, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 50
%menuphissaka:3, gen_up[aux]09:3, gen_up[aux]09:1, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 51
%menuphissaka:3, gen_up[aux]09:3, gen_up[aux]09:1, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 52
%menuphissaka:4, gen_up[aux]09:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 53
%menuphissaka:4, gen_up[aux]09:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 54
%menuphissaka:4, gen_up[aux]09:2, gen_up[aux]09:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaBro}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 55
%menuphissaka:4, gen_up[aux]09:2, gen_up[aux]09:1, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaBro}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 56
%menuphissaka:4, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaFaBro}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 57
%menuphissaka:4, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaFaBro}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 58
%menuphissaka:4, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoFaBro}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 59
%menuphissaka:4, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoFaBro}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 60
%menuphissaka:4, gen_up[aux]09:3, gen_up[aux]09:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoBro}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 61
%menuphissaka:4, gen_up[aux]09:3, gen_up[aux]09:1, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 62
%menuphissaka:4, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaMoBro}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 63
%menuphissaka:4, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaMoBro}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 64
%menuphissaka:4, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoMoBro}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 65
%menuphissaka:4, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 66
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(Alter, D).
;; 67
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), father(Alter, D).
;; 68
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(Alter, F).
;; 69
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), father(Alter, F).
;; 70
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoSisHu}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(Alter, F).
;; 71
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoSisHu}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), father(Alter, F).
;; 72
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), father(Alter, H).
;; 73
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), father(Alter, H).
;; 74
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoBroDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(Alter, H).
;; 75
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoBroDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), father(Alter, H).
;; 76
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), father(Alter, H).
;; 77
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), father(Alter, H).
;; 78
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoSisDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), father(Alter, H).
;; 79
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoSisDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), father(Alter, H).
;; 80
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaBroSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), father(Alter, H).
;; 81
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaBroSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), father(Alter, H).
;; 82
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaBroDaHu}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(Alter, H).
;; 83
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaBroDaHu}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), father(Alter, H).
;; 84
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaSisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), father(Alter, H).
;; 85
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaSisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), father(Alter, H).
;; 86
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaSisDaHu}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), father(Alter, H).
;; 87
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaSisDaHu}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), father(Alter, H).
;; 88
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaBro}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(Alter, F).
;; 89
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaBro}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), father(Alter, F).
;; 90
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaSisHu}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(Alter, F).
;; 91
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaSisHu}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), father(Alter, F).
;; 92
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoBroSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), father(Alter, H).
;; 93
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoBroSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), father(Alter, H).
;; 94
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoBroDaHu}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(Alter, H).
;; 95
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoBroDaHu}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), father(Alter, H).
;; 96
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoSisSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), father(Alter, H).
;; 97
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoSisSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), father(Alter, H).
;; 98
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoSisDaHu}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), father(Alter, H).
;; 99
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoSisDaHu}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), father(Alter, H).
;; 100
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaBroSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), father(Alter, H).
;; 101
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaBroSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), father(Alter, H).
;; 102
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaBroDaHu}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(Alter, H).
;; 103
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaBroDaHu}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), father(Alter, H).
;; 104
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaSisSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), father(Alter, H).
;; 105
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaSisSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), father(Alter, H).
;; 106
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaSisDaHu}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), father(Alter, H).
;; 107
%menuphissaka:5, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaSisDaHu}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), father(Alter, H).
;; 108
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(Alter, D).
;; 109
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), father(Alter, D).
;; 110
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(Alter, F).
;; 111
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), father(Alter, F).
;; 112
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoSisHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(Alter, F).
;; 113
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoSisHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), father(Alter, F).
;; 114
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), father(Alter, H).
;; 115
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), father(Alter, H).
;; 116
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoBroDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(Alter, H).
;; 117
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoBroDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), father(Alter, H).
;; 118
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), father(Alter, H).
;; 119
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), father(Alter, H).
;; 120
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoSisDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), father(Alter, H).
;; 121
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoSisDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), father(Alter, H).
;; 122
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaBroSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), father(Alter, H).
;; 123
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaBroSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), father(Alter, H).
;; 124
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaBroDaHu}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(Alter, H).
;; 125
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaBroDaHu}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), father(Alter, H).
;; 126
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaSisSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), father(Alter, H).
;; 127
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaSisSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), father(Alter, H).
;; 128
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaSisDaHu}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), father(Alter, H).
;; 129
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaSisDaHu}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), father(Alter, H).
;; 130
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaBro}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(Alter, F).
;; 131
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaBro}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), father(Alter, F).
;; 132
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaSisHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(Alter, F).
;; 133
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaSisHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), father(Alter, F).
;; 134
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), father(Alter, H).
;; 135
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), father(Alter, H).
;; 136
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoBroDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(Alter, H).
;; 137
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoBroDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), father(Alter, H).
;; 138
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), father(Alter, H).
;; 139
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), father(Alter, H).
;; 140
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoSisDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), father(Alter, H).
;; 141
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoSisDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), father(Alter, H).
;; 142
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaBroSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), father(Alter, H).
;; 143
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaBroSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), father(Alter, H).
;; 144
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaBroDaHu}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(Alter, H).
;; 145
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaBroDaHu}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), father(Alter, H).
;; 146
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaSisSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), father(Alter, H).
;; 147
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaSisSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), father(Alter, H).
;; 148
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaSisDaHu}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), father(Alter, H).
;; 149
%menuphissaka:5, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaSisDaHu}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), father(Alter, H).
;; 150
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(Alter, E).
;; 151
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), father(Alter, E).
;; 152
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoBro}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), father(Alter, G).
;; 153
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoBro}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), father(Alter, G).
;; 154
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoSisHu}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), father(Alter, G).
;; 155
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoSisHu}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), father(Alter, G).
;; 156
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaBro}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), father(Alter, G).
;; 157
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaBro}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), father(Alter, G).
;; 158
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaSisHu}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), father(Alter, G).
;; 159
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaSisHu}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), father(Alter, G).
;; 160
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(Alter, E).
;; 161
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), father(Alter, E).
;; 162
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoBro}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), father(Alter, G).
;; 163
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoBro}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), father(Alter, G).
;; 164
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoSisHu}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), father(Alter, G).
;; 165
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoSisHu}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), father(Alter, G).
;; 166
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaBro}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), father(Alter, G).
;; 167
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaBro}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), father(Alter, G).
;; 168
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaSisHu}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), father(Alter, G).
;; 169
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaSisHu}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), father(Alter, G).
;; 170
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaFa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), father(Alter, F).
;; 171
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaFa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), father(Alter, F).
;; 172
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaFaMoBro}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), father(Alter, H).
;; 173
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaFaMoBro}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), father(Alter, H).
;; 174
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaFaMoSisHu}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), father(Alter, H).
;; 175
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaFaMoSisHu}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), father(Alter, H).
;; 176
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaFaFaBro}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), father(Alter, H).
;; 177
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaFaFaBro}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), father(Alter, H).
;; 178
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaFaFaSisHu}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), father(Alter, H).
;; 179
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaFaFaSisHu}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), father(Alter, H).
;; 180
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaFa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), father(Alter, F).
;; 181
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaFa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), father(Alter, F).
;; 182
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaFaMoBro}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), father(Alter, H).
;; 183
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaFaMoBro}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), father(Alter, H).
;; 184
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaFaMoSisHu}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), father(Alter, H).
;; 185
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaFaMoSisHu}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), father(Alter, H).
;; 186
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaFaFaBro}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), father(Alter, H).
;; 187
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaFaFaBro}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), father(Alter, H).
;; 188
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaFaFaSisHu}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), father(Alter, H).
;; 189
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaFaFaSisHu}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), father(Alter, H).
;; 190
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaFa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), father(Alter, F).
;; 191
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaFa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), father(Alter, F).
;; 192
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoFaMoBro}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), father(Alter, H).
;; 193
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoFaMoBro}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), father(Alter, H).
;; 194
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoFaMoSisHu}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), father(Alter, H).
;; 195
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoFaMoSisHu}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), father(Alter, H).
;; 196
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoFaFaBro}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), father(Alter, H).
;; 197
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoFaFaBro}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), father(Alter, H).
;; 198
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoFaFaSisHu}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), father(Alter, H).
;; 199
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoFaFaSisHu}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), father(Alter, H).
;; 200
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaFa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), father(Alter, F).
;; 201
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaFa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), father(Alter, F).
;; 202
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoFaMoBro}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), father(Alter, H).
;; 203
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoFaMoBro}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), father(Alter, H).
;; 204
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoFaMoSisHu}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), father(Alter, H).
;; 205
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoFaMoSisHu}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), father(Alter, H).
;; 206
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoFaFaBro}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), father(Alter, H).
;; 207
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoFaFaBro}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), father(Alter, H).
;; 208
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoFaFaSisHu}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), father(Alter, H).
;; 209
%menuphissaka:5, gen_up[aux]09:2, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoFaFaSisHu}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), father(Alter, H).
;; 210
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(Alter, E).
;; 211
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), father(Alter, E).
;; 212
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), father(Alter, G).
;; 213
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), father(Alter, G).
;; 214
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoSisHu}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), father(Alter, G).
;; 215
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoSisHu}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), father(Alter, G).
;; 216
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaBro}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), father(Alter, G).
;; 217
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaBro}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), father(Alter, G).
;; 218
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaSisHu}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), father(Alter, G).
;; 219
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaSisHu}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), father(Alter, G).
;; 220
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(Alter, E).
;; 221
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), father(Alter, E).
;; 222
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), father(Alter, G).
;; 223
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), father(Alter, G).
;; 224
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoSisHu}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), father(Alter, G).
;; 225
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoSisHu}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), father(Alter, G).
;; 226
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaBro}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), father(Alter, G).
;; 227
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaBro}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), father(Alter, G).
;; 228
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaSisHu}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), father(Alter, G).
;; 229
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaSisHu}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), father(Alter, G).
;; 230
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoFa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), father(Alter, F).
;; 231
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoFa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), father(Alter, F).
;; 232
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaMoMoBro}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), father(Alter, H).
;; 233
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaMoMoBro}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), father(Alter, H).
;; 234
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaMoMoSisHu}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), father(Alter, H).
;; 235
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaMoMoSisHu}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), father(Alter, H).
;; 236
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaMoFaBro}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), father(Alter, H).
;; 237
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaMoFaBro}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), father(Alter, H).
;; 238
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaMoFaSisHu}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), father(Alter, H).
;; 239
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaFaMoFaSisHu}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), father(Alter, H).
;; 240
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoFa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), father(Alter, F).
;; 241
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoFa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), father(Alter, F).
;; 242
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaMoMoBro}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), father(Alter, H).
;; 243
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaMoMoBro}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), father(Alter, H).
;; 244
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaMoMoSisHu}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), father(Alter, H).
;; 245
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaMoMoSisHu}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), father(Alter, H).
;; 246
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaMoFaBro}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), father(Alter, H).
;; 247
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaMoFaBro}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), father(Alter, H).
;; 248
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaMoFaSisHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), father(Alter, H).
;; 249
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:2, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoFaMoFaSisHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), father(Alter, H).
;; 250
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoFa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), father(Alter, F).
;; 251
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoFa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), father(Alter, F).
;; 252
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoMoMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), father(Alter, H).
;; 253
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoMoMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), father(Alter, H).
;; 254
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoMoMoSisHu}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), father(Alter, H).
;; 255
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoMoMoSisHu}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), father(Alter, H).
;; 256
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoMoFaBro}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), father(Alter, H).
;; 257
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoMoFaBro}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), father(Alter, H).
;; 258
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoMoFaSisHu}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), father(Alter, H).
;; 259
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:0, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {FaMoMoFaSisHu}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), father(Alter, H).
;; 260
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoFa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), father(Alter, F).
;; 261
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoFa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), father(Alter, F).
;; 262
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoMoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), father(Alter, H).
;; 263
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoMoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), father(Alter, H).
;; 264
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoMoMoSisHu}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), father(Alter, H).
;; 265
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:0, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoMoMoSisHu}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), father(Alter, H).
;; 266
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoMoFaBro}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), father(Alter, H).
;; 267
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoMoFaBro}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), father(Alter, H).
;; 268
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoMoFaSisHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), father(Alter, H).
;; 269
%menuphissaka:5, gen_up[aux]09:3, gen_up[aux]09:3, gen_up[aux]09:1, generation[aux]09gs:1, parents:1, generation[aux]09gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=4,  PC=10, S=0, Star=0,  {MoMoMoFaSisHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), father(Alter, H).


mooa(Alter, Ego) :-  wife(Alter, Ego).
                 |   wife(A, Ego), sister(Alter, A).
{"Wi_WiSis"}
;; 0
%mooa:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).
;; 1
%mooa:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


mooaka(Alter, Ego) :-  male(Ego), brother[eq]1(A, Ego), wife(Alter, A).
                   |   female(Ego), mother(A, Ego), brother(B, A), wife(Alter, B).
{"BroWi_FaBroDaDaDaSoWi_FaBroDaDaSoWi_FaBroDaSoWi_FaBroSoWi_FaFaBroSoDaDaDaSoWi_FaFaBroSoDaDaSoWi_FaFaBroSoDaSoWi_FaFaBroSoSoWi_FaFaMoBroSoDaDaDaSoWi_FaFaMoBroSoDaDaSoWi_FaFaMoBroSoDaSoWi_FaMoBroDaDaDaSoWi_FaMoBroDaDaSoWi_FaMoBroDaSoWi_FaMoBroSoWi_FaMoFaBroDaSoSoWi_FaMoMoBroSoWi_FaMoMoSisDaSoSoWi_FaMoSisSoDaDaDaSoWi_FaMoSisSoDaDaSoWi_FaMoSisSoDaSoWi_FaMoSisSoSoWi_FaMoStsisSoSoWi_MoBroWi_MoFaBroDaDaDaDaSoWi_MoFaBroDaDaDaSoWi_MoFaBroDaDaSoWi_MoFaBroDaSoWi_MoFaBroSoWi_MoFaFaBroSoDaSoWi_MoFaMoBroDaSoWi_MoFaMoSisSoDaSoWi_MoMoBroWi_MoMoFaBroDaDaSoWi_MoMoMoSisDaDaSoWi_MoMoMoSisDaSoWi_MoMoSisDaDaDaDaSoWi_MoMoSisDaDaDaSoWi_MoMoSisDaDaSoWi_MoMoSisDaSoWi_MoMoSisSoWi_MoSisDaDaDaSoWi_MoSisDaDaSoWi_MoSisDaSoWi_MoSisSoWi_MoStsisSoWi_SisDaDaSoWi_SisDaSoWi_SisSoWi_StbroWi_StsisDaDaSoWi_StsisDaSoWi_StsisSoWi"}
;; 0
%mooaka:0, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C).
;; 1
%mooaka:0, brother[eq]1:0, brother[eq]:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), wife(Alter, E).
;; 2
%mooaka:0, brother[eq]1:0, brother[eq]:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoSoWi}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), wife(Alter, G).
;; 3
%mooaka:0, brother[eq]1:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoSoWi}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), wife(Alter, G).
;; 4
%mooaka:0, brother[eq]1:0, brother[eq]:3, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoSisDaSoSoWi}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), wife(Alter, I).
;; 5
%mooaka:0, brother[eq]1:0, brother[eq]:3, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaBroDaSoSoWi}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), wife(Alter, I).
;; 6
%mooaka:0, brother[eq]1:0, brother[eq]:3, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=8, S=3, Star=0,  {FaMoStsisSoSoWi}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), wife(Alter, I).
;; 7
%mooaka:0, brother[eq]1:0, brother[eq]:3, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=8, S=3, Star=0,  {FaMoStsisSoSoWi}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), wife(Alter, I).
;; 8
%mooaka:0, brother[eq]1:0, brother[eq]:4, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoBroSoWi}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), wife(Alter, F).
;; 9
%mooaka:0, brother[eq]1:0, brother[eq]:5, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {FaMoMoBroSoWi}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), wife(Alter, G).
;; 10
%mooaka:0, brother[eq]1:0, brother[eq]:6, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), wife(Alter, E).
;; 11
%mooaka:0, brother[eq]1:0, brother[eq]:6, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), wife(Alter, G).
;; 12
%mooaka:0, brother[eq]1:0, brother[eq]:6, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoSisDaDaSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), wife(Alter, I).
;; 13
%mooaka:0, brother[eq]1:0, brother[eq]:6, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaBroDaDaSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), wife(Alter, I).
;; 14
%mooaka:0, brother[eq]1:0, brother[eq]:6, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaSoWi}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), wife(Alter, G).
;; 15
%mooaka:0, brother[eq]1:0, brother[eq]:6, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaBroSoDaSoWi}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), wife(Alter, I).
;; 16
%mooaka:0, brother[eq]1:0, brother[eq]:6, sister[eq]:6, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoBroDaSoWi}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), wife(Alter, H).
;; 17
%mooaka:0, brother[eq]1:0, brother[eq]:6, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoSisSoDaSoWi}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), wife(Alter, I).
;; 18
%mooaka:0, brother[eq]1:0, brother[eq]:6, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=6, S=3, Star=0,  {MoStsisSoWi}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(G, F), wife(Alter, G).
;; 19
%mooaka:0, brother[eq]1:0, brother[eq]:6, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=6, S=3, Star=0,  {MoStsisSoWi}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(G, F), wife(Alter, G).
;; 20
%mooaka:0, brother[eq]1:0, brother[eq]:7, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 21
%mooaka:0, brother[eq]1:0, brother[eq]:8, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoMoBroWi}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 22
%mooaka:0, brother[eq]1:0, brother[eq]:9, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaBroSoWi}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), wife(Alter, F).
;; 23
%mooaka:0, brother[eq]1:0, brother[eq]:10, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoSisSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), wife(Alter, F).
;; 24
%mooaka:0, brother[eq]1:0, brother[eq]:11, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoSisDaSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), wife(Alter, H).
;; 25
%mooaka:0, brother[eq]1:0, brother[eq]:12, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaBroSoWi}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), wife(Alter, F).
;; 26
%mooaka:0, brother[eq]1:0, brother[eq]:13, step_brother:0%
 Lvl=0,  PC=4, S=3, Star=0,  {StbroWi}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(E, D), son(E, C), wife(Alter, E).
;; 27
%mooaka:0, brother[eq]1:0, brother[eq]:13, step_brother:1%
 Lvl=0,  PC=4, S=3, Star=0,  {StbroWi}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(E, D), son(E, C), wife(Alter, E).
;; 28
%mooaka:0, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), wife(Alter, D).
;; 29
%mooaka:0, brother[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), wife(Alter, F).
;; 30
%mooaka:0, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaDaSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 31
%mooaka:0, brother[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaDaSoWi}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 32
%mooaka:0, brother[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaSoWi}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), wife(Alter, F).
;; 33
%mooaka:0, brother[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoDaSoWi}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 34
%mooaka:0, brother[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaSoWi}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), wife(Alter, G).
;; 35
%mooaka:0, brother[eq]1:1, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoBroSoDaSoWi}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), wife(Alter, I).
;; 36
%mooaka:0, brother[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoDaSoWi}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 37
%mooaka:0, brother[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=5, S=3, Star=0,  {StsisSoWi}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), son(F, E), wife(Alter, F).
;; 38
%mooaka:0, brother[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=5, S=3, Star=0,  {StsisSoWi}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), son(F, E), wife(Alter, F).
;; 39
%mooaka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisDaSoWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), wife(Alter, E).
;; 40
%mooaka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisDaDaSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), wife(Alter, G).
;; 41
%mooaka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {MoMoSisDaDaDaSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(I, H), wife(Alter, I).
;; 42
%mooaka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {MoFaBroDaDaDaSoWi}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(I, H), wife(Alter, I).
;; 43
%mooaka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroDaDaSoWi}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), wife(Alter, G).
;; 44
%mooaka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {FaFaBroSoDaDaSoWi}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(I, H), wife(Alter, I).
;; 45
%mooaka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroDaDaSoWi}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 46
%mooaka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaMoBroSoDaDaSoWi}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), son(J, I), wife(Alter, J).
;; 47
%mooaka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {FaMoSisSoDaDaSoWi}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(I, H), wife(Alter, I).
;; 48
%mooaka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-2,  PC=6, S=3, Star=0,  {StsisDaSoWi}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(F, E), son(G, F), wife(Alter, G).
;; 49
%mooaka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-2,  PC=6, S=3, Star=0,  {StsisDaSoWi}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(F, E), son(G, F), wife(Alter, G).
;; 50
%mooaka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisDaDaSoWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(F, E), wife(Alter, F).
;; 51
%mooaka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {MoSisDaDaDaSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 52
%mooaka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=-3,  PC=11, S=1, Star=0,  {MoMoSisDaDaDaDaSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(I, H), son(J, I), wife(Alter, J).
;; 53
%mooaka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=1, Star=0,  {MoFaBroDaDaDaDaSoWi}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(I, H), son(J, I), wife(Alter, J).
;; 54
%mooaka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {FaBroDaDaDaSoWi}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 55
%mooaka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=1, Star=0,  {FaFaBroSoDaDaDaSoWi}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(I, H), son(J, I), wife(Alter, J).
;; 56
%mooaka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {FaMoBroDaDaDaSoWi}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(I, H), wife(Alter, I).
;; 57
%mooaka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=1, Star=0,  {FaFaMoBroSoDaDaDaSoWi}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(J, I), son(K, J), wife(Alter, K).
;; 58
%mooaka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=-3,  PC=11, S=1, Star=0,  {FaMoSisSoDaDaDaSoWi}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(I, H), son(J, I), wife(Alter, J).
;; 59
%mooaka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-3,  PC=7, S=3, Star=0,  {StsisDaDaSoWi}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 60
%mooaka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-3,  PC=7, S=3, Star=0,  {StsisDaDaSoWi}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 61
%mooaka:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


mother[eq](Alter, Ego) :-  mother(Alter, Ego).
                       |   mother(A, Ego), sister[eq](Alter, A).
                       |   step_mother(Alter, Ego).
                       |   father(A, Ego), brother[eq]1(B, A), wife(Alter, B).
;; 0
%mother[eq]:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(Alter, Ego).
;; 1
%mother[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%mother[eq]:1, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 3
%mother[eq]:1, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).
;; 4
%mother[eq]:1, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G).
;; 5
%mother[eq]:1, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 6
%mother[eq]:1, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 7
%mother[eq]:1, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 8
%mother[eq]:1, sister[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 9
%mother[eq]:1, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 10
%mother[eq]:1, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(Alter, E), daughter(Alter, D).
;; 11
%mother[eq]:1, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(Alter, E), daughter(Alter, D).
;; 12
%mother[eq]:2, step_mother:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), wife(Alter, A), not(equal(Alter, B)).
;; 13
%mother[eq]:3, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 14
%mother[eq]:3, brother[eq]1:0, brother[eq]:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), wife(Alter, F).
;; 15
%mother[eq]:3, brother[eq]1:0, brother[eq]:2, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), wife(Alter, H).
;; 16
%mother[eq]:3, brother[eq]1:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), wife(Alter, H).
;; 17
%mother[eq]:3, brother[eq]1:0, brother[eq]:3, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), daughter(H, G), daughter(H, F), son(I, H), son(J, I), wife(Alter, J).
;; 18
%mother[eq]:3, brother[eq]1:0, brother[eq]:3, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), daughter(H, G), daughter(H, F), son(I, H), son(J, I), wife(Alter, J).
;; 19
%mother[eq]:3, brother[eq]1:0, brother[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), wife(Alter, G).
;; 20
%mother[eq]:3, brother[eq]1:0, brother[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), wife(Alter, H).
;; 21
%mother[eq]:3, brother[eq]1:0, brother[eq]:6, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), wife(Alter, F).
;; 22
%mother[eq]:3, brother[eq]1:0, brother[eq]:6, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), wife(Alter, H).
;; 23
%mother[eq]:3, brother[eq]1:0, brother[eq]:6, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), wife(Alter, H).
;; 24
%mother[eq]:3, brother[eq]1:0, brother[eq]:6, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), wife(Alter, H).
;; 25
%mother[eq]:3, brother[eq]1:0, brother[eq]:6, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), wife(Alter, H).
;; 26
%mother[eq]:3, brother[eq]1:0, brother[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 27
%mother[eq]:3, brother[eq]1:0, brother[eq]:8, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), wife(Alter, F).
;; 28
%mother[eq]:3, brother[eq]1:0, brother[eq]:9, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), wife(Alter, G).
;; 29
%mother[eq]:3, brother[eq]1:0, brother[eq]:10, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), wife(Alter, G).
;; 30
%mother[eq]:3, brother[eq]1:0, brother[eq]:12, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), wife(Alter, G).
;; 31
%mother[eq]:3, brother[eq]1:0, brother[eq]:13, step_brother:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(F, E), son(F, D), wife(Alter, F).
;; 32
%mother[eq]:3, brother[eq]1:0, brother[eq]:13, step_brother:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(F, E), son(F, D), wife(Alter, F).
;; 33
%mother[eq]:3, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), wife(Alter, E).
;; 34
%mother[eq]:3, brother[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), wife(Alter, G).
;; 35
%mother[eq]:3, brother[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), wife(Alter, G).
;; 36
%mother[eq]:3, brother[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), wife(Alter, H).
;; 37
%mother[eq]:3, brother[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(G, F), wife(Alter, G).
;; 38
%mother[eq]:3, brother[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(G, F), wife(Alter, G).
;; 39
%mother[eq]:3, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), wife(Alter, F).
;; 40
%mother[eq]:3, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 41
%mother[eq]:3, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 42
%mother[eq]:3, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), daughter(G, F), son(H, G), wife(Alter, H).
;; 43
%mother[eq]:3, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), daughter(G, F), son(H, G), wife(Alter, H).
;; 44
%mother[eq]:3, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), wife(Alter, G).
;; 45
%mother[eq]:3, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), daughter(G, F), daughter(H, G), son(I, H), wife(Alter, I).
;; 46
%mother[eq]:3, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), daughter(G, F), daughter(H, G), son(I, H), wife(Alter, I).


nakmea(Alter, Ego) :-  daughter(Alter, Ego).
                   |   female(Ego), sister[eq](A, Ego), daughter(Alter, A).
                   |   male(Ego), brother[eq]1(A, Ego), daughter(Alter, A).
                   |   female(Ego), brother[eq](A, Ego), daughter(Alter, A).
                   |   spice(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(Alter, B), daughter(Alter, A).
{"BroDa_Da_FaBroDaDa_FaBroDaDaDaSoDa_FaBroDaDaSoDa_FaBroDaSoDa_FaBroSoDa_FaFaBroSoDaDa_FaFaBroSoDaDaDaSoDa_FaFaBroSoDaDaSoDa_FaFaBroSoDaSoDa_FaFaBroSoSoDa_FaFaMoBroSoDaDa_FaFaMoBroSoDaDaDaSoDa_FaFaMoBroSoDaDaSoDa_FaFaMoBroSoDaSoDa_FaMoBroDaDa_FaMoBroDaDaDaSoDa_FaMoBroDaDaSoDa_FaMoBroDaSoDa_FaMoBroSoDa_FaMoFaBroDaSoSoDa_FaMoMoBroSoDa_FaMoMoSisDaSoSoDa_FaMoSisSoDaDa_FaMoSisSoDaDaDaSoDa_FaMoSisSoDaDaSoDa_FaMoSisSoDaSoDa_FaMoSisSoSoDa_FaMoStsisSoSoDa_MoBroDa_MoFaBroDaDaDa_MoFaBroDaDaDaDaSoDa_MoFaBroDaDaDaSoDa_MoFaBroDaDaSoDa_MoFaBroDaSoDa_MoFaBroSoDa_MoFaFaBroSoDaSoDa_MoFaMoBroDaSoDa_MoFaMoSisSoDaSoDa_MoMoBroDa_MoMoFaBroDaDaSoDa_MoMoMoSisDaDaSoDa_MoMoMoSisDaSoDa_MoMoSisDaDaDa_MoMoSisDaDaDaDaSoDa_MoMoSisDaDaDaSoDa_MoMoSisDaDaSoDa_MoMoSisDaSoDa_MoMoSisSoDa_MoSisDaDa_MoSisDaDaDaSoDa_MoSisDaDaSoDa_MoSisDaSoDa_MoSisSoDa_MoStsisSoDa_SisDa_SisDaDaSoDa_SisDaSoDa_SisSoDa_StbroDa_Stda_StsisDa_StsisDaDaSoDa_StsisDaSoDa_StsisSoDa"}
;; 0
%nakmea:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).
;; 1
%nakmea:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 2
%nakmea:1, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 3
%nakmea:1, sister[eq]:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 4
%nakmea:1, sister[eq]:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 5
%nakmea:1, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 6
%nakmea:1, sister[eq]:5, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 7
%nakmea:1, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 8
%nakmea:1, sister[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 9
%nakmea:1, sister[eq]:8, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 10
%nakmea:1, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {StsisDa}  
 female(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(Alter, E).
;; 11
%nakmea:1, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=5, S=2, Star=0,  {StsisDa}  
 female(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(Alter, E).
;; 12
%nakmea:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 13
%nakmea:2, brother[eq]1:0, brother[eq]:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 14
%nakmea:2, brother[eq]1:0, brother[eq]:2, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 15
%nakmea:2, brother[eq]1:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 16
%nakmea:2, brother[eq]1:0, brother[eq]:3, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 17
%nakmea:2, brother[eq]1:0, brother[eq]:3, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 18
%nakmea:2, brother[eq]1:0, brother[eq]:3, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=9, S=2, Star=0,  {FaMoStsisSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), daughter(Alter, I).
;; 19
%nakmea:2, brother[eq]1:0, brother[eq]:3, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=9, S=2, Star=0,  {FaMoStsisSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), daughter(Alter, I).
;; 20
%nakmea:2, brother[eq]1:0, brother[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 21
%nakmea:2, brother[eq]1:0, brother[eq]:5, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 22
%nakmea:2, brother[eq]1:0, brother[eq]:6, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 23
%nakmea:2, brother[eq]1:0, brother[eq]:6, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 24
%nakmea:2, brother[eq]1:0, brother[eq]:6, sister[eq]:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 25
%nakmea:2, brother[eq]1:0, brother[eq]:6, sister[eq]:3, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 26
%nakmea:2, brother[eq]1:0, brother[eq]:6, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 27
%nakmea:2, brother[eq]1:0, brother[eq]:6, sister[eq]:5, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 28
%nakmea:2, brother[eq]1:0, brother[eq]:6, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 29
%nakmea:2, brother[eq]1:0, brother[eq]:6, sister[eq]:8, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 30
%nakmea:2, brother[eq]1:0, brother[eq]:6, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {MoStsisSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(G, F), daughter(Alter, G).
;; 31
%nakmea:2, brother[eq]1:0, brother[eq]:6, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {MoStsisSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(G, F), daughter(Alter, G).
;; 32
%nakmea:2, brother[eq]1:0, brother[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 33
%nakmea:2, brother[eq]1:0, brother[eq]:8, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 34
%nakmea:2, brother[eq]1:0, brother[eq]:9, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 35
%nakmea:2, brother[eq]1:0, brother[eq]:10, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 36
%nakmea:2, brother[eq]1:0, brother[eq]:11, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 37
%nakmea:2, brother[eq]1:0, brother[eq]:12, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 38
%nakmea:2, brother[eq]1:0, brother[eq]:13, step_brother:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {StbroDa}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(E, D), son(E, C), daughter(Alter, E).
;; 39
%nakmea:2, brother[eq]1:0, brother[eq]:13, step_brother:1%
 Lvl=-1,  PC=5, S=2, Star=0,  {StbroDa}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(E, D), son(E, C), daughter(Alter, E).
;; 40
%nakmea:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(Alter, D).
;; 41
%nakmea:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 42
%nakmea:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 43
%nakmea:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 44
%nakmea:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 45
%nakmea:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 46
%nakmea:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 47
%nakmea:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 48
%nakmea:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 49
%nakmea:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {StsisSoDa}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), son(F, E), daughter(Alter, F).
;; 50
%nakmea:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {StsisSoDa}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), son(F, E), daughter(Alter, F).
;; 51
%nakmea:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 52
%nakmea:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 53
%nakmea:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaDaDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 54
%nakmea:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 55
%nakmea:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 56
%nakmea:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaFaBroSoDaDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 57
%nakmea:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 58
%nakmea:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaFaMoBroSoDaDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), son(J, I), daughter(Alter, J).
;; 59
%nakmea:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoSisSoDaDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 60
%nakmea:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {StsisDaSoDa}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(F, E), son(G, F), daughter(Alter, G).
;; 61
%nakmea:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {StsisDaSoDa}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(F, E), son(G, F), daughter(Alter, G).
;; 62
%nakmea:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaSoDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(F, E), daughter(Alter, F).
;; 63
%nakmea:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaDaDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 64
%nakmea:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoSisDaDaDaDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(I, H), son(J, I), daughter(Alter, J).
;; 65
%nakmea:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoFaBroDaDaDaDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(I, H), son(J, I), daughter(Alter, J).
;; 66
%nakmea:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaDaDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 67
%nakmea:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {FaFaBroSoDaDaDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(I, H), son(J, I), daughter(Alter, J).
;; 68
%nakmea:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoBroDaDaDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 69
%nakmea:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=-3,  PC=13, S=0, Star=0,  {FaFaMoBroSoDaDaDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(J, I), son(K, J), daughter(Alter, K).
;; 70
%nakmea:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {FaMoSisSoDaDaDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(I, H), son(J, I), daughter(Alter, J).
;; 71
%nakmea:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-4,  PC=8, S=2, Star=0,  {StsisDaDaSoDa}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 72
%nakmea:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-4,  PC=8, S=2, Star=0,  {StsisDaDaSoDa}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 73
%nakmea:3, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 74
%nakmea:3, brother[eq]:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 75
%nakmea:3, brother[eq]:2, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 76
%nakmea:3, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 77
%nakmea:3, brother[eq]:3, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 78
%nakmea:3, brother[eq]:3, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), daughter(Alter, I).
;; 79
%nakmea:3, brother[eq]:3, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=9, S=2, Star=0,  {FaMoStsisSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), daughter(Alter, I).
;; 80
%nakmea:3, brother[eq]:3, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=9, S=2, Star=0,  {FaMoStsisSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), daughter(Alter, I).
;; 81
%nakmea:3, brother[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 82
%nakmea:3, brother[eq]:5, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 83
%nakmea:3, brother[eq]:6, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 84
%nakmea:3, brother[eq]:6, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 85
%nakmea:3, brother[eq]:6, sister[eq]:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 86
%nakmea:3, brother[eq]:6, sister[eq]:3, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 87
%nakmea:3, brother[eq]:6, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 88
%nakmea:3, brother[eq]:6, sister[eq]:5, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 89
%nakmea:3, brother[eq]:6, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 90
%nakmea:3, brother[eq]:6, sister[eq]:8, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 91
%nakmea:3, brother[eq]:6, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {MoStsisSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(G, F), daughter(Alter, G).
;; 92
%nakmea:3, brother[eq]:6, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {MoStsisSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(G, F), daughter(Alter, G).
;; 93
%nakmea:3, brother[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 94
%nakmea:3, brother[eq]:8, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 95
%nakmea:3, brother[eq]:9, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 96
%nakmea:3, brother[eq]:10, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 97
%nakmea:3, brother[eq]:11, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 98
%nakmea:3, brother[eq]:12, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 99
%nakmea:3, brother[eq]:13, step_brother:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {StbroDa}  
 female(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(E, D), son(E, C), daughter(Alter, E).
;; 100
%nakmea:3, brother[eq]:13, step_brother:1%
 Lvl=-1,  PC=5, S=2, Star=0,  {StbroDa}  
 female(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(E, D), son(E, C), daughter(Alter, E).
;; 101
%nakmea:4, spice:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stda}  
 husband(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(Alter, B), daughter(Alter, A).
;; 102
%nakmea:4, spice:1%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stda}  
 wife(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(Alter, B), daughter(Alter, A).


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
                       |   mother(A, Ego), sister(B, A), daughter(Alter, B).
                       |   mother(A, Ego), mother(B, A), sister(C, B), daughter(D, C), daughter(Alter, D).
                       |   mother(A, Ego), father(B, A), brother(C, B), daughter(D, C), daughter(Alter, D).
                       |   father(A, Ego), brother(B, A), daughter(Alter, B).
                       |   father(A, Ego), father(B, A), brother(C, B), son(D, C), daughter(Alter, D).
                       |   father(A, Ego), mother(B, A), brother(C, B), daughter(Alter, C).
                       |   father(A, Ego), father(B, A), mother(C, B), brother(D, C), son(E, D), daughter(Alter, E).
                       |   father(A, Ego), mother(B, A), sister(C, B), son(D, C), daughter(Alter, D).
                       |   step_sister(Alter, Ego).
;; 0
%sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 2
%sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 3
%sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 4
%sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 5
%sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 6
%sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 7
%sister[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 8
%sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 9
%sister[eq]:9, step_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C).
;; 10
%sister[eq]:9, step_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C).


sister[eq]1(Alter, Ego) :-  sister[eq](Alter, Ego).
                        |   sister[eq]1(A, Ego), daughter(Alter, A).
;; 0
%sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 2
%sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 3
%sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 4
%sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 5
%sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 6
%sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 7
%sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 8
%sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 9
%sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C).
;; 10
%sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C).
;; 11
%sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 12
%sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 13
%sister[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 14
%sister[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 15
%sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 16
%sister[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 17
%sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 18
%sister[eq]1:1, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 19
%sister[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 20
%sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(Alter, E).
;; 21
%sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(Alter, E).
;; 22
%sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(Alter, D).
;; 23
%sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 24
%sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 25
%sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 26
%sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 27
%sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 28
%sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 29
%sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 30
%sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(F, E), daughter(Alter, F).
;; 31
%sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(F, E), daughter(Alter, F).


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

