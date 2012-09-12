;;  Horn Clause Representation of Tabla Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Tabla") (author, "Ken Collier") (date, "1983-01-01") (citation, "Ken Collier in GODS, HEROES, KINSMEN pp. 223-242") 
(non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, false) (address, false) (recursiveLevels, 2)
(overlaps, (a_nero, (doto, mengke, weke, yarise, dumbu)), (doto, (a_nero)), (dumbu, (a_nero, mengke, weke)), (mengke, (a_nero, dumbu, metona, yarise)), (metona, (mengke, weke, yarise)), (weke, (a_nero, dumbu, metona, yarise)), (yarise, (a_nero, mengke, metona, weke)))
(umbrellas, (metona, (dumbu, a_nero)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

a_nero(Alter, Ego) :-  a_nero1[aux]48(Alter, Ego).
                   |  [ext],  a_nero2[aux]48(Alter, Ego).
                   |  [ext],  a_nero1[aux]48(A, Ego), spouse(Alter, A), gender(B, A), gender(B, Ego).
                   |  [ext],  a_nero2[aux]48(A, Ego), spouse(Alter, A), gender(B, A), gender(B, Ego).
{"Bro_BroWi_FaBroDa_FaBroDaHu_FaBroSo_FaBroSoWi_FaFaBroDaDa_FaFaBroDaSo_FaFaBroSoDa_FaFaBroSoSo_FaFaSisDaDa_FaFaSisDaSo_FaFaSisSoDa_FaFaSisSoSo_FaMoBroDaDa_FaMoBroDaSo_FaMoBroSoDa_FaMoBroSoSo_FaMoSisDaDa_FaMoSisDaSo_FaMoSisSoDa_FaMoSisSoSo_FaSisDa_FaSisDaHu_FaSisSo_FaSisSoWi_MoBroDa_MoBroDaHu_MoBroSo_MoBroSoWi_MoFaBroDaDa_MoFaBroDaSo_MoFaBroSoDa_MoFaBroSoSo_MoFaSisDaDa_MoFaSisDaSo_MoFaSisSoDa_MoFaSisSoSo_MoMoBroDaDa_MoMoBroDaSo_MoMoBroSoDa_MoMoBroSoSo_MoMoSisDaDa_MoMoSisDaSo_MoMoSisSoDa_MoMoSisSoSo_MoSisDa_MoSisDaHu_MoSisSo_MoSisSoWi_Sis_SisHu"}
;; 0
%a_nero:0, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {Bro}  
[chooseLast],  mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego), mother(C, Ego), father(D, Ego), child(E, C), child(E, D), not(equal(E, Ego)), not(equal(E, Alter)), younger(E, Alter), gender(F, E), gender(F, Alter).
;; 1
%a_nero:0, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {Sis}  
[chooseLast],  mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego), mother(C, Ego), father(D, Ego), child(E, C), child(E, D), not(equal(E, Ego)), not(equal(E, Alter)), younger(E, Alter), gender(F, E), gender(F, Alter).
;; 2
%a_nero:0, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {Bro}  
[chooseLast],  mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego), mother(C, Ego), father(D, Ego), child(E, C), child(E, D), not(equal(E, Ego)), not(equal(E, Alter)), elder(E, Alter), gender(F, E), gender(F, Alter).
;; 3
%a_nero:0, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {Sis}  
[chooseLast],  mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego), mother(C, Ego), father(D, Ego), child(E, C), child(E, D), not(equal(E, Ego)), not(equal(E, Alter)), elder(E, Alter), gender(F, E), gender(F, Alter).
;; 4
%a_nero:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoBroSo}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), younger(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), younger(G, D), gender(H, G), gender(H, D), son(Alter, D).
;; 5
%a_nero:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoBroDa}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), younger(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), younger(G, D), gender(H, G), gender(H, D), daughter(Alter, D).
;; 6
%a_nero:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoSisSo}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), younger(G, D), gender(H, G), gender(H, D), son(Alter, D).
;; 7
%a_nero:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoSisDa}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), younger(G, D), gender(H, G), gender(H, D), daughter(Alter, D).
;; 8
%a_nero:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoBroSo}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), elder(G, D), gender(H, G), gender(H, D), son(Alter, D).
;; 9
%a_nero:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoBroDa}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), elder(G, D), gender(H, G), gender(H, D), daughter(Alter, D).
;; 10
%a_nero:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoSisSo}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), elder(G, D), gender(H, G), gender(H, D), son(Alter, D).
;; 11
%a_nero:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoSisDa}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), elder(G, D), gender(H, G), gender(H, D), daughter(Alter, D).
;; 12
%a_nero:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaBroSo}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), younger(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), younger(G, D), gender(H, G), gender(H, D), son(Alter, D).
;; 13
%a_nero:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaBroDa}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), younger(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), younger(G, D), gender(H, G), gender(H, D), daughter(Alter, D).
;; 14
%a_nero:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaSisSo}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), younger(G, D), gender(H, G), gender(H, D), son(Alter, D).
;; 15
%a_nero:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaSisDa}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), younger(G, D), gender(H, G), gender(H, D), daughter(Alter, D).
;; 16
%a_nero:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaBroSo}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), elder(G, D), gender(H, G), gender(H, D), son(Alter, D).
;; 17
%a_nero:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaBroDa}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), elder(G, D), gender(H, G), gender(H, D), daughter(Alter, D).
;; 18
%a_nero:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaSisSo}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), elder(G, D), gender(H, G), gender(H, D), son(Alter, D).
;; 19
%a_nero:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaSisDa}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), elder(G, D), gender(H, G), gender(H, D), daughter(Alter, D).
;; 20
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoMoBroSoSo}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 21
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {MoMoBroSoDa}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 22
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoMoBroDaSo}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 23
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {MoMoBroDaDa}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 24
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoMoSisSoSo}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 25
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {MoMoSisSoDa}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 26
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoMoSisDaSo}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 27
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {MoMoSisDaDa}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 28
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoMoBroSoSo}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 29
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {MoMoBroSoDa}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 30
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoMoBroDaSo}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 31
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {MoMoBroDaDa}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 32
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoMoSisSoSo}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 33
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {MoMoSisSoDa}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 34
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoMoSisDaSo}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 35
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {MoMoSisDaDa}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 36
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaBroSoSo}  
[ext], [chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 37
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaBroSoDa}  
[ext], [chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 38
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaBroDaSo}  
[ext], [chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 39
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaBroDaDa}  
[ext], [chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 40
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaSisSoSo}  
[ext], [chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 41
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaSisSoDa}  
[ext], [chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 42
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaSisDaSo}  
[ext], [chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 43
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaSisDaDa}  
[ext], [chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 44
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaBroSoSo}  
[ext], [chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 45
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaBroSoDa}  
[ext], [chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 46
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaBroDaSo}  
[ext], [chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 47
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaBroDaDa}  
[ext], [chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 48
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaSisSoSo}  
[ext], [chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 49
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaSisSoDa}  
[ext], [chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 50
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaSisDaSo}  
[ext], [chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 51
%a_nero:1, a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {MoFaSisDaDa}  
[ext], [chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 52
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoBroSoSo}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 53
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoBroSoDa}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 54
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoBroDaSo}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 55
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoBroDaDa}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 56
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoSisSoSo}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 57
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoSisSoDa}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 58
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoSisDaSo}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 59
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoSisDaDa}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 60
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoBroSoSo}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 61
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoBroSoDa}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 62
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoBroDaSo}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 63
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoBroDaDa}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 64
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoSisSoSo}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 65
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoSisSoDa}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 66
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoSisDaSo}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 67
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaMoSisDaDa}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 68
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaBroSoSo}  
[ext], [chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 69
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaBroSoDa}  
[ext], [chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 70
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaBroDaSo}  
[ext], [chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 71
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaBroDaDa}  
[ext], [chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 72
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaSisSoSo}  
[ext], [chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 73
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaSisSoDa}  
[ext], [chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 74
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaSisDaSo}  
[ext], [chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 75
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaSisDaDa}  
[ext], [chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 76
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaBroSoSo}  
[ext], [chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 77
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaBroSoDa}  
[ext], [chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 78
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaBroDaSo}  
[ext], [chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 79
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaBroDaDa}  
[ext], [chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 80
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaSisSoSo}  
[ext], [chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 81
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaSisSoDa}  
[ext], [chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 82
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaSisDaSo}  
[ext], [chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 83
%a_nero:1, a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=12, S=0, Star=0,  {FaFaSisDaDa}  
[ext], [chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 84
%a_nero:2, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {BroWi}  
[ext], [chooseLast],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), younger(C, Ego), mother(D, Ego), father(E, Ego), child(F, D), child(F, E), not(equal(F, Ego)), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), spouse(Alter, C), gender(H, C), gender(H, Ego).
;; 85
%a_nero:2, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {SisHu}  
[ext], [chooseLast],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), younger(C, Ego), mother(D, Ego), father(E, Ego), child(F, D), child(F, E), not(equal(F, Ego)), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), spouse(Alter, C), gender(H, C), gender(H, Ego).
;; 86
%a_nero:2, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {BroWi}  
[ext], [chooseLast],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), elder(C, Ego), mother(D, Ego), father(E, Ego), child(F, D), child(F, E), not(equal(F, Ego)), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), spouse(Alter, C), gender(H, C), gender(H, Ego).
;; 87
%a_nero:2, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {SisHu}  
[ext], [chooseLast],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), elder(C, Ego), mother(D, Ego), father(E, Ego), child(F, D), child(F, E), not(equal(F, Ego)), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), spouse(Alter, C), gender(H, C), gender(H, Ego).
;; 88
%a_nero:3, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoBroSoWi}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), younger(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), younger(G, D), gender(H, G), gender(H, D), son(I, D), spouse(Alter, I), gender(J, I), gender(J, Ego).
;; 89
%a_nero:3, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoBroDaHu}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), younger(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), younger(G, D), gender(H, G), gender(H, D), daughter(I, D), spouse(Alter, I), gender(J, I), gender(J, Ego).
;; 90
%a_nero:3, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoSisSoWi}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), younger(G, D), gender(H, G), gender(H, D), son(I, D), spouse(Alter, I), gender(J, I), gender(J, Ego).
;; 91
%a_nero:3, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoSisDaHu}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), younger(G, D), gender(H, G), gender(H, D), daughter(I, D), spouse(Alter, I), gender(J, I), gender(J, Ego).
;; 92
%a_nero:3, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoBroSoWi}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), elder(G, D), gender(H, G), gender(H, D), son(I, D), spouse(Alter, I), gender(J, I), gender(J, Ego).
;; 93
%a_nero:3, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoBroDaHu}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), elder(G, D), gender(H, G), gender(H, D), daughter(I, D), spouse(Alter, I), gender(J, I), gender(J, Ego).
;; 94
%a_nero:3, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoSisSoWi}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), elder(G, D), gender(H, G), gender(H, D), son(I, D), spouse(Alter, I), gender(J, I), gender(J, Ego).
;; 95
%a_nero:3, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoSisDaHu}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), elder(G, D), gender(H, G), gender(H, D), daughter(I, D), spouse(Alter, I), gender(J, I), gender(J, Ego).
;; 96
%a_nero:3, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaBroSoWi}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), younger(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), younger(G, D), gender(H, G), gender(H, D), son(I, D), spouse(Alter, I), gender(J, I), gender(J, Ego).
;; 97
%a_nero:3, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaBroDaHu}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), younger(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), younger(G, D), gender(H, G), gender(H, D), daughter(I, D), spouse(Alter, I), gender(J, I), gender(J, Ego).
;; 98
%a_nero:3, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaSisSoWi}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), younger(G, D), gender(H, G), gender(H, D), son(I, D), spouse(Alter, I), gender(J, I), gender(J, Ego).
;; 99
%a_nero:3, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaSisDaHu}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), younger(G, D), gender(H, G), gender(H, D), daughter(I, D), spouse(Alter, I), gender(J, I), gender(J, Ego).
;; 100
%a_nero:3, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaBroSoWi}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), elder(G, D), gender(H, G), gender(H, D), son(I, D), spouse(Alter, I), gender(J, I), gender(J, Ego).
;; 101
%a_nero:3, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaBroDaHu}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), elder(G, D), gender(H, G), gender(H, D), daughter(I, D), spouse(Alter, I), gender(J, I), gender(J, Ego).
;; 102
%a_nero:3, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaSisSoWi}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), elder(G, D), gender(H, G), gender(H, D), son(I, D), spouse(Alter, I), gender(J, I), gender(J, Ego).
;; 103
%a_nero:3, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaSisDaHu}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), elder(G, D), gender(H, G), gender(H, D), daughter(I, D), spouse(Alter, I), gender(J, I), gender(J, Ego).


a_nero1[aux]48(Alter, Ego) :- [chooseLast],  siblings(Alter, Ego), younger(Alter, Ego), sibling(A, Ego), not(equal(A, Alter)), younger(A, Alter), gender(B, A), gender(B, Alter).
                           |  [chooseLast],  siblings(Alter, Ego), elder(Alter, Ego), sibling(A, Ego), not(equal(A, Alter)), elder(A, Alter), gender(B, A), gender(B, Alter).
;; 0
%a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego), mother(C, Ego), father(D, Ego), child(E, C), child(E, D), not(equal(E, Ego)), not(equal(E, Alter)), younger(E, Alter), gender(F, E), gender(F, Alter).
;; 1
%a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego), mother(C, Ego), father(D, Ego), child(E, C), child(E, D), not(equal(E, Ego)), not(equal(E, Alter)), younger(E, Alter), gender(F, E), gender(F, Alter).
;; 2
%a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego), mother(C, Ego), father(D, Ego), child(E, C), child(E, D), not(equal(E, Ego)), not(equal(E, Alter)), elder(E, Alter), gender(F, E), gender(F, Alter).
;; 3
%a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego), mother(C, Ego), father(D, Ego), child(E, C), child(E, D), not(equal(E, Ego)), not(equal(E, Alter)), elder(E, Alter), gender(F, E), gender(F, Alter).


a_nero2[aux]48(Alter, Ego) :-  parents(A, Ego), a_nero1[aux]48(B, A), children(Alter, B).
                           |   parents(A, Ego), a_nero2[aux]48(B, A), children(Alter, B).
;; 0
%a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), younger(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), younger(G, D), gender(H, G), gender(H, D), son(Alter, D).
;; 1
%a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), younger(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), younger(G, D), gender(H, G), gender(H, D), daughter(Alter, D).
;; 2
%a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), younger(G, D), gender(H, G), gender(H, D), son(Alter, D).
;; 3
%a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), younger(G, D), gender(H, G), gender(H, D), daughter(Alter, D).
;; 4
%a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), elder(G, D), gender(H, G), gender(H, D), son(Alter, D).
;; 5
%a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), elder(G, D), gender(H, G), gender(H, D), daughter(Alter, D).
;; 6
%a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), elder(G, D), gender(H, G), gender(H, D), son(Alter, D).
;; 7
%a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), elder(G, D), gender(H, G), gender(H, D), daughter(Alter, D).
;; 8
%a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), younger(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), younger(G, D), gender(H, G), gender(H, D), son(Alter, D).
;; 9
%a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), younger(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), younger(G, D), gender(H, G), gender(H, D), daughter(Alter, D).
;; 10
%a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), younger(G, D), gender(H, G), gender(H, D), son(Alter, D).
;; 11
%a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), younger(G, D), gender(H, G), gender(H, D), daughter(Alter, D).
;; 12
%a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), elder(G, D), gender(H, G), gender(H, D), son(Alter, D).
;; 13
%a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), elder(G, D), gender(H, G), gender(H, D), daughter(Alter, D).
;; 14
%a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), elder(G, D), gender(H, G), gender(H, D), son(Alter, D).
;; 15
%a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), mother(E, A), father(F, A), child(G, E), child(G, F), not(equal(G, A)), not(equal(G, D)), elder(G, D), gender(H, G), gender(H, D), daughter(Alter, D).
;; 16
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 17
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 18
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 19
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 20
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 21
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 22
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 23
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 24
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 25
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 26
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 27
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 28
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 29
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 30
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 31
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 32
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 33
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 34
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 35
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 36
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 37
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 38
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 39
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 40
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 41
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 42
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 43
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 44
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 45
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 46
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 47
%a_nero2[aux]48:1, parents:0, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 48
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 49
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 50
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 51
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 52
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 53
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 54
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 55
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 56
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 57
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 58
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 59
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 60
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 61
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 62
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 63
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:0, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 64
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 65
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 66
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 67
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 68
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 69
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 70
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 71
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:0, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), younger(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 72
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 73
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 74
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 75
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:0, brother:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).
;; 76
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), son(Alter, J).
;; 77
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), son(J, E), daughter(Alter, J).
;; 78
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), son(Alter, J).
;; 79
%a_nero2[aux]48:1, parents:1, a_nero2[aux]48:0, parents:1, a_nero1[aux]48:1, siblings:1, sister:0, sibling:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[chooseLast],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), mother(F, B), father(G, B), child(H, F), child(H, G), not(equal(H, B)), not(equal(H, E)), elder(H, E), gender(I, H), gender(I, E), daughter(J, E), daughter(Alter, J).


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


desang(Alter, Ego) :-  desang[aux]48(Alter, Ego).
                   |   desang[aux]48(Ego, Alter).
{"BroDaHu_DaHu_FaBroDaDaHu_FaBroSoDaHu_FaFaBroDaDaDaHu_FaFaBroDaSoDaHu_FaFaBroSoDaDaHu_FaFaBroSoSoDaHu_FaFaSisDaDaDaHu_FaFaSisDaSoDaHu_FaFaSisSoDaDaHu_FaFaSisSoSoDaHu_FaMoBroDaDaDaHu_FaMoBroDaSoDaHu_FaMoBroSoDaDaHu_FaMoBroSoSoDaHu_FaMoSisDaDaDaHu_FaMoSisDaSoDaHu_FaMoSisSoDaDaHu_FaMoSisSoSoDaHu_FaSisDaDaHu_FaSisSoDaHu_MoBroDaDaHu_MoBroSoDaHu_MoFaBroDaDaDaHu_MoFaBroDaSoDaHu_MoFaBroSoDaDaHu_MoFaBroSoSoDaHu_MoFaSisDaDaDaHu_MoFaSisDaSoDaHu_MoFaSisSoDaDaHu_MoFaSisSoSoDaHu_MoMoBroDaDaDaHu_MoMoBroDaSoDaHu_MoMoBroSoDaDaHu_MoMoBroSoSoDaHu_MoMoSisDaDaDaHu_MoMoSisDaSoDaHu_MoMoSisSoDaDaHu_MoMoSisSoSoDaHu_MoSisDaDaHu_MoSisSoDaHu_SisDaHu_WiFa_WiFaBro_WiFaFaBroDa_WiFaFaBroSo_WiFaFaFaBroDaDa_WiFaFaFaBroDaSo_WiFaFaFaBroSoDa_WiFaFaFaBroSoSo_WiFaFaFaSisDaDa_WiFaFaFaSisDaSo_WiFaFaFaSisSoDa_WiFaFaFaSisSoSo_WiFaFaMoBroDaDa_WiFaFaMoBroDaSo_WiFaFaMoBroSoDa_WiFaFaMoBroSoSo_WiFaFaMoSisDaDa_WiFaFaMoSisDaSo_WiFaFaMoSisSoDa_WiFaFaMoSisSoSo_WiFaFaSisDa_WiFaFaSisSo_WiFaMoBroDa_WiFaMoBroSo_WiFaMoFaBroDaDa_WiFaMoFaBroDaSo_WiFaMoFaBroSoDa_WiFaMoFaBroSoSo_WiFaMoFaSisDaDa_WiFaMoFaSisDaSo_WiFaMoFaSisSoDa_WiFaMoFaSisSoSo_WiFaMoMoBroDaDa_WiFaMoMoBroDaSo_WiFaMoMoBroSoDa_WiFaMoMoBroSoSo_WiFaMoMoSisDaDa_WiFaMoMoSisDaSo_WiFaMoMoSisSoDa_WiFaMoMoSisSoSo_WiFaMoSisDa_WiFaMoSisSo_WiFaSis_WiMo_WiMoBro_WiMoFaBroDa_WiMoFaBroSo_WiMoFaFaBroDaDa_WiMoFaFaBroDaSo_WiMoFaFaBroSoDa_WiMoFaFaBroSoSo_WiMoFaFaSisDaDa_WiMoFaFaSisDaSo_WiMoFaFaSisSoDa_WiMoFaFaSisSoSo_WiMoFaMoBroDaDa_WiMoFaMoBroDaSo_WiMoFaMoBroSoDa_WiMoFaMoBroSoSo_WiMoFaMoSisDaDa_WiMoFaMoSisDaSo_WiMoFaMoSisSoDa_WiMoFaMoSisSoSo_WiMoFaSisDa_WiMoFaSisSo_WiMoMoBroDa_WiMoMoBroSo_WiMoMoFaBroDaDa_WiMoMoFaBroDaSo_WiMoMoFaBroSoDa_WiMoMoFaBroSoSo_WiMoMoFaSisDaDa_WiMoMoFaSisDaSo_WiMoMoFaSisSoDa_WiMoMoFaSisSoSo_WiMoMoMoBroDaDa_WiMoMoMoBroDaSo_WiMoMoMoBroSoDa_WiMoMoMoBroSoSo_WiMoMoMoSisDaDa_WiMoMoMoSisDaSo_WiMoMoMoSisSoDa_WiMoMoMoSisSoSo_WiMoMoSisDa_WiMoMoSisSo_WiMoSis"}
;; 0
%desang:0, desang[aux]48:0, parents:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).
;; 1
%desang:0, desang[aux]48:0, parents:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).
;; 2
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoBro}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 3
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoSis}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 4
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoMoBroSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 5
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoMoBroDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 6
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoMoSisSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 7
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoMoSisDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 8
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoMoBroSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 9
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoMoBroSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 10
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoMoBroDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 11
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoMoBroDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 12
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoMoSisSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 13
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoMoSisSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 14
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoMoSisDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 15
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoMoSisDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 16
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoFaBroSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 17
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoFaBroSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 18
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoFaBroDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 19
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoFaBroDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 20
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoFaSisSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 21
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoFaSisSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 22
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoFaSisDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 23
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoFaSisDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 24
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoFaBroSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 25
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoFaBroDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 26
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoFaSisSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 27
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoFaSisDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 28
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaMoBroSoSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 29
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaMoBroSoDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 30
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaMoBroDaSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 31
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaMoBroDaDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 32
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaMoSisSoSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 33
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaMoSisSoDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 34
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaMoSisDaSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 35
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaMoSisDaDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 36
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaFaBroSoSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 37
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaFaBroSoDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 38
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaFaBroDaSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 39
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaFaBroDaDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 40
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaFaSisSoSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 41
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaFaSisSoDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 42
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaFaSisDaSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 43
%desang:0, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaFaSisDaDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 44
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaBro}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 45
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaSis}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 46
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaMoBroSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 47
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaMoBroDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 48
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaMoSisSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 49
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaMoSisDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 50
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoMoBroSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 51
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoMoBroSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 52
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoMoBroDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 53
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoMoBroDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 54
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoMoSisSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 55
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoMoSisSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 56
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoMoSisDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 57
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoMoSisDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 58
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoFaBroSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 59
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoFaBroSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 60
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoFaBroDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 61
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoFaBroDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 62
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoFaSisSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 63
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoFaSisSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 64
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoFaSisDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 65
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoFaSisDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 66
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaFaBroSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 67
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaFaBroDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 68
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaFaSisSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 69
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaFaSisDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 70
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaMoBroSoSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 71
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaMoBroSoDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 72
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaMoBroDaSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 73
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaMoBroDaDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 74
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaMoSisSoSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 75
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaMoSisSoDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 76
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaMoSisDaSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 77
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaMoSisDaDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 78
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaFaBroSoSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 79
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaFaBroSoDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 80
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaFaBroDaSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 81
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaFaBroDaDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 82
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaFaSisSoSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 83
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaFaSisSoDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 84
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaFaSisDaSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 85
%desang:0, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaFaSisDaDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 86
%desang:1, desang[aux]48:0, parents:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 wife(A, Alter), mother(Ego, A).
;; 87
%desang:1, desang[aux]48:0, parents:1%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 wife(A, Alter), father(Ego, A).
;; 88
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego).
;; 89
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego).
;; 90
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Ego, F).
;; 91
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Ego, F).
;; 92
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Ego, F).
;; 93
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Ego, F).
;; 94
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisDaDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Ego, H).
;; 95
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisDaDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Ego, H).
;; 96
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisDaDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Ego, H).
;; 97
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisDaDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Ego, H).
;; 98
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisDaDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Ego, H).
;; 99
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisDaDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Ego, H).
;; 100
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Ego, H).
;; 101
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Ego, H).
;; 102
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroDaDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Ego, H).
;; 103
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroDaDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Ego, H).
;; 104
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Ego, H).
;; 105
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Ego, H).
;; 106
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroDaDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Ego, H).
;; 107
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroDaDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Ego, H).
;; 108
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroDaDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Ego, H).
;; 109
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroDaDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Ego, H).
;; 110
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Ego, F).
;; 111
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Ego, F).
;; 112
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Ego, F).
;; 113
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Ego, F).
;; 114
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisSoDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Ego, H).
;; 115
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisSoDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Ego, H).
;; 116
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisSoDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Ego, H).
;; 117
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisSoDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Ego, H).
;; 118
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Ego, H).
;; 119
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Ego, H).
;; 120
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Ego, H).
;; 121
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Ego, H).
;; 122
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Ego, H).
;; 123
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Ego, H).
;; 124
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Ego, H).
;; 125
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Ego, H).
;; 126
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroSoDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Ego, H).
;; 127
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroSoDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Ego, H).
;; 128
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroSoDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Ego, H).
;; 129
%desang:1, desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroSoDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Ego, H).
;; 130
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego).
;; 131
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego).
;; 132
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Ego, F).
;; 133
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Ego, F).
;; 134
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Ego, F).
;; 135
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Ego, F).
;; 136
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisDaSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Ego, H).
;; 137
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisDaSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Ego, H).
;; 138
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisDaSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Ego, H).
;; 139
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisDaSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Ego, H).
;; 140
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisDaSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Ego, H).
;; 141
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisDaSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Ego, H).
;; 142
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Ego, H).
;; 143
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Ego, H).
;; 144
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroDaSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Ego, H).
;; 145
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroDaSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Ego, H).
;; 146
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Ego, H).
;; 147
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Ego, H).
;; 148
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroDaSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Ego, H).
;; 149
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroDaSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Ego, H).
;; 150
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroDaSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Ego, H).
;; 151
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroDaSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Ego, H).
;; 152
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Ego, F).
;; 153
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Ego, F).
;; 154
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Ego, F).
;; 155
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Ego, F).
;; 156
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisSoSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Ego, H).
;; 157
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisSoSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Ego, H).
;; 158
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisSoSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Ego, H).
;; 159
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisSoSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Ego, H).
;; 160
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Ego, H).
;; 161
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Ego, H).
;; 162
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Ego, H).
;; 163
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Ego, H).
;; 164
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Ego, H).
;; 165
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Ego, H).
;; 166
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Ego, H).
;; 167
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Ego, H).
;; 168
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroSoSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Ego, H).
;; 169
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroSoSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Ego, H).
;; 170
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroSoSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Ego, H).
;; 171
%desang:1, desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroSoSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Ego, H).


