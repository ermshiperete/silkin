;;  Horn Clause Representation of Omaha-2 Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Omaha-2") (author, "Floyd Lounsbury") (date, "1964-01-01") (citation, "Floyd Lounsbury, 'A Formal Account of the Crow- and Omaha-Type Kinship Terminologies' in EXPLORATIONS IN CULTURAL ANTHROPOLOGY, ed. W.H. Goodenough, 1964, McGraw-Hill") 
(non_term, [aux], sibling, brother, sister, brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, true) (polygamyOK, false) (address, false) (recursiveLevels, 1)
(overlaps, (brother[eq], (brother[eq]a, brother[eq]1, brother[eq]1a)), (brother[eq]1, (brother[eq], brother[eq]1a, brother[eq]a)), (brother[eq]1a, (brother[eq]1, brother[eq])), (brother[eq]a, (brother[eq], brother[eq]1)), (sister[eq], (sister[eq]1)), (sister[eq]1, (sister[eq])))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

brother(Alter, Ego) :-  sibling(Alter, Ego), male(Alter).
;; 0
%brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).


brother[eq](Alter, Ego) :-  brother(Alter, Ego).
                        |   father(A, Ego), brother[eq]a(B, A), son(Alter, B).
                        |   mother(A, Ego), sister[eq]1(B, A), son(Alter, B).
                        |   step_brother(Alter, Ego).
{"Bro_FaBroSo_FaFaBroSoSo_FaMoSisSoSo_MoBroDaSo_MoBroSoDaSo_MoFaBroDaSo_MoFaBroSoDaSo_MoFaBroSoSoDaSo_MoFaFaBroDaSo_MoFaMoBroDaDaSo_MoFaMoBroSoDaDaSo_MoFaMoSisDaSo_MoFaSisSo_MoFaStsisSo_MoMoBroDaDaSo_MoMoBroSoDaDaSo_MoMoFaBroDaDaSo_MoMoSisDaSo_MoMoSisSoDaSo_MoMoSisSoSoDaSo_MoSisSo_Stbro"}
;; 0
%brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 3
%brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 4
%brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F).
;; 6
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 7
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 8
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 9
%brother[eq]:2, sister[eq]1:0, sister[eq]:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 10
%brother[eq]:2, sister[eq]1:0, sister[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 11
%brother[eq]:2, sister[eq]1:0, sister[eq]:3, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 12
%brother[eq]:2, sister[eq]1:0, sister[eq]:3, sister[eq]:2, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 13
%brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Alter, H).
;; 14
%brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {MoFaMoBroDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(K, J), not(equal(K, E)), son(Alter, K).
;; 15
%brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=15, S=0, Star=0,  {MoFaMoBroSoDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), son(J, I), daughter(K, J), daughter(L, K), not(equal(L, E)), son(Alter, L).
;; 16
%brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:2, brother:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {MoFaFaBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), son(Alter, J).
;; 17
%brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {MoFaFaBroDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(Alter, J).
;; 18
%brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {MoFaMoSisDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(Alter, J).
;; 19
%brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {MoFaMoBroDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 20
%brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:3, step_brother:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=2, Star=0,  {MoFaStsisSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(Alter, J).
;; 21
%brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:3, step_brother:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=2, Star=0,  {MoFaStsisSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(Alter, J).
;; 22
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 23
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 24
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 25
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 26
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 27
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 28
%brother[eq]:3, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C).
;; 29
%brother[eq]:3, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C).


brother[eq]1(Alter, Ego) :-  brother[eq](Alter, Ego).
                         |   brother[eq]1a(A, Ego), son(Alter, A).
{"Bro_BroSo_BroSoSo_FaBroSo_FaBroSoSo_FaBroSoSoSo_FaFaBroSoSo_FaMoSisSoSo_MoBroDaSo_MoBroSoDaSo_MoFaBroDaSo_MoFaBroSoDaSo_MoFaBroSoSoDaSo_MoFaFaBroDaSo_MoFaMoBroDaDaSo_MoFaMoBroSoDaDaSo_MoFaMoSisDaSo_MoFaSisSo_MoFaStsisSo_MoMoBroDaDaSo_MoMoBroSoDaDaSo_MoMoFaBroDaDaSo_MoMoSisDaSo_MoMoSisSoDaSo_MoMoSisSoSoDaSo_MoSisSo_MoSisSoSo_MoSisSoSoSo_Stbro"}
;; 0
%brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%brother[eq]1:0, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%brother[eq]1:0, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 3
%brother[eq]1:0, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 4
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F).
;; 6
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 7
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 8
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 9
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 10
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 11
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 12
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, sister[eq]:2, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 13
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Alter, H).
;; 14
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {MoFaMoBroDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(K, J), not(equal(K, E)), son(Alter, K).
;; 15
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=15, S=0, Star=0,  {MoFaMoBroSoDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), son(J, I), daughter(K, J), daughter(L, K), not(equal(L, E)), son(Alter, L).
;; 16
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:2, brother:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {MoFaFaBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), son(Alter, J).
;; 17
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {MoFaFaBroDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(Alter, J).
;; 18
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {MoFaMoSisDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(Alter, J).
;; 19
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {MoFaMoBroDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 20
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:3, step_brother:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=2, Star=0,  {MoFaStsisSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(Alter, J).
;; 21
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:3, step_brother:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=2, Star=0,  {MoFaStsisSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), female(J), son(Alter, J).
;; 22
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 23
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 24
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 25
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 26
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 27
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 28
%brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C).
;; 29
%brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C).
;; 30
%brother[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 31
%brother[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 32
%brother[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 33
%brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(Alter, D).
;; 34
%brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 35
%brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).


brother[eq]1a(Alter, Ego) :-  brother[eq]a(Alter, Ego).
                          |   brother[eq]1a(A, Ego), son(Alter, A).
{"Bro_BroSo_FaBroSo_FaBroSoSo_MoSisSo_MoSisSoSo"}
;; 0
%brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 3
%brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 4
%brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 5
%brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).


brother[eq]a(Alter, Ego) :-  brother(Alter, Ego).
                         |   father(A, Ego), brother(B, A), son(Alter, B).
                         |   mother(A, Ego), sister(B, A), son(Alter, B).
{"Bro_FaBroSo_MoSisSo"}
;; 0
%brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).


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
                       |   step_father(Alter, Ego).
{"Fa_FaBro_FaFaBroSo_FaFaFaBroSoSo_FaFaMoSisSoSo_FaMoBroDaSo_FaMoBroSoDaSo_FaMoFaBroDaSo_FaMoFaBroSoDaSo_FaMoFaFaBroDaSo_FaMoFaMoSisDaSo_FaMoFaSisSo_FaMoFaStsisSo_FaMoMoBroDaDaSo_FaMoMoSisDaSo_FaMoMoSisSoDaSo_FaMoSisSo_FaStbro_Stfa"}
;; 0
%father[eq]:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).
;; 1
%father[eq]:1, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%father[eq]:1, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 3
%father[eq]:1, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 4
%father[eq]:1, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 5
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 6
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(Alter, G).
;; 7
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 8
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:2, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 9
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 10
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:3, sister[eq]:2, brother:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaFaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 11
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=14, S=0, Star=0,  {FaMoFaFaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 12
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=14, S=0, Star=0,  {FaMoFaMoSisDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 13
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:3, step_brother:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=12, S=2, Star=0,  {FaMoFaStsisSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 14
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:3, step_brother:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=12, S=2, Star=0,  {FaMoFaStsisSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(Alter, K).
;; 15
%father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 16
%father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 17
%father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 18
%father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 19
%father[eq]:1, brother[eq]:3, step_brother:0%
 Lvl=1,  PC=5, S=2, Star=0,  {FaStbro}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(Alter, E), son(Alter, D).
;; 20
%father[eq]:1, brother[eq]:3, step_brother:1%
 Lvl=1,  PC=5, S=2, Star=0,  {FaStbro}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(Alter, E), son(Alter, D).
;; 21
%father[eq]:2, step_father:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stfa}  
 father(A, Ego), mother(B, Ego), husband(Alter, B), not(equal(Alter, A)).


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


mother[eq](Alter, Ego) :-  father[eq](A, Ego), wife(Alter, A).
                       |   mother(A, Ego), sister[eq]1(Alter, A).
                       |   step_mother(Alter, Ego).
{"FaBroWi_FaFaBroSoWi_FaFaFaBroSoSoWi_FaFaMoSisSoSoWi_FaMoBroDaSoWi_FaMoBroSoDaSoWi_FaMoFaBroDaSoWi_FaMoFaFaBroDaSoWi_FaMoFaMoSisDaSoWi_FaMoFaSisSoWi_FaMoFaStsisSoWi_FaMoMoBroDaDaSoWi_FaMoMoSisDaSoWi_FaMoSisSoWi_FaStbroWi_Mo_MoBroDa_MoBroSoDa_MoFaBroDa_MoFaBroSoDa_MoFaBroSoSoDa_MoFaFaBroDa_MoFaMoBroDaDa_MoFaMoBroSoDaDa_MoFaMoSisDa_MoFaSis_MoFaStsis_MoMoBroDaDa_MoMoBroSoDaDa_MoMoFaBroDaDa_MoMoSisDa_MoMoSisSoDa_MoMoSisSoSoDa_MoSis_Stmo"}
;; 0
%mother[eq]:0, father[eq]:0%
 Lvl=1,  PC=1, S=1, Star=0,  {Mo}  
 father(A, Ego), wife(Alter, A).
;; 1
%mother[eq]:0, father[eq]:1, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 2
%mother[eq]:0, father[eq]:1, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaBroSoWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), wife(Alter, F).
;; 3
%mother[eq]:0, father[eq]:1, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaFaBroSoSoWi}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), wife(Alter, H).
;; 4
%mother[eq]:0, father[eq]:1, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoSisSoSoWi}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), wife(Alter, H).
;; 5
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), wife(Alter, F).
;; 6
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoSisDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(H, G), wife(Alter, H).
;; 7
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoBroDaDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(I, H), wife(Alter, I).
;; 8
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:2, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoFaBroDaSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), wife(Alter, H).
;; 9
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {FaMoFaSisSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), wife(Alter, G).
;; 10
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=14, S=1, Star=0,  {FaMoFaFaBroDaSoWi}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), wife(Alter, L).
;; 11
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=14, S=1, Star=0,  {FaMoFaMoSisDaSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), wife(Alter, L).
;; 12
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:3, step_brother:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=12, S=3, Star=0,  {FaMoFaStsisSoWi}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), wife(Alter, L).
;; 13
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:4, brother[eq]:3, step_brother:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=12, S=3, Star=0,  {FaMoFaStsisSoWi}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), son(L, K), wife(Alter, L).
;; 14
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), wife(Alter, G).
;; 15
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroSoDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 16
%mother[eq]:0, father[eq]:1, brother[eq]:3, step_brother:0%
 Lvl=1,  PC=5, S=3, Star=0,  {FaStbroWi}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(F, E), son(F, D), wife(Alter, F).
