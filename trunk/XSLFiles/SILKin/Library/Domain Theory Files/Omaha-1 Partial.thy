;;  Horn Clause Representation of Omaha-1 Partial Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Omaha-1 Partial") (author, "Floyd Lounsbury") (date, "1964-01-01") (citation, "Floyd Lounsbury, 'A Formal Account of the Crow- and Omaha-Type Kinship Terminologies' in EXPLORATIONS IN CULTURAL ANTHROPOLOGY, ed. W.H. Goodenough, 1964, McGraw-Hill") 
(non_term, [aux], sibling, brother, sister, brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, true) (polygamyOK, false) (address, false) (recursiveLevels, 2)
(overlaps, (brother[eq], (brother[eq]a, brother[eq]1, brother[eq]1a)), (brother[eq]1, (brother[eq], brother[eq]1a, brother[eq]a)), (brother[eq]1a, (brother[eq]1, brother[eq])), (brother[eq]a, (brother[eq], brother[eq]1)), (sister[eq], (sister[eq]1, sister[eq]2)), (sister[eq]1, (sister[eq], sister[eq]2)), (sister[eq]2, (sister[eq]1, sister[eq])))


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
{"Bro_FaBroSo_FaFaBroSoSo_FaMoSisSoSo_MoBroDaSo_MoBroSoDaSo_MoBroSoSoDaSo_MoFaBroDaSo_MoFaBroSoDaSo_MoFaBroSoSoDaSo_MoMoBroDaDaSo_MoMoBroSoDaDaSo_MoMoFaBroDaDaSo_MoMoMoBroDaDaDaSo_MoMoMoSisDaDaSo_MoMoMoStsisDaDaSo_MoMoSisDaSo_MoMoSisSoDaSo_MoMoSisSoSoDaSo_MoMoStsisDaSo_MoSisSo_MoStsisSo_Stbro"}
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
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 7
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:0%
 Lvl=0,  PC=10, S=2, Star=0,  {MoMoMoStsisDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), daughter(H, G), daughter(H, F), daughter(I, H), not(equal(I, B)), daughter(J, I), not(equal(J, A)), son(Alter, J).
;; 8
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:1%
 Lvl=0,  PC=10, S=2, Star=0,  {MoMoMoStsisDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), daughter(H, G), daughter(H, F), daughter(I, H), not(equal(I, B)), daughter(J, I), not(equal(J, A)), son(Alter, J).
;; 9
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), not(equal(I, A)), son(Alter, I).
;; 10
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:0%
 Lvl=0,  PC=8, S=2, Star=0,  {MoMoStsisDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 11
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:1%
 Lvl=0,  PC=8, S=2, Star=0,  {MoMoStsisDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 12
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 13
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 14
%brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 15
%brother[eq]:2, sister[eq]1:0, sister[eq]:2, step_sister:0%
 Lvl=0,  PC=6, S=2, Star=0,  {MoStsisSo}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(Alter, F).
;; 16
%brother[eq]:2, sister[eq]1:0, sister[eq]:2, step_sister:1%
 Lvl=0,  PC=6, S=2, Star=0,  {MoStsisSo}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(Alter, F).
;; 17
%brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 18
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 19
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 20
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 21
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 22
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 23
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 24
%brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 25
%brother[eq]:3, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C).
;; 26
%brother[eq]:3, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C).