desang[aux]48(Alter, Ego) :-  wife(A, Ego), parents(Alter, A).
                          |  [ext],  wife(A, Ego), parents(B, A), generation[aux]48gs(Alter, B).
;; 0
%desang[aux]48:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(A, Ego), mother(Alter, A).
;; 1
%desang[aux]48:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(A, Ego), father(Alter, A).
;; 2
%desang[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 3
%desang[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 4
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 5
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 6
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 7
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 8
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 9
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 10
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 11
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 12
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 13
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 14
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 15
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 16
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 17
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 18
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 19
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 20
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 21
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 22
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 23
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 24
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 25
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 26
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 27
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 28
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 29
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 30
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 31
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 32
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 33
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 34
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 35
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 36
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 37
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 38
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 39
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 40
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 41
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 42
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 43
%desang[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 44
%desang[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 45
%desang[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 46
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 47
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 48
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 49
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 50
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 51
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 52
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 53
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 54
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 55
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 56
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 57
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 58
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 59
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 60
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 61
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 62
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 63
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 64
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 65
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 66
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 67
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 68
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 69
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 70
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 71
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 72
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 73
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 74
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 75
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 76
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 77
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 78
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 79
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 80
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 81
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 82
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 83
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 84
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 85
%desang[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).


desmo(Alter, Ego) :-  spice(A, Ego), sibling(Alter, A), gender(B, Ego), gender(B, Alter).
                  |   sibling(A, Ego), spice(Alter, A), gender(B, Ego), gender(B, Alter).
                  |  [ext],  spice(A, Ego), generation[aux]48(Alter, A), gender(B, Ego), gender(B, Alter).
                  |  [ext],  spice(Alter, A), generation[aux]48(A, Ego), gender(B, Ego), gender(B, Alter).
{"BroWi_FaBroDaHu_FaBroSoWi_FaFaBroDaDaHu_FaFaBroDaSoWi_FaFaBroSoDaHu_FaFaBroSoSoWi_FaFaSisDaDaHu_FaFaSisDaSoWi_FaFaSisSoDaHu_FaFaSisSoSoWi_FaMoBroDaDaHu_FaMoBroDaSoWi_FaMoBroSoDaHu_FaMoBroSoSoWi_FaMoSisDaDaHu_FaMoSisDaSoWi_FaMoSisSoDaHu_FaMoSisSoSoWi_FaSisDaHu_FaSisSoWi_HuFaBroDa_HuFaFaBroDaDa_HuFaFaBroSoDa_HuFaFaSisDaDa_HuFaFaSisSoDa_HuFaMoBroDaDa_HuFaMoBroSoDa_HuFaMoSisDaDa_HuFaMoSisSoDa_HuFaSisDa_HuMoBroDa_HuMoFaBroDaDa_HuMoFaBroSoDa_HuMoFaSisDaDa_HuMoFaSisSoDa_HuMoMoBroDaDa_HuMoMoBroSoDa_HuMoMoSisDaDa_HuMoMoSisSoDa_HuMoSisDa_HuSis_MoBroDaHu_MoBroSoWi_MoFaBroDaDaHu_MoFaBroDaSoWi_MoFaBroSoDaHu_MoFaBroSoSoWi_MoFaSisDaDaHu_MoFaSisDaSoWi_MoFaSisSoDaHu_MoFaSisSoSoWi_MoMoBroDaDaHu_MoMoBroDaSoWi_MoMoBroSoDaHu_MoMoBroSoSoWi_MoMoSisDaDaHu_MoMoSisDaSoWi_MoMoSisSoDaHu_MoMoSisSoSoWi_MoSisDaHu_MoSisSoWi_SisHu_WiBro_WiFaBroSo_WiFaFaBroDaSo_WiFaFaBroSoSo_WiFaFaSisDaSo_WiFaFaSisSoSo_WiFaMoBroDaSo_WiFaMoBroSoSo_WiFaMoSisDaSo_WiFaMoSisSoSo_WiFaSisSo_WiMoBroSo_WiMoFaBroDaSo_WiMoFaBroSoSo_WiMoFaSisDaSo_WiMoFaSisSoSo_WiMoMoBroDaSo_WiMoMoBroSoSo_WiMoMoSisDaSo_WiMoMoSisSoSo_WiMoSisSo"}
;; 0
%desmo:0, spice:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, Ego), gender(D, Alter).
;; 1
%desmo:0, spice:1, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, Ego), gender(D, Alter).
;; 2
%desmo:1, sibling:0, spice:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), husband(Alter, C), gender(D, Ego), gender(D, Alter).
;; 3
%desmo:1, sibling:0, spice:1%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), wife(Alter, C), gender(D, Ego), gender(D, Alter).
;; 4
%desmo:2, spice:0, generation[aux]48:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, Ego), gender(D, Alter).
;; 5
%desmo:2, spice:0, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, Ego), gender(F, Alter).
;; 6
%desmo:2, spice:0, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), gender(F, Ego), gender(F, Alter).
;; 7
%desmo:2, spice:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroSoDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 8
%desmo:2, spice:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 9
%desmo:2, spice:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisSoDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 10
%desmo:2, spice:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 11
%desmo:2, spice:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroSoDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 12
%desmo:2, spice:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroDaDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 13
%desmo:2, spice:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisSoDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 14
%desmo:2, spice:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisDaDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 15
%desmo:2, spice:0, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, Ego), gender(F, Alter).
;; 16
%desmo:2, spice:0, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), gender(F, Ego), gender(F, Alter).
;; 17
%desmo:2, spice:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroSoDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 18
%desmo:2, spice:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroDaDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 19
%desmo:2, spice:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisSoDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 20
%desmo:2, spice:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisDaDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 21
%desmo:2, spice:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroSoDa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 22
%desmo:2, spice:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroDaDa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 23
%desmo:2, spice:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisSoDa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 24
%desmo:2, spice:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisDaDa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 25
%desmo:2, spice:1, generation[aux]48:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, Ego), gender(D, Alter).
;; 26
%desmo:2, spice:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoBroSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, Ego), gender(F, Alter).
;; 27
%desmo:2, spice:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), gender(F, Ego), gender(F, Alter).
;; 28
%desmo:2, spice:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 29
%desmo:2, spice:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 30
%desmo:2, spice:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 31
%desmo:2, spice:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 32
%desmo:2, spice:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroSoSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 33
%desmo:2, spice:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroDaSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 34
%desmo:2, spice:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaSisSoSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 35
%desmo:2, spice:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaSisDaSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 36
%desmo:2, spice:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, Ego), gender(F, Alter).
;; 37
%desmo:2, spice:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaSisSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), gender(F, Ego), gender(F, Alter).
;; 38
%desmo:2, spice:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 39
%desmo:2, spice:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 40
%desmo:2, spice:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 41
%desmo:2, spice:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 42
%desmo:2, spice:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroSoSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 43
%desmo:2, spice:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroDaSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 44
%desmo:2, spice:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaSisSoSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 45
%desmo:2, spice:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaSisDaSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 46
%desmo:3, spice:0, generation[aux]48:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
[ext],  husband(Alter, A), mother(B, Ego), father(C, Ego), child(A, B), child(A, C), not(equal(A, Ego)), gender(D, Ego), gender(D, Alter).
;; 47
%desmo:3, spice:0, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
[ext],  husband(Alter, A), mother(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(A, E), gender(F, Ego), gender(F, Alter).
;; 48
%desmo:3, spice:0, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
[ext],  husband(Alter, A), mother(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(A, E), gender(F, Ego), gender(F, Alter).
;; 49
%desmo:3, spice:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoDaHu}  
[ext],  husband(Alter, A), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 50
%desmo:3, spice:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaDaHu}  
[ext],  husband(Alter, A), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 51
%desmo:3, spice:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoDaHu}  
[ext],  husband(Alter, A), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 52
%desmo:3, spice:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaDaHu}  
[ext],  husband(Alter, A), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 53
%desmo:3, spice:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoDaHu}  
[ext],  husband(Alter, A), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 54
%desmo:3, spice:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaDaHu}  
[ext],  husband(Alter, A), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 55
%desmo:3, spice:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoDaHu}  
[ext],  husband(Alter, A), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 56
%desmo:3, spice:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaDaHu}  
[ext],  husband(Alter, A), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 57
%desmo:3, spice:0, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
[ext],  husband(Alter, A), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(A, E), gender(F, Ego), gender(F, Alter).
;; 58
%desmo:3, spice:0, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
[ext],  husband(Alter, A), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(A, E), gender(F, Ego), gender(F, Alter).
;; 59
%desmo:3, spice:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoDaHu}  
[ext],  husband(Alter, A), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 60
%desmo:3, spice:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaDaHu}  
[ext],  husband(Alter, A), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 61
%desmo:3, spice:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoDaHu}  
[ext],  husband(Alter, A), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 62
%desmo:3, spice:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisDaDaHu}  
[ext],  husband(Alter, A), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 63
%desmo:3, spice:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoDaHu}  
[ext],  husband(Alter, A), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 64
%desmo:3, spice:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroDaDaHu}  
[ext],  husband(Alter, A), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 65
%desmo:3, spice:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoDaHu}  
[ext],  husband(Alter, A), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 66
%desmo:3, spice:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaDaHu}  
[ext],  husband(Alter, A), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 67
%desmo:3, spice:1, generation[aux]48:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
[ext],  wife(Alter, A), mother(B, Ego), father(C, Ego), child(A, B), child(A, C), not(equal(A, Ego)), gender(D, Ego), gender(D, Alter).
;; 68
%desmo:3, spice:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
[ext],  wife(Alter, A), mother(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(A, E), gender(F, Ego), gender(F, Alter).
;; 69
%desmo:3, spice:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
[ext],  wife(Alter, A), mother(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(A, E), gender(F, Ego), gender(F, Alter).
;; 70
%desmo:3, spice:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoSoWi}  
[ext],  wife(Alter, A), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 71
%desmo:3, spice:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaSoWi}  
[ext],  wife(Alter, A), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 72
%desmo:3, spice:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoSoWi}  
[ext],  wife(Alter, A), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 73
%desmo:3, spice:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaSoWi}  
[ext],  wife(Alter, A), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 74
%desmo:3, spice:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoSoWi}  
[ext],  wife(Alter, A), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 75
%desmo:3, spice:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaSoWi}  
[ext],  wife(Alter, A), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 76
%desmo:3, spice:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoSoWi}  
[ext],  wife(Alter, A), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 77
%desmo:3, spice:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaSoWi}  
[ext],  wife(Alter, A), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 78
%desmo:3, spice:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
[ext],  wife(Alter, A), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(A, E), gender(F, Ego), gender(F, Alter).
;; 79
%desmo:3, spice:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
[ext],  wife(Alter, A), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(A, E), gender(F, Ego), gender(F, Alter).
;; 80
%desmo:3, spice:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoSoWi}  
[ext],  wife(Alter, A), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 81
%desmo:3, spice:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaSoWi}  
[ext],  wife(Alter, A), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 82
%desmo:3, spice:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoSoWi}  
[ext],  wife(Alter, A), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 83
%desmo:3, spice:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisDaSoWi}  
[ext],  wife(Alter, A), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 84
%desmo:3, spice:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoSoWi}  
[ext],  wife(Alter, A), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 85
%desmo:3, spice:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroDaSoWi}  
[ext],  wife(Alter, A), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 86
%desmo:3, spice:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoSoWi}  
[ext],  wife(Alter, A), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(A, G), gender(H, Ego), gender(H, Alter).
;; 87
%desmo:3, spice:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaSoWi}  
[ext],  wife(Alter, A), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(A, G), gender(H, Ego), gender(H, Alter).


do(Alter, Ego) :-  husband(Alter, Ego).
               |  [ext],  husband(A, Ego), brother(Alter, A).
{"Hu_HuBro"}
;; 0
%do:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).
;; 1
%do:1, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


doti(Alter, Ego) :-  grandparent[aux]48(Ego, Alter), male(Ego), male(Alter).
                 |   grandparent[aux]48(Ego, Alter), male(Ego), female(Alter).
                 |   grandparent[aux]48(Ego, Alter), female(Ego), male(Alter).
                 |   grandparent[aux]48(Ego, Alter), female(Ego), female(Alter).
{"BroDaDa_BroDaSo_BroSoDa_BroSoSo_DaDa_DaSo_FaBroDaDaDa_FaBroDaDaSo_FaBroDaSoDa_FaBroDaSoSo_FaBroSoDaDa_FaBroSoDaSo_FaBroSoSoDa_FaBroSoSoSo_FaSisDaDaDa_FaSisDaDaSo_FaSisDaSoDa_FaSisDaSoSo_FaSisSoDaDa_FaSisSoDaSo_FaSisSoSoDa_FaSisSoSoSo_HuBroDaDa_HuBroDaSo_HuBroSoDa_HuBroSoSo_HuSisDaDa_HuSisDaSo_HuSisSoDa_HuSisSoSo_MoBroDaDaDa_MoBroDaDaSo_MoBroDaSoDa_MoBroDaSoSo_MoBroSoDaDa_MoBroSoDaSo_MoBroSoSoDa_MoBroSoSoSo_MoSisDaDaDa_MoSisDaDaSo_MoSisDaSoDa_MoSisDaSoSo_MoSisSoDaDa_MoSisSoDaSo_MoSisSoSoDa_MoSisSoSoSo_SisDaDa_SisDaSo_SisSoDa_SisSoSo_SoDa_SoSo_WiBroDaDa_WiBroDaSo_WiBroSoDa_WiBroSoSo_WiSisDaDa_WiSisDaSo_WiSisSoDa_WiSisSoSo"}
;; 0
%doti:0, grandparent[aux]48:0, parents:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 mother(A, Alter), parent(Ego, A), male(Ego), male(Alter).
;; 1
%doti:0, grandparent[aux]48:0, parents:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 father(A, Alter), parent(Ego, A), male(Ego), male(Alter).
;; 2
%doti:0, grandparent[aux]48:1, parents:0, parents:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), male(Alter).
;; 3
%doti:0, grandparent[aux]48:1, parents:0, parents:1, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), male(Alter).
;; 4
%doti:0, grandparent[aux]48:1, parents:1, parents:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), male(Alter).
;; 5
%doti:0, grandparent[aux]48:1, parents:1, parents:1, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), male(Alter).
;; 6
%doti:0, grandparent[aux]48:2, parents:0, parents:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Ego, E), male(Ego), male(Alter).
;; 7
%doti:0, grandparent[aux]48:2, parents:0, parents:1, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Ego, E), male(Ego), male(Alter).
;; 8
%doti:0, grandparent[aux]48:2, parents:1, parents:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Ego, E), male(Ego), male(Alter).
;; 9
%doti:0, grandparent[aux]48:2, parents:1, parents:1, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Ego, E), male(Ego), male(Alter).
;; 10
%doti:0, grandparent[aux]48:3, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), male(Alter).
;; 11
%doti:0, grandparent[aux]48:3, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), male(Alter).
;; 12
%doti:0, grandparent[aux]48:3, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), male(Alter).
;; 13
%doti:0, grandparent[aux]48:3, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), male(Alter).
;; 14
%doti:0, grandparent[aux]48:3, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), male(Alter).
;; 15
%doti:0, grandparent[aux]48:3, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), male(Alter).
;; 16
%doti:0, grandparent[aux]48:3, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), male(Alter).
;; 17
%doti:0, grandparent[aux]48:3, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), male(Alter).
;; 18
%doti:0, grandparent[aux]48:3, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), male(Alter).
;; 19
%doti:0, grandparent[aux]48:3, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), male(Alter).
;; 20
%doti:0, grandparent[aux]48:3, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), male(Alter).
;; 21
%doti:0, grandparent[aux]48:3, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), male(Alter).
;; 22
%doti:0, grandparent[aux]48:3, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), male(Alter).
;; 23
%doti:0, grandparent[aux]48:3, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), male(Alter).
;; 24
%doti:0, grandparent[aux]48:3, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), male(Alter).
;; 25
%doti:0, grandparent[aux]48:3, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), male(Alter).
;; 26
%doti:1, grandparent[aux]48:0, parents:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 mother(A, Alter), parent(Ego, A), male(Ego), female(Alter).
;; 27
%doti:1, grandparent[aux]48:0, parents:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 father(A, Alter), parent(Ego, A), male(Ego), female(Alter).
;; 28
%doti:1, grandparent[aux]48:1, parents:0, parents:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), female(Alter).
;; 29
%doti:1, grandparent[aux]48:1, parents:0, parents:1, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), female(Alter).
;; 30
%doti:1, grandparent[aux]48:1, parents:1, parents:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), female(Alter).
;; 31
%doti:1, grandparent[aux]48:1, parents:1, parents:1, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), female(Alter).
;; 32
%doti:1, grandparent[aux]48:2, parents:0, parents:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Ego, E), male(Ego), female(Alter).
;; 33
%doti:1, grandparent[aux]48:2, parents:0, parents:1, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Ego, E), male(Ego), female(Alter).
;; 34
%doti:1, grandparent[aux]48:2, parents:1, parents:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Ego, E), male(Ego), female(Alter).
;; 35
%doti:1, grandparent[aux]48:2, parents:1, parents:1, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Ego, E), male(Ego), female(Alter).
;; 36
%doti:1, grandparent[aux]48:3, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), female(Alter).
;; 37
%doti:1, grandparent[aux]48:3, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), female(Alter).
;; 38
%doti:1, grandparent[aux]48:3, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), female(Alter).
;; 39
%doti:1, grandparent[aux]48:3, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), female(Alter).
;; 40
%doti:1, grandparent[aux]48:3, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), female(Alter).
;; 41
%doti:1, grandparent[aux]48:3, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), female(Alter).
;; 42
%doti:1, grandparent[aux]48:3, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), female(Alter).
;; 43
%doti:1, grandparent[aux]48:3, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), female(Alter).
;; 44
%doti:1, grandparent[aux]48:3, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), female(Alter).
;; 45
%doti:1, grandparent[aux]48:3, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), female(Alter).
;; 46
%doti:1, grandparent[aux]48:3, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), female(Alter).
;; 47
%doti:1, grandparent[aux]48:3, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), female(Alter).
;; 48
%doti:1, grandparent[aux]48:3, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), female(Alter).
;; 49
%doti:1, grandparent[aux]48:3, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), female(Alter).
;; 50
%doti:1, grandparent[aux]48:3, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), female(Alter).
;; 51
%doti:1, grandparent[aux]48:3, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), female(Alter).
;; 52
%doti:2, grandparent[aux]48:0, parents:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 mother(A, Alter), parent(Ego, A), female(Ego), male(Alter).
;; 53
%doti:2, grandparent[aux]48:0, parents:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 father(A, Alter), parent(Ego, A), female(Ego), male(Alter).
;; 54
%doti:2, grandparent[aux]48:1, parents:0, parents:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), male(Alter).
;; 55
%doti:2, grandparent[aux]48:1, parents:0, parents:1, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), male(Alter).
;; 56
%doti:2, grandparent[aux]48:1, parents:1, parents:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), male(Alter).
;; 57
%doti:2, grandparent[aux]48:1, parents:1, parents:1, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), male(Alter).
;; 58
%doti:2, grandparent[aux]48:2, parents:0, parents:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Ego, E), female(Ego), male(Alter).
;; 59
%doti:2, grandparent[aux]48:2, parents:0, parents:1, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Ego, E), female(Ego), male(Alter).
;; 60
%doti:2, grandparent[aux]48:2, parents:1, parents:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Ego, E), female(Ego), male(Alter).
;; 61
%doti:2, grandparent[aux]48:2, parents:1, parents:1, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Ego, E), female(Ego), male(Alter).
;; 62
%doti:2, grandparent[aux]48:3, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), male(Alter).
;; 63
%doti:2, grandparent[aux]48:3, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), male(Alter).
;; 64
%doti:2, grandparent[aux]48:3, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), male(Alter).
;; 65
%doti:2, grandparent[aux]48:3, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), male(Alter).
;; 66
%doti:2, grandparent[aux]48:3, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), male(Alter).
;; 67
%doti:2, grandparent[aux]48:3, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), male(Alter).
;; 68
%doti:2, grandparent[aux]48:3, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), male(Alter).
;; 69
%doti:2, grandparent[aux]48:3, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), male(Alter).
;; 70
%doti:2, grandparent[aux]48:3, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), male(Alter).
;; 71
%doti:2, grandparent[aux]48:3, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), male(Alter).
;; 72
%doti:2, grandparent[aux]48:3, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), male(Alter).
;; 73
%doti:2, grandparent[aux]48:3, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), male(Alter).
;; 74
%doti:2, grandparent[aux]48:3, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), male(Alter).
;; 75
%doti:2, grandparent[aux]48:3, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), male(Alter).
;; 76
%doti:2, grandparent[aux]48:3, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), male(Alter).
;; 77
%doti:2, grandparent[aux]48:3, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), male(Alter).
;; 78
%doti:3, grandparent[aux]48:0, parents:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 mother(A, Alter), parent(Ego, A), female(Ego), female(Alter).
;; 79
%doti:3, grandparent[aux]48:0, parents:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 father(A, Alter), parent(Ego, A), female(Ego), female(Alter).
;; 80
%doti:3, grandparent[aux]48:1, parents:0, parents:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), female(Alter).
;; 81
%doti:3, grandparent[aux]48:1, parents:0, parents:1, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), female(Alter).
;; 82
%doti:3, grandparent[aux]48:1, parents:1, parents:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), female(Alter).
;; 83
%doti:3, grandparent[aux]48:1, parents:1, parents:1, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), female(Alter).
;; 84
%doti:3, grandparent[aux]48:2, parents:0, parents:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Ego, E), female(Ego), female(Alter).
;; 85
%doti:3, grandparent[aux]48:2, parents:0, parents:1, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Ego, E), female(Ego), female(Alter).
;; 86
%doti:3, grandparent[aux]48:2, parents:1, parents:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Ego, E), female(Ego), female(Alter).
;; 87
%doti:3, grandparent[aux]48:2, parents:1, parents:1, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Ego, E), female(Ego), female(Alter).
;; 88
%doti:3, grandparent[aux]48:3, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), female(Alter).
;; 89
%doti:3, grandparent[aux]48:3, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), female(Alter).
;; 90
%doti:3, grandparent[aux]48:3, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), female(Alter).
;; 91
%doti:3, grandparent[aux]48:3, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), female(Alter).
;; 92
%doti:3, grandparent[aux]48:3, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), female(Alter).
;; 93
%doti:3, grandparent[aux]48:3, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), female(Alter).
;; 94
%doti:3, grandparent[aux]48:3, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), female(Alter).
;; 95
%doti:3, grandparent[aux]48:3, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), female(Alter).
;; 96
%doti:3, grandparent[aux]48:3, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), female(Alter).
;; 97
%doti:3, grandparent[aux]48:3, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), female(Alter).
;; 98
%doti:3, grandparent[aux]48:3, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), female(Alter).
;; 99
%doti:3, grandparent[aux]48:3, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), female(Alter).
;; 100
%doti:3, grandparent[aux]48:3, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), female(Alter).
;; 101
%doti:3, grandparent[aux]48:3, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), female(Alter).
;; 102
%doti:3, grandparent[aux]48:3, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), female(Alter).
;; 103
%doti:3, grandparent[aux]48:3, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), female(Alter).


