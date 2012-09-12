;;  Horn Clause Representation of Crow-1 Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Crow-1") (author, "Floyd Lounsbury") (date, "1964-01-01") (citation, "Floyd Lounsbury, 'A Formal Account of the Crow- and Omaha-Type Kinship Terminologies' in EXPLORATIONS IN CULTURAL ANTHROPOLOGY, ed. W.H. Goodenough, 1964, McGraw-Hill") 
(non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, true) (polygamyOK, false) (address, false) (recursiveLevels, 1)
(overlaps, (brother[eq], (brother[eq]1, brother[eq]a, brother[eq]1a, brother[eq]2)), (brother[eq]1, (brother[eq]1a, brother[eq]2, brother[eq]a, brother[eq])), (brother[eq]1a, (brother[eq]1, brother[eq]2, brother[eq]a, brother[eq])), (brother[eq]2, (brother[eq]1, brother[eq]1a, brother[eq]a, brother[eq])), (brother[eq]a, (brother[eq]1, brother[eq]2, brother[eq]1a, brother[eq])), (sister[eq], (sister[eq]1)), (sister[eq]1, (sister[eq])))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

brother(Alter, Ego) :-  sibling(Alter, Ego), male(Alter).
;; 0
%brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).


brother[eq](Alter, Ego) :-  brother(Alter, Ego).
                        |   father(A, Ego), brother[eq]1a(B, A), son(Alter, B).
                        |   mother(A, Ego), sister[eq](B, A), son(Alter, B).
                        |   step_brother(Alter, Ego).
{"Bro_FaBroSo_FaFaBroDaSoSo_FaFaBroSoSo_FaFaFaStbroDaSoDaSoSo_FaFaFaStbroDaSoSoSo_FaFaMoSisDaSoSoSo_FaFaMoSisSoSoSo_FaFaSisSoDaSoSo_FaFaSisSoSoSo_FaFaStbroDaSoSo_FaMoFaBroDaDaSoSo_FaMoFaStbroDaDaSoSo_FaMoSisDaSoSo_FaMoSisSoSo_FaSisSoSo_MoFaBroDaSo_MoFaFaBroSoDaSo_MoFaFaStbroDaDaSoDaSo_MoFaFaStbroDaSoDaSo_MoFaMoSisSoDaSo_MoFaSisDaSoDaSo_MoFaSisSoDaSo_MoFaStbroDaSo_MoMoFaBroDaDaSo_MoMoFaStbroDaDaSo_MoMoSisDaSo_MoSisSo_Stbro"}
;; 0
%brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%brother[eq]:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 3
%brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 4
%brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 5
%brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(H, G), son(I, H), son(Alter, I).
;; 6
%brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaFaFaStbroDaSoSoSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(J, I), son(K, J), son(Alter, K).
;; 7
%brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaFaFaStbroDaSoSoSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(J, I), son(K, J), son(Alter, K).
;; 8
%brother[eq]:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 9
%brother[eq]:1, brother[eq]1a:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 10
%brother[eq]:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), son(Alter, G).
;; 11
%brother[eq]:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(Alter, I).
;; 12
%brother[eq]:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaMoFaStbroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), not(equal(J, A)), son(K, J), son(Alter, K).
;; 13
%brother[eq]:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaMoFaStbroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), not(equal(J, A)), son(K, J), son(Alter, K).
;; 14
%brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 15
%brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=9, S=2, Star=0,  {FaFaStbroDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), daughter(H, G), son(I, H), son(Alter, I).
;; 16
%brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=9, S=2, Star=0,  {FaFaStbroDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), daughter(H, G), son(I, H), son(Alter, I).
;; 17
%brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 18
%brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-2,  PC=12, S=2, Star=0,  {FaFaFaStbroDaSoDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(J, I), daughter(K, J), son(L, K), son(Alter, L).
;; 19
%brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-2,  PC=12, S=2, Star=0,  {FaFaFaStbroDaSoDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(J, I), daughter(K, J), son(L, K), son(Alter, L).
;; 20
%brother[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 21
%brother[eq]:2, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F).
;; 22
%brother[eq]:2, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 23
%brother[eq]:2, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=10, S=2, Star=0,  {MoMoFaStbroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), not(equal(J, A)), son(Alter, J).
;; 24
%brother[eq]:2, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=10, S=2, Star=0,  {MoMoFaStbroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), not(equal(J, A)), son(Alter, J).
;; 25
%brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 26
%brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 27
%brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 28
%brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=8, S=2, Star=0,  {MoFaStbroDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), daughter(H, G), son(Alter, H).
;; 29
%brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=8, S=2, Star=0,  {MoFaStbroDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), daughter(H, G), son(Alter, H).
;; 30
%brother[eq]:2, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 31
%brother[eq]:2, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=11, S=2, Star=0,  {MoFaFaStbroDaSoDaSo}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(J, I), daughter(K, J), son(Alter, K).
;; 32
%brother[eq]:2, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=11, S=2, Star=0,  {MoFaFaStbroDaSoDaSo}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(J, I), daughter(K, J), son(Alter, K).
;; 33
%brother[eq]:2, sister[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 34
%brother[eq]:2, sister[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-2,  PC=12, S=2, Star=0,  {MoFaFaStbroDaDaSoDaSo}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), son(K, J), daughter(L, K), son(Alter, L).
;; 35
%brother[eq]:2, sister[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-2,  PC=12, S=2, Star=0,  {MoFaFaStbroDaDaSoDaSo}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), son(K, J), daughter(L, K), son(Alter, L).
;; 36
%brother[eq]:3, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C).
;; 37
%brother[eq]:3, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C).


brother[eq]1(Alter, Ego) :-  brother[eq](Alter, Ego).
                         |   sister[eq]1(A, Ego), son(Alter, A).
{"Bro_FaBroDaDaSo_FaBroDaSo_FaBroSo_FaFaBroDaSoSo_FaFaBroSoDaDaSo_FaFaBroSoDaSo_FaFaBroSoSo_FaFaFaStbroDaSoSoSo_FaFaMoSisDaSoSoSo_FaFaMoSisSoSoSo_FaFaSisSoDaSoSo_FaFaSisSoSoDaSo_FaFaSisSoSoSo_FaFaStbroDaSoSo_FaMoFaBroDaDaSoSo_FaMoFaStbroDaDaSoSo_FaMoSisDaSoSo_FaMoSisSoDaDaSo_FaMoSisSoDaSo_FaMoSisSoSo_FaSisSoDaSo_FaSisSoSo_FaStbroDaDaSo_FaStbroDaSo_MoFaBroDaDaDaSo_MoFaBroDaDaSo_MoFaBroDaSo_MoFaFaBroSoDaSo_MoFaMoSisSoDaSo_MoFaSisDaSoDaSo_MoFaSisSoDaSo_MoFaStbroDaDaDaSo_MoFaStbroDaDaSo_MoFaStbroDaSo_MoMoFaBroDaDaSo_MoMoFaStbroDaDaSo_MoMoSisDaSo_MoSisDaDaSo_MoSisDaSo_MoSisSo_SisDaSo_SisSo_Stbro"}
;; 0
%brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 3
%brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 4
%brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 5
%brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(H, G), son(I, H), son(Alter, I).
;; 6
%brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaFaFaStbroDaSoSoSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(J, I), son(K, J), son(Alter, K).
;; 7
%brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaFaFaStbroDaSoSoSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(J, I), son(K, J), son(Alter, K).
;; 8
%brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 9
%brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 10
%brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), son(Alter, G).
;; 11
%brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(Alter, I).
;; 12
%brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaMoFaStbroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), not(equal(J, A)), son(K, J), son(Alter, K).
;; 13
%brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaMoFaStbroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), not(equal(J, A)), son(K, J), son(Alter, K).
;; 14
%brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 15
%brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=9, S=2, Star=0,  {FaFaStbroDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), daughter(H, G), son(I, H), son(Alter, I).
;; 16
%brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=9, S=2, Star=0,  {FaFaStbroDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), daughter(H, G), son(I, H), son(Alter, I).
;; 17
%brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 18
%brother[eq]1:0, brother[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 19
%brother[eq]1:0, brother[eq]:2, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F).
;; 20
%brother[eq]1:0, brother[eq]:2, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 21
%brother[eq]1:0, brother[eq]:2, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=10, S=2, Star=0,  {MoMoFaStbroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), not(equal(J, A)), son(Alter, J).
;; 22
%brother[eq]1:0, brother[eq]:2, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=10, S=2, Star=0,  {MoMoFaStbroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), not(equal(J, A)), son(Alter, J).
;; 23
%brother[eq]1:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 24
%brother[eq]1:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 25
%brother[eq]1:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 26
%brother[eq]1:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=8, S=2, Star=0,  {MoFaStbroDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), daughter(H, G), son(Alter, H).
;; 27
%brother[eq]1:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=8, S=2, Star=0,  {MoFaStbroDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), daughter(H, G), son(Alter, H).
;; 28
%brother[eq]1:0, brother[eq]:2, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 29
%brother[eq]1:0, brother[eq]:2, sister[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 30
%brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C).
;; 31
%brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C).
;; 32
%brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 33
%brother[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), son(Alter, E).
;; 34
%brother[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(Alter, G).
;; 35
%brother[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=9, S=2, Star=0,  {MoFaStbroDaDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), daughter(H, G), daughter(I, H), not(equal(I, Ego)), son(Alter, I).
;; 36
%brother[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=9, S=2, Star=0,  {MoFaStbroDaDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), daughter(H, G), daughter(I, H), not(equal(I, Ego)), son(Alter, I).
;; 37
%brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 38
%brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 39
%brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 40
%brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 41
%brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {FaStbroDaSo}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(F, E), son(F, D), daughter(G, F), son(Alter, G).
;; 42
%brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {FaStbroDaSo}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(F, E), son(F, D), daughter(G, F), son(Alter, G).
;; 43
%brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 44
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(Alter, D).
;; 45
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), daughter(F, E), son(Alter, F).
;; 46
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(H, G), son(Alter, H).
;; 47
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-2,  PC=10, S=2, Star=0,  {MoFaStbroDaDaDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), daughter(H, G), daughter(I, H), not(equal(I, Ego)), daughter(J, I), son(Alter, J).
;; 48
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-2,  PC=10, S=2, Star=0,  {MoFaStbroDaDaDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), daughter(H, G), daughter(I, H), not(equal(I, Ego)), daughter(J, I), son(Alter, J).
;; 49
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 50
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 51
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 52
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {FaStbroDaDaSo}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(F, E), son(F, D), daughter(G, F), daughter(H, G), son(Alter, H).
;; 53
%brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {FaStbroDaDaSo}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(F, E), son(F, D), daughter(G, F), daughter(H, G), son(Alter, H).


brother[eq]1a(Alter, Ego) :-  brother[eq]a(Alter, Ego).
                          |   sister[eq](A, Ego), son(Alter, A).
{"Bro_FaBroDaSo_FaBroSo_FaFaBroDaSoDaSo_FaFaBroDaSoSo_FaFaBroSoDaSo_FaFaFaStbroDaSoDaSoSo_FaFaFaStbroDaSoSoDaSo_FaFaSisSoDaSoSo_FaFaSisSoSoDaSo_FaFaStbroDaDaSoDaSo_FaFaStbroDaSoDaSo_FaFaStbroDaSoSo_FaMoFaBroDaDaSoSo_FaMoFaStbroDaDaSoSo_FaMoFaStbroDaSoDaSo_FaMoSisDaSoSo_FaMoSisSoDaSo_FaMoSisSoSo_FaSisDaSoDaSo_FaSisSoDaSo_FaSisSoSo_FaStbroDaSo_MoFaBroDaDaSo_MoFaStbroDaDaSo_MoSisDaSo_MoSisSo_SisSo"}
;; 0
%brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 3
%brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 4
%brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), son(Alter, G).
;; 5
%brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(Alter, I).
;; 6
%brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaMoFaStbroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), not(equal(J, A)), son(K, J), son(Alter, K).
;; 7
%brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaMoFaStbroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), not(equal(J, A)), son(K, J), son(Alter, K).
;; 8
%brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 9
%brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=9, S=2, Star=0,  {FaFaStbroDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), daughter(H, G), son(I, H), son(Alter, I).
;; 10
%brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=9, S=2, Star=0,  {FaFaStbroDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), daughter(H, G), son(I, H), son(Alter, I).
;; 11
%brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 12
%brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-2,  PC=12, S=2, Star=0,  {FaFaFaStbroDaSoDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(J, I), daughter(K, J), son(L, K), son(Alter, L).
;; 13
%brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-2,  PC=12, S=2, Star=0,  {FaFaFaStbroDaSoDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(J, I), daughter(K, J), son(L, K), son(Alter, L).
;; 14
%brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 15
%brother[eq]1a:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 16
%brother[eq]1a:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), son(Alter, E).
;; 17
%brother[eq]1a:1, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), son(Alter, G).
;; 18
%brother[eq]1a:1, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=9, S=2, Star=0,  {MoFaStbroDaDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), daughter(H, G), daughter(I, H), not(equal(I, Ego)), son(Alter, I).
;; 19
%brother[eq]1a:1, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=9, S=2, Star=0,  {MoFaStbroDaDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), daughter(H, G), daughter(I, H), not(equal(I, Ego)), son(Alter, I).
;; 20
%brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 21
%brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 22
%brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 23
%brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-2,  PC=12, S=2, Star=0,  {FaFaFaStbroDaSoSoDaSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(J, I), son(K, J), daughter(L, K), son(Alter, L).
;; 24
%brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-2,  PC=12, S=2, Star=0,  {FaFaFaStbroDaSoSoDaSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(J, I), son(K, J), daughter(L, K), son(Alter, L).
;; 25
%brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 26
%brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaMoFaStbroDaSoDaSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(J, I), daughter(K, J), son(Alter, K).
;; 27
%brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaMoFaStbroDaSoDaSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(J, I), daughter(K, J), son(Alter, K).
;; 28
%brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {FaStbroDaSo}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(F, E), son(F, D), daughter(G, F), son(Alter, G).
;; 29
%brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {FaStbroDaSo}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(F, E), son(F, D), daughter(G, F), son(Alter, G).
;; 30
%brother[eq]1a:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 31
%brother[eq]1a:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 32
%brother[eq]1a:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-2,  PC=10, S=2, Star=0,  {FaFaStbroDaSoDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), daughter(H, G), son(I, H), daughter(J, I), son(Alter, J).
;; 33
%brother[eq]1a:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-2,  PC=10, S=2, Star=0,  {FaFaStbroDaSoDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), daughter(H, G), son(I, H), daughter(J, I), son(Alter, J).
;; 34
%brother[eq]1a:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 35
%brother[eq]1a:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-3,  PC=11, S=2, Star=0,  {FaFaStbroDaDaSoDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), daughter(H, G), daughter(I, H), son(J, I), daughter(K, J), son(Alter, K).
;; 36
%brother[eq]1a:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-3,  PC=11, S=2, Star=0,  {FaFaStbroDaDaSoDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), daughter(H, G), daughter(I, H), son(J, I), daughter(K, J), son(Alter, K).


brother[eq]2(Alter, Ego) :-  brother[eq](Alter, Ego).
                         |   mother(A, Ego), brother[eq]2(Alter, A).
{"Bro_FaBroSo_FaFaBroDaSoSo_FaFaBroSoSo_FaFaFaStbroDaSoDaSoSo_FaFaFaStbroDaSoSoSo_FaFaMoSisDaSoSoSo_FaFaMoSisSoSoSo_FaFaSisSoDaSoSo_FaFaSisSoSoSo_FaFaStbroDaSoSo_FaMoFaBroDaDaSoSo_FaMoFaStbroDaDaSoSo_FaMoSisDaSoSo_FaMoSisSoSo_FaSisSoSo_MoBro_MoFaBroDaSo_MoFaBroSo_MoFaFaBroDaSoSo_MoFaFaBroSoDaSo_MoFaFaBroSoSo_MoFaFaMoSisDaSoSoSo_MoFaFaSisSoSoSo_MoFaFaStbroDaDaSoDaSo_MoFaFaStbroDaSoDaSo_MoFaFaStbroDaSoSo_MoFaMoSisDaSoSo_MoFaMoSisSoDaSo_MoFaMoSisSoSo_MoFaSisDaSoDaSo_MoFaSisSoDaSo_MoFaSisSoSo_MoFaStbroDaSo_MoMoFaBroDaDaSo_MoMoFaBroDaSo_MoMoFaSisSoDaSo_MoMoFaStbroDaDaSo_MoMoFaStbroDaSo_MoMoMoSisDaSo_MoMoSisDaSo_MoMoSisSo_MoSisSo_MoStbro_Stbro"}
;; 0
%brother[eq]2:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%brother[eq]2:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%brother[eq]2:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 3
%brother[eq]2:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 4
%brother[eq]2:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 5
%brother[eq]2:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(H, G), son(I, H), son(Alter, I).
;; 6
%brother[eq]2:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaFaFaStbroDaSoSoSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(J, I), son(K, J), son(Alter, K).
;; 7
%brother[eq]2:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaFaFaStbroDaSoSoSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(J, I), son(K, J), son(Alter, K).
;; 8
%brother[eq]2:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 9
%brother[eq]2:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 10
%brother[eq]2:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), son(Alter, G).
;; 11
%brother[eq]2:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(Alter, I).
;; 12
%brother[eq]2:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaMoFaStbroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), not(equal(J, A)), son(K, J), son(Alter, K).
;; 13
%brother[eq]2:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaMoFaStbroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), not(equal(J, A)), son(K, J), son(Alter, K).
;; 14
%brother[eq]2:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 15
%brother[eq]2:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=9, S=2, Star=0,  {FaFaStbroDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), daughter(H, G), son(I, H), son(Alter, I).
;; 16
%brother[eq]2:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=9, S=2, Star=0,  {FaFaStbroDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), daughter(H, G), son(I, H), son(Alter, I).
;; 17
%brother[eq]2:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 18
%brother[eq]2:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-2,  PC=12, S=2, Star=0,  {FaFaFaStbroDaSoDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(J, I), daughter(K, J), son(L, K), son(Alter, L).
;; 19
%brother[eq]2:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-2,  PC=12, S=2, Star=0,  {FaFaFaStbroDaSoDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(J, I), daughter(K, J), son(L, K), son(Alter, L).
;; 20
%brother[eq]2:0, brother[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 21
%brother[eq]2:0, brother[eq]:2, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F).
;; 22
%brother[eq]2:0, brother[eq]:2, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 23
%brother[eq]2:0, brother[eq]:2, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=10, S=2, Star=0,  {MoMoFaStbroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), not(equal(J, A)), son(Alter, J).
;; 24
%brother[eq]2:0, brother[eq]:2, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=10, S=2, Star=0,  {MoMoFaStbroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), not(equal(J, A)), son(Alter, J).
;; 25
%brother[eq]2:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 26
%brother[eq]2:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 27
%brother[eq]2:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 28
%brother[eq]2:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=8, S=2, Star=0,  {MoFaStbroDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), daughter(H, G), son(Alter, H).
;; 29
%brother[eq]2:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=8, S=2, Star=0,  {MoFaStbroDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), daughter(H, G), son(Alter, H).
;; 30
%brother[eq]2:0, brother[eq]:2, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 31
%brother[eq]2:0, brother[eq]:2, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=11, S=2, Star=0,  {MoFaFaStbroDaSoDaSo}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(J, I), daughter(K, J), son(Alter, K).
;; 32
%brother[eq]2:0, brother[eq]:2, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=11, S=2, Star=0,  {MoFaFaStbroDaSoDaSo}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(J, I), daughter(K, J), son(Alter, K).
;; 33
%brother[eq]2:0, brother[eq]:2, sister[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 34
%brother[eq]2:0, brother[eq]:2, sister[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-2,  PC=12, S=2, Star=0,  {MoFaFaStbroDaDaSoDaSo}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), son(K, J), daughter(L, K), son(Alter, L).
;; 35
%brother[eq]2:0, brother[eq]:2, sister[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-2,  PC=12, S=2, Star=0,  {MoFaFaStbroDaDaSoDaSo}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), son(K, J), daughter(L, K), son(Alter, L).
;; 36
%brother[eq]2:0, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C).
;; 37
%brother[eq]2:0, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C).
;; 38
%brother[eq]2:1, brother[eq]2:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 39
%brother[eq]2:1, brother[eq]2:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 40
%brother[eq]2:1, brother[eq]2:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 41
%brother[eq]2:1, brother[eq]2:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoSoSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 42
%brother[eq]2:1, brother[eq]2:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaFaMoSisDaSoSoSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), son(I, H), son(J, I), son(Alter, J).
;; 43
%brother[eq]2:1, brother[eq]2:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 44
%brother[eq]2:1, brother[eq]2:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 45
%brother[eq]2:1, brother[eq]2:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(H, G), son(Alter, H).
;; 46
%brother[eq]2:1, brother[eq]2:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 47
%brother[eq]2:1, brother[eq]2:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=10, S=2, Star=0,  {MoFaFaStbroDaSoSo}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(J, I), son(Alter, J).
;; 48
%brother[eq]2:1, brother[eq]2:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=10, S=2, Star=0,  {MoFaFaStbroDaSoSo}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(J, I), son(Alter, J).
;; 49
%brother[eq]2:1, brother[eq]2:0, brother[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 50
%brother[eq]2:1, brother[eq]2:0, brother[eq]:2, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(Alter, G).
;; 51
%brother[eq]2:1, brother[eq]2:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 52
%brother[eq]2:1, brother[eq]2:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=1,  PC=9, S=2, Star=0,  {MoMoFaStbroDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(Alter, I).
;; 53
%brother[eq]2:1, brother[eq]2:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=1,  PC=9, S=2, Star=0,  {MoMoFaStbroDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(Alter, I).
;; 54
%brother[eq]2:1, brother[eq]2:0, brother[eq]:2, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 55
%brother[eq]2:1, brother[eq]2:0, brother[eq]:3, step_brother:0%
 Lvl=1,  PC=5, S=2, Star=0,  {MoStbro}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(Alter, E), son(Alter, D).
;; 56
%brother[eq]2:1, brother[eq]2:0, brother[eq]:3, step_brother:1%
 Lvl=1,  PC=5, S=2, Star=0,  {MoStbro}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(Alter, E), son(Alter, D).


brother[eq]a(Alter, Ego) :-  brother(Alter, Ego).
                         |   father(A, Ego), brother[eq]1a(B, A), son(Alter, B).
                         |   mother(A, Ego), sister(B, A), son(Alter, B).
{"Bro_FaBroSo_FaFaBroDaSoSo_FaFaFaStbroDaSoDaSoSo_FaFaFaStbroDaSoSoSo_FaFaMoSisDaSoSoSo_FaFaSisSoDaSoSo_FaFaSisSoSoSo_FaFaStbroDaSoSo_FaMoFaBroDaDaSoSo_FaMoFaStbroDaDaSoSo_FaMoSisDaSoSo_FaMoSisSoSo_FaSisSoSo_MoSisSo"}
;; 0
%brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%brother[eq]a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%brother[eq]a:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 3
%brother[eq]a:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(H, G), son(I, H), son(Alter, I).
;; 4
%brother[eq]a:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaFaFaStbroDaSoSoSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(J, I), son(K, J), son(Alter, K).
;; 5
%brother[eq]a:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaFaFaStbroDaSoSoSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(J, I), son(K, J), son(Alter, K).
;; 6
%brother[eq]a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 7
%brother[eq]a:1, brother[eq]1a:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 8
%brother[eq]a:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), son(Alter, G).
;; 9
%brother[eq]a:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), son(Alter, I).
;; 10
%brother[eq]a:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaMoFaStbroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), not(equal(J, A)), son(K, J), son(Alter, K).
;; 11
%brother[eq]a:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaMoFaStbroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), not(equal(J, A)), son(K, J), son(Alter, K).
;; 12
%brother[eq]a:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 13
%brother[eq]a:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=9, S=2, Star=0,  {FaFaStbroDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), daughter(H, G), son(I, H), son(Alter, I).
;; 14
%brother[eq]a:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=9, S=2, Star=0,  {FaFaStbroDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), daughter(H, G), son(I, H), son(Alter, I).
;; 15
%brother[eq]a:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 16
%brother[eq]a:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-2,  PC=12, S=2, Star=0,  {FaFaFaStbroDaSoDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(J, I), daughter(K, J), son(L, K), son(Alter, L).
;; 17
%brother[eq]a:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-2,  PC=12, S=2, Star=0,  {FaFaFaStbroDaSoDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(J, I), daughter(K, J), son(L, K), son(Alter, L).
;; 18
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
                       |   father(A, Ego), brother[eq]1(Alter, A).
                       |   step_father(Alter, Ego).
{"Fa_FaBro_FaFaBroDaDaSo_FaFaBroDaSo_FaFaBroSo_FaFaFaBroDaSoSo_FaFaFaBroSoDaSo_FaFaFaBroSoSo_FaFaFaMoSisDaSoSoSo_FaFaFaSisSoSoSo_FaFaFaStbroDaSoSo_FaFaMoSisDaSoSo_FaFaMoSisSoDaSo_FaFaMoSisSoSo_FaFaSisSoDaSo_FaFaSisSoSo_FaFaStbroDaDaSo_FaFaStbroDaSo_FaMoFaBroDaDaDaSo_FaMoFaBroDaDaSo_FaMoFaBroDaSo_FaMoFaSisSoDaSo_FaMoFaStbroDaDaDaSo_FaMoFaStbroDaDaSo_FaMoFaStbroDaSo_FaMoMoSisDaSo_FaMoSisDaDaSo_FaMoSisDaSo_FaMoSisSo_FaSisDaSo_FaSisSo_FaStbro_Stfa"}
;; 0
%father[eq]:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).
;; 1
%father[eq]:1, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%father[eq]:1, brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 3
%father[eq]:1, brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 4
%father[eq]:1, brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 5
%father[eq]:1, brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaFaMoSisDaSoSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), son(I, H), son(J, I), son(Alter, J).
;; 6
%father[eq]:1, brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 7
%father[eq]:1, brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 8
%father[eq]:1, brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(H, G), son(Alter, H).
;; 9
%father[eq]:1, brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 10
%father[eq]:1, brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=10, S=2, Star=0,  {FaFaFaStbroDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(J, I), son(Alter, J).
;; 11
%father[eq]:1, brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=10, S=2, Star=0,  {FaFaFaStbroDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(J, I), son(Alter, J).
;; 12
%father[eq]:1, brother[eq]1:0, brother[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 13
%father[eq]:1, brother[eq]1:0, brother[eq]:2, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(Alter, G).
;; 14
%father[eq]:1, brother[eq]1:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 15
%father[eq]:1, brother[eq]1:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=1,  PC=9, S=2, Star=0,  {FaMoFaStbroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(Alter, I).
;; 16
%father[eq]:1, brother[eq]1:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=1,  PC=9, S=2, Star=0,  {FaMoFaStbroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(Alter, I).
;; 17
%father[eq]:1, brother[eq]1:0, brother[eq]:2, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 18
%father[eq]:1, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=1,  PC=5, S=2, Star=0,  {FaStbro}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(Alter, E), son(Alter, D).
;; 19
%father[eq]:1, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=1,  PC=5, S=2, Star=0,  {FaStbro}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(Alter, E), son(Alter, D).
;; 20
%father[eq]:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 21
%father[eq]:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F).
;; 22
%father[eq]:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 23
%father[eq]:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=10, S=2, Star=0,  {FaMoFaStbroDaDaSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), not(equal(J, A)), son(Alter, J).
;; 24
%father[eq]:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=10, S=2, Star=0,  {FaMoFaStbroDaDaSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), not(equal(J, A)), son(Alter, J).
;; 25
%father[eq]:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 26
%father[eq]:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 27
%father[eq]:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 28
%father[eq]:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=8, S=2, Star=0,  {FaFaStbroDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), daughter(H, G), son(Alter, H).
;; 29
%father[eq]:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=8, S=2, Star=0,  {FaFaStbroDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), daughter(H, G), son(Alter, H).
;; 30
%father[eq]:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 31
%father[eq]:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 32
%father[eq]:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), son(Alter, G).
;; 33
%father[eq]:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDaDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(Alter, I).
;; 34
%father[eq]:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaMoFaStbroDaDaDaSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), not(equal(J, A)), daughter(K, J), son(Alter, K).
;; 35
%father[eq]:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaMoFaStbroDaDaDaSo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), not(equal(J, A)), daughter(K, J), son(Alter, K).
;; 36
%father[eq]:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 37
%father[eq]:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=9, S=2, Star=0,  {FaFaStbroDaDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), daughter(H, G), daughter(I, H), son(Alter, I).
;; 38
%father[eq]:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=9, S=2, Star=0,  {FaFaStbroDaDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), daughter(H, G), daughter(I, H), son(Alter, I).
;; 39
%father[eq]:2, step_father:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stfa}  
 father(A, Ego), mother(B, Ego), husband(Alter, B), not(equal(Alter, A)).


