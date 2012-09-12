;;  Horn Clause Representation of Omaha-69 Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Omaha-69") (author, "Nicholas Hopkins") (date, "1969-01-01") (citation, "Nicholas Hopkins, 'A Formal Account of Chalchihuitan Tzotzil Kinship Terminology' in ETHNOLOGY vol. 8(1), 1969") 
(non_term, [aux], [eq], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, false) (address, false) (recursiveLevels, 1)
(overlaps, (bankil, (kitzin)), (cha_tot, (huntot)), (huntot, (cha_tot)), (kishlal, (wish)), (kitzin, (bankil)), (muk, (wish, shibel)), (shibel, (muk)), (wish, (kishlal, muk)))
(umbrellas, (hunme, (me)), (huntot, (tot)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

bankil(Alter, Ego) :-  male(Ego), brother[eq](Alter, Ego), elder(Alter, Ego).
{"Bro_FaBroSo_FaFaBroSoSo_FaMoSisSoSo_MoBroDaSo_MoBroSoDaSo_MoFaBroDaSo_MoFaBroSoDaSo_MoFaBroSoSoDaSo_MoFaFaBroDaSo_MoFaMoBroDaDaSo_MoFaMoBroSoDaDaSo_MoFaMoSisDaSo_MoFaSisSo_MoMoBroDaDaSo_MoMoBroSoDaDaSo_MoMoFaBroDaDaSo_MoMoFaBroSoDaDaSo_MoMoMoSisSoDaDaSo_MoMoSisDaSo_MoMoSisSoDaSo_MoMoSisSoSoDaSo_MoSisSo"}
;; 0
%bankil:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%bankil:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D), elder(Alter, Ego).
;; 2
%bankil:0, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 3
%bankil:0, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 4
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D), elder(Alter, Ego).
;; 5
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F), elder(Alter, Ego).
;; 6
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=6, S=0, Star=0,  {MoMoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), son(Alter, E), elder(Alter, Ego).
;; 7
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H), elder(Alter, Ego).
;; 8
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=6, S=0, Star=0,  {MoMoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), son(Alter, E), elder(Alter, Ego).
;; 9
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(Alter, G), elder(Alter, Ego).
;; 10
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(Alter, I), elder(Alter, Ego).
;; 11
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(Alter, I), elder(Alter, Ego).
;; 12
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H), elder(Alter, Ego).
;; 13
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=4, S=0, Star=0,  {MoSisSo}  
 male(Ego), mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), son(Alter, C), elder(Alter, Ego).
;; 14
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 15
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=4, S=0, Star=0,  {MoSisSo}  
 male(Ego), mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), son(Alter, C), elder(Alter, Ego).
;; 16
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E), elder(Alter, Ego).
;; 17
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H), elder(Alter, Ego).
;; 18
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, B)), son(Alter, I), elder(Alter, Ego).
;; 19
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=1,  PC=5, S=0, Star=0,  {MoFaSisSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(Alter, D), elder(Alter, Ego).
;; 20
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G), elder(Alter, Ego).
;; 21
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=1,  PC=5, S=0, Star=0,  {MoFaSisSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(Alter, D), elder(Alter, Ego).
;; 22
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaSisSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Alter, H), elder(Alter, Ego).
;; 23
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaSisSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), daughter(G, F), not(equal(G, E)), son(Alter, G), elder(Alter, Ego).
;; 24
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaSisSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), daughter(G, F), not(equal(G, E)), son(Alter, G), elder(Alter, Ego).
;; 25
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {MoFaFaBroDaSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(Alter, J), elder(Alter, Ego).
;; 26
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaFaBroDaSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), daughter(I, H), not(equal(I, G)), son(Alter, I), elder(Alter, Ego).
;; 27
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaFaBroDaSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), father(H, G), daughter(I, H), not(equal(I, G)), son(Alter, I), elder(Alter, Ego).
;; 28
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {MoFaMoSisDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(Alter, J), elder(Alter, Ego).
;; 29
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), daughter(I, H), not(equal(I, G)), son(Alter, I), elder(Alter, Ego).
;; 30
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), father(H, G), daughter(I, H), not(equal(I, G)), son(Alter, I), elder(Alter, Ego).
;; 31
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(Alter, I), elder(Alter, Ego).
;; 32
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(Alter, I), elder(Alter, Ego).
;; 33
%bankil:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {MoFaMoBroDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K), elder(Alter, Ego).
;; 34
%bankil:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E), elder(Alter, Ego).
;; 35
%bankil:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G), elder(Alter, Ego).
;; 36
%bankil:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G), elder(Alter, Ego).
;; 37
%bankil:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 38
%bankil:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 39
%bankil:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).


bol(Alter, Ego) :-  wife(A, Ego), brother[eq]1(Alter, A).
                |   wife(A, Ego), mother(B, A), brother(Alter, B).
                |   male(Ego), sister[eq](A, Ego), husband(Alter, A).
                |   male(Ego), sister(A, Ego), daughter(B, A), husband(Alter, B).
{"FaBroDaHu_FaFaBroDaHu_FaFaFaBroSoDaHu_FaFaMoSisSoDaHu_FaMoBroDaDaHu_FaMoBroSoDaDaHu_FaMoFaBroDaDaHu_FaMoFaBroSoDaDaHu_FaMoFaBroSoSoDaDaHu_FaMoMoSisSoDaDaHu_FaMoMoSisSoSoDaDaHu_FaMoSisDaHu_FaMoSisHuBroDaHu_FaSisHu_MoBroDaDaHu_MoBroSoDaDaHu_MoFaBroDaDaHu_MoFaBroSoDaDaHu_MoFaBroSoSoDaDaHu_MoMoBroDaDaDaHu_MoMoBroSoDaDaDaHu_MoMoSisSoDaDaHu_MoMoSisSoSoDaDaHu_MoSisDaHu_SisDaHu_SisHu_WiBro_WiBroSo_WiBroSoSo_WiFaBroSo_WiFaBroSoSo_WiFaBroSoSoSo_WiFaFaBroSoSo_WiFaMoSisSoSo_WiMoBro_WiMoBroDaSo_WiMoBroSoDaSo_WiMoFaBroDaSo_WiMoFaBroSoDaSo_WiMoFaFaBroDaSo_WiMoFaMoSisDaSo_WiMoFaSisSo_WiMoMoBroDaDaSo_WiMoMoSisDaSo_WiMoMoSisSoDaSo_WiMoSisSo_WiMoSisSoSo_WiMoSisSoSoSo"}
;; 0
%bol:0, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%bol:0, brother[eq]1:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 2
%bol:0, brother[eq]1:0, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroSoSo}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 3
%bol:0, brother[eq]1:0, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 4
%bol:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 5
%bol:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(Alter, G).
;; 6
%bol:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoMoSisDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), daughter(F, E), not(equal(F, B)), son(Alter, F).
;; 7
%bol:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoMoSisDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), daughter(F, E), not(equal(F, B)), son(Alter, F).
;; 8
%bol:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoBroDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 9
%bol:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=4, S=1, Star=0,  {WiMoSisSo}  
 wife(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(Alter, D).
;; 10
%bol:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 11
%bol:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=4, S=1, Star=0,  {WiMoSisSo}  
 wife(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(Alter, D).
;; 12
%bol:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoFaSisSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 13
%bol:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoFaSisSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(Alter, E).
;; 14
%bol:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaFaBroDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 15
%bol:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoFaSisSo}  
 wife(A, Ego), mother(B, A), father(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(Alter, E).
;; 16
%bol:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaSisSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), mother(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 17
%bol:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaSisSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), father(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 18
%bol:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=1, Star=0,  {WiMoFaFaBroDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 19
%bol:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=1, Star=0,  {WiMoFaFaBroDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 20
%bol:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=1, Star=0,  {WiMoFaFaBroDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 21
%bol:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=1, Star=0,  {WiMoFaMoSisDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 22
%bol:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=1, Star=0,  {WiMoFaMoSisDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 23
%bol:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=1, Star=0,  {WiMoFaMoSisDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 24
%bol:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 25
%bol:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaBroSoDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 26
%bol:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoSisSoDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 27
%bol:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroSoDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 28
%bol:0, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 29
%bol:0, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 30
%bol:0, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 31
%bol:0, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroSoSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 32
%bol:0, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroSoSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 33
%bol:0, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisSoSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 34
%bol:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoBro}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 35
%bol:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).
;; 36
%bol:2, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), husband(Alter, E).
;; 37
%bol:2, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroDaDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), husband(Alter, H).
;; 38
%bol:2, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {MoMoBroSoDaDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), not(equal(I, Ego)), husband(Alter, I).
;; 39
%bol:2, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=4, S=1, Star=0,  {MoSisDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), husband(Alter, D).
;; 40
%bol:2, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaDaHu}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), husband(Alter, G).
;; 41
%bol:2, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=4, S=1, Star=0,  {MoSisDaHu}  
 male(Ego), mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), husband(Alter, D).
;; 42
%bol:2, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), husband(Alter, F).
;; 43
%bol:2, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoDaDaHu}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), husband(Alter, H).
;; 44
%bol:2, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), husband(Alter, H).
;; 45
%bol:2, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroSoDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), husband(Alter, G).
;; 46
%bol:2, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {MoFaBroSoSoDaDaHu}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), husband(Alter, I).
;; 47
%bol:2, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {MoMoSisSoSoDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), husband(Alter, I).
;; 48
%bol:2, sister[eq]:2%
 Lvl=0,  PC=2, S=1, Star=0,  {SisHu}  
 male(Ego), mother(A, Ego), daughter(B, A), not(equal(B, Ego)), husband(Alter, B).
;; 49
%bol:2, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E).
;; 50
%bol:2, sister[eq]:4%
 Lvl=0,  PC=2, S=1, Star=0,  {SisHu}  
 male(Ego), father(A, Ego), daughter(B, A), not(equal(B, Ego)), husband(Alter, B).
;; 51
%bol:2, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 52
%bol:2, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), husband(Alter, G).
;; 53
%bol:2, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaBroSoDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), husband(Alter, I).
;; 54
%bol:2, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoSisSoDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), husband(Alter, I).
;; 55
%bol:2, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroSoDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), husband(Alter, H).
;; 56
%bol:2, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoFaBroSoSoDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, A)), husband(Alter, J).
;; 57
%bol:2, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoMoSisSoSoDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, A)), husband(Alter, J).
;; 58
%bol:2, sister[eq]:5, sister[eq]:2%
 Lvl=1,  PC=3, S=1, Star=0,  {FaSisHu}  
 male(Ego), father(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), husband(Alter, C).
;; 59
%bol:2, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaBroDaHu}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), husband(Alter, F).
;; 60
%bol:2, sister[eq]:5, sister[eq]:4%
 Lvl=1,  PC=3, S=1, Star=0,  {FaSisHu}  
 male(Ego), father(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), husband(Alter, C).
;; 61
%bol:2, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaSisHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), husband(Alter, G).
;; 62
%bol:2, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {FaMoBroDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(J, I), not(equal(J, D)), husband(Alter, J).
;; 63
%bol:2, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=13, S=1, Star=0,  {FaMoBroSoDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(I, H), daughter(J, I), daughter(K, J), not(equal(K, D)), husband(Alter, K).
;; 64
%bol:2, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=7, S=1, Star=0,  {FaSisHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), daughter(F, E), not(equal(F, D)), husband(Alter, F).
;; 65
%bol:2, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=11, S=1, Star=0,  {FaFaBroDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), husband(Alter, I).
;; 66
%bol:2, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=7, S=1, Star=0,  {FaSisHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), daughter(F, E), not(equal(F, D)), husband(Alter, F).
;; 67
%bol:2, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=1, Star=0,  {FaFaBroDaHu}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), husband(Alter, I).
;; 68
%bol:2, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaBroDaHu}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), husband(Alter, H).
;; 69
%bol:2, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=13, S=1, Star=0,  {FaSisHu}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), husband(Alter, K).
;; 70
%bol:2, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaBroDaHu}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), husband(Alter, H).
;; 71
%bol:2, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=1, Star=0,  {FaFaFaBroSoDaHu}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 72
%bol:2, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=1, Star=0,  {FaFaFaBroSoDaHu}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), husband(Alter, J).
;; 73
%bol:2, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=1, Star=0,  {FaFaFaBroSoDaHu}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), husband(Alter, J).
;; 74
%bol:2, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=1, Star=0,  {FaFaMoSisSoDaHu}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 75
%bol:2, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=1, Star=0,  {FaFaMoSisSoDaHu}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), husband(Alter, J).
;; 76
%bol:2, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=1, Star=0,  {FaFaMoSisSoDaHu}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), husband(Alter, J).
;; 77
%bol:2, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=1, Star=0,  {FaMoSisDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), husband(Alter, I).
;; 78
%bol:2, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoSisDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), husband(Alter, H).
;; 79
%bol:2, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=13, S=1, Star=0,  {FaMoSisHuBroDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), husband(Alter, K).
;; 80
%bol:2, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoSisDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), husband(Alter, H).
;; 81
%bol:2, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoSisDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), husband(Alter, H).
;; 82
%bol:2, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:2%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), daughter(G, F), not(equal(G, E)), husband(Alter, G).
;; 83
%bol:2, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=11, S=1, Star=0,  {FaMoSisHuBroDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), husband(Alter, J).
;; 84
%bol:2, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:4%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), daughter(G, F), not(equal(G, E)), husband(Alter, G).
;; 85
%bol:2, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=1, Star=0,  {FaMoFaBroDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 86
%bol:2, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=1, Star=0,  {FaMoFaBroDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), husband(Alter, J).
;; 87
%bol:2, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=1, Star=0,  {FaMoFaBroDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), husband(Alter, J).
;; 88
%bol:2, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoSisDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), husband(Alter, H).
;; 89
%bol:2, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:2%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), daughter(G, F), not(equal(G, E)), husband(Alter, G).
;; 90
%bol:2, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=11, S=1, Star=0,  {FaMoSisHuBroDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), husband(Alter, J).
;; 91
%bol:2, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:4%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), daughter(G, F), not(equal(G, E)), husband(Alter, G).
;; 92
%bol:2, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {FaMoBroDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), husband(Alter, J).
;; 93
%bol:2, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoBroDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), daughter(I, H), not(equal(I, G)), husband(Alter, I).
;; 94
%bol:2, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoBroDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), father(H, G), daughter(I, H), not(equal(I, G)), husband(Alter, I).
;; 95
%bol:2, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=13, S=1, Star=0,  {FaMoBroSoDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 96
%bol:2, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoBroSoDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), husband(Alter, J).
;; 97
%bol:2, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoBroSoDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), husband(Alter, J).
;; 98
%bol:3, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), husband(Alter, D).


brother(Alter, Ego) :-  sibling(Alter, Ego), male(Alter).
;; 0
%brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).


brother[eq](Alter, Ego) :-  brother(Alter, Ego).
                        |   father(A, Ego), brother[eq]a(B, A), son(Alter, B).
                        |   mother(A, Ego), sister[eq]1(B, A), son(Alter, B).
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
%brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F).
;; 6
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), son(Alter, E).
;; 7
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 8
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), son(Alter, E).
;; 9
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 10
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 11
%brother[eq]:2, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), son(Alter, C).
;; 12
%brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 13
%brother[eq]:2, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), son(Alter, C).
;; 14
%brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 15
%brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 16
%brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(Alter, D).
;; 17
%brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 18
%brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(Alter, D).
;; 19
%brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Alter, H).
;; 20
%brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(K, J), not(equal(K, E)), son(Alter, K).
;; 21
%brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), son(J, I), daughter(K, J), daughter(L, K), not(equal(L, E)), son(Alter, L).
;; 22
%brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), daughter(G, F), not(equal(G, E)), son(Alter, G).
;; 23
%brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), son(Alter, J).
;; 24
%brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), daughter(G, F), not(equal(G, E)), son(Alter, G).
;; 25
%brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(Alter, J).
;; 26
%brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(Alter, J).
;; 27
%brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(Alter, I).
;; 28
%brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 29
%brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 30
%brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(Alter, I).
;; 31
%brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 32
%brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 33
%brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 34
%brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 35
%brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 36
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 37
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 38
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 39
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 40
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 41
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).


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
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F).
;; 6
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), son(Alter, E).
;; 7
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 8
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), son(Alter, E).
;; 9
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 10
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 11
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), son(Alter, C).
;; 12
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 13
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), son(Alter, C).
;; 14
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 15
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 16
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(Alter, D).
;; 17
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 18
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(Alter, D).
;; 19
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Alter, H).
;; 20
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(K, J), not(equal(K, E)), son(Alter, K).
;; 21
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), son(J, I), daughter(K, J), daughter(L, K), not(equal(L, E)), son(Alter, L).
;; 22
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), daughter(G, F), not(equal(G, E)), son(Alter, G).
;; 23
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), son(Alter, J).
;; 24
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), daughter(G, F), not(equal(G, E)), son(Alter, G).
;; 25
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(Alter, J).
;; 26
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(Alter, J).
;; 27
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(Alter, I).
;; 28
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 29
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 30
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(Alter, I).
;; 31
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 32
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 33
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 34
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 35
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 36
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 37
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 38
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 39
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 40
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 41
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 42
%brother[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 43
%brother[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 44
%brother[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 45
%brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(Alter, D).
;; 46
%brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 47
%brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).


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
%brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 4
%brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 5
%brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).


brother[eq]a(Alter, Ego) :-  brother(Alter, Ego).
                         |   father(A, Ego), brother(B, A), son(Alter, B).
                         |   mother(A, Ego), sister(B, A), son(Alter, B).
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


calem(Alter, Ego) :-  female(Ego), son(A, Ego), wife(Alter, A).
                  |   female(Ego), sister(A, Ego), son(B, A), wife(Alter, B).
{"SisSoWi_SoWi"}
;; 0
%calem:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 female(Ego), son(A, Ego), wife(Alter, A).
;; 1
%calem:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), wife(Alter, D).


calim(Alter, Ego) :-  male(Ego), son(A, Ego), wife(Alter, A).
                  |   male(Ego), siblings(A, Ego), son(B, A), wife(Alter, B).
{"BroSoWi_SisSoWi_SoWi"}
;; 0
%calim:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 male(Ego), son(A, Ego), wife(Alter, A).
;; 1
%calim:1, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroSoWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), wife(Alter, D).
;; 2
%calim:1, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), wife(Alter, D).


cha_bankil(Alter, Ego) :-  step_brother(Alter, Ego).
{"Stbro"}
;; 0
%cha_bankil:0, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C).
;; 1
%cha_bankil:0, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C).


cha_me(Alter, Ego) :-  step_mother(Alter, Ego).
{"Stmo"}
;; 0
%cha_me:0, step_mother:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stmo}  
 father(A, Ego), mother(B, Ego), wife(Alter, A), not(equal(Alter, B)).


cha_nichon(Alter, Ego) :-  male(Ego), step_daughter(Alter, Ego).
                       |   male(Ego), step_son(Alter, Ego).
{"Stda_Stso"}
;; 0
%cha_nichon:0, step_daughter:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stda}  
 male(Ego), spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(Alter, B), daughter(Alter, A).
;; 1
%cha_nichon:1, step_son:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stso}  
 male(Ego), spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(Alter, B), son(Alter, A).


cha_ol(Alter, Ego) :-  female(Ego), step_daughter(Alter, Ego).
                   |   female(Ego), step_son(Alter, Ego).
{"Stda_Stso"}
;; 0
%cha_ol:0, step_daughter:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stda}  
 female(Ego), spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(Alter, B), daughter(Alter, A).
;; 1
%cha_ol:1, step_son:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stso}  
 female(Ego), spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(Alter, B), son(Alter, A).


cha_tot(Alter, Ego) :-  step_father(Alter, Ego).
{"Stfa"}
;; 0
%cha_tot:0, step_father:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stfa}  
 father(A, Ego), mother(B, Ego), husband(Alter, B), not(equal(Alter, A)).


cha_wish(Alter, Ego) :-  step_sister(Alter, Ego).
{"Stsis"}
;; 0
%cha_wish:0, step_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C).
;; 1
%cha_wish:0, step_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C).


chamal(Alter, Ego) :-  gen_dn[aux]36(A, Ego), children(Alter, A).
                   |   sister[eq](A, Ego), gen_dn[aux]36(B, A), children(Alter, B).
                   |   brother(A, Ego), daughter(B, A), children(Alter, B).
                   |   male(Ego), brother(A, Ego), son(B, A), children(Alter, B).
{"BroDaDa_BroDaSo_BroSoDa_BroSoSo_DaDa_DaDaDa_DaDaSo_DaSo_DaSoDa_DaSoSo_FaBroDaDaDa_FaBroDaDaDaDa_FaBroDaDaDaSo_FaBroDaDaSo_FaBroDaDaSoDa_FaBroDaDaSoSo_FaBroDaSoDa_FaBroDaSoDaDa_FaBroDaSoDaSo_FaBroDaSoSo_FaBroDaSoSoDa_FaBroDaSoSoSo_FaFaBroDaDaDa_FaFaBroDaDaDaDa_FaFaBroDaDaDaSo_FaFaBroDaDaSo_FaFaBroDaDaSoDa_FaFaBroDaDaSoSo_FaFaBroDaSoDa_FaFaBroDaSoDaDa_FaFaBroDaSoDaSo_FaFaBroDaSoSo_FaFaBroDaSoSoDa_FaFaBroDaSoSoSo_FaFaFaBroSoDaDaDa_FaFaFaBroSoDaDaDaDa_FaFaFaBroSoDaDaDaSo_FaFaFaBroSoDaDaSo_FaFaFaBroSoDaDaSoDa_FaFaFaBroSoDaDaSoSo_FaFaFaBroSoDaSoDa_FaFaFaBroSoDaSoDaDa_FaFaFaBroSoDaSoDaSo_FaFaFaBroSoDaSoSo_FaFaFaBroSoDaSoSoDa_FaFaFaBroSoDaSoSoSo_FaFaMoSisSoDaDaDa_FaFaMoSisSoDaDaDaDa_FaFaMoSisSoDaDaDaSo_FaFaMoSisSoDaDaSo_FaFaMoSisSoDaDaSoDa_FaFaMoSisSoDaDaSoSo_FaFaMoSisSoDaSoDa_FaFaMoSisSoDaSoDaDa_FaFaMoSisSoDaSoDaSo_FaFaMoSisSoDaSoSo_FaFaMoSisSoDaSoSoDa_FaFaMoSisSoDaSoSoSo_FaMoBroDaDaDaDa_FaMoBroDaDaDaDaDa_FaMoBroDaDaDaDaSo_FaMoBroDaDaDaSo_FaMoBroDaDaDaSoDa_FaMoBroDaDaDaSoSo_FaMoBroDaDaSoDa_FaMoBroDaDaSoDaDa_FaMoBroDaDaSoDaSo_FaMoBroDaDaSoSo_FaMoBroDaDaSoSoDa_FaMoBroDaDaSoSoSo_FaMoBroSoDaDaDaDa_FaMoBroSoDaDaDaDaDa_FaMoBroSoDaDaDaDaSo_FaMoBroSoDaDaDaSo_FaMoBroSoDaDaDaSoDa_FaMoBroSoDaDaDaSoSo_FaMoBroSoDaDaSoDa_FaMoBroSoDaDaSoDaDa_FaMoBroSoDaDaSoDaSo_FaMoBroSoDaDaSoSo_FaMoBroSoDaDaSoSoDa_FaMoBroSoDaDaSoSoSo_FaMoFaBroDaDaDaDa_FaMoFaBroDaDaDaDaDa_FaMoFaBroDaDaDaDaSo_FaMoFaBroDaDaDaSo_FaMoFaBroDaDaDaSoDa_FaMoFaBroDaDaDaSoSo_FaMoFaBroDaDaSoDa_FaMoFaBroDaDaSoDaDa_FaMoFaBroDaDaSoDaSo_FaMoFaBroDaDaSoSo_FaMoFaBroDaDaSoSoDa_FaMoFaBroDaDaSoSoSo_FaMoSisDaDaDa_FaMoSisDaDaDaDa_FaMoSisDaDaDaSo_FaMoSisDaDaSo_FaMoSisDaDaSoDa_FaMoSisDaDaSoSo_FaMoSisDaSoDa_FaMoSisDaSoDaDa_FaMoSisDaSoDaSo_FaMoSisDaSoSo_FaMoSisDaSoSoDa_FaMoSisDaSoSoSo_FaMoSisHuBroDaDaDa_FaMoSisHuBroDaDaDaDa_FaMoSisHuBroDaDaDaSo_FaMoSisHuBroDaDaSo_FaMoSisHuBroDaDaSoDa_FaMoSisHuBroDaDaSoSo_FaMoSisHuBroDaSoDa_FaMoSisHuBroDaSoDaDa_FaMoSisHuBroDaSoDaSo_FaMoSisHuBroDaSoSo_FaMoSisHuBroDaSoSoDa_FaMoSisHuBroDaSoSoSo_FaSisDaDa_FaSisDaDaDa_FaSisDaDaSo_FaSisDaSo_FaSisDaSoDa_FaSisDaSoSo_FaSisSoDa_FaSisSoDaDa_FaSisSoDaSo_FaSisSoSo_FaSisSoSoDa_FaSisSoSoSo_MoBroDaDaDaDa_MoBroDaDaDaDaDa_MoBroDaDaDaDaSo_MoBroDaDaDaSo_MoBroDaDaDaSoDa_MoBroDaDaDaSoSo_MoBroDaDaSoDa_MoBroDaDaSoDaDa_MoBroDaDaSoDaSo_MoBroDaDaSoSo_MoBroDaDaSoSoDa_MoBroDaDaSoSoSo_MoBroSoDaDaDaDa_MoBroSoDaDaDaDaDa_MoBroSoDaDaDaDaSo_MoBroSoDaDaDaSo_MoBroSoDaDaDaSoDa_MoBroSoDaDaDaSoSo_MoBroSoDaDaSoDa_MoBroSoDaDaSoDaDa_MoBroSoDaDaSoDaSo_MoBroSoDaDaSoSo_MoBroSoDaDaSoSoDa_MoBroSoDaDaSoSoSo_MoFaBroDaDaDaDa_MoFaBroDaDaDaDaDa_MoFaBroDaDaDaDaSo_MoFaBroDaDaDaSo_MoFaBroDaDaDaSoDa_MoFaBroDaDaDaSoSo_MoFaBroDaDaSoDa_MoFaBroDaDaSoDaDa_MoFaBroDaDaSoDaSo_MoFaBroDaDaSoSo_MoFaBroDaDaSoSoDa_MoFaBroDaDaSoSoSo_MoFaBroSoDaDaDaDa_MoFaBroSoDaDaDaDaDa_MoFaBroSoDaDaDaDaSo_MoFaBroSoDaDaDaSo_MoFaBroSoDaDaDaSoDa_MoFaBroSoDaDaDaSoSo_MoFaBroSoDaDaSoDa_MoFaBroSoDaDaSoDaDa_MoFaBroSoDaDaSoDaSo_MoFaBroSoDaDaSoSo_MoFaBroSoDaDaSoSoDa_MoFaBroSoDaDaSoSoSo_MoMoBroDaDaDaDaDa_MoMoBroDaDaDaDaDaDa_MoMoBroDaDaDaDaDaSo_MoMoBroDaDaDaDaSo_MoMoBroDaDaDaDaSoDa_MoMoBroDaDaDaDaSoSo_MoMoBroDaDaDaSoDa_MoMoBroDaDaDaSoDaDa_MoMoBroDaDaDaSoDaSo_MoMoBroDaDaDaSoSo_MoMoBroDaDaDaSoSoDa_MoMoBroDaDaDaSoSoSo_MoMoBroSoDaDaDaDaDa_MoMoBroSoDaDaDaDaSo_MoMoBroSoDaDaDaSoDa_MoMoBroSoDaDaDaSoSo_MoMoSisSoDaDaDaDa_MoMoSisSoDaDaDaDaDa_MoMoSisSoDaDaDaDaSo_MoMoSisSoDaDaDaSo_MoMoSisSoDaDaDaSoDa_MoMoSisSoDaDaDaSoSo_MoMoSisSoDaDaSoDa_MoMoSisSoDaDaSoDaDa_MoMoSisSoDaDaSoDaSo_MoMoSisSoDaDaSoSo_MoMoSisSoDaDaSoSoDa_MoMoSisSoDaDaSoSoSo_MoSisDaDaDa_MoSisDaDaDaDa_MoSisDaDaDaSo_MoSisDaDaSo_MoSisDaDaSoDa_MoSisDaDaSoSo_MoSisDaSoDa_MoSisDaSoDaDa_MoSisDaSoDaSo_MoSisDaSoSo_MoSisDaSoSoDa_MoSisDaSoSoSo_SisDaDa_SisDaDaDa_SisDaDaSo_SisDaSo_SisDaSoDa_SisDaSoSo_SisSoDa_SisSoDaDa_SisSoDaSo_SisSoSo_SisSoSoDa_SisSoSoSo_SoDa_SoDaDa_SoDaSo_SoSo_SoSoDa_SoSoSo"}
;; 0
%chamal:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).
;; 1
%chamal:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).
;; 2
%chamal:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).
;; 3
%chamal:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).
;; 4
%chamal:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
 son(A, Ego), son(B, A), son(Alter, B).