doto(Alter, Ego) :-  parents(A, Ego), sibling(B, A), child(Alter, B), gender(C, B), gender(D, A), not(equal(C, D)), gender(E, Ego), gender(E, Alter).
                 |  [ext],  parents(A, Ego), generation[aux]48(B, A), child(Alter, B), gender(C, B), gender(D, A), not(equal(C, D)), gender(E, Ego), gender(E, Alter).
{"FaFaBroDaDa_FaFaBroDaSo_FaFaFaBroDaDaDa_FaFaFaBroDaDaSo_FaFaFaBroSoDaDa_FaFaFaBroSoDaSo_FaFaFaSisDaDaDa_FaFaFaSisDaDaSo_FaFaFaSisSoDaDa_FaFaFaSisSoDaSo_FaFaMoBroDaDaDa_FaFaMoBroDaDaSo_FaFaMoBroSoDaDa_FaFaMoBroSoDaSo_FaFaMoSisDaDaDa_FaFaMoSisDaDaSo_FaFaMoSisSoDaDa_FaFaMoSisSoDaSo_FaFaSisDaDa_FaFaSisDaSo_FaMoBroDaDa_FaMoBroDaSo_FaMoFaBroDaDaDa_FaMoFaBroDaDaSo_FaMoFaBroSoDaDa_FaMoFaBroSoDaSo_FaMoFaSisDaDaDa_FaMoFaSisDaDaSo_FaMoFaSisSoDaDa_FaMoFaSisSoDaSo_FaMoMoBroDaDaDa_FaMoMoBroDaDaSo_FaMoMoBroSoDaDa_FaMoMoBroSoDaSo_FaMoMoSisDaDaDa_FaMoMoSisDaDaSo_FaMoMoSisSoDaDa_FaMoMoSisSoDaSo_FaMoSisDaDa_FaMoSisDaSo_FaSisDa_FaSisSo_MoBroDa_MoBroSo_MoFaBroSoDa_MoFaBroSoSo_MoFaFaBroDaSoDa_MoFaFaBroDaSoSo_MoFaFaBroSoSoDa_MoFaFaBroSoSoSo_MoFaFaSisDaSoDa_MoFaFaSisDaSoSo_MoFaFaSisSoSoDa_MoFaFaSisSoSoSo_MoFaMoBroDaSoDa_MoFaMoBroDaSoSo_MoFaMoBroSoSoDa_MoFaMoBroSoSoSo_MoFaMoSisDaSoDa_MoFaMoSisDaSoSo_MoFaMoSisSoSoDa_MoFaMoSisSoSoSo_MoFaSisSoDa_MoFaSisSoSo_MoMoBroSoDa_MoMoBroSoSo_MoMoFaBroDaSoDa_MoMoFaBroDaSoSo_MoMoFaBroSoSoDa_MoMoFaBroSoSoSo_MoMoFaSisDaSoDa_MoMoFaSisDaSoSo_MoMoFaSisSoSoDa_MoMoFaSisSoSoSo_MoMoMoBroDaSoDa_MoMoMoBroDaSoSo_MoMoMoBroSoSoDa_MoMoMoBroSoSoSo_MoMoMoSisDaSoDa_MoMoMoSisDaSoSo_MoMoMoSisSoSoDa_MoMoMoSisSoSoSo_MoMoSisSoDa_MoMoSisSoSo"}
;; 0
%doto:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, D), gender(F, A), not(equal(E, F)), gender(G, Ego), gender(G, Alter).
;; 1
%doto:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, D), gender(F, A), not(equal(E, F)), gender(G, Ego), gender(G, Alter).
;; 2
%doto:1, parents:0, generation[aux]48:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, D), gender(F, A), not(equal(E, F)), gender(G, Ego), gender(G, Alter).
;; 3
%doto:1, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, F), gender(H, A), not(equal(G, H)), gender(I, Ego), gender(I, Alter).
;; 4
%doto:1, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, F), gender(H, A), not(equal(G, H)), gender(I, Ego), gender(I, Alter).
;; 5
%doto:1, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 6
%doto:1, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 7
%doto:1, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 8
%doto:1, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 9
%doto:1, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 10
%doto:1, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 11
%doto:1, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 12
%doto:1, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 13
%doto:1, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, F), gender(H, A), not(equal(G, H)), gender(I, Ego), gender(I, Alter).
;; 14
%doto:1, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, F), gender(H, A), not(equal(G, H)), gender(I, Ego), gender(I, Alter).
;; 15
%doto:1, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 16
%doto:1, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 17
%doto:1, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 18
%doto:1, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 19
%doto:1, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 20
%doto:1, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 21
%doto:1, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 22
%doto:1, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 23
%doto:1, parents:1, generation[aux]48:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, D), gender(F, A), not(equal(E, F)), gender(G, Ego), gender(G, Alter).
;; 24
%doto:1, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, F), gender(H, A), not(equal(G, H)), gender(I, Ego), gender(I, Alter).
;; 25
%doto:1, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, F), gender(H, A), not(equal(G, H)), gender(I, Ego), gender(I, Alter).
;; 26
%doto:1, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 27
%doto:1, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 28
%doto:1, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 29
%doto:1, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 30
%doto:1, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 31
%doto:1, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 32
%doto:1, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 33
%doto:1, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 34
%doto:1, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, F), gender(H, A), not(equal(G, H)), gender(I, Ego), gender(I, Alter).
;; 35
%doto:1, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, F), gender(H, A), not(equal(G, H)), gender(I, Ego), gender(I, Alter).
;; 36
%doto:1, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 37
%doto:1, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 38
%doto:1, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 39
%doto:1, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 40
%doto:1, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 41
%doto:1, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 42
%doto:1, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 43
%doto:1, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 44
%doto:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, D), gender(F, A), not(equal(E, F)), gender(G, Ego), gender(G, Alter).
;; 45
%doto:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, D), gender(F, A), not(equal(E, F)), gender(G, Ego), gender(G, Alter).
;; 46
%doto:1, parents:0, generation[aux]48:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, D), gender(F, A), not(equal(E, F)), gender(G, Ego), gender(G, Alter).
;; 47
%doto:1, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, F), gender(H, A), not(equal(G, H)), gender(I, Ego), gender(I, Alter).
;; 48
%doto:1, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, F), gender(H, A), not(equal(G, H)), gender(I, Ego), gender(I, Alter).
;; 49
%doto:1, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 50
%doto:1, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 51
%doto:1, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 52
%doto:1, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 53
%doto:1, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 54
%doto:1, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 55
%doto:1, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 56
%doto:1, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 57
%doto:1, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, F), gender(H, A), not(equal(G, H)), gender(I, Ego), gender(I, Alter).
;; 58
%doto:1, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, F), gender(H, A), not(equal(G, H)), gender(I, Ego), gender(I, Alter).
;; 59
%doto:1, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 60
%doto:1, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 61
%doto:1, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 62
%doto:1, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 63
%doto:1, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 64
%doto:1, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 65
%doto:1, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 66
%doto:1, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 67
%doto:1, parents:1, generation[aux]48:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, D), gender(F, A), not(equal(E, F)), gender(G, Ego), gender(G, Alter).
;; 68
%doto:1, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, F), gender(H, A), not(equal(G, H)), gender(I, Ego), gender(I, Alter).
;; 69
%doto:1, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, F), gender(H, A), not(equal(G, H)), gender(I, Ego), gender(I, Alter).
;; 70
%doto:1, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 71
%doto:1, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 72
%doto:1, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 73
%doto:1, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 74
%doto:1, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 75
%doto:1, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 76
%doto:1, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 77
%doto:1, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 78
%doto:1, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, F), gender(H, A), not(equal(G, H)), gender(I, Ego), gender(I, Alter).
;; 79
%doto:1, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, F), gender(H, A), not(equal(G, H)), gender(I, Ego), gender(I, Alter).
;; 80
%doto:1, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 81
%doto:1, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 82
%doto:1, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 83
%doto:1, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 84
%doto:1, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 85
%doto:1, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 86
%doto:1, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).
;; 87
%doto:1, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, H), gender(J, A), not(equal(I, J)), gender(K, Ego), gender(K, Alter).


dumbu(Alter, Ego) :- [chooseLast],  mother(A, Ego), father(B, Ego), children(Alter, A), child(Alter, B), not(equal(Alter, Ego)), younger(Alter, Ego), not(child(C, A), child(C, B), younger(C, Alter), gender(D, C), gender(D, Alter)).
{"Bro_Sis"}
;; 0
%dumbu:0, children:0, (not)%
 Lvl=0,  PC=7, S=0, Star=0,  {Bro}  
[chooseLast],  mother(A, Ego), father(B, Ego), son(Alter, A), child(Alter, B), not(equal(Alter, Ego)), younger(Alter, Ego), not(child(C, A), child(C, B), younger(C, Alter), gender(D, C), gender(D, Alter)).
;; 1
%dumbu:0, children:1, (not)%
 Lvl=0,  PC=7, S=0, Star=0,  {Sis}  
[chooseLast],  mother(A, Ego), father(B, Ego), daughter(Alter, A), child(Alter, B), not(equal(Alter, Ego)), younger(Alter, Ego), not(child(C, A), child(C, B), younger(C, Alter), gender(D, C), gender(D, Alter)).


eneng(Alter, Ego) :-  father(A, Ego), sibling(Alter, A), female(Alter).
                  |  [ext],  father(A, Ego), generation[aux]48(Alter, A), female(Alter).
{"FaFaBroDa_FaFaFaBroDaDa_FaFaFaBroSoDa_FaFaFaSisDaDa_FaFaFaSisSoDa_FaFaMoBroDaDa_FaFaMoBroSoDa_FaFaMoSisDaDa_FaFaMoSisSoDa_FaFaSisDa_FaMoBroDa_FaMoFaBroDaDa_FaMoFaBroSoDa_FaMoFaSisDaDa_FaMoFaSisSoDa_FaMoMoBroDaDa_FaMoMoBroSoDa_FaMoMoSisDaDa_FaMoMoSisSoDa_FaMoSisDa_FaSis"}
;; 0
%eneng:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%eneng:1, generation[aux]48:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%eneng:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 3
%eneng:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 4
%eneng:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 5
%eneng:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 6
%eneng:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 7
%eneng:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 8
%eneng:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 9
%eneng:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 10
%eneng:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 11
%eneng:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 12
%eneng:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 13
%eneng:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 14
%eneng:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 15
%eneng:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 16
%eneng:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 17
%eneng:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 18
%eneng:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 19
%eneng:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 20
%eneng:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 21
%eneng:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).


generation[aux]48(Alter, Ego) :-  sibling(Alter, Ego).
                              |   parents(A, Ego), generation[aux]48gs(B, A), child(Alter, B).
;; 0
%generation[aux]48:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 4
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 5
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 6
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 7
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 8
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 9
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 10
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 11
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 12
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 13
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 14
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 15
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 16
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 17
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 18
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 19
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 20
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 21
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 22
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 23
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 24
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 25
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 26
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 27
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 28
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 29
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 30
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 31
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 32
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 33
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 34
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 35
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 36
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 37
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 38
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 39
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 40
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 41
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 42
%generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 43
%generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 44
%generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 45
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 46
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 47
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 48
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 49
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 50
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 51
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 52
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 53
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 54
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 55
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 56
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 57
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 58
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 59
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 60
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 61
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 62
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 63
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 64
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 65
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 66
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 67
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 68
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 69
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 70
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 71
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 72
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 73
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 74
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 75
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 76
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 77
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 78
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 79
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 80
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 81
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 82
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 83
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 84
%generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).


generation[aux]48gs(Alter, Ego) :-  siblings(Alter, Ego).
                                |   parents(A, Ego), generation[aux]48gs(B, A), children(Alter, B).
;; 0
%generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 7
%generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 8
%generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 9
%generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 10
%generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 11
%generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 12
%generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 13
%generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 14
%generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 15
%generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 16
%generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 17
%generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 18
%generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 19
%generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 20
%generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 21
%generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 22
%generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 23
%generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 24
%generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 25
%generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 26
%generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 27
%generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 28
%generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 29
%generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 30
%generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 31
%generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 32
%generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 33
%generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 34
%generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 35
%generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 36
%generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 37
%generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 38
%generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 39
%generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 40
%generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 41
%generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).


generation[aux]48junior(Alter, Ego) :-  sibling(Alter, Ego), younger(Alter, Ego).
                                    |   parents(A, Ego), generation[aux]48junior(B, A), child(Alter, B).
;; 0
%generation[aux]48junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 1
%generation[aux]48junior:1, parents:0, generation[aux]48junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), child(Alter, D).
;; 2
%generation[aux]48junior:1, parents:0, generation[aux]48junior:1, parents:0, generation[aux]48junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 3
%generation[aux]48junior:1, parents:0, generation[aux]48junior:1, parents:1, generation[aux]48junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 4
%generation[aux]48junior:1, parents:1, generation[aux]48junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), child(Alter, D).
;; 5
%generation[aux]48junior:1, parents:1, generation[aux]48junior:1, parents:0, generation[aux]48junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 6
%generation[aux]48junior:1, parents:1, generation[aux]48junior:1, parents:1, generation[aux]48junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).


generation[aux]48senior(Alter, Ego) :-  sibling(Alter, Ego), elder(Alter, Ego).
                                    |   parents(A, Ego), generation[aux]48senior(B, A), child(Alter, B).
;; 0
%generation[aux]48senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 1
%generation[aux]48senior:1, parents:0, generation[aux]48senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), child(Alter, D).
;; 2
%generation[aux]48senior:1, parents:0, generation[aux]48senior:1, parents:0, generation[aux]48senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 3
%generation[aux]48senior:1, parents:0, generation[aux]48senior:1, parents:1, generation[aux]48senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 4
%generation[aux]48senior:1, parents:1, generation[aux]48senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), child(Alter, D).
;; 5
%generation[aux]48senior:1, parents:1, generation[aux]48senior:1, parents:0, generation[aux]48senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 6
%generation[aux]48senior:1, parents:1, generation[aux]48senior:1, parents:1, generation[aux]48senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).


generation[aux]48small(Alter, Ego) :-  sibling(Alter, Ego).
                                   |   parents(A, Ego), siblings(B, A), child(Alter, B).
;; 0
%generation[aux]48small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]48small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%generation[aux]48small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%generation[aux]48small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 4
%generation[aux]48small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).


generation[aux]48smallGS(Alter, Ego) :-  siblings(Alter, Ego).
                                     |   parents(A, Ego), siblings(B, A), children(Alter, B).
;; 0
%generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 7
%generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 8
%generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 9
%generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


grandparent[aux]48(Alter, Ego) :-  parents(A, Ego), parent(Alter, A).
                               |  [ext],  parents(A, Ego), parents(B, A), sibling(Alter, B).
                               |  [ext],  parents(A, Ego), parents(B, A), sibling(C, B), spouse(Alter, C).
                               |  [ext],  parents(A, Ego), parents(B, A), parents(C, B), siblings(D, C), child(Alter, D).
;; 0
%grandparent[aux]48:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), parent(Alter, A).
;; 1
%grandparent[aux]48:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), parent(Alter, A).
;; 2
%grandparent[aux]48:1, parents:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 3
%grandparent[aux]48:1, parents:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 4
%grandparent[aux]48:1, parents:1, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 5
%grandparent[aux]48:1, parents:1, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 6
%grandparent[aux]48:2, parents:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Alter, E).
;; 7
%grandparent[aux]48:2, parents:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Alter, E).
;; 8
%grandparent[aux]48:2, parents:1, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Alter, E).
;; 9
%grandparent[aux]48:2, parents:1, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Alter, E).
;; 10
%grandparent[aux]48:3, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 11
%grandparent[aux]48:3, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 12
%grandparent[aux]48:3, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 13
%grandparent[aux]48:3, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 14
%grandparent[aux]48:3, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 15
%grandparent[aux]48:3, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 16
%grandparent[aux]48:3, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 17
%grandparent[aux]48:3, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 18
%grandparent[aux]48:3, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 19
%grandparent[aux]48:3, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 20
%grandparent[aux]48:3, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 21
%grandparent[aux]48:3, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 22
%grandparent[aux]48:3, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 23
%grandparent[aux]48:3, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 24
%grandparent[aux]48:3, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 25
%grandparent[aux]48:3, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).


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


kasi_kasi(Alter, Ego) :-  kasi_kasi[aux]48(Alter, Ego).
                      |   kasi_kasi[aux]48(Ego, Alter), male(Alter).
                      |   kasi_kasi[aux]48(Ego, Alter), female(Alter).
{"BroDaDaDa_BroDaDaSo_BroDaSoDa_BroDaSoSo_BroSoDaDa_BroSoDaSo_BroSoSoDa_BroSoSoSo_DaDaDa_DaDaSo_DaSoDa_DaSoSo_FaBroDaDaDaDa_FaBroDaDaDaSo_FaBroDaDaSoDa_FaBroDaDaSoSo_FaBroDaSoDaDa_FaBroDaSoDaSo_FaBroDaSoSoDa_FaBroDaSoSoSo_FaBroSoDaDaDa_FaBroSoDaDaSo_FaBroSoDaSoDa_FaBroSoDaSoSo_FaBroSoSoDaDa_FaBroSoSoDaSo_FaBroSoSoSoDa_FaBroSoSoSoSo_FaFaFa_FaFaFaBro_FaFaFaFaBroDa_FaFaFaFaBroSo_FaFaFaFaSisDa_FaFaFaFaSisSo_FaFaFaMoBroDa_FaFaFaMoBroSo_FaFaFaMoSisDa_FaFaFaMoSisSo_FaFaFaSis_FaFaMo_FaFaMoBro_FaFaMoFaBroDa_FaFaMoFaBroSo_FaFaMoFaSisDa_FaFaMoFaSisSo_FaFaMoMoBroDa_FaFaMoMoBroSo_FaFaMoMoSisDa_FaFaMoMoSisSo_FaFaMoSis_FaMoFa_FaMoFaBro_FaMoFaFaBroDa_FaMoFaFaBroSo_FaMoFaFaSisDa_FaMoFaFaSisSo_FaMoFaMoBroDa_FaMoFaMoBroSo_FaMoFaMoSisDa_FaMoFaMoSisSo_FaMoFaSis_FaMoMo_FaMoMoBro_FaMoMoFaBroDa_FaMoMoFaBroSo_FaMoMoFaSisDa_FaMoMoFaSisSo_FaMoMoMoBroDa_FaMoMoMoBroSo_FaMoMoMoSisDa_FaMoMoMoSisSo_FaMoMoSis_FaSisDaDaDaDa_FaSisDaDaDaSo_FaSisDaDaSoDa_FaSisDaDaSoSo_FaSisDaSoDaDa_FaSisDaSoDaSo_FaSisDaSoSoDa_FaSisDaSoSoSo_FaSisSoDaDaDa_FaSisSoDaDaSo_FaSisSoDaSoDa_FaSisSoDaSoSo_FaSisSoSoDaDa_FaSisSoSoDaSo_FaSisSoSoSoDa_FaSisSoSoSoSo_MoBroDaDaDaDa_MoBroDaDaDaSo_MoBroDaDaSoDa_MoBroDaDaSoSo_MoBroDaSoDaDa_MoBroDaSoDaSo_MoBroDaSoSoDa_MoBroDaSoSoSo_MoBroSoDaDaDa_MoBroSoDaDaSo_MoBroSoDaSoDa_MoBroSoDaSoSo_MoBroSoSoDaDa_MoBroSoSoDaSo_MoBroSoSoSoDa_MoBroSoSoSoSo_MoFaFa_MoFaFaBro_MoFaFaFaBroDa_MoFaFaFaBroSo_MoFaFaFaSisDa_MoFaFaFaSisSo_MoFaFaMoBroDa_MoFaFaMoBroSo_MoFaFaMoSisDa_MoFaFaMoSisSo_MoFaFaSis_MoFaMo_MoFaMoBro_MoFaMoFaBroDa_MoFaMoFaBroSo_MoFaMoFaSisDa_MoFaMoFaSisSo_MoFaMoMoBroDa_MoFaMoMoBroSo_MoFaMoMoSisDa_MoFaMoMoSisSo_MoFaMoSis_MoMoFa_MoMoFaBro_MoMoFaFaBroDa_MoMoFaFaBroSo_MoMoFaFaSisDa_MoMoFaFaSisSo_MoMoFaMoBroDa_MoMoFaMoBroSo_MoMoFaMoSisDa_MoMoFaMoSisSo_MoMoFaSis_MoMoMo_MoMoMoBro_MoMoMoFaBroDa_MoMoMoFaBroSo_MoMoMoFaSisDa_MoMoMoFaSisSo_MoMoMoMoBroDa_MoMoMoMoBroSo_MoMoMoMoSisDa_MoMoMoMoSisSo_MoMoMoSis_MoSisDaDaDaDa_MoSisDaDaDaSo_MoSisDaDaSoDa_MoSisDaDaSoSo_MoSisDaSoDaDa_MoSisDaSoDaSo_MoSisDaSoSoDa_MoSisDaSoSoSo_MoSisSoDaDaDa_MoSisSoDaDaSo_MoSisSoDaSoDa_MoSisSoDaSoSo_MoSisSoSoDaDa_MoSisSoSoDaSo_MoSisSoSoSoDa_MoSisSoSoSoSo_SisDaDaDa_SisDaDaSo_SisDaSoDa_SisDaSoSo_SisSoDaDa_SisSoDaSo_SisSoSoDa_SisSoSoSo_SoDaDa_SoDaSo_SoSoDa_SoSoSo"}
;; 0
%kasi_kasi:0, kasi_kasi[aux]48:0, parents:0, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
 mother(A, Ego), mother(B, A), mother(Alter, B).
;; 1
%kasi_kasi:0, kasi_kasi[aux]48:0, parents:0, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
 mother(A, Ego), mother(B, A), father(Alter, B).
;; 2
%kasi_kasi:0, kasi_kasi[aux]48:0, parents:0, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
 mother(A, Ego), father(B, A), mother(Alter, B).
;; 3
%kasi_kasi:0, kasi_kasi[aux]48:0, parents:0, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
 mother(A, Ego), father(B, A), father(Alter, B).
;; 4
%kasi_kasi:0, kasi_kasi[aux]48:0, parents:1, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
 father(A, Ego), mother(B, A), mother(Alter, B).
;; 5
%kasi_kasi:0, kasi_kasi[aux]48:0, parents:1, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
 father(A, Ego), mother(B, A), father(Alter, B).
;; 6
%kasi_kasi:0, kasi_kasi[aux]48:0, parents:1, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
 father(A, Ego), father(B, A), mother(Alter, B).
;; 7
%kasi_kasi:0, kasi_kasi[aux]48:0, parents:1, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
 father(A, Ego), father(B, A), father(Alter, B).
;; 8
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 9
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 10
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 11
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 12
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 13
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 14
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 15
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 16
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 17
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 18
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaBro}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 19
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaSis}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 20
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 21
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 22
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 23
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 24
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 25
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 26
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 27
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 28
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 29
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 30
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 31
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 32
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 33
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 34
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 35
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 36
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 37
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 38
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaBro}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 39
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaSis}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 40
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoBroSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 41
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoBroDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 42
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoSisSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 43
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoSisDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 44
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaBroSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 45
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaBroDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 46
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaSisSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 47
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaSisDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 48
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 49
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 50
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 51
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 52
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 53
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 54
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 55
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 56
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 57
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 58
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaBro}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 59
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaSis}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 60
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 61
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 62
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 63
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 64
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 65
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 66
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 67
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 68
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 69
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 70
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 71
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 72
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 73
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 74
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 75
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 76
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 77
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 78
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaBro}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 79
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaSis}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 80
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoBroSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 81
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoBroDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 82
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoSisSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 83
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoSisDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 84
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaBroSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 85
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaBroDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 86
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaSisSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 87
%kasi_kasi:0, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaSisDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 88
%kasi_kasi:1, kasi_kasi[aux]48:0, parents:0, parents:0, parents:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
 mother(A, Alter), mother(B, A), mother(Ego, B), male(Alter).
;; 89
%kasi_kasi:1, kasi_kasi[aux]48:0, parents:0, parents:0, parents:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
 mother(A, Alter), mother(B, A), father(Ego, B), male(Alter).
;; 90
%kasi_kasi:1, kasi_kasi[aux]48:0, parents:0, parents:1, parents:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
 mother(A, Alter), father(B, A), mother(Ego, B), male(Alter).
;; 91
%kasi_kasi:1, kasi_kasi[aux]48:0, parents:0, parents:1, parents:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
 mother(A, Alter), father(B, A), father(Ego, B), male(Alter).
;; 92
%kasi_kasi:1, kasi_kasi[aux]48:0, parents:1, parents:0, parents:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
 father(A, Alter), mother(B, A), mother(Ego, B), male(Alter).
;; 93
%kasi_kasi:1, kasi_kasi[aux]48:0, parents:1, parents:0, parents:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
 father(A, Alter), mother(B, A), father(Ego, B), male(Alter).
;; 94
%kasi_kasi:1, kasi_kasi[aux]48:0, parents:1, parents:1, parents:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
 father(A, Alter), father(B, A), mother(Ego, B), male(Alter).
;; 95
%kasi_kasi:1, kasi_kasi[aux]48:0, parents:1, parents:1, parents:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
 father(A, Alter), father(B, A), father(Ego, B), male(Alter).
;; 96
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), male(Alter).
;; 97
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), male(Alter).
;; 98
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), male(Alter).
;; 99
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), male(Alter).
;; 100
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), male(Alter).
;; 101
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), male(Alter).
;; 102
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), male(Alter).
;; 103
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), male(Alter).
;; 104
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), male(Alter).
;; 105
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), male(Alter).
;; 106
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), male(Alter).
;; 107
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), male(Alter).
;; 108
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), male(Alter).
;; 109
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), male(Alter).
;; 110
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), male(Alter).
;; 111
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), male(Alter).
;; 112
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), male(Alter).
;; 113
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), male(Alter).
;; 114
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), male(Alter).
;; 115
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), male(Alter).
;; 116
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), male(Alter).
;; 117
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), male(Alter).
;; 118
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), male(Alter).
;; 119
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), male(Alter).
;; 120
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), male(Alter).
;; 121
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), male(Alter).
;; 122
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), male(Alter).
;; 123
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), male(Alter).
;; 124
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), male(Alter).
;; 125
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), male(Alter).
;; 126
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), male(Alter).
;; 127
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), male(Alter).
;; 128
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), male(Alter).
;; 129
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), male(Alter).
;; 130
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), male(Alter).
;; 131
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), male(Alter).
;; 132
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), male(Alter).
;; 133
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), male(Alter).
;; 134
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), male(Alter).
;; 135
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), male(Alter).
;; 136
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), male(Alter).
;; 137
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), male(Alter).
;; 138
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), male(Alter).
;; 139
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), male(Alter).
;; 140
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), male(Alter).
;; 141
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), male(Alter).
;; 142
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), male(Alter).
;; 143
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), male(Alter).
;; 144
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), male(Alter).
;; 145
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), male(Alter).
;; 146
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), male(Alter).
;; 147
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), male(Alter).
;; 148
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), male(Alter).
;; 149
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), male(Alter).
;; 150
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), male(Alter).
;; 151
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), male(Alter).
;; 152
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), male(Alter).
;; 153
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), male(Alter).
;; 154
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), male(Alter).
;; 155
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), male(Alter).
;; 156
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), male(Alter).
;; 157
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), male(Alter).
;; 158
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), male(Alter).
;; 159
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), male(Alter).
;; 160
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), male(Alter).
;; 161
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), male(Alter).
;; 162
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), male(Alter).
;; 163
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), male(Alter).
;; 164
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), male(Alter).
;; 165
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), male(Alter).
;; 166
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), male(Alter).
;; 167
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), male(Alter).
;; 168
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), male(Alter).
;; 169
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), male(Alter).
;; 170
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), male(Alter).
;; 171
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), male(Alter).
;; 172
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), male(Alter).
;; 173
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), male(Alter).
;; 174
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), male(Alter).
;; 175
%kasi_kasi:1, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), male(Alter).
;; 176
%kasi_kasi:2, kasi_kasi[aux]48:0, parents:0, parents:0, parents:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
 mother(A, Alter), mother(B, A), mother(Ego, B), female(Alter).