generation[aux]07(Alter, Ego) :-  sibling(Alter, Ego).
                              |   parent(A, Ego), generation[aux]07(B, A), child(Alter, B).
;; 0
%generation[aux]07:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]07:1, generation[aux]07:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).


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
                       |   mother(A, Ego), sister[eq](Alter, A).
                       |   step_mother(Alter, Ego).
{"FaBroWi_FaFaBroDaDaSoWi_FaFaBroDaSoWi_FaFaBroSoWi_FaFaFaBroSoSoWi_FaFaFaMoSisDaSoSoSoWi_FaFaFaStbroDaSoSoWi_FaFaMoSisDaSoSoWi_FaFaMoSisSoSoWi_FaFaSisSoDaSoWi_FaFaSisSoSoWi_FaFaStbroDaDaSoWi_FaFaStbroDaSoWi_FaMoFaBroDaDaDaSoWi_FaMoFaBroDaDaSoWi_FaMoFaBroDaSoWi_FaMoFaStbroDaDaSoWi_FaMoFaStbroDaSoWi_FaMoMoSisDaSoWi_FaMoSisDaDaSoWi_FaMoSisDaSoWi_FaMoSisSoWi_FaSisDaSoWi_FaSisSoWi_FaStbroWi_Mo_MoFaBroDa_MoFaFaBroDaSoDa_MoFaFaBroSoDa_MoFaFaSisSoSoDa_MoFaFaStbroDaDaSoDa_MoFaFaStbroDaSoDa_MoFaMoSisSoDa_MoFaSisDaSoDa_MoFaSisSoDa_MoFaStbroDa_MoMoFaBroDaDa_MoMoFaStbroDaDa_MoMoSisDa_MoSis_Stmo"}
;; 0
%mother[eq]:0, father[eq]:0%
 Lvl=1,  PC=1, S=1, Star=0,  {Mo}  
 father(A, Ego), wife(Alter, A).