brother[eq]1(Alter, Ego) :-  brother[eq](Alter, Ego).
                         |   brother[eq]1a(A, Ego), son(Alter, A).
{"Bro_BroSo_BroSoSo_BroSoSoSo_FaBroSo_FaBroSoSo_FaBroSoSoSo_FaBroSoSoSoSo_FaFaBroSoSo_FaMoSisSoSo_MoBroDaSo_MoBroSoDaSo_MoBroSoSoDaSo_MoFaBroDaSo_MoFaBroSoDaSo_MoFaBroSoSoDaSo_MoMoBroDaDaSo_MoMoBroSoDaDaSo_MoMoFaBroDaDaSo_MoMoMoBroDaDaDaSo_MoMoMoSisDaDaSo_MoMoMoStsisDaDaSo_MoMoSisDaSo_MoMoSisSoDaSo_MoMoSisSoSoDaSo_MoMoStsisDaSo_MoSisSo_MoSisSoSo_MoSisSoSoSo_MoSisSoSoSoSo_MoStsisSo_Stbro"}
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
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 7
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:0%
 Lvl=0,  PC=10, S=2, Star=0,  {MoMoMoStsisDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), daughter(H, G), daughter(H, F), daughter(I, H), not(equal(I, B)), daughter(J, I), not(equal(J, A)), son(Alter, J).
;; 8
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:1%
 Lvl=0,  PC=10, S=2, Star=0,  {MoMoMoStsisDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), daughter(H, G), daughter(H, F), daughter(I, H), not(equal(I, B)), daughter(J, I), not(equal(J, A)), son(Alter, J).
;; 9
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), not(equal(I, A)), son(Alter, I).
;; 10
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:0%
 Lvl=0,  PC=8, S=2, Star=0,  {MoMoStsisDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 11
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:1%
 Lvl=0,  PC=8, S=2, Star=0,  {MoMoStsisDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 12
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 13
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), son(Alter, G).
;; 14
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), son(Alter, H).
;; 15
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, step_sister:0%
 Lvl=0,  PC=6, S=2, Star=0,  {MoStsisSo}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), son(Alter, F).
;; 16
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:2, step_sister:1%
 Lvl=0,  PC=6, S=2, Star=0,  {MoStsisSo}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), son(Alter, F).
;; 17
%brother[eq]1:0, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 18
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 19
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 20
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 21
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 22
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 23
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 24
%brother[eq]1:0, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 25
%brother[eq]1:0, brother[eq]:3, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C).
;; 26
%brother[eq]1:0, brother[eq]:3, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C).
;; 27
%brother[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 28
%brother[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 29
%brother[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 30
%brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(Alter, D).
;; 31
%brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 32
%brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 33
%brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), son(Alter, E).
;; 34
%brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 35
%brother[eq]1:1, brother[eq]1a:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(Alter, G).


brother[eq]1a(Alter, Ego) :-  brother[eq]a(Alter, Ego).
                          |   brother[eq]1a(A, Ego), son(Alter, A).
{"Bro_BroSo_BroSoSo_FaBroSo_FaBroSoSo_FaBroSoSoSo_MoSisSo_MoSisSoSo_MoSisSoSoSo"}
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
;; 6
%brother[eq]1a:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(Alter, D).
;; 7
%brother[eq]1a:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 8
%brother[eq]1a:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).


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
{"Fa_FaBro_FaFaBroSo_FaFaFaBroSoSo_FaFaMoSisSoSo_FaMoBroDaSo_FaMoBroSoDaSo_FaMoBroSoSoDaSo_FaMoFaBroDaSo_FaMoFaBroSoDaSo_FaMoMoBroDaDaSo_FaMoMoMoSisDaDaSo_FaMoMoSisDaSo_FaMoMoSisSoDaSo_FaMoMoStsisDaSo_FaMoSisSo_FaMoStsisSo_FaStbro_Stfa"}
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
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoMoMoSisDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), daughter(I, H), not(equal(I, B)), son(Alter, I).
;; 8
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:0%
 Lvl=1,  PC=9, S=2, Star=0,  {FaMoMoStsisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), daughter(H, G), daughter(H, F), daughter(I, H), not(equal(I, B)), son(Alter, I).
;; 9
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:1%
 Lvl=1,  PC=9, S=2, Star=0,  {FaMoMoStsisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), daughter(H, G), daughter(H, F), daughter(I, H), not(equal(I, B)), son(Alter, I).