;; 177
%kasi_kasi:2, kasi_kasi[aux]48:0, parents:0, parents:0, parents:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
 mother(A, Alter), mother(B, A), father(Ego, B), female(Alter).
;; 178
%kasi_kasi:2, kasi_kasi[aux]48:0, parents:0, parents:1, parents:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
 mother(A, Alter), father(B, A), mother(Ego, B), female(Alter).
;; 179
%kasi_kasi:2, kasi_kasi[aux]48:0, parents:0, parents:1, parents:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
 mother(A, Alter), father(B, A), father(Ego, B), female(Alter).
;; 180
%kasi_kasi:2, kasi_kasi[aux]48:0, parents:1, parents:0, parents:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
 father(A, Alter), mother(B, A), mother(Ego, B), female(Alter).
;; 181
%kasi_kasi:2, kasi_kasi[aux]48:0, parents:1, parents:0, parents:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
 father(A, Alter), mother(B, A), father(Ego, B), female(Alter).
;; 182
%kasi_kasi:2, kasi_kasi[aux]48:0, parents:1, parents:1, parents:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
 father(A, Alter), father(B, A), mother(Ego, B), female(Alter).
;; 183
%kasi_kasi:2, kasi_kasi[aux]48:0, parents:1, parents:1, parents:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
 father(A, Alter), father(B, A), father(Ego, B), female(Alter).
;; 184
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), female(Alter).
;; 185
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), female(Alter).
;; 186
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), female(Alter).
;; 187
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), female(Alter).
;; 188
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), female(Alter).
;; 189
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), female(Alter).
;; 190
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), female(Alter).
;; 191
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), female(Alter).
;; 192
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), female(Alter).
;; 193
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), female(Alter).
;; 194
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), female(Alter).
;; 195
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), female(Alter).
;; 196
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), female(Alter).
;; 197
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), female(Alter).
;; 198
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), female(Alter).
;; 199
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), female(Alter).
;; 200
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), female(Alter).
;; 201
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), female(Alter).
;; 202
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), female(Alter).
;; 203
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), female(Alter).
;; 204
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), female(Alter).
;; 205
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), female(Alter).
;; 206
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), female(Alter).
;; 207
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), female(Alter).
;; 208
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), female(Alter).
;; 209
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), female(Alter).
;; 210
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), female(Alter).
;; 211
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), female(Alter).
;; 212
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), female(Alter).
;; 213
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), female(Alter).
;; 214
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), female(Alter).
;; 215
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), female(Alter).
;; 216
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), female(Alter).
;; 217
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), female(Alter).
;; 218
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), female(Alter).
;; 219
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), female(Alter).
;; 220
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), female(Alter).
;; 221
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), female(Alter).
;; 222
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), female(Alter).
;; 223
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), female(Alter).
;; 224
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), female(Alter).
;; 225
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), female(Alter).
;; 226
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), female(Alter).
;; 227
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), female(Alter).
;; 228
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), female(Alter).
;; 229
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), female(Alter).
;; 230
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), female(Alter).
;; 231
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), female(Alter).
;; 232
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), female(Alter).
;; 233
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), female(Alter).
;; 234
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), female(Alter).
;; 235
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), female(Alter).
;; 236
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), female(Alter).
;; 237
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), female(Alter).
;; 238
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), female(Alter).
;; 239
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), female(Alter).
;; 240
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), female(Alter).
;; 241
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), female(Alter).
;; 242
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), female(Alter).
;; 243
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), female(Alter).
;; 244
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), female(Alter).
;; 245
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), female(Alter).
;; 246
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), female(Alter).
;; 247
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), female(Alter).
;; 248
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), female(Alter).
;; 249
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), female(Alter).
;; 250
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), female(Alter).
;; 251
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), female(Alter).
;; 252
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), female(Alter).
;; 253
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), female(Alter).
;; 254
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), female(Alter).
;; 255
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), female(Alter).
;; 256
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), female(Alter).
;; 257
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), female(Alter).
;; 258
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), female(Alter).
;; 259
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), female(Alter).
;; 260
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Ego, G), female(Alter).
;; 261
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Ego, G), female(Alter).
;; 262
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G), female(Alter).
;; 263
%kasi_kasi:2, kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Ego, G), female(Alter).


kasi_kasi[aux]48(Alter, Ego) :-  parents(A, Ego), parents(B, A), parents(Alter, B).
                             |  [ext],  parents(A, Ego), parents(B, A), parents(C, B), generation[aux]48smallGS(Alter, C).
;; 0
%kasi_kasi[aux]48:0, parents:0, parents:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(Alter, B).
;; 1
%kasi_kasi[aux]48:0, parents:0, parents:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(Alter, B).
;; 2
%kasi_kasi[aux]48:0, parents:0, parents:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(Alter, B).
;; 3
%kasi_kasi[aux]48:0, parents:0, parents:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(Alter, B).
;; 4
%kasi_kasi[aux]48:0, parents:1, parents:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(Alter, B).
;; 5
%kasi_kasi[aux]48:0, parents:1, parents:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(Alter, B).
;; 6
%kasi_kasi[aux]48:0, parents:1, parents:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(Alter, B).
;; 7
%kasi_kasi[aux]48:0, parents:1, parents:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(Alter, B).
;; 8
%kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 9
%kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 10
%kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 11
%kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 12
%kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 13
%kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 14
%kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 15
%kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 16
%kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 17
%kasi_kasi[aux]48:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 18
%kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 19
%kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 20
%kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 21
%kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 22
%kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 23
%kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 24
%kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 25
%kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 26
%kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 27
%kasi_kasi[aux]48:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 28
%kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 29
%kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 30
%kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 31
%kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 32
%kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 33
%kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 34
%kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 35
%kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 36
%kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 37
%kasi_kasi[aux]48:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 38
%kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 39
%kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 40
%kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 41
%kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 42
%kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 43
%kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 44
%kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 45
%kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 46
%kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 47
%kasi_kasi[aux]48:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 48
%kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 49
%kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 50
%kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 51
%kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 52
%kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 53
%kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 54
%kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 55
%kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 56
%kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 57
%kasi_kasi[aux]48:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 58
%kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 59
%kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 60
%kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 61
%kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 62
%kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 63
%kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 64
%kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 65
%kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 66
%kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 67
%kasi_kasi[aux]48:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 68
%kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 69
%kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 70
%kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 71
%kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 72
%kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 73
%kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 74
%kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 75
%kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 76
%kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 77
%kasi_kasi[aux]48:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 78
%kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 79
%kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 80
%kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 81
%kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 82
%kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 83
%kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 84
%kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 85
%kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 86
%kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 87
%kasi_kasi[aux]48:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).


kemeng(Alter, Ego) :-  grandparent[aux]48(Alter, Ego), female(Alter).
                   |  [ext],  wife(A, Ego), grandparent[aux]48(Alter, A), female(Alter).
                   |  [ext],  husband(A, Ego), grandparent[aux]48(Alter, A), female(Alter).
{"FaFaBroWi_FaFaFaBroDa_FaFaFaSisDa_FaFaMoBroDa_FaFaMoSisDa_FaFaSis_FaMo_FaMoBroWi_FaMoFaBroDa_FaMoFaSisDa_FaMoMoBroDa_FaMoMoSisDa_FaMoSis_HuFaFaBroWi_HuFaFaFaBroDa_HuFaFaFaSisDa_HuFaFaMoBroDa_HuFaFaMoSisDa_HuFaFaSis_HuFaMo_HuFaMoBroWi_HuFaMoFaBroDa_HuFaMoFaSisDa_HuFaMoMoBroDa_HuFaMoMoSisDa_HuFaMoSis_HuMoFaBroWi_HuMoFaFaBroDa_HuMoFaFaSisDa_HuMoFaMoBroDa_HuMoFaMoSisDa_HuMoFaSis_HuMoMo_HuMoMoBroWi_HuMoMoFaBroDa_HuMoMoFaSisDa_HuMoMoMoBroDa_HuMoMoMoSisDa_HuMoMoSis_MoFaBroWi_MoFaFaBroDa_MoFaFaSisDa_MoFaMoBroDa_MoFaMoSisDa_MoFaSis_MoMo_MoMoBroWi_MoMoFaBroDa_MoMoFaSisDa_MoMoMoBroDa_MoMoMoSisDa_MoMoSis_WiFaFaBroWi_WiFaFaFaBroDa_WiFaFaFaSisDa_WiFaFaMoBroDa_WiFaFaMoSisDa_WiFaFaSis_WiFaMo_WiFaMoBroWi_WiFaMoFaBroDa_WiFaMoFaSisDa_WiFaMoMoBroDa_WiFaMoMoSisDa_WiFaMoSis_WiMoFaBroWi_WiMoFaFaBroDa_WiMoFaFaSisDa_WiMoFaMoBroDa_WiMoFaMoSisDa_WiMoFaSis_WiMoMo_WiMoMoBroWi_WiMoMoFaBroDa_WiMoMoFaSisDa_WiMoMoMoBroDa_WiMoMoMoSisDa_WiMoMoSis"}
;; 0
%kemeng:0, grandparent[aux]48:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), parent(Alter, A), female(Alter).
;; 1
%kemeng:0, grandparent[aux]48:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), parent(Alter, A), female(Alter).
;; 2
%kemeng:0, grandparent[aux]48:1, parents:0, parents:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 3
%kemeng:0, grandparent[aux]48:1, parents:0, parents:1, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 4
%kemeng:0, grandparent[aux]48:1, parents:1, parents:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 5
%kemeng:0, grandparent[aux]48:1, parents:1, parents:1, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 6
%kemeng:0, grandparent[aux]48:2, parents:0, parents:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoMoBroWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Alter, E), female(Alter).
;; 7
%kemeng:0, grandparent[aux]48:2, parents:0, parents:1, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoFaBroWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Alter, E), female(Alter).
;; 8
%kemeng:0, grandparent[aux]48:2, parents:1, parents:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {FaMoBroWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Alter, E), female(Alter).
;; 9
%kemeng:0, grandparent[aux]48:2, parents:1, parents:1, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {FaFaBroWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Alter, E), female(Alter).
;; 10
%kemeng:0, grandparent[aux]48:3, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 11
%kemeng:0, grandparent[aux]48:3, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 12
%kemeng:0, grandparent[aux]48:3, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 13
%kemeng:0, grandparent[aux]48:3, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 14
%kemeng:0, grandparent[aux]48:3, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 15
%kemeng:0, grandparent[aux]48:3, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 16
%kemeng:0, grandparent[aux]48:3, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 17
%kemeng:0, grandparent[aux]48:3, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 18
%kemeng:0, grandparent[aux]48:3, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 19
%kemeng:0, grandparent[aux]48:3, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 20
%kemeng:0, grandparent[aux]48:3, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 21
%kemeng:0, grandparent[aux]48:3, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 22
%kemeng:0, grandparent[aux]48:3, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 23
%kemeng:0, grandparent[aux]48:3, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 24
%kemeng:0, grandparent[aux]48:3, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 25
%kemeng:0, grandparent[aux]48:3, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 26
%kemeng:1, grandparent[aux]48:0, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoMo}  
[ext],  wife(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 27
%kemeng:1, grandparent[aux]48:0, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaMo}  
[ext],  wife(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 28
%kemeng:1, grandparent[aux]48:1, parents:0, parents:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoMoSis}  
[ext], [ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 29
%kemeng:1, grandparent[aux]48:1, parents:0, parents:1, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoFaSis}  
[ext], [ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 30
%kemeng:1, grandparent[aux]48:1, parents:1, parents:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaMoSis}  
[ext], [ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 31
%kemeng:1, grandparent[aux]48:1, parents:1, parents:1, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaFaSis}  
[ext], [ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 32
%kemeng:1, grandparent[aux]48:2, parents:0, parents:0, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {WiMoMoBroWi}  
[ext], [ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), spouse(Alter, F), female(Alter).
;; 33
%kemeng:1, grandparent[aux]48:2, parents:0, parents:1, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {WiMoFaBroWi}  
[ext], [ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), spouse(Alter, F), female(Alter).
;; 34
%kemeng:1, grandparent[aux]48:2, parents:1, parents:0, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {WiFaMoBroWi}  
[ext], [ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), spouse(Alter, F), female(Alter).
;; 35
%kemeng:1, grandparent[aux]48:2, parents:1, parents:1, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {WiFaFaBroWi}  
[ext], [ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), spouse(Alter, F), female(Alter).
;; 36
%kemeng:1, grandparent[aux]48:3, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoMoMoBroDa}  
[ext], [ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 37
%kemeng:1, grandparent[aux]48:3, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoMoMoSisDa}  
[ext], [ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 38
%kemeng:1, grandparent[aux]48:3, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoMoFaBroDa}  
[ext], [ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 39
%kemeng:1, grandparent[aux]48:3, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoMoFaSisDa}  
[ext], [ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 40
%kemeng:1, grandparent[aux]48:3, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoFaMoBroDa}  
[ext], [ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 41
%kemeng:1, grandparent[aux]48:3, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoFaMoSisDa}  
[ext], [ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 42
%kemeng:1, grandparent[aux]48:3, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoFaFaBroDa}  
[ext], [ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 43
%kemeng:1, grandparent[aux]48:3, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoFaFaSisDa}  
[ext], [ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 44
%kemeng:1, grandparent[aux]48:3, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaMoMoBroDa}  
[ext], [ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 45
%kemeng:1, grandparent[aux]48:3, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaMoMoSisDa}  
[ext], [ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 46
%kemeng:1, grandparent[aux]48:3, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaMoFaBroDa}  
[ext], [ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 47
%kemeng:1, grandparent[aux]48:3, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaMoFaSisDa}  
[ext], [ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 48
%kemeng:1, grandparent[aux]48:3, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaFaMoBroDa}  
[ext], [ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 49
%kemeng:1, grandparent[aux]48:3, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaFaMoSisDa}  
[ext], [ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 50
%kemeng:1, grandparent[aux]48:3, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaFaFaBroDa}  
[ext], [ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 51
%kemeng:1, grandparent[aux]48:3, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaFaFaSisDa}  
[ext], [ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 52
%kemeng:2, grandparent[aux]48:0, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoMo}  
[ext],  husband(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 53
%kemeng:2, grandparent[aux]48:0, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaMo}  
[ext],  husband(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 54
%kemeng:2, grandparent[aux]48:1, parents:0, parents:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoMoSis}  
[ext], [ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 55
%kemeng:2, grandparent[aux]48:1, parents:0, parents:1, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoFaSis}  
[ext], [ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 56
%kemeng:2, grandparent[aux]48:1, parents:1, parents:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaMoSis}  
[ext], [ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 57
%kemeng:2, grandparent[aux]48:1, parents:1, parents:1, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaFaSis}  
[ext], [ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 58
%kemeng:2, grandparent[aux]48:2, parents:0, parents:0, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {HuMoMoBroWi}  
[ext], [ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), spouse(Alter, F), female(Alter).
;; 59
%kemeng:2, grandparent[aux]48:2, parents:0, parents:1, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {HuMoFaBroWi}  
[ext], [ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), spouse(Alter, F), female(Alter).
;; 60
%kemeng:2, grandparent[aux]48:2, parents:1, parents:0, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {HuFaMoBroWi}  
[ext], [ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), spouse(Alter, F), female(Alter).
;; 61
%kemeng:2, grandparent[aux]48:2, parents:1, parents:1, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {HuFaFaBroWi}  
[ext], [ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), spouse(Alter, F), female(Alter).
;; 62
%kemeng:2, grandparent[aux]48:3, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoMoMoBroDa}  
[ext], [ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 63
%kemeng:2, grandparent[aux]48:3, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoMoMoSisDa}  
[ext], [ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 64
%kemeng:2, grandparent[aux]48:3, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoMoFaBroDa}  
[ext], [ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 65
%kemeng:2, grandparent[aux]48:3, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoMoFaSisDa}  
[ext], [ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 66
%kemeng:2, grandparent[aux]48:3, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoFaMoBroDa}  
[ext], [ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 67
%kemeng:2, grandparent[aux]48:3, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoFaMoSisDa}  
[ext], [ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 68
%kemeng:2, grandparent[aux]48:3, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoFaFaBroDa}  
[ext], [ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 69
%kemeng:2, grandparent[aux]48:3, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoFaFaSisDa}  
[ext], [ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 70
%kemeng:2, grandparent[aux]48:3, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaMoMoBroDa}  
[ext], [ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 71
%kemeng:2, grandparent[aux]48:3, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaMoMoSisDa}  
[ext], [ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 72
%kemeng:2, grandparent[aux]48:3, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaMoFaBroDa}  
[ext], [ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 73
%kemeng:2, grandparent[aux]48:3, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaMoFaSisDa}  
[ext], [ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 74
%kemeng:2, grandparent[aux]48:3, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaFaMoBroDa}  
[ext], [ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 75
%kemeng:2, grandparent[aux]48:3, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaFaMoSisDa}  
[ext], [ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 76
%kemeng:2, grandparent[aux]48:3, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaFaFaBroDa}  
[ext], [ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 77
%kemeng:2, grandparent[aux]48:3, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaFaFaSisDa}  
[ext], [ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).


memai(Alter, Ego) :-  father(Alter, Ego).
                  |  [ext],  father(A, Ego), generation[aux]48(Alter, A), male(Alter).
                  |  [ext],  mother(A, Ego), generation[aux]48(B, A), husband(Alter, B).
                  |  [ext],  husband(A, Ego), father(Alter, A).
{"Fa_FaBro_FaFaBroSo_FaFaFaBroDaSo_FaFaFaBroSoSo_FaFaFaSisDaSo_FaFaFaSisSoSo_FaFaMoBroDaSo_FaFaMoBroSoSo_FaFaMoSisDaSo_FaFaMoSisSoSo_FaFaSisSo_FaMoBroSo_FaMoFaBroDaSo_FaMoFaBroSoSo_FaMoFaSisDaSo_FaMoFaSisSoSo_FaMoMoBroDaSo_FaMoMoBroSoSo_FaMoMoSisDaSo_FaMoMoSisSoSo_FaMoSisSo_HuFa_MoFaBroDaHu_MoFaFaBroDaDaHu_MoFaFaBroSoDaHu_MoFaFaSisDaDaHu_MoFaFaSisSoDaHu_MoFaMoBroDaDaHu_MoFaMoBroSoDaHu_MoFaMoSisDaDaHu_MoFaMoSisSoDaHu_MoFaSisDaHu_MoMoBroDaHu_MoMoFaBroDaDaHu_MoMoFaBroSoDaHu_MoMoFaSisDaDaHu_MoMoFaSisSoDaHu_MoMoMoBroDaDaHu_MoMoMoBroSoDaHu_MoMoMoSisDaDaHu_MoMoMoSisSoDaHu_MoMoSisDaHu_MoSisHu"}
;; 0
%memai:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).
;; 1
%memai:1, generation[aux]48:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%memai:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 3
%memai:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 4
%memai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 5
%memai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 6
%memai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 7
%memai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 8
%memai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 9
%memai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 10
%memai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 11
%memai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 12
%memai:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 13
%memai:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 14
%memai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 15
%memai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 16
%memai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 17
%memai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 18
%memai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 19
%memai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 20
%memai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 21
%memai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 22
%memai:2, generation[aux]48:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), husband(Alter, D).
;; 23
%memai:2, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoBroDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), husband(Alter, F).
;; 24
%memai:2, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoSisDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), husband(Alter, F).
;; 25
%memai:2, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoBroSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), husband(Alter, H).
;; 26
%memai:2, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoBroDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), husband(Alter, H).
;; 27
%memai:2, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoSisSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), husband(Alter, H).
;; 28
%memai:2, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoSisDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), husband(Alter, H).
;; 29
%memai:2, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoFaBroSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), husband(Alter, H).
;; 30
%memai:2, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoFaBroDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), husband(Alter, H).
;; 31
%memai:2, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoFaSisSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), husband(Alter, H).
;; 32
%memai:2, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoFaSisDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), husband(Alter, H).
;; 33
%memai:2, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaBroDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), husband(Alter, F).
;; 34
%memai:2, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaSisDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), husband(Alter, F).
;; 35
%memai:2, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoBroSoDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), husband(Alter, H).
;; 36
%memai:2, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoBroDaDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), husband(Alter, H).
;; 37
%memai:2, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoSisSoDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), husband(Alter, H).
;; 38
%memai:2, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoSisDaDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), husband(Alter, H).
;; 39
%memai:2, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaFaBroSoDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), husband(Alter, H).
;; 40
%memai:2, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaFaBroDaDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), husband(Alter, H).
;; 41
%memai:2, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaFaSisSoDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), husband(Alter, H).
;; 42
%memai:2, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaFaSisDaDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), husband(Alter, H).
;; 43
%memai:3%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
[ext],  husband(A, Ego), father(Alter, A).


mengke(Alter, Ego) :-  sibling(Alter, Ego), male(Ego), female(Alter).
                   |  [ext],  generation[aux]48(Alter, Ego), male(Ego), female(Alter).
{"FaBroDa_FaFaBroDaDa_FaFaBroSoDa_FaFaSisDaDa_FaFaSisSoDa_FaMoBroDaDa_FaMoBroSoDa_FaMoSisDaDa_FaMoSisSoDa_FaSisDa_MoBroDa_MoFaBroDaDa_MoFaBroSoDa_MoFaSisDaDa_MoFaSisSoDa_MoMoBroDaDa_MoMoBroSoDa_MoMoSisDaDa_MoMoSisSoDa_MoSisDa_Sis"}
;; 0
%mengke:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Ego), female(Alter).
;; 1
%mengke:1, generation[aux]48:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
[ext],  mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Ego), female(Alter).
;; 2
%mengke:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), male(Ego), female(Alter).
;; 3
%mengke:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), male(Ego), female(Alter).
;; 4
%mengke:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Ego), female(Alter).
;; 5
%mengke:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Ego), female(Alter).
;; 6
%mengke:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Ego), female(Alter).
;; 7
%mengke:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Ego), female(Alter).
;; 8
%mengke:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Ego), female(Alter).
;; 9
%mengke:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Ego), female(Alter).
;; 10
%mengke:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Ego), female(Alter).
;; 11
%mengke:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Ego), female(Alter).
;; 12
%mengke:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), male(Ego), female(Alter).
;; 13
%mengke:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), male(Ego), female(Alter).
;; 14
%mengke:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Ego), female(Alter).
;; 15
%mengke:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Ego), female(Alter).
;; 16
%mengke:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Ego), female(Alter).
;; 17
%mengke:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Ego), female(Alter).
;; 18
%mengke:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Ego), female(Alter).
;; 19
%mengke:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Ego), female(Alter).
;; 20
%mengke:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Ego), female(Alter).
;; 21
%mengke:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Ego), female(Alter).