;; 5
%chamal:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
 son(A, Ego), son(B, A), daughter(Alter, B).
;; 6
%chamal:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
 son(A, Ego), daughter(B, A), son(Alter, B).
;; 7
%chamal:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
 son(A, Ego), daughter(B, A), daughter(Alter, B).
;; 8
%chamal:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
 daughter(A, Ego), son(B, A), son(Alter, B).
;; 9
%chamal:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
 daughter(A, Ego), son(B, A), daughter(Alter, B).
;; 10
%chamal:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
 daughter(A, Ego), daughter(B, A), son(Alter, B).
;; 11
%chamal:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
 daughter(A, Ego), daughter(B, A), daughter(Alter, B).
;; 12
%chamal:1, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(Alter, D).
;; 13
%chamal:1, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(Alter, D).
;; 14
%chamal:1, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(Alter, D).
;; 15
%chamal:1, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(Alter, D).
;; 16
%chamal:1, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), son(Alter, E).
;; 17
%chamal:1, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), daughter(Alter, E).
;; 18
%chamal:1, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), son(Alter, E).
;; 19
%chamal:1, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 20
%chamal:1, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), son(Alter, E).
;; 21
%chamal:1, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 22
%chamal:1, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 23
%chamal:1, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), daughter(Alter, E).
;; 24
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), son(F, E), son(Alter, F).
;; 25
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), son(F, E), daughter(Alter, F).
;; 26
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), daughter(F, E), son(Alter, F).
;; 27
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), daughter(F, E), daughter(Alter, F).
;; 28
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), son(F, E), son(G, F), son(Alter, G).
;; 29
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), son(F, E), son(G, F), daughter(Alter, G).
;; 30
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), son(F, E), daughter(G, F), son(Alter, G).
;; 31
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), son(F, E), daughter(G, F), daughter(Alter, G).
;; 32
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), daughter(F, E), son(G, F), son(Alter, G).
;; 33
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), daughter(F, E), son(G, F), daughter(Alter, G).
;; 34
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), daughter(F, E), daughter(G, F), son(Alter, G).
;; 35
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 36
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), son(I, H), son(Alter, I).
;; 37
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaDaDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), son(I, H), daughter(Alter, I).
;; 38
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), daughter(I, H), son(Alter, I).
;; 39
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroDaDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), daughter(I, H), daughter(Alter, I).
;; 40
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaDaSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), son(I, H), son(J, I), son(Alter, J).
;; 41
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaDaSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), son(I, H), son(J, I), daughter(Alter, J).
;; 42
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaDaSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), son(I, H), daughter(J, I), son(Alter, J).
;; 43
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaDaSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), son(I, H), daughter(J, I), daughter(Alter, J).
;; 44
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), daughter(I, H), son(J, I), son(Alter, J).
;; 45
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaDaDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), daughter(I, H), son(J, I), daughter(Alter, J).
;; 46
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), daughter(I, H), daughter(J, I), son(Alter, J).
;; 47
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroDaDaDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), daughter(I, H), daughter(J, I), daughter(Alter, J).
;; 48
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroSoDaDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), not(equal(I, Ego)), son(J, I), son(Alter, J).
;; 49
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroSoDaDaDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), not(equal(I, Ego)), son(J, I), daughter(Alter, J).
;; 50
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroSoDaDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), not(equal(I, Ego)), daughter(J, I), son(Alter, J).
;; 51
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoBroSoDaDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), not(equal(I, Ego)), daughter(J, I), daughter(Alter, J).
;; 52
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:2, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {MoSisDaSoSo}  
 mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), son(E, D), son(Alter, E).
;; 53
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:2, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {MoSisDaSoDa}  
 mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), son(E, D), daughter(Alter, E).
;; 54
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:2, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {MoSisDaDaSo}  
 mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), daughter(E, D), son(Alter, E).
;; 55
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:2, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {MoSisDaDaDa}  
 mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), daughter(E, D), daughter(Alter, E).
;; 56
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:2, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {MoSisDaSoSoSo}  
 mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), son(E, D), son(F, E), son(Alter, F).
;; 57
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:2, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {MoSisDaSoSoDa}  
 mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), son(E, D), son(F, E), daughter(Alter, F).
;; 58
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:2, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {MoSisDaSoDaSo}  
 mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), son(E, D), daughter(F, E), son(Alter, F).
;; 59
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:2, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {MoSisDaSoDaDa}  
 mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), son(E, D), daughter(F, E), daughter(Alter, F).
;; 60
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:2, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {MoSisDaDaSoSo}  
 mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), daughter(E, D), son(F, E), son(Alter, F).
;; 61
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:2, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {MoSisDaDaSoDa}  
 mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), daughter(E, D), son(F, E), daughter(Alter, F).
;; 62
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:2, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {MoSisDaDaDaSo}  
 mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), daughter(E, D), daughter(F, E), son(Alter, F).
;; 63
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:2, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {MoSisDaDaDaDa}  
 mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 64
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(H, G), son(Alter, H).
;; 65
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(H, G), daughter(Alter, H).
;; 66
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), son(Alter, H).
;; 67
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), daughter(Alter, H).
;; 68
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(H, G), son(I, H), son(Alter, I).
;; 69
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(H, G), son(I, H), daughter(Alter, I).
;; 70
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(H, G), daughter(I, H), son(Alter, I).
;; 71
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(H, G), daughter(I, H), daughter(Alter, I).
;; 72
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), son(I, H), son(Alter, I).
;; 73
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), son(I, H), daughter(Alter, I).
;; 74
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), daughter(I, H), son(Alter, I).
;; 75
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 76
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:4, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {MoSisDaSoSo}  
 mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), son(E, D), son(Alter, E).
;; 77
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:4, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {MoSisDaSoDa}  
 mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), son(E, D), daughter(Alter, E).
;; 78
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:4, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {MoSisDaDaSo}  
 mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), daughter(E, D), son(Alter, E).
;; 79
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:4, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {MoSisDaDaDa}  
 mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), daughter(E, D), daughter(Alter, E).
;; 80
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:4, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {MoSisDaSoSoSo}  
 mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), son(E, D), son(F, E), son(Alter, F).
;; 81
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:4, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {MoSisDaSoSoDa}  
 mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), son(E, D), son(F, E), daughter(Alter, F).
;; 82
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:4, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {MoSisDaSoDaSo}  
 mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), son(E, D), daughter(F, E), son(Alter, F).
;; 83
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:4, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {MoSisDaSoDaDa}  
 mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), son(E, D), daughter(F, E), daughter(Alter, F).
;; 84
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:4, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {MoSisDaDaSoSo}  
 mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), daughter(E, D), son(F, E), son(Alter, F).
;; 85
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:4, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {MoSisDaDaSoDa}  
 mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), daughter(E, D), son(F, E), daughter(Alter, F).
;; 86
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:4, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {MoSisDaDaDaSo}  
 mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), daughter(E, D), daughter(F, E), son(Alter, F).