;; 10
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(Alter, H).
;; 11
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:2, step_sister:0%
 Lvl=1,  PC=7, S=2, Star=0,  {FaMoStsisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(Alter, G).
;; 12
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:2, step_sister:1%
 Lvl=1,  PC=7, S=2, Star=0,  {FaMoStsisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(Alter, G).
;; 13
%father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 14
%father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 15
%father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 16
%father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 17
%father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 18
%father[eq]:1, brother[eq]:2, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
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
{"FaBroWi_FaFaBroSoWi_FaFaFaBroSoSoWi_FaFaMoSisSoSoWi_FaMoBroDaSoWi_FaMoBroSoDaSoWi_FaMoFaBroDaSoWi_FaMoMoBroDaDaSoWi_FaMoMoMoSisDaDaSoWi_FaMoMoSisDaSoWi_FaMoMoStsisDaSoWi_FaMoSisSoWi_FaMoStsisSoWi_FaStbroWi_Mo_MoBroDa_MoBroSoDa_MoBroSoSoDa_MoFaBroDa_MoFaBroSoDa_MoFaBroSoSoDa_MoFaBroSoSoSoDa_MoMoBroDaDa_MoMoBroSoDaDa_MoMoFaBroDaDa_MoMoMoBroDaDaDa_MoMoMoSisDaDa_MoMoMoStsisDaDa_MoMoSisDa_MoMoSisSoDa_MoMoSisSoSoDa_MoMoSisSoSoSoDa_MoMoStsisDa_MoSis_MoStsis_Stmo"}
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
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=11, S=1, Star=0,  {FaMoMoMoSisDaDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), daughter(I, H), not(equal(I, B)), son(J, I), wife(Alter, J).
;; 8
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:0%
 Lvl=1,  PC=9, S=3, Star=0,  {FaMoMoStsisDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), daughter(H, G), daughter(H, F), daughter(I, H), not(equal(I, B)), son(J, I), wife(Alter, J).
;; 9
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:1%
 Lvl=1,  PC=9, S=3, Star=0,  {FaMoMoStsisDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), daughter(H, G), daughter(H, F), daughter(I, H), not(equal(I, B)), son(J, I), wife(Alter, J).
;; 10
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoBroDaDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), son(I, H), wife(Alter, I).
;; 11
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:2, step_sister:0%
 Lvl=1,  PC=7, S=3, Star=0,  {FaMoStsisSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), son(H, G), wife(Alter, H).
;; 12
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:2, step_sister:1%
 Lvl=1,  PC=7, S=3, Star=0,  {FaMoStsisSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), son(H, G), wife(Alter, H).
;; 13
%mother[eq]:0, father[eq]:1, brother[eq]:2, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoFaBroDaSoWi}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), wife(Alter, H).
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
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), daughter(Alter, G), not(equal(Alter, A)).
;; 22
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:0%
 Lvl=1,  PC=9, S=2, Star=0,  {MoMoMoStsisDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), daughter(H, G), daughter(H, F), daughter(I, H), not(equal(I, B)), daughter(Alter, I), not(equal(Alter, A)).
;; 23
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:1%
 Lvl=1,  PC=9, S=2, Star=0,  {MoMoMoStsisDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), daughter(H, G), daughter(H, F), daughter(I, H), not(equal(I, B)), daughter(Alter, I), not(equal(Alter, A)).
;; 24
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(Alter, H), not(equal(Alter, A)).
;; 25
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:0%
 Lvl=1,  PC=7, S=2, Star=0,  {MoMoStsisDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), daughter(Alter, G), not(equal(Alter, A)).
;; 26
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:1%
 Lvl=1,  PC=7, S=2, Star=0,  {MoMoStsisDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), daughter(Alter, G), not(equal(Alter, A)).