;; 1
%mother[eq]:0, father[eq]:1, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 2
%mother[eq]:0, father[eq]:1, brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaBroSoWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), wife(Alter, F).
;; 3
%mother[eq]:0, father[eq]:1, brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaFaBroSoSoWi}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), wife(Alter, H).
;; 4
%mother[eq]:0, father[eq]:1, brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {FaFaFaMoSisDaSoSoSoWi}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), son(I, H), son(J, I), son(K, J), wife(Alter, K).
;; 5
%mother[eq]:0, father[eq]:1, brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoSisSoSoWi}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), wife(Alter, H).
;; 6
%mother[eq]:0, father[eq]:1, brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoSoWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), wife(Alter, G).
;; 7
%mother[eq]:0, father[eq]:1, brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoSisDaSoSoWi}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(H, G), son(I, H), wife(Alter, I).
;; 8
%mother[eq]:0, father[eq]:1, brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=10, S=3, Star=0,  {FaFaFaStbroDaSoSoWi}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(J, I), son(K, J), wife(Alter, K).
;; 9
%mother[eq]:0, father[eq]:1, brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=10, S=3, Star=0,  {FaFaFaStbroDaSoSoWi}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(J, I), son(K, J), wife(Alter, K).
;; 10
%mother[eq]:0, father[eq]:1, brother[eq]1:0, brother[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), wife(Alter, F).
;; 11
%mother[eq]:0, father[eq]:1, brother[eq]1:0, brother[eq]:2, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoSisDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(H, G), wife(Alter, H).
;; 12
%mother[eq]:0, father[eq]:1, brother[eq]1:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoFaBroDaSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), wife(Alter, H).
;; 13
%mother[eq]:0, father[eq]:1, brother[eq]1:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=1,  PC=9, S=3, Star=0,  {FaMoFaStbroDaSoWi}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(J, I), wife(Alter, J).
;; 14
%mother[eq]:0, father[eq]:1, brother[eq]1:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=1,  PC=9, S=3, Star=0,  {FaMoFaStbroDaSoWi}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(J, I), wife(Alter, J).
;; 15
%mother[eq]:0, father[eq]:1, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=1,  PC=5, S=3, Star=0,  {FaStbroWi}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(F, E), son(F, D), wife(Alter, F).
;; 16
%mother[eq]:0, father[eq]:1, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=1,  PC=5, S=3, Star=0,  {FaStbroWi}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(F, E), son(F, D), wife(Alter, F).
;; 17
%mother[eq]:0, father[eq]:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), wife(Alter, E).
;; 18
%mother[eq]:0, father[eq]:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(G, F), wife(Alter, G).
;; 19
%mother[eq]:0, father[eq]:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaBroDaDaSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(I, H), wife(Alter, I).
;; 20
%mother[eq]:0, father[eq]:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=10, S=3, Star=0,  {FaMoFaStbroDaDaSoWi}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), not(equal(J, A)), son(K, J), wife(Alter, K).
;; 21
%mother[eq]:0, father[eq]:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=10, S=3, Star=0,  {FaMoFaStbroDaDaSoWi}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), not(equal(J, A)), son(K, J), wife(Alter, K).
;; 22
%mother[eq]:0, father[eq]:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroDaSoWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), wife(Alter, G).
;; 23
%mother[eq]:0, father[eq]:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=8, S=3, Star=0,  {FaFaStbroDaSoWi}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), daughter(H, G), son(I, H), wife(Alter, I).
;; 24
%mother[eq]:0, father[eq]:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=8, S=3, Star=0,  {FaFaStbroDaSoWi}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), daughter(H, G), son(I, H), wife(Alter, I).
;; 25
%mother[eq]:0, father[eq]:1, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisSoDaSoWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 26
%mother[eq]:0, father[eq]:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaSoWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), wife(Alter, F).
;; 27
%mother[eq]:0, father[eq]:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisDaDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(G, F), son(H, G), wife(Alter, H).
;; 28
%mother[eq]:0, father[eq]:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoFaBroDaDaDaSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(I, H), son(J, I), wife(Alter, J).
;; 29
%mother[eq]:0, father[eq]:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroDaDaSoWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), wife(Alter, H).
;; 30
%mother[eq]:0, father[eq]:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=9, S=3, Star=0,  {FaFaStbroDaDaSoWi}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), daughter(H, G), daughter(I, H), son(J, I), wife(Alter, J).
;; 31
%mother[eq]:0, father[eq]:1, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=9, S=3, Star=0,  {FaFaStbroDaDaSoWi}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), daughter(H, G), daughter(I, H), son(J, I), wife(Alter, J).
;; 32
%mother[eq]:0, father[eq]:2, step_father:0%
 Lvl=1,  PC=2, S=2, Star=0,  {Mo}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(Alter, C).