;; 87
%chamal:1, sister[eq]:1, sister[eq]1:0, sister[eq]:4, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {MoSisDaDaDaDa}  
 mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 88
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), son(G, F), son(Alter, G).
;; 89
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), son(G, F), daughter(Alter, G).
;; 90
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), daughter(G, F), son(Alter, G).
;; 91
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), daughter(G, F), daughter(Alter, G).
;; 92
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), son(G, F), son(H, G), son(Alter, H).
;; 93
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), son(G, F), son(H, G), daughter(Alter, H).
;; 94
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), son(G, F), daughter(H, G), son(Alter, H).
;; 95
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), son(G, F), daughter(H, G), daughter(Alter, H).
;; 96
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), daughter(G, F), son(H, G), son(Alter, H).
;; 97
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), daughter(G, F), son(H, G), daughter(Alter, H).
;; 98
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), daughter(G, F), daughter(H, G), son(Alter, H).
;; 99
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 100
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroSoDaDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(I, H), son(Alter, I).
;; 101
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroSoDaDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(I, H), daughter(Alter, I).
;; 102
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroSoDaDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(I, H), son(Alter, I).
;; 103
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroSoDaDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(I, H), daughter(Alter, I).
;; 104
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoFaBroSoDaDaSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(I, H), son(J, I), son(Alter, J).
;; 105
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoFaBroSoDaDaSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(I, H), son(J, I), daughter(Alter, J).
;; 106
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoFaBroSoDaDaSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(I, H), daughter(J, I), son(Alter, J).
;; 107
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoFaBroSoDaDaSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(I, H), daughter(J, I), daughter(Alter, J).
;; 108
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoFaBroSoDaDaDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(I, H), son(J, I), son(Alter, J).
;; 109
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoFaBroSoDaDaDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(I, H), son(J, I), daughter(Alter, J).
;; 110
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoFaBroSoDaDaDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(I, H), daughter(J, I), son(Alter, J).
;; 111
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoFaBroSoDaDaDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(I, H), daughter(J, I), daughter(Alter, J).
;; 112
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisSoDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(I, H), son(Alter, I).
;; 113
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisSoDaDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(I, H), daughter(Alter, I).
;; 114
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisSoDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(I, H), son(Alter, I).
;; 115
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisSoDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(I, H), daughter(Alter, I).
;; 116
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoSisSoDaDaSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(I, H), son(J, I), son(Alter, J).
;; 117
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoSisSoDaDaSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(I, H), son(J, I), daughter(Alter, J).
;; 118
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoSisSoDaDaSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(I, H), daughter(J, I), son(Alter, J).
;; 119
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoSisSoDaDaSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(I, H), daughter(J, I), daughter(Alter, J).
;; 120
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoSisSoDaDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(I, H), son(J, I), son(Alter, J).
;; 121
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoSisSoDaDaDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(I, H), son(J, I), daughter(Alter, J).
;; 122
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoSisSoDaDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(I, H), daughter(J, I), son(Alter, J).
;; 123
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {MoMoSisSoDaDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(I, H), daughter(J, I), daughter(Alter, J).
;; 124
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(H, G), son(Alter, H).
;; 125
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(H, G), daughter(Alter, H).
;; 126
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), son(Alter, H).
;; 127
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), daughter(Alter, H).
;; 128
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-5,  PC=11, S=0, Star=0,  {MoBroSoDaDaSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(H, G), son(I, H), son(Alter, I).
;; 129
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-5,  PC=11, S=0, Star=0,  {MoBroSoDaDaSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(H, G), son(I, H), daughter(Alter, I).
;; 130
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-5,  PC=11, S=0, Star=0,  {MoBroSoDaDaSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(H, G), daughter(I, H), son(Alter, I).
;; 131
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-5,  PC=11, S=0, Star=0,  {MoBroSoDaDaSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(H, G), daughter(I, H), daughter(Alter, I).
;; 132
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-5,  PC=11, S=0, Star=0,  {MoBroSoDaDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), son(I, H), son(Alter, I).
;; 133
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-5,  PC=11, S=0, Star=0,  {MoBroSoDaDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), son(I, H), daughter(Alter, I).
;; 134
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-5,  PC=11, S=0, Star=0,  {MoBroSoDaDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), daughter(I, H), son(Alter, I).
;; 135
%chamal:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-5,  PC=11, S=0, Star=0,  {MoBroSoDaDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 136
%chamal:1, sister[eq]:2, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-2,  PC=4, S=0, Star=0,  {SisSoSo}  
 mother(A, Ego), daughter(B, A), not(equal(B, Ego)), son(C, B), son(Alter, C).
;; 137
%chamal:1, sister[eq]:2, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-2,  PC=4, S=0, Star=0,  {SisSoDa}  
 mother(A, Ego), daughter(B, A), not(equal(B, Ego)), son(C, B), daughter(Alter, C).
;; 138
%chamal:1, sister[eq]:2, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-2,  PC=4, S=0, Star=0,  {SisDaSo}  
 mother(A, Ego), daughter(B, A), not(equal(B, Ego)), daughter(C, B), son(Alter, C).
;; 139
%chamal:1, sister[eq]:2, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-2,  PC=4, S=0, Star=0,  {SisDaDa}  
 mother(A, Ego), daughter(B, A), not(equal(B, Ego)), daughter(C, B), daughter(Alter, C).
;; 140
%chamal:1, sister[eq]:2, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-3,  PC=5, S=0, Star=0,  {SisSoSoSo}  
 mother(A, Ego), daughter(B, A), not(equal(B, Ego)), son(C, B), son(D, C), son(Alter, D).
;; 141
%chamal:1, sister[eq]:2, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-3,  PC=5, S=0, Star=0,  {SisSoSoDa}  
 mother(A, Ego), daughter(B, A), not(equal(B, Ego)), son(C, B), son(D, C), daughter(Alter, D).
;; 142
%chamal:1, sister[eq]:2, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-3,  PC=5, S=0, Star=0,  {SisSoDaSo}  
 mother(A, Ego), daughter(B, A), not(equal(B, Ego)), son(C, B), daughter(D, C), son(Alter, D).
;; 143
%chamal:1, sister[eq]:2, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-3,  PC=5, S=0, Star=0,  {SisSoDaDa}  
 mother(A, Ego), daughter(B, A), not(equal(B, Ego)), son(C, B), daughter(D, C), daughter(Alter, D).
;; 144
%chamal:1, sister[eq]:2, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-3,  PC=5, S=0, Star=0,  {SisDaSoSo}  
 mother(A, Ego), daughter(B, A), not(equal(B, Ego)), daughter(C, B), son(D, C), son(Alter, D).
;; 145
%chamal:1, sister[eq]:2, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-3,  PC=5, S=0, Star=0,  {SisDaSoDa}  
 mother(A, Ego), daughter(B, A), not(equal(B, Ego)), daughter(C, B), son(D, C), daughter(Alter, D).
;; 146
%chamal:1, sister[eq]:2, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-3,  PC=5, S=0, Star=0,  {SisDaDaSo}  
 mother(A, Ego), daughter(B, A), not(equal(B, Ego)), daughter(C, B), daughter(D, C), son(Alter, D).
;; 147
%chamal:1, sister[eq]:2, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-3,  PC=5, S=0, Star=0,  {SisDaDaDa}  
 mother(A, Ego), daughter(B, A), not(equal(B, Ego)), daughter(C, B), daughter(D, C), daughter(Alter, D).
;; 148
%chamal:1, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 149
%chamal:1, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 150
%chamal:1, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 151
%chamal:1, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 152
%chamal:1, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 153
%chamal:1, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 154
%chamal:1, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 155
%chamal:1, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 156
%chamal:1, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 157
%chamal:1, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 158
%chamal:1, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 159
%chamal:1, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 160
%chamal:1, sister[eq]:4, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-2,  PC=4, S=0, Star=0,  {SisSoSo}  
 father(A, Ego), daughter(B, A), not(equal(B, Ego)), son(C, B), son(Alter, C).
;; 161
%chamal:1, sister[eq]:4, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-2,  PC=4, S=0, Star=0,  {SisSoDa}  
 father(A, Ego), daughter(B, A), not(equal(B, Ego)), son(C, B), daughter(Alter, C).
;; 162
%chamal:1, sister[eq]:4, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-2,  PC=4, S=0, Star=0,  {SisDaSo}  
 father(A, Ego), daughter(B, A), not(equal(B, Ego)), daughter(C, B), son(Alter, C).
;; 163
%chamal:1, sister[eq]:4, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-2,  PC=4, S=0, Star=0,  {SisDaDa}  
 father(A, Ego), daughter(B, A), not(equal(B, Ego)), daughter(C, B), daughter(Alter, C).
;; 164
%chamal:1, sister[eq]:4, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-3,  PC=5, S=0, Star=0,  {SisSoSoSo}  
 father(A, Ego), daughter(B, A), not(equal(B, Ego)), son(C, B), son(D, C), son(Alter, D).
;; 165
%chamal:1, sister[eq]:4, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-3,  PC=5, S=0, Star=0,  {SisSoSoDa}  
 father(A, Ego), daughter(B, A), not(equal(B, Ego)), son(C, B), son(D, C), daughter(Alter, D).
;; 166
%chamal:1, sister[eq]:4, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-3,  PC=5, S=0, Star=0,  {SisSoDaSo}  
 father(A, Ego), daughter(B, A), not(equal(B, Ego)), son(C, B), daughter(D, C), son(Alter, D).
;; 167
%chamal:1, sister[eq]:4, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-3,  PC=5, S=0, Star=0,  {SisSoDaDa}  
 father(A, Ego), daughter(B, A), not(equal(B, Ego)), son(C, B), daughter(D, C), daughter(Alter, D).
;; 168
%chamal:1, sister[eq]:4, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-3,  PC=5, S=0, Star=0,  {SisDaSoSo}  
 father(A, Ego), daughter(B, A), not(equal(B, Ego)), daughter(C, B), son(D, C), son(Alter, D).
;; 169
%chamal:1, sister[eq]:4, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-3,  PC=5, S=0, Star=0,  {SisDaSoDa}  
 father(A, Ego), daughter(B, A), not(equal(B, Ego)), daughter(C, B), son(D, C), daughter(Alter, D).
;; 170
%chamal:1, sister[eq]:4, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-3,  PC=5, S=0, Star=0,  {SisDaDaSo}  
 father(A, Ego), daughter(B, A), not(equal(B, Ego)), daughter(C, B), daughter(D, C), son(Alter, D).
;; 171
%chamal:1, sister[eq]:4, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-3,  PC=5, S=0, Star=0,  {SisDaDaDa}  
 father(A, Ego), daughter(B, A), not(equal(B, Ego)), daughter(C, B), daughter(D, C), daughter(Alter, D).
;; 172
%chamal:1, sister[eq]:5, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 173
%chamal:1, sister[eq]:5, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 174
%chamal:1, sister[eq]:5, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 175
%chamal:1, sister[eq]:5, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 176
%chamal:1, sister[eq]:5, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 177
%chamal:1, sister[eq]:5, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 178
%chamal:1, sister[eq]:5, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 179
%chamal:1, sister[eq]:5, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 180
%chamal:1, sister[eq]:5, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 181
%chamal:1, sister[eq]:5, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 182
%chamal:1, sister[eq]:5, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 183
%chamal:1, sister[eq]:5, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 184
%chamal:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), son(Alter, H).
;; 185
%chamal:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), daughter(Alter, H).
;; 186
%chamal:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), son(Alter, H).
;; 187
%chamal:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), daughter(Alter, H).
;; 188
%chamal:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoBroDaDaSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), son(I, H), son(Alter, I).
;; 189
%chamal:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoBroDaDaSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), son(I, H), daughter(Alter, I).
;; 190
%chamal:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoBroDaDaSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), daughter(I, H), son(Alter, I).
;; 191
%chamal:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoBroDaDaSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), daughter(I, H), daughter(Alter, I).
;; 192
%chamal:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoBroDaDaDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), son(I, H), son(Alter, I).
;; 193
%chamal:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoBroDaDaDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), son(I, H), daughter(Alter, I).
;; 194
%chamal:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoBroDaDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), daughter(I, H), son(Alter, I).
;; 195
%chamal:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoBroDaDaDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 196
%chamal:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoBroSoDaDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(Alter, I).
;; 197
%chamal:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoBroSoDaDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(Alter, I).
;; 198
%chamal:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoBroSoDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(Alter, I).
;; 199
%chamal:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoBroSoDaDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(Alter, I).
;; 200
%chamal:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {FaMoBroSoDaDaSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(J, I), son(Alter, J).
;; 201
%chamal:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {FaMoBroSoDaDaSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(J, I), daughter(Alter, J).
;; 202
%chamal:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {FaMoBroSoDaDaSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(J, I), son(Alter, J).
;; 203
%chamal:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {FaMoBroSoDaDaSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(J, I), daughter(Alter, J).
;; 204
%chamal:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {FaMoBroSoDaDaDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(J, I), son(Alter, J).
;; 205
%chamal:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {FaMoBroSoDaDaDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(J, I), daughter(Alter, J).
;; 206
%chamal:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-4,  PC=12, S=0, Star=0,  {FaMoBroSoDaDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(J, I), son(Alter, J).
;; 207
%chamal:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-4,  PC=12, S=0, Star=0,  {FaMoBroSoDaDaDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), daughter(J, I), daughter(Alter, J).
;; 208
%chamal:1, sister[eq]:5, sister[eq]:2, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {FaSisSoSo}  
 father(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), son(D, C), son(Alter, D).
;; 209
%chamal:1, sister[eq]:5, sister[eq]:2, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {FaSisSoDa}  
 father(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), son(D, C), daughter(Alter, D).
;; 210
%chamal:1, sister[eq]:5, sister[eq]:2, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {FaSisDaSo}  
 father(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), son(Alter, D).
;; 211
%chamal:1, sister[eq]:5, sister[eq]:2, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {FaSisDaDa}  
 father(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), daughter(Alter, D).
;; 212
%chamal:1, sister[eq]:5, sister[eq]:2, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {FaSisSoSoSo}  
 father(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), son(D, C), son(E, D), son(Alter, E).
;; 213
%chamal:1, sister[eq]:5, sister[eq]:2, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {FaSisSoSoDa}  
 father(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), son(D, C), son(E, D), daughter(Alter, E).
;; 214
%chamal:1, sister[eq]:5, sister[eq]:2, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {FaSisSoDaSo}  
 father(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), son(D, C), daughter(E, D), son(Alter, E).
;; 215
%chamal:1, sister[eq]:5, sister[eq]:2, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {FaSisSoDaDa}  
 father(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), son(D, C), daughter(E, D), daughter(Alter, E).
;; 216
%chamal:1, sister[eq]:5, sister[eq]:2, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {FaSisDaSoSo}  
 father(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), son(E, D), son(Alter, E).
;; 217
%chamal:1, sister[eq]:5, sister[eq]:2, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {FaSisDaSoDa}  
 father(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), son(E, D), daughter(Alter, E).
;; 218
%chamal:1, sister[eq]:5, sister[eq]:2, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {FaSisDaDaSo}  
 father(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), daughter(E, D), son(Alter, E).
;; 219
%chamal:1, sister[eq]:5, sister[eq]:2, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {FaSisDaDaDa}  
 father(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), daughter(E, D), daughter(Alter, E).
;; 220
%chamal:1, sister[eq]:5, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 221
%chamal:1, sister[eq]:5, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 222
%chamal:1, sister[eq]:5, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 223
%chamal:1, sister[eq]:5, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 224
%chamal:1, sister[eq]:5, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 225
%chamal:1, sister[eq]:5, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 226
%chamal:1, sister[eq]:5, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 227
%chamal:1, sister[eq]:5, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 228
%chamal:1, sister[eq]:5, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 229
%chamal:1, sister[eq]:5, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 230
%chamal:1, sister[eq]:5, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 231
%chamal:1, sister[eq]:5, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 232
%chamal:1, sister[eq]:5, sister[eq]:4, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {FaSisSoSo}  
 father(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), son(D, C), son(Alter, D).
;; 233
%chamal:1, sister[eq]:5, sister[eq]:4, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {FaSisSoDa}  
 father(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), son(D, C), daughter(Alter, D).
;; 234
%chamal:1, sister[eq]:5, sister[eq]:4, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {FaSisDaSo}  
 father(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), son(Alter, D).
;; 235
%chamal:1, sister[eq]:5, sister[eq]:4, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {FaSisDaDa}  
 father(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), daughter(Alter, D).
;; 236
%chamal:1, sister[eq]:5, sister[eq]:4, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {FaSisSoSoSo}  
 father(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), son(D, C), son(E, D), son(Alter, E).
;; 237
%chamal:1, sister[eq]:5, sister[eq]:4, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {FaSisSoSoDa}  
 father(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), son(D, C), son(E, D), daughter(Alter, E).
;; 238
%chamal:1, sister[eq]:5, sister[eq]:4, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {FaSisSoDaSo}  
 father(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), son(D, C), daughter(E, D), son(Alter, E).
;; 239
%chamal:1, sister[eq]:5, sister[eq]:4, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {FaSisSoDaDa}  
 father(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), son(D, C), daughter(E, D), daughter(Alter, E).
;; 240
%chamal:1, sister[eq]:5, sister[eq]:4, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {FaSisDaSoSo}  
 father(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), son(E, D), son(Alter, E).
;; 241
%chamal:1, sister[eq]:5, sister[eq]:4, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {FaSisDaSoDa}  
 father(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), son(E, D), daughter(Alter, E).
;; 242
%chamal:1, sister[eq]:5, sister[eq]:4, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {FaSisDaDaSo}  
 father(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), daughter(E, D), son(Alter, E).
;; 243
%chamal:1, sister[eq]:5, sister[eq]:4, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {FaSisDaDaDa}  
 father(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), daughter(E, D), daughter(Alter, E).
;; 244
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaSisSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 245
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaSisSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 246
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaSisDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 247
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaSisDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 248
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaSisSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(I, H), son(Alter, I).
;; 249
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaSisSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(I, H), daughter(Alter, I).
;; 250
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaSisSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(I, H), son(Alter, I).
;; 251
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaSisSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(I, H), daughter(Alter, I).
;; 252
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaSisDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(I, H), son(Alter, I).
;; 253
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaSisDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(I, H), daughter(Alter, I).
;; 254
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaSisDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(I, H), son(Alter, I).
;; 255
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaSisDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(I, H), daughter(Alter, I).
;; 256
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaMoBroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(J, I), not(equal(J, D)), son(K, J), son(Alter, K).
;; 257
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaMoBroDaDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(J, I), not(equal(J, D)), son(K, J), daughter(Alter, K).
;; 258
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaMoBroDaDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(J, I), not(equal(J, D)), daughter(K, J), son(Alter, K).
;; 259
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaMoBroDaDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(J, I), not(equal(J, D)), daughter(K, J), daughter(Alter, K).
;; 260
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-3,  PC=15, S=0, Star=0,  {FaMoBroDaDaSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(J, I), not(equal(J, D)), son(K, J), son(L, K), son(Alter, L).
;; 261
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-3,  PC=15, S=0, Star=0,  {FaMoBroDaDaSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(J, I), not(equal(J, D)), son(K, J), son(L, K), daughter(Alter, L).
;; 262
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-3,  PC=15, S=0, Star=0,  {FaMoBroDaDaSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(J, I), not(equal(J, D)), son(K, J), daughter(L, K), son(Alter, L).
;; 263
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-3,  PC=15, S=0, Star=0,  {FaMoBroDaDaSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(J, I), not(equal(J, D)), son(K, J), daughter(L, K), daughter(Alter, L).
;; 264
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-3,  PC=15, S=0, Star=0,  {FaMoBroDaDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(J, I), not(equal(J, D)), daughter(K, J), son(L, K), son(Alter, L).
;; 265
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-3,  PC=15, S=0, Star=0,  {FaMoBroDaDaDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(J, I), not(equal(J, D)), daughter(K, J), son(L, K), daughter(Alter, L).
;; 266
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-3,  PC=15, S=0, Star=0,  {FaMoBroDaDaDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(J, I), not(equal(J, D)), daughter(K, J), daughter(L, K), son(Alter, L).
;; 267
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-3,  PC=15, S=0, Star=0,  {FaMoBroDaDaDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(J, I), not(equal(J, D)), daughter(K, J), daughter(L, K), daughter(Alter, L).
;; 268
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-3,  PC=15, S=0, Star=0,  {FaMoBroSoDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(I, H), daughter(J, I), daughter(K, J), not(equal(K, D)), son(L, K), son(Alter, L).
;; 269
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-3,  PC=15, S=0, Star=0,  {FaMoBroSoDaDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(I, H), daughter(J, I), daughter(K, J), not(equal(K, D)), son(L, K), daughter(Alter, L).
;; 270
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-3,  PC=15, S=0, Star=0,  {FaMoBroSoDaDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(I, H), daughter(J, I), daughter(K, J), not(equal(K, D)), daughter(L, K), son(Alter, L).
;; 271
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-3,  PC=15, S=0, Star=0,  {FaMoBroSoDaDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(I, H), daughter(J, I), daughter(K, J), not(equal(K, D)), daughter(L, K), daughter(Alter, L).
;; 272
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), daughter(F, E), not(equal(F, D)), son(G, F), son(Alter, G).
;; 273
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), daughter(F, E), not(equal(F, D)), son(G, F), daughter(Alter, G).
;; 274
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), daughter(F, E), not(equal(F, D)), daughter(G, F), son(Alter, G).
;; 275
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), daughter(F, E), not(equal(F, D)), daughter(G, F), daughter(Alter, G).
;; 276
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaSisSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), daughter(F, E), not(equal(F, D)), son(G, F), son(H, G), son(Alter, H).
;; 277
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaSisSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), daughter(F, E), not(equal(F, D)), son(G, F), son(H, G), daughter(Alter, H).
;; 278
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaSisSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), daughter(F, E), not(equal(F, D)), son(G, F), daughter(H, G), son(Alter, H).
;; 279
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaSisSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), daughter(F, E), not(equal(F, D)), son(G, F), daughter(H, G), daughter(Alter, H).
;; 280
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaSisDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), daughter(F, E), not(equal(F, D)), daughter(G, F), son(H, G), son(Alter, H).
;; 281
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaSisDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), daughter(F, E), not(equal(F, D)), daughter(G, F), son(H, G), daughter(Alter, H).
;; 282
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaSisDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), daughter(F, E), not(equal(F, D)), daughter(G, F), daughter(H, G), son(Alter, H).
;; 283
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaSisDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), daughter(F, E), not(equal(F, D)), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 284
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaFaBroDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), son(J, I), son(Alter, J).
;; 285
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaFaBroDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), son(J, I), daughter(Alter, J).
;; 286
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaFaBroDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(J, I), son(Alter, J).
;; 287
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaFaBroDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(J, I), daughter(Alter, J).
;; 288
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaFaBroDaSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), son(J, I), son(K, J), son(Alter, K).
;; 289
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaFaBroDaSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), son(J, I), son(K, J), daughter(Alter, K).
;; 290
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaFaBroDaSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), son(J, I), daughter(K, J), son(Alter, K).
;; 291
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaFaBroDaSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), son(J, I), daughter(K, J), daughter(Alter, K).
;; 292
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaFaBroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(J, I), son(K, J), son(Alter, K).
;; 293
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaFaBroDaDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(J, I), son(K, J), daughter(Alter, K).
;; 294
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaFaBroDaDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(J, I), daughter(K, J), son(Alter, K).
;; 295
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaFaBroDaDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(J, I), daughter(K, J), daughter(Alter, K).
;; 296
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), daughter(F, E), not(equal(F, D)), son(G, F), son(Alter, G).
;; 297
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), daughter(F, E), not(equal(F, D)), son(G, F), daughter(Alter, G).
;; 298
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), daughter(F, E), not(equal(F, D)), daughter(G, F), son(Alter, G).
;; 299
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), daughter(F, E), not(equal(F, D)), daughter(G, F), daughter(Alter, G).
;; 300
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaSisSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), daughter(F, E), not(equal(F, D)), son(G, F), son(H, G), son(Alter, H).
;; 301
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaSisSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), daughter(F, E), not(equal(F, D)), son(G, F), son(H, G), daughter(Alter, H).
;; 302
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaSisSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), daughter(F, E), not(equal(F, D)), son(G, F), daughter(H, G), son(Alter, H).
;; 303
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaSisSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), daughter(F, E), not(equal(F, D)), son(G, F), daughter(H, G), daughter(Alter, H).
;; 304
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaSisDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), daughter(F, E), not(equal(F, D)), daughter(G, F), son(H, G), son(Alter, H).
;; 305
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaSisDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), daughter(F, E), not(equal(F, D)), daughter(G, F), son(H, G), daughter(Alter, H).
;; 306
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaSisDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), daughter(F, E), not(equal(F, D)), daughter(G, F), daughter(H, G), son(Alter, H).
;; 307
%chamal:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaSisDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), daughter(F, E), not(equal(F, D)), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 308
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaFaBroDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), son(Alter, J).
;; 309
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaFaBroDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), daughter(Alter, J).
;; 310
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaFaBroDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), daughter(J, I), son(Alter, J).
;; 311
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaFaBroDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), daughter(J, I), daughter(Alter, J).
;; 312
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaFaBroDaSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), son(K, J), son(Alter, K).
;; 313
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaFaBroDaSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), son(K, J), daughter(Alter, K).
;; 314
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaFaBroDaSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), daughter(K, J), son(Alter, K).
;; 315
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaFaBroDaSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), daughter(K, J), daughter(Alter, K).
;; 316
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaFaBroDaDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), daughter(J, I), son(K, J), son(Alter, K).
;; 317
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaFaBroDaDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), daughter(J, I), son(K, J), daughter(Alter, K).
;; 318
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaFaBroDaDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), daughter(J, I), daughter(K, J), son(Alter, K).
;; 319
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaFaBroDaDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), daughter(J, I), daughter(K, J), daughter(Alter, K).
;; 320
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), son(I, H), son(Alter, I).
;; 321
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), son(I, H), daughter(Alter, I).
;; 322
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), daughter(I, H), son(Alter, I).
;; 323
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), daughter(I, H), daughter(Alter, I).
;; 324
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaFaBroDaSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), son(I, H), son(J, I), son(Alter, J).
;; 325
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaFaBroDaSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), son(I, H), son(J, I), daughter(Alter, J).
;; 326
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaFaBroDaSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), son(I, H), daughter(J, I), son(Alter, J).
;; 327
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaFaBroDaSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), son(I, H), daughter(J, I), daughter(Alter, J).
;; 328
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaFaBroDaDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), daughter(I, H), son(J, I), son(Alter, J).
;; 329
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaFaBroDaDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), daughter(I, H), son(J, I), daughter(Alter, J).
;; 330
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaFaBroDaDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), daughter(I, H), daughter(J, I), son(Alter, J).
;; 331
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaFaBroDaDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), daughter(I, H), daughter(J, I), daughter(Alter, J).
;; 332
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaSisSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), son(L, K), son(Alter, L).
;; 333
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaSisSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), son(L, K), daughter(Alter, L).
;; 334
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaSisDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(L, K), son(Alter, L).
;; 335
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaSisDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(L, K), daughter(Alter, L).
;; 336
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaSisSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), son(L, K), son(M, L), son(Alter, M).
;; 337
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaSisSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), son(L, K), son(M, L), daughter(Alter, M).
;; 338
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaSisSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), son(L, K), daughter(M, L), son(Alter, M).
;; 339
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaSisSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), son(L, K), daughter(M, L), daughter(Alter, M).
;; 340
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaSisDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(L, K), son(M, L), son(Alter, M).
;; 341
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaSisDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(L, K), son(M, L), daughter(Alter, M).
;; 342
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaSisDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(L, K), daughter(M, L), son(Alter, M).
;; 343
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaSisDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(L, K), daughter(M, L), daughter(Alter, M).
;; 344
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), son(I, H), son(Alter, I).
;; 345
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), son(I, H), daughter(Alter, I).
;; 346
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), daughter(I, H), son(Alter, I).
;; 347
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), daughter(I, H), daughter(Alter, I).
;; 348
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaFaBroDaSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), son(I, H), son(J, I), son(Alter, J).
;; 349
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaFaBroDaSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), son(I, H), son(J, I), daughter(Alter, J).
;; 350
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaFaBroDaSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), son(I, H), daughter(J, I), son(Alter, J).
;; 351
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaFaBroDaSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), son(I, H), daughter(J, I), daughter(Alter, J).
;; 352
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaFaBroDaDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), daughter(I, H), son(J, I), son(Alter, J).
;; 353
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaFaBroDaDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), daughter(I, H), son(J, I), daughter(Alter, J).
;; 354
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaFaBroDaDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), daughter(I, H), daughter(J, I), son(Alter, J).
;; 355
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaFaBroDaDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), daughter(I, H), daughter(J, I), daughter(Alter, J).
;; 356
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaFaFaBroSoDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), son(Alter, L).
;; 357
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaFaFaBroSoDaSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), daughter(Alter, L).
;; 358
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaFaFaBroSoDaDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(L, K), son(Alter, L).
;; 359
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaFaFaBroSoDaDaDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(L, K), daughter(Alter, L).
;; 360
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaFaFaBroSoDaSoSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), son(M, L), son(Alter, M).
;; 361
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaFaFaBroSoDaSoSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), son(M, L), daughter(Alter, M).
;; 362
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaFaFaBroSoDaSoDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), daughter(M, L), son(Alter, M).
;; 363
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaFaFaBroSoDaSoDaDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), daughter(M, L), daughter(Alter, M).
;; 364
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaFaFaBroSoDaDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(L, K), son(M, L), son(Alter, M).
;; 365
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaFaFaBroSoDaDaSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(L, K), son(M, L), daughter(Alter, M).
;; 366
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaFaFaBroSoDaDaDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(L, K), daughter(M, L), son(Alter, M).
;; 367
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaFaFaBroSoDaDaDaDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(L, K), daughter(M, L), daughter(Alter, M).
;; 368
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaFaFaBroSoDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(K, J), son(Alter, K).
;; 369
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaFaFaBroSoDaSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(K, J), daughter(Alter, K).
;; 370
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaFaFaBroSoDaDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), daughter(K, J), son(Alter, K).
;; 371
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaFaFaBroSoDaDaDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), daughter(K, J), daughter(Alter, K).
;; 372
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaFaFaBroSoDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(K, J), son(Alter, K).
;; 373
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaFaFaBroSoDaSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(K, J), daughter(Alter, K).
;; 374
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaFaFaBroSoDaDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), daughter(K, J), son(Alter, K).
;; 375
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaFaFaBroSoDaDaDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), daughter(K, J), daughter(Alter, K).
;; 376
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaFaMoSisSoDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), son(Alter, L).
;; 377
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaFaMoSisSoDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), daughter(Alter, L).
;; 378
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaFaMoSisSoDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(L, K), son(Alter, L).
;; 379
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaFaMoSisSoDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(L, K), daughter(Alter, L).
;; 380
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaFaMoSisSoDaSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), son(M, L), son(Alter, M).
;; 381
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaFaMoSisSoDaSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), son(M, L), daughter(Alter, M).
;; 382
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaFaMoSisSoDaSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), daughter(M, L), son(Alter, M).
;; 383
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaFaMoSisSoDaSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), daughter(M, L), daughter(Alter, M).
;; 384
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaFaMoSisSoDaDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(L, K), son(M, L), son(Alter, M).
;; 385
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaFaMoSisSoDaDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(L, K), son(M, L), daughter(Alter, M).
;; 386
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaFaMoSisSoDaDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(L, K), daughter(M, L), son(Alter, M).
;; 387
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaFaMoSisSoDaDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(L, K), daughter(M, L), daughter(Alter, M).
;; 388
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaFaMoSisSoDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(K, J), son(Alter, K).
;; 389
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaFaMoSisSoDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(K, J), daughter(Alter, K).
;; 390
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaFaMoSisSoDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), daughter(K, J), son(Alter, K).
;; 391
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaFaMoSisSoDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), daughter(K, J), daughter(Alter, K).
;; 392
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaFaMoSisSoDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(K, J), son(Alter, K).
;; 393
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaFaMoSisSoDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(K, J), daughter(Alter, K).
;; 394
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaFaMoSisSoDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), daughter(K, J), son(Alter, K).
;; 395
%chamal:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaFaMoSisSoDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), daughter(K, J), daughter(Alter, K).
;; 396
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoSisDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), son(Alter, J).
;; 397
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoSisDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), daughter(Alter, J).
;; 398
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoSisDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), daughter(J, I), son(Alter, J).
;; 399
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoSisDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), daughter(J, I), daughter(Alter, J).
;; 400
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaMoSisDaSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), son(K, J), son(Alter, K).
;; 401
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaMoSisDaSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), son(K, J), daughter(Alter, K).
;; 402
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaMoSisDaSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), daughter(K, J), son(Alter, K).
;; 403
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaMoSisDaSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), daughter(K, J), daughter(Alter, K).
;; 404
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaMoSisDaDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), daughter(J, I), son(K, J), son(Alter, K).
;; 405
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaMoSisDaDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), daughter(J, I), son(K, J), daughter(Alter, K).
;; 406
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaMoSisDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), daughter(J, I), daughter(K, J), son(Alter, K).
;; 407
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaMoSisDaDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), daughter(J, I), daughter(K, J), daughter(Alter, K).
;; 408
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), son(I, H), son(Alter, I).
;; 409
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), son(I, H), daughter(Alter, I).
;; 410
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), daughter(I, H), son(Alter, I).
;; 411
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), daughter(I, H), daughter(Alter, I).
;; 412
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), son(I, H), son(J, I), son(Alter, J).
;; 413
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), son(I, H), son(J, I), daughter(Alter, J).
;; 414
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), son(I, H), daughter(J, I), son(Alter, J).
;; 415
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), son(I, H), daughter(J, I), daughter(Alter, J).
;; 416
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), daughter(I, H), son(J, I), son(Alter, J).
;; 417
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), daughter(I, H), son(J, I), daughter(Alter, J).
;; 418
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), daughter(I, H), daughter(J, I), son(Alter, J).
;; 419
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), daughter(I, H), daughter(J, I), daughter(Alter, J).
;; 420
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaMoSisHuBroDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), son(L, K), son(Alter, L).
;; 421
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaMoSisHuBroDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), son(L, K), daughter(Alter, L).
;; 422
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaMoSisHuBroDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(L, K), son(Alter, L).
;; 423
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaMoSisHuBroDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(L, K), daughter(Alter, L).
;; 424
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaMoSisHuBroDaSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), son(L, K), son(M, L), son(Alter, M).
;; 425
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaMoSisHuBroDaSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), son(L, K), son(M, L), daughter(Alter, M).
;; 426
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaMoSisHuBroDaSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), son(L, K), daughter(M, L), son(Alter, M).
;; 427
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaMoSisHuBroDaSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), son(L, K), daughter(M, L), daughter(Alter, M).
;; 428
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaMoSisHuBroDaDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(L, K), son(M, L), son(Alter, M).
;; 429
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaMoSisHuBroDaDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(L, K), son(M, L), daughter(Alter, M).
;; 430
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaMoSisHuBroDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(L, K), daughter(M, L), son(Alter, M).
;; 431
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaMoSisHuBroDaDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(L, K), daughter(M, L), daughter(Alter, M).
;; 432
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), son(I, H), son(Alter, I).
;; 433
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), son(I, H), daughter(Alter, I).
;; 434
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), daughter(I, H), son(Alter, I).
;; 435
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), daughter(I, H), daughter(Alter, I).
;; 436
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), son(I, H), son(J, I), son(Alter, J).
;; 437
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), son(I, H), son(J, I), daughter(Alter, J).
;; 438
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), son(I, H), daughter(J, I), son(Alter, J).
;; 439
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), son(I, H), daughter(J, I), daughter(Alter, J).
;; 440
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), daughter(I, H), son(J, I), son(Alter, J).
;; 441
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), daughter(I, H), son(J, I), daughter(Alter, J).
;; 442
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), daughter(I, H), daughter(J, I), son(Alter, J).
;; 443
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), daughter(I, H), daughter(J, I), daughter(Alter, J).
;; 444
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(I, H), son(Alter, I).
;; 445
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(I, H), daughter(Alter, I).
;; 446
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), daughter(I, H), son(Alter, I).
;; 447
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), daughter(I, H), daughter(Alter, I).
;; 448
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(I, H), son(J, I), son(Alter, J).
;; 449
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(I, H), son(J, I), daughter(Alter, J).
;; 450
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(I, H), daughter(J, I), son(Alter, J).
;; 451
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(I, H), daughter(J, I), daughter(Alter, J).
;; 452
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), daughter(I, H), son(J, I), son(Alter, J).
;; 453
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), daughter(I, H), son(J, I), daughter(Alter, J).
;; 454
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), daughter(I, H), daughter(J, I), son(Alter, J).
;; 455
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), daughter(I, H), daughter(J, I), daughter(Alter, J).
;; 456
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoSisHuBroDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), son(K, J), son(Alter, K).
;; 457
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoSisHuBroDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), son(K, J), daughter(Alter, K).
;; 458
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoSisHuBroDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(K, J), son(Alter, K).
;; 459
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoSisHuBroDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(K, J), daughter(Alter, K).
;; 460
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaMoFaBroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), son(Alter, L).
;; 461
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaMoFaBroDaDaSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), daughter(Alter, L).
;; 462
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaMoFaBroDaDaDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(L, K), son(Alter, L).
;; 463
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaMoFaBroDaDaDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(L, K), daughter(Alter, L).
;; 464
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaMoFaBroDaDaSoSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), son(M, L), son(Alter, M).
;; 465
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaMoFaBroDaDaSoSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), son(M, L), daughter(Alter, M).
;; 466
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaMoFaBroDaDaSoDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), daughter(M, L), son(Alter, M).
;; 467
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaMoFaBroDaDaSoDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), daughter(M, L), daughter(Alter, M).
;; 468
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaMoFaBroDaDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(L, K), son(M, L), son(Alter, M).
;; 469
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaMoFaBroDaDaDaSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(L, K), son(M, L), daughter(Alter, M).
;; 470
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaMoFaBroDaDaDaDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(L, K), daughter(M, L), son(Alter, M).
;; 471
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-2,  PC=16, S=0, Star=0,  {FaMoFaBroDaDaDaDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(L, K), daughter(M, L), daughter(Alter, M).
;; 472
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoFaBroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(K, J), son(Alter, K).
;; 473
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoFaBroDaDaSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(K, J), daughter(Alter, K).
;; 474
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoFaBroDaDaDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), daughter(K, J), son(Alter, K).
;; 475
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoFaBroDaDaDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), daughter(K, J), daughter(Alter, K).
;; 476
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoFaBroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(K, J), son(Alter, K).
;; 477
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoFaBroDaDaSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(K, J), daughter(Alter, K).
;; 478
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoFaBroDaDaDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), daughter(K, J), son(Alter, K).
;; 479
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoFaBroDaDaDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), daughter(K, J), daughter(Alter, K).
;; 480
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(I, H), son(Alter, I).
;; 481
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaSoDa}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(I, H), daughter(Alter, I).
;; 482
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaDaSo}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), daughter(I, H), son(Alter, I).
;; 483
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaDaDa}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), daughter(I, H), daughter(Alter, I).
;; 484
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaSoSoSo}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(I, H), son(J, I), son(Alter, J).
;; 485
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaSoSoDa}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(I, H), son(J, I), daughter(Alter, J).
;; 486
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaSoDaSo}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(I, H), daughter(J, I), son(Alter, J).
;; 487
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaSoDaDa}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(I, H), daughter(J, I), daughter(Alter, J).
;; 488
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), daughter(I, H), son(J, I), son(Alter, J).
;; 489
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaDaSoDa}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), daughter(I, H), son(J, I), daughter(Alter, J).
;; 490
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaDaDaSo}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), daughter(I, H), daughter(J, I), son(Alter, J).
;; 491
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoSisDaDaDaDa}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), daughter(I, H), daughter(J, I), daughter(Alter, J).
;; 492
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoSisHuBroDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), son(K, J), son(Alter, K).
;; 493
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoSisHuBroDaSoDa}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), son(K, J), daughter(Alter, K).
;; 494
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoSisHuBroDaDaSo}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(K, J), son(Alter, K).
;; 495
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:3, brother:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoSisHuBroDaDaDa}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(K, J), daughter(Alter, K).
;; 496
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaMoBroDaDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(K, J), son(Alter, K).
;; 497
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaMoBroDaDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(K, J), daughter(Alter, K).
;; 498
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaMoBroDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), daughter(K, J), son(Alter, K).
;; 499
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaMoBroDaDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), daughter(K, J), daughter(Alter, K).
;; 500
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-3,  PC=15, S=0, Star=0,  {FaMoBroDaDaSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(K, J), son(L, K), son(Alter, L).
;; 501
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-3,  PC=15, S=0, Star=0,  {FaMoBroDaDaSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(K, J), son(L, K), daughter(Alter, L).
;; 502
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-3,  PC=15, S=0, Star=0,  {FaMoBroDaDaSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(K, J), daughter(L, K), son(Alter, L).
;; 503
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-3,  PC=15, S=0, Star=0,  {FaMoBroDaDaSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(K, J), daughter(L, K), daughter(Alter, L).
;; 504
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-3,  PC=15, S=0, Star=0,  {FaMoBroDaDaDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), daughter(K, J), son(L, K), son(Alter, L).
;; 505
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-3,  PC=15, S=0, Star=0,  {FaMoBroDaDaDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), daughter(K, J), son(L, K), daughter(Alter, L).
;; 506
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-3,  PC=15, S=0, Star=0,  {FaMoBroDaDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), daughter(K, J), daughter(L, K), son(Alter, L).
;; 507
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-3,  PC=15, S=0, Star=0,  {FaMoBroDaDaDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), daughter(K, J), daughter(L, K), daughter(Alter, L).
;; 508
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-3,  PC=15, S=0, Star=0,  {FaMoBroSoDaDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), son(Alter, L).
;; 509
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-3,  PC=15, S=0, Star=0,  {FaMoBroSoDaDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), daughter(Alter, L).
;; 510
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-3,  PC=15, S=0, Star=0,  {FaMoBroSoDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(L, K), son(Alter, L).
;; 511
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-3,  PC=15, S=0, Star=0,  {FaMoBroSoDaDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(L, K), daughter(Alter, L).
;; 512
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:0%
 Lvl=-4,  PC=16, S=0, Star=0,  {FaMoBroSoDaDaSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), son(M, L), son(Alter, M).
;; 513
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:0, children:1%
 Lvl=-4,  PC=16, S=0, Star=0,  {FaMoBroSoDaDaSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), son(M, L), daughter(Alter, M).
;; 514
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:0%
 Lvl=-4,  PC=16, S=0, Star=0,  {FaMoBroSoDaDaSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), daughter(M, L), son(Alter, M).
;; 515
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:0, children:1, children:1%
 Lvl=-4,  PC=16, S=0, Star=0,  {FaMoBroSoDaDaSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), daughter(M, L), daughter(Alter, M).
;; 516
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:0%
 Lvl=-4,  PC=16, S=0, Star=0,  {FaMoBroSoDaDaDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(L, K), son(M, L), son(Alter, M).
;; 517
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:0, children:1%
 Lvl=-4,  PC=16, S=0, Star=0,  {FaMoBroSoDaDaDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(L, K), son(M, L), daughter(Alter, M).
;; 518
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:0%
 Lvl=-4,  PC=16, S=0, Star=0,  {FaMoBroSoDaDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(L, K), daughter(M, L), son(Alter, M).
;; 519
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, gen_dn[aux]36:1, children:1, children:1, children:1%
 Lvl=-4,  PC=16, S=0, Star=0,  {FaMoBroSoDaDaDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(L, K), daughter(M, L), daughter(Alter, M).
;; 520
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-3,  PC=13, S=0, Star=0,  {FaMoBroSoDaDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(K, J), son(Alter, K).
;; 521
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-3,  PC=13, S=0, Star=0,  {FaMoBroSoDaDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(K, J), daughter(Alter, K).
;; 522
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-3,  PC=13, S=0, Star=0,  {FaMoBroSoDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), daughter(K, J), son(Alter, K).
;; 523
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-3,  PC=13, S=0, Star=0,  {FaMoBroSoDaDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), daughter(K, J), daughter(Alter, K).
;; 524
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:0, children:0%
 Lvl=-3,  PC=13, S=0, Star=0,  {FaMoBroSoDaDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(K, J), son(Alter, K).
;; 525
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:0, children:1%
 Lvl=-3,  PC=13, S=0, Star=0,  {FaMoBroSoDaDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(K, J), daughter(Alter, K).
;; 526
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:1, children:0%
 Lvl=-3,  PC=13, S=0, Star=0,  {FaMoBroSoDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), daughter(K, J), son(Alter, K).
;; 527
%chamal:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, gen_dn[aux]36:0, children:1, children:1%
 Lvl=-3,  PC=13, S=0, Star=0,  {FaMoBroSoDaDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), daughter(K, J), daughter(Alter, K).
;; 528
%chamal:2, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(Alter, D).
;; 529
%chamal:2, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(Alter, D).
;; 530
%chamal:3, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(Alter, D).
;; 531
%chamal:3, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(Alter, D).


chich(Alter, Ego) :-  mother(A, Ego), brother(B, A), wife(Alter, B).
{"MoBroWi"}
;; 0
%chich:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


chichol(Alter, Ego) :-  husband(A, Ego), sister(B, A), son(Alter, B).
                    |   husband(A, Ego), sister(B, A), daughter(Alter, B).
{"HuSisDa_HuSisSo"}
;; 0
%chichol:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 1
%chichol:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


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
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 6
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(Alter, G).
;; 7
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), daughter(F, E), not(equal(F, B)), son(Alter, F).
;; 8
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), daughter(F, E), not(equal(F, B)), son(Alter, F).
;; 9
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 10
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(Alter, D).
;; 11
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 12
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(Alter, D).
;; 13
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 14
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(Alter, E).
;; 15
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 16
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(Alter, E).
;; 17
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), mother(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 18
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), father(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 19
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 20
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 21
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 22
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 23
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 24
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 25
%father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 26
%father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 27
%father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 28
%father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).


gen_dn[aux]36(Alter, Ego) :-  children(Alter, Ego).
                          |   children(A, Ego), children(Alter, A).
;; 0
%gen_dn[aux]36:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Alter, Ego).
;; 1
%gen_dn[aux]36:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Alter, Ego).
;; 2
%gen_dn[aux]36:1, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), son(Alter, A).
;; 3
%gen_dn[aux]36:1, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), daughter(Alter, A).
;; 4
%gen_dn[aux]36:1, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), son(Alter, A).
;; 5
%gen_dn[aux]36:1, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), daughter(Alter, A).


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


hunichon(Alter, Ego) :-  male(Ego), brother[eq](A, Ego), children(Alter, A).
                     |   wife(A, Ego), sister[eq](B, A), children(Alter, B).
{"BroDa_BroSo_FaBroSoDa_FaBroSoSo_FaFaBroSoSoDa_FaFaBroSoSoSo_FaMoSisSoSoDa_FaMoSisSoSoSo_MoBroDaSoDa_MoBroDaSoSo_MoBroSoDaSoDa_MoBroSoDaSoSo_MoFaBroDaSoDa_MoFaBroDaSoSo_MoFaBroSoDaSoDa_MoFaBroSoDaSoSo_MoFaBroSoSoDaSoDa_MoFaBroSoSoDaSoSo_MoFaFaBroDaSoDa_MoFaFaBroDaSoSo_MoFaMoBroDaDaSoDa_MoFaMoBroDaDaSoSo_MoFaMoBroSoDaDaSoDa_MoFaMoBroSoDaDaSoSo_MoFaMoSisDaSoDa_MoFaMoSisDaSoSo_MoFaSisSoDa_MoFaSisSoSo_MoMoBroDaDaSoDa_MoMoBroDaDaSoSo_MoMoBroSoDaDaSoDa_MoMoBroSoDaDaSoSo_MoMoFaBroDaDaSoDa_MoMoFaBroDaDaSoSo_MoMoFaBroSoDaDaSoDa_MoMoFaBroSoDaDaSoSo_MoMoMoSisSoDaDaSoDa_MoMoMoSisSoDaDaSoSo_MoMoSisDaSoDa_MoMoSisDaSoSo_MoMoSisSoDaSoDa_MoMoSisSoDaSoSo_MoMoSisSoSoDaSoDa_MoMoSisSoSoDaSoSo_MoSisSoDa_MoSisSoSo_WiFaBroDaDa_WiFaBroDaSo_WiFaFaBroDaDa_WiFaFaBroDaSo_WiFaMoBroDaDaDa_WiFaMoBroDaDaSo_WiFaMoBroSoDaDaDa_WiFaMoBroSoDaDaSo_WiFaMoSisDaDa_WiFaMoSisDaSo_WiFaSisDa_WiFaSisSo_WiMoBroDaDaDa_WiMoBroDaDaSo_WiMoBroSoDaDaDa_WiMoBroSoDaDaSo_WiMoFaBroDaDaDa_WiMoFaBroDaDaSo_WiMoMoBroDaDaDaDa_WiMoMoBroDaDaDaSo_WiMoSisDaDa_WiMoSisDaSo_WiSisDa_WiSisSo"}
;; 0
%hunichon:0, brother[eq]:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 1
%hunichon:0, brother[eq]:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 2
%hunichon:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 3
%hunichon:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 4
%hunichon:0, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 5
%hunichon:0, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 6
%hunichon:0, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 7
%hunichon:0, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 8
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 9
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 10
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), son(Alter, G).
;; 11
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), daughter(Alter, G).
;; 12
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoMoSisDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), son(F, E), son(Alter, F).
;; 13
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoMoSisDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), son(F, E), daughter(Alter, F).
;; 14
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(Alter, I).
;; 15
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(Alter, I).
;; 16
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoMoSisDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), son(F, E), son(Alter, F).
;; 17
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoMoSisDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), son(F, E), daughter(Alter, F).
;; 18
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), son(Alter, H).
;; 19
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), daughter(Alter, H).
;; 20
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoFaBroSoDaDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(J, I), son(Alter, J).
;; 21
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoFaBroSoDaDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(J, I), daughter(Alter, J).
;; 22
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoMoSisSoDaDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(J, I), son(Alter, J).
;; 23
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoMoSisSoDaDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(J, I), daughter(Alter, J).
;; 24
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroSoDaDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(Alter, I).
;; 25
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroSoDaDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(Alter, I).
;; 26
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {MoSisSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), son(D, C), son(Alter, D).
;; 27
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {MoSisSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), son(D, C), daughter(Alter, D).
;; 28
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 29
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 30
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:4, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {MoSisSoSo}  
 male(Ego), mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), son(D, C), son(Alter, D).