;; 27
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 28
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, A)).
;; 29
%mother[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 30
%mother[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:0%
 Lvl=1,  PC=5, S=2, Star=0,  {MoStsis}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(Alter, E), daughter(Alter, D).
;; 31
%mother[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:1%
 Lvl=1,  PC=5, S=2, Star=0,  {MoStsis}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(Alter, E), daughter(Alter, D).
;; 32
%mother[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 33
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 34
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 35
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 36
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 37
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 38
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 39
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 40
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 41
%mother[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 42
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
                       |   step_sister(Alter, Ego).
                       |   father(A, Ego), brother(B, A), daughter(Alter, B).
{"FaBroDa_MoBroDaDa_MoBroSoDaDa_MoBroSoSoDaDa_MoFaBroDaDa_MoFaBroSoDaDa_MoMoBroDaDaDa_MoMoBroSoDaDaDa_MoMoFaBroDaDaDa_MoMoMoBroDaDaDaDa_MoMoSisDaDa_MoMoSisSoDaDa_MoMoStsisDaDa_MoSisDa_MoStsisDa_Sis_Stsis"}
;; 0
%sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), not(equal(Alter, Ego)).
;; 2
%sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(Alter, F), not(equal(Alter, Ego)).
;; 3
%sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), not(equal(I, A)), daughter(Alter, I), not(equal(Alter, Ego)).
;; 4
%sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:0%
 Lvl=0,  PC=8, S=2, Star=0,  {MoMoStsisDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), daughter(H, G), not(equal(H, A)), daughter(Alter, H), not(equal(Alter, Ego)).
;; 5
%sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:1%
 Lvl=0,  PC=8, S=2, Star=0,  {MoMoStsisDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), daughter(H, G), not(equal(H, A)), daughter(Alter, H), not(equal(Alter, Ego)).
;; 6
%sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H), not(equal(Alter, Ego)).
;; 7
%sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(Alter, G), not(equal(Alter, Ego)).
;; 8
%sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H), not(equal(Alter, Ego)).
;; 9
%sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:0%
 Lvl=0,  PC=6, S=2, Star=0,  {MoStsisDa}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), daughter(Alter, F), not(equal(Alter, Ego)).
;; 10
%sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:1%
 Lvl=0,  PC=6, S=2, Star=0,  {MoStsisDa}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), daughter(Alter, F), not(equal(Alter, Ego)).
;; 11
%sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 12
%sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E), not(equal(Alter, Ego)).
;; 13
%sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)).
;; 14
%sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)).
;; 15
%sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 16
%sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)).
;; 17
%sister[eq]:2, step_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C).
;; 18
%sister[eq]:2, step_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C).
;; 19
%sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).


sister[eq]1(Alter, Ego) :-  sister[eq](Alter, Ego).
                        |   brother[eq]1a(A, Ego), daughter(Alter, A).
{"BroDa_BroSoDa_BroSoSoDa_FaBroDa_FaBroSoDa_FaBroSoSoDa_FaBroSoSoSoDa_MoBroDaDa_MoBroSoDaDa_MoBroSoSoDaDa_MoFaBroDaDa_MoFaBroSoDaDa_MoMoBroDaDaDa_MoMoBroSoDaDaDa_MoMoFaBroDaDaDa_MoMoSisDaDa_MoMoSisSoDaDa_MoMoStsisDaDa_MoSisDa_MoSisSoDa_MoSisSoSoDa_MoSisSoSoSoDa_MoStsisDa_Sis_Stsis"}
;; 0
%sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), not(equal(Alter, Ego)).
;; 2
%sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(Alter, F), not(equal(Alter, Ego)).
;; 3
%sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:0%
 Lvl=0,  PC=8, S=2, Star=0,  {MoMoStsisDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), daughter(H, G), not(equal(H, A)), daughter(Alter, H), not(equal(Alter, Ego)).
;; 4
%sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:1%
 Lvl=0,  PC=8, S=2, Star=0,  {MoMoStsisDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), daughter(H, G), not(equal(H, A)), daughter(Alter, H), not(equal(Alter, Ego)).