;; 33
%mother[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 34
%mother[eq]:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E), not(equal(Alter, A)).
;; 35
%mother[eq]:1, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 36
%mother[eq]:1, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=1,  PC=9, S=2, Star=0,  {MoMoFaStbroDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), daughter(Alter, I), not(equal(Alter, A)).
;; 37
%mother[eq]:1, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=1,  PC=9, S=2, Star=0,  {MoMoFaStbroDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), daughter(Alter, I), not(equal(Alter, A)).
;; 38
%mother[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 39
%mother[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 40
%mother[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoSoDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(Alter, H).
;; 41
%mother[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 42
%mother[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=1,  PC=7, S=2, Star=0,  {MoFaStbroDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), daughter(Alter, G).
;; 43
%mother[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=1,  PC=7, S=2, Star=0,  {MoFaStbroDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), daughter(Alter, G).
;; 44
%mother[eq]:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 45
%mother[eq]:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 46
%mother[eq]:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=10, S=2, Star=0,  {MoFaFaStbroDaSoDa}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(J, I), daughter(Alter, J).
;; 47
%mother[eq]:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=10, S=2, Star=0,  {MoFaFaStbroDaSoDa}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(J, I), daughter(Alter, J).
;; 48
%mother[eq]:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 49
%mother[eq]:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=11, S=2, Star=0,  {MoFaFaStbroDaDaSoDa}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), son(K, J), daughter(Alter, K).
;; 50
%mother[eq]:1, sister[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=11, S=2, Star=0,  {MoFaFaStbroDaDaSoDa}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), daughter(J, I), son(K, J), daughter(Alter, K).
;; 51
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
                       |   mother(A, Ego), sister[eq](B, A), daughter(Alter, B), not(equal(Alter, Ego)).
                       |   father(A, Ego), brother[eq]1(B, A), daughter(Alter, B).
{"FaBroDa_FaFaBroDaDaSoDa_FaFaBroDaSoDa_FaFaBroSoDa_FaFaFaBroSoSoDa_FaFaFaStbroDaSoSoDa_FaFaMoSisSoSoDa_FaFaSisSoSoDa_FaFaStbroDaDaSoDa_FaFaStbroDaSoDa_FaMoFaBroDaSoDa_FaMoFaStbroDaSoDa_FaMoSisSoDa_FaSisDaSoDa_FaSisSoDa_FaStbroDa_MoFaBroDaDa_MoFaStbroDaDa_MoSisDa_Sis"}
;; 0
%sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), not(equal(Alter, Ego)).
;; 2
%sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 3
%sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=8, S=2, Star=0,  {MoFaStbroDaDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), daughter(H, G), daughter(Alter, H), not(equal(Alter, Ego)).
;; 4
%sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=8, S=2, Star=0,  {MoFaStbroDaDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), daughter(H, G), daughter(Alter, H), not(equal(Alter, Ego)).
;; 5
%sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 6
%sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 7
%sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(Alter, H).
;; 8
%sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(Alter, H).
;; 9
%sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 10
%sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaFaFaStbroDaSoSoDa}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(J, I), son(K, J), daughter(Alter, K).
;; 11
%sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaFaFaStbroDaSoSoDa}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(J, I), son(K, J), daughter(Alter, K).
;; 12
%sister[eq]:2, brother[eq]1:0, brother[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 13
%sister[eq]:2, brother[eq]1:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 14
%sister[eq]:2, brother[eq]1:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=10, S=2, Star=0,  {FaMoFaStbroDaSoDa}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(J, I), daughter(Alter, J).
;; 15
%sister[eq]:2, brother[eq]1:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=10, S=2, Star=0,  {FaMoFaStbroDaSoDa}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(J, I), daughter(Alter, J).
;; 16
%sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=6, S=2, Star=0,  {FaStbroDa}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(F, E), son(F, D), daughter(Alter, F).
;; 17
%sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=6, S=2, Star=0,  {FaStbroDa}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(F, E), son(F, D), daughter(Alter, F).
;; 18
%sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 19
%sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 20
%sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=9, S=2, Star=0,  {FaFaStbroDaSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), daughter(H, G), son(I, H), daughter(Alter, I).
;; 21
%sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=9, S=2, Star=0,  {FaFaStbroDaSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), daughter(H, G), son(I, H), daughter(Alter, I).
;; 22
%sister[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 23
%sister[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 24
%sister[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-2,  PC=10, S=2, Star=0,  {FaFaStbroDaDaSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), daughter(H, G), daughter(I, H), son(J, I), daughter(Alter, J).
;; 25
%sister[eq]:2, brother[eq]1:1, sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-2,  PC=10, S=2, Star=0,  {FaFaStbroDaDaSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), daughter(H, G), daughter(I, H), son(J, I), daughter(Alter, J).


sister[eq]1(Alter, Ego) :-  sister[eq](Alter, Ego).
                        |   sister[eq]1(A, Ego), daughter(Alter, A).
{"FaBroDa_FaBroDaDa_FaFaBroDaSoDa_FaFaBroSoDa_FaFaBroSoDaDa_FaFaFaBroSoSoDa_FaFaFaStbroDaSoSoDa_FaFaFaStbroDaSoSoDaDa_FaFaMoSisSoSoDa_FaFaSisSoSoDa_FaFaSisSoSoDaDa_FaFaStbroDaSoDa_FaMoFaBroDaSoDa_FaMoFaStbroDaSoDa_FaMoFaStbroDaSoDaDa_FaMoSisSoDa_FaMoSisSoDaDa_FaSisSoDa_FaStbroDa_FaStbroDaDa_MoFaBroDaDa_MoFaBroDaDaDa_MoFaStbroDaDa_MoFaStbroDaDaDa_MoSisDa_MoSisDaDa_Sis_SisDa"}
;; 0
%sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%sister[eq]1:0, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), not(equal(Alter, Ego)).
;; 2
%sister[eq]1:0, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 3
%sister[eq]1:0, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=8, S=2, Star=0,  {MoFaStbroDaDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), daughter(H, G), daughter(Alter, H), not(equal(Alter, Ego)).
;; 4
%sister[eq]1:0, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=8, S=2, Star=0,  {MoFaStbroDaDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), daughter(H, G), daughter(Alter, H), not(equal(Alter, Ego)).
;; 5
%sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 6
%sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 7
%sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(Alter, H).
;; 8
%sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(Alter, H).
;; 9
%sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 10
%sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaFaFaStbroDaSoSoDa}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(J, I), son(K, J), daughter(Alter, K).
;; 11
%sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaFaFaStbroDaSoSoDa}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(J, I), son(K, J), daughter(Alter, K).
;; 12
%sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 13
%sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 14
%sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=10, S=2, Star=0,  {FaMoFaStbroDaSoDa}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(J, I), daughter(Alter, J).
;; 15
%sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=10, S=2, Star=0,  {FaMoFaStbroDaSoDa}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(J, I), daughter(Alter, J).
;; 16
%sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=6, S=2, Star=0,  {FaStbroDa}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(F, E), son(F, D), daughter(Alter, F).
;; 17
%sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=6, S=2, Star=0,  {FaStbroDa}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(F, E), son(F, D), daughter(Alter, F).
;; 18
%sister[eq]1:0, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 19
%sister[eq]1:0, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 20
%sister[eq]1:0, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=9, S=2, Star=0,  {FaFaStbroDaSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), daughter(H, G), son(I, H), daughter(Alter, I).
;; 21
%sister[eq]1:0, sister[eq]:2, brother[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=9, S=2, Star=0,  {FaFaStbroDaSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), daughter(H, G), son(I, H), daughter(Alter, I).
;; 22
%sister[eq]1:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 23
%sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), not(equal(E, Ego)), daughter(Alter, E).
;; 24
%sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, Ego)), daughter(Alter, G).
;; 25
%sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=9, S=2, Star=0,  {MoFaStbroDaDaDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), son(G, F), son(G, E), daughter(H, G), daughter(I, H), not(equal(I, Ego)), daughter(Alter, I).
;; 26
%sister[eq]1:1, sister[eq]1:0, sister[eq]:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=9, S=2, Star=0,  {MoFaStbroDaDaDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), son(G, F), son(G, E), daughter(H, G), daughter(I, H), not(equal(I, Ego)), daughter(Alter, I).
;; 27
%sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 28
%sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 29
%sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 30
%sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-2,  PC=12, S=2, Star=0,  {FaFaFaStbroDaSoSoDaDa}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(J, I), son(K, J), daughter(L, K), daughter(Alter, L).
;; 31
%sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:1, brother[eq]1a:1, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-2,  PC=12, S=2, Star=0,  {FaFaFaStbroDaSoSoDaDa}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(J, I), son(K, J), daughter(L, K), daughter(Alter, L).
;; 32
%sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 33
%sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaMoFaStbroDaSoDaDa}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), son(H, G), son(H, F), daughter(I, H), son(J, I), daughter(K, J), daughter(Alter, K).
;; 34
%sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:2, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=11, S=2, Star=0,  {FaMoFaStbroDaSoDaDa}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), son(H, G), son(H, F), daughter(I, H), son(J, I), daughter(K, J), daughter(Alter, K).
;; 35
%sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {FaStbroDaDa}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(F, E), son(F, D), daughter(G, F), daughter(Alter, G).
;; 36
%sister[eq]1:1, sister[eq]1:0, sister[eq]:2, brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {FaStbroDaDa}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(F, E), son(F, D), daughter(G, F), daughter(Alter, G).


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