;; 31
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:4, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {MoSisSoDa}  
 male(Ego), mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), son(D, C), daughter(Alter, D).
;; 32
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 33
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 34
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(I, H), son(Alter, I).
;; 35
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(I, H), daughter(Alter, I).
;; 36
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoFaMoBroSoDaDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, B)), son(J, I), son(Alter, J).
;; 37
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoFaMoBroSoDaDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, B)), son(J, I), daughter(Alter, J).
;; 38
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:2, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoFaSisSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), son(Alter, E).
;; 39
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:2, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoFaSisSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), daughter(Alter, E).
;; 40
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 41
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 42
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:4, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoFaSisSoSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), son(Alter, E).
;; 43
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:4, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoFaSisSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), daughter(Alter, E).
;; 44
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaSisSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(I, H), son(Alter, I).
;; 45
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaSisSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(I, H), daughter(Alter, I).
;; 46
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaSisSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), daughter(G, F), not(equal(G, E)), son(H, G), son(Alter, H).
;; 47
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaSisSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), daughter(G, F), not(equal(G, E)), son(H, G), daughter(Alter, H).
;; 48
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaSisSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), daughter(G, F), not(equal(G, E)), son(H, G), son(Alter, H).
;; 49
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaSisSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), daughter(G, F), not(equal(G, E)), son(H, G), daughter(Alter, H).
;; 50
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=0,  PC=14, S=0, Star=0,  {MoFaFaBroDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(K, J), son(Alter, K).
;; 51
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=0,  PC=14, S=0, Star=0,  {MoFaFaBroDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(K, J), daughter(Alter, K).
;; 52
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaFaBroDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), daughter(I, H), not(equal(I, G)), son(J, I), son(Alter, J).
;; 53
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaFaBroDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), daughter(I, H), not(equal(I, G)), son(J, I), daughter(Alter, J).
;; 54
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaFaBroDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), father(H, G), daughter(I, H), not(equal(I, G)), son(J, I), son(Alter, J).
;; 55
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaFaBroDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), father(H, G), daughter(I, H), not(equal(I, G)), son(J, I), daughter(Alter, J).
;; 56
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=0,  PC=14, S=0, Star=0,  {MoFaMoSisDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(K, J), son(Alter, K).
;; 57
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=0,  PC=14, S=0, Star=0,  {MoFaMoSisDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(K, J), daughter(Alter, K).
;; 58
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaMoSisDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), daughter(I, H), not(equal(I, G)), son(J, I), son(Alter, J).
;; 59
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaMoSisDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), daughter(I, H), not(equal(I, G)), son(J, I), daughter(Alter, J).
;; 60
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaMoSisDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), father(H, G), daughter(I, H), not(equal(I, G)), son(J, I), son(Alter, J).
;; 61
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaMoSisDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), father(H, G), daughter(I, H), not(equal(I, G)), son(J, I), daughter(Alter, J).
;; 62
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaMoSisDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), son(Alter, J).
;; 63
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaMoSisDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), daughter(Alter, J).
;; 64
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaMoSisDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), son(Alter, J).
;; 65
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaMoSisDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), daughter(Alter, J).
;; 66
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=15, S=0, Star=0,  {MoFaMoBroDaDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), son(Alter, L).
;; 67
%hunichon:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=15, S=0, Star=0,  {MoFaMoBroDaDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), daughter(Alter, L).
;; 68
%hunichon:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 69
%hunichon:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 70
%hunichon:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 71
%hunichon:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 72
%hunichon:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 73
%hunichon:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 74
%hunichon:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 75
%hunichon:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 76
%hunichon:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroSoSoDaSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 77
%hunichon:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroSoSoDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 78
%hunichon:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisSoSoDaSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 79
%hunichon:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisSoSoDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 80
%hunichon:1, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 81
%hunichon:1, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 82
%hunichon:1, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F).
;; 83
%hunichon:1, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(Alter, F).
;; 84
%hunichon:1, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {WiMoMoBroDaDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), not(equal(I, A)), son(Alter, I).
;; 85
%hunichon:1, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=10, S=1, Star=0,  {WiMoMoBroDaDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), not(equal(I, A)), daughter(Alter, I).
;; 86
%hunichon:1, sister[eq]:1, sister[eq]1:0, sister[eq]:2, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiMoSisDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), son(Alter, E).
;; 87
%hunichon:1, sister[eq]:1, sister[eq]1:0, sister[eq]:2, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiMoSisDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), daughter(Alter, E).
;; 88
%hunichon:1, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaBroDaDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 89
%hunichon:1, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaBroDaDaDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H).
;; 90
%hunichon:1, sister[eq]:1, sister[eq]1:0, sister[eq]:4, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiMoSisDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), son(Alter, E).
;; 91
%hunichon:1, sister[eq]:1, sister[eq]1:0, sister[eq]:4, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiMoSisDaDa}  
 wife(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), daughter(Alter, E).
;; 92
%hunichon:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 93
%hunichon:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(Alter, G).
;; 94
%hunichon:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroSoDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 95
%hunichon:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroSoDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H).
;; 96
%hunichon:1, sister[eq]:2, children:0%
 Lvl=-1,  PC=3, S=1, Star=0,  {WiSisSo}  
 wife(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), son(Alter, C).
;; 97
%hunichon:1, sister[eq]:2, children:1%
 Lvl=-1,  PC=3, S=1, Star=0,  {WiSisDa}  
 wife(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(Alter, C).
;; 98
%hunichon:1, sister[eq]:3, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 99
%hunichon:1, sister[eq]:3, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 100
%hunichon:1, sister[eq]:4, children:0%
 Lvl=-1,  PC=3, S=1, Star=0,  {WiSisSo}  
 wife(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), son(Alter, C).
;; 101
%hunichon:1, sister[eq]:4, children:1%
 Lvl=-1,  PC=3, S=1, Star=0,  {WiSisDa}  
 wife(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(Alter, C).
;; 102
%hunichon:1, sister[eq]:5, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaSisSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 103
%hunichon:1, sister[eq]:5, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaSisDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 104
%hunichon:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoBroDaDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 105
%hunichon:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoBroDaDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(Alter, H).
;; 106
%hunichon:1, sister[eq]:5, sister[eq]:2, children:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiFaSisSo}  
 wife(A, Ego), father(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(Alter, D).
;; 107
%hunichon:1, sister[eq]:5, sister[eq]:2, children:1%
 Lvl=0,  PC=4, S=1, Star=0,  {WiFaSisDa}  
 wife(A, Ego), father(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), daughter(Alter, D).
;; 108
%hunichon:1, sister[eq]:5, sister[eq]:3, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroDaSo}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 109
%hunichon:1, sister[eq]:5, sister[eq]:3, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroDaDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G).
;; 110
%hunichon:1, sister[eq]:5, sister[eq]:4, children:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiFaSisSo}  
 wife(A, Ego), father(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(Alter, D).
;; 111
%hunichon:1, sister[eq]:5, sister[eq]:4, children:1%
 Lvl=0,  PC=4, S=1, Star=0,  {WiFaSisDa}  
 wife(A, Ego), father(B, A), father(C, B), daughter(D, C), not(equal(D, B)), daughter(Alter, D).
;; 112
%hunichon:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {WiFaSisSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Alter, H).
;; 113
%hunichon:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {WiFaSisDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), daughter(Alter, H).
;; 114
%hunichon:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=13, S=1, Star=0,  {WiFaMoBroDaDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(K, J), not(equal(K, E)), son(Alter, K).
;; 115
%hunichon:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=13, S=1, Star=0,  {WiFaMoBroDaDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(K, J), not(equal(K, E)), daughter(Alter, K).
;; 116
%hunichon:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=14, S=1, Star=0,  {WiFaMoBroSoDaDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), son(J, I), daughter(K, J), daughter(L, K), not(equal(L, E)), son(Alter, L).
;; 117
%hunichon:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=14, S=1, Star=0,  {WiFaMoBroSoDaDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), son(J, I), daughter(K, J), daughter(L, K), not(equal(L, E)), daughter(Alter, L).
;; 118
%hunichon:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaSisSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), daughter(G, F), not(equal(G, E)), son(Alter, G).
;; 119
%hunichon:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaSisDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), daughter(G, F), not(equal(G, E)), daughter(Alter, G).
;; 120
%hunichon:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, children:0%
 Lvl=0,  PC=12, S=1, Star=0,  {WiFaFaBroDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), son(Alter, J).
;; 121
%hunichon:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, children:1%
 Lvl=0,  PC=12, S=1, Star=0,  {WiFaFaBroDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(Alter, J).
;; 122
%hunichon:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaSisSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), daughter(G, F), not(equal(G, E)), son(Alter, G).
;; 123
%hunichon:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaSisDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), daughter(G, F), not(equal(G, E)), daughter(Alter, G).
;; 124
%hunichon:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=0,  PC=12, S=1, Star=0,  {WiFaFaBroDaSo}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(Alter, J).
;; 125
%hunichon:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=0,  PC=12, S=1, Star=0,  {WiFaFaBroDaDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), daughter(Alter, J).
;; 126
%hunichon:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=0,  PC=12, S=1, Star=0,  {WiFaMoSisDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(Alter, J).
;; 127
%hunichon:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=0,  PC=12, S=1, Star=0,  {WiFaMoSisDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), daughter(Alter, J).
;; 128
%hunichon:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {WiFaMoSisDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(Alter, I).
;; 129
%hunichon:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {WiFaMoSisDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), daughter(Alter, I).
;; 130
%hunichon:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:2, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 131
%hunichon:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:2, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), daughter(Alter, H).
;; 132
%hunichon:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:4, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 133
%hunichon:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:4, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), daughter(Alter, H).
;; 134
%hunichon:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {WiFaMoSisDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(Alter, I).
;; 135
%hunichon:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {WiFaMoSisDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), daughter(Alter, I).
;; 136
%hunichon:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:2, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 137
%hunichon:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:2, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), daughter(Alter, H).
;; 138
%hunichon:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:4, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 139
%hunichon:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:4, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), daughter(Alter, H).
;; 140
%hunichon:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=13, S=1, Star=0,  {WiFaMoBroDaDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 141
%hunichon:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=13, S=1, Star=0,  {WiFaMoBroDaDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(Alter, K).
;; 142
%hunichon:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {WiFaMoBroDaDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 143
%hunichon:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {WiFaMoBroDaDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), daughter(Alter, J).
;; 144
%hunichon:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {WiFaMoBroDaDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 145
%hunichon:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {WiFaMoBroDaDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), daughter(Alter, J).


hunme(Alter, Ego) :-  mother[eq](Alter, Ego).
{"FaBroWi_FaFaBroSoWi_FaFaFaBroSoSoWi_FaFaMoSisSoSoWi_FaMoBroDaSoWi_FaMoBroSoDaSoWi_FaMoFaBroDaSoWi_FaMoFaFaBroDaSoWi_FaMoFaMoSisDaSoWi_FaMoFaSisSoWi_FaMoMoBroDaDaSoWi_FaMoMoSisDaSoWi_FaMoSisSoWi_Mo_MoBroDa_MoBroSoDa_MoFaBroDa_MoFaBroSoDa_MoFaBroSoSoDa_MoFaFaBroDa_MoFaMoBroDaDa_MoFaMoBroSoDaDa_MoFaMoSisDa_MoFaSis_MoMoBroDaDa_MoMoBroSoDaDa_MoMoFaBroDaDa_MoMoSisDa_MoMoSisSoDa_MoMoSisSoSoDa_MoSis"}
;; 0
%hunme:0, mother[eq]:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).
;; 1
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E), not(equal(Alter, A)).
;; 3
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=1,  PC=5, S=0, Star=0,  {MoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), daughter(Alter, D), not(equal(Alter, A)).
;; 4
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 5
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=1,  PC=5, S=0, Star=0,  {MoMoSisDa}  
 mother(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), daughter(Alter, D), not(equal(Alter, A)).
;; 6
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, A)).
;; 7
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 8
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=1,  PC=3, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), daughter(Alter, B), not(equal(Alter, A)).
;; 9
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 10
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=1,  PC=3, S=0, Star=0,  {MoSis}  
 mother(A, Ego), father(B, A), daughter(Alter, B), not(equal(Alter, A)).
;; 11
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 12
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, B)).
;; 13
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=2,  PC=4, S=0, Star=0,  {MoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), daughter(Alter, C), not(equal(Alter, B)).
;; 14
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 15
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=2,  PC=4, S=0, Star=0,  {MoFaSis}  
 mother(A, Ego), father(B, A), father(C, B), daughter(Alter, C), not(equal(Alter, B)).
;; 16
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), female(Alter).
;; 17
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {MoFaMoBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(Alter, J), not(equal(Alter, E)).
;; 18
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {MoFaMoBroSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), son(J, I), daughter(K, J), daughter(Alter, K), not(equal(Alter, E)).
;; 19
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), daughter(Alter, F), not(equal(Alter, E)).
;; 20
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=2,  PC=12, S=0, Star=0,  {MoFaFaBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(Alter, I).
;; 21
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), daughter(Alter, F), not(equal(Alter, E)).
;; 22
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=12, S=0, Star=0,  {MoFaFaBroDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), father(I, G), child(Alter, H), child(Alter, I), not(equal(Alter, G)), female(Alter).
;; 23
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=12, S=0, Star=0,  {MoFaMoSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), father(I, G), child(Alter, H), child(Alter, I), not(equal(Alter, G)), female(Alter).
;; 24
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 25
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:2%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 26
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:4%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), father(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 27
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 28
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:2%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 29
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:4%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), father(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 30
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {MoFaMoBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 31
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 32
%hunme:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 33
%hunme:0, mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 34
%hunme:0, mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 35
%hunme:0, mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 36
%hunme:0, mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 37
%hunme:0, mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 38
%hunme:0, mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 39
%hunme:0, mother[eq]:2, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 40
%hunme:0, mother[eq]:2, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaBroSoWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), wife(Alter, F).
;; 41
%hunme:0, mother[eq]:2, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaFaBroSoSoWi}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), wife(Alter, H).
;; 42
%hunme:0, mother[eq]:2, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoSisSoSoWi}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), wife(Alter, H).
;; 43
%hunme:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), wife(Alter, F).
;; 44
%hunme:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoSisDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(H, G), wife(Alter, H).
;; 45
%hunme:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoMoSisDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), daughter(F, E), not(equal(F, B)), son(G, F), wife(Alter, G).
;; 46
%hunme:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoMoSisDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), daughter(F, E), not(equal(F, B)), son(G, F), wife(Alter, G).
;; 47
%hunme:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoBroDaDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(I, H), wife(Alter, I).
;; 48
%hunme:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:2%
 Lvl=1,  PC=5, S=1, Star=0,  {FaMoSisSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), wife(Alter, E).
;; 49
%hunme:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoFaBroDaSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), wife(Alter, H).
;; 50
%hunme:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:4%
 Lvl=1,  PC=5, S=1, Star=0,  {FaMoSisSoWi}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), wife(Alter, E).
;; 51
%hunme:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {FaMoFaSisSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), wife(Alter, G).
;; 52
%hunme:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=2,  PC=6, S=1, Star=0,  {FaMoFaSisSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), wife(Alter, F).
;; 53
%hunme:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=2,  PC=6, S=1, Star=0,  {FaMoFaSisSoWi}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), wife(Alter, F).
;; 54
%hunme:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=2,  PC=10, S=1, Star=0,  {FaMoFaSisSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), mother(G, F), daughter(H, G), not(equal(H, F)), son(I, H), wife(Alter, I).
;; 55
%hunme:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=2,  PC=10, S=1, Star=0,  {FaMoFaSisSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), father(G, F), daughter(H, G), not(equal(H, F)), son(I, H), wife(Alter, I).
;; 56
%hunme:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=14, S=1, Star=0,  {FaMoFaFaBroDaSoWi}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), wife(Alter, L).
;; 57
%hunme:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=2,  PC=12, S=1, Star=0,  {FaMoFaFaBroDaSoWi}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(K, J), wife(Alter, K).
;; 58
%hunme:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=2,  PC=12, S=1, Star=0,  {FaMoFaFaBroDaSoWi}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(K, J), wife(Alter, K).
;; 59
%hunme:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=14, S=1, Star=0,  {FaMoFaMoSisDaSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), wife(Alter, L).
;; 60
%hunme:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2%
 Lvl=2,  PC=12, S=1, Star=0,  {FaMoFaMoSisDaSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(K, J), wife(Alter, K).
;; 61
%hunme:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4%
 Lvl=2,  PC=12, S=1, Star=0,  {FaMoFaMoSisDaSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(K, J), wife(Alter, K).
;; 62
%hunme:0, mother[eq]:2, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), wife(Alter, G).
;; 63
%hunme:0, mother[eq]:2, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroSoDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), wife(Alter, H).


hunol(Alter, Ego) :-  female(Ego), sister[eq](A, Ego), son(Alter, A).
                  |   husband(A, Ego), brother(B, A), children(Alter, B).
{"FaBroDaSo_FaFaBroDaSo_FaFaFaBroSoDaSo_FaFaMoSisSoDaSo_FaMoBroDaDaSo_FaMoBroSoDaDaSo_FaMoFaBroDaDaSo_FaMoFaBroSoDaDaSo_FaMoFaBroSoSoDaDaSo_FaMoMoSisSoDaDaSo_FaMoMoSisSoSoDaDaSo_FaMoSisDaSo_FaMoSisHuBroDaSo_FaSisSo_HuBroDa_HuBroSo_MoBroDaDaSo_MoBroSoDaDaSo_MoFaBroDaDaSo_MoFaBroSoDaDaSo_MoFaBroSoSoDaDaSo_MoMoBroDaDaDaSo_MoMoBroSoDaDaDaSo_MoMoSisSoDaDaSo_MoMoSisSoSoDaDaSo_MoSisDaSo_SisSo"}
;; 0
%hunol:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 1
%hunol:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), son(Alter, E).
;; 2
%hunol:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), son(Alter, H).
;; 3
%hunol:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroSoDaDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), not(equal(I, Ego)), son(Alter, I).
;; 4
%hunol:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=-1,  PC=5, S=0, Star=0,  {MoSisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), son(Alter, D).
;; 5
%hunol:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(Alter, G).
;; 6
%hunol:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=-1,  PC=5, S=0, Star=0,  {MoSisDaSo}  
 female(Ego), mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), son(Alter, D).
;; 7
%hunol:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), son(Alter, F).
;; 8
%hunol:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(Alter, H).
;; 9
%hunol:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(Alter, H).
;; 10
%hunol:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(Alter, G).
;; 11
%hunol:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroSoSoDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), son(Alter, I).
;; 12
%hunol:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisSoSoDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), son(Alter, I).
;; 13
%hunol:0, sister[eq]:2%
 Lvl=-1,  PC=3, S=0, Star=0,  {SisSo}  
 female(Ego), mother(A, Ego), daughter(B, A), not(equal(B, Ego)), son(Alter, B).
;; 14
%hunol:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 15
%hunol:0, sister[eq]:4%
 Lvl=-1,  PC=3, S=0, Star=0,  {SisSo}  
 female(Ego), father(A, Ego), daughter(B, A), not(equal(B, Ego)), son(Alter, B).
;; 16
%hunol:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 17
%hunol:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 18
%hunol:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(Alter, I).
;; 19
%hunol:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(Alter, I).
;; 20
%hunol:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 21
%hunol:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoFaBroSoSoDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, A)), son(Alter, J).
;; 22
%hunol:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoMoSisSoSoDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, A)), son(Alter, J).
;; 23
%hunol:0, sister[eq]:5, sister[eq]:2%
 Lvl=0,  PC=4, S=0, Star=0,  {FaSisSo}  
 female(Ego), father(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), son(Alter, C).
;; 24
%hunol:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 25
%hunol:0, sister[eq]:5, sister[eq]:4%
 Lvl=0,  PC=4, S=0, Star=0,  {FaSisSo}  
 female(Ego), father(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), son(Alter, C).
;; 26
%hunol:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaSisSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 27
%hunol:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoBroDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(J, I), not(equal(J, D)), son(Alter, J).
;; 28
%hunol:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaMoBroSoDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(I, H), daughter(J, I), daughter(K, J), not(equal(K, D)), son(Alter, K).
;; 29
%hunol:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=8, S=0, Star=0,  {FaSisSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), daughter(F, E), not(equal(F, D)), son(Alter, F).
;; 30
%hunol:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaBroDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), son(Alter, I).
;; 31
%hunol:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=8, S=0, Star=0,  {FaSisSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), daughter(F, E), not(equal(F, D)), son(Alter, F).
;; 32
%hunol:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaBroDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(Alter, I).
;; 33
%hunol:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaBroDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 34
%hunol:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {FaSisSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), son(Alter, K).
;; 35
%hunol:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaBroDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 36
%hunol:0, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {FaFaFaBroSoDaSo}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 37
%hunol:0, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaFaBroSoDaSo}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 38
%hunol:0, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaFaBroSoDaSo}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 39
%hunol:0, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {FaFaMoSisSoDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 40
%hunol:0, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaMoSisSoDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 41
%hunol:0, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaMoSisSoDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 42
%hunol:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoSisDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(Alter, I).
;; 43
%hunol:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoSisDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 44
%hunol:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {FaMoSisHuBroDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), son(Alter, K).
;; 45
%hunol:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoSisDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 46
%hunol:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoSisDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Alter, H).
;; 47
%hunol:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:2%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), daughter(G, F), not(equal(G, E)), son(Alter, G).
;; 48
%hunol:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoSisHuBroDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), son(Alter, J).
;; 49
%hunol:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:4%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), daughter(G, F), not(equal(G, E)), son(Alter, G).
;; 50
%hunol:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {FaMoFaBroDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 51
%hunol:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoFaBroDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 52
%hunol:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoFaBroDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 53
%hunol:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoSisDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Alter, H).
;; 54
%hunol:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:2%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), daughter(G, F), not(equal(G, E)), son(Alter, G).
;; 55
%hunol:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoSisHuBroDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), son(Alter, J).
;; 56
%hunol:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:4%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), daughter(G, F), not(equal(G, E)), son(Alter, G).
;; 57
%hunol:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoBroDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(Alter, J).
;; 58
%hunol:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), daughter(I, H), not(equal(I, G)), son(Alter, I).
;; 59
%hunol:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), father(H, G), daughter(I, H), not(equal(I, G)), son(Alter, I).
;; 60
%hunol:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaMoBroSoDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 61
%hunol:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoBroSoDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 62
%hunol:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoBroSoDaDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 63
%hunol:1, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 64
%hunol:1, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).