;; 5
%sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H), not(equal(Alter, Ego)).
;; 6
%sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(Alter, G), not(equal(Alter, Ego)).
;; 7
%sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H), not(equal(Alter, Ego)).
;; 8
%sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:0%
 Lvl=0,  PC=6, S=2, Star=0,  {MoStsisDa}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), daughter(Alter, F), not(equal(Alter, Ego)).
;; 9
%sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:1%
 Lvl=0,  PC=6, S=2, Star=0,  {MoStsisDa}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), daughter(Alter, F), not(equal(Alter, Ego)).
;; 10
%sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 11
%sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E), not(equal(Alter, Ego)).
;; 12
%sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)).
;; 13
%sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)).
;; 14
%sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 15
%sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)).
;; 16
%sister[eq]1:0, sister[eq]:2, step_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C).
;; 17
%sister[eq]1:0, sister[eq]:2, step_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C).
;; 18
%sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 19
%sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 20
%sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 21
%sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 22
%sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(Alter, D).
;; 23
%sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 24
%sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 25
%sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), daughter(Alter, E).
;; 26
%sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 27
%sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).


sister[eq]2(Alter, Ego) :-  sister[eq](Alter, Ego).
                        |   father(A, Ego), sister[eq]2(Alter, A).
{"FaBroDa_FaFaBroDa_FaFaFaBroDa_FaFaMoBroDaDa_FaFaMoMoSisDaDa_FaFaMoSisDa_FaFaMoStsisDa_FaFaSis_FaFaStsis_FaMoBroDaDa_FaMoBroSoDaDa_FaMoFaBroDaDa_FaMoMoBroDaDaDa_FaMoMoSisDaDa_FaMoMoStsisDaDa_FaMoSisDa_FaMoStsisDa_FaSis_FaStsis_MoBroDaDa_MoBroSoDaDa_MoBroSoSoDaDa_MoFaBroDaDa_MoFaBroSoDaDa_MoMoBroDaDaDa_MoMoBroSoDaDaDa_MoMoFaBroDaDaDa_MoMoMoBroDaDaDaDa_MoMoSisDaDa_MoMoSisSoDaDa_MoMoStsisDaDa_MoSisDa_MoStsisDa_Sis_Stsis"}
;; 0
%sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), not(equal(Alter, Ego)).
;; 2
%sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), not(equal(F, A)), daughter(Alter, F), not(equal(Alter, Ego)).
;; 3
%sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(I, H), not(equal(I, A)), daughter(Alter, I), not(equal(Alter, Ego)).
;; 4
%sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:0%
 Lvl=0,  PC=8, S=2, Star=0,  {MoMoStsisDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), daughter(H, G), not(equal(H, A)), daughter(Alter, H), not(equal(Alter, Ego)).
;; 5
%sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:1%
 Lvl=0,  PC=8, S=2, Star=0,  {MoMoStsisDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), daughter(H, G), not(equal(H, A)), daughter(Alter, H), not(equal(Alter, Ego)).
;; 6
%sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H), not(equal(Alter, Ego)).
;; 7
%sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), not(equal(G, A)), daughter(Alter, G), not(equal(Alter, Ego)).
;; 8
%sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), not(equal(H, A)), daughter(Alter, H), not(equal(Alter, Ego)).
;; 9
%sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:0%
 Lvl=0,  PC=6, S=2, Star=0,  {MoStsisDa}  
 mother(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(F, E), daughter(F, D), daughter(Alter, F), not(equal(Alter, Ego)).
;; 10
%sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:1%
 Lvl=0,  PC=6, S=2, Star=0,  {MoStsisDa}  
 mother(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(F, E), daughter(F, D), daughter(Alter, F), not(equal(Alter, Ego)).
;; 11
%sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 12
%sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E), not(equal(Alter, Ego)).
;; 13
%sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)).
;; 14
%sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:2, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)).
;; 15
%sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F), not(equal(Alter, Ego)).
;; 16
%sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, Ego)).
;; 17
%sister[eq]2:0, sister[eq]:2, step_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C).
;; 18
%sister[eq]2:0, sister[eq]:2, step_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C).
;; 19
%sister[eq]2:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 20
%sister[eq]2:1, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 21
%sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E), not(equal(Alter, A)).
;; 22
%sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), not(equal(G, B)), daughter(Alter, G), not(equal(Alter, A)).
;; 23
%sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:0%
 Lvl=1,  PC=9, S=2, Star=0,  {FaMoMoStsisDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), daughter(H, G), daughter(H, F), daughter(I, H), not(equal(I, B)), daughter(Alter, I), not(equal(Alter, A)).
