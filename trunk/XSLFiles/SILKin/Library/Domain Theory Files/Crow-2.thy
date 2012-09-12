;;  Horn Clause Representation of Crow-2 Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Crow-2") (author, "Floyd Lounsbury") (date, "1964-01-01") (citation, "Floyd Lounsbury, 'A Formal Account of the Crow- and Omaha-Type Kinship Terminologies' in EXPLORATIONS IN CULTURAL ANTHROPOLOGY, ed. W.H. Goodenough, 1964, McGraw-Hill") 
(non_term, [aux], [eq], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, true) (polygamyOK, false) (address, false) (recursiveLevels, 2)
(overlaps, (bosmeakunista, (mooaka)), (mooaka, (bosmeakunista)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

ahha(Alter, Ego) :-  father[eq](Alter, Ego).
                 |   father(A, Ego), sister[eq]1(B, A), husband(Alter, B).
                 |   husband(A, Ego), father(Alter, A).
{"Fa_FaBro_FaFaBroDaDaDaHu_FaFaBroDaDaDaSo_FaFaBroDaDaHu_FaFaBroDaDaSo_FaFaBroDaHu_FaFaBroDaSo_FaFaBroSo_FaFaFaBroSoDaHu_FaFaFaBroSoDaSo_FaFaFaBroSoSo_FaFaMoBroDaDaHu_FaFaMoBroDaDaSo_FaFaMoBroDaHu_FaFaMoBroDaSo_FaFaMoBroSo_FaFaMoMoBroSo_FaFaMoSisSoDaHu_FaFaMoSisSoDaSo_FaFaMoSisSoSo_FaFaMoStsisSoSo_FaMoBro_FaMoFaBroDaDaHu_FaMoFaBroDaDaSo_FaMoFaBroDaSo_FaMoFaBroSo_FaMoFaMoBroDaSo_FaMoMoBro_FaMoMoMoSisDaSo_FaMoMoSisDaDaHu_FaMoMoSisDaDaSo_FaMoMoSisDaSo_FaMoMoSisSo_FaMoSisDaDaDaHu_FaMoSisDaDaDaSo_FaMoSisDaDaHu_FaMoSisDaDaSo_FaMoSisDaHu_FaMoSisDaSo_FaMoSisSo_FaMoStsisSo_FaSisDaDaHu_FaSisDaDaSo_FaSisDaHu_FaSisDaSo_FaSisHu_FaSisSo_FaStbro_FaStsisDaDaHu_FaStsisDaDaSo_FaStsisDaHu_FaStsisDaSo_FaStsisHu_FaStsisSo_HuFa_MoSisHu_Stfa"}
;; 0
%ahha:0, father[eq]:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).
;; 1
%ahha:0, father[eq]:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 2
%ahha:0, father[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 3
%ahha:0, father[eq]:2, brother[eq]1:0, brother[eq]:1, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 4
%ahha:0, father[eq]:2, brother[eq]1:0, brother[eq]:2, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 5
%ahha:0, father[eq]:2, brother[eq]1:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 6
%ahha:0, father[eq]:2, brother[eq]1:0, brother[eq]:3, sister[eq]:9, step_sister:0%
 Lvl=1,  PC=9, S=2, Star=0,  {FaFaMoStsisSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), daughter(H, G), daughter(H, F), son(I, H), son(Alter, I).
;; 7
%ahha:0, father[eq]:2, brother[eq]1:0, brother[eq]:3, sister[eq]:9, step_sister:1%
 Lvl=1,  PC=9, S=2, Star=0,  {FaFaMoStsisSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), daughter(H, G), daughter(H, F), son(I, H), son(Alter, I).
;; 8
%ahha:0, father[eq]:2, brother[eq]1:0, brother[eq]:4, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 9
%ahha:0, father[eq]:2, brother[eq]1:0, brother[eq]:5, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoBroSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 10
%ahha:0, father[eq]:2, brother[eq]1:0, brother[eq]:6, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 11
%ahha:0, father[eq]:2, brother[eq]1:0, brother[eq]:6, sister[eq]:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).
;; 12
%ahha:0, father[eq]:2, brother[eq]1:0, brother[eq]:6, sister[eq]:4, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 13
%ahha:0, father[eq]:2, brother[eq]1:0, brother[eq]:6, sister[eq]:6, brother:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaMoBroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 14
%ahha:0, father[eq]:2, brother[eq]1:0, brother[eq]:6, sister[eq]:9, step_sister:0%
 Lvl=1,  PC=7, S=2, Star=0,  {FaMoStsisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(Alter, G).
;; 15
%ahha:0, father[eq]:2, brother[eq]1:0, brother[eq]:6, sister[eq]:9, step_sister:1%
 Lvl=1,  PC=7, S=2, Star=0,  {FaMoStsisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(Alter, G).
;; 16
%ahha:0, father[eq]:2, brother[eq]1:0, brother[eq]:7, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 17
%ahha:0, father[eq]:2, brother[eq]1:0, brother[eq]:8, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 18
%ahha:0, father[eq]:2, brother[eq]1:0, brother[eq]:9, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 19
%ahha:0, father[eq]:2, brother[eq]1:0, brother[eq]:10, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 20
%ahha:0, father[eq]:2, brother[eq]1:0, brother[eq]:11, sister:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 21
%ahha:0, father[eq]:2, brother[eq]1:0, brother[eq]:12, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 22
%ahha:0, father[eq]:2, brother[eq]1:0, brother[eq]:13, step_brother:0%
 Lvl=1,  PC=5, S=2, Star=0,  {FaStbro}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(Alter, E), son(Alter, D).
;; 23
%ahha:0, father[eq]:2, brother[eq]1:0, brother[eq]:13, step_brother:1%
 Lvl=1,  PC=5, S=2, Star=0,  {FaStbro}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(Alter, E), son(Alter, D).
;; 24
%ahha:0, father[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 25
%ahha:0, father[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 26
%ahha:0, father[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 27
%ahha:0, father[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 28
%ahha:0, father[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 29
%ahha:0, father[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 30
%ahha:0, father[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 31
%ahha:0, father[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 32
%ahha:0, father[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=6, S=2, Star=0,  {FaStsisSo}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(Alter, F).
;; 33
%ahha:0, father[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=6, S=2, Star=0,  {FaStsisSo}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(Alter, F).
;; 34
%ahha:0, father[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 35
%ahha:0, father[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 36
%ahha:0, father[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 37
%ahha:0, father[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 38
%ahha:0, father[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {FaStsisDaSo}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), daughter(G, F), son(Alter, G).
;; 39
%ahha:0, father[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {FaStsisDaSo}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), daughter(G, F), son(Alter, G).
;; 40
%ahha:0, father[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 41
%ahha:0, father[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 42
%ahha:0, father[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 43
%ahha:0, father[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {FaStsisDaDaSo}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), daughter(G, F), daughter(H, G), son(Alter, H).
;; 44
%ahha:0, father[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {FaStsisDaDaSo}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), daughter(G, F), daughter(H, G), son(Alter, H).
;; 45
%ahha:0, father[eq]:3, step_father:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stfa}  
 father(A, Ego), mother(B, Ego), husband(Alter, B), not(equal(Alter, A)).
;; 46
%ahha:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 47
%ahha:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), husband(Alter, F).
;; 48
%ahha:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoSisDaDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), husband(Alter, H).
;; 49
%ahha:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoFaBroDaDaHu}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), husband(Alter, H).
;; 50
%ahha:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaBroDaHu}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), husband(Alter, F).
;; 51
%ahha:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaFaBroSoDaHu}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), husband(Alter, H).
;; 52
%ahha:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {FaFaMoBroDaHu}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), husband(Alter, G).
;; 53
%ahha:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoSisSoDaHu}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), husband(Alter, H).
;; 54
%ahha:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=1,  PC=5, S=3, Star=0,  {FaStsisHu}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), husband(Alter, F).
;; 55
%ahha:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=1,  PC=5, S=3, Star=0,  {FaStsisHu}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), husband(Alter, F).
;; 56
%ahha:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E).
;; 57
%ahha:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisDaDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), husband(Alter, G).
;; 58
%ahha:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroDaDaHu}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), husband(Alter, G).
;; 59
%ahha:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoBroDaDaHu}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), husband(Alter, H).
;; 60
%ahha:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=6, S=3, Star=0,  {FaStsisDaHu}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), daughter(G, F), husband(Alter, G).
;; 61
%ahha:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=6, S=3, Star=0,  {FaStsisDaHu}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), daughter(G, F), husband(Alter, G).
;; 62
%ahha:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaDaHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), husband(Alter, F).
;; 63
%ahha:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisDaDaDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), husband(Alter, H).
;; 64
%ahha:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroDaDaDaHu}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), husband(Alter, H).
;; 65
%ahha:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=7, S=3, Star=0,  {FaStsisDaDaHu}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), daughter(G, F), daughter(H, G), husband(Alter, H).
;; 66
%ahha:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=7, S=3, Star=0,  {FaStsisDaDaHu}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), daughter(G, F), daughter(H, G), husband(Alter, H).
;; 67
%ahha:2%
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