;; 17
%mother[eq]:0, father[eq]:1, brother[eq]:3, step_brother:1%
 Lvl=1,  PC=5, S=3, Star=0,  {FaStbroWi}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(F, E), son(F, D), wife(Alter, F).
;; 18
%mother[eq]:0, father[eq]:2, step_father:0%
 Lvl=1,  PC=2, S=2, Star=0,  {Mo}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(Alter, C).
;; 19
%mother[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 20
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E), not(equal(Alter, A)).
;; 21
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 22
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, A)).
;; 23
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 24
%mother[eq]:1, sister[eq]1:0, sister[eq]:2, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 25
%mother[eq]:1, sister[eq]1:0, sister[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 26
%mother[eq]:1, sister[eq]1:0, sister[eq]:3, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, B)).
;; 27
%mother[eq]:1, sister[eq]1:0, sister[eq]:3, sister[eq]:2, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 28
%mother[eq]:1, sister[eq]1:0, sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), female(Alter).
;; 29
%mother[eq]:1, sister[eq]1:0, sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {MoFaMoBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(Alter, J), not(equal(Alter, E)).
;; 30
%mother[eq]:1, sister[eq]1:0, sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {MoFaMoBroSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), son(J, I), daughter(K, J), daughter(Alter, K), not(equal(Alter, E)).
;; 31
%mother[eq]:1, sister[eq]1:0, sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:2, brother:0, sibling:0%
 Lvl=2,  PC=12, S=0, Star=0,  {MoFaFaBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(Alter, I).
;; 32
%mother[eq]:1, sister[eq]1:0, sister[eq]:4, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=12, S=0, Star=0,  {MoFaFaBroDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), mother(H, G), father(I, G), child(Alter, H), child(Alter, I), not(equal(Alter, G)), female(Alter).
;; 33
%mother[eq]:1, sister[eq]1:0, sister[eq]:4, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=12, S=0, Star=0,  {MoFaMoSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), mother(H, G), father(I, G), child(Alter, H), child(Alter, I), not(equal(Alter, G)), female(Alter).
;; 34
%mother[eq]:1, sister[eq]1:0, sister[eq]:4, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {MoFaMoBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 35
%mother[eq]:1, sister[eq]1:0, sister[eq]:4, brother[eq]:3, step_brother:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=10, S=2, Star=0,  {MoFaStsis}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), mother(H, G), father(I, G), child(Alter, H), child(Alter, I), not(equal(Alter, G)), female(Alter).
;; 36
%mother[eq]:1, sister[eq]1:0, sister[eq]:4, brother[eq]:3, step_brother:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=10, S=2, Star=0,  {MoFaStsis}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), mother(H, G), father(I, G), child(Alter, H), child(Alter, I), not(equal(Alter, G)), female(Alter).
;; 37
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 38
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 39
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 40
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 41
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 42
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 43
%mother[eq]:2, step_mother:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stmo}  
 father(A, Ego), mother(B, Ego), wife(Alter, A), not(equal(Alter, B)).


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
                       |   mother(A, Ego), sister[eq]1(B, A), daughter(Alter, B), not(equal(Alter, Ego)).
                       |   father(A, Ego), brother(B, A), daughter(Alter, B).
                       |   father(A, Ego), sister[eq](Alter, A).
                       |   father(A, Ego), brother[eq](B, A), sister[eq](Alter, B).
{"FaBroDa_FaFaBroDa_FaFaBroWiBroDaDa_FaFaBroWiBroSoDaDa_FaFaFaBroSoDa_FaFaMoSisSoDa_FaMoBroDaDa_FaMoBroSoDaDa_FaMoFaBroDaDa_FaMoFaBroSoDaDa_FaMoFaBroSoSoDaDa_FaMoMoSisSoDaDa_FaMoMoSisSoSoDaDa_FaMoSisDa_FaMoSisHuBroDa_FaSis_FaStfaBroDa_FaStfaWiBroDaDa_FaStfaWiBroSoDaDa_FaStmoBroDaDa_FaStmoBroSoDaDa_FaStmoHuBroDa_FaStsis_MoBroDaDa_MoBroSoDaDa_MoFaBroDaDa_MoFaBroSoDaDa_MoMoBroDaDaDa_MoMoBroSoDaDaDa_MoMoSisSoDaDa_MoSisDa_Sis"}
;; 0
%sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), not(equal(Alter, Ego)).
;; 2
%sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(Alter, G), not(equal(Alter, Ego)).
;; 3
%sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H), not(equal(Alter, Ego)).
;; 4
%sister[eq]:1, sister[eq]1:0, sister[eq]:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 5
%sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E), not(equal(Alter, Ego)).
;; 6
%sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)).
;; 7
%sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)).
;; 8
%sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 9
%sister[eq]:2, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 10
%sister[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 11
%sister[eq]:3, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, A)).
;; 12
%sister[eq]:3, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 13
%sister[eq]:3, sister[eq]:2, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 14
%sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 15
%sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(Alter, I), not(equal(Alter, D)).
;; 16
%sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {FaMoFaBroSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), son(J, I), daughter(K, J), daughter(Alter, K), not(equal(Alter, D)).
;; 17
%sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {FaMoMoSisSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), daughter(K, J), daughter(Alter, K), not(equal(Alter, D)).
;; 18
%sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoBroSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(I, H), daughter(J, I), daughter(Alter, J), not(equal(Alter, D)).
;; 19
%sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaMoFaBroSoSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), son(J, I), son(K, J), daughter(L, K), daughter(Alter, L), not(equal(Alter, D)).
;; 20
%sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaMoMoSisSoSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), son(K, J), daughter(L, K), daughter(Alter, L), not(equal(Alter, D)).
;; 21
%sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:2, brother:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(Alter, H).
;; 22
%sister[eq]:4, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 23
%sister[eq]:4, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {FaFaBroWiBroDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(Alter, K), not(equal(Alter, F)).
;; 24
%sister[eq]:4, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaFaBroWiBroSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), son(K, J), daughter(L, K), daughter(Alter, L), not(equal(Alter, F)).
;; 25
%sister[eq]:4, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, brother:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaSis}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(Alter, J).
;; 26
%sister[eq]:4, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaFaFaBroSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 27
%sister[eq]:4, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaFaMoSisSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 28
%sister[eq]:4, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 29
%sister[eq]:4, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(Alter, K), not(equal(Alter, F)).
;; 30
%sister[eq]:4, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaMoBroSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), son(K, J), daughter(L, K), daughter(Alter, L), not(equal(Alter, F)).
;; 31
%sister[eq]:4, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2, brother:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaMoSisHuBroDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(Alter, J).
;; 32
%sister[eq]:4, brother[eq]:2, sister[eq]1:0, sister[eq]:2, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaMoFaBroDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 33
%sister[eq]:4, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), father(I, G), child(Alter, H), child(Alter, I), not(equal(Alter, G)), female(Alter).
;; 34
%sister[eq]:4, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoBroSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 35
%sister[eq]:4, brother[eq]:3, step_brother:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=2, Star=0,  {FaStsis}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(F, E), son(F, D), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 36
%sister[eq]:4, brother[eq]:3, step_brother:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {FaStfaWiBroDaDa}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(F, E), son(F, D), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(Alter, K), not(equal(Alter, F)).
;; 37
%sister[eq]:4, brother[eq]:3, step_brother:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=13, S=2, Star=0,  {FaStfaWiBroSoDaDa}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(F, E), son(F, D), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), son(K, J), daughter(L, K), daughter(Alter, L), not(equal(Alter, F)).
;; 38
%sister[eq]:4, brother[eq]:3, step_brother:0, sister[eq]:2, brother:0, sibling:0%
 Lvl=1,  PC=11, S=2, Star=0,  {FaStfaBroDa}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(F, E), son(F, D), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(Alter, J).
