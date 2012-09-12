;;  Horn Clause Representation of Omaha-3 Partial Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Omaha-3 Partial") (author, "Floyd Lounsbury") (date, "1964-01-01") (citation, "Floyd Lounsbury, 'A Formal Account of the Crow- and Omaha-Type Kinship Terminologies' in EXPLORATIONS IN CULTURAL ANTHROPOLOGY, ed. W.H. Goodenough, 1964, McGraw-Hill") 
(non_term, [aux], sibling, brother, sister, brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, true) (polygamyOK, false) (address, false) (recursiveLevels, 2)
(overlaps, (brother[eq], (brother[eq]a, father[eq]f)), (brother[eq]a, (brother[eq], father[eq]f)), (daughter[eq]m, (sister[eq])), (father[eq], (father[eq]f)), (father[eq]f, (brother[eq], brother[eq]a, father[eq])), (sister[eq], (daughter[eq]m)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

brother(Alter, Ego) :-  sibling(Alter, Ego), male(Alter).
;; 0
%brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).


brother[eq](Alter, Ego) :-  brother(Alter, Ego).
                        |   father(A, Ego), brother[eq]a(B, A), son(Alter, B).
                        |   mother(A, Ego), sister[eq](B, A), son(Alter, B).
                        |   step_brother(Alter, Ego).
{"Bro_FaBroSo_FaFaBroSoSo_FaMoSisSoSo_MoFaBroDaSo_MoFaFaBroDaSo_MoFaFaFaBroDaSo_MoFaFaSisSo_MoFaMoSisDaSo_MoFaSisSo_MoMoFaBroDaDaSo_MoMoMoSisDaDaSo_MoMoSisDaSo_MoSisSo_Stbro"}
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
%brother[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%brother[eq]:2, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F).
;; 6
%brother[eq]:2, sister[eq]:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 7
%brother[eq]:2, sister[eq]:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 8
%brother[eq]:2, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 9
%brother[eq]:2, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Alter, H).
;; 10
%brother[eq]:2, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {MoFaMoSisDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), daughter(J, I), not(equal(J, E)), son(Alter, J).
;; 11
%brother[eq]:2, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=1,  PC=13, S=0, Star=0,  {MoFaFaBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), son(Alter, J).
;; 12
%brother[eq]:2, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=16, S=0, Star=0,  {MoFaFaSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), mother(J, I), father(K, I), child(L, J), child(L, K), not(equal(L, I)), female(L), son(Alter, L).
;; 13
%brother[eq]:2, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=2,  PC=18, S=0, Star=0,  {MoFaFaFaBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), father(J, I), mother(K, J), father(L, J), child(M, K), child(M, L), not(equal(M, J)), male(M), daughter(N, M), son(Alter, N).
;; 14
%brother[eq]:3, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C).
;; 15
%brother[eq]:3, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C).


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


daughter[eq]m(Alter, Ego) :-  daughter(Alter, Ego).
                          |   sister[eq](Alter, Ego).
{"Da_FaBroDa_FaFaBroDa_FaFaSis_FaMoFaBroDaDa_FaMoSisDa_FaSis_MoFaBroDaDa_MoFaFaBroDaDa_MoFaSisDa_MoMoFaBroDaDaDa_MoMoSisDaDa_MoSisDa_Sis"}
;; 0
%daughter[eq]m:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).
;; 1
%daughter[eq]m:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%daughter[eq]m:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), not(equal(Alter, Ego)).
;; 3
%daughter[eq]m:1, sister[eq]:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(Alter, F), not(equal(Alter, Ego)).
;; 4
%daughter[eq]m:1, sister[eq]:1, sister[eq]:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H), not(equal(Alter, Ego)).
;; 5
%daughter[eq]m:1, sister[eq]:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 6
%daughter[eq]m:1, sister[eq]:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), daughter(Alter, H), not(equal(Alter, Ego)).
;; 7
%daughter[eq]m:1, sister[eq]:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=1,  PC=13, S=0, Star=0,  {MoFaFaBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(Alter, J), not(equal(Alter, Ego)).
;; 8
%daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 9
%daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 10
%daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoSisDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), daughter(Alter, H), not(equal(Alter, D)).
;; 11
%daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaMoFaBroDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(Alter, J), not(equal(Alter, D)).
;; 12
%daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(Alter, H).
;; 13
%daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=14, S=0, Star=0,  {FaFaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).