bachuka(Alter, Ego) :-  female(Ego), brother[eq](Alter, Ego), younger(Alter, Ego).
                    |   male(Ego), brother[eq]1(Alter, Ego), younger(Alter, Ego).
{"Bro_FaBroDaDaDaSo_FaBroDaDaSo_FaBroDaSo_FaBroSo_FaFaBroSoDaDaDaSo_FaFaBroSoDaDaSo_FaFaBroSoDaSo_FaFaBroSoSo_FaFaMoBroSoDaDaDaSo_FaFaMoBroSoDaDaSo_FaFaMoBroSoDaSo_FaMoBroDaDaDaSo_FaMoBroDaDaSo_FaMoBroDaSo_FaMoBroSo_FaMoFaBroDaSoSo_FaMoMoBroSo_FaMoMoSisDaSoSo_FaMoSisSoDaDaDaSo_FaMoSisSoDaDaSo_FaMoSisSoDaSo_FaMoSisSoSo_FaMoStsisSoSo_MoBro_MoFaBroDaDaDaDaSo_MoFaBroDaDaDaSo_MoFaBroDaDaSo_MoFaBroDaSo_MoFaBroSo_MoFaFaBroSoDaSo_MoFaMoBroDaSo_MoFaMoSisSoDaSo_MoMoBro_MoMoFaBroDaDaSo_MoMoMoSisDaDaSo_MoMoMoSisDaSo_MoMoSisDaDaDaDaSo_MoMoSisDaDaDaSo_MoMoSisDaDaSo_MoMoSisDaSo_MoMoSisSo_MoSisDaDaDaSo_MoSisDaDaSo_MoSisDaSo_MoSisSo_MoStsisSo_SisDaDaSo_SisDaSo_SisSo_Stbro_StsisDaDaSo_StsisDaSo_StsisSo"}
;; 0
%bachuka:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).
;; 1
%bachuka:0, brother[eq]:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D), younger(Alter, Ego).
;; 2
%bachuka:0, brother[eq]:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 3
%bachuka:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 4
%bachuka:0, brother[eq]:3, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H), younger(Alter, Ego).
;; 5
%bachuka:0, brother[eq]:3, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H), younger(Alter, Ego).
;; 6
%bachuka:0, brother[eq]:3, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=8, S=2, Star=0,  {FaMoStsisSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(Alter, H), younger(Alter, Ego).
;; 7
%bachuka:0, brother[eq]:3, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=8, S=2, Star=0,  {FaMoStsisSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(Alter, H), younger(Alter, Ego).
;; 8
%bachuka:0, brother[eq]:4, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E), younger(Alter, Ego).
;; 9
%bachuka:0, brother[eq]:5, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F), younger(Alter, Ego).
;; 10
%bachuka:0, brother[eq]:6, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D), younger(Alter, Ego).
;; 11
%bachuka:0, brother[eq]:6, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 12
%bachuka:0, brother[eq]:6, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H), younger(Alter, Ego).
;; 13
%bachuka:0, brother[eq]:6, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H), younger(Alter, Ego).
;; 14
%bachuka:0, brother[eq]:6, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 15
%bachuka:0, brother[eq]:6, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H), younger(Alter, Ego).
;; 16
%bachuka:0, brother[eq]:6, sister[eq]:6, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G), younger(Alter, Ego).
;; 17
%bachuka:0, brother[eq]:6, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H), younger(Alter, Ego).
;; 18
%bachuka:0, brother[eq]:6, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=6, S=2, Star=0,  {MoStsisSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(Alter, F), younger(Alter, Ego).
;; 19
%bachuka:0, brother[eq]:6, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=6, S=2, Star=0,  {MoStsisSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(Alter, F), younger(Alter, Ego).
;; 20
%bachuka:0, brother[eq]:7, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), younger(Alter, Ego).
;; 21
%bachuka:0, brother[eq]:8, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter), younger(Alter, Ego).
;; 22
%bachuka:0, brother[eq]:9, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E), younger(Alter, Ego).
;; 23
%bachuka:0, brother[eq]:10, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E), younger(Alter, Ego).
;; 24
%bachuka:0, brother[eq]:11, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G), younger(Alter, Ego).
;; 25
%bachuka:0, brother[eq]:12, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E), younger(Alter, Ego).
;; 26
%bachuka:0, brother[eq]:13, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 female(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C), younger(Alter, Ego).
;; 27
%bachuka:0, brother[eq]:13, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 female(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C), younger(Alter, Ego).
;; 28
%bachuka:1, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).
;; 29
%bachuka:1, brother[eq]1:0, brother[eq]:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D), younger(Alter, Ego).
;; 30
%bachuka:1, brother[eq]1:0, brother[eq]:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 31
%bachuka:1, brother[eq]1:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 32
%bachuka:1, brother[eq]1:0, brother[eq]:3, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H), younger(Alter, Ego).
;; 33
%bachuka:1, brother[eq]1:0, brother[eq]:3, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H), younger(Alter, Ego).
;; 34
%bachuka:1, brother[eq]1:0, brother[eq]:3, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=8, S=2, Star=0,  {FaMoStsisSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(Alter, H), younger(Alter, Ego).
;; 35
%bachuka:1, brother[eq]1:0, brother[eq]:3, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=8, S=2, Star=0,  {FaMoStsisSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(Alter, H), younger(Alter, Ego).
;; 36
%bachuka:1, brother[eq]1:0, brother[eq]:4, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E), younger(Alter, Ego).
;; 37
%bachuka:1, brother[eq]1:0, brother[eq]:5, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F), younger(Alter, Ego).
;; 38
%bachuka:1, brother[eq]1:0, brother[eq]:6, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D), younger(Alter, Ego).
;; 39
%bachuka:1, brother[eq]1:0, brother[eq]:6, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 40
%bachuka:1, brother[eq]1:0, brother[eq]:6, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H), younger(Alter, Ego).
;; 41
%bachuka:1, brother[eq]1:0, brother[eq]:6, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H), younger(Alter, Ego).
;; 42
%bachuka:1, brother[eq]1:0, brother[eq]:6, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 43
%bachuka:1, brother[eq]1:0, brother[eq]:6, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H), younger(Alter, Ego).
;; 44
%bachuka:1, brother[eq]1:0, brother[eq]:6, sister[eq]:6, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G), younger(Alter, Ego).
;; 45
%bachuka:1, brother[eq]1:0, brother[eq]:6, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H), younger(Alter, Ego).
;; 46
%bachuka:1, brother[eq]1:0, brother[eq]:6, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=6, S=2, Star=0,  {MoStsisSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(Alter, F), younger(Alter, Ego).
;; 47
%bachuka:1, brother[eq]1:0, brother[eq]:6, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=6, S=2, Star=0,  {MoStsisSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(Alter, F), younger(Alter, Ego).
;; 48
%bachuka:1, brother[eq]1:0, brother[eq]:7, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), younger(Alter, Ego).
;; 49
%bachuka:1, brother[eq]1:0, brother[eq]:8, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter), younger(Alter, Ego).
;; 50
%bachuka:1, brother[eq]1:0, brother[eq]:9, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E), younger(Alter, Ego).
;; 51
%bachuka:1, brother[eq]1:0, brother[eq]:10, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E), younger(Alter, Ego).
;; 52
%bachuka:1, brother[eq]1:0, brother[eq]:11, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G), younger(Alter, Ego).
;; 53
%bachuka:1, brother[eq]1:0, brother[eq]:12, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E), younger(Alter, Ego).
;; 54
%bachuka:1, brother[eq]1:0, brother[eq]:13, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C), younger(Alter, Ego).
;; 55
%bachuka:1, brother[eq]1:0, brother[eq]:13, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C), younger(Alter, Ego).
;; 56
%bachuka:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C), younger(Alter, Ego).
;; 57
%bachuka:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E), younger(Alter, Ego).
;; 58
%bachuka:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G), younger(Alter, Ego).
;; 59
%bachuka:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G), younger(Alter, Ego).
;; 60
%bachuka:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E), younger(Alter, Ego).
;; 61
%bachuka:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G), younger(Alter, Ego).
;; 62
%bachuka:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 63
%bachuka:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H), younger(Alter, Ego).
;; 64
%bachuka:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G), younger(Alter, Ego).
;; 65
%bachuka:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {StsisSo}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), son(Alter, E), younger(Alter, Ego).
;; 66
%bachuka:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=5, S=2, Star=0,  {StsisSo}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), son(Alter, E), younger(Alter, Ego).
;; 67
%bachuka:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(Alter, D), younger(Alter, Ego).
;; 68
%bachuka:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 69
%bachuka:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H), younger(Alter, Ego).
;; 70
%bachuka:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H), younger(Alter, Ego).
;; 71
%bachuka:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 72
%bachuka:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H), younger(Alter, Ego).
;; 73
%bachuka:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G), younger(Alter, Ego).
;; 74
%bachuka:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoDaDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I), younger(Alter, Ego).
;; 75
%bachuka:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H), younger(Alter, Ego).
;; 76
%bachuka:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {StsisDaSo}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 77
%bachuka:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {StsisDaSo}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 78
%bachuka:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(Alter, E), younger(Alter, Ego).
;; 79
%bachuka:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G), younger(Alter, Ego).
;; 80
%bachuka:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaDaDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I), younger(Alter, Ego).
;; 81
%bachuka:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I), younger(Alter, Ego).
;; 82
%bachuka:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G), younger(Alter, Ego).
;; 83
%bachuka:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaFaBroSoDaDaDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I), younger(Alter, Ego).
;; 84
%bachuka:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H), younger(Alter, Ego).
;; 85
%bachuka:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaFaMoBroSoDaDaDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(J, I), son(Alter, J), younger(Alter, Ego).
;; 86
%bachuka:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoSisSoDaDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I), younger(Alter, Ego).
;; 87
%bachuka:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {StsisDaDaSo}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(F, E), daughter(G, F), son(Alter, G), younger(Alter, Ego).
;; 88
%bachuka:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {StsisDaDaSo}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(F, E), daughter(G, F), son(Alter, G), younger(Alter, Ego).