metona(Alter, Ego) :-  siblings(Alter, Ego), younger(Alter, Ego).
                   |  [ext],  parents(A, Ego), metona[aux]48(B, A), children(Alter, B), gender(C, A), gender(C, B).
                   |  [ext],  metona[aux]48(A, Ego), spice(Alter, A), gender(B, A), gender(B, Ego).
{"Bro_BroWi_FaBroDa_FaBroDaHu_FaBroSo_FaBroSoWi_FaFaBroDaDaHu_FaFaBroDaSoWi_FaFaBroSoDa_FaFaBroSoDaHu_FaFaBroSoSo_FaFaBroSoSoWi_FaFaFaBroDaDaDaHu_FaFaFaBroDaDaSoWi_FaFaFaBroDaSoDa_FaFaFaBroDaSoDaHu_FaFaFaBroDaSoSo_FaFaFaBroDaSoSoWi_FaFaFaBroSoDaDaHu_FaFaFaBroSoDaSoWi_FaFaFaBroSoSoDa_FaFaFaBroSoSoDaHu_FaFaFaBroSoSoSo_FaFaFaBroSoSoSoWi_FaFaFaSisDaDaDaHu_FaFaFaSisDaDaSoWi_FaFaFaSisDaSoDa_FaFaFaSisDaSoDaHu_FaFaFaSisDaSoSo_FaFaFaSisDaSoSoWi_FaFaFaSisSoDaDaHu_FaFaFaSisSoDaSoWi_FaFaFaSisSoSoDa_FaFaFaSisSoSoDaHu_FaFaFaSisSoSoSo_FaFaFaSisSoSoSoWi_FaFaMoBroDaDaDaHu_FaFaMoBroDaDaSoWi_FaFaMoBroDaSoDa_FaFaMoBroDaSoDaHu_FaFaMoBroDaSoSo_FaFaMoBroDaSoSoWi_FaFaMoBroSoDaDaHu_FaFaMoBroSoDaSoWi_FaFaMoBroSoSoDa_FaFaMoBroSoSoDaHu_FaFaMoBroSoSoSo_FaFaMoBroSoSoSoWi_FaFaMoSisDaDaDaHu_FaFaMoSisDaDaSoWi_FaFaMoSisDaSoDa_FaFaMoSisDaSoDaHu_FaFaMoSisDaSoSo_FaFaMoSisDaSoSoWi_FaFaMoSisSoDaDaHu_FaFaMoSisSoDaSoWi_FaFaMoSisSoSoDa_FaFaMoSisSoSoDaHu_FaFaMoSisSoSoSo_FaFaMoSisSoSoSoWi_FaFaSisDaDaHu_FaFaSisDaSoWi_FaFaSisSoDa_FaFaSisSoDaHu_FaFaSisSoSo_FaFaSisSoSoWi_FaMoBroDaDaHu_FaMoBroDaSoWi_FaMoBroSoDa_FaMoBroSoDaHu_FaMoBroSoSo_FaMoBroSoSoWi_FaMoFaBroDaDaDaHu_FaMoFaBroDaDaSoWi_FaMoFaBroDaSoDa_FaMoFaBroDaSoDaHu_FaMoFaBroDaSoSo_FaMoFaBroDaSoSoWi_FaMoFaBroSoDaDaHu_FaMoFaBroSoDaSoWi_FaMoFaBroSoSoDa_FaMoFaBroSoSoDaHu_FaMoFaBroSoSoSo_FaMoFaBroSoSoSoWi_FaMoFaSisDaDaDaHu_FaMoFaSisDaDaSoWi_FaMoFaSisDaSoDa_FaMoFaSisDaSoDaHu_FaMoFaSisDaSoSo_FaMoFaSisDaSoSoWi_FaMoFaSisSoDaDaHu_FaMoFaSisSoDaSoWi_FaMoFaSisSoSoDa_FaMoFaSisSoSoDaHu_FaMoFaSisSoSoSo_FaMoFaSisSoSoSoWi_FaMoMoBroDaDaDaHu_FaMoMoBroDaDaSoWi_FaMoMoBroDaSoDa_FaMoMoBroDaSoDaHu_FaMoMoBroDaSoSo_FaMoMoBroDaSoSoWi_FaMoMoBroSoDaDaHu_FaMoMoBroSoDaSoWi_FaMoMoBroSoSoDa_FaMoMoBroSoSoDaHu_FaMoMoBroSoSoSo_FaMoMoBroSoSoSoWi_FaMoMoSisDaDaDaHu_FaMoMoSisDaDaSoWi_FaMoMoSisDaSoDa_FaMoMoSisDaSoDaHu_FaMoMoSisDaSoSo_FaMoMoSisDaSoSoWi_FaMoMoSisSoDaDaHu_FaMoMoSisSoDaSoWi_FaMoMoSisSoSoDa_FaMoMoSisSoSoDaHu_FaMoMoSisSoSoSo_FaMoMoSisSoSoSoWi_FaMoSisDaDaHu_FaMoSisDaSoWi_FaMoSisSoDa_FaMoSisSoDaHu_FaMoSisSoSo_FaMoSisSoSoWi_FaSisDaHu_FaSisSoWi_MoBroDaHu_MoBroSoWi_MoFaBroDaDa_MoFaBroDaDaHu_MoFaBroDaSo_MoFaBroDaSoWi_MoFaBroSoDaHu_MoFaBroSoSoWi_MoFaFaBroDaDaDa_MoFaFaBroDaDaDaHu_MoFaFaBroDaDaSo_MoFaFaBroDaDaSoWi_MoFaFaBroDaSoDaHu_MoFaFaBroDaSoSoWi_MoFaFaBroSoDaDa_MoFaFaBroSoDaDaHu_MoFaFaBroSoDaSo_MoFaFaBroSoDaSoWi_MoFaFaBroSoSoDaHu_MoFaFaBroSoSoSoWi_MoFaFaSisDaDaDa_MoFaFaSisDaDaDaHu_MoFaFaSisDaDaSo_MoFaFaSisDaDaSoWi_MoFaFaSisDaSoDaHu_MoFaFaSisDaSoSoWi_MoFaFaSisSoDaDa_MoFaFaSisSoDaDaHu_MoFaFaSisSoDaSo_MoFaFaSisSoDaSoWi_MoFaFaSisSoSoDaHu_MoFaFaSisSoSoSoWi_MoFaMoBroDaDaDa_MoFaMoBroDaDaDaHu_MoFaMoBroDaDaSo_MoFaMoBroDaDaSoWi_MoFaMoBroDaSoDaHu_MoFaMoBroDaSoSoWi_MoFaMoBroSoDaDa_MoFaMoBroSoDaDaHu_MoFaMoBroSoDaSo_MoFaMoBroSoDaSoWi_MoFaMoBroSoSoDaHu_MoFaMoBroSoSoSoWi_MoFaMoSisDaDaDa_MoFaMoSisDaDaDaHu_MoFaMoSisDaDaSo_MoFaMoSisDaDaSoWi_MoFaMoSisDaSoDaHu_MoFaMoSisDaSoSoWi_MoFaMoSisSoDaDa_MoFaMoSisSoDaDaHu_MoFaMoSisSoDaSo_MoFaMoSisSoDaSoWi_MoFaMoSisSoSoDaHu_MoFaMoSisSoSoSoWi_MoFaSisDaDa_MoFaSisDaDaHu_MoFaSisDaSo_MoFaSisDaSoWi_MoFaSisSoDaHu_MoFaSisSoSoWi_MoMoBroDaDa_MoMoBroDaDaHu_MoMoBroDaSo_MoMoBroDaSoWi_MoMoBroSoDaHu_MoMoBroSoSoWi_MoMoFaBroDaDaDa_MoMoFaBroDaDaDaHu_MoMoFaBroDaDaSo_MoMoFaBroDaDaSoWi_MoMoFaBroDaSoDaHu_MoMoFaBroDaSoSoWi_MoMoFaBroSoDaDa_MoMoFaBroSoDaDaHu_MoMoFaBroSoDaSo_MoMoFaBroSoDaSoWi_MoMoFaBroSoSoDaHu_MoMoFaBroSoSoSoWi_MoMoFaSisDaDaDa_MoMoFaSisDaDaDaHu_MoMoFaSisDaDaSo_MoMoFaSisDaDaSoWi_MoMoFaSisDaSoDaHu_MoMoFaSisDaSoSoWi_MoMoFaSisSoDaDa_MoMoFaSisSoDaDaHu_MoMoFaSisSoDaSo_MoMoFaSisSoDaSoWi_MoMoFaSisSoSoDaHu_MoMoFaSisSoSoSoWi_MoMoMoBroDaDaDa_MoMoMoBroDaDaDaHu_MoMoMoBroDaDaSo_MoMoMoBroDaDaSoWi_MoMoMoBroDaSoDaHu_MoMoMoBroDaSoSoWi_MoMoMoBroSoDaDa_MoMoMoBroSoDaDaHu_MoMoMoBroSoDaSo_MoMoMoBroSoDaSoWi_MoMoMoBroSoSoDaHu_MoMoMoBroSoSoSoWi_MoMoMoSisDaDaDa_MoMoMoSisDaDaDaHu_MoMoMoSisDaDaSo_MoMoMoSisDaDaSoWi_MoMoMoSisDaSoDaHu_MoMoMoSisDaSoSoWi_MoMoMoSisSoDaDa_MoMoMoSisSoDaDaHu_MoMoMoSisSoDaSo_MoMoMoSisSoDaSoWi_MoMoMoSisSoSoDaHu_MoMoMoSisSoSoSoWi_MoMoSisDaDa_MoMoSisDaDaHu_MoMoSisDaSo_MoMoSisDaSoWi_MoMoSisSoDaHu_MoMoSisSoSoWi_MoSisDa_MoSisDaHu_MoSisSo_MoSisSoWi_Sis_SisHu"}
;; 0
%metona:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).
;; 1
%metona:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).
;; 2
%metona:1, parents:0, metona[aux]48:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), son(Alter, D), gender(E, A), gender(E, D).
;; 3
%metona:1, parents:0, metona[aux]48:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), daughter(Alter, D), gender(E, A), gender(E, D).
;; 4
%metona:1, parents:0, metona[aux]48:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), child(F, E), son(Alter, F), gender(G, A), gender(G, F).
;; 5
%metona:1, parents:0, metona[aux]48:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F).
;; 6
%metona:1, parents:0, metona[aux]48:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), child(F, E), son(Alter, F), gender(G, A), gender(G, F).
;; 7
%metona:1, parents:0, metona[aux]48:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F).
;; 8
%metona:1, parents:0, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 9
%metona:1, parents:0, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 10
%metona:1, parents:0, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 11
%metona:1, parents:0, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 12
%metona:1, parents:0, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 13
%metona:1, parents:0, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 14
%metona:1, parents:0, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 15
%metona:1, parents:0, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 16
%metona:1, parents:0, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 17
%metona:1, parents:0, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 18
%metona:1, parents:0, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 19
%metona:1, parents:0, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 20
%metona:1, parents:0, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 21
%metona:1, parents:0, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 22
%metona:1, parents:0, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 23
%metona:1, parents:0, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 24
%metona:1, parents:0, metona[aux]48:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), child(F, E), son(Alter, F), gender(G, A), gender(G, F).
;; 25
%metona:1, parents:0, metona[aux]48:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F).
;; 26
%metona:1, parents:0, metona[aux]48:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), child(F, E), son(Alter, F), gender(G, A), gender(G, F).
;; 27
%metona:1, parents:0, metona[aux]48:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F).
;; 28
%metona:1, parents:0, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 29
%metona:1, parents:0, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 30
%metona:1, parents:0, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 31
%metona:1, parents:0, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 32
%metona:1, parents:0, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 33
%metona:1, parents:0, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 34
%metona:1, parents:0, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 35
%metona:1, parents:0, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 36
%metona:1, parents:0, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 37
%metona:1, parents:0, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 38
%metona:1, parents:0, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaDaSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 39
%metona:1, parents:0, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 40
%metona:1, parents:0, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoDaSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 41
%metona:1, parents:0, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 42
%metona:1, parents:0, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaDaSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 43
%metona:1, parents:0, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 44
%metona:1, parents:1, metona[aux]48:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), son(Alter, D), gender(E, A), gender(E, D).
;; 45
%metona:1, parents:1, metona[aux]48:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), daughter(Alter, D), gender(E, A), gender(E, D).
;; 46
%metona:1, parents:1, metona[aux]48:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), child(F, E), son(Alter, F), gender(G, A), gender(G, F).
;; 47
%metona:1, parents:1, metona[aux]48:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F).
;; 48
%metona:1, parents:1, metona[aux]48:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), child(F, E), son(Alter, F), gender(G, A), gender(G, F).
;; 49
%metona:1, parents:1, metona[aux]48:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F).
;; 50
%metona:1, parents:1, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 51
%metona:1, parents:1, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 52
%metona:1, parents:1, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 53
%metona:1, parents:1, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 54
%metona:1, parents:1, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 55
%metona:1, parents:1, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 56
%metona:1, parents:1, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 57
%metona:1, parents:1, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 58
%metona:1, parents:1, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 59
%metona:1, parents:1, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 60
%metona:1, parents:1, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 61
%metona:1, parents:1, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 62
%metona:1, parents:1, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 63
%metona:1, parents:1, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 64
%metona:1, parents:1, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 65
%metona:1, parents:1, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 66
%metona:1, parents:1, metona[aux]48:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), child(F, E), son(Alter, F), gender(G, A), gender(G, F).
;; 67
%metona:1, parents:1, metona[aux]48:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F).
;; 68
%metona:1, parents:1, metona[aux]48:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), child(F, E), son(Alter, F), gender(G, A), gender(G, F).
;; 69
%metona:1, parents:1, metona[aux]48:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F).
;; 70
%metona:1, parents:1, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 71
%metona:1, parents:1, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 72
%metona:1, parents:1, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 73
%metona:1, parents:1, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 74
%metona:1, parents:1, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 75
%metona:1, parents:1, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 76
%metona:1, parents:1, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 77
%metona:1, parents:1, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 78
%metona:1, parents:1, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 79
%metona:1, parents:1, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 80
%metona:1, parents:1, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 81
%metona:1, parents:1, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 82
%metona:1, parents:1, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 83
%metona:1, parents:1, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 84
%metona:1, parents:1, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), child(H, G), son(Alter, H), gender(I, A), gender(I, H).
;; 85
%metona:1, parents:1, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), child(H, G), daughter(Alter, H), gender(I, A), gender(I, H).
;; 86
%metona:2, metona[aux]48:0, sibling:0, spice:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), elder(C, Ego), husband(Alter, C), gender(D, C), gender(D, Ego).
;; 87
%metona:2, metona[aux]48:0, sibling:0, spice:1%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), elder(C, Ego), wife(Alter, C), gender(D, C), gender(D, Ego).
;; 88
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, spice:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), child(E, D), husband(Alter, E), gender(F, E), gender(F, Ego).
;; 89
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, spice:1%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), child(E, D), wife(Alter, E), gender(F, E), gender(F, Ego).
;; 90
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, spice:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), child(E, D), husband(Alter, E), gender(F, E), gender(F, Ego).
;; 91
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, spice:1%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), child(E, D), wife(Alter, E), gender(F, E), gender(F, Ego).
;; 92
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 93
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 94
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 95
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 96
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 97
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 98
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 99
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 100
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoBroSoSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 101
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoBroSoSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 102
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoBroSoDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 103
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoBroSoDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 104
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoBroDaSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 105
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoBroDaSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 106
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoBroDaDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 107
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoBroDaDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 108
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoSisSoSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 109
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoSisSoSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 110
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoSisSoDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 111
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoSisSoDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 112
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoSisDaSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 113
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoSisDaSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 114
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoSisDaDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 115
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoSisDaDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 116
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaBroSoSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 117
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaBroSoSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 118
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaBroSoDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 119
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaBroSoDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 120
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaBroDaSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 121
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaBroDaSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 122
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaBroDaDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 123
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaBroDaDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 124
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaSisSoSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 125
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaSisSoSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 126
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaSisSoDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 127
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaSisSoDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 128
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaSisDaSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 129
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaSisDaSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 130
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaSisDaDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 131
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaSisDaDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 132
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 133
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 134
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 135
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 136
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 137
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 138
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 139
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 140
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoBroSoSoDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 141
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoBroSoSoSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 142
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoBroSoDaDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 143
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoBroSoDaSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 144
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoBroDaSoDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 145
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoBroDaSoSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 146
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoBroDaDaDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 147
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoBroDaDaSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 148
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoSisSoSoDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 149
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoSisSoSoSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 150
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoSisSoDaDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 151
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoSisSoDaSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 152
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoSisDaSoDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 153
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoSisDaSoSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 154
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoSisDaDaDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 155
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoSisDaDaSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 156
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaBroSoSoDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 157
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaBroSoSoSoWi}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 158
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaBroSoDaDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 159
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaBroSoDaSoWi}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 160
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaBroDaSoDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 161
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaBroDaSoSoWi}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 162
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaBroDaDaDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 163
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaBroDaDaSoWi}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 164
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaSisSoSoDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 165
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaSisSoSoSoWi}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 166
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaSisSoDaDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 167
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaSisSoDaSoWi}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 168
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaSisDaSoDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 169
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaSisDaSoSoWi}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 170
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaSisDaDaDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 171
%metona:2, metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaSisDaDaSoWi}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 172
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, spice:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), child(E, D), husband(Alter, E), gender(F, E), gender(F, Ego).
;; 173
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, spice:1%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), child(E, D), wife(Alter, E), gender(F, E), gender(F, Ego).
;; 174
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, spice:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), child(E, D), husband(Alter, E), gender(F, E), gender(F, Ego).
;; 175
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, spice:1%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), child(E, D), wife(Alter, E), gender(F, E), gender(F, Ego).
;; 176
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 177
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 178
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 179
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 180
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 181
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 182
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisDaDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 183
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisDaSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 184
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoBroSoSoDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 185
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoBroSoSoSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 186
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoBroSoDaDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 187
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoBroSoDaSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 188
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoBroDaSoDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 189
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoBroDaSoSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 190
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoBroDaDaDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 191
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoBroDaDaSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 192
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoSisSoSoDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 193
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoSisSoSoSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 194
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoSisSoDaDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 195
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoSisSoDaSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 196
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoSisDaSoDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 197
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoSisDaSoSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 198
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoSisDaDaDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 199
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoSisDaDaSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 200
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaBroSoSoDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 201
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaBroSoSoSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 202
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaBroSoDaDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 203
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaBroSoDaSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 204
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaBroDaSoDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 205
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaBroDaSoSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 206
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaBroDaDaDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 207
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaBroDaDaSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 208
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaSisSoSoDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 209
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaSisSoSoSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 210
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaSisSoDaDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 211
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaSisSoDaSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 212
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaSisDaSoDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 213
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaSisDaSoSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 214
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaSisDaDaDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 215
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaSisDaDaSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 216
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 217
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 218
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroDaDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 219
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroDaSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 220
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 221
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 222
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 223
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 224
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoBroSoSoDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 225
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoBroSoSoSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 226
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoBroSoDaDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 227
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoBroSoDaSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 228
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoBroDaSoDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 229
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoBroDaSoSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 230
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoBroDaDaDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 231
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoBroDaDaSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 232
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoSisSoSoDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 233
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoSisSoSoSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 234
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoSisSoDaDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 235
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoSisSoDaSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 236
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoSisDaSoDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 237
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoSisDaSoSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 238
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoSisDaDaDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 239
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoSisDaDaSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 240
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaBroSoSoDaHu}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 241
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaBroSoSoSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 242
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaBroSoDaDaHu}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 243
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaBroSoDaSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 244
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaBroDaSoDaHu}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 245
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaBroDaSoSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 246
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaBroDaDaDaHu}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 247
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaBroDaDaSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 248
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaSisSoSoDaHu}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 249
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaSisSoSoSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 250
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaSisSoDaDaHu}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 251
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaSisSoDaSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 252
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaSisDaSoDaHu}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 253
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaSisDaSoSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), son(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).
;; 254
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, spice:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaSisDaDaDaHu}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), husband(Alter, I), gender(J, I), gender(J, Ego).
;; 255
%metona:2, metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, spice:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaSisDaDaSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), daughter(H, G), child(I, H), wife(Alter, I), gender(J, I), gender(J, Ego).


metona[aux]48(Alter, Ego) :-  sibling(Alter, Ego), elder(Alter, Ego).
                          |   parents(A, Ego), metona[aux]48gs(B, A), child(Alter, B).
;; 0
%metona[aux]48:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 1
%metona[aux]48:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), child(Alter, D).
;; 2
%metona[aux]48:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), child(Alter, D).
;; 3
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), child(Alter, F).
;; 4
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), child(Alter, F).
;; 5
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), child(Alter, F).
;; 6
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), child(Alter, F).
;; 7
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), son(H, G), child(Alter, H).
;; 8
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), daughter(H, G), child(Alter, H).
;; 9
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), son(H, G), child(Alter, H).
;; 10
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), daughter(H, G), child(Alter, H).
;; 11
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), son(H, G), child(Alter, H).
;; 12
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), daughter(H, G), child(Alter, H).
;; 13
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), son(H, G), child(Alter, H).
;; 14
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), daughter(H, G), child(Alter, H).
;; 15
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), son(H, G), child(Alter, H).
;; 16
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), daughter(H, G), child(Alter, H).
;; 17
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), son(H, G), child(Alter, H).
;; 18
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), daughter(H, G), child(Alter, H).
;; 19
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), son(H, G), child(Alter, H).
;; 20
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), daughter(H, G), child(Alter, H).
;; 21
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), son(H, G), child(Alter, H).
;; 22
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), daughter(H, G), child(Alter, H).
;; 23
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), child(Alter, F).
;; 24
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), child(Alter, F).
;; 25
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), child(Alter, F).
;; 26
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), child(Alter, F).
;; 27
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), son(H, G), child(Alter, H).
;; 28
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), daughter(H, G), child(Alter, H).
;; 29
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), son(H, G), child(Alter, H).
;; 30
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), daughter(H, G), child(Alter, H).
;; 31
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), son(H, G), child(Alter, H).
;; 32
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), daughter(H, G), child(Alter, H).
;; 33
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), son(H, G), child(Alter, H).
;; 34
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), daughter(H, G), child(Alter, H).
;; 35
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), son(H, G), child(Alter, H).
;; 36
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), daughter(H, G), child(Alter, H).
;; 37
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), son(H, G), child(Alter, H).
;; 38
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), daughter(H, G), child(Alter, H).
;; 39
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), son(H, G), child(Alter, H).
;; 40
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), daughter(H, G), child(Alter, H).
;; 41
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), son(H, G), child(Alter, H).
;; 42
%metona[aux]48:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), daughter(H, G), child(Alter, H).
;; 43
%metona[aux]48:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), child(Alter, D).
;; 44
%metona[aux]48:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), child(Alter, D).
;; 45
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), child(Alter, F).
;; 46
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), child(Alter, F).
;; 47
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), child(Alter, F).
;; 48
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), child(Alter, F).
;; 49
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), son(H, G), child(Alter, H).
;; 50
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), daughter(H, G), child(Alter, H).
;; 51
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), son(H, G), child(Alter, H).
;; 52
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), daughter(H, G), child(Alter, H).
;; 53
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), son(H, G), child(Alter, H).
;; 54
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), daughter(H, G), child(Alter, H).
;; 55
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), son(H, G), child(Alter, H).
;; 56
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), daughter(H, G), child(Alter, H).
;; 57
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), son(H, G), child(Alter, H).
;; 58
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), daughter(H, G), child(Alter, H).
;; 59
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), son(H, G), child(Alter, H).
;; 60
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), daughter(H, G), child(Alter, H).
;; 61
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), son(H, G), child(Alter, H).
;; 62
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), daughter(H, G), child(Alter, H).
;; 63
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), son(H, G), child(Alter, H).
;; 64
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), daughter(H, G), child(Alter, H).
;; 65
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), child(Alter, F).
;; 66
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), child(Alter, F).
;; 67
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), child(Alter, F).
;; 68
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), child(Alter, F).
;; 69
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), son(H, G), child(Alter, H).
;; 70
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), daughter(H, G), child(Alter, H).
;; 71
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), son(H, G), child(Alter, H).
;; 72
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), daughter(H, G), child(Alter, H).
;; 73
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), son(H, G), child(Alter, H).
;; 74
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), daughter(H, G), child(Alter, H).
;; 75
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), son(H, G), child(Alter, H).
;; 76
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), daughter(H, G), child(Alter, H).
;; 77
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), son(H, G), child(Alter, H).
;; 78
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), son(G, F), daughter(H, G), child(Alter, H).
;; 79
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), son(H, G), child(Alter, H).
;; 80
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), elder(F, C), daughter(G, F), daughter(H, G), child(Alter, H).
;; 81
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), son(H, G), child(Alter, H).
;; 82
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(G, F), daughter(H, G), child(Alter, H).
;; 83
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), son(H, G), child(Alter, H).
;; 84
%metona[aux]48:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(G, F), daughter(H, G), child(Alter, H).


metona[aux]48gs(Alter, Ego) :-  siblings(Alter, Ego), elder(Alter, Ego).
                            |   parents(A, Ego), metona[aux]48gs(B, A), children(Alter, B).
;; 0
%metona[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%metona[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).
;; 2
%metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), son(Alter, D).
;; 3
%metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), daughter(Alter, D).
;; 4
%metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), son(Alter, D).
;; 5
%metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), daughter(Alter, D).
;; 6
%metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), son(Alter, F).
;; 7
%metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), daughter(Alter, F).
;; 8
%metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), son(Alter, F).
;; 9
%metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), daughter(Alter, F).
;; 10
%metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), son(Alter, F).
;; 11
%metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), daughter(Alter, F).
;; 12
%metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), son(Alter, F).
;; 13
%metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), daughter(Alter, F).
;; 14
%metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), son(Alter, F).
;; 15
%metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), daughter(Alter, F).
;; 16
%metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), son(Alter, F).
;; 17
%metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), daughter(Alter, F).
;; 18
%metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), son(Alter, F).
;; 19
%metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), daughter(Alter, F).
;; 20
%metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), son(Alter, F).
;; 21
%metona[aux]48gs:1, parents:0, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), daughter(Alter, F).
;; 22
%metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), son(Alter, D).
;; 23
%metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), daughter(Alter, D).
;; 24
%metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), son(Alter, D).
;; 25
%metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), daughter(Alter, D).
;; 26
%metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), son(Alter, F).
;; 27
%metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), daughter(Alter, F).
;; 28
%metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), son(Alter, F).
;; 29
%metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), daughter(Alter, F).
;; 30
%metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), son(Alter, F).
;; 31
%metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), daughter(Alter, F).
;; 32
%metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), son(Alter, F).
;; 33
%metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:0, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), daughter(Alter, F).
;; 34
%metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), son(Alter, F).
;; 35
%metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), son(F, E), daughter(Alter, F).
;; 36
%metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), son(Alter, F).
;; 37
%metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), daughter(F, E), daughter(Alter, F).
;; 38
%metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), son(Alter, F).
;; 39
%metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(F, E), daughter(Alter, F).
;; 40
%metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), son(Alter, F).
;; 41
%metona[aux]48gs:1, parents:1, metona[aux]48gs:1, parents:1, metona[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(F, E), daughter(Alter, F).


mire(Alter, Ego) :-  wife(Alter, Ego).
                 |  [ext],  wife(A, Ego), sister(Alter, A).
{"Wi_WiSis"}
;; 0
%mire:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).
;; 1
%mire:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