father[eq](Alter, Ego) :-  father(Alter, Ego).
                       |   father(A, Ego), brother[eq](Alter, A).
                       |   step_father(Alter, Ego).
{"Fa_FaBro_FaFaBroSo_FaFaFaBroSoSo_FaFaMoSisSoSo_FaMoFaBroDaSo_FaMoMoMoSisDaDaSo_FaMoMoSisDaSo_FaMoSisSo_FaStbro_Stfa"}
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
%father[eq]:1, brother[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 6
%father[eq]:1, brother[eq]:2, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(Alter, G).
;; 7
%father[eq]:1, brother[eq]:2, sister[eq]:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoMoMoSisDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), daughter(I, H), not(equal(I, B)), son(Alter, I).
;; 8
%father[eq]:1, brother[eq]:2, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 9
%father[eq]:1, brother[eq]:3, step_brother:0%
 Lvl=1,  PC=5, S=2, Star=0,  {FaStbro}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(Alter, E), son(Alter, D).
;; 10
%father[eq]:1, brother[eq]:3, step_brother:1%
 Lvl=1,  PC=5, S=2, Star=0,  {FaStbro}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(Alter, E), son(Alter, D).
;; 11
%father[eq]:2, step_father:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stfa}  
 father(A, Ego), mother(B, Ego), husband(Alter, B), not(equal(Alter, A)).


father[eq]f(Alter, Ego) :-  father[eq](Alter, Ego).
                        |   brother[eq](Alter, Ego).
{"Bro_Fa_FaBro_FaBroSo_FaFaBroSo_FaFaBroSoSo_FaFaFaBroSoSo_FaFaMoSisSoSo_FaMoFaBroDaSo_FaMoMoMoSisDaDaSo_FaMoMoSisDaSo_FaMoSisSo_FaMoSisSoSo_FaStbro_MoFaBroDaSo_MoFaFaBroDaSo_MoFaFaFaBroDaSo_MoFaFaSisSo_MoFaMoSisDaSo_MoFaSisSo_MoMoFaBroDaDaSo_MoMoMoSisDaDaSo_MoMoSisDaSo_MoSisSo_Stbro_Stfa"}
;; 0
%father[eq]f:0, father[eq]:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).
;; 1
%father[eq]f:0, father[eq]:1, brother[eq]:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%father[eq]f:0, father[eq]:1, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 3
%father[eq]f:0, father[eq]:1, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 4
%father[eq]f:0, father[eq]:1, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 5
%father[eq]f:0, father[eq]:1, brother[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 6
%father[eq]f:0, father[eq]:1, brother[eq]:2, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), son(Alter, G).
;; 7
%father[eq]f:0, father[eq]:1, brother[eq]:2, sister[eq]:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoMoMoSisDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), daughter(I, H), not(equal(I, B)), son(Alter, I).
;; 8
%father[eq]f:0, father[eq]:1, brother[eq]:2, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 9
%father[eq]f:0, father[eq]:1, brother[eq]:3, step_brother:0%
 Lvl=1,  PC=5, S=2, Star=0,  {FaStbro}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(Alter, E), son(Alter, D).
;; 10
%father[eq]f:0, father[eq]:1, brother[eq]:3, step_brother:1%
 Lvl=1,  PC=5, S=2, Star=0,  {FaStbro}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(Alter, E), son(Alter, D).
;; 11
%father[eq]f:0, father[eq]:2, step_father:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stfa}  
 father(A, Ego), mother(B, Ego), husband(Alter, B), not(equal(Alter, A)).