bakooa(Alter, Ego) :-  husband(A, Ego), sister(Alter, A).
{"HuSis"}
;; 0
%bakooa:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


basachete(Alter, Ego) :-  male(Ego), sister[eq]1(Alter, Ego), younger(Alter, Ego).
{"FaBroDa_FaBroDaDa_FaBroDaDaDa_FaFaBroSoDa_FaFaBroSoDaDa_FaFaBroSoDaDaDa_FaFaMoBroSoDa_FaFaMoBroSoDaDa_FaFaMoBroSoDaDaDa_FaMoBroDa_FaMoBroDaDa_FaMoBroDaDaDa_FaMoSisSoDa_FaMoSisSoDaDa_FaMoSisSoDaDaDa_MoFaBroDaDa_MoFaBroDaDaDa_MoFaBroDaDaDaDa_MoMoSisDaDa_MoMoSisDaDaDa_MoMoSisDaDaDaDa_MoSisDa_MoSisDaDa_MoSisDaDaDa_Sis_SisDa_SisDaDa_Stsis_StsisDa_StsisDaDa"}
;; 0
%basachete:0, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).
;; 1
%basachete:0, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), younger(Alter, Ego).
;; 2
%basachete:0, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 3
%basachete:0, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 4
%basachete:0, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D), younger(Alter, Ego).
;; 5
%basachete:0, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 6
%basachete:0, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E), younger(Alter, Ego).
;; 7
%basachete:0, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G), younger(Alter, Ego).
;; 8
%basachete:0, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 9
%basachete:0, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C), younger(Alter, Ego).
;; 10
%basachete:0, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C), younger(Alter, Ego).
;; 11
%basachete:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C), younger(Alter, Ego).
;; 12
%basachete:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E), younger(Alter, Ego).
;; 13
%basachete:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G), younger(Alter, Ego).
;; 14
%basachete:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G), younger(Alter, Ego).
;; 15
%basachete:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E), younger(Alter, Ego).
;; 16
%basachete:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), younger(Alter, Ego).
;; 17
%basachete:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 18
%basachete:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H), younger(Alter, Ego).
;; 19
%basachete:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G), younger(Alter, Ego).
;; 20
%basachete:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {StsisDa}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(Alter, E), younger(Alter, Ego).
;; 21
%basachete:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=5, S=2, Star=0,  {StsisDa}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(Alter, E), younger(Alter, Ego).
;; 22
%basachete:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(Alter, D), younger(Alter, Ego).
;; 23
%basachete:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 24
%basachete:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H), younger(Alter, Ego).
;; 25
%basachete:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H), younger(Alter, Ego).
;; 26
%basachete:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 27
%basachete:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H), younger(Alter, Ego).
;; 28
%basachete:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G), younger(Alter, Ego).
;; 29
%basachete:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I), younger(Alter, Ego).
;; 30
%basachete:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H), younger(Alter, Ego).
;; 31
%basachete:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {StsisDaDa}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 32
%basachete:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {StsisDaDa}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).