nameng(Alter, Ego) :-  mother(Alter, Ego).
                   |  [ext],  mother(A, Ego), generation[aux]48(Alter, A), female(Alter).
                   |  [ext],  parents(A, Ego), generation[aux]48(B, A), wife(Alter, B).
                   |  [ext],  husband(A, Ego), mother(Alter, A).
{"FaBroWi_FaFaBroSoWi_FaFaFaBroDaSoWi_FaFaFaBroSoSoWi_FaFaFaSisDaSoWi_FaFaFaSisSoSoWi_FaFaMoBroDaSoWi_FaFaMoBroSoSoWi_FaFaMoSisDaSoWi_FaFaMoSisSoSoWi_FaFaSisSoWi_FaMoBroSoWi_FaMoFaBroDaSoWi_FaMoFaBroSoSoWi_FaMoFaSisDaSoWi_FaMoFaSisSoSoWi_FaMoMoBroDaSoWi_FaMoMoBroSoSoWi_FaMoMoSisDaSoWi_FaMoMoSisSoSoWi_FaMoSisSoWi_HuMo_Mo_MoBroWi_MoFaBroDa_MoFaBroSoWi_MoFaFaBroDaDa_MoFaFaBroDaSoWi_MoFaFaBroSoDa_MoFaFaBroSoSoWi_MoFaFaSisDaDa_MoFaFaSisDaSoWi_MoFaFaSisSoDa_MoFaFaSisSoSoWi_MoFaMoBroDaDa_MoFaMoBroDaSoWi_MoFaMoBroSoDa_MoFaMoBroSoSoWi_MoFaMoSisDaDa_MoFaMoSisDaSoWi_MoFaMoSisSoDa_MoFaMoSisSoSoWi_MoFaSisDa_MoFaSisSoWi_MoMoBroDa_MoMoBroSoWi_MoMoFaBroDaDa_MoMoFaBroDaSoWi_MoMoFaBroSoDa_MoMoFaBroSoSoWi_MoMoFaSisDaDa_MoMoFaSisDaSoWi_MoMoFaSisSoDa_MoMoFaSisSoSoWi_MoMoMoBroDaDa_MoMoMoBroDaSoWi_MoMoMoBroSoDa_MoMoMoBroSoSoWi_MoMoMoSisDaDa_MoMoMoSisDaSoWi_MoMoMoSisSoDa_MoMoMoSisSoSoWi_MoMoSisDa_MoMoSisSoWi_MoSis"}
;; 0
%nameng:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).
;; 1
%nameng:1, generation[aux]48:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%nameng:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 3
%nameng:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 4
%nameng:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 5
%nameng:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 6
%nameng:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 7
%nameng:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 8
%nameng:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 9
%nameng:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 10
%nameng:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 11
%nameng:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 12
%nameng:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 13
%nameng:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 14
%nameng:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 15
%nameng:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 16
%nameng:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 17
%nameng:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 18
%nameng:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 19
%nameng:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 20
%nameng:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 21
%nameng:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 22
%nameng:2, parents:0, generation[aux]48:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), wife(Alter, D).
;; 23
%nameng:2, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoBroSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), wife(Alter, F).
;; 24
%nameng:2, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoSisSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), wife(Alter, F).
;; 25
%nameng:2, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoBroSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), wife(Alter, H).
;; 26
%nameng:2, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoBroDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 27
%nameng:2, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoSisSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), wife(Alter, H).
;; 28
%nameng:2, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoSisDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 29
%nameng:2, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoFaBroSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), wife(Alter, H).
;; 30
%nameng:2, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoFaBroDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 31
%nameng:2, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoFaSisSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), wife(Alter, H).
;; 32
%nameng:2, parents:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoFaSisDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 33
%nameng:2, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaBroSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), wife(Alter, F).
;; 34
%nameng:2, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaSisSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), wife(Alter, F).
;; 35
%nameng:2, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoBroSoSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), wife(Alter, H).
;; 36
%nameng:2, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoBroDaSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 37
%nameng:2, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoSisSoSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), wife(Alter, H).
;; 38
%nameng:2, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoSisDaSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 39
%nameng:2, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaFaBroSoSoWi}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), wife(Alter, H).
;; 40
%nameng:2, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaFaBroDaSoWi}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 41
%nameng:2, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaFaSisSoSoWi}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), wife(Alter, H).
;; 42
%nameng:2, parents:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaFaSisDaSoWi}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 43
%nameng:2, parents:1, generation[aux]48:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), wife(Alter, D).
;; 44
%nameng:2, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoBroSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), wife(Alter, F).
;; 45
%nameng:2, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), wife(Alter, F).
;; 46
%nameng:2, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoBroSoSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), wife(Alter, H).
;; 47
%nameng:2, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoBroDaSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 48
%nameng:2, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoSisSoSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), wife(Alter, H).
;; 49
%nameng:2, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoSisDaSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 50
%nameng:2, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoFaBroSoSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), wife(Alter, H).
;; 51
%nameng:2, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoFaBroDaSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 52
%nameng:2, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoFaSisSoSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), wife(Alter, H).
;; 53
%nameng:2, parents:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoFaSisDaSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 54
%nameng:2, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaBroSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), wife(Alter, F).
;; 55
%nameng:2, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaSisSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), wife(Alter, F).
;; 56
%nameng:2, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoBroSoSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), wife(Alter, H).
;; 57
%nameng:2, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoBroDaSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 58
%nameng:2, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoSisSoSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), wife(Alter, H).
;; 59
%nameng:2, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoSisDaSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 60
%nameng:2, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaFaBroSoSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), wife(Alter, H).
;; 61
%nameng:2, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaFaBroDaSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 62
%nameng:2, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaFaSisSoSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), wife(Alter, H).
;; 63
%nameng:2, parents:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaFaSisDaSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 64
%nameng:3%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
[ext],  husband(A, Ego), mother(Alter, A).


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


sese(Alter, Ego) :-  grandparent[aux]48(Alter, Ego), male(Alter).
                 |  [ext],  wife(A, Ego), grandparent[aux]48(Alter, A), male(Alter).
                 |  [ext],  husband(A, Ego), grandparent[aux]48(Alter, A), male(Alter).
{"FaFa_FaFaBro_FaFaFaBroSo_FaFaFaSisSo_FaFaMoBroSo_FaFaMoSisSo_FaFaSisHu_FaMoBro_FaMoFaBroSo_FaMoFaSisSo_FaMoMoBroSo_FaMoMoSisSo_FaMoSisHu_HuFaFa_HuFaFaBro_HuFaFaFaBroSo_HuFaFaFaSisSo_HuFaFaMoBroSo_HuFaFaMoSisSo_HuFaFaSisHu_HuFaMoBro_HuFaMoFaBroSo_HuFaMoFaSisSo_HuFaMoMoBroSo_HuFaMoMoSisSo_HuFaMoSisHu_HuMoFa_HuMoFaBro_HuMoFaFaBroSo_HuMoFaFaSisSo_HuMoFaMoBroSo_HuMoFaMoSisSo_HuMoFaSisHu_HuMoMoBro_HuMoMoFaBroSo_HuMoMoFaSisSo_HuMoMoMoBroSo_HuMoMoMoSisSo_HuMoMoSisHu_MoFa_MoFaBro_MoFaFaBroSo_MoFaFaSisSo_MoFaMoBroSo_MoFaMoSisSo_MoFaSisHu_MoMoBro_MoMoFaBroSo_MoMoFaSisSo_MoMoMoBroSo_MoMoMoSisSo_MoMoSisHu_WiFaFa_WiFaFaBro_WiFaFaFaBroSo_WiFaFaFaSisSo_WiFaFaMoBroSo_WiFaFaMoSisSo_WiFaFaSisHu_WiFaMoBro_WiFaMoFaBroSo_WiFaMoFaSisSo_WiFaMoMoBroSo_WiFaMoMoSisSo_WiFaMoSisHu_WiMoFa_WiMoFaBro_WiMoFaFaBroSo_WiMoFaFaSisSo_WiMoFaMoBroSo_WiMoFaMoSisSo_WiMoFaSisHu_WiMoMoBro_WiMoMoFaBroSo_WiMoMoFaSisSo_WiMoMoMoBroSo_WiMoMoMoSisSo_WiMoMoSisHu"}
;; 0
%sese:0, grandparent[aux]48:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), parent(Alter, A), male(Alter).
;; 1
%sese:0, grandparent[aux]48:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), parent(Alter, A), male(Alter).
;; 2
%sese:0, grandparent[aux]48:1, parents:0, parents:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 3
%sese:0, grandparent[aux]48:1, parents:0, parents:1, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 4
%sese:0, grandparent[aux]48:1, parents:1, parents:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 5
%sese:0, grandparent[aux]48:1, parents:1, parents:1, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 6
%sese:0, grandparent[aux]48:2, parents:0, parents:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoMoSisHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Alter, E), male(Alter).
;; 7
%sese:0, grandparent[aux]48:2, parents:0, parents:1, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoFaSisHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Alter, E), male(Alter).
;; 8
%sese:0, grandparent[aux]48:2, parents:1, parents:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {FaMoSisHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Alter, E), male(Alter).
;; 9
%sese:0, grandparent[aux]48:2, parents:1, parents:1, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {FaFaSisHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Alter, E), male(Alter).
;; 10
%sese:0, grandparent[aux]48:3, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 11
%sese:0, grandparent[aux]48:3, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 12
%sese:0, grandparent[aux]48:3, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 13
%sese:0, grandparent[aux]48:3, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 14
%sese:0, grandparent[aux]48:3, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 15
%sese:0, grandparent[aux]48:3, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 16
%sese:0, grandparent[aux]48:3, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 17
%sese:0, grandparent[aux]48:3, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 18
%sese:0, grandparent[aux]48:3, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 19
%sese:0, grandparent[aux]48:3, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 20
%sese:0, grandparent[aux]48:3, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 21
%sese:0, grandparent[aux]48:3, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 22
%sese:0, grandparent[aux]48:3, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 23
%sese:0, grandparent[aux]48:3, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 24
%sese:0, grandparent[aux]48:3, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 25
%sese:0, grandparent[aux]48:3, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 26
%sese:1, grandparent[aux]48:0, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoFa}  
[ext],  wife(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 27
%sese:1, grandparent[aux]48:0, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaFa}  
[ext],  wife(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 28
%sese:1, grandparent[aux]48:1, parents:0, parents:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoMoBro}  
[ext], [ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 29
%sese:1, grandparent[aux]48:1, parents:0, parents:1, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoFaBro}  
[ext], [ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 30
%sese:1, grandparent[aux]48:1, parents:1, parents:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaMoBro}  
[ext], [ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 31
%sese:1, grandparent[aux]48:1, parents:1, parents:1, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaFaBro}  
[ext], [ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 32
%sese:1, grandparent[aux]48:2, parents:0, parents:0, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {WiMoMoSisHu}  
[ext], [ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), spouse(Alter, F), male(Alter).
;; 33
%sese:1, grandparent[aux]48:2, parents:0, parents:1, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {WiMoFaSisHu}  
[ext], [ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), spouse(Alter, F), male(Alter).
;; 34
%sese:1, grandparent[aux]48:2, parents:1, parents:0, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {WiFaMoSisHu}  
[ext], [ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), spouse(Alter, F), male(Alter).
;; 35
%sese:1, grandparent[aux]48:2, parents:1, parents:1, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {WiFaFaSisHu}  
[ext], [ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), spouse(Alter, F), male(Alter).
;; 36
%sese:1, grandparent[aux]48:3, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoMoMoBroSo}  
[ext], [ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 37
%sese:1, grandparent[aux]48:3, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoMoMoSisSo}  
[ext], [ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 38
%sese:1, grandparent[aux]48:3, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoMoFaBroSo}  
[ext], [ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 39
%sese:1, grandparent[aux]48:3, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoMoFaSisSo}  
[ext], [ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 40
%sese:1, grandparent[aux]48:3, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoFaMoBroSo}  
[ext], [ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 41
%sese:1, grandparent[aux]48:3, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoFaMoSisSo}  
[ext], [ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 42
%sese:1, grandparent[aux]48:3, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoFaFaBroSo}  
[ext], [ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 43
%sese:1, grandparent[aux]48:3, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoFaFaSisSo}  
[ext], [ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 44
%sese:1, grandparent[aux]48:3, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaMoMoBroSo}  
[ext], [ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 45
%sese:1, grandparent[aux]48:3, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaMoMoSisSo}  
[ext], [ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 46
%sese:1, grandparent[aux]48:3, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaMoFaBroSo}  
[ext], [ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 47
%sese:1, grandparent[aux]48:3, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaMoFaSisSo}  
[ext], [ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 48
%sese:1, grandparent[aux]48:3, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaFaMoBroSo}  
[ext], [ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 49
%sese:1, grandparent[aux]48:3, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaFaMoSisSo}  
[ext], [ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 50
%sese:1, grandparent[aux]48:3, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaFaFaBroSo}  
[ext], [ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 51
%sese:1, grandparent[aux]48:3, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaFaFaSisSo}  
[ext], [ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 52
%sese:2, grandparent[aux]48:0, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoFa}  
[ext],  husband(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 53
%sese:2, grandparent[aux]48:0, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaFa}  
[ext],  husband(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 54
%sese:2, grandparent[aux]48:1, parents:0, parents:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoMoBro}  
[ext], [ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 55
%sese:2, grandparent[aux]48:1, parents:0, parents:1, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoFaBro}  
[ext], [ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 56
%sese:2, grandparent[aux]48:1, parents:1, parents:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaMoBro}  
[ext], [ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 57
%sese:2, grandparent[aux]48:1, parents:1, parents:1, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaFaBro}  
[ext], [ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 58
%sese:2, grandparent[aux]48:2, parents:0, parents:0, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {HuMoMoSisHu}  
[ext], [ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), spouse(Alter, F), male(Alter).
;; 59
%sese:2, grandparent[aux]48:2, parents:0, parents:1, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {HuMoFaSisHu}  
[ext], [ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), spouse(Alter, F), male(Alter).
;; 60
%sese:2, grandparent[aux]48:2, parents:1, parents:0, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {HuFaMoSisHu}  
[ext], [ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), spouse(Alter, F), male(Alter).
;; 61
%sese:2, grandparent[aux]48:2, parents:1, parents:1, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {HuFaFaSisHu}  
[ext], [ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), spouse(Alter, F), male(Alter).
;; 62
%sese:2, grandparent[aux]48:3, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoMoMoBroSo}  
[ext], [ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 63
%sese:2, grandparent[aux]48:3, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoMoMoSisSo}  
[ext], [ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 64
%sese:2, grandparent[aux]48:3, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoMoFaBroSo}  
[ext], [ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 65
%sese:2, grandparent[aux]48:3, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoMoFaSisSo}  
[ext], [ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 66
%sese:2, grandparent[aux]48:3, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoFaMoBroSo}  
[ext], [ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 67
%sese:2, grandparent[aux]48:3, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoFaMoSisSo}  
[ext], [ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 68
%sese:2, grandparent[aux]48:3, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoFaFaBroSo}  
[ext], [ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 69
%sese:2, grandparent[aux]48:3, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoFaFaSisSo}  
[ext], [ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 70
%sese:2, grandparent[aux]48:3, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaMoMoBroSo}  
[ext], [ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 71
%sese:2, grandparent[aux]48:3, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaMoMoSisSo}  
[ext], [ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 72
%sese:2, grandparent[aux]48:3, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaMoFaBroSo}  
[ext], [ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 73
%sese:2, grandparent[aux]48:3, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaMoFaSisSo}  
[ext], [ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 74
%sese:2, grandparent[aux]48:3, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaFaMoBroSo}  
[ext], [ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 75
%sese:2, grandparent[aux]48:3, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaFaMoSisSo}  
[ext], [ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 76
%sese:2, grandparent[aux]48:3, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaFaFaBroSo}  
[ext], [ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 77
%sese:2, grandparent[aux]48:3, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaFaFaSisSo}  
[ext], [ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).


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


square[aux]48(Alter, Ego) :-  generation[aux]48(Alter, Ego).
                          |   parents(Alter, Ego).
                          |   parents(A, Ego), square[aux]48(Alter, A).
;; 0
%square[aux]48:0, generation[aux]48:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 4
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 5
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 6
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 7
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 8
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 9
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 10
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 11
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 12
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 13
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 14
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 15
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 16
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 17
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 18
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 19
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 20
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 21
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 22
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 23
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 24
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 25
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 26
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 27
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 28
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 29
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 30
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 31
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 32
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 33
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 34
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 35
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 36
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 37
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 38
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 39
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 40
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 41
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 42
%square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 43
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 44
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 45
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 46
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 47
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 48
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 49
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 50
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 51
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 52
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 53
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 54
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 55
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 56
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 57
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 58
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 59
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 60
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 61
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 62
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 63
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 64
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 65
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 66
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 67
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 68
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 69
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 70
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 71
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 72
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 73
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 74
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 75
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 76
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 77
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 78
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 79
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 80
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 81
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 82
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 83
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 84
%square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 85
%square[aux]48:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(Alter, Ego).
;; 86
%square[aux]48:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(Alter, Ego).
;; 87
%square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 88
%square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 89
%square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 90
%square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 91
%square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 92
%square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 93
%square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 94
%square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 95
%square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 96
%square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 97
%square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 98
%square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 99
%square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 100
%square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 101
%square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 102
%square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 103
%square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 104
%square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 105
%square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 106
%square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 107
%square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 108
%square[aux]48:2, parents:0, square[aux]48:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(Alter, A).
;; 109
%square[aux]48:2, parents:0, square[aux]48:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(Alter, A).
;; 110
%square[aux]48:2, parents:0, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 111
%square[aux]48:2, parents:0, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 112
%square[aux]48:2, parents:0, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 113
%square[aux]48:2, parents:0, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 114
%square[aux]48:2, parents:0, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 115
%square[aux]48:2, parents:0, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 116
%square[aux]48:2, parents:0, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 117
%square[aux]48:2, parents:0, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 118
%square[aux]48:2, parents:0, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 119
%square[aux]48:2, parents:0, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 120
%square[aux]48:2, parents:0, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 121
%square[aux]48:2, parents:0, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 122
%square[aux]48:2, parents:0, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 123
%square[aux]48:2, parents:0, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 124
%square[aux]48:2, parents:0, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 125
%square[aux]48:2, parents:0, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 126
%square[aux]48:2, parents:0, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 127
%square[aux]48:2, parents:0, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 128
%square[aux]48:2, parents:0, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 129
%square[aux]48:2, parents:0, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 130
%square[aux]48:2, parents:0, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 131
%square[aux]48:2, parents:0, square[aux]48:2, parents:0, square[aux]48:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(Alter, B).
;; 132
%square[aux]48:2, parents:0, square[aux]48:2, parents:0, square[aux]48:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(Alter, B).
;; 133
%square[aux]48:2, parents:0, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 134
%square[aux]48:2, parents:0, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 135
%square[aux]48:2, parents:0, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 136
%square[aux]48:2, parents:0, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 137
%square[aux]48:2, parents:0, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 138
%square[aux]48:2, parents:0, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 139
%square[aux]48:2, parents:0, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 140
%square[aux]48:2, parents:0, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 141
%square[aux]48:2, parents:0, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 142
%square[aux]48:2, parents:0, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 143
%square[aux]48:2, parents:0, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 144
%square[aux]48:2, parents:0, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 145
%square[aux]48:2, parents:0, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 146
%square[aux]48:2, parents:0, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 147
%square[aux]48:2, parents:0, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 148
%square[aux]48:2, parents:0, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 149
%square[aux]48:2, parents:0, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 150
%square[aux]48:2, parents:0, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 151
%square[aux]48:2, parents:0, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 152
%square[aux]48:2, parents:0, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 153
%square[aux]48:2, parents:0, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 154
%square[aux]48:2, parents:0, square[aux]48:2, parents:1, square[aux]48:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(Alter, B).
;; 155
%square[aux]48:2, parents:0, square[aux]48:2, parents:1, square[aux]48:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(Alter, B).
;; 156
%square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 157
%square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 158
%square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 159
%square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 160
%square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 161
%square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 162
%square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 163
%square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 164
%square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 165
%square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 166
%square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 167
%square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 168
%square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 169
%square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 170
%square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 171
%square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 172
%square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 173
%square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 174
%square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 175
%square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 176
%square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 177
%square[aux]48:2, parents:1, square[aux]48:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(Alter, A).
;; 178
%square[aux]48:2, parents:1, square[aux]48:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(Alter, A).
;; 179
%square[aux]48:2, parents:1, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 180
%square[aux]48:2, parents:1, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 181
%square[aux]48:2, parents:1, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 182
%square[aux]48:2, parents:1, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 183
%square[aux]48:2, parents:1, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 184
%square[aux]48:2, parents:1, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 185
%square[aux]48:2, parents:1, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 186
%square[aux]48:2, parents:1, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 187
%square[aux]48:2, parents:1, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 188
%square[aux]48:2, parents:1, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 189
%square[aux]48:2, parents:1, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 190
%square[aux]48:2, parents:1, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 191
%square[aux]48:2, parents:1, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 192
%square[aux]48:2, parents:1, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 193
%square[aux]48:2, parents:1, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 194
%square[aux]48:2, parents:1, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 195
%square[aux]48:2, parents:1, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 196
%square[aux]48:2, parents:1, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 197
%square[aux]48:2, parents:1, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 198
%square[aux]48:2, parents:1, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 199
%square[aux]48:2, parents:1, square[aux]48:2, parents:0, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 200
%square[aux]48:2, parents:1, square[aux]48:2, parents:0, square[aux]48:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(Alter, B).
;; 201
%square[aux]48:2, parents:1, square[aux]48:2, parents:0, square[aux]48:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(Alter, B).
;; 202
%square[aux]48:2, parents:1, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 203
%square[aux]48:2, parents:1, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 204
%square[aux]48:2, parents:1, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 205
%square[aux]48:2, parents:1, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 206
%square[aux]48:2, parents:1, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 207
%square[aux]48:2, parents:1, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 208
%square[aux]48:2, parents:1, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 209
%square[aux]48:2, parents:1, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 210
%square[aux]48:2, parents:1, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 211
%square[aux]48:2, parents:1, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 212
%square[aux]48:2, parents:1, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 213
%square[aux]48:2, parents:1, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 214
%square[aux]48:2, parents:1, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 215
%square[aux]48:2, parents:1, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 216
%square[aux]48:2, parents:1, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 217
%square[aux]48:2, parents:1, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 218
%square[aux]48:2, parents:1, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 219
%square[aux]48:2, parents:1, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 220
%square[aux]48:2, parents:1, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 221
%square[aux]48:2, parents:1, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 222
%square[aux]48:2, parents:1, square[aux]48:2, parents:1, square[aux]48:0, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 223
%square[aux]48:2, parents:1, square[aux]48:2, parents:1, square[aux]48:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(Alter, B).
;; 224
%square[aux]48:2, parents:1, square[aux]48:2, parents:1, square[aux]48:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(Alter, B).


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


syo(Alter, Ego) :-  uai(Ego, Alter), male(Alter).
                |   uai(Ego, Alter), female(Alter).
{"FaBroDaDa_FaBroDaSo_FaFaBroDaDaDa_FaFaBroDaDaSo_FaFaBroSoDaDa_FaFaBroSoDaSo_FaFaSisDaDaDa_FaFaSisDaDaSo_FaFaSisSoDaDa_FaFaSisSoDaSo_FaMoBroDaDaDa_FaMoBroDaDaSo_FaMoBroSoDaDa_FaMoBroSoDaSo_FaMoSisDaDaDa_FaMoSisDaDaSo_FaMoSisSoDaDa_FaMoSisSoDaSo_FaSisDaDa_FaSisDaSo_MoBroDaDa_MoBroDaSo_MoFaBroDaDaDa_MoFaBroDaDaSo_MoFaBroSoDaDa_MoFaBroSoDaSo_MoFaSisDaDaDa_MoFaSisDaDaSo_MoFaSisSoDaDa_MoFaSisSoDaSo_MoMoBroDaDaDa_MoMoBroDaDaSo_MoMoBroSoDaDa_MoMoBroSoDaSo_MoMoSisDaDaDa_MoMoSisDaDaSo_MoMoSisSoDaDa_MoMoSisSoDaSo_MoSisDaDa_MoSisDaSo_SisDa_SisSo"}
;; 0
%syo:0, uai:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Ego), male(Alter).
;; 1
%syo:0, uai:1, generation[aux]48:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Ego), male(Alter).
;; 2
%syo:0, uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Ego, E), male(Ego), male(Alter).
;; 3
%syo:0, uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Ego, E), male(Ego), male(Alter).
;; 4
%syo:0, uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), male(Ego), male(Alter).
;; 5
%syo:0, uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), male(Ego), male(Alter).
;; 6
%syo:0, uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), male(Ego), male(Alter).
;; 7
%syo:0, uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), male(Ego), male(Alter).
;; 8
%syo:0, uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), male(Ego), male(Alter).
;; 9
%syo:0, uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), male(Ego), male(Alter).
;; 10
%syo:0, uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), male(Ego), male(Alter).
;; 11
%syo:0, uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), male(Ego), male(Alter).
;; 12
%syo:0, uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Ego, E), male(Ego), male(Alter).
;; 13
%syo:0, uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Ego, E), male(Ego), male(Alter).
;; 14
%syo:0, uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), male(Ego), male(Alter).
;; 15
%syo:0, uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), male(Ego), male(Alter).
;; 16
%syo:0, uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), male(Ego), male(Alter).
;; 17
%syo:0, uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), male(Ego), male(Alter).
;; 18
%syo:0, uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), male(Ego), male(Alter).
;; 19
%syo:0, uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), male(Ego), male(Alter).
;; 20
%syo:0, uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), male(Ego), male(Alter).
;; 21
%syo:0, uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), male(Ego), male(Alter).
;; 22
%syo:1, uai:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Ego), female(Alter).
;; 23
%syo:1, uai:1, generation[aux]48:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Ego), female(Alter).
;; 24
%syo:1, uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Ego, E), male(Ego), female(Alter).
;; 25
%syo:1, uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Ego, E), male(Ego), female(Alter).
;; 26
%syo:1, uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), male(Ego), female(Alter).
;; 27
%syo:1, uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), male(Ego), female(Alter).
;; 28
%syo:1, uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), male(Ego), female(Alter).
;; 29
%syo:1, uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), male(Ego), female(Alter).
;; 30
%syo:1, uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), male(Ego), female(Alter).
;; 31
%syo:1, uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), male(Ego), female(Alter).
;; 32
%syo:1, uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), male(Ego), female(Alter).
;; 33
%syo:1, uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), male(Ego), female(Alter).
;; 34
%syo:1, uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Ego, E), male(Ego), female(Alter).
;; 35
%syo:1, uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Ego, E), male(Ego), female(Alter).
;; 36
%syo:1, uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), male(Ego), female(Alter).
;; 37
%syo:1, uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), male(Ego), female(Alter).
;; 38
%syo:1, uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), male(Ego), female(Alter).
;; 39
%syo:1, uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), male(Ego), female(Alter).
;; 40
%syo:1, uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), male(Ego), female(Alter).
;; 41
%syo:1, uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), male(Ego), female(Alter).
;; 42
%syo:1, uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), male(Ego), female(Alter).
;; 43
%syo:1, uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), male(Ego), female(Alter).