huntot(Alter, Ego) :-  father[eq](Alter, Ego).
                   |   mother[eq](A, Ego), husband(Alter, A).
{"Fa_FaBro_FaFaBroSo_FaFaFaBroSoSo_FaFaMoSisSoSo_FaMoBroDaSo_FaMoBroSoDaSo_FaMoFaBroDaSo_FaMoFaBroSoDaSo_FaMoFaFaBroDaSo_FaMoFaMoSisDaSo_FaMoFaSisSo_FaMoMoBroDaDaSo_FaMoMoSisDaSo_FaMoMoSisSoDaSo_FaMoSisSo_MoBroDaHu_MoBroSoDaHu_MoFaBroDaHu_MoFaBroSoDaHu_MoFaBroSoSoDaHu_MoFaFaBroDaHu_MoFaMoBroDaDaHu_MoFaMoBroSoDaDaHu_MoFaMoSisDaHu_MoFaSisHu_MoMoBroDaDaHu_MoMoBroSoDaDaHu_MoMoFaBroDaDaHu_MoMoSisDaHu_MoMoSisSoDaHu_MoMoSisSoSoDaHu_MoSisHu"}
;; 0
%huntot:0, father[eq]:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).
;; 1
%huntot:0, father[eq]:1, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%huntot:0, father[eq]:1, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 3
%huntot:0, father[eq]:1, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 4
%huntot:0, father[eq]:1, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 5
%huntot:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 6
%huntot:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(Alter, G).
;; 7
%huntot:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), daughter(F, E), not(equal(F, B)), son(Alter, F).
;; 8
%huntot:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), daughter(F, E), not(equal(F, B)), son(Alter, F).
;; 9
%huntot:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 10
%huntot:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:2%
 Lvl=1,  PC=5, S=0, Star=0,  {FaMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(Alter, D).
;; 11
%huntot:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 12
%huntot:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:4%
 Lvl=1,  PC=5, S=0, Star=0,  {FaMoSisSo}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(Alter, D).
;; 13
%huntot:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 14
%huntot:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoFaSisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(Alter, E).
;; 15
%huntot:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaFaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 16
%huntot:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoFaSisSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(Alter, E).
;; 17
%huntot:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaSisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), mother(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 18
%huntot:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaSisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), father(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 19
%huntot:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=14, S=0, Star=0,  {FaMoFaFaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 20
%huntot:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=2,  PC=12, S=0, Star=0,  {FaMoFaFaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 21
%huntot:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=2,  PC=12, S=0, Star=0,  {FaMoFaFaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 22
%huntot:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=14, S=0, Star=0,  {FaMoFaMoSisDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 23
%huntot:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2%
 Lvl=2,  PC=12, S=0, Star=0,  {FaMoFaMoSisDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 24
%huntot:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4%
 Lvl=2,  PC=12, S=0, Star=0,  {FaMoFaMoSisDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 25
%huntot:0, father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 26
%huntot:0, father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 27
%huntot:0, father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 28
%huntot:0, father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 29
%huntot:1, mother[eq]:0%
 Lvl=1,  PC=1, S=1, Star=0,  {Fa}  
 mother(A, Ego), husband(Alter, A).
;; 30
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 31
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoSisDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), husband(Alter, F).
;; 32
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=1,  PC=5, S=1, Star=0,  {MoMoSisDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), husband(Alter, E).
;; 33
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoFaBroDaDaHu}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), husband(Alter, H).
;; 34
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=1,  PC=5, S=1, Star=0,  {MoMoSisDaHu}  
 mother(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), husband(Alter, E).
;; 35
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), husband(Alter, G).
;; 36
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroSoDaDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), husband(Alter, H).
;; 37
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=1,  PC=3, S=1, Star=0,  {MoSisHu}  
 mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), husband(Alter, C).
;; 38
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaBroDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), husband(Alter, F).
;; 39
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=1,  PC=3, S=1, Star=0,  {MoSisHu}  
 mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), husband(Alter, C).
;; 40
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoFaSisHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 41
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoBroDaDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), husband(Alter, H).
;; 42
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=2,  PC=4, S=1, Star=0,  {MoFaSisHu}  
 mother(A, Ego), father(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), husband(Alter, D).
;; 43
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {MoFaFaBroDaHu}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), husband(Alter, G).
;; 44
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=2,  PC=4, S=1, Star=0,  {MoFaSisHu}  
 mother(A, Ego), father(B, A), father(C, B), daughter(D, C), not(equal(D, B)), husband(Alter, D).
;; 45
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=10, S=1, Star=0,  {MoFaSisHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), husband(Alter, H).
;; 46
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=13, S=1, Star=0,  {MoFaMoBroDaDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(K, J), not(equal(K, E)), husband(Alter, K).
;; 47
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=14, S=1, Star=0,  {MoFaMoBroSoDaDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), son(J, I), daughter(K, J), daughter(L, K), not(equal(L, E)), husband(Alter, L).
;; 48
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=2,  PC=8, S=1, Star=0,  {MoFaSisHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), daughter(G, F), not(equal(G, E)), husband(Alter, G).
;; 49
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=2,  PC=12, S=1, Star=0,  {MoFaFaBroDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), husband(Alter, J).
;; 50
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=2,  PC=8, S=1, Star=0,  {MoFaSisHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), daughter(G, F), not(equal(G, E)), husband(Alter, G).
;; 51
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=12, S=1, Star=0,  {MoFaFaBroDaHu}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), husband(Alter, J).
;; 52
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=12, S=1, Star=0,  {MoFaMoSisDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), husband(Alter, J).
;; 53
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=10, S=1, Star=0,  {MoFaMoSisDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), husband(Alter, I).
;; 54
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:2%
 Lvl=2,  PC=8, S=1, Star=0,  {MoFaMoSisDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), husband(Alter, H).
;; 55
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:4%
 Lvl=2,  PC=8, S=1, Star=0,  {MoFaMoSisDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), husband(Alter, H).
;; 56
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=10, S=1, Star=0,  {MoFaMoSisDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), husband(Alter, I).
;; 57
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:2%
 Lvl=2,  PC=8, S=1, Star=0,  {MoFaMoSisDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), husband(Alter, H).
;; 58
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:4%
 Lvl=2,  PC=8, S=1, Star=0,  {MoFaMoSisDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), husband(Alter, H).
;; 59
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=1, Star=0,  {MoFaMoBroDaDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 60
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=1, Star=0,  {MoFaMoBroDaDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), husband(Alter, J).
;; 61
%huntot:1, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=1, Star=0,  {MoFaMoBroDaDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), husband(Alter, J).
;; 62
%huntot:1, mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E).
;; 63
%huntot:1, mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), husband(Alter, G).
;; 64
%huntot:1, mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), husband(Alter, G).
;; 65
%huntot:1, mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroSoDaHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), husband(Alter, F).
;; 66
%huntot:1, mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoSoDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), husband(Alter, H).
;; 67
%huntot:1, mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoSoDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), husband(Alter, H).
;; 68
%huntot:1, mother[eq]:2, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=2, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(E, D), husband(Alter, E).
;; 69
%huntot:1, mother[eq]:2, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=2, Star=0,  {FaFaBroSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), wife(G, F), husband(Alter, G).
;; 70
%huntot:1, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=2, Star=0,  {FaMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), wife(G, F), husband(Alter, G).
;; 71
%huntot:1, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=2, Star=0,  {FaMoMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(H, G), wife(I, H), husband(Alter, I).
;; 72
%huntot:1, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=1,  PC=7, S=2, Star=0,  {FaMoMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), daughter(F, E), not(equal(F, B)), son(G, F), wife(H, G), husband(Alter, H).
;; 73
%huntot:1, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=1,  PC=7, S=2, Star=0,  {FaMoMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), daughter(F, E), not(equal(F, B)), son(G, F), wife(H, G), husband(Alter, H).
;; 74
%huntot:1, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=2, Star=0,  {FaMoMoBroDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(I, H), wife(J, I), husband(Alter, J).
;; 75
%huntot:1, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:2%
 Lvl=1,  PC=5, S=2, Star=0,  {FaMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), wife(F, E), husband(Alter, F).
;; 76
%huntot:1, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:4%
 Lvl=1,  PC=5, S=2, Star=0,  {FaMoSisSo}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), wife(F, E), husband(Alter, F).
;; 77
%huntot:1, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=2, Star=0,  {FaMoFaSisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), wife(H, G), husband(Alter, H).
;; 78
%huntot:1, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=2,  PC=10, S=2, Star=0,  {FaMoFaSisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), mother(G, F), daughter(H, G), not(equal(H, F)), son(I, H), wife(J, I), husband(Alter, J).
;; 79
%huntot:1, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=2,  PC=10, S=2, Star=0,  {FaMoFaSisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), father(G, F), daughter(H, G), not(equal(H, F)), son(I, H), wife(J, I), husband(Alter, J).
;; 80
%huntot:1, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=14, S=2, Star=0,  {FaMoFaFaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), wife(M, L), husband(Alter, M).
;; 81
%huntot:1, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=14, S=2, Star=0,  {FaMoFaMoSisDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), wife(M, L), husband(Alter, M).
;; 82
%huntot:1, mother[eq]:2, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=2, Star=0,  {FaMoBroDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), wife(H, G), husband(Alter, H).


jawan(Alter, Ego) :-  husband(A, Ego), sister[eq](Alter, A).
                  |   female(Ego), brother[eq]1(A, Ego), wife(Alter, A).
{"BroSoSoWi_BroSoWi_BroWi_FaBroSoSoSoWi_FaBroSoSoWi_FaBroSoWi_FaFaBroSoSoWi_FaMoSisSoSoWi_HuFaBroDa_HuFaFaBroDa_HuFaMoBroDaDa_HuFaMoBroSoDaDa_HuFaMoSisDa_HuFaSis_HuMoBroDaDa_HuMoBroSoDaDa_HuMoFaBroDaDa_HuMoMoBroDaDaDa_HuMoSisDa_HuSis_MoBroDaSoWi_MoBroSoDaSoWi_MoFaBroDaSoWi_MoFaBroSoDaSoWi_MoFaBroSoSoDaSoWi_MoFaFaBroDaSoWi_MoFaMoBroDaDaSoWi_MoFaMoBroSoDaDaSoWi_MoFaMoSisDaSoWi_MoFaSisSoWi_MoMoBroDaDaSoWi_MoMoBroSoDaDaSoWi_MoMoFaBroDaDaSoWi_MoMoFaBroSoDaDaSoWi_MoMoMoSisSoDaDaSoWi_MoMoSisDaSoWi_MoMoSisSoDaSoWi_MoMoSisSoSoDaSoWi_MoSisSoSoSoWi_MoSisSoSoWi_MoSisSoWi"}
;; 0
%jawan:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%jawan:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E), not(equal(Alter, A)).
;; 2
%jawan:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoBroDaDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(Alter, H), not(equal(Alter, A)).
;; 3
%jawan:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=4, S=1, Star=0,  {HuMoSisDa}  
 husband(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), daughter(Alter, D), not(equal(Alter, A)).
;; 4
%jawan:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroDaDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 5
%jawan:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=4, S=1, Star=0,  {HuMoSisDa}  
 husband(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), daughter(Alter, D), not(equal(Alter, A)).
;; 6
%jawan:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, A)).
;; 7
%jawan:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroSoDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 8
%jawan:0, sister[eq]:2%
 Lvl=0,  PC=2, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), daughter(Alter, B), not(equal(Alter, A)).
;; 9
%jawan:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 10
%jawan:0, sister[eq]:4%
 Lvl=0,  PC=2, S=1, Star=0,  {HuSis}  
 husband(A, Ego), father(B, A), daughter(Alter, B), not(equal(Alter, A)).
;; 11
%jawan:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuFaSis}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 12
%jawan:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, B)).
;; 13
%jawan:0, sister[eq]:5, sister[eq]:2%
 Lvl=1,  PC=3, S=1, Star=0,  {HuFaSis}  
 husband(A, Ego), father(B, A), mother(C, B), daughter(Alter, C), not(equal(Alter, B)).
;; 14
%jawan:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaFaBroDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 15
%jawan:0, sister[eq]:5, sister[eq]:4%
 Lvl=1,  PC=3, S=1, Star=0,  {HuFaSis}  
 husband(A, Ego), father(B, A), father(C, B), daughter(Alter, C), not(equal(Alter, B)).
;; 16
%jawan:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuFaSis}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), female(Alter).
;; 17
%jawan:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuFaMoBroDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(Alter, J), not(equal(Alter, E)).
;; 18
%jawan:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=13, S=1, Star=0,  {HuFaMoBroSoDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), son(J, I), daughter(K, J), daughter(Alter, K), not(equal(Alter, E)).
;; 19
%jawan:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaSis}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), daughter(Alter, F), not(equal(Alter, E)).
;; 20
%jawan:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=11, S=1, Star=0,  {HuFaFaBroDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(Alter, I).
;; 21
%jawan:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaSis}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), daughter(Alter, F), not(equal(Alter, E)).
;; 22
%jawan:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=1, Star=0,  {HuFaFaBroDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), father(I, G), child(Alter, H), child(Alter, I), not(equal(Alter, G)), female(Alter).
;; 23
%jawan:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=1, Star=0,  {HuFaMoSisDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), father(I, G), child(Alter, H), child(Alter, I), not(equal(Alter, G)), female(Alter).
;; 24
%jawan:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuFaMoSisDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 25
%jawan:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:2%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaMoSisDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 26
%jawan:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:4%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaMoSisDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), father(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 27
%jawan:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuFaMoSisDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 28
%jawan:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:2%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaMoSisDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 29
%jawan:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:4%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaMoSisDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), father(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 30
%jawan:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuFaMoBroDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 31
%jawan:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=10, S=1, Star=0,  {HuFaMoBroDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 32
%jawan:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=10, S=1, Star=0,  {HuFaMoBroDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 33
%jawan:1, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C).
;; 34
%jawan:1, brother[eq]1:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), wife(Alter, E).
;; 35
%jawan:1, brother[eq]1:0, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoSoWi}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), wife(Alter, G).
;; 36
%jawan:1, brother[eq]1:0, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoSoWi}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), wife(Alter, G).
;; 37
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), wife(Alter, E).
;; 38
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), wife(Alter, G).
;; 39
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=6, S=1, Star=0,  {MoMoSisDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), son(F, E), wife(Alter, F).
;; 40
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaBroDaDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), wife(Alter, I).
;; 41
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=6, S=1, Star=0,  {MoMoSisDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), son(F, E), wife(Alter, F).
;; 42
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroDaDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), wife(Alter, H).
;; 43
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoFaBroSoDaDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(J, I), wife(Alter, J).
;; 44
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoMoSisSoDaDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(J, I), wife(Alter, J).
;; 45
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {MoMoBroSoDaDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), wife(Alter, I).
;; 46
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=4, S=1, Star=0,  {MoSisSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), son(D, C), wife(Alter, D).
;; 47
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), wife(Alter, G).
;; 48
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=4, S=1, Star=0,  {MoSisSoWi}  
 female(Ego), mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), son(D, C), wife(Alter, D).
;; 49
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaSisSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), wife(Alter, F).
;; 50
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoBroDaDaSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(I, H), wife(Alter, I).
;; 51
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaMoBroSoDaDaSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, B)), son(J, I), wife(Alter, J).
;; 52
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=1,  PC=5, S=1, Star=0,  {MoFaSisSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), wife(Alter, E).
;; 53
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaFaBroDaSoWi}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), wife(Alter, H).
;; 54
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=1,  PC=5, S=1, Star=0,  {MoFaSisSoWi}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), wife(Alter, E).
;; 55
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=1, Star=0,  {MoFaSisSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(I, H), wife(Alter, I).
;; 56
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaSisSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), daughter(G, F), not(equal(G, E)), son(H, G), wife(Alter, H).
;; 57
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaSisSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), daughter(G, F), not(equal(G, E)), son(H, G), wife(Alter, H).
;; 58
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=1, Star=0,  {MoFaFaBroDaSoWi}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(K, J), wife(Alter, K).
;; 59
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=1, Star=0,  {MoFaFaBroDaSoWi}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), daughter(I, H), not(equal(I, G)), son(J, I), wife(Alter, J).
;; 60
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=1, Star=0,  {MoFaFaBroDaSoWi}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), father(H, G), daughter(I, H), not(equal(I, G)), son(J, I), wife(Alter, J).
;; 61
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=1, Star=0,  {MoFaMoSisDaSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(K, J), wife(Alter, K).
;; 62
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=1, Star=0,  {MoFaMoSisDaSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), daughter(I, H), not(equal(I, G)), son(J, I), wife(Alter, J).
;; 63
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=1, Star=0,  {MoFaMoSisDaSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), father(H, G), daughter(I, H), not(equal(I, G)), son(J, I), wife(Alter, J).
;; 64
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=1, Star=0,  {MoFaMoSisDaSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), wife(Alter, J).
;; 65
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=1, Star=0,  {MoFaMoSisDaSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), wife(Alter, J).
;; 66
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=14, S=1, Star=0,  {MoFaMoBroDaDaSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), wife(Alter, L).
;; 67
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), wife(Alter, F).
;; 68
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoDaSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 69
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 70
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroSoDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), wife(Alter, G).
;; 71
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {MoFaBroSoSoDaSoWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(I, H), wife(Alter, I).
;; 72
%jawan:1, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {MoMoSisSoSoDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(I, H), wife(Alter, I).
;; 73
%jawan:1, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroSoWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), wife(Alter, D).
;; 74
%jawan:1, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), wife(Alter, F).
;; 75
%jawan:1, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), wife(Alter, F).
;; 76
%jawan:1, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroSoSoWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), wife(Alter, E).
;; 77
%jawan:1, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroSoSoSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), wife(Alter, G).
;; 78
%jawan:1, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisSoSoSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), wife(Alter, G).


kajnil(Alter, Ego) :-  wife(Alter, Ego).
{"Wi"}
;; 0
%kajnil:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


kichok(Alter, Ego) :-  male(Ego), sister[eq](A, Ego), children(Alter, A).
{"FaBroDaDa_FaBroDaSo_FaFaBroDaDa_FaFaBroDaSo_FaFaFaBroSoDaDa_FaFaFaBroSoDaSo_FaFaMoSisSoDaDa_FaFaMoSisSoDaSo_FaMoBroDaDaDa_FaMoBroDaDaSo_FaMoBroSoDaDaDa_FaMoBroSoDaDaSo_FaMoFaBroDaDaDa_FaMoFaBroDaDaSo_FaMoFaBroSoDaDaDa_FaMoFaBroSoDaDaSo_FaMoFaBroSoSoDaDaDa_FaMoFaBroSoSoDaDaSo_FaMoMoSisSoDaDaDa_FaMoMoSisSoDaDaSo_FaMoMoSisSoSoDaDaDa_FaMoMoSisSoSoDaDaSo_FaMoSisDaDa_FaMoSisDaSo_FaMoSisHuBroDaDa_FaMoSisHuBroDaSo_FaSisDa_FaSisSo_MoBroDaDaDa_MoBroDaDaSo_MoBroSoDaDaDa_MoBroSoDaDaSo_MoFaBroDaDaDa_MoFaBroDaDaSo_MoFaBroSoDaDaDa_MoFaBroSoDaDaSo_MoFaBroSoSoDaDaDa_MoFaBroSoSoDaDaSo_MoMoBroDaDaDaDa_MoMoBroDaDaDaSo_MoMoBroSoDaDaDaDa_MoMoBroSoDaDaDaSo_MoMoSisSoDaDaDa_MoMoSisSoDaDaSo_MoMoSisSoSoDaDaDa_MoMoSisSoSoDaDaSo_MoSisDaDa_MoSisDaSo_SisDa_SisSo"}
;; 0
%kichok:0, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 1
%kichok:0, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 2
%kichok:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), son(Alter, E).
;; 3
%kichok:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), daughter(Alter, E).
;; 4
%kichok:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), son(Alter, H).
;; 5
%kichok:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(H, G), not(equal(H, Ego)), daughter(Alter, H).
;; 6
%kichok:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroSoDaDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), not(equal(I, Ego)), son(Alter, I).
;; 7
%kichok:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroSoDaDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), not(equal(I, Ego)), daughter(Alter, I).
;; 8
%kichok:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {MoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), son(Alter, D).
;; 9
%kichok:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {MoSisDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), daughter(Alter, D).
;; 10
%kichok:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(Alter, G).
;; 11
%kichok:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(Alter, G).
;; 12
%kichok:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {MoSisDaSo}  
 male(Ego), mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), son(Alter, D).
;; 13
%kichok:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {MoSisDaDa}  
 male(Ego), mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), daughter(Alter, D).
;; 14
%kichok:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), son(Alter, F).
;; 15
%kichok:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), daughter(Alter, F).
;; 16
%kichok:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(Alter, H).
;; 17
%kichok:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(Alter, H).
;; 18
%kichok:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), son(Alter, H).
;; 19
%kichok:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), daughter(Alter, H).
;; 20
%kichok:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(Alter, G).
;; 21
%kichok:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(Alter, G).
;; 22
%kichok:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroSoSoDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), son(Alter, I).
;; 23
%kichok:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroSoSoDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), daughter(Alter, I).
;; 24
%kichok:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisSoSoDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), son(Alter, I).
;; 25
%kichok:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisSoSoDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), daughter(Alter, I).
;; 26
%kichok:0, sister[eq]:2, children:0%
 Lvl=-1,  PC=3, S=0, Star=0,  {SisSo}  
 male(Ego), mother(A, Ego), daughter(B, A), not(equal(B, Ego)), son(Alter, B).
;; 27
%kichok:0, sister[eq]:2, children:1%
 Lvl=-1,  PC=3, S=0, Star=0,  {SisDa}  
 male(Ego), mother(A, Ego), daughter(B, A), not(equal(B, Ego)), daughter(Alter, B).
;; 28
%kichok:0, sister[eq]:3, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 29
%kichok:0, sister[eq]:3, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 30
%kichok:0, sister[eq]:4, children:0%
 Lvl=-1,  PC=3, S=0, Star=0,  {SisSo}  
 male(Ego), father(A, Ego), daughter(B, A), not(equal(B, Ego)), son(Alter, B).
;; 31
%kichok:0, sister[eq]:4, children:1%
 Lvl=-1,  PC=3, S=0, Star=0,  {SisDa}  
 male(Ego), father(A, Ego), daughter(B, A), not(equal(B, Ego)), daughter(Alter, B).
;; 32
%kichok:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 33
%kichok:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 34
%kichok:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 35
%kichok:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(Alter, G).
;; 36
%kichok:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(Alter, I).
;; 37
%kichok:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), daughter(Alter, I).
;; 38
%kichok:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(Alter, I).
;; 39
%kichok:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), daughter(Alter, I).
;; 40
%kichok:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 41
%kichok:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H).
;; 42
%kichok:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoFaBroSoSoDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, A)), son(Alter, J).
;; 43
%kichok:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoFaBroSoSoDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, A)), daughter(Alter, J).
;; 44
%kichok:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoMoSisSoSoDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, A)), son(Alter, J).
;; 45
%kichok:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoMoSisSoSoDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, A)), daughter(Alter, J).
;; 46
%kichok:0, sister[eq]:5, sister[eq]:2, children:0%
 Lvl=0,  PC=4, S=0, Star=0,  {FaSisSo}  
 male(Ego), father(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), son(Alter, C).
;; 47
%kichok:0, sister[eq]:5, sister[eq]:2, children:1%
 Lvl=0,  PC=4, S=0, Star=0,  {FaSisDa}  
 male(Ego), father(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(Alter, C).
;; 48
%kichok:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 49
%kichok:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 50
%kichok:0, sister[eq]:5, sister[eq]:4, children:0%
 Lvl=0,  PC=4, S=0, Star=0,  {FaSisSo}  
 male(Ego), father(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), son(Alter, C).
;; 51
%kichok:0, sister[eq]:5, sister[eq]:4, children:1%
 Lvl=0,  PC=4, S=0, Star=0,  {FaSisDa}  
 male(Ego), father(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(Alter, C).
;; 52
%kichok:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaSisSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 53
%kichok:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaSisDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 54
%kichok:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoBroDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(J, I), not(equal(J, D)), son(Alter, J).
;; 55
%kichok:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoBroDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(J, I), not(equal(J, D)), daughter(Alter, J).
;; 56
%kichok:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaMoBroSoDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(I, H), daughter(J, I), daughter(K, J), not(equal(K, D)), son(Alter, K).
;; 57
%kichok:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaMoBroSoDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(I, H), daughter(J, I), daughter(K, J), not(equal(K, D)), daughter(Alter, K).
;; 58
%kichok:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaSisSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), daughter(F, E), not(equal(F, D)), son(Alter, F).
;; 59
%kichok:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaSisDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), daughter(F, E), not(equal(F, D)), daughter(Alter, F).
;; 60
%kichok:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaBroDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), son(Alter, I).
;; 61
%kichok:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(Alter, I).
;; 62
%kichok:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaSisSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), daughter(F, E), not(equal(F, D)), son(Alter, F).
;; 63
%kichok:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaSisDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), daughter(F, E), not(equal(F, D)), daughter(Alter, F).
;; 64
%kichok:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaBroDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(Alter, I).
;; 65
%kichok:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaBroDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), daughter(Alter, I).
;; 66
%kichok:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaBroDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 67
%kichok:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaBroDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), daughter(Alter, H).
;; 68
%kichok:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, children:0%
 Lvl=0,  PC=14, S=0, Star=0,  {FaSisSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), son(Alter, K).