basoka(Alter, Ego) :-  female(Ego), sister[eq](Alter, Ego), younger(Alter, Ego).
{"FaBroDa_FaFaBroSoDa_FaFaMoBroSoDa_FaMoBroDa_FaMoSisSoDa_MoFaBroDaDa_MoMoSisDaDa_MoSisDa_Sis_Stsis"}
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


bazakat(Alter, Ego) :-  male(Ego), sister[eq]1(Alter, Ego), elder(Alter, Ego).
{"FaBroDa_FaBroDaDa_FaBroDaDaDa_FaFaBroSoDa_FaFaBroSoDaDa_FaFaBroSoDaDaDa_FaFaMoBroSoDa_FaFaMoBroSoDaDa_FaFaMoBroSoDaDaDa_FaMoBroDa_FaMoBroDaDa_FaMoBroDaDaDa_FaMoSisSoDa_FaMoSisSoDaDa_FaMoSisSoDaDaDa_MoFaBroDaDa_MoFaBroDaDaDa_MoFaBroDaDaDaDa_MoMoSisDaDa_MoMoSisDaDaDa_MoMoSisDaDaDaDa_MoSisDa_MoSisDaDa_MoSisDaDaDa_Sis_SisDa_SisDaDa_Stsis_StsisDa_StsisDaDa"}
;; 0
%bazakat:0, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).
;; 1
%bazakat:0, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), elder(Alter, Ego).
;; 2
%bazakat:0, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 3
%bazakat:0, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 4
%bazakat:0, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D), elder(Alter, Ego).
;; 5
%bazakat:0, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 6
%bazakat:0, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E), elder(Alter, Ego).
;; 7
%bazakat:0, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G), elder(Alter, Ego).
;; 8
%bazakat:0, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 9
%bazakat:0, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C), elder(Alter, Ego).
;; 10
%bazakat:0, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C), elder(Alter, Ego).
;; 11
%bazakat:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C), elder(Alter, Ego).
;; 12
%bazakat:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E), elder(Alter, Ego).
;; 13
%bazakat:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G), elder(Alter, Ego).
;; 14
%bazakat:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G), elder(Alter, Ego).
;; 15
%bazakat:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E), elder(Alter, Ego).
;; 16
%bazakat:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), elder(Alter, Ego).
;; 17
%bazakat:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 18
%bazakat:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H), elder(Alter, Ego).
;; 19
%bazakat:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G), elder(Alter, Ego).
;; 20
%bazakat:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {StsisDa}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(Alter, E), elder(Alter, Ego).
;; 21
%bazakat:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=5, S=2, Star=0,  {StsisDa}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(Alter, E), elder(Alter, Ego).
;; 22
%bazakat:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(Alter, D), elder(Alter, Ego).
;; 23
%bazakat:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 24
%bazakat:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H), elder(Alter, Ego).
;; 25
%bazakat:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H), elder(Alter, Ego).
;; 26
%bazakat:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 27
%bazakat:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H), elder(Alter, Ego).
;; 28
%bazakat:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G), elder(Alter, Ego).
;; 29
%bazakat:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Alter, I), elder(Alter, Ego).
;; 30
%bazakat:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H), elder(Alter, Ego).
;; 31
%bazakat:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {StsisDaDa}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 32
%bazakat:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {StsisDaDa}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).


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
                   |   female(Ego), sister(A, Ego), daughter(B, A), husband(Alter, B).
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
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), husband(Alter, D).
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
                    |   female(Ego), brother[eq](A, Ego), son(Alter, A).
                    |   male(Ego), brother[eq]1(A, Ego), son(Alter, A).
{"BroSo_FaBroDaDaDaSoSo_FaBroDaDaSoSo_FaBroDaSo_FaBroDaSoSo_FaBroSoSo_FaFaBroSoDaDaDaSoSo_FaFaBroSoDaDaSoSo_FaFaBroSoDaSo_FaFaBroSoDaSoSo_FaFaBroSoSoSo_FaFaMoBroSoDaDaDaSoSo_FaFaMoBroSoDaDaSoSo_FaFaMoBroSoDaSo_FaFaMoBroSoDaSoSo_FaMoBroDaDaDaSoSo_FaMoBroDaDaSoSo_FaMoBroDaSo_FaMoBroDaSoSo_FaMoBroSoSo_FaMoFaBroDaSoSoSo_FaMoMoBroSoSo_FaMoMoSisDaSoSoSo_FaMoSisSoDaDaDaSoSo_FaMoSisSoDaDaSoSo_FaMoSisSoDaSo_FaMoSisSoDaSoSo_FaMoSisSoSoSo_FaMoStsisSoSoSo_MoBroSo_MoFaBroDaDaDaDaSoSo_MoFaBroDaDaDaSoSo_MoFaBroDaDaSo_MoFaBroDaDaSoSo_MoFaBroDaSoSo_MoFaBroSoSo_MoFaFaBroSoDaSoSo_MoFaMoBroDaSoSo_MoFaMoSisSoDaSoSo_MoMoBroSo_MoMoFaBroDaDaSoSo_MoMoMoSisDaDaSoSo_MoMoMoSisDaSoSo_MoMoSisDaDaDaDaSoSo_MoMoSisDaDaDaSoSo_MoMoSisDaDaSo_MoMoSisDaDaSoSo_MoMoSisDaSoSo_MoMoSisSoSo_MoSisDaDaDaSoSo_MoSisDaDaSoSo_MoSisDaSo_MoSisDaSoSo_MoSisSoSo_MoStsisSoSo_SisDaDaSoSo_SisDaSoSo_SisSo_SisSoSo_So_StbroSo_StsisDaDaSoSo_StsisDaSoSo_StsisSo_StsisSoSo_Stso"}
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
%botsasa:3, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 15
%botsasa:3, brother[eq]:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 16
%botsasa:3, brother[eq]:2, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 17
%botsasa:3, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 18
%botsasa:3, brother[eq]:3, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 19
%botsasa:3, brother[eq]:3, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 20
%botsasa:3, brother[eq]:3, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=9, S=2, Star=0,  {FaMoStsisSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), son(Alter, I).
;; 21
%botsasa:3, brother[eq]:3, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=9, S=2, Star=0,  {FaMoStsisSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), son(Alter, I).
;; 22
%botsasa:3, brother[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 23
%botsasa:3, brother[eq]:5, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 24
%botsasa:3, brother[eq]:6, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 25
%botsasa:3, brother[eq]:6, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 26
%botsasa:3, brother[eq]:6, sister[eq]:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 27
%botsasa:3, brother[eq]:6, sister[eq]:3, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 28
%botsasa:3, brother[eq]:6, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 29
%botsasa:3, brother[eq]:6, sister[eq]:5, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 30
%botsasa:3, brother[eq]:6, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 31
%botsasa:3, brother[eq]:6, sister[eq]:8, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 32
%botsasa:3, brother[eq]:6, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {MoStsisSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(G, F), son(Alter, G).
;; 33
%botsasa:3, brother[eq]:6, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {MoStsisSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(G, F), son(Alter, G).
;; 34
%botsasa:3, brother[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 35
%botsasa:3, brother[eq]:8, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 36
%botsasa:3, brother[eq]:9, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 37
%botsasa:3, brother[eq]:10, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 38
%botsasa:3, brother[eq]:11, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H).
;; 39
%botsasa:3, brother[eq]:12, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 40
%botsasa:3, brother[eq]:13, step_brother:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {StbroSo}  
 female(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(E, D), son(E, C), son(Alter, E).
;; 41
%botsasa:3, brother[eq]:13, step_brother:1%
 Lvl=-1,  PC=5, S=2, Star=0,  {StbroSo}  
 female(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(E, D), son(E, C), son(Alter, E).
;; 42
%botsasa:4, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 43
%botsasa:4, brother[eq]1:0, brother[eq]:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 44
%botsasa:4, brother[eq]1:0, brother[eq]:2, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 45
%botsasa:4, brother[eq]1:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 46
%botsasa:4, brother[eq]1:0, brother[eq]:3, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaSoSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 47
%botsasa:4, brother[eq]1:0, brother[eq]:3, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaSoSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(I, H), son(Alter, I).
;; 48
%botsasa:4, brother[eq]1:0, brother[eq]:3, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=9, S=2, Star=0,  {FaMoStsisSoSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), son(Alter, I).
;; 49
%botsasa:4, brother[eq]1:0, brother[eq]:3, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=9, S=2, Star=0,  {FaMoStsisSoSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(I, H), son(Alter, I).
;; 50
%botsasa:4, brother[eq]1:0, brother[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 51
%botsasa:4, brother[eq]1:0, brother[eq]:5, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 52
%botsasa:4, brother[eq]1:0, brother[eq]:6, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 53
%botsasa:4, brother[eq]1:0, brother[eq]:6, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 54
%botsasa:4, brother[eq]1:0, brother[eq]:6, sister[eq]:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 55
%botsasa:4, brother[eq]1:0, brother[eq]:6, sister[eq]:3, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 56
%botsasa:4, brother[eq]1:0, brother[eq]:6, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 57
%botsasa:4, brother[eq]1:0, brother[eq]:6, sister[eq]:5, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 58
%botsasa:4, brother[eq]1:0, brother[eq]:6, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 59
%botsasa:4, brother[eq]1:0, brother[eq]:6, sister[eq]:8, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 60
%botsasa:4, brother[eq]1:0, brother[eq]:6, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {MoStsisSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(G, F), son(Alter, G).
;; 61
%botsasa:4, brother[eq]1:0, brother[eq]:6, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {MoStsisSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(G, F), son(Alter, G).
;; 62
%botsasa:4, brother[eq]1:0, brother[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 63
%botsasa:4, brother[eq]1:0, brother[eq]:8, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 64
%botsasa:4, brother[eq]1:0, brother[eq]:9, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 65
%botsasa:4, brother[eq]1:0, brother[eq]:10, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 66
%botsasa:4, brother[eq]1:0, brother[eq]:11, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H).
;; 67
%botsasa:4, brother[eq]1:0, brother[eq]:12, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 68
%botsasa:4, brother[eq]1:0, brother[eq]:13, step_brother:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {StbroSo}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(E, D), son(E, C), son(Alter, E).
;; 69
%botsasa:4, brother[eq]1:0, brother[eq]:13, step_brother:1%
 Lvl=-1,  PC=5, S=2, Star=0,  {StbroSo}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(E, D), son(E, C), son(Alter, E).
;; 70
%botsasa:4, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(Alter, D).
;; 71
%botsasa:4, brother[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 72
%botsasa:4, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 73
%botsasa:4, brother[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 74
%botsasa:4, brother[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 75
%botsasa:4, brother[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 76
%botsasa:4, brother[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 77
%botsasa:4, brother[eq]1:1, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoDaSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 78
%botsasa:4, brother[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 79
%botsasa:4, brother[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {StsisSoSo}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), son(F, E), son(Alter, F).
;; 80
%botsasa:4, brother[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {StsisSoSo}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), son(F, E), son(Alter, F).
;; 81
%botsasa:4, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), son(Alter, E).
;; 82
%botsasa:4, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 83
%botsasa:4, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaDaDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 84
%botsasa:4, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 85
%botsasa:4, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 86
%botsasa:4, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaFaBroSoDaDaSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 87
%botsasa:4, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 88
%botsasa:4, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaFaMoBroSoDaDaSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), son(J, I), son(Alter, J).
;; 89
%botsasa:4, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoSisSoDaDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 90
%botsasa:4, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {StsisDaSoSo}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(F, E), son(G, F), son(Alter, G).
;; 91
%botsasa:4, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {StsisDaSoSo}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(F, E), son(G, F), son(Alter, G).
;; 92
%botsasa:4, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaSoSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(F, E), son(Alter, F).
;; 93
%botsasa:4, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaDaDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 94
%botsasa:4, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoSisDaDaDaDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(I, H), son(J, I), son(Alter, J).
;; 95
%botsasa:4, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoFaBroDaDaDaDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(I, H), son(J, I), son(Alter, J).
;; 96
%botsasa:4, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaDaDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 97
%botsasa:4, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {FaFaBroSoDaDaDaSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(I, H), son(J, I), son(Alter, J).
;; 98
%botsasa:4, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoBroDaDaDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 99
%botsasa:4, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=-3,  PC=13, S=0, Star=0,  {FaFaMoBroSoDaDaDaSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(J, I), son(K, J), son(Alter, K).
;; 100
%botsasa:4, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {FaMoSisSoDaDaDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(I, H), son(J, I), son(Alter, J).
;; 101
%botsasa:4, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-4,  PC=8, S=2, Star=0,  {StsisDaDaSoSo}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 102
%botsasa:4, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-4,  PC=8, S=2, Star=0,  {StsisDaDaSoSo}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).


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
                 |   father(A, Ego), sister[eq](Alter, A).
                 |   husband(A, Ego), mother(Alter, A).
{"FaBroWi_FaFaBroDa_FaFaBroDaDaSoWi_FaFaBroDaSoWi_FaFaBroSoWi_FaFaFaBroSoDa_FaFaFaBroSoSoWi_FaFaFaMoBroSoDa_FaFaMoBroDa_FaFaMoBroDaSoWi_FaFaMoBroSoWi_FaFaMoMoBroSoWi_FaFaMoSisSoDa_FaFaMoSisSoSoWi_FaFaMoStsisSoSoWi_FaMoBroWi_FaMoFaBroDaDa_FaMoFaBroDaSoWi_FaMoFaBroSoWi_FaMoMoBroWi_FaMoMoSisDaDa_FaMoMoSisDaSoWi_FaMoMoSisSoWi_FaMoSisDa_FaMoSisDaDaSoWi_FaMoSisDaSoWi_FaMoSisSoWi_FaMoStsisSoWi_FaSis_FaSisDaDaSoWi_FaSisDaSoWi_FaSisSoWi_FaStbroWi_FaStsis_FaStsisDaDaSoWi_FaStsisDaSoWi_FaStsisSoWi_HuMo_Mo_MoFaBroDa_MoFaFaBroSoDa_MoFaFaMoBroSoDa_MoFaMoBroDa_MoFaMoSisSoDa_MoMoFaBroDaDa_MoMoMoSisDaDa_MoMoSisDa_MoSis_MoStsis_Stmo"}
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
%ekea:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 48
%ekea:1, sister[eq]:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 49
%ekea:1, sister[eq]:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).
;; 50
%ekea:1, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G).
;; 51
%ekea:1, sister[eq]:4, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 52
%ekea:1, sister[eq]:5, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 53
%ekea:1, sister[eq]:6, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 54
%ekea:1, sister[eq]:7, brother:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaMoBroSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 55
%ekea:1, sister[eq]:8, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 56
%ekea:1, sister[eq]:9, step_sister:0%
 Lvl=1,  PC=5, S=2, Star=0,  {FaStsis}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(Alter, E), daughter(Alter, D).
;; 57
%ekea:1, sister[eq]:9, step_sister:1%
 Lvl=1,  PC=5, S=2, Star=0,  {FaStsis}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(Alter, E), daughter(Alter, D).
;; 58
%ekea:2%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).


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


generation[aux]08(Alter, Ego) :-  sibling(Alter, Ego).
                              |   parent(A, Ego), generation[aux]08(B, A), child(Alter, B).
;; 0
%generation[aux]08:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]08:1, generation[aux]08:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 2
%generation[aux]08:1, generation[aux]08:1, generation[aux]08:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).


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


manazha(Alter, Ego) :-  male(Ego), sister[eq]1(A, Ego), husband(Alter, A).
{"FaBroDaDaDaHu_FaBroDaDaHu_FaBroDaHu_FaFaBroSoDaDaDaHu_FaFaBroSoDaDaHu_FaFaBroSoDaHu_FaFaMoBroSoDaDaDaHu_FaFaMoBroSoDaDaHu_FaFaMoBroSoDaHu_FaMoBroDaDaDaHu_FaMoBroDaDaHu_FaMoBroDaHu_FaMoSisSoDaDaDaHu_FaMoSisSoDaDaHu_FaMoSisSoDaHu_MoFaBroDaDaDaDaHu_MoFaBroDaDaDaHu_MoFaBroDaDaHu_MoMoSisDaDaDaDaHu_MoMoSisDaDaDaHu_MoMoSisDaDaHu_MoSisDaDaDaHu_MoSisDaDaHu_MoSisDaHu_SisDaDaHu_SisDaHu_SisHu_StsisDaDaHu_StsisDaHu_StsisHu"}
;; 0
%manazha:0, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).
;; 1
%manazha:0, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E).
;; 2
%manazha:0, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), husband(Alter, G).
;; 3
%manazha:0, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaDaHu}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), husband(Alter, G).
;; 4
%manazha:0, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E).
;; 5
%manazha:0, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoDaHu}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), husband(Alter, G).
;; 6
%manazha:0, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoBroDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), husband(Alter, F).
;; 7
%manazha:0, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoBroSoDaHu}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), husband(Alter, H).
;; 8
%manazha:0, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), husband(Alter, G).
;; 9
%manazha:0, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=4, S=3, Star=0,  {StsisHu}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), husband(Alter, E).
;; 10
%manazha:0, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=4, S=3, Star=0,  {StsisHu}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), husband(Alter, E).
;; 11
%manazha:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), husband(Alter, D).
;; 12
%manazha:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), husband(Alter, F).
;; 13
%manazha:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), husband(Alter, H).
;; 14
%manazha:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaDaDaHu}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), husband(Alter, H).
;; 15
%manazha:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), husband(Alter, F).
;; 16
%manazha:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoDaDaHu}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), husband(Alter, H).
;; 17
%manazha:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), husband(Alter, G).
;; 18
%manazha:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoBroSoDaDaHu}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), husband(Alter, I).
;; 19
%manazha:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), husband(Alter, H).
;; 20
%manazha:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=5, S=3, Star=0,  {StsisDaHu}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(F, E), husband(Alter, F).
;; 21
%manazha:0, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=5, S=3, Star=0,  {StsisDaHu}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(F, E), husband(Alter, F).
;; 22
%manazha:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisDaDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), husband(Alter, E).
;; 23
%manazha:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisDaDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), husband(Alter, G).
;; 24
%manazha:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {MoMoSisDaDaDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(I, H), husband(Alter, I).
;; 25
%manazha:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {MoFaBroDaDaDaDaHu}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(I, H), husband(Alter, I).
;; 26
%manazha:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroDaDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), husband(Alter, G).
;; 27
%manazha:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {FaFaBroSoDaDaDaHu}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(I, H), husband(Alter, I).
;; 28
%manazha:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroDaDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), husband(Alter, H).
;; 29
%manazha:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaMoBroSoDaDaDaHu}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(J, I), husband(Alter, J).
;; 30
%manazha:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {FaMoSisSoDaDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(I, H), husband(Alter, I).
;; 31
%manazha:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-2,  PC=6, S=3, Star=0,  {StsisDaDaHu}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(F, E), daughter(G, F), husband(Alter, G).
;; 32
%manazha:0, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-2,  PC=6, S=3, Star=0,  {StsisDaDaHu}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(F, E), daughter(G, F), husband(Alter, G).


mazhe(Alter, Ego) :-  wife(A, Ego), brother(Alter, A).
{"WiBro"}
;; 0
%mazhe:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


meeka(Alter, Ego) :-  male(Ego), brother[eq]1(Alter, Ego), elder(Alter, Ego).
{"Bro_FaBroDaDaDaSo_FaBroDaDaSo_FaBroDaSo_FaBroSo_FaFaBroSoDaDaDaSo_FaFaBroSoDaDaSo_FaFaBroSoDaSo_FaFaBroSoSo_FaFaMoBroSoDaDaDaSo_FaFaMoBroSoDaDaSo_FaFaMoBroSoDaSo_FaMoBroDaDaDaSo_FaMoBroDaDaSo_FaMoBroDaSo_FaMoBroSo_FaMoFaBroDaSoSo_FaMoMoBroSo_FaMoMoSisDaSoSo_FaMoSisSoDaDaDaSo_FaMoSisSoDaDaSo_FaMoSisSoDaSo_FaMoSisSoSo_FaMoStsisSoSo_MoBro_MoFaBroDaDaDaDaSo_MoFaBroDaDaDaSo_MoFaBroDaDaSo_MoFaBroDaSo_MoFaBroSo_MoFaFaBroSoDaSo_MoFaMoBroDaSo_MoFaMoSisSoDaSo_MoMoBro_MoMoFaBroDaDaSo_MoMoMoSisDaDaSo_MoMoMoSisDaSo_MoMoSisDaDaDaDaSo_MoMoSisDaDaDaSo_MoMoSisDaDaSo_MoMoSisDaSo_MoMoSisSo_MoSisDaDaDaSo_MoSisDaDaSo_MoSisDaSo_MoSisSo_MoStsisSo_SisDaDaSo_SisDaSo_SisSo_Stbro_StsisDaDaSo_StsisDaSo_StsisSo"}
;; 0
%meeka:0, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%meeka:0, brother[eq]1:0, brother[eq]:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D), elder(Alter, Ego).
;; 2
%meeka:0, brother[eq]1:0, brother[eq]:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 3
%meeka:0, brother[eq]1:0, brother[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 4
%meeka:0, brother[eq]1:0, brother[eq]:3, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H), elder(Alter, Ego).
;; 5
%meeka:0, brother[eq]1:0, brother[eq]:3, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H), elder(Alter, Ego).
;; 6
%meeka:0, brother[eq]1:0, brother[eq]:3, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=8, S=2, Star=0,  {FaMoStsisSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), son(Alter, H), elder(Alter, Ego).
;; 7
%meeka:0, brother[eq]1:0, brother[eq]:3, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=8, S=2, Star=0,  {FaMoStsisSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), son(Alter, H), elder(Alter, Ego).
;; 8
%meeka:0, brother[eq]1:0, brother[eq]:4, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E), elder(Alter, Ego).
;; 9
%meeka:0, brother[eq]1:0, brother[eq]:5, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F), elder(Alter, Ego).
;; 10
%meeka:0, brother[eq]1:0, brother[eq]:6, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D), elder(Alter, Ego).
;; 11
%meeka:0, brother[eq]1:0, brother[eq]:6, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 12
%meeka:0, brother[eq]1:0, brother[eq]:6, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 13
%meeka:0, brother[eq]1:0, brother[eq]:6, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 14
%meeka:0, brother[eq]1:0, brother[eq]:6, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 15
%meeka:0, brother[eq]1:0, brother[eq]:6, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 16
%meeka:0, brother[eq]1:0, brother[eq]:6, sister[eq]:6, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G), elder(Alter, Ego).
;; 17
%meeka:0, brother[eq]1:0, brother[eq]:6, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 18
%meeka:0, brother[eq]1:0, brother[eq]:6, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=6, S=2, Star=0,  {MoStsisSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(Alter, F), elder(Alter, Ego).
;; 19
%meeka:0, brother[eq]1:0, brother[eq]:6, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=6, S=2, Star=0,  {MoStsisSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(Alter, F), elder(Alter, Ego).
;; 20
%meeka:0, brother[eq]1:0, brother[eq]:7, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), elder(Alter, Ego).
;; 21
%meeka:0, brother[eq]1:0, brother[eq]:8, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter), elder(Alter, Ego).
;; 22
%meeka:0, brother[eq]1:0, brother[eq]:9, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E), elder(Alter, Ego).
;; 23
%meeka:0, brother[eq]1:0, brother[eq]:10, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E), elder(Alter, Ego).
;; 24
%meeka:0, brother[eq]1:0, brother[eq]:11, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G), elder(Alter, Ego).
;; 25
%meeka:0, brother[eq]1:0, brother[eq]:12, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E), elder(Alter, Ego).
;; 26
%meeka:0, brother[eq]1:0, brother[eq]:13, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C), elder(Alter, Ego).
;; 27
%meeka:0, brother[eq]1:0, brother[eq]:13, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C), elder(Alter, Ego).
;; 28
%meeka:0, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C), elder(Alter, Ego).
;; 29
%meeka:0, brother[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E), elder(Alter, Ego).
;; 30
%meeka:0, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G), elder(Alter, Ego).
;; 31
%meeka:0, brother[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G), elder(Alter, Ego).
;; 32
%meeka:0, brother[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E), elder(Alter, Ego).
;; 33
%meeka:0, brother[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G), elder(Alter, Ego).
;; 34
%meeka:0, brother[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 35
%meeka:0, brother[eq]1:1, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 36
%meeka:0, brother[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G), elder(Alter, Ego).
;; 37
%meeka:0, brother[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {StsisSo}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), son(Alter, E), elder(Alter, Ego).
;; 38
%meeka:0, brother[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-1,  PC=5, S=2, Star=0,  {StsisSo}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), son(Alter, E), elder(Alter, Ego).
;; 39
%meeka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(Alter, D), elder(Alter, Ego).
;; 40
%meeka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 41
%meeka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 42
%meeka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 43
%meeka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 44
%meeka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 45
%meeka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G), elder(Alter, Ego).
;; 46
%meeka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoDaDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), son(Alter, I), elder(Alter, Ego).
;; 47
%meeka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 48
%meeka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {StsisDaSo}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 49
%meeka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {StsisDaSo}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 50
%meeka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(Alter, E), elder(Alter, Ego).
;; 51
%meeka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G), elder(Alter, Ego).
;; 52
%meeka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, sister:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaDaDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I), elder(Alter, Ego).
;; 53
%meeka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I), elder(Alter, Ego).
;; 54
%meeka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:4, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G), elder(Alter, Ego).
;; 55
%meeka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:5, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaFaBroSoDaDaDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I), elder(Alter, Ego).
;; 56
%meeka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:6, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 57
%meeka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:7, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaFaMoBroSoDaDaDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(J, I), son(Alter, J), elder(Alter, Ego).
;; 58
%meeka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:8, sister:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoSisSoDaDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(I, H), son(Alter, I), elder(Alter, Ego).
;; 59
%meeka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {StsisDaDaSo}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(E, D), daughter(E, C), daughter(F, E), daughter(G, F), son(Alter, G), elder(Alter, Ego).
;; 60
%meeka:0, brother[eq]1:1, sister[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:9, step_sister:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {StsisDaDaSo}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(E, D), daughter(E, C), daughter(F, E), daughter(G, F), son(Alter, G), elder(Alter, Ego).


mooa(Alter, Ego) :-  wife(Alter, Ego).
                 |   wife(A, Ego), sister[eq](Alter, A).
{"Wi_WiFaBroDa_WiFaFaBroSoDa_WiFaFaMoBroSoDa_WiFaMoBroDa_WiFaMoSisSoDa_WiMoFaBroDaDa_WiMoMoSisDaDa_WiMoSisDa_WiSis_WiStsis"}
;; 0
%mooa:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).
;; 1
%mooa:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%mooa:1, sister[eq]:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 3
%mooa:1, sister[eq]:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).
;; 4
%mooa:1, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroDaDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G).
;; 5
%mooa:1, sister[eq]:4, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 6
%mooa:1, sister[eq]:5, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroSoDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 7
%mooa:1, sister[eq]:6, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaMoBroDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 8
%mooa:1, sister[eq]:7, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaMoBroSoDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 9
%mooa:1, sister[eq]:8, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 10
%mooa:1, sister[eq]:9, step_sister:0%
 Lvl=0,  PC=4, S=3, Star=0,  {WiStsis}  
 wife(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(Alter, E), daughter(Alter, D).
;; 11
%mooa:1, sister[eq]:9, step_sister:1%
 Lvl=0,  PC=4, S=3, Star=0,  {WiStsis}  
 wife(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(Alter, E), daughter(Alter, D).


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