;; 39
%sister[eq]:4, brother[eq]:3, step_brother:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=2, Star=0,  {FaStsis}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(F, E), son(F, D), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 40
%sister[eq]:4, brother[eq]:3, step_brother:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {FaStmoBroDaDa}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(F, E), son(F, D), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(Alter, K), not(equal(Alter, F)).
;; 41
%sister[eq]:4, brother[eq]:3, step_brother:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=13, S=2, Star=0,  {FaStmoBroSoDaDa}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(F, E), son(F, D), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), son(K, J), daughter(L, K), daughter(Alter, L), not(equal(Alter, F)).
;; 42
%sister[eq]:4, brother[eq]:3, step_brother:1, sister[eq]:2, brother:0, sibling:0%
 Lvl=1,  PC=11, S=2, Star=0,  {FaStmoHuBroDa}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(F, E), son(F, D), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(Alter, J).


sister[eq]1(Alter, Ego) :-  sister[eq](Alter, Ego).
                        |   brother[eq]1a(A, Ego), daughter(Alter, A).
{"BroDa_BroSoDa_FaBroDa_FaBroSoDa_FaBroSoSoDa_FaFaBroDa_FaFaBroWiBroDaDa_FaFaBroWiBroSoDaDa_FaFaFaBroSoDa_FaFaMoSisSoDa_FaMoBroDaDa_FaMoBroSoDaDa_FaMoFaBroDaDa_FaMoFaBroSoDaDa_FaMoFaBroSoSoDaDa_FaMoMoSisSoDaDa_FaMoMoSisSoSoDaDa_FaMoSisDa_FaMoSisHuBroDa_FaSis_FaStfaBroDa_FaStfaWiBroDaDa_FaStfaWiBroSoDaDa_FaStmoBroDaDa_FaStmoBroSoDaDa_FaStmoHuBroDa_FaStsis_MoBroDaDa_MoBroSoDaDa_MoFaBroDaDa_MoFaBroSoDaDa_MoMoSisSoDaDa_MoSisDa_MoSisSoDa_MoSisSoSoDa_Sis"}
;; 0
%sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), not(equal(Alter, Ego)).
;; 2
%sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 3
%sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E), not(equal(Alter, Ego)).
;; 4
%sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)).
;; 5
%sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)).
;; 6
%sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 7
%sister[eq]1:0, sister[eq]:2, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 8
%sister[eq]1:0, sister[eq]:3, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 9
%sister[eq]1:0, sister[eq]:3, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, A)).
;; 10
%sister[eq]1:0, sister[eq]:3, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 11
%sister[eq]1:0, sister[eq]:3, sister[eq]:2, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 12
%sister[eq]1:0, sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 13
%sister[eq]1:0, sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(I, H), daughter(Alter, I), not(equal(Alter, D)).
;; 14
%sister[eq]1:0, sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {FaMoFaBroSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), son(J, I), daughter(K, J), daughter(Alter, K), not(equal(Alter, D)).
;; 15
%sister[eq]1:0, sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {FaMoMoSisSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), daughter(K, J), daughter(Alter, K), not(equal(Alter, D)).
;; 16
%sister[eq]1:0, sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoBroSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), son(I, H), daughter(J, I), daughter(Alter, J), not(equal(Alter, D)).
;; 17
%sister[eq]1:0, sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaMoFaBroSoSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), son(J, I), son(K, J), daughter(L, K), daughter(Alter, L), not(equal(Alter, D)).
;; 18
%sister[eq]1:0, sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaMoMoSisSoSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), son(J, I), son(K, J), daughter(L, K), daughter(Alter, L), not(equal(Alter, D)).
;; 19
%sister[eq]1:0, sister[eq]:4, brother[eq]:0, brother:0, sibling:0, sister[eq]:2, brother:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(Alter, H).
;; 20
%sister[eq]1:0, sister[eq]:4, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 21
%sister[eq]1:0, sister[eq]:4, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {FaFaBroWiBroDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(Alter, K), not(equal(Alter, F)).
;; 22
%sister[eq]1:0, sister[eq]:4, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaFaBroWiBroSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), son(K, J), daughter(L, K), daughter(Alter, L), not(equal(Alter, F)).
;; 23
%sister[eq]1:0, sister[eq]:4, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0, sister[eq]:2, brother:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaSis}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(Alter, J).
;; 24
%sister[eq]1:0, sister[eq]:4, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaFaFaBroSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 25
%sister[eq]1:0, sister[eq]:4, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaFaMoSisSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 26
%sister[eq]1:0, sister[eq]:4, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 27
%sister[eq]1:0, sister[eq]:4, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=14, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(Alter, K), not(equal(Alter, F)).
;; 28
%sister[eq]1:0, sister[eq]:4, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=15, S=0, Star=0,  {FaMoBroSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), son(K, J), daughter(L, K), daughter(Alter, L), not(equal(Alter, F)).
;; 29
%sister[eq]1:0, sister[eq]:4, brother[eq]:2, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0, sister[eq]:2, brother:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaMoSisHuBroDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(Alter, J).
;; 30
%sister[eq]1:0, sister[eq]:4, brother[eq]:2, sister[eq]1:0, sister[eq]:2, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaMoFaBroDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 31
%sister[eq]1:0, sister[eq]:4, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), mother(H, G), father(I, G), child(Alter, H), child(Alter, I), not(equal(Alter, G)), female(Alter).
;; 32
%sister[eq]1:0, sister[eq]:4, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=13, S=0, Star=0,  {FaMoBroSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 33
%sister[eq]1:0, sister[eq]:4, brother[eq]:3, step_brother:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=2, Star=0,  {FaStsis}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(F, E), son(F, D), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 34
%sister[eq]1:0, sister[eq]:4, brother[eq]:3, step_brother:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {FaStfaWiBroDaDa}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(F, E), son(F, D), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(Alter, K), not(equal(Alter, F)).
;; 35
%sister[eq]1:0, sister[eq]:4, brother[eq]:3, step_brother:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=13, S=2, Star=0,  {FaStfaWiBroSoDaDa}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(F, E), son(F, D), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), son(K, J), daughter(L, K), daughter(Alter, L), not(equal(Alter, F)).
;; 36
%sister[eq]1:0, sister[eq]:4, brother[eq]:3, step_brother:0, sister[eq]:2, brother:0, sibling:0%
 Lvl=1,  PC=11, S=2, Star=0,  {FaStfaBroDa}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(F, E), son(F, D), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(Alter, J).
;; 37
%sister[eq]1:0, sister[eq]:4, brother[eq]:3, step_brother:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=2, Star=0,  {FaStsis}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(F, E), son(F, D), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 38
%sister[eq]1:0, sister[eq]:4, brother[eq]:3, step_brother:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {FaStmoBroDaDa}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(F, E), son(F, D), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(K, J), daughter(Alter, K), not(equal(Alter, F)).
;; 39
%sister[eq]1:0, sister[eq]:4, brother[eq]:3, step_brother:1, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=13, S=2, Star=0,  {FaStmoBroSoDaDa}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(F, E), son(F, D), mother(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), son(K, J), daughter(L, K), daughter(Alter, L), not(equal(Alter, F)).
;; 40
%sister[eq]1:0, sister[eq]:4, brother[eq]:3, step_brother:1, sister[eq]:2, brother:0, sibling:0%
 Lvl=1,  PC=11, S=2, Star=0,  {FaStmoHuBroDa}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(F, E), son(F, D), father(G, F), mother(H, G), father(I, G), child(J, H), child(J, I), not(equal(J, G)), male(J), daughter(Alter, J).
;; 41
%sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 42
%sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 43
%sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 44
%sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(Alter, D).
;; 45
%sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 46
%sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
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