uai(Alter, Ego) :-  mother(A, Ego), brother(Alter, A).
                |  [ext],  mother(A, Ego), generation[aux]48(Alter, A), male(Alter).
{"MoBro_MoFaBroSo_MoFaFaBroDaSo_MoFaFaBroSoSo_MoFaFaSisDaSo_MoFaFaSisSoSo_MoFaMoBroDaSo_MoFaMoBroSoSo_MoFaMoSisDaSo_MoFaMoSisSoSo_MoFaSisSo_MoMoBroSo_MoMoFaBroDaSo_MoMoFaBroSoSo_MoMoFaSisDaSo_MoMoFaSisSoSo_MoMoMoBroDaSo_MoMoMoBroSoSo_MoMoMoSisDaSo_MoMoMoSisSoSo_MoMoSisSo"}
;; 0
%uai:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%uai:1, generation[aux]48:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 3
%uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 4
%uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 5
%uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 6
%uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 7
%uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 8
%uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 9
%uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 10
%uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 11
%uai:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 12
%uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 13
%uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 14
%uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 15
%uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 16
%uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 17
%uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 18
%uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 19
%uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 20
%uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 21
%uai:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).


weke(Alter, Ego) :-  brother(Alter, Ego), female(Ego).
                 |  [ext],  generation[aux]48(Alter, Ego), female(Ego), male(Alter).
{"Bro_FaBroSo_FaFaBroDaSo_FaFaBroSoSo_FaFaSisDaSo_FaFaSisSoSo_FaMoBroDaSo_FaMoBroSoSo_FaMoSisDaSo_FaMoSisSoSo_FaSisSo_MoBroSo_MoFaBroDaSo_MoFaBroSoSo_MoFaSisDaSo_MoFaSisSoSo_MoMoBroDaSo_MoMoBroSoSo_MoMoSisDaSo_MoMoSisSoSo_MoSisSo"}
;; 0
%weke:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), female(Ego).
;; 1
%weke:1, generation[aux]48:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
[ext],  mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Ego), male(Alter).
;; 2
%weke:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), female(Ego), male(Alter).
;; 3
%weke:1, generation[aux]48:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), female(Ego), male(Alter).
;; 4
%weke:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Ego), male(Alter).
;; 5
%weke:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Ego), male(Alter).
;; 6
%weke:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Ego), male(Alter).
;; 7
%weke:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Ego), male(Alter).
;; 8
%weke:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Ego), male(Alter).
;; 9
%weke:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Ego), male(Alter).
;; 10
%weke:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Ego), male(Alter).
;; 11
%weke:1, generation[aux]48:1, parents:0, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Ego), male(Alter).
;; 12
%weke:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), female(Ego), male(Alter).
;; 13
%weke:1, generation[aux]48:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), female(Ego), male(Alter).
;; 14
%weke:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Ego), male(Alter).
;; 15
%weke:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Ego), male(Alter).
;; 16
%weke:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Ego), male(Alter).
;; 17
%weke:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:0, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Ego), male(Alter).
;; 18
%weke:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Ego), male(Alter).
;; 19
%weke:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Ego), male(Alter).
;; 20
%weke:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Ego), male(Alter).
;; 21
%weke:1, generation[aux]48:1, parents:1, generation[aux]48gs:1, parents:1, generation[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Ego), male(Alter).


yarise(Alter, Ego) :-  siblings(Alter, Ego), elder(Alter, Ego).
                   |  [ext],  parents(A, Ego), yarise[aux]48(B, A), children(Alter, B), gender(C, A), gender(C, B).
                   |  [ext],  yarise[aux]48(A, Ego), spice(Alter, A), gender(B, A), gender(B, Ego).
{"Bro_BroWi_FaBroDa_FaBroDaHu_FaBroSo_FaBroSoWi_FaFaBroDaDaHu_FaFaBroDaSoWi_FaFaBroSoDa_FaFaBroSoDaHu_FaFaBroSoSo_FaFaBroSoSoWi_FaFaSisDaDaHu_FaFaSisDaSoWi_FaFaSisSoDa_FaFaSisSoDaHu_FaFaSisSoSo_FaFaSisSoSoWi_FaMoBroDaDaHu_FaMoBroDaSoWi_FaMoBroSoDa_FaMoBroSoDaHu_FaMoBroSoSo_FaMoBroSoSoWi_FaMoSisDaDaHu_FaMoSisDaSoWi_FaMoSisSoDa_FaMoSisSoDaHu_FaMoSisSoSo_FaMoSisSoSoWi_FaSisDaHu_FaSisSoWi_MoBroDaHu_MoBroSoWi_MoFaBroDaDa_MoFaBroDaDaHu_MoFaBroDaSo_MoFaBroDaSoWi_MoFaBroSoDaHu_MoFaBroSoSoWi_MoFaSisDaDa_MoFaSisDaDaHu_MoFaSisDaSo_MoFaSisDaSoWi_MoFaSisSoDaHu_MoFaSisSoSoWi_MoMoBroDaDa_MoMoBroDaDaHu_MoMoBroDaSo_MoMoBroDaSoWi_MoMoBroSoDaHu_MoMoBroSoSoWi_MoMoSisDaDa_MoMoSisDaDaHu_MoMoSisDaSo_MoMoSisDaSoWi_MoMoSisSoDaHu_MoMoSisSoSoWi_MoSisDa_MoSisDaHu_MoSisSo_MoSisSoWi_Sis_SisHu"}
;; 0
%yarise:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%yarise:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).
;; 2
%yarise:1, parents:0, yarise[aux]48:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), son(Alter, D), gender(E, A), gender(E, D).
;; 3
%yarise:1, parents:0, yarise[aux]48:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), daughter(Alter, D), gender(E, A), gender(E, D).
;; 4
%yarise:1, parents:0, yarise[aux]48:1, parents:0, yarise[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), child(F, E), son(Alter, F), gender(G, A), gender(G, F).
;; 5
%yarise:1, parents:0, yarise[aux]48:1, parents:0, yarise[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F).
;; 6
%yarise:1, parents:0, yarise[aux]48:1, parents:0, yarise[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), child(F, E), son(Alter, F), gender(G, A), gender(G, F).
;; 7
%yarise:1, parents:0, yarise[aux]48:1, parents:0, yarise[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F).
;; 8
%yarise:1, parents:0, yarise[aux]48:1, parents:1, yarise[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), child(F, E), son(Alter, F), gender(G, A), gender(G, F).
;; 9
%yarise:1, parents:0, yarise[aux]48:1, parents:1, yarise[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F).
;; 10
%yarise:1, parents:0, yarise[aux]48:1, parents:1, yarise[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), child(F, E), son(Alter, F), gender(G, A), gender(G, F).
;; 11
%yarise:1, parents:0, yarise[aux]48:1, parents:1, yarise[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F).
;; 12
%yarise:1, parents:1, yarise[aux]48:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), son(Alter, D), gender(E, A), gender(E, D).
;; 13
%yarise:1, parents:1, yarise[aux]48:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), daughter(Alter, D), gender(E, A), gender(E, D).
;; 14
%yarise:1, parents:1, yarise[aux]48:1, parents:0, yarise[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), child(F, E), son(Alter, F), gender(G, A), gender(G, F).
;; 15
%yarise:1, parents:1, yarise[aux]48:1, parents:0, yarise[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F).
;; 16
%yarise:1, parents:1, yarise[aux]48:1, parents:0, yarise[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), child(F, E), son(Alter, F), gender(G, A), gender(G, F).
;; 17
%yarise:1, parents:1, yarise[aux]48:1, parents:0, yarise[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F).
;; 18
%yarise:1, parents:1, yarise[aux]48:1, parents:1, yarise[aux]48gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), child(F, E), son(Alter, F), gender(G, A), gender(G, F).
;; 19
%yarise:1, parents:1, yarise[aux]48:1, parents:1, yarise[aux]48gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F).
;; 20
%yarise:1, parents:1, yarise[aux]48:1, parents:1, yarise[aux]48gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), child(F, E), son(Alter, F), gender(G, A), gender(G, F).
;; 21
%yarise:1, parents:1, yarise[aux]48:1, parents:1, yarise[aux]48gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), child(F, E), daughter(Alter, F), gender(G, A), gender(G, F).
;; 22
%yarise:2, yarise[aux]48:0, sibling:0, spice:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), elder(C, Ego), husband(Alter, C), gender(D, C), gender(D, Ego).
;; 23
%yarise:2, yarise[aux]48:0, sibling:0, spice:1%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), elder(C, Ego), wife(Alter, C), gender(D, C), gender(D, Ego).
;; 24
%yarise:2, yarise[aux]48:1, parents:0, yarise[aux]48gs:0, siblings:0, brother:0, sibling:0, spice:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), child(E, D), husband(Alter, E), gender(F, E), gender(F, Ego).
;; 25
%yarise:2, yarise[aux]48:1, parents:0, yarise[aux]48gs:0, siblings:0, brother:0, sibling:0, spice:1%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), child(E, D), wife(Alter, E), gender(F, E), gender(F, Ego).
;; 26
%yarise:2, yarise[aux]48:1, parents:0, yarise[aux]48gs:0, siblings:1, sister:0, sibling:0, spice:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), child(E, D), husband(Alter, E), gender(F, E), gender(F, Ego).
;; 27
%yarise:2, yarise[aux]48:1, parents:0, yarise[aux]48gs:0, siblings:1, sister:0, sibling:0, spice:1%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), child(E, D), wife(Alter, E), gender(F, E), gender(F, Ego).
;; 28
%yarise:2, yarise[aux]48:1, parents:0, yarise[aux]48gs:1, parents:0, siblings:0, brother:0, sibling:0, children:0, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 29
%yarise:2, yarise[aux]48:1, parents:0, yarise[aux]48gs:1, parents:0, siblings:0, brother:0, sibling:0, children:0, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 30
%yarise:2, yarise[aux]48:1, parents:0, yarise[aux]48gs:1, parents:0, siblings:0, brother:0, sibling:0, children:1, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 31
%yarise:2, yarise[aux]48:1, parents:0, yarise[aux]48gs:1, parents:0, siblings:0, brother:0, sibling:0, children:1, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 32
%yarise:2, yarise[aux]48:1, parents:0, yarise[aux]48gs:1, parents:0, siblings:1, sister:0, sibling:0, children:0, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 33
%yarise:2, yarise[aux]48:1, parents:0, yarise[aux]48gs:1, parents:0, siblings:1, sister:0, sibling:0, children:0, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 34
%yarise:2, yarise[aux]48:1, parents:0, yarise[aux]48gs:1, parents:0, siblings:1, sister:0, sibling:0, children:1, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 35
%yarise:2, yarise[aux]48:1, parents:0, yarise[aux]48gs:1, parents:0, siblings:1, sister:0, sibling:0, children:1, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 36
%yarise:2, yarise[aux]48:1, parents:0, yarise[aux]48gs:1, parents:1, siblings:0, brother:0, sibling:0, children:0, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 37
%yarise:2, yarise[aux]48:1, parents:0, yarise[aux]48gs:1, parents:1, siblings:0, brother:0, sibling:0, children:0, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 38
%yarise:2, yarise[aux]48:1, parents:0, yarise[aux]48gs:1, parents:1, siblings:0, brother:0, sibling:0, children:1, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 39
%yarise:2, yarise[aux]48:1, parents:0, yarise[aux]48gs:1, parents:1, siblings:0, brother:0, sibling:0, children:1, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 40
%yarise:2, yarise[aux]48:1, parents:0, yarise[aux]48gs:1, parents:1, siblings:1, sister:0, sibling:0, children:0, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 41
%yarise:2, yarise[aux]48:1, parents:0, yarise[aux]48gs:1, parents:1, siblings:1, sister:0, sibling:0, children:0, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 42
%yarise:2, yarise[aux]48:1, parents:0, yarise[aux]48gs:1, parents:1, siblings:1, sister:0, sibling:0, children:1, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 43
%yarise:2, yarise[aux]48:1, parents:0, yarise[aux]48gs:1, parents:1, siblings:1, sister:0, sibling:0, children:1, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 44
%yarise:2, yarise[aux]48:1, parents:1, yarise[aux]48gs:0, siblings:0, brother:0, sibling:0, spice:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), child(E, D), husband(Alter, E), gender(F, E), gender(F, Ego).
;; 45
%yarise:2, yarise[aux]48:1, parents:1, yarise[aux]48gs:0, siblings:0, brother:0, sibling:0, spice:1%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), child(E, D), wife(Alter, E), gender(F, E), gender(F, Ego).
;; 46
%yarise:2, yarise[aux]48:1, parents:1, yarise[aux]48gs:0, siblings:1, sister:0, sibling:0, spice:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), child(E, D), husband(Alter, E), gender(F, E), gender(F, Ego).
;; 47
%yarise:2, yarise[aux]48:1, parents:1, yarise[aux]48gs:0, siblings:1, sister:0, sibling:0, spice:1%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), child(E, D), wife(Alter, E), gender(F, E), gender(F, Ego).
;; 48
%yarise:2, yarise[aux]48:1, parents:1, yarise[aux]48gs:1, parents:0, siblings:0, brother:0, sibling:0, children:0, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 49
%yarise:2, yarise[aux]48:1, parents:1, yarise[aux]48gs:1, parents:0, siblings:0, brother:0, sibling:0, children:0, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 50
%yarise:2, yarise[aux]48:1, parents:1, yarise[aux]48gs:1, parents:0, siblings:0, brother:0, sibling:0, children:1, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 51
%yarise:2, yarise[aux]48:1, parents:1, yarise[aux]48gs:1, parents:0, siblings:0, brother:0, sibling:0, children:1, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 52
%yarise:2, yarise[aux]48:1, parents:1, yarise[aux]48gs:1, parents:0, siblings:1, sister:0, sibling:0, children:0, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 53
%yarise:2, yarise[aux]48:1, parents:1, yarise[aux]48gs:1, parents:0, siblings:1, sister:0, sibling:0, children:0, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 54
%yarise:2, yarise[aux]48:1, parents:1, yarise[aux]48gs:1, parents:0, siblings:1, sister:0, sibling:0, children:1, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisDaDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 55
%yarise:2, yarise[aux]48:1, parents:1, yarise[aux]48gs:1, parents:0, siblings:1, sister:0, sibling:0, children:1, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisDaSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 56
%yarise:2, yarise[aux]48:1, parents:1, yarise[aux]48gs:1, parents:1, siblings:0, brother:0, sibling:0, children:0, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 57
%yarise:2, yarise[aux]48:1, parents:1, yarise[aux]48gs:1, parents:1, siblings:0, brother:0, sibling:0, children:0, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 58
%yarise:2, yarise[aux]48:1, parents:1, yarise[aux]48gs:1, parents:1, siblings:0, brother:0, sibling:0, children:1, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroDaDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 59
%yarise:2, yarise[aux]48:1, parents:1, yarise[aux]48gs:1, parents:1, siblings:0, brother:0, sibling:0, children:1, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroDaSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 60
%yarise:2, yarise[aux]48:1, parents:1, yarise[aux]48gs:1, parents:1, siblings:1, sister:0, sibling:0, children:0, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 61
%yarise:2, yarise[aux]48:1, parents:1, yarise[aux]48gs:1, parents:1, siblings:1, sister:0, sibling:0, children:0, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).
;; 62
%yarise:2, yarise[aux]48:1, parents:1, yarise[aux]48gs:1, parents:1, siblings:1, sister:0, sibling:0, children:1, spice:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), husband(Alter, G), gender(H, G), gender(H, Ego).
;; 63
%yarise:2, yarise[aux]48:1, parents:1, yarise[aux]48gs:1, parents:1, siblings:1, sister:0, sibling:0, children:1, spice:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), wife(Alter, G), gender(H, G), gender(H, Ego).


yarise[aux]48(Alter, Ego) :-  sibling(Alter, Ego), elder(Alter, Ego).
                          |   parents(A, Ego), yarise[aux]48gs(B, A), child(Alter, B).
;; 0
%yarise[aux]48:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 1
%yarise[aux]48:1, parents:0, yarise[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), child(Alter, D).
;; 2
%yarise[aux]48:1, parents:0, yarise[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), child(Alter, D).
;; 3
%yarise[aux]48:1, parents:0, yarise[aux]48gs:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 4
%yarise[aux]48:1, parents:0, yarise[aux]48gs:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 5
%yarise[aux]48:1, parents:0, yarise[aux]48gs:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 6
%yarise[aux]48:1, parents:0, yarise[aux]48gs:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 7
%yarise[aux]48:1, parents:0, yarise[aux]48gs:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 8
%yarise[aux]48:1, parents:0, yarise[aux]48gs:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 9
%yarise[aux]48:1, parents:0, yarise[aux]48gs:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 10
%yarise[aux]48:1, parents:0, yarise[aux]48gs:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 11
%yarise[aux]48:1, parents:1, yarise[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), child(Alter, D).
;; 12
%yarise[aux]48:1, parents:1, yarise[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), child(Alter, D).
;; 13
%yarise[aux]48:1, parents:1, yarise[aux]48gs:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 14
%yarise[aux]48:1, parents:1, yarise[aux]48gs:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 15
%yarise[aux]48:1, parents:1, yarise[aux]48gs:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 16
%yarise[aux]48:1, parents:1, yarise[aux]48gs:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 17
%yarise[aux]48:1, parents:1, yarise[aux]48gs:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 18
%yarise[aux]48:1, parents:1, yarise[aux]48gs:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 19
%yarise[aux]48:1, parents:1, yarise[aux]48gs:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 20
%yarise[aux]48:1, parents:1, yarise[aux]48gs:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).


yarise[aux]48gs(Alter, Ego) :-  siblings(Alter, Ego), elder(Alter, Ego).
                            |   parents(A, Ego), siblings(B, A), children(Alter, B).
;; 0
%yarise[aux]48gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%yarise[aux]48gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).
;; 2
%yarise[aux]48gs:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%yarise[aux]48gs:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%yarise[aux]48gs:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%yarise[aux]48gs:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%yarise[aux]48gs:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 7
%yarise[aux]48gs:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 8
%yarise[aux]48gs:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 9
%yarise[aux]48gs:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


ye_yepe(Alter, Ego) :-  ye_yepe[aux]48(Alter, Ego).
                    |   ye_yepe[aux]48(Ego, Alter), male(Alter).
                    |   ye_yepe[aux]48(Ego, Alter), female(Alter).
{"BroDaDaDaDa_BroDaDaDaSo_BroDaDaSoDa_BroDaDaSoSo_BroDaSoDaDa_BroDaSoDaSo_BroDaSoSoDa_BroDaSoSoSo_BroSoDaDaDa_BroSoDaDaSo_BroSoDaSoDa_BroSoDaSoSo_BroSoSoDaDa_BroSoSoDaSo_BroSoSoSoDa_BroSoSoSoSo_DaDaDaDa_DaDaDaSo_DaDaSoDa_DaDaSoSo_DaSoDaDa_DaSoDaSo_DaSoSoDa_DaSoSoSo_FaFaFaFa_FaFaFaFaBro_FaFaFaFaSis_FaFaFaMo_FaFaFaMoBro_FaFaFaMoSis_FaFaMoFa_FaFaMoFaBro_FaFaMoFaSis_FaFaMoMo_FaFaMoMoBro_FaFaMoMoSis_FaMoFaFa_FaMoFaFaBro_FaMoFaFaSis_FaMoFaMo_FaMoFaMoBro_FaMoFaMoSis_FaMoMoFa_FaMoMoFaBro_FaMoMoFaSis_FaMoMoMo_FaMoMoMoBro_FaMoMoMoSis_MoFaFaFa_MoFaFaFaBro_MoFaFaFaSis_MoFaFaMo_MoFaFaMoBro_MoFaFaMoSis_MoFaMoFa_MoFaMoFaBro_MoFaMoFaSis_MoFaMoMo_MoFaMoMoBro_MoFaMoMoSis_MoMoFaFa_MoMoFaFaBro_MoMoFaFaSis_MoMoFaMo_MoMoFaMoBro_MoMoFaMoSis_MoMoMoFa_MoMoMoFaBro_MoMoMoFaSis_MoMoMoMo_MoMoMoMoBro_MoMoMoMoSis_SisDaDaDaDa_SisDaDaDaSo_SisDaDaSoDa_SisDaDaSoSo_SisDaSoDaDa_SisDaSoDaSo_SisDaSoSoDa_SisDaSoSoSo_SisSoDaDaDa_SisSoDaDaSo_SisSoDaSoDa_SisSoDaSoSo_SisSoSoDaDa_SisSoSoDaSo_SisSoSoSoDa_SisSoSoSoSo_SoDaDaDa_SoDaDaSo_SoDaSoDa_SoDaSoSo_SoSoDaDa_SoSoDaSo_SoSoSoDa_SoSoSoSo"}
;; 0
%ye_yepe:0, ye_yepe[aux]48:0, parents:0, parents:0, parents:0, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoMoMo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(Alter, C).
;; 1
%ye_yepe:0, ye_yepe[aux]48:0, parents:0, parents:0, parents:0, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoMoFa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(Alter, C).
;; 2
%ye_yepe:0, ye_yepe[aux]48:0, parents:0, parents:0, parents:1, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoFaMo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(Alter, C).
;; 3
%ye_yepe:0, ye_yepe[aux]48:0, parents:0, parents:0, parents:1, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoFaFa}  
 mother(A, Ego), mother(B, A), father(C, B), father(Alter, C).
;; 4
%ye_yepe:0, ye_yepe[aux]48:0, parents:0, parents:1, parents:0, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaMoMo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(Alter, C).
;; 5
%ye_yepe:0, ye_yepe[aux]48:0, parents:0, parents:1, parents:0, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaMoFa}  
 mother(A, Ego), father(B, A), mother(C, B), father(Alter, C).
;; 6
%ye_yepe:0, ye_yepe[aux]48:0, parents:0, parents:1, parents:1, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaFaMo}  
 mother(A, Ego), father(B, A), father(C, B), mother(Alter, C).
;; 7
%ye_yepe:0, ye_yepe[aux]48:0, parents:0, parents:1, parents:1, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaFaFa}  
 mother(A, Ego), father(B, A), father(C, B), father(Alter, C).
;; 8
%ye_yepe:0, ye_yepe[aux]48:0, parents:1, parents:0, parents:0, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoMoMo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(Alter, C).
;; 9
%ye_yepe:0, ye_yepe[aux]48:0, parents:1, parents:0, parents:0, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoMoFa}  
 father(A, Ego), mother(B, A), mother(C, B), father(Alter, C).
;; 10
%ye_yepe:0, ye_yepe[aux]48:0, parents:1, parents:0, parents:1, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoFaMo}  
 father(A, Ego), mother(B, A), father(C, B), mother(Alter, C).
;; 11
%ye_yepe:0, ye_yepe[aux]48:0, parents:1, parents:0, parents:1, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoFaFa}  
 father(A, Ego), mother(B, A), father(C, B), father(Alter, C).
;; 12
%ye_yepe:0, ye_yepe[aux]48:0, parents:1, parents:1, parents:0, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaMoMo}  
 father(A, Ego), father(B, A), mother(C, B), mother(Alter, C).
;; 13
%ye_yepe:0, ye_yepe[aux]48:0, parents:1, parents:1, parents:0, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaMoFa}  
 father(A, Ego), father(B, A), mother(C, B), father(Alter, C).
;; 14
%ye_yepe:0, ye_yepe[aux]48:0, parents:1, parents:1, parents:1, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaFaMo}  
 father(A, Ego), father(B, A), father(C, B), mother(Alter, C).
;; 15
%ye_yepe:0, ye_yepe[aux]48:0, parents:1, parents:1, parents:1, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaFaFa}  
 father(A, Ego), father(B, A), father(C, B), father(Alter, C).