;; 69
%kichok:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0, children:1%
 Lvl=0,  PC=14, S=0, Star=0,  {FaSisDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(Alter, K).
;; 70
%kichok:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaBroDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 71
%kichok:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaBroDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), daughter(Alter, H).
;; 72
%kichok:0, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=0,  PC=14, S=0, Star=0,  {FaFaFaBroSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 73
%kichok:0, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=0,  PC=14, S=0, Star=0,  {FaFaFaBroSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(Alter, K).
;; 74
%kichok:0, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:2, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaFaBroSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 75
%kichok:0, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:2, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaFaBroSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), daughter(Alter, J).
;; 76
%kichok:0, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:4, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaFaBroSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 77
%kichok:0, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:4, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaFaBroSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), daughter(Alter, J).
;; 78
%kichok:0, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=0,  PC=14, S=0, Star=0,  {FaFaMoSisSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 79
%kichok:0, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=0,  PC=14, S=0, Star=0,  {FaFaMoSisSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(Alter, K).
;; 80
%kichok:0, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:2, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaMoSisSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 81
%kichok:0, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:2, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaMoSisSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), daughter(Alter, J).
;; 82
%kichok:0, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:4, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaMoSisSoDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 83
%kichok:0, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:4, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaMoSisSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), daughter(Alter, J).
;; 84
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoSisDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(Alter, I).
;; 85
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoSisDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), daughter(Alter, I).
;; 86
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoSisDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 87
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoSisDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), daughter(Alter, H).
;; 88
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:3, brother:0, sibling:0, children:0%
 Lvl=0,  PC=14, S=0, Star=0,  {FaMoSisHuBroDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), son(Alter, K).
;; 89
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:3, brother:0, sibling:0, children:1%
 Lvl=0,  PC=14, S=0, Star=0,  {FaMoSisHuBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(Alter, K).
;; 90
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoSisDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 91
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoSisDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), daughter(Alter, H).
;; 92
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoSisDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Alter, H).
;; 93
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoSisDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), daughter(Alter, H).
;; 94
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:2, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), daughter(G, F), not(equal(G, E)), son(Alter, G).
;; 95
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:2, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), daughter(G, F), not(equal(G, E)), daughter(Alter, G).
;; 96
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:3, brother:0, sibling:0, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoSisHuBroDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), son(Alter, J).
;; 97
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:3, brother:0, sibling:0, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoSisHuBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(Alter, J).
;; 98
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:4, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), daughter(G, F), not(equal(G, E)), son(Alter, G).
;; 99
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:4, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), daughter(G, F), not(equal(G, E)), daughter(Alter, G).
;; 100
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=0,  PC=14, S=0, Star=0,  {FaMoFaBroDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 101
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=0,  PC=14, S=0, Star=0,  {FaMoFaBroDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(Alter, K).
;; 102
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:2, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoFaBroDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 103
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:2, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoFaBroDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), daughter(Alter, J).
;; 104
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:4, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoFaBroDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 105
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:4, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoFaBroDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), daughter(Alter, J).
;; 106
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoSisDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Alter, H).
;; 107
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoSisDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), daughter(Alter, H).
;; 108
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:2, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), daughter(G, F), not(equal(G, E)), son(Alter, G).
;; 109
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:2, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), daughter(G, F), not(equal(G, E)), daughter(Alter, G).
;; 110
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:3, brother:0, sibling:0, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoSisHuBroDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), son(Alter, J).
;; 111
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:3, brother:0, sibling:0, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoSisHuBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(Alter, J).
;; 112
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:4, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), daughter(G, F), not(equal(G, E)), son(Alter, G).
;; 113
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:4, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), daughter(G, F), not(equal(G, E)), daughter(Alter, G).
;; 114
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoBroDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(Alter, J).
;; 115
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoBroDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), daughter(Alter, J).
;; 116
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), daughter(I, H), not(equal(I, G)), son(Alter, I).
;; 117
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), daughter(I, H), not(equal(I, G)), daughter(Alter, I).
;; 118
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), father(H, G), daughter(I, H), not(equal(I, G)), son(Alter, I).
;; 119
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), father(H, G), daughter(I, H), not(equal(I, G)), daughter(Alter, I).
;; 120
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaMoBroSoDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 121
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=14, S=0, Star=0,  {FaMoBroSoDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), daughter(Alter, K).
;; 122
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoBroSoDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 123
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoBroSoDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), daughter(Alter, J).
;; 124
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, children:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoBroSoDaDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 125
%kichok:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4, children:1%
 Lvl=-2,  PC=12, S=0, Star=0,  {FaMoBroSoDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), daughter(Alter, J).


kishlal(Alter, Ego) :-  male(Ego), sister[eq](Alter, Ego), younger(Alter, Ego).
{"FaBroDa_FaFaBroDa_FaFaFaBroSoDa_FaFaMoSisSoDa_FaMoBroDaDa_FaMoBroSoDaDa_FaMoFaBroDaDa_FaMoFaBroSoDaDa_FaMoFaBroSoSoDaDa_FaMoMoSisSoDaDa_FaMoMoSisSoSoDaDa_FaMoSisDa_FaMoSisHuBroDa_FaSis_MoBroDaDa_MoBroSoDaDa_MoFaBroDaDa_MoFaBroSoDaDa_MoFaBroSoSoDaDa_MoMoBroDaDaDa_MoMoBroSoDaDaDa_MoMoSisSoDaDa_MoMoSisSoSoDaDa_MoSisDa_Sis"}
;; 0
%kishlal:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).
;; 1
%kishlal:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 2
%kishlal:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(Alter, G), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 3
%kishlal:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 4
%kishlal:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=4, S=0, Star=0,  {MoSisDa}  
 male(Ego), mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(Alter, C), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 5
%kishlal:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 6
%kishlal:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=4, S=0, Star=0,  {MoSisDa}  
 male(Ego), mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(Alter, C), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 7
%kishlal:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 8
%kishlal:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 9
%kishlal:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 10
%kishlal:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 11
%kishlal:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 12
%kishlal:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 13
%kishlal:0, sister[eq]:2%
 Lvl=0,  PC=2, S=0, Star=0,  {Sis}  
 male(Ego), mother(A, Ego), daughter(Alter, A), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 14
%kishlal:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D), younger(Alter, Ego).
;; 15
%kishlal:0, sister[eq]:4%
 Lvl=0,  PC=2, S=0, Star=0,  {Sis}  
 male(Ego), father(A, Ego), daughter(Alter, A), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 16
%kishlal:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), younger(Alter, Ego).
;; 17
%kishlal:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, A)), younger(Alter, Ego).
;; 18
%kishlal:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H), not(equal(Alter, A)), younger(Alter, Ego).
;; 19
%kishlal:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(Alter, H), not(equal(Alter, A)), younger(Alter, Ego).
;; 20
%kishlal:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)), younger(Alter, Ego).
;; 21
%kishlal:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I), not(equal(Alter, A)), younger(Alter, Ego).
;; 22
%kishlal:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I), not(equal(Alter, A)), younger(Alter, Ego).
;; 23
%kishlal:0, sister[eq]:5, sister[eq]:2%
 Lvl=1,  PC=3, S=0, Star=0,  {FaSis}  
 male(Ego), father(A, Ego), mother(B, A), daughter(Alter, B), not(equal(Alter, A)), younger(Alter, Ego).
;; 24
%kishlal:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E), younger(Alter, Ego).
;; 25
%kishlal:0, sister[eq]:5, sister[eq]:4%
 Lvl=1,  PC=3, S=0, Star=0,  {FaSis}  
 male(Ego), father(A, Ego), father(B, A), daughter(Alter, B), not(equal(Alter, A)), younger(Alter, Ego).
;; 26
%kishlal:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaSis}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter), younger(Alter, Ego).
;; 27
%kishlal:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(Alter, I), not(equal(Alter, D)), younger(Alter, Ego).
;; 28
%kishlal:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoBroSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(I, H), daughter(J, I), daughter(Alter, J), not(equal(Alter, D)), younger(Alter, Ego).
;; 29
%kishlal:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=7, S=0, Star=0,  {FaSis}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), daughter(Alter, E), not(equal(Alter, D)), younger(Alter, Ego).
;; 30
%kishlal:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaBroDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(Alter, H), younger(Alter, Ego).
;; 31
%kishlal:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=7, S=0, Star=0,  {FaSis}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), daughter(Alter, E), not(equal(Alter, D)), younger(Alter, Ego).
;; 32
%kishlal:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaBroDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter), younger(Alter, Ego).
;; 33
%kishlal:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaBroDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), daughter(Alter, G), not(equal(Alter, F)), younger(Alter, Ego).
;; 34
%kishlal:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaSis}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(Alter, J), younger(Alter, Ego).
;; 35
%kishlal:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaBroDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), daughter(Alter, G), not(equal(Alter, F)), younger(Alter, Ego).
;; 36
%kishlal:0, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaFaFaBroSoDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter), younger(Alter, Ego).
;; 37
%kishlal:0, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaFaBroSoDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)), younger(Alter, Ego).
;; 38
%kishlal:0, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaFaBroSoDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)), younger(Alter, Ego).
;; 39
%kishlal:0, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaFaMoSisSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter), younger(Alter, Ego).
;; 40
%kishlal:0, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaMoSisSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)), younger(Alter, Ego).
;; 41
%kishlal:0, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaMoSisSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)), younger(Alter, Ego).
;; 42
%kishlal:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoSisDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter), younger(Alter, Ego).
;; 43
%kishlal:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoSisDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), daughter(Alter, G), not(equal(Alter, F)), younger(Alter, Ego).
;; 44
%kishlal:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaMoSisHuBroDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(Alter, J), younger(Alter, Ego).
;; 45
%kishlal:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoSisDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), daughter(Alter, G), not(equal(Alter, F)), younger(Alter, Ego).
;; 46
%kishlal:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoSisDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), female(Alter), younger(Alter, Ego).
;; 47
%kishlal:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:2%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), daughter(Alter, F), not(equal(Alter, E)), younger(Alter, Ego).
;; 48
%kishlal:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoSisHuBroDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(Alter, I), younger(Alter, Ego).
;; 49
%kishlal:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:4%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), daughter(Alter, F), not(equal(Alter, E)), younger(Alter, Ego).
;; 50
%kishlal:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaMoFaBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter), younger(Alter, Ego).
;; 51
%kishlal:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)), younger(Alter, Ego).
;; 52
%kishlal:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)), younger(Alter, Ego).
;; 53
%kishlal:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoSisDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), female(Alter), younger(Alter, Ego).
;; 54
%kishlal:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:2%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), daughter(Alter, F), not(equal(Alter, E)), younger(Alter, Ego).
;; 55
%kishlal:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoSisHuBroDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(Alter, I), younger(Alter, Ego).
;; 56
%kishlal:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:4%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), daughter(Alter, F), not(equal(Alter, E)), younger(Alter, Ego).
;; 57
%kishlal:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), father(I, G), child(Alter, H), child(Alter, I), not(equal(Alter, G)), female(Alter), younger(Alter, Ego).
;; 58
%kishlal:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), daughter(Alter, H), not(equal(Alter, G)), younger(Alter, Ego).
;; 59
%kishlal:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), father(H, G), daughter(Alter, H), not(equal(Alter, G)), younger(Alter, Ego).
;; 60
%kishlal:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoBroSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter), younger(Alter, Ego).
;; 61
%kishlal:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)), younger(Alter, Ego).
;; 62
%kishlal:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)), younger(Alter, Ego).


kitzin(Alter, Ego) :-  male(Ego), brother[eq](Alter, Ego), younger(Alter, Ego).
{"Bro_FaBroSo_FaFaBroSoSo_FaMoSisSoSo_MoBroDaSo_MoBroSoDaSo_MoFaBroDaSo_MoFaBroSoDaSo_MoFaBroSoSoDaSo_MoFaFaBroDaSo_MoFaMoBroDaDaSo_MoFaMoBroSoDaDaSo_MoFaMoSisDaSo_MoFaSisSo_MoMoBroDaDaSo_MoMoBroSoDaDaSo_MoMoFaBroDaDaSo_MoMoFaBroSoDaDaSo_MoMoMoSisSoDaDaSo_MoMoSisDaSo_MoMoSisSoDaSo_MoMoSisSoSoDaSo_MoSisSo"}
;; 0
%kitzin:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).
;; 1
%kitzin:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D), younger(Alter, Ego).
;; 2
%kitzin:0, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 3
%kitzin:0, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 4
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D), younger(Alter, Ego).
;; 5
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F), younger(Alter, Ego).
;; 6
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=6, S=0, Star=0,  {MoMoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), son(Alter, E), younger(Alter, Ego).
;; 7
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H), younger(Alter, Ego).
;; 8
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=6, S=0, Star=0,  {MoMoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), son(Alter, E), younger(Alter, Ego).
;; 9
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(Alter, G), younger(Alter, Ego).
;; 10
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(Alter, I), younger(Alter, Ego).
;; 11
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(Alter, I), younger(Alter, Ego).
;; 12
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H), younger(Alter, Ego).
;; 13
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=4, S=0, Star=0,  {MoSisSo}  
 male(Ego), mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), son(Alter, C), younger(Alter, Ego).
;; 14
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 15
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=4, S=0, Star=0,  {MoSisSo}  
 male(Ego), mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), son(Alter, C), younger(Alter, Ego).
;; 16
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E), younger(Alter, Ego).
;; 17
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H), younger(Alter, Ego).
;; 18
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, B)), son(Alter, I), younger(Alter, Ego).
;; 19
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=1,  PC=5, S=0, Star=0,  {MoFaSisSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(Alter, D), younger(Alter, Ego).
;; 20
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G), younger(Alter, Ego).
;; 21
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=1,  PC=5, S=0, Star=0,  {MoFaSisSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(Alter, D), younger(Alter, Ego).
;; 22
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaSisSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Alter, H), younger(Alter, Ego).
;; 23
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaSisSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), daughter(G, F), not(equal(G, E)), son(Alter, G), younger(Alter, Ego).
;; 24
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaSisSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), daughter(G, F), not(equal(G, E)), son(Alter, G), younger(Alter, Ego).
;; 25
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {MoFaFaBroDaSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(Alter, J), younger(Alter, Ego).
;; 26
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaFaBroDaSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), daughter(I, H), not(equal(I, G)), son(Alter, I), younger(Alter, Ego).
;; 27
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaFaBroDaSo}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), father(H, G), daughter(I, H), not(equal(I, G)), son(Alter, I), younger(Alter, Ego).
;; 28
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {MoFaMoSisDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(Alter, J), younger(Alter, Ego).
;; 29
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), daughter(I, H), not(equal(I, G)), son(Alter, I), younger(Alter, Ego).
;; 30
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), father(H, G), daughter(I, H), not(equal(I, G)), son(Alter, I), younger(Alter, Ego).
;; 31
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(Alter, I), younger(Alter, Ego).
;; 32
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(Alter, I), younger(Alter, Ego).
;; 33
%kitzin:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {MoFaMoBroDaDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K), younger(Alter, Ego).
;; 34
%kitzin:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E), younger(Alter, Ego).
;; 35
%kitzin:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G), younger(Alter, Ego).
;; 36
%kitzin:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G), younger(Alter, Ego).
;; 37
%kitzin:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 38
%kitzin:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H), younger(Alter, Ego).
;; 39
%kitzin:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H), younger(Alter, Ego).


kol(Alter, Ego) :-  son(Alter, Ego), female(Ego).
                |   daughter(Alter, Ego), female(Ego).
{"Da_So"}
;; 0
%kol:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego), female(Ego).
;; 1
%kol:1%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego), female(Ego).


malal(Alter, Ego) :-  husband(Alter, Ego).
{"Hu"}
;; 0
%malal:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).


me(Alter, Ego) :-  mother(Alter, Ego).
{"Mo"}
;; 0
%me:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).


melalem(Alter, Ego) :-  husband(A, Ego), mother[eq](Alter, A).
{"HuFaBroWi_HuFaFaBroSoWi_HuFaMoBroDaSoWi_HuFaMoFaSisSoWi_HuFaMoMoSisDaSoWi_HuFaMoSisSoWi_HuMo_HuMoBroDa_HuMoBroSoDa_HuMoFaBroDa_HuMoFaBroSoDa_HuMoFaBroSoSoDa_HuMoFaFaBroDa_HuMoFaMoSisDa_HuMoFaSis_HuMoMoBroDaDa_HuMoMoSisDa_HuMoMoSisSoDa_HuMoMoSisSoSoDa_HuMoSis"}
;; 0
%melalem:0, mother[eq]:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 1
%melalem:0, mother[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoSis}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 2
%melalem:0, mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoMoSisDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F), not(equal(Alter, B)).
;; 3
%melalem:0, mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoMoSisDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), daughter(Alter, E), not(equal(Alter, B)).
;; 4
%melalem:0, mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoMoSisDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), daughter(Alter, E), not(equal(Alter, B)).
;; 5
%melalem:0, mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, B)).
;; 6
%melalem:0, mother[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=1,  PC=3, S=1, Star=0,  {HuMoSis}  
 husband(A, Ego), mother(B, A), mother(C, B), daughter(Alter, C), not(equal(Alter, B)).
;; 7
%melalem:0, mother[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoFaBroDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 8
%melalem:0, mother[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=1,  PC=3, S=1, Star=0,  {HuMoSis}  
 husband(A, Ego), mother(B, A), father(C, B), daughter(Alter, C), not(equal(Alter, B)).
;; 9
%melalem:0, mother[eq]:1, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoFaSis}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 10
%melalem:0, mother[eq]:1, sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=2,  PC=4, S=1, Star=0,  {HuMoFaSis}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), daughter(Alter, D), not(equal(Alter, C)).
;; 11
%melalem:0, mother[eq]:1, sister[eq]1:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoFaFaBroDa}  
 husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 12
%melalem:0, mother[eq]:1, sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=2,  PC=4, S=1, Star=0,  {HuMoFaSis}  
 husband(A, Ego), mother(B, A), father(C, B), father(D, C), daughter(Alter, D), not(equal(Alter, C)).
;; 13
%melalem:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoFaSis}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), mother(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 14
%melalem:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoFaSis}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), father(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 15
%melalem:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=12, S=1, Star=0,  {HuMoFaFaBroDa}  
 husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 16
%melalem:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=2,  PC=10, S=1, Star=0,  {HuMoFaFaBroDa}  
 husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 17
%melalem:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=2,  PC=10, S=1, Star=0,  {HuMoFaFaBroDa}  
 husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 18
%melalem:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=12, S=1, Star=0,  {HuMoFaMoSisDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 19
%melalem:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2%
 Lvl=2,  PC=10, S=1, Star=0,  {HuMoFaMoSisDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 20
%melalem:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4%
 Lvl=2,  PC=10, S=1, Star=0,  {HuMoFaMoSisDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 21
%melalem:0, mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 22
%melalem:0, mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 23
%melalem:0, mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 24
%melalem:0, mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 25
%melalem:0, mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoFaBroSoSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(Alter, H).
;; 26
%melalem:0, mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoSisSoSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(Alter, H).
;; 27
%melalem:0, mother[eq]:2, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=2, Star=0,  {HuFaBroWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 28
%melalem:0, mother[eq]:2, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=2, Star=0,  {HuFaFaBroSoWi}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), wife(Alter, G).
;; 29
%melalem:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=2, Star=0,  {HuFaMoSisSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), wife(Alter, G).
;; 30
%melalem:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=2, Star=0,  {HuFaMoMoSisDaSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), son(I, H), wife(Alter, I).
;; 31
%melalem:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:2%
 Lvl=1,  PC=5, S=2, Star=0,  {HuFaMoSisSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), wife(Alter, F).
;; 32
%melalem:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:4%
 Lvl=1,  PC=5, S=2, Star=0,  {HuFaMoSisSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), wife(Alter, F).
;; 33
%melalem:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=2, Star=0,  {HuFaMoFaSisSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), wife(Alter, H).
;; 34
%melalem:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=2,  PC=10, S=2, Star=0,  {HuFaMoFaSisSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), mother(H, G), daughter(I, H), not(equal(I, G)), son(J, I), wife(Alter, J).
;; 35
%melalem:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=2,  PC=10, S=2, Star=0,  {HuFaMoFaSisSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), father(H, G), daughter(I, H), not(equal(I, G)), son(J, I), wife(Alter, J).
;; 36
%melalem:0, mother[eq]:2, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoBroDaSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), wife(Alter, H).


meni(Alter, Ego) :-  wife(A, Ego), mother[eq](Alter, A).
{"WiFaBroWi_WiFaFaBroSoWi_WiFaMoBroDaSoWi_WiFaMoFaSisSoWi_WiFaMoMoSisDaSoWi_WiFaMoSisSoWi_WiMo_WiMoBroDa_WiMoBroSoDa_WiMoFaBroDa_WiMoFaBroSoDa_WiMoFaBroSoSoDa_WiMoFaFaBroDa_WiMoFaMoSisDa_WiMoFaSis_WiMoMoBroDaDa_WiMoMoSisDa_WiMoMoSisSoDa_WiMoMoSisSoSoDa_WiMoSis"}
;; 0
%meni:0, mother[eq]:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).
;; 1
%meni:0, mother[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoSis}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 2
%meni:0, mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoMoSisDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F), not(equal(Alter, B)).
;; 3
%meni:0, mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoMoSisDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), daughter(Alter, E), not(equal(Alter, B)).
;; 4
%meni:0, mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoMoSisDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), daughter(Alter, E), not(equal(Alter, B)).
;; 5
%meni:0, mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, B)).
;; 6
%meni:0, mother[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=1,  PC=3, S=1, Star=0,  {WiMoSis}  
 wife(A, Ego), mother(B, A), mother(C, B), daughter(Alter, C), not(equal(Alter, B)).
;; 7
%meni:0, mother[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoFaBroDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 8
%meni:0, mother[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=1,  PC=3, S=1, Star=0,  {WiMoSis}  
 wife(A, Ego), mother(B, A), father(C, B), daughter(Alter, C), not(equal(Alter, B)).
;; 9
%meni:0, mother[eq]:1, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoFaSis}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 10
%meni:0, mother[eq]:1, sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=2,  PC=4, S=1, Star=0,  {WiMoFaSis}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), daughter(Alter, D), not(equal(Alter, C)).
;; 11
%meni:0, mother[eq]:1, sister[eq]1:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoFaFaBroDa}  
 wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 12
%meni:0, mother[eq]:1, sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=2,  PC=4, S=1, Star=0,  {WiMoFaSis}  
 wife(A, Ego), mother(B, A), father(C, B), father(D, C), daughter(Alter, D), not(equal(Alter, C)).
;; 13
%meni:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoFaSis}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), mother(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 14
%meni:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoFaSis}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), father(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 15
%meni:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=12, S=1, Star=0,  {WiMoFaFaBroDa}  
 wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 16
%meni:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=2,  PC=10, S=1, Star=0,  {WiMoFaFaBroDa}  
 wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 17
%meni:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=2,  PC=10, S=1, Star=0,  {WiMoFaFaBroDa}  
 wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 18
%meni:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=12, S=1, Star=0,  {WiMoFaMoSisDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 19
%meni:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2%
 Lvl=2,  PC=10, S=1, Star=0,  {WiMoFaMoSisDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 20
%meni:0, mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4%
 Lvl=2,  PC=10, S=1, Star=0,  {WiMoFaMoSisDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 21
%meni:0, mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoBroDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 22
%meni:0, mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroSoDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 23
%meni:0, mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 24
%meni:0, mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 25
%meni:0, mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaBroSoSoDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(Alter, H).
;; 26
%meni:0, mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoSisSoSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(Alter, H).
;; 27
%meni:0, mother[eq]:2, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=2, Star=0,  {WiFaBroWi}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 28
%meni:0, mother[eq]:2, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=2, Star=0,  {WiFaFaBroSoWi}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), wife(Alter, G).
;; 29
%meni:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=2, Star=0,  {WiFaMoSisSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), wife(Alter, G).
;; 30
%meni:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=2, Star=0,  {WiFaMoMoSisDaSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), son(I, H), wife(Alter, I).
;; 31
%meni:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:2%
 Lvl=1,  PC=5, S=2, Star=0,  {WiFaMoSisSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), wife(Alter, F).
;; 32
%meni:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:4%
 Lvl=1,  PC=5, S=2, Star=0,  {WiFaMoSisSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), wife(Alter, F).
;; 33
%meni:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=2, Star=0,  {WiFaMoFaSisSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), wife(Alter, H).
;; 34
%meni:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=2,  PC=10, S=2, Star=0,  {WiFaMoFaSisSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), mother(H, G), daughter(I, H), not(equal(I, G)), son(J, I), wife(Alter, J).
;; 35
%meni:0, mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=2,  PC=10, S=2, Star=0,  {WiFaMoFaSisSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), father(H, G), daughter(I, H), not(equal(I, G)), son(J, I), wife(Alter, J).
;; 36
%meni:0, mother[eq]:2, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaMoBroDaSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), wife(Alter, H).


molalim(Alter, Ego) :-  husband(A, Ego), father[eq](Alter, A).
                    |   husband(A, Ego), mother(B, A), brother(Alter, B).
{"HuFa_HuFaBro_HuFaFaBroSo_HuFaFaFaBroSoSo_HuFaFaMoSisSoSo_HuFaMoBroDaSo_HuFaMoBroSoDaSo_HuFaMoFaBroDaSo_HuFaMoFaSisSo_HuFaMoMoSisDaSo_HuFaMoSisSo_HuMoBro"}
;; 0
%molalim:0, father[eq]:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).
;; 1
%molalim:0, father[eq]:1, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuFaBro}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 2
%molalim:0, father[eq]:1, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaFaBroSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 3
%molalim:0, father[eq]:1, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuFaFaFaBroSoSo}  
 husband(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 4
%molalim:0, father[eq]:1, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuFaFaMoSisSoSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 5
%molalim:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaMoSisSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 6
%molalim:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuFaMoMoSisDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), son(Alter, H).
;; 7
%molalim:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:2%
 Lvl=1,  PC=5, S=1, Star=0,  {HuFaMoSisSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(Alter, E).
;; 8
%molalim:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuFaMoFaBroDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 9
%molalim:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:4%
 Lvl=1,  PC=5, S=1, Star=0,  {HuFaMoSisSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(Alter, E).
;; 10
%molalim:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaMoFaSisSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 11
%molalim:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaMoFaSisSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), daughter(F, E), not(equal(F, D)), son(Alter, F).
;; 12
%molalim:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaMoFaSisSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, C), father(E, D), daughter(F, E), not(equal(F, D)), son(Alter, F).
;; 13
%molalim:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=2,  PC=10, S=1, Star=0,  {HuFaMoFaSisSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), mother(H, G), daughter(I, H), not(equal(I, G)), son(Alter, I).
;; 14
%molalim:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=2,  PC=10, S=1, Star=0,  {HuFaMoFaSisSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), father(H, G), daughter(I, H), not(equal(I, G)), son(Alter, I).
;; 15
%molalim:0, father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 16
%molalim:0, father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoBroSoDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 17
%molalim:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoBro}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).


moltot(Alter, Ego) :-  father(A, Ego), father(Alter, A).
                   |   mother(A, Ego), father(Alter, A).
                   |   father(A, Ego), moltot(Alter, A).
                   |   mother(A, Ego), moltot(Alter, A).
{"FaFa_FaFaFa_FaMoFa_MoFa_MoFaFa_MoMoFa"}
;; 0
%moltot:0%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).
;; 1
%moltot:1%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 2
%moltot:2, moltot:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
 father(A, Ego), father(B, A), father(Alter, B).
;; 3
%moltot:2, moltot:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
 father(A, Ego), mother(B, A), father(Alter, B).
;; 4
%moltot:3, moltot:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
 mother(A, Ego), father(B, A), father(Alter, B).
;; 5
%moltot:3, moltot:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
 mother(A, Ego), mother(B, A), father(Alter, B).