;; 12
%father[eq]f:1, brother[eq]:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 13
%father[eq]f:1, brother[eq]:1, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 14
%father[eq]f:1, brother[eq]:1, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 15
%father[eq]f:1, brother[eq]:1, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 16
%father[eq]f:1, brother[eq]:2, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 17
%father[eq]f:1, brother[eq]:2, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), son(Alter, F).
;; 18
%father[eq]f:1, brother[eq]:2, sister[eq]:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 19
%father[eq]f:1, brother[eq]:2, sister[eq]:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 20
%father[eq]f:1, brother[eq]:2, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 21
%father[eq]f:1, brother[eq]:2, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), son(Alter, H).
;; 22
%father[eq]f:1, brother[eq]:2, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=13, S=0, Star=0,  {MoFaMoSisDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), daughter(J, I), not(equal(J, E)), son(Alter, J).
;; 23
%father[eq]f:1, brother[eq]:2, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=1,  PC=13, S=0, Star=0,  {MoFaFaBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), son(Alter, J).
;; 24
%father[eq]f:1, brother[eq]:2, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=16, S=0, Star=0,  {MoFaFaSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), mother(J, I), father(K, I), child(L, J), child(L, K), not(equal(L, I)), female(L), son(Alter, L).
;; 25
%father[eq]f:1, brother[eq]:2, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=2,  PC=18, S=0, Star=0,  {MoFaFaFaBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), father(J, I), mother(K, J), father(L, J), child(M, K), child(M, L), not(equal(M, J)), male(M), daughter(N, M), son(Alter, N).
;; 26
%father[eq]f:1, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C).
;; 27
%father[eq]f:1, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C).


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


mother[eq](Alter, Ego) :-  mother(Alter, Ego).
                       |   mother(A, Ego), sister[eq](Alter, A).
                       |   step_mother(Alter, Ego).
{"Mo_MoFaBroDa_MoFaFaBroDa_MoFaFaFaBroDa_MoFaFaSis_MoFaMoSisDa_MoFaSis_MoMoFaBroDaDa_MoMoMoSisDaDa_MoMoSisDa_MoSis_Stmo"}
;; 0
%mother[eq]:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).
;; 1
%mother[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%mother[eq]:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E), not(equal(Alter, A)).
;; 3
%mother[eq]:1, sister[eq]:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), daughter(Alter, G), not(equal(Alter, A)).
;; 4
%mother[eq]:1, sister[eq]:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 5
%mother[eq]:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 6
%mother[eq]:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), female(Alter).
;; 7
%mother[eq]:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=12, S=0, Star=0,  {MoFaMoSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), daughter(Alter, I), not(equal(Alter, E)).
;; 8
%mother[eq]:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=2,  PC=12, S=0, Star=0,  {MoFaFaBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(Alter, I).
;; 9
%mother[eq]:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=3,  PC=15, S=0, Star=0,  {MoFaFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), mother(J, I), father(K, I), child(Alter, J), child(Alter, K), not(equal(Alter, I)), female(Alter).
;; 10
%mother[eq]:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=3,  PC=17, S=0, Star=0,  {MoFaFaFaBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), father(J, I), mother(K, J), father(L, J), child(M, K), child(M, L), not(equal(M, J)), male(M), daughter(Alter, M).
;; 11
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
                       |   father(A, Ego), brother(B, A), daughter[eq]m(Alter, B).
{"FaBroDa_FaFaBroDa_FaFaFaBroDa_FaFaSis_FaMoFaBroDaDa_FaMoSisDa_FaSis_MoFaBroDaDa_MoFaFaBroDaDa_MoFaSisDa_MoMoFaBroDaDaDa_MoMoSisDaDa_MoSisDa_Sis"}
;; 0
%sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), not(equal(Alter, Ego)).
;; 2
%sister[eq]:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(Alter, F), not(equal(Alter, Ego)).
;; 3
%sister[eq]:1, sister[eq]:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H), not(equal(Alter, Ego)).
;; 4
%sister[eq]:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 5
%sister[eq]:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), daughter(Alter, H), not(equal(Alter, Ego)).
;; 6
%sister[eq]:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=1,  PC=13, S=0, Star=0,  {MoFaFaBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(Alter, J), not(equal(Alter, Ego)).
;; 7
%sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 8
%sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 9
%sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoSisDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), female(H), daughter(Alter, H), not(equal(Alter, D)).
;; 10
%sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=1,  PC=13, S=0, Star=0,  {FaMoFaBroDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), male(I), daughter(J, I), daughter(Alter, J), not(equal(Alter, D)).
;; 11
%sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), daughter(Alter, H).
;; 12
%sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=14, S=0, Star=0,  {FaFaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 13
%sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:1, sister[eq]:2, brother:0, sibling:0, daughter[eq]m:0%
 Lvl=2,  PC=16, S=0, Star=0,  {FaFaFaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), male(H), father(I, H), mother(J, I), father(K, I), child(L, J), child(L, K), not(equal(L, I)), male(L), daughter(Alter, L).


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