;; 24
%sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:1%
 Lvl=1,  PC=9, S=2, Star=0,  {FaMoMoStsisDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), daughter(H, G), daughter(H, F), daughter(I, H), not(equal(I, B)), daughter(Alter, I), not(equal(Alter, A)).
;; 25
%sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), not(equal(H, B)), daughter(Alter, H), not(equal(Alter, A)).
;; 26
%sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:0%
 Lvl=1,  PC=7, S=2, Star=0,  {FaMoStsisDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(G, F), daughter(G, E), daughter(Alter, G), not(equal(Alter, A)).
;; 27
%sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:1%
 Lvl=1,  PC=7, S=2, Star=0,  {FaMoStsisDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(G, F), daughter(G, E), daughter(Alter, G), not(equal(Alter, A)).
;; 28
%sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 29
%sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(equal(Alter, A)).
;; 30
%sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G), not(equal(Alter, A)).
;; 31
%sister[eq]2:1, sister[eq]2:0, sister[eq]:2, step_sister:0%
 Lvl=1,  PC=5, S=2, Star=0,  {FaStsis}  
 father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), daughter(Alter, E), daughter(Alter, D).
;; 32
%sister[eq]2:1, sister[eq]2:0, sister[eq]:2, step_sister:1%
 Lvl=1,  PC=5, S=2, Star=0,  {FaStsis}  
 father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), daughter(Alter, E), daughter(Alter, D).
;; 33
%sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 34
%sister[eq]2:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 35
%sister[eq]2:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F), not(equal(Alter, B)).
;; 36
%sister[eq]2:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:1, sister[eq]1:0, sister[eq]:0, sister:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoMoSisDaDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), not(equal(H, C)), daughter(Alter, H), not(equal(Alter, B)).
;; 37
%sister[eq]2:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:0%
 Lvl=2,  PC=8, S=2, Star=0,  {FaFaMoStsisDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, C), husband(F, E), not(equal(F, D)), wife(G, F), not(equal(G, E)), daughter(H, G), daughter(H, F), daughter(Alter, H), not(equal(Alter, B)).
;; 38
%sister[eq]2:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:0, sister[eq]:2, step_sister:1%
 Lvl=2,  PC=8, S=2, Star=0,  {FaFaMoStsisDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, C), wife(F, D), not(equal(F, E)), husband(G, F), not(equal(G, D)), daughter(H, G), daughter(H, F), daughter(Alter, H), not(equal(Alter, B)).
;; 39
%sister[eq]2:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:1, sister[eq]1:1, brother[eq]1a:0, brother[eq]a:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), not(equal(Alter, B)).
;; 40
%sister[eq]2:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, step_sister:0%
 Lvl=2,  PC=6, S=2, Star=0,  {FaFaStsis}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), husband(E, D), not(equal(E, C)), wife(F, E), not(equal(F, D)), daughter(Alter, F), daughter(Alter, E).
;; 41
%sister[eq]2:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:2, step_sister:1%
 Lvl=2,  PC=6, S=2, Star=0,  {FaFaStsis}  
 father(A, Ego), father(B, A), father(C, B), mother(D, B), wife(E, C), not(equal(E, D)), husband(F, E), not(equal(F, C)), daughter(Alter, F), daughter(Alter, E).
;; 42
%sister[eq]2:1, sister[eq]2:1, sister[eq]2:0, sister[eq]:3, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).


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