moni(Alter, Ego) :-  wife(A, Ego), father[eq](Alter, A).
{"WiFa_WiFaBro_WiFaFaBroSo_WiFaFaFaBroSoSo_WiFaFaMoSisSoSo_WiFaMoBroDaSo_WiFaMoBroSoDaSo_WiFaMoFaBroDaSo_WiFaMoFaSisSo_WiFaMoMoSisDaSo_WiFaMoSisSo"}
;; 0
%moni:0, father[eq]:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).
;; 1
%moni:0, father[eq]:1, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaBro}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 2
%moni:0, father[eq]:1, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaFaBroSo}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 3
%moni:0, father[eq]:1, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaFaBroSoSo}  
 wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 4
%moni:0, father[eq]:1, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaMoSisSoSo}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 5
%moni:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaMoSisSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 6
%moni:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoMoSisDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), son(Alter, H).
;; 7
%moni:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:2%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaMoSisSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(Alter, E).
;; 8
%moni:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoFaBroDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 9
%moni:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:4%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaMoSisSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(Alter, E).
;; 10
%moni:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaMoFaSisSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 11
%moni:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaMoFaSisSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), daughter(F, E), not(equal(F, D)), son(Alter, F).
;; 12
%moni:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaMoFaSisSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, C), father(E, D), daughter(F, E), not(equal(F, D)), son(Alter, F).
;; 13
%moni:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=2,  PC=10, S=1, Star=0,  {WiFaMoFaSisSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), mother(H, G), daughter(I, H), not(equal(I, G)), son(Alter, I).
;; 14
%moni:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=2,  PC=10, S=1, Star=0,  {WiFaMoFaSisSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), father(H, G), daughter(I, H), not(equal(I, G)), son(Alter, I).
;; 15
%moni:0, father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 16
%moni:0, father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoBroSoDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).


mother[eq](Alter, Ego) :-  mother(Alter, Ego).
                       |   mother(A, Ego), sister[eq]1(Alter, A).
                       |   father(A, Ego), brother[eq](B, A), wife(Alter, B).
;; 0
%mother[eq]:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(Alter, Ego).
;; 1
%mother[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E), not(equal(Alter, A)).
;; 3
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), daughter(Alter, D), not(equal(Alter, A)).
;; 4
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 5
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), daughter(Alter, D), not(equal(Alter, A)).
;; 6
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, A)).
;; 7
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 8
%mother[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), daughter(Alter, B), not(equal(Alter, A)).
;; 9
%mother[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 10
%mother[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), daughter(Alter, B), not(equal(Alter, A)).
;; 11
%mother[eq]:1, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 12
%mother[eq]:1, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, B)).
;; 13
%mother[eq]:1, sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), daughter(Alter, C), not(equal(Alter, B)).
;; 14
%mother[eq]:1, sister[eq]1:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 15
%mother[eq]:1, sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), daughter(Alter, C), not(equal(Alter, B)).
;; 16
%mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), female(Alter).
;; 17
%mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(Alter, J), not(equal(Alter, E)).
;; 18
%mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), son(J, I), daughter(K, J), daughter(Alter, K), not(equal(Alter, E)).
;; 19
%mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), daughter(Alter, F), not(equal(Alter, E)).
;; 20
%mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(Alter, I).
;; 21
%mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), daughter(Alter, F), not(equal(Alter, E)).
;; 22
%mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), father(I, G), child(Alter, H), child(Alter, I), not(equal(Alter, G)), female(Alter).
;; 23
%mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), father(I, G), child(Alter, H), child(Alter, I), not(equal(Alter, G)), female(Alter).
;; 24
%mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 25
%mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 26
%mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), father(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 27
%mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 28
%mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 29
%mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), father(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 30
%mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 31
%mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 32
%mother[eq]:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 33
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 34
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 35
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 36
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 37
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 38
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 39
%mother[eq]:2, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 40
%mother[eq]:2, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), wife(Alter, F).
;; 41
%mother[eq]:2, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), wife(Alter, H).
;; 42
%mother[eq]:2, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), wife(Alter, H).
;; 43
%mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), wife(Alter, F).
;; 44
%mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(H, G), wife(Alter, H).
;; 45
%mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), daughter(F, E), not(equal(F, B)), son(G, F), wife(Alter, G).
;; 46
%mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), daughter(F, E), not(equal(F, B)), son(G, F), wife(Alter, G).
;; 47
%mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(I, H), wife(Alter, I).
;; 48
%mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), wife(Alter, E).
;; 49
%mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), wife(Alter, H).
;; 50
%mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), wife(Alter, E).
;; 51
%mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), wife(Alter, G).
;; 52
%mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), wife(Alter, F).
;; 53
%mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), wife(Alter, F).
;; 54
%mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), mother(G, F), daughter(H, G), not(equal(H, F)), son(I, H), wife(Alter, I).
;; 55
%mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), father(G, F), daughter(H, G), not(equal(H, F)), son(I, H), wife(Alter, I).
;; 56
%mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), wife(Alter, L).
;; 57
%mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(K, J), wife(Alter, K).
;; 58
%mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(K, J), wife(Alter, K).
;; 59
%mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), wife(Alter, L).
;; 60
%mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(K, J), wife(Alter, K).
;; 61
%mother[eq]:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(K, J), wife(Alter, K).
;; 62
%mother[eq]:2, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), wife(Alter, G).
;; 63
%mother[eq]:2, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), wife(Alter, H).


mu(Alter, Ego) :-  male(Ego), brother(A, Ego), wife(Alter, A).
               |   wife(A, Ego), sister[eq]1(Alter, A).
               |   female(Ego), sister[eq]1(A, Ego), husband(Alter, A).
               |   husband(A, Ego), brother(Alter, A).
{"BroDaHu_BroSoDaHu_BroWi_FaBroDaHu_FaBroSoDaHu_FaBroSoSoDaHu_FaFaBroDaHu_FaFaFaBroSoDaHu_FaFaMoSisSoDaHu_FaMoBroDaDaHu_FaMoBroSoDaDaHu_FaMoFaBroDaDaHu_FaMoFaBroSoDaDaHu_FaMoFaBroSoSoDaDaHu_FaMoMoSisSoDaDaHu_FaMoMoSisSoSoDaDaHu_FaMoSisDaHu_FaMoSisHuBroDaHu_FaSisHu_HuBro_MoBroDaDaHu_MoBroSoDaDaHu_MoFaBroDaDaHu_MoFaBroSoDaDaHu_MoFaBroSoSoDaDaHu_MoMoSisSoDaDaHu_MoMoSisSoSoDaDaHu_MoSisDaHu_MoSisSoDaHu_MoSisSoSoDaHu_SisHu_WiBroDa_WiBroSoDa_WiFaBroDa_WiFaBroSoDa_WiFaBroSoSoDa_WiFaFaBroDa_WiFaMoBroDaDa_WiFaMoBroSoDaDa_WiFaMoSisDa_WiFaSis_WiMoBroDaDa_WiMoBroSoDaDa_WiMoFaBroDaDa_WiMoSisDa_WiMoSisSoDa_WiMoSisSoSoDa_WiSis"}
;; 0
%mu:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C).
;; 1
%mu:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%mu:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E), not(equal(Alter, A)).
;; 3
%mu:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=4, S=1, Star=0,  {WiMoSisDa}  
 wife(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), daughter(Alter, D), not(equal(Alter, A)).
;; 4
%mu:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroDaDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 5
%mu:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=4, S=1, Star=0,  {WiMoSisDa}  
 wife(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), daughter(Alter, D), not(equal(Alter, A)).
;; 6
%mu:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, A)).
;; 7
%mu:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroSoDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 8
%mu:1, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=2, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), daughter(Alter, B), not(equal(Alter, A)).
;; 9
%mu:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 10
%mu:1, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=2, S=1, Star=0,  {WiSis}  
 wife(A, Ego), father(B, A), daughter(Alter, B), not(equal(Alter, A)).
;; 11
%mu:1, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaSis}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 12
%mu:1, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, B)).
;; 13
%mu:1, sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=1,  PC=3, S=1, Star=0,  {WiFaSis}  
 wife(A, Ego), father(B, A), mother(C, B), daughter(Alter, C), not(equal(Alter, B)).
;; 14
%mu:1, sister[eq]1:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaFaBroDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 15
%mu:1, sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=1,  PC=3, S=1, Star=0,  {WiFaSis}  
 wife(A, Ego), father(B, A), father(C, B), daughter(Alter, C), not(equal(Alter, B)).
;; 16
%mu:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaSis}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), female(Alter).
;; 17
%mu:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {WiFaMoBroDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(Alter, J), not(equal(Alter, E)).
;; 18
%mu:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=13, S=1, Star=0,  {WiFaMoBroSoDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), son(J, I), daughter(K, J), daughter(Alter, K), not(equal(Alter, E)).
;; 19
%mu:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaSis}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), daughter(Alter, F), not(equal(Alter, E)).
;; 20
%mu:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=11, S=1, Star=0,  {WiFaFaBroDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(Alter, I).
;; 21
%mu:1, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaSis}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), daughter(Alter, F), not(equal(Alter, E)).
;; 22
%mu:1, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=1, Star=0,  {WiFaFaBroDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), father(I, G), child(Alter, H), child(Alter, I), not(equal(Alter, G)), female(Alter).
;; 23
%mu:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=1, Star=0,  {WiFaMoSisDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), father(I, G), child(Alter, H), child(Alter, I), not(equal(Alter, G)), female(Alter).
;; 24
%mu:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoSisDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 25
%mu:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:2%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaMoSisDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 26
%mu:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:4%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaMoSisDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), father(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 27
%mu:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoSisDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 28
%mu:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:2%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaMoSisDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 29
%mu:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:4%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaMoSisDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), father(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 30
%mu:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {WiFaMoBroDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 31
%mu:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=10, S=1, Star=0,  {WiFaMoBroDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 32
%mu:1, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=10, S=1, Star=0,  {WiFaMoBroDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 33
%mu:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 34
%mu:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 35
%mu:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 36
%mu:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroSoDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 37
%mu:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroSoSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 38
%mu:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisSoSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 39
%mu:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).
;; 40
%mu:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), husband(Alter, E).
;; 41
%mu:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=4, S=1, Star=0,  {MoSisDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), husband(Alter, D).
;; 42
%mu:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaDaHu}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), husband(Alter, G).
;; 43
%mu:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=4, S=1, Star=0,  {MoSisDaHu}  
 female(Ego), mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(D, C), not(equal(D, Ego)), husband(Alter, D).
;; 44
%mu:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), not(equal(F, Ego)), husband(Alter, F).
;; 45
%mu:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoDaDaHu}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), husband(Alter, H).
;; 46
%mu:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, Ego)), husband(Alter, H).
;; 47
%mu:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroSoDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), not(equal(G, Ego)), husband(Alter, G).
;; 48
%mu:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {MoFaBroSoSoDaDaHu}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), husband(Alter, I).
;; 49
%mu:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=1, Star=0,  {MoMoSisSoSoDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, Ego)), husband(Alter, I).
;; 50
%mu:2, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=2, S=1, Star=0,  {SisHu}  
 female(Ego), mother(A, Ego), daughter(B, A), not(equal(B, Ego)), husband(Alter, B).
;; 51
%mu:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E).
;; 52
%mu:2, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=2, S=1, Star=0,  {SisHu}  
 female(Ego), father(A, Ego), daughter(B, A), not(equal(B, Ego)), husband(Alter, B).
;; 53
%mu:2, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 54
%mu:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), husband(Alter, G).
;; 55
%mu:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaBroSoDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), husband(Alter, I).
;; 56
%mu:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoSisSoDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), husband(Alter, I).
;; 57
%mu:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroSoDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), husband(Alter, H).
;; 58
%mu:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoFaBroSoSoDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, A)), husband(Alter, J).
;; 59
%mu:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoMoSisSoSoDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(J, I), not(equal(J, A)), husband(Alter, J).
;; 60
%mu:2, sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=1,  PC=3, S=1, Star=0,  {FaSisHu}  
 female(Ego), father(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), husband(Alter, C).
;; 61
%mu:2, sister[eq]1:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaBroDaHu}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), husband(Alter, F).
;; 62
%mu:2, sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=1,  PC=3, S=1, Star=0,  {FaSisHu}  
 female(Ego), father(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), husband(Alter, C).
;; 63
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaSisHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), husband(Alter, G).
;; 64
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {FaMoBroDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(J, I), not(equal(J, D)), husband(Alter, J).
;; 65
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=13, S=1, Star=0,  {FaMoBroSoDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(I, H), daughter(J, I), daughter(K, J), not(equal(K, D)), husband(Alter, K).
;; 66
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=7, S=1, Star=0,  {FaSisHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), daughter(F, E), not(equal(F, D)), husband(Alter, F).
;; 67
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=11, S=1, Star=0,  {FaFaBroDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), husband(Alter, I).
;; 68
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=7, S=1, Star=0,  {FaSisHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), daughter(F, E), not(equal(F, D)), husband(Alter, F).
;; 69
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=1, Star=0,  {FaFaBroDaHu}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), husband(Alter, I).
;; 70
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaBroDaHu}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), husband(Alter, H).
;; 71
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=13, S=1, Star=0,  {FaSisHu}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), husband(Alter, K).
;; 72
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaBroDaHu}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), husband(Alter, H).
;; 73
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=1, Star=0,  {FaFaFaBroSoDaHu}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 74
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=1, Star=0,  {FaFaFaBroSoDaHu}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), husband(Alter, J).
;; 75
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=1, Star=0,  {FaFaFaBroSoDaHu}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), husband(Alter, J).
;; 76
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=1, Star=0,  {FaFaMoSisSoDaHu}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 77
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=1, Star=0,  {FaFaMoSisSoDaHu}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), husband(Alter, J).
;; 78
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=1, Star=0,  {FaFaMoSisSoDaHu}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), husband(Alter, J).
;; 79
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=1, Star=0,  {FaMoSisDaHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), husband(Alter, I).
;; 80
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoSisDaHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), daughter(H, G), not(equal(H, F)), husband(Alter, H).
;; 81
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=13, S=1, Star=0,  {FaMoSisHuBroDaHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), husband(Alter, K).
;; 82
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoSisDaHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), daughter(H, G), not(equal(H, F)), husband(Alter, H).
;; 83
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoSisDaHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), husband(Alter, H).
;; 84
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:2%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisDaHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), daughter(G, F), not(equal(G, E)), husband(Alter, G).
;; 85
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=11, S=1, Star=0,  {FaMoSisHuBroDaHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), husband(Alter, J).
;; 86
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:4%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisDaHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), daughter(G, F), not(equal(G, E)), husband(Alter, G).
;; 87
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=1, Star=0,  {FaMoFaBroDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 88
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=1, Star=0,  {FaMoFaBroDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), husband(Alter, J).
;; 89
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=1, Star=0,  {FaMoFaBroDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), husband(Alter, J).
;; 90
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoSisDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), husband(Alter, H).
;; 91
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:2%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), daughter(G, F), not(equal(G, E)), husband(Alter, G).
;; 92
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=11, S=1, Star=0,  {FaMoSisHuBroDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), husband(Alter, J).
;; 93
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:4%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), daughter(G, F), not(equal(G, E)), husband(Alter, G).
;; 94
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {FaMoBroDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), husband(Alter, J).
;; 95
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoBroDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), daughter(I, H), not(equal(I, G)), husband(Alter, I).
;; 96
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoBroDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), father(H, G), daughter(I, H), not(equal(I, G)), husband(Alter, I).
;; 97
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=13, S=1, Star=0,  {FaMoBroSoDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 98
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoBroSoDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), husband(Alter, J).
;; 99
%mu:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoBroSoDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), husband(Alter, J).
;; 100
%mu:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), husband(Alter, D).
;; 101
%mu:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), husband(Alter, F).
;; 102
%mu:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), husband(Alter, F).
;; 103
%mu:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroSoDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), husband(Alter, E).
;; 104
%mu:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroSoSoDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), husband(Alter, G).
;; 105
%mu:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisSoSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), husband(Alter, G).
;; 106
%mu:3, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


muk(Alter, Ego) :-  female(Ego), brother[eq](Alter, Ego), younger(Alter, Ego).
                |   female(Ego), sister[eq](Alter, Ego), younger(Alter, Ego).
                |   female(Ego), brother[eq](A, Ego), son(Alter, A).
                |   female(Ego), brother[eq](A, Ego), daughter(Alter, A).
{"Bro_BroDa_BroSo_FaBroDa_FaBroSo_FaBroSoDa_FaBroSoSo_FaFaBroDa_FaFaBroSoSo_FaFaBroSoSoDa_FaFaBroSoSoSo_FaFaFaBroSoDa_FaFaMoSisSoDa_FaMoBroDaDa_FaMoBroSoDaDa_FaMoFaBroDaDa_FaMoFaBroSoDaDa_FaMoFaBroSoSoDaDa_FaMoMoSisSoDaDa_FaMoMoSisSoSoDaDa_FaMoSisDa_FaMoSisHuBroDa_FaMoSisSoSo_FaMoSisSoSoDa_FaMoSisSoSoSo_FaSis_MoBroDaDa_MoBroDaSo_MoBroDaSoDa_MoBroDaSoSo_MoBroSoDaDa_MoBroSoDaSo_MoBroSoDaSoDa_MoBroSoDaSoSo_MoFaBroDaDa_MoFaBroDaSo_MoFaBroDaSoDa_MoFaBroDaSoSo_MoFaBroSoDaDa_MoFaBroSoDaSo_MoFaBroSoDaSoDa_MoFaBroSoDaSoSo_MoFaBroSoSoDaDa_MoFaBroSoSoDaSo_MoFaBroSoSoDaSoDa_MoFaBroSoSoDaSoSo_MoFaFaBroDaSo_MoFaFaBroDaSoDa_MoFaFaBroDaSoSo_MoFaMoBroDaDaSo_MoFaMoBroDaDaSoDa_MoFaMoBroDaDaSoSo_MoFaMoBroSoDaDaSo_MoFaMoBroSoDaDaSoDa_MoFaMoBroSoDaDaSoSo_MoFaMoSisDaSo_MoFaMoSisDaSoDa_MoFaMoSisDaSoSo_MoFaSisSo_MoFaSisSoDa_MoFaSisSoSo_MoMoBroDaDaDa_MoMoBroDaDaSo_MoMoBroDaDaSoDa_MoMoBroDaDaSoSo_MoMoBroSoDaDaDa_MoMoBroSoDaDaSo_MoMoBroSoDaDaSoDa_MoMoBroSoDaDaSoSo_MoMoFaBroDaDaSo_MoMoFaBroDaDaSoDa_MoMoFaBroDaDaSoSo_MoMoFaBroSoDaDaSo_MoMoFaBroSoDaDaSoDa_MoMoFaBroSoDaDaSoSo_MoMoMoSisSoDaDaSo_MoMoMoSisSoDaDaSoDa_MoMoMoSisSoDaDaSoSo_MoMoSisDaSo_MoMoSisDaSoDa_MoMoSisDaSoSo_MoMoSisSoDaDa_MoMoSisSoDaSo_MoMoSisSoDaSoDa_MoMoSisSoDaSoSo_MoMoSisSoSoDaDa_MoMoSisSoSoDaSo_MoMoSisSoSoDaSoDa_MoMoSisSoSoDaSoSo_MoSisDa_MoSisSo_MoSisSoDa_MoSisSoSo_Sis"}
;; 0
%muk:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).
;; 1
%muk:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D), younger(Alter, Ego).
;; 2
%muk:0, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 3
%muk:0, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 4
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D), younger(Alter, Ego).
;; 5
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F), younger(Alter, Ego).
;; 6
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=6, S=0, Star=0,  {MoMoSisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), son(Alter, E), younger(Alter, Ego).
;; 7
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H), younger(Alter, Ego).
;; 8
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=6, S=0, Star=0,  {MoMoSisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), son(Alter, E), younger(Alter, Ego).
;; 9
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(Alter, G), younger(Alter, Ego).
;; 10
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(Alter, I), younger(Alter, Ego).
;; 11
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(Alter, I), younger(Alter, Ego).
;; 12
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H), younger(Alter, Ego).
;; 13
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=4, S=0, Star=0,  {MoSisSo}  
 female(Ego), mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), son(Alter, C), younger(Alter, Ego).
;; 14
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 15
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=4, S=0, Star=0,  {MoSisSo}  
 female(Ego), mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), son(Alter, C), younger(Alter, Ego).
;; 16
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E), younger(Alter, Ego).
;; 17
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H), younger(Alter, Ego).
;; 18
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, B)), son(Alter, I), younger(Alter, Ego).
;; 19
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=1,  PC=5, S=0, Star=0,  {MoFaSisSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(Alter, D), younger(Alter, Ego).
;; 20
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G), younger(Alter, Ego).
;; 21
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=1,  PC=5, S=0, Star=0,  {MoFaSisSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(Alter, D), younger(Alter, Ego).
;; 22
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaSisSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Alter, H), younger(Alter, Ego).
;; 23
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaSisSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), daughter(G, F), not(equal(G, E)), son(Alter, G), younger(Alter, Ego).
;; 24
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaSisSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), daughter(G, F), not(equal(G, E)), son(Alter, G), younger(Alter, Ego).
;; 25
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {MoFaFaBroDaSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(Alter, J), younger(Alter, Ego).
;; 26
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaFaBroDaSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), daughter(I, H), not(equal(I, G)), son(Alter, I), younger(Alter, Ego).
;; 27
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaFaBroDaSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), father(H, G), daughter(I, H), not(equal(I, G)), son(Alter, I), younger(Alter, Ego).
;; 28
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {MoFaMoSisDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(Alter, J), younger(Alter, Ego).
;; 29
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), daughter(I, H), not(equal(I, G)), son(Alter, I), younger(Alter, Ego).
;; 30
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), father(H, G), daughter(I, H), not(equal(I, G)), son(Alter, I), younger(Alter, Ego).
;; 31
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(Alter, I), younger(Alter, Ego).
;; 32
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(Alter, I), younger(Alter, Ego).
;; 33
%muk:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {MoFaMoBroDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K), younger(Alter, Ego).
;; 34
%muk:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E), younger(Alter, Ego).
;; 35
%muk:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G), younger(Alter, Ego).
;; 36
%muk:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G), younger(Alter, Ego).
;; 37
%muk:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 38
%muk:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H), younger(Alter, Ego).
;; 39
%muk:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H), younger(Alter, Ego).
;; 40
%muk:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).
;; 41
%muk:1, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 42
%muk:1, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(Alter, G), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 43
%muk:1, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 44
%muk:1, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=4, S=0, Star=0,  {MoSisDa}  
 female(Ego), mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(Alter, C), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 45
%muk:1, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 46
%muk:1, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=4, S=0, Star=0,  {MoSisDa}  
 female(Ego), mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(Alter, C), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 47
%muk:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 48
%muk:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 49
%muk:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 50
%muk:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 51
%muk:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 52
%muk:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 53
%muk:1, sister[eq]:2%
 Lvl=0,  PC=2, S=0, Star=0,  {Sis}  
 female(Ego), mother(A, Ego), daughter(Alter, A), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 54
%muk:1, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D), younger(Alter, Ego).
;; 55
%muk:1, sister[eq]:4%
 Lvl=0,  PC=2, S=0, Star=0,  {Sis}  
 female(Ego), father(A, Ego), daughter(Alter, A), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 56
%muk:1, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), younger(Alter, Ego).
;; 57
%muk:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, A)), younger(Alter, Ego).
;; 58
%muk:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H), not(equal(Alter, A)), younger(Alter, Ego).
;; 59
%muk:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(Alter, H), not(equal(Alter, A)), younger(Alter, Ego).
;; 60
%muk:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)), younger(Alter, Ego).
;; 61
%muk:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I), not(equal(Alter, A)), younger(Alter, Ego).
;; 62
%muk:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), daughter(Alter, I), not(equal(Alter, A)), younger(Alter, Ego).
;; 63
%muk:1, sister[eq]:5, sister[eq]:2%
 Lvl=1,  PC=3, S=0, Star=0,  {FaSis}  
 female(Ego), father(A, Ego), mother(B, A), daughter(Alter, B), not(equal(Alter, A)), younger(Alter, Ego).
;; 64
%muk:1, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E), younger(Alter, Ego).
;; 65
%muk:1, sister[eq]:5, sister[eq]:4%
 Lvl=1,  PC=3, S=0, Star=0,  {FaSis}  
 female(Ego), father(A, Ego), father(B, A), daughter(Alter, B), not(equal(Alter, A)), younger(Alter, Ego).
;; 66
%muk:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaSis}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter), younger(Alter, Ego).
;; 67
%muk:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoBroDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(Alter, I), not(equal(Alter, D)), younger(Alter, Ego).
;; 68
%muk:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoBroSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(I, H), daughter(J, I), daughter(Alter, J), not(equal(Alter, D)), younger(Alter, Ego).
;; 69
%muk:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=7, S=0, Star=0,  {FaSis}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), daughter(Alter, E), not(equal(Alter, D)), younger(Alter, Ego).
;; 70
%muk:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaBroDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(Alter, H), younger(Alter, Ego).
;; 71
%muk:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=7, S=0, Star=0,  {FaSis}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), daughter(Alter, E), not(equal(Alter, D)), younger(Alter, Ego).
;; 72
%muk:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaBroDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter), younger(Alter, Ego).
;; 73
%muk:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaBroDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), daughter(Alter, G), not(equal(Alter, F)), younger(Alter, Ego).
;; 74
%muk:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaSis}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(Alter, J), younger(Alter, Ego).
;; 75
%muk:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaBroDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), daughter(Alter, G), not(equal(Alter, F)), younger(Alter, Ego).
;; 76
%muk:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaFaFaBroSoDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter), younger(Alter, Ego).
;; 77
%muk:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaFaBroSoDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)), younger(Alter, Ego).
;; 78
%muk:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaFaBroSoDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)), younger(Alter, Ego).
;; 79
%muk:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaFaMoSisSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter), younger(Alter, Ego).
;; 80
%muk:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaMoSisSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)), younger(Alter, Ego).
;; 81
%muk:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaMoSisSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)), younger(Alter, Ego).
;; 82
%muk:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoSisDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter), younger(Alter, Ego).
;; 83
%muk:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoSisDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), daughter(Alter, G), not(equal(Alter, F)), younger(Alter, Ego).
;; 84
%muk:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaMoSisHuBroDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(Alter, J), younger(Alter, Ego).
;; 85
%muk:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoSisDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), daughter(Alter, G), not(equal(Alter, F)), younger(Alter, Ego).
;; 86
%muk:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoSisDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), female(Alter), younger(Alter, Ego).
;; 87
%muk:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:2%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), daughter(Alter, F), not(equal(Alter, E)), younger(Alter, Ego).
;; 88
%muk:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoSisHuBroDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(Alter, I), younger(Alter, Ego).
;; 89
%muk:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:4%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), daughter(Alter, F), not(equal(Alter, E)), younger(Alter, Ego).
;; 90
%muk:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaMoFaBroDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter), younger(Alter, Ego).
;; 91
%muk:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)), younger(Alter, Ego).
;; 92
%muk:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)), younger(Alter, Ego).
;; 93
%muk:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoSisDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), female(Alter), younger(Alter, Ego).
;; 94
%muk:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:2%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), daughter(Alter, F), not(equal(Alter, E)), younger(Alter, Ego).
;; 95
%muk:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoSisHuBroDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(Alter, I), younger(Alter, Ego).
;; 96
%muk:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:4%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), daughter(Alter, F), not(equal(Alter, E)), younger(Alter, Ego).
;; 97
%muk:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoBroDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), father(I, G), child(Alter, H), child(Alter, I), not(equal(Alter, G)), female(Alter), younger(Alter, Ego).
;; 98
%muk:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoBroDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), daughter(Alter, H), not(equal(Alter, G)), younger(Alter, Ego).
;; 99
%muk:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoBroDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), father(H, G), daughter(Alter, H), not(equal(Alter, G)), younger(Alter, Ego).
;; 100
%muk:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoBroSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter), younger(Alter, Ego).
;; 101
%muk:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)), younger(Alter, Ego).
;; 102
%muk:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)), younger(Alter, Ego).
;; 103
%muk:2, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 104
%muk:2, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 105
%muk:2, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 106
%muk:2, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 107
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 108
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), son(Alter, G).
;; 109
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoMoSisDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), son(F, E), son(Alter, F).
;; 110
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(Alter, I).
;; 111
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoMoSisDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), son(F, E), son(Alter, F).
;; 112
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), son(Alter, H).
;; 113
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoFaBroSoDaDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(J, I), son(Alter, J).
;; 114
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoMoSisSoDaDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(J, I), son(Alter, J).
;; 115
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroSoDaDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(Alter, I).
;; 116
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:2%
 Lvl=-1,  PC=5, S=0, Star=0,  {MoSisSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), son(D, C), son(Alter, D).