;; 16
%ye_yepe:0, ye_yepe[aux]48:1, parents:0, parents:0, parents:0, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 17
%ye_yepe:0, ye_yepe[aux]48:1, parents:0, parents:0, parents:0, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 18
%ye_yepe:0, ye_yepe[aux]48:1, parents:0, parents:0, parents:0, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoFaBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 19
%ye_yepe:0, ye_yepe[aux]48:1, parents:0, parents:0, parents:0, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoFaSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 20
%ye_yepe:0, ye_yepe[aux]48:1, parents:0, parents:0, parents:1, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaMoBro}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 21
%ye_yepe:0, ye_yepe[aux]48:1, parents:0, parents:0, parents:1, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaMoSis}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 22
%ye_yepe:0, ye_yepe[aux]48:1, parents:0, parents:0, parents:1, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaFaBro}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 23
%ye_yepe:0, ye_yepe[aux]48:1, parents:0, parents:0, parents:1, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaFaSis}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 24
%ye_yepe:0, ye_yepe[aux]48:1, parents:0, parents:1, parents:0, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoMoBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 25
%ye_yepe:0, ye_yepe[aux]48:1, parents:0, parents:1, parents:0, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoMoSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 26
%ye_yepe:0, ye_yepe[aux]48:1, parents:0, parents:1, parents:0, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoFaBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 27
%ye_yepe:0, ye_yepe[aux]48:1, parents:0, parents:1, parents:0, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoFaSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 28
%ye_yepe:0, ye_yepe[aux]48:1, parents:0, parents:1, parents:1, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaMoBro}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 29
%ye_yepe:0, ye_yepe[aux]48:1, parents:0, parents:1, parents:1, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaMoSis}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 30
%ye_yepe:0, ye_yepe[aux]48:1, parents:0, parents:1, parents:1, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaFaBro}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 31
%ye_yepe:0, ye_yepe[aux]48:1, parents:0, parents:1, parents:1, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaFaSis}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 32
%ye_yepe:0, ye_yepe[aux]48:1, parents:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 33
%ye_yepe:0, ye_yepe[aux]48:1, parents:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 34
%ye_yepe:0, ye_yepe[aux]48:1, parents:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoFaBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 35
%ye_yepe:0, ye_yepe[aux]48:1, parents:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoFaSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 36
%ye_yepe:0, ye_yepe[aux]48:1, parents:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaMoBro}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 37
%ye_yepe:0, ye_yepe[aux]48:1, parents:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaMoSis}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 38
%ye_yepe:0, ye_yepe[aux]48:1, parents:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaFaBro}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 39
%ye_yepe:0, ye_yepe[aux]48:1, parents:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaFaSis}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 40
%ye_yepe:0, ye_yepe[aux]48:1, parents:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoMoBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 41
%ye_yepe:0, ye_yepe[aux]48:1, parents:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoMoSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 42
%ye_yepe:0, ye_yepe[aux]48:1, parents:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoFaBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 43
%ye_yepe:0, ye_yepe[aux]48:1, parents:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoFaSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 44
%ye_yepe:0, ye_yepe[aux]48:1, parents:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaMoBro}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 45
%ye_yepe:0, ye_yepe[aux]48:1, parents:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaMoSis}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 46
%ye_yepe:0, ye_yepe[aux]48:1, parents:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaFaBro}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 47
%ye_yepe:0, ye_yepe[aux]48:1, parents:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaFaSis}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 48
%ye_yepe:1, ye_yepe[aux]48:0, parents:0, parents:0, parents:0, parents:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaSo}  
 mother(A, Alter), mother(B, A), mother(C, B), mother(Ego, C), male(Alter).
;; 49
%ye_yepe:1, ye_yepe[aux]48:0, parents:0, parents:0, parents:0, parents:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaSo}  
 mother(A, Alter), mother(B, A), mother(C, B), father(Ego, C), male(Alter).
;; 50
%ye_yepe:1, ye_yepe[aux]48:0, parents:0, parents:0, parents:1, parents:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaSo}  
 mother(A, Alter), mother(B, A), father(C, B), mother(Ego, C), male(Alter).
;; 51
%ye_yepe:1, ye_yepe[aux]48:0, parents:0, parents:0, parents:1, parents:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaSo}  
 mother(A, Alter), mother(B, A), father(C, B), father(Ego, C), male(Alter).
;; 52
%ye_yepe:1, ye_yepe[aux]48:0, parents:0, parents:1, parents:0, parents:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaSo}  
 mother(A, Alter), father(B, A), mother(C, B), mother(Ego, C), male(Alter).
;; 53
%ye_yepe:1, ye_yepe[aux]48:0, parents:0, parents:1, parents:0, parents:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaSo}  
 mother(A, Alter), father(B, A), mother(C, B), father(Ego, C), male(Alter).
;; 54
%ye_yepe:1, ye_yepe[aux]48:0, parents:0, parents:1, parents:1, parents:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaSo}  
 mother(A, Alter), father(B, A), father(C, B), mother(Ego, C), male(Alter).
;; 55
%ye_yepe:1, ye_yepe[aux]48:0, parents:0, parents:1, parents:1, parents:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaSo}  
 mother(A, Alter), father(B, A), father(C, B), father(Ego, C), male(Alter).
;; 56
%ye_yepe:1, ye_yepe[aux]48:0, parents:1, parents:0, parents:0, parents:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoSo}  
 father(A, Alter), mother(B, A), mother(C, B), mother(Ego, C), male(Alter).
;; 57
%ye_yepe:1, ye_yepe[aux]48:0, parents:1, parents:0, parents:0, parents:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoSo}  
 father(A, Alter), mother(B, A), mother(C, B), father(Ego, C), male(Alter).
;; 58
%ye_yepe:1, ye_yepe[aux]48:0, parents:1, parents:0, parents:1, parents:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoSo}  
 father(A, Alter), mother(B, A), father(C, B), mother(Ego, C), male(Alter).
;; 59
%ye_yepe:1, ye_yepe[aux]48:0, parents:1, parents:0, parents:1, parents:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoSo}  
 father(A, Alter), mother(B, A), father(C, B), father(Ego, C), male(Alter).
;; 60
%ye_yepe:1, ye_yepe[aux]48:0, parents:1, parents:1, parents:0, parents:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoSo}  
 father(A, Alter), father(B, A), mother(C, B), mother(Ego, C), male(Alter).
;; 61
%ye_yepe:1, ye_yepe[aux]48:0, parents:1, parents:1, parents:0, parents:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoSo}  
 father(A, Alter), father(B, A), mother(C, B), father(Ego, C), male(Alter).
;; 62
%ye_yepe:1, ye_yepe[aux]48:0, parents:1, parents:1, parents:1, parents:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoSo}  
 father(A, Alter), father(B, A), father(C, B), mother(Ego, C), male(Alter).
;; 63
%ye_yepe:1, ye_yepe[aux]48:0, parents:1, parents:1, parents:1, parents:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoSo}  
 father(A, Alter), father(B, A), father(C, B), father(Ego, C), male(Alter).
;; 64
%ye_yepe:1, ye_yepe[aux]48:1, parents:0, parents:0, parents:0, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 65
%ye_yepe:1, ye_yepe[aux]48:1, parents:0, parents:0, parents:0, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 66
%ye_yepe:1, ye_yepe[aux]48:1, parents:0, parents:0, parents:0, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 67
%ye_yepe:1, ye_yepe[aux]48:1, parents:0, parents:0, parents:0, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 68
%ye_yepe:1, ye_yepe[aux]48:1, parents:0, parents:0, parents:1, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 69
%ye_yepe:1, ye_yepe[aux]48:1, parents:0, parents:0, parents:1, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 70
%ye_yepe:1, ye_yepe[aux]48:1, parents:0, parents:0, parents:1, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 71
%ye_yepe:1, ye_yepe[aux]48:1, parents:0, parents:0, parents:1, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 72
%ye_yepe:1, ye_yepe[aux]48:1, parents:0, parents:1, parents:0, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 73
%ye_yepe:1, ye_yepe[aux]48:1, parents:0, parents:1, parents:0, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 74
%ye_yepe:1, ye_yepe[aux]48:1, parents:0, parents:1, parents:0, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 75
%ye_yepe:1, ye_yepe[aux]48:1, parents:0, parents:1, parents:0, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 76
%ye_yepe:1, ye_yepe[aux]48:1, parents:0, parents:1, parents:1, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 77
%ye_yepe:1, ye_yepe[aux]48:1, parents:0, parents:1, parents:1, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 78
%ye_yepe:1, ye_yepe[aux]48:1, parents:0, parents:1, parents:1, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 79
%ye_yepe:1, ye_yepe[aux]48:1, parents:0, parents:1, parents:1, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 80
%ye_yepe:1, ye_yepe[aux]48:1, parents:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 81
%ye_yepe:1, ye_yepe[aux]48:1, parents:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 82
%ye_yepe:1, ye_yepe[aux]48:1, parents:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 83
%ye_yepe:1, ye_yepe[aux]48:1, parents:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 84
%ye_yepe:1, ye_yepe[aux]48:1, parents:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 85
%ye_yepe:1, ye_yepe[aux]48:1, parents:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 86
%ye_yepe:1, ye_yepe[aux]48:1, parents:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 87
%ye_yepe:1, ye_yepe[aux]48:1, parents:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 88
%ye_yepe:1, ye_yepe[aux]48:1, parents:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 89
%ye_yepe:1, ye_yepe[aux]48:1, parents:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 90
%ye_yepe:1, ye_yepe[aux]48:1, parents:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 91
%ye_yepe:1, ye_yepe[aux]48:1, parents:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 92
%ye_yepe:1, ye_yepe[aux]48:1, parents:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 93
%ye_yepe:1, ye_yepe[aux]48:1, parents:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 94
%ye_yepe:1, ye_yepe[aux]48:1, parents:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 95
%ye_yepe:1, ye_yepe[aux]48:1, parents:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 96
%ye_yepe:2, ye_yepe[aux]48:0, parents:0, parents:0, parents:0, parents:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaDa}  
 mother(A, Alter), mother(B, A), mother(C, B), mother(Ego, C), female(Alter).
;; 97
%ye_yepe:2, ye_yepe[aux]48:0, parents:0, parents:0, parents:0, parents:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaDa}  
 mother(A, Alter), mother(B, A), mother(C, B), father(Ego, C), female(Alter).
;; 98
%ye_yepe:2, ye_yepe[aux]48:0, parents:0, parents:0, parents:1, parents:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaDa}  
 mother(A, Alter), mother(B, A), father(C, B), mother(Ego, C), female(Alter).
;; 99
%ye_yepe:2, ye_yepe[aux]48:0, parents:0, parents:0, parents:1, parents:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaDa}  
 mother(A, Alter), mother(B, A), father(C, B), father(Ego, C), female(Alter).
;; 100
%ye_yepe:2, ye_yepe[aux]48:0, parents:0, parents:1, parents:0, parents:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaDa}  
 mother(A, Alter), father(B, A), mother(C, B), mother(Ego, C), female(Alter).
;; 101
%ye_yepe:2, ye_yepe[aux]48:0, parents:0, parents:1, parents:0, parents:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaDa}  
 mother(A, Alter), father(B, A), mother(C, B), father(Ego, C), female(Alter).
;; 102
%ye_yepe:2, ye_yepe[aux]48:0, parents:0, parents:1, parents:1, parents:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaDa}  
 mother(A, Alter), father(B, A), father(C, B), mother(Ego, C), female(Alter).
;; 103
%ye_yepe:2, ye_yepe[aux]48:0, parents:0, parents:1, parents:1, parents:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaDa}  
 mother(A, Alter), father(B, A), father(C, B), father(Ego, C), female(Alter).
;; 104
%ye_yepe:2, ye_yepe[aux]48:0, parents:1, parents:0, parents:0, parents:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoDa}  
 father(A, Alter), mother(B, A), mother(C, B), mother(Ego, C), female(Alter).
;; 105
%ye_yepe:2, ye_yepe[aux]48:0, parents:1, parents:0, parents:0, parents:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoDa}  
 father(A, Alter), mother(B, A), mother(C, B), father(Ego, C), female(Alter).
;; 106
%ye_yepe:2, ye_yepe[aux]48:0, parents:1, parents:0, parents:1, parents:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoDa}  
 father(A, Alter), mother(B, A), father(C, B), mother(Ego, C), female(Alter).
;; 107
%ye_yepe:2, ye_yepe[aux]48:0, parents:1, parents:0, parents:1, parents:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoDa}  
 father(A, Alter), mother(B, A), father(C, B), father(Ego, C), female(Alter).
;; 108
%ye_yepe:2, ye_yepe[aux]48:0, parents:1, parents:1, parents:0, parents:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoDa}  
 father(A, Alter), father(B, A), mother(C, B), mother(Ego, C), female(Alter).
;; 109
%ye_yepe:2, ye_yepe[aux]48:0, parents:1, parents:1, parents:0, parents:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoDa}  
 father(A, Alter), father(B, A), mother(C, B), father(Ego, C), female(Alter).
;; 110
%ye_yepe:2, ye_yepe[aux]48:0, parents:1, parents:1, parents:1, parents:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoDa}  
 father(A, Alter), father(B, A), father(C, B), mother(Ego, C), female(Alter).
;; 111
%ye_yepe:2, ye_yepe[aux]48:0, parents:1, parents:1, parents:1, parents:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoDa}  
 father(A, Alter), father(B, A), father(C, B), father(Ego, C), female(Alter).
;; 112
%ye_yepe:2, ye_yepe[aux]48:1, parents:0, parents:0, parents:0, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 113
%ye_yepe:2, ye_yepe[aux]48:1, parents:0, parents:0, parents:0, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 114
%ye_yepe:2, ye_yepe[aux]48:1, parents:0, parents:0, parents:0, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 115
%ye_yepe:2, ye_yepe[aux]48:1, parents:0, parents:0, parents:0, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 116
%ye_yepe:2, ye_yepe[aux]48:1, parents:0, parents:0, parents:1, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 117
%ye_yepe:2, ye_yepe[aux]48:1, parents:0, parents:0, parents:1, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 118
%ye_yepe:2, ye_yepe[aux]48:1, parents:0, parents:0, parents:1, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 119
%ye_yepe:2, ye_yepe[aux]48:1, parents:0, parents:0, parents:1, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 120
%ye_yepe:2, ye_yepe[aux]48:1, parents:0, parents:1, parents:0, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 121
%ye_yepe:2, ye_yepe[aux]48:1, parents:0, parents:1, parents:0, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 122
%ye_yepe:2, ye_yepe[aux]48:1, parents:0, parents:1, parents:0, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 123
%ye_yepe:2, ye_yepe[aux]48:1, parents:0, parents:1, parents:0, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 124
%ye_yepe:2, ye_yepe[aux]48:1, parents:0, parents:1, parents:1, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 125
%ye_yepe:2, ye_yepe[aux]48:1, parents:0, parents:1, parents:1, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 126
%ye_yepe:2, ye_yepe[aux]48:1, parents:0, parents:1, parents:1, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 127
%ye_yepe:2, ye_yepe[aux]48:1, parents:0, parents:1, parents:1, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 128
%ye_yepe:2, ye_yepe[aux]48:1, parents:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 129
%ye_yepe:2, ye_yepe[aux]48:1, parents:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 130
%ye_yepe:2, ye_yepe[aux]48:1, parents:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 131
%ye_yepe:2, ye_yepe[aux]48:1, parents:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 132
%ye_yepe:2, ye_yepe[aux]48:1, parents:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 133
%ye_yepe:2, ye_yepe[aux]48:1, parents:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 134
%ye_yepe:2, ye_yepe[aux]48:1, parents:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 135
%ye_yepe:2, ye_yepe[aux]48:1, parents:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 136
%ye_yepe:2, ye_yepe[aux]48:1, parents:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 137
%ye_yepe:2, ye_yepe[aux]48:1, parents:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 138
%ye_yepe:2, ye_yepe[aux]48:1, parents:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 139
%ye_yepe:2, ye_yepe[aux]48:1, parents:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 140
%ye_yepe:2, ye_yepe[aux]48:1, parents:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 141
%ye_yepe:2, ye_yepe[aux]48:1, parents:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 142
%ye_yepe:2, ye_yepe[aux]48:1, parents:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 143
%ye_yepe:2, ye_yepe[aux]48:1, parents:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).


ye_yepe[aux]48(Alter, Ego) :-  parents(A, Ego), parents(B, A), parents(C, B), parents(Alter, C).
                           |  [ext],  parents(A, Ego), parents(B, A), parents(C, B), parents(D, C), generation[aux]48smallGS(Alter, D).
;; 0
%ye_yepe[aux]48:0, parents:0, parents:0, parents:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(Alter, C).
;; 1
%ye_yepe[aux]48:0, parents:0, parents:0, parents:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(Alter, C).
;; 2
%ye_yepe[aux]48:0, parents:0, parents:0, parents:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(Alter, C).
;; 3
%ye_yepe[aux]48:0, parents:0, parents:0, parents:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(Alter, C).
;; 4
%ye_yepe[aux]48:0, parents:0, parents:1, parents:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(Alter, C).
;; 5
%ye_yepe[aux]48:0, parents:0, parents:1, parents:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(Alter, C).
;; 6
%ye_yepe[aux]48:0, parents:0, parents:1, parents:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(Alter, C).
;; 7
%ye_yepe[aux]48:0, parents:0, parents:1, parents:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(Alter, C).
;; 8
%ye_yepe[aux]48:0, parents:1, parents:0, parents:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(Alter, C).
;; 9
%ye_yepe[aux]48:0, parents:1, parents:0, parents:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(Alter, C).
;; 10
%ye_yepe[aux]48:0, parents:1, parents:0, parents:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(Alter, C).
;; 11
%ye_yepe[aux]48:0, parents:1, parents:0, parents:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(Alter, C).
;; 12
%ye_yepe[aux]48:0, parents:1, parents:1, parents:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(Alter, C).
;; 13
%ye_yepe[aux]48:0, parents:1, parents:1, parents:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(Alter, C).
;; 14
%ye_yepe[aux]48:0, parents:1, parents:1, parents:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(Alter, C).
;; 15
%ye_yepe[aux]48:0, parents:1, parents:1, parents:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(Alter, C).
;; 16
%ye_yepe[aux]48:1, parents:0, parents:0, parents:0, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 17
%ye_yepe[aux]48:1, parents:0, parents:0, parents:0, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 18
%ye_yepe[aux]48:1, parents:0, parents:0, parents:0, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 19
%ye_yepe[aux]48:1, parents:0, parents:0, parents:0, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 20
%ye_yepe[aux]48:1, parents:0, parents:0, parents:1, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 21
%ye_yepe[aux]48:1, parents:0, parents:0, parents:1, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 22
%ye_yepe[aux]48:1, parents:0, parents:0, parents:1, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 23
%ye_yepe[aux]48:1, parents:0, parents:0, parents:1, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 24
%ye_yepe[aux]48:1, parents:0, parents:1, parents:0, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 25
%ye_yepe[aux]48:1, parents:0, parents:1, parents:0, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 26
%ye_yepe[aux]48:1, parents:0, parents:1, parents:0, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 27
%ye_yepe[aux]48:1, parents:0, parents:1, parents:0, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 28
%ye_yepe[aux]48:1, parents:0, parents:1, parents:1, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 29
%ye_yepe[aux]48:1, parents:0, parents:1, parents:1, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 30
%ye_yepe[aux]48:1, parents:0, parents:1, parents:1, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 31
%ye_yepe[aux]48:1, parents:0, parents:1, parents:1, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 32
%ye_yepe[aux]48:1, parents:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 33
%ye_yepe[aux]48:1, parents:1, parents:0, parents:0, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 34
%ye_yepe[aux]48:1, parents:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 35
%ye_yepe[aux]48:1, parents:1, parents:0, parents:0, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 36
%ye_yepe[aux]48:1, parents:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 37
%ye_yepe[aux]48:1, parents:1, parents:0, parents:1, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 38
%ye_yepe[aux]48:1, parents:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 39
%ye_yepe[aux]48:1, parents:1, parents:0, parents:1, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 40
%ye_yepe[aux]48:1, parents:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 41
%ye_yepe[aux]48:1, parents:1, parents:1, parents:0, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 42
%ye_yepe[aux]48:1, parents:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 43
%ye_yepe[aux]48:1, parents:1, parents:1, parents:0, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 44
%ye_yepe[aux]48:1, parents:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 45
%ye_yepe[aux]48:1, parents:1, parents:1, parents:1, parents:0, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 46
%ye_yepe[aux]48:1, parents:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 47
%ye_yepe[aux]48:1, parents:1, parents:1, parents:1, parents:1, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).


yei(Alter, Ego) :-  children(Alter, Ego).
                |   female(Ego), brother(A, Ego), children(Alter, A).
                |  [ext],  generation[aux]48small(A, Ego), children(Alter, A), gender(B, Ego), gender(B, A).
                |  [ext],  wife(A, Ego), generation[aux]48smallGS(B, A), children(Alter, B).
                |  [ext],  husband(A, Ego), generation[aux]48smallGS(B, A), children(Alter, B).
                |  [ext],  son(A, Ego), wife(Alter, A).
                |  [ext],  female(Ego), generation[aux]48small(A, Ego), male(A), children(Alter, A).
{"BroDa_BroSo_Da_FaBroDaDa_FaBroDaSo_FaBroSoDa_FaBroSoSo_FaSisDaDa_FaSisDaSo_FaSisSoDa_FaSisSoSo_HuBroDa_HuBroSo_HuFaBroDaDa_HuFaBroDaSo_HuFaBroSoDa_HuFaBroSoSo_HuFaSisDaDa_HuFaSisDaSo_HuFaSisSoDa_HuFaSisSoSo_HuMoBroDaDa_HuMoBroDaSo_HuMoBroSoDa_HuMoBroSoSo_HuMoSisDaDa_HuMoSisDaSo_HuMoSisSoDa_HuMoSisSoSo_HuSisDa_HuSisSo_MoBroDaDa_MoBroDaSo_MoBroSoDa_MoBroSoSo_MoSisDaDa_MoSisDaSo_MoSisSoDa_MoSisSoSo_SisDa_SisSo_So_SoWi_WiBroDa_WiBroSo_WiFaBroDaDa_WiFaBroDaSo_WiFaBroSoDa_WiFaBroSoSo_WiFaSisDaDa_WiFaSisDaSo_WiFaSisSoDa_WiFaSisSoSo_WiMoBroDaDa_WiMoBroDaSo_WiMoBroSoDa_WiMoBroSoSo_WiMoSisDaDa_WiMoSisDaSo_WiMoSisSoDa_WiMoSisSoSo_WiSisDa_WiSisSo"}
;; 0
%yei:0, children:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 1
%yei:0, children:1%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).
;; 2
%yei:1, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 3
%yei:1, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 4
%yei:2, generation[aux]48small:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), son(Alter, C), gender(D, Ego), gender(D, C).
;; 5
%yei:2, generation[aux]48small:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), daughter(Alter, C), gender(D, Ego), gender(D, C).
;; 6
%yei:2, generation[aux]48small:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), son(Alter, E), gender(F, Ego), gender(F, E).
;; 7
%yei:2, generation[aux]48small:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), daughter(Alter, E), gender(F, Ego), gender(F, E).
;; 8
%yei:2, generation[aux]48small:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), son(Alter, E), gender(F, Ego), gender(F, E).
;; 9
%yei:2, generation[aux]48small:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), daughter(Alter, E), gender(F, Ego), gender(F, E).
;; 10
%yei:2, generation[aux]48small:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), son(Alter, E), gender(F, Ego), gender(F, E).
;; 11
%yei:2, generation[aux]48small:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), daughter(Alter, E), gender(F, Ego), gender(F, E).
;; 12
%yei:2, generation[aux]48small:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), son(Alter, E), gender(F, Ego), gender(F, E).
;; 13
%yei:2, generation[aux]48small:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), daughter(Alter, E), gender(F, Ego), gender(F, E).
;; 14
%yei:3, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 15
%yei:3, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 16
%yei:3, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 17
%yei:3, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 18
%yei:3, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 19
%yei:3, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 20
%yei:3, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 21
%yei:3, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 22
%yei:3, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 23
%yei:3, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 24
%yei:3, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 25
%yei:3, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 26
%yei:3, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 27
%yei:3, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 28
%yei:3, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 29
%yei:3, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 30
%yei:3, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 31
%yei:3, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 32
%yei:3, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 33
%yei:3, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 34
%yei:4, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 35
%yei:4, generation[aux]48smallGS:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 36
%yei:4, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 37
%yei:4, generation[aux]48smallGS:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 38
%yei:4, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 39
%yei:4, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroSoDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 40
%yei:4, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 41
%yei:4, generation[aux]48smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 42
%yei:4, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 43
%yei:4, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisSoDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 44
%yei:4, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 45
%yei:4, generation[aux]48smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 46
%yei:4, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 47
%yei:4, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroSoDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 48
%yei:4, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 49
%yei:4, generation[aux]48smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroDaDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 50
%yei:4, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 51
%yei:4, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisSoDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 52
%yei:4, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 53
%yei:4, generation[aux]48smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisDaDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 54
%yei:5%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
[ext],  son(A, Ego), wife(Alter, A).
;; 55
%yei:6, generation[aux]48small:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 56
%yei:6, generation[aux]48small:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 57
%yei:6, generation[aux]48small:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), male(E), son(Alter, E).
;; 58
%yei:6, generation[aux]48small:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), male(E), daughter(Alter, E).
;; 59
%yei:6, generation[aux]48small:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), male(E), son(Alter, E).
;; 60
%yei:6, generation[aux]48small:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), male(E), daughter(Alter, E).
;; 61
%yei:6, generation[aux]48small:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), male(E), son(Alter, E).
;; 62
%yei:6, generation[aux]48small:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), male(E), daughter(Alter, E).
;; 63
%yei:6, generation[aux]48small:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), male(E), son(Alter, E).
;; 64
%yei:6, generation[aux]48small:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), male(E), daughter(Alter, E).
;; 65
%yei:2, generation[aux]48small:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), son(Alter, C), gender(D, Ego), gender(D, C).
;; 66
%yei:2, generation[aux]48small:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), daughter(Alter, C), gender(D, Ego), gender(D, C).
;; 67
%yei:2, generation[aux]48small:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), son(Alter, E), gender(F, Ego), gender(F, E).
;; 68
%yei:2, generation[aux]48small:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), daughter(Alter, E), gender(F, Ego), gender(F, E).
;; 69
%yei:2, generation[aux]48small:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), son(Alter, E), gender(F, Ego), gender(F, E).
;; 70
%yei:2, generation[aux]48small:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), daughter(Alter, E), gender(F, Ego), gender(F, E).
;; 71
%yei:2, generation[aux]48small:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), son(Alter, E), gender(F, Ego), gender(F, E).
;; 72
%yei:2, generation[aux]48small:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), daughter(Alter, E), gender(F, Ego), gender(F, E).
;; 73
%yei:2, generation[aux]48small:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), son(Alter, E), gender(F, Ego), gender(F, E).
;; 74
%yei:2, generation[aux]48small:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), daughter(Alter, E), gender(F, Ego), gender(F, E).