;; 117
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 118
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:4%
 Lvl=-1,  PC=5, S=0, Star=0,  {MoSisSoSo}  
 female(Ego), mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), son(D, C), son(Alter, D).
;; 119
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 120
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(I, H), son(Alter, I).
;; 121
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoFaMoBroSoDaDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, B)), son(J, I), son(Alter, J).
;; 122
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=0,  PC=6, S=0, Star=0,  {MoFaSisSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), son(Alter, E).
;; 123
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 124
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=0,  PC=6, S=0, Star=0,  {MoFaSisSoSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), son(Alter, E).
;; 125
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaSisSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(I, H), son(Alter, I).
;; 126
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaSisSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), daughter(G, F), not(equal(G, E)), son(H, G), son(Alter, H).
;; 127
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaSisSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), daughter(G, F), not(equal(G, E)), son(H, G), son(Alter, H).
;; 128
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {MoFaFaBroDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(K, J), son(Alter, K).
;; 129
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaFaBroDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), daughter(I, H), not(equal(I, G)), son(J, I), son(Alter, J).
;; 130
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaFaBroDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), father(H, G), daughter(I, H), not(equal(I, G)), son(J, I), son(Alter, J).
;; 131
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {MoFaMoSisDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(K, J), son(Alter, K).
;; 132
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaMoSisDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), daughter(I, H), not(equal(I, G)), son(J, I), son(Alter, J).
;; 133
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaMoSisDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), father(H, G), daughter(I, H), not(equal(I, G)), son(J, I), son(Alter, J).
;; 134
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaMoSisDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), son(Alter, J).
;; 135
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaMoSisDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), son(Alter, J).
;; 136
%muk:2, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=15, S=0, Star=0,  {MoFaMoBroDaDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), son(Alter, L).
;; 137
%muk:2, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 138
%muk:2, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 139
%muk:2, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 140
%muk:2, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 141
%muk:2, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroSoSoDaSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 142
%muk:2, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisSoSoDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(I, H), son(Alter, I).
;; 143
%muk:3, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 144
%muk:3, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 145
%muk:3, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 146
%muk:3, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 147
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 148
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), daughter(Alter, G).
;; 149
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoMoSisDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), son(F, E), daughter(Alter, F).
;; 150
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(Alter, I).
;; 151
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoMoSisDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), son(F, E), daughter(Alter, F).
;; 152
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(H, G), daughter(Alter, H).
;; 153
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoFaBroSoDaDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(J, I), daughter(Alter, J).
;; 154
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoMoMoSisSoDaDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(J, I), daughter(Alter, J).
;; 155
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoBroSoDaDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), daughter(Alter, I).
;; 156
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:2%
 Lvl=-1,  PC=5, S=0, Star=0,  {MoSisSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), son(D, C), daughter(Alter, D).
;; 157
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 158
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:4%
 Lvl=-1,  PC=5, S=0, Star=0,  {MoSisSoDa}  
 female(Ego), mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), son(D, C), daughter(Alter, D).
;; 159
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 160
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(I, H), daughter(Alter, I).
;; 161
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=12, S=0, Star=0,  {MoFaMoBroSoDaDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, B)), son(J, I), daughter(Alter, J).
;; 162
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=0,  PC=6, S=0, Star=0,  {MoFaSisSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), daughter(Alter, E).
;; 163
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 164
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=0,  PC=6, S=0, Star=0,  {MoFaSisSoDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), daughter(Alter, E).
;; 165
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaSisSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(I, H), daughter(Alter, I).
;; 166
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaSisSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), daughter(G, F), not(equal(G, E)), son(H, G), daughter(Alter, H).
;; 167
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaSisSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), daughter(G, F), not(equal(G, E)), son(H, G), daughter(Alter, H).
;; 168
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {MoFaFaBroDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(K, J), daughter(Alter, K).
;; 169
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaFaBroDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), daughter(I, H), not(equal(I, G)), son(J, I), daughter(Alter, J).
;; 170
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaFaBroDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), father(H, G), daughter(I, H), not(equal(I, G)), son(J, I), daughter(Alter, J).
;; 171
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {MoFaMoSisDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(K, J), daughter(Alter, K).
;; 172
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaMoSisDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), daughter(I, H), not(equal(I, G)), son(J, I), daughter(Alter, J).
;; 173
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaMoSisDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), father(H, G), daughter(I, H), not(equal(I, G)), son(J, I), daughter(Alter, J).
;; 174
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaMoSisDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), daughter(Alter, J).
;; 175
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaMoSisDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), daughter(Alter, J).
;; 176
%muk:3, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=15, S=0, Star=0,  {MoFaMoBroDaDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), daughter(Alter, L).
;; 177
%muk:3, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 178
%muk:3, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 179
%muk:3, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 180
%muk:3, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 181
%muk:3, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroSoSoDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).
;; 182
%muk:3, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisSoSoDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(I, H), daughter(Alter, I).


ni(Alter, Ego) :-  daughter(A, Ego), husband(Alter, A).
               |   male(Ego), brother(A, Ego), daughter(B, A), husband(Alter, B).
               |   female(Ego), sister(A, Ego), daughter(B, A), husband(Alter, B).
{"BroDaHu_DaHu_SisDaHu"}
;; 0
%ni:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 daughter(A, Ego), husband(Alter, A).
;; 1
%ni:1, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), husband(Alter, D).
;; 2
%ni:2, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), husband(Alter, D).


nichon(Alter, Ego) :-  son(Alter, Ego), male(Ego).
                   |   daughter(Alter, Ego), male(Ego).
{"Da_So"}
;; 0
%nichon:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego), male(Ego).
;; 1
%nichon:1%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego), male(Ego).


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


shibel(Alter, Ego) :-  female(Ego), brother[eq](Alter, Ego), elder(Alter, Ego).
{"Bro_FaBroSo_FaFaBroSoSo_FaMoSisSoSo_MoBroDaSo_MoBroSoDaSo_MoFaBroDaSo_MoFaBroSoDaSo_MoFaBroSoSoDaSo_MoFaFaBroDaSo_MoFaMoBroDaDaSo_MoFaMoBroSoDaDaSo_MoFaMoSisDaSo_MoFaSisSo_MoMoBroDaDaSo_MoMoBroSoDaDaSo_MoMoFaBroDaDaSo_MoMoFaBroSoDaDaSo_MoMoMoSisSoDaDaSo_MoMoSisDaSo_MoMoSisSoDaSo_MoMoSisSoSoDaSo_MoSisSo"}
;; 0
%shibel:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%shibel:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D), elder(Alter, Ego).
;; 2
%shibel:0, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 3
%shibel:0, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 4
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D), elder(Alter, Ego).
;; 5
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F), elder(Alter, Ego).
;; 6
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=6, S=0, Star=0,  {MoMoSisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), son(Alter, E), elder(Alter, Ego).
;; 7
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H), elder(Alter, Ego).
;; 8
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=6, S=0, Star=0,  {MoMoSisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), daughter(E, D), not(equal(E, A)), son(Alter, E), elder(Alter, Ego).
;; 9
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(Alter, G), elder(Alter, Ego).
;; 10
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(Alter, I), elder(Alter, Ego).
;; 11
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, A)), son(Alter, I), elder(Alter, Ego).
;; 12
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H), elder(Alter, Ego).
;; 13
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=4, S=0, Star=0,  {MoSisSo}  
 female(Ego), mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), son(Alter, C), elder(Alter, Ego).
;; 14
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 15
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=4, S=0, Star=0,  {MoSisSo}  
 female(Ego), mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), son(Alter, C), elder(Alter, Ego).
;; 16
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E), elder(Alter, Ego).
;; 17
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H), elder(Alter, Ego).
;; 18
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), not(equal(I, B)), son(Alter, I), elder(Alter, Ego).
;; 19
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=1,  PC=5, S=0, Star=0,  {MoFaSisSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(Alter, D), elder(Alter, Ego).
;; 20
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G), elder(Alter, Ego).
;; 21
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=1,  PC=5, S=0, Star=0,  {MoFaSisSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(Alter, D), elder(Alter, Ego).
;; 22
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaSisSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Alter, H), elder(Alter, Ego).
;; 23
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaSisSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), daughter(G, F), not(equal(G, E)), son(Alter, G), elder(Alter, Ego).
;; 24
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaSisSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), daughter(G, F), not(equal(G, E)), son(Alter, G), elder(Alter, Ego).
;; 25
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {MoFaFaBroDaSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(Alter, J), elder(Alter, Ego).
;; 26
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaFaBroDaSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), daughter(I, H), not(equal(I, G)), son(Alter, I), elder(Alter, Ego).
;; 27
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaFaBroDaSo}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), father(H, G), daughter(I, H), not(equal(I, G)), son(Alter, I), elder(Alter, Ego).
;; 28
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {MoFaMoSisDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(Alter, J), elder(Alter, Ego).
;; 29
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), daughter(I, H), not(equal(I, G)), son(Alter, I), elder(Alter, Ego).
;; 30
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), father(H, G), daughter(I, H), not(equal(I, G)), son(Alter, I), elder(Alter, Ego).
;; 31
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(Alter, I), elder(Alter, Ego).
;; 32
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(Alter, I), elder(Alter, Ego).
;; 33
%shibel:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {MoFaMoBroDaDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K), elder(Alter, Ego).
;; 34
%shibel:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E), elder(Alter, Ego).
;; 35
%shibel:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G), elder(Alter, Ego).
;; 36
%shibel:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G), elder(Alter, Ego).
;; 37
%shibel:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 38
%shibel:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).
;; 39
%shibel:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H), elder(Alter, Ego).


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
                       |   mother(A, Ego), daughter(Alter, A), not(equal(Alter, Ego)).
                       |   father(A, Ego), brother(B, A), daughter(Alter, B).
                       |   father(A, Ego), daughter(Alter, A), not(equal(Alter, Ego)).
                       |   father(A, Ego), sister[eq](Alter, A).
                       |   father(A, Ego), brother[eq](B, A), sister[eq](Alter, B).
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
%sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(Alter, C), not(equal(Alter, Ego)).
;; 5
%sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 6
%sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(Alter, C), not(equal(Alter, Ego)).
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
%sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), daughter(Alter, A), not(equal(Alter, Ego)).
;; 12
%sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 13
%sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), daughter(Alter, A), not(equal(Alter, Ego)).
;; 14
%sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 15
%sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, A)).
;; 16
%sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 17
%sister[eq]:5, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), daughter(Alter, B), not(equal(Alter, A)).
;; 18
%sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 19
%sister[eq]:5, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), daughter(Alter, B), not(equal(Alter, A)).
;; 20
%sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 21
%sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(Alter, I), not(equal(Alter, D)).
;; 22
%sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), son(J, I), daughter(K, J), daughter(Alter, K), not(equal(Alter, D)).
;; 23
%sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), daughter(K, J), daughter(Alter, K), not(equal(Alter, D)).
;; 24
%sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(I, H), daughter(J, I), daughter(Alter, J), not(equal(Alter, D)).
;; 25
%sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), son(J, I), son(K, J), daughter(L, K), daughter(Alter, L), not(equal(Alter, D)).
;; 26
%sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), son(K, J), daughter(L, K), daughter(Alter, L), not(equal(Alter, D)).
;; 27
%sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), daughter(Alter, E), not(equal(Alter, D)).
;; 28
%sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(Alter, H).
;; 29
%sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), daughter(Alter, E), not(equal(Alter, D)).
;; 30
%sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 31
%sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(Alter, K), not(equal(Alter, F)).
;; 32
%sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), son(K, J), daughter(L, K), daughter(Alter, L), not(equal(Alter, F)).
;; 33
%sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 34
%sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(Alter, J).
;; 35
%sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 36
%sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 37
%sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 38
%sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 39
%sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 40
%sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 41
%sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 42
%sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 43
%sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(Alter, K), not(equal(Alter, F)).
;; 44
%sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), son(K, J), daughter(L, K), daughter(Alter, L), not(equal(Alter, F)).
;; 45
%sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 46
%sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(Alter, J).
;; 47
%sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 48
%sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(I, H), mother(J, I), daughter(Alter, J), not(equal(Alter, I)).
;; 49
%sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(I, H), father(J, I), daughter(Alter, J), not(equal(Alter, I)).
;; 50
%sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), female(Alter).
;; 51
%sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(Alter, J), not(equal(Alter, E)).
;; 52
%sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(Alter, I).
;; 53
%sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 54
%sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 55
%sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 56
%sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), female(Alter).
;; 57
%sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(Alter, J), not(equal(Alter, E)).
;; 58
%sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(Alter, I).
;; 59
%sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), father(I, G), child(Alter, H), child(Alter, I), not(equal(Alter, G)), female(Alter).
;; 60
%sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 61
%sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 62
%sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)).


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
%sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(Alter, C), not(equal(Alter, Ego)).
;; 3
%sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 4
%sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(Alter, C), not(equal(Alter, Ego)).
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
%sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), daughter(Alter, A), not(equal(Alter, Ego)).
;; 10
%sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 11
%sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), daughter(Alter, A), not(equal(Alter, Ego)).
;; 12
%sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 13
%sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, A)).
;; 14
%sister[eq]1:0, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 15
%sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), daughter(Alter, B), not(equal(Alter, A)).
;; 16
%sister[eq]1:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 17
%sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), daughter(Alter, B), not(equal(Alter, A)).
;; 18
%sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 19
%sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(Alter, I), not(equal(Alter, D)).
;; 20
%sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), son(J, I), daughter(K, J), daughter(Alter, K), not(equal(Alter, D)).
;; 21
%sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), daughter(K, J), daughter(Alter, K), not(equal(Alter, D)).
;; 22
%sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(I, H), daughter(J, I), daughter(Alter, J), not(equal(Alter, D)).
;; 23
%sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), son(J, I), son(K, J), daughter(L, K), daughter(Alter, L), not(equal(Alter, D)).
;; 24
%sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), son(K, J), daughter(L, K), daughter(Alter, L), not(equal(Alter, D)).
;; 25
%sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), daughter(Alter, E), not(equal(Alter, D)).
;; 26
%sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(Alter, H).
;; 27
%sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), daughter(Alter, E), not(equal(Alter, D)).
;; 28
%sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 29
%sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(Alter, K), not(equal(Alter, F)).
;; 30
%sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), son(K, J), daughter(L, K), daughter(Alter, L), not(equal(Alter, F)).
;; 31
%sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 32
%sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(Alter, J).
;; 33
%sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 34
%sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 35
%sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 36
%sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 37
%sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 38
%sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 39
%sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 40
%sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 41
%sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(Alter, K), not(equal(Alter, F)).
;; 42
%sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), son(K, J), daughter(L, K), daughter(Alter, L), not(equal(Alter, F)).
;; 43
%sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 44
%sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(Alter, J).
;; 45
%sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), daughter(Alter, G), not(equal(Alter, F)).
;; 46
%sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), female(Alter).
;; 47
%sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(Alter, J), not(equal(Alter, E)).
;; 48
%sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(Alter, I).
;; 49
%sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 50
%sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 51
%sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 52
%sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), female(Alter).
;; 53
%sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(Alter, J), not(equal(Alter, E)).
;; 54
%sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(Alter, I).
;; 55
%sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), father(I, G), child(Alter, H), child(Alter, I), not(equal(Alter, G)), female(Alter).
;; 56
%sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 57
%sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 58
%sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)).
;; 59
%sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 60
%sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 61
%sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 62
%sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(Alter, D).
;; 63
%sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 64
%sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).


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


tot(Alter, Ego) :-  father(Alter, Ego).
{"Fa"}
;; 0
%tot:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).


wish(Alter, Ego) :-  father(A, Ego), sister(Alter, A).
                 |   sister[eq](Alter, Ego), elder(Alter, Ego).
{"FaBroDa_FaFaBroDa_FaFaBroWiBroDaDa_FaFaFaBroSoDa_FaFaMoSisSoDa_FaMoBroDaDa_FaMoBroSoDaDa_FaMoFaBroDaDa_FaMoFaBroSoDaDa_FaMoMoSisSoDaDa_FaMoSisDa_FaMoSisHuBroDa_FaSis_MoBroDaDa_MoBroSoDaDa_MoFaBroDaDa_MoFaBroSoDaDa_MoMoBroDaDaDa_MoMoBroSoDaDaDa_MoMoSisSoDaDa_MoSisDa_Sis"}
;; 0
%wish:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%wish:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).
;; 2
%wish:1, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 3
%wish:1, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(Alter, G), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 4
%wish:1, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 5
%wish:1, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=0,  PC=4, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), daughter(C, B), not(equal(C, A)), daughter(Alter, C), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 6
%wish:1, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 7
%wish:1, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=0,  PC=4, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), father(B, A), daughter(C, B), not(equal(C, A)), daughter(Alter, C), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 8
%wish:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 9
%wish:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 10
%wish:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 11
%wish:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 12
%wish:1, sister[eq]:2%
 Lvl=0,  PC=2, S=0, Star=0,  {Sis}  
 mother(A, Ego), daughter(Alter, A), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 13
%wish:1, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D), elder(Alter, Ego).
;; 14
%wish:1, sister[eq]:4%
 Lvl=0,  PC=2, S=0, Star=0,  {Sis}  
 father(A, Ego), daughter(Alter, A), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 15
%wish:1, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), elder(Alter, Ego).
;; 16
%wish:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, A)), elder(Alter, Ego).
;; 17
%wish:1, sister[eq]:5, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)), elder(Alter, Ego).
;; 18
%wish:1, sister[eq]:5, sister[eq]:2%
 Lvl=1,  PC=3, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), daughter(Alter, B), not(equal(Alter, A)), elder(Alter, Ego).
;; 19
%wish:1, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E), elder(Alter, Ego).
;; 20
%wish:1, sister[eq]:5, sister[eq]:4%
 Lvl=1,  PC=3, S=0, Star=0,  {FaSis}  
 father(A, Ego), father(B, A), daughter(Alter, B), not(equal(Alter, A)), elder(Alter, Ego).
;; 21
%wish:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter), elder(Alter, Ego).
;; 22
%wish:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(Alter, I), not(equal(Alter, D)), elder(Alter, Ego).
;; 23
%wish:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {FaMoFaBroSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), son(J, I), daughter(K, J), daughter(Alter, K), not(equal(Alter, D)), elder(Alter, Ego).
;; 24
%wish:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {FaMoMoSisSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), daughter(K, J), daughter(Alter, K), not(equal(Alter, D)), elder(Alter, Ego).
;; 25
%wish:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoBroSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(I, H), daughter(J, I), daughter(Alter, J), not(equal(Alter, D)), elder(Alter, Ego).
;; 26
%wish:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=7, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), daughter(Alter, E), not(equal(Alter, D)), elder(Alter, Ego).
;; 27
%wish:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(Alter, H), elder(Alter, Ego).
;; 28
%wish:1, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=7, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), daughter(Alter, E), not(equal(Alter, D)), elder(Alter, Ego).
;; 29
%wish:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter), elder(Alter, Ego).
;; 30
%wish:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {FaFaBroWiBroDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(Alter, K), not(equal(Alter, F)), elder(Alter, Ego).
;; 31
%wish:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), daughter(Alter, G), not(equal(Alter, F)), elder(Alter, Ego).
;; 32
%wish:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaSis}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(Alter, J), elder(Alter, Ego).
;; 33
%wish:1, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), daughter(Alter, G), not(equal(Alter, F)), elder(Alter, Ego).
;; 34
%wish:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaFaFaBroSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter), elder(Alter, Ego).
;; 35
%wish:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaFaBroSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)), elder(Alter, Ego).
;; 36
%wish:1, sister[eq]:6, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaFaBroSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)), elder(Alter, Ego).
;; 37
%wish:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaFaMoSisSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter), elder(Alter, Ego).
;; 38
%wish:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaMoSisSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)), elder(Alter, Ego).
;; 39
%wish:1, sister[eq]:6, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaMoSisSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)), elder(Alter, Ego).
;; 40
%wish:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter), elder(Alter, Ego).
;; 41
%wish:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(Alter, K), not(equal(Alter, F)), elder(Alter, Ego).
;; 42
%wish:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), daughter(Alter, G), not(equal(Alter, F)), elder(Alter, Ego).
;; 43
%wish:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaMoSisHuBroDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(Alter, J), elder(Alter, Ego).
;; 44
%wish:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), daughter(Alter, G), not(equal(Alter, F)), elder(Alter, Ego).
;; 45
%wish:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), female(Alter), elder(Alter, Ego).
;; 46
%wish:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:2, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoSisHuBroDa}  
 father(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(Alter, I), elder(Alter, Ego).
;; 47
%wish:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaMoFaBroDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter), elder(Alter, Ego).
;; 48
%wish:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:2%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)), elder(Alter, Ego).
;; 49
%wish:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0, sister[eq]:4%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)), elder(Alter, Ego).
;; 50
%wish:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoSisDa}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), female(Alter), elder(Alter, Ego).
;; 51
%wish:1, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:4, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoSisHuBroDa}  
 father(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(Alter, I), elder(Alter, Ego).
;; 52
%wish:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), father(I, G), child(Alter, H), child(Alter, I), not(equal(Alter, G)), female(Alter), elder(Alter, Ego).
;; 53
%wish:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoBroSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter), elder(Alter, Ego).
;; 54
%wish:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), daughter(Alter, I), not(equal(Alter, H)), elder(Alter, Ego).
;; 55
%wish:1, sister[eq]:6, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), father(I, H), daughter(Alter, I), not(equal(Alter, H)), elder(Alter, Ego).


wom(Alter, Ego) :-  mother(A, Ego), brother[eq]1(Alter, A).
{"MoBro_MoBroSo_MoBroSoSo_MoFaBroSo_MoFaBroSoSo_MoFaBroSoSoSo_MoFaFaBroSoSo_MoFaMoSisSoSo_MoMoBroDaSo_MoMoBroSoDaSo_MoMoFaBroDaSo_MoMoFaBroSoDaSo_MoMoFaFaBroDaSo_MoMoFaMoSisDaSo_MoMoFaSisSo_MoMoMoBroDaDaSo_MoMoMoSisDaSo_MoMoMoSisSoDaSo_MoMoSisSo_MoMoSisSoSo_MoMoSisSoSoSo"}
;; 0
%wom:0, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%wom:0, brother[eq]1:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 2
%wom:0, brother[eq]1:0, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 3
%wom:0, brother[eq]1:0, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 4
%wom:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 5
%wom:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(Alter, G).
;; 6
%wom:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), daughter(F, E), not(equal(F, B)), son(Alter, F).
;; 7
%wom:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:4%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), daughter(E, D), not(equal(E, C)), daughter(F, E), not(equal(F, B)), son(Alter, F).
;; 8
%wom:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 9
%wom:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2%
 Lvl=1,  PC=5, S=0, Star=0,  {MoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), daughter(D, C), not(equal(D, B)), son(Alter, D).
;; 10
%wom:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 11
%wom:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:4%
 Lvl=1,  PC=5, S=0, Star=0,  {MoMoSisSo}  
 mother(A, Ego), mother(B, A), father(C, B), daughter(D, C), not(equal(D, B)), son(Alter, D).
;; 12
%wom:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 13
%wom:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:2%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoFaSisSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), daughter(E, D), not(equal(E, C)), son(Alter, E).
;; 14
%wom:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:3, brother:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaFaBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 15
%wom:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:5, sister[eq]:4%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoFaSisSo}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), daughter(E, D), not(equal(E, C)), son(Alter, E).
;; 16
%wom:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaSisSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), mother(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 17
%wom:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaSisSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), father(G, F), daughter(H, G), not(equal(H, F)), son(Alter, H).
;; 18
%wom:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=14, S=0, Star=0,  {MoMoFaFaBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 19
%wom:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2%
 Lvl=2,  PC=12, S=0, Star=0,  {MoMoFaFaBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 20
%wom:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:4%
 Lvl=2,  PC=12, S=0, Star=0,  {MoMoFaFaBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 21
%wom:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=14, S=0, Star=0,  {MoMoFaMoSisDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 22
%wom:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2%
 Lvl=2,  PC=12, S=0, Star=0,  {MoMoFaMoSisDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 23
%wom:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:6, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:4%
 Lvl=2,  PC=12, S=0, Star=0,  {MoMoFaMoSisDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), father(I, H), daughter(J, I), not(equal(J, H)), son(Alter, J).
;; 24
%wom:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 25
%wom:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 26
%wom:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 27
%wom:0, brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 28
%wom:0, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 29
%wom:0, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 30
%wom:0, brother[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 31
%wom:0, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 32
%wom:0, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 33
%wom:0, brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).


yame(Alter, Ego) :-  father(A, Ego), mother(Alter, A).
                 |   mother(A, Ego), mother(Alter, A).
                 |   father(A, Ego), yame(Alter, A).
                 |   mother(A, Ego), yame(Alter, A).
{"FaFaMo_FaMo_FaMoMo_MoFaMo_MoMo_MoMoMo"}
;; 0
%yame:0%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).
;; 1
%yame:1%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 2
%yame:2, yame:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
 father(A, Ego), father(B, A), mother(Alter, B).
;; 3
%yame:2, yame:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
 father(A, Ego), mother(B, A), mother(Alter, B).
;; 4
%yame:3, yame:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
 mother(A, Ego), father(B, A), mother(Alter, B).
;; 5
%yame:3, yame:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
 mother(A, Ego), mother(B, A), mother(Alter, B).

